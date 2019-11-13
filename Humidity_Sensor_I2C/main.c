/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdbool.h>
#include <p24FJ1024GB610.h>

#include "bsp/adc.h"
#include "bsp/lcd.h"
#include "bsp/timer_1ms.h"
#include "bsp/buttons.h"
#include "bsp/leds.h"
#include "bsp/rtcc.h"
 
#include "io_mapping.h"

// *****************************************************************************
// *****************************************************************************
// Section: File Scope Variables and Functions
// *****************************************************************************
// *****************************************************************************

extern void SYS_Initialize ( void ) ;
//static void TimerEventHandler( void );

//static RTCC_DATETIME time;
//PMD1 = 0x7078;

void us_delay(int us) {
    T1CON = 0x8010; // Timer 1 on, TCKPS<1,0> = 01 this 1:8
    TMR1 = 0;
    while (TMR1 < us * 2); // 1/(16MHz/(8*2)) = 0.000001 = 1 microsecond
}

void ms_delay(int ms) 
{
    T2CON = 0x8030; // Timer 2 on, TCKPS<1,0> = 11 this 1:256
    TMR2 = 0;
    while (TMR2 < ms * 62.5); // when ms is 1 it's about 1 ms
}
void I2Cinit(int BRG)
{
    I2C1BRG = BRG; //See PIC24FJ128GA010 data sheet, Table 16.1 pg. 139
    while (I2C1STATbits.P); // Check buss idle, see 5.1 of I2C document.
    // It works, not sure its needed.
    I2C1CONLbits.A10M = 0; // 7-bit address mode (Added 8-14-17)
    I2C1CONLbits.I2CEN = 1; // enable module
    //I2C1CONLbits.STREN = 1; // enable clock Stretching
}

void I2CStart(void)
{
    us_delay(10); // delay to be safe
    I2C1CONLbits.SEN = 1; // Initiate Start condition see pg. 21 of I2C man. DS70000195F
    while (I2C1CONLbits.SEN);// wait for Start condition complete See sec. 5.1
    us_delay(10); // delay to be safe
}

void I2CStop(void)
{
    us_delay(10); // delay to be safe
    I2C1CONLbits.PEN = 1; // see 5.5 pg. 27 of Microchip I2C manual DS70000195F
    while (I2C1CONLbits.PEN); // This is at hardware level, & I suspect fast.
    us_delay(10); // delay to be safe
}

void I2Csendbyte(char data)
{
    while (I2C1STATbits.TBF) ;//wait if buffer is full
    I2C1TRN = data; // pass data to transmission register
    while (I2C1STATbits.TBF) ;//wait if buffer is full
    if(I2C1STATbits.ACKSTAT) I2Csendbyte(data);
    us_delay(500); // delay to be safe
}

char I2Cgetbyte( void)
{
    I2C1CONLbits.RCEN =1; // Set RCEN, Enables I2C Receive mode
    while (!I2C1STATbits.RBF) ; //wait for byte to shift into I2C1RCV register
    I2C1CONLbits.ACKEN = 1; // Master sends Acknowledge
    us_delay(10); // delay to be safe
    return(I2C1RCV);
}

void humidWake(void)
{
    // Send Wakeup Signal
    I2CStart();         // Send start command
    I2Csendbyte(0xE0);  // Send address of Humidity Sensor w/ write bit
    I2Csendbyte(0x35);  // MSB of Wakeup
    I2Csendbyte(0x17);  // LSB of Wakeup
    I2CStop();
}

void humidSleep(void)
{
    // Send Sleep Signal
    I2CStart();         // Send start command
    I2Csendbyte(0xE0);  // Send address of Humidity Sensor w/ write bit
    I2Csendbyte(0xB0);  // MSB of Sleep
    I2Csendbyte(0x98);  // LSB of Sleep
    I2CStop();
}

void humidMeasure(void)
{
    // Initiate Measurement
    I2CStart();         // Send start command
    I2Csendbyte(0xE0);  // Send address of Humidity Sensor w/ write bit
    //I2Csendbyte(0x58);  // MSB of Measurement Command
    //I2Csendbyte(0xE0);  // LSB of Measurement Command
    I2Csendbyte(0x5C);  // MSB of Measurement Command
    I2Csendbyte(0x24);  // LSB of Measurement Command
    //I2CStop();        // Send stop command
}

//void humidID(void)


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
int main ( void )
{
    TRISA = 0xff00;
    PORTA = 0x0;
    uint16_t humid,temp;
    float hTemp,RH,Temp_F;
    int id_Hi,id_Lo,id_Crc;
    char humidCRC, tempCRC;
    
    /* Call the System Initialize routine*/
    us_delay(500);  // Wait for peripherals to startup
    SYS_Initialize ( ); // Initialize system (think LDC)
    I2Cinit(78); // Startup I2C module
    us_delay(10);
    humidSleep(); // Send humidity sensor from idle state to sleep
    
    // Check Device ID
    humidWake();        // Wakeup humidity sensor
    I2CStart();         // Send start command
    I2Csendbyte(0xE0);  // Send address of Humidity Sensor w/ write bit
    I2Csendbyte(0xEF);  // Send First byte of Read ID Register
    I2Csendbyte(0xC8);  // Send Second of Read ID Register
    I2CStart();
    I2Csendbyte(0xE1);  // Send address of Humidity Sensor w/ read bit
    id_Hi = I2Cgetbyte(); // Grab that Hi ID byte
    id_Lo = I2Cgetbyte(); // Grab that Lo ID byte
    id_Crc = I2Cgetbyte(); // Grab that CRC
    I2CStop();
    us_delay(10);
    humidSleep();
    PORTA = id_Lo; // From Datasheet should be 0b'XX00'0111
    
    
    
    /* Clear the screen */
    printf( "\f" );  
    printf("CoLlIn WuZ hErE!\r\nCoLlIn WuZ hErE!\r\n");
    
    while ( 1 )
    {
        temp = 0;
        humid = 0;
        
        // I2C Wakeup!
        humidWake();        // Wakeup humidity sensor
        us_delay(300);      // Wait
        
        // Tell it to measure
        humidMeasure();     // Initiate Measurement
        ms_delay(10);      // Wait
        
        // Send Read Signal
        I2CStart();         // Send start command
        I2Csendbyte(0xE1);  // Send address of Humidity Sensor w/ read bit
        humid = I2Cgetbyte(); // Grab that High Byte
        //humid = (humid<<8) || I2Cgetbyte(); // Grab that Low Byte
        humid = (humid<<8) + I2Cgetbyte(); // Grab that Low Byte
        humidCRC = I2Cgetbyte(); // Grab that CRC
        temp = I2Cgetbyte(); // Grab that High Byte
        //temp = (temp<<8) || I2Cgetbyte(); // Grab that Low Byte
        temp = (temp<<8) + I2Cgetbyte(); // Grab that Low Byte
        tempCRC = I2Cgetbyte(); // Grab that CRC
        I2CStop();          // Send stop command
        us_delay(10);
        humidSleep();       // Put humidity sensor back to sleep


        hTemp = 175 * (float)temp / 65536.0f - 45.0f;
        RH = 100 * (float)humid / 65536.0f;
        if(hTemp<125)
        {
            printf( "\f" ); // Clear screen
            //RH = 100 * (float)humid / 65536.0f;
            Temp_F = hTemp*1.8 + 32;
            printf("DegF. = %1.3f\r\nHumid = %1.3f\r\n", Temp_F,RH);
            //printf("DegC. = %1.3f\r\nHumid = %1.3f\r\n", hTemp,RH);
        }
        else
        {
            printf( "\f" ); // Clear screen
            printf("Temperature\r\nToo High\r\n");
        }
        //Clear the screen
        //printf( "\f" );  
        //printf("CoLlIn WuZ hErE!\r\nCoLlIn WuZ hErE!\r\n");
        ms_delay(500);

    }
}
