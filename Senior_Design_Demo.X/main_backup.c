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
#include <math.h>
#include <p24FJ1024GB610.h>

#include "bsp/adc.h"
#include "bsp/lcd.h"
#include "bsp/timer_1ms.h"
#include "bsp/buttons.h"
#include "bsp/leds.h"
#include "bsp/rtcc.h"
 
#include "io_mapping.h"

// Pins
// Thermocouple ADC = Pin 19
// RTD ADC = Pin 14
// RTD2 ADC = PIC Pin 9 = Board Pin 52
// I2C SDA = PIC Pin 67 = Board Pin 56
// I2C SCL = PIC Pin 66 = Board Pin 57

// *****************************************************************************
// *****************************************************************************
// Section: File Scope Variables and Functions
// *****************************************************************************
// *****************************************************************************
extern void SYS_Initialize ( void ) ;

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
    //while (I2C1STATbits.TBF) ;//wait if buffer is full
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
    //I2Csendbyte(0x58);  // MSB of Measure Command(polling) NO clock stretching
    //I2Csendbyte(0xE0);  // LSB of Measure Command(polling) NO clock stretching
    I2Csendbyte(0x5C);  // MSB of Measure Command with clock stretching
    I2Csendbyte(0x24);  // LSB of Measure Command with clock stretching
    I2CStop();        // Send stop command
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
int main ( void )
{
    TRISA = 0xff00;
    PORTA = 0x0;
    uint16_t adcResult;
    uint16_t adcResult_RTD;
    float Temp_C,Temp_F,Vout,Vout_RTD,Temp_C_RTD,Temp_F_RTD,r0;
    //float Quant_Res = 3.3/1024.0;
    float Vin3v3 = 3.3; // Actual value on 3.3 V rail
    float Quant_Res = Vin3v3/1024.0;
    float hTemp,RH;
    int id_Hi,id_Lo,id_Crc;
    char humidCRC, tempCRC;
    //TRISEbits.TRISE9 = 1;
    //TRISGbits.TRISG14 = 1;
    int bitSamps = 5;
    int humid,temp;
    int i;
    
    int SetPt; //Meat Cook Temp (will be sent from server)
    int WoodPt; //Wood Chip Temp (will be sent from server)
    int HumidPt; //Desired Humidity Level (will be sent from server)
    int heat = 0; // Heating Element Off initially
    int moist = 0; // Mister Off initially
    int mBurst = 0; //Var to control how often moisture burst happens
    
    /* Call the System Initialize routine*/
    SYS_Initialize ( );
    
    /* To determine how the LED and Buttons are mapped to the actual board
     * features, please see io_mapping.h. */

    BUTTON_Enable ( BUTTON_DEMO_S3 );
    BUTTON_Enable ( BUTTON_DEMO_S4 );
    BUTTON_Enable ( BUTTON_DEMO_S5 );

    /* Initialize Peripherals. The ADC and I2C devices need configuration 
     * settings to operate properly. */
    //ANSA = 0x0;
    //ANSB = 0x0;
    //ANSC = 0x0;
    ADC_SetConfiguration ( ADC_CONFIGURATION_DEFAULT );
    //ADC_ChannelEnable ( ADC_CHANNEL_POTENTIOMETER );
    //ADC_ChannelEnable ( ADC_CHANNEL_TEMPERATURE_SENSOR );
    ADC_ChannelEnable ( ADC_CHANNEL_THERMOCOUPLE ); //PIC Pin 19 
    ADC_ChannelEnable ( ADC_CHANNEL_RTD ); //PIC Pin 14
    I2Cinit(78);
    humidSleep();
    
    // Check Humidity Sensor Device ID Then Display last 8 bits on LEDS
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
    PORTA = 0x00;
    
    TRISFbits.TRISF2 = 0;
    PORTFbits.RF2 = 0; //Pin 52 Heat Signal
    TRISFbits.TRISF8 = 0;
    PORTFbits.RF8 = 0; //Pin 53 Moisture Signal
    
    while ( 1 )
    {
        //UART code for nodeMCU
        //Part of input includes SetPt, WoodPt, and flips bool heat to on
        SetPt = 250;
        WoodPt = 600;
        HumidPt = 24;
        
        //Heating Control Signal
        if(heat&&!PORTFbits.RF2)
        {
            TRISFbits.TRISF2 = 0;
            PORTFbits.RF2 = 1; //Pin 52
            
        }
        else if(!heat&&PORTFbits.RF2)
        {
            TRISFbits.TRISF2 = 0;
            PORTFbits.RF2 = 0; //Pin 52
        }
        //Heating Control
        if(Temp_F>SetPt || Temp_F_RTD>WoodPt)
        {
            heat = 0; // Shut off 
        }
        else if(Temp_F<0.15*SetPt||Temp_F_RTD>0.15*WoodPt)
        {
            heat = 1; // Cut on
        }
        
        //Moisture Control Signal (Quick On/Off)
        if(moist&&(mBurst==100) )
        {
            TRISFbits.TRISF8 = 0;
            PORTFbits.RF8 = !PORTFbits.RF8; //Pin 53
            ms_delay(500);
            PORTFbits.RF8 = !PORTFbits.RF8; //Pin 53
            mBurst = 0;
        }
        else if(moist) mBurst = mBurst+1; // Don't want too much water
        // Moisture Control
        if(RH<HumidPt)
        {
            moist = 1; //Initiate humidity sequence
        }
        else if(RH>HumidPt)
        {
            moist = 0; // Cut off humidity actions
        }

        
        adcResult = 0;
        adcResult_RTD = 0;
        //humid = 0;
        //temp = 0;
        for(i=0;i<(1<<bitSamps);i++) //This is for averaging
        {
            //ADC_ChannelEnable ( ADC_CHANNEL_THERMOCOUPLE );
            adcResult = adcResult + ADC_Read10bit(ADC_CHANNEL_THERMOCOUPLE);
            us_delay(50);
            //ADC_ChannelEnable ( ADC_CHANNEL_RTD );
            //adcResult_RTD = adcResult_RTD + ADC_Read10bit(ADC_CHANNEL_RTD);
            //ADC_ChannelEnable ( ADC_CHANNEL_RTD );
            adcResult_RTD = adcResult_RTD + ADC_Read10bit(ADC_CHANNEL_RTD);

        }
        adcResult = adcResult >> bitSamps; // Divides by 2^bitSamps
        adcResult_RTD = adcResult_RTD >> bitSamps; // Divides by 2^bitSamps
        Vout = adcResult*Quant_Res;
        Vout_RTD = adcResult_RTD*Quant_Res;
        r0=(3247*Vout_RTD)/(Vin3v3-Vout_RTD);
        Temp_C_RTD = ((r0/100)-1)/0.00385   +6;
        //Temp_C = (Vout - 0)*125;
        Temp_C = (Vout - 0)*200             -3;
        Temp_F = Temp_C*1.8 + 32;
        Temp_F_RTD = Temp_C_RTD*1.8 + 32;
        printf( "\f" ); // Clear screen
        printf("Cook = %3.2f %cF\r\nWood = %3.2f %cF\r\n", Temp_F, 0xA1, Temp_F_RTD, 0xA1);
        //printf("r0 = %1.3f\r\nADC = %d\r\n", r0, adcResult_RTD);
        ms_delay(50);
        
        //Humidity
        //I2C Stuffs
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
        
        /* To determine how the LED and Buttons are mapped to the actual board
         * features, please see io_mapping.h. */
        if(BUTTON_IsPressed( BUTTON_DEMO_S3 ) == true)
        {

            if(hTemp<125)
            {
                
                //RH = 100 * (float)humid / 65536.0f;
                Temp_F = hTemp*1.8 + 32;
                printf( "\f" ); // Clear screen
                printf("DegF. = %3.3f\r\nHumid = %3.3f\r\n", Temp_F,RH);
                //printf("DegC. = %1.3f\r\nHumid = %1.3f\r\n", hTemp,RH);
            }
            else
            {
                printf( "\f" ); // Clear screen
                printf("Temperature\r\nToo High\r\n");
            }
            ms_delay(500);

        }
        else if(BUTTON_IsPressed(BUTTON_DEMO_S4) == true)
        {
            heat = !heat;
            ms_delay(500);
            ms_delay(500);
            ms_delay(500);
        }
        else if(BUTTON_IsPressed(BUTTON_DEMO_S5) == true)
        {
            TRISA = 0xff00;
            PORTA = 0xAA;
            ms_delay(500);
            PORTA = 0x55;
            ms_delay(500);
        }
        else 
        {
            
        }
    }
}
