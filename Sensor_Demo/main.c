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
static void TimerEventHandler( void );

static RTCC_DATETIME time;


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
    us_delay(10); // delay to be safe
}

char I2Cgetbyte( void)
{
    I2C1CONLbits.RCEN =1; // Set RCEN, Enables I2C Receive mode
    while (!I2C1STATbits.RBF) ; //wait for byte to shift into I2C1RCV register
    I2C1CONLbits.ACKEN = 1; // Master sends Acknowledge
    us_delay(10); // delay to be safe
    return(I2C1RCV);
}

void humidInit(void)
{
    I2CStart();     //  Send start command
    I2Csendbyte(0xE0);  // Send address of Humidity Sensor
    I2Csendbyte(0xB0);  // Send MSB of Sleep Command
    I2Csendbyte(0x98);  // Send LSB of Sleep Command
    I2CStop();
}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
int main ( void )
{
    uint16_t adcResult;
    
    /* Call the System Initialize routine*/
    SYS_Initialize ( );
    
    /* To determine how the LED and Buttons are mapped to the actual board
     * features, please see io_mapping.h. */
    LED_Enable ( LED_BLINK_ALIVE );
    LED_Enable ( LED_BUTTON_PRESSED );

    BUTTON_Enable ( BUTTON_DEMO_S3 );
    BUTTON_Enable ( BUTTON_DEMO_S4 );
    BUTTON_Enable ( BUTTON_DEMO_S5 );
    
    /* Get a timer event once every 100ms for the blink alive. */
    TIMER_SetConfiguration ( TIMER_CONFIGURATION_1MS );
    TIMER_RequestTick( &TimerEventHandler, 100 );
    
    /* The TIMER_1MS configuration should come before the RTCC initialization as
     * there are some processor modules that require the TIMER_1MS module to be
     * configured before the RTCC module, as the RTCC module is emulated using
     * the TIMER_1MS module. */
    time.bcdFormat = false;
    RTCC_BuildTimeGet( &time );
    RTCC_Initialize( &time );

    /* Initialize Peripherals. The ADC and I2C devices need configuration 
     * settings to operate properly. */
    ADC_SetConfiguration ( ADC_CONFIGURATION_DEFAULT );
    //ADC_ChannelEnable ( ADC_CHANNEL_POTENTIOMETER );
    //ADC_ChannelEnable ( ADC_CHANNEL_TEMPERATURE_SENSOR );
    ADC_ChannelEnable ( ADC_CHANNEL_THERMOCOUPLE );
    I2Cinit(157);
    humidInit();
    
    /* Clear the screen */
    printf( "\f" );   
    
    while ( 1 )
    {
        adcResult = 0;
        float Temp_C,Temp_F,Vout;
        float Quant_Res = 3.3/1024.0;
        float hTemp,RH;
        TRISEbits.TRISE9 = 1;
        int bitSamps = 5;
        int humid,humidCRC,temp,tempCRC;
        int i;
        printf("CoLlIn WuZ hErE!\r\nCoLlIn WuZ hErE!\r\n");
        ms_delay(50);
        printf( "\f" ); // Clear screen
        /* To determine how the LED and Buttons are mapped to the actual board
         * features, please see io_mapping.h. */
        while(BUTTON_IsPressed( BUTTON_DEMO_S3 ) == true)
        {
            // Send Wakeup Signal
            I2CStart();         // Send start command
            I2Csendbyte(0xE0);  // Send address of Humidity Sensor w/ write bit
            us_delay(100);      // Wait
            I2Csendbyte(0x35);  // MSB of Wakeup
            us_delay(100);      // Wait
            I2Csendbyte(0x17);  // LSB of Wakeup
            us_delay(100);      // Wait
            I2CStop();
            
            // Initiate Measurement
            I2CStart();         // Send start command
            I2Csendbyte(0xE0);  // Send address of Humidity Sensor w/ write bit
            us_delay(100);      // Wait
            I2Csendbyte(0x5C);  // MSB of Measurement Command
            us_delay(100);      // Wait
            I2Csendbyte(0x24);  // LSB of Measurement Command
            us_delay(100);      // Wait
            I2CStop();          // Send stop command
            
            // Send Read Signal
            I2CStart();         // Send start command
            I2Csendbyte(0xE1);  // Send address of Humidity Sensor w/ read bit
            humid = I2Cgetbyte(); // Grab that High Byte
            humid = humid + I2Cgetbyte(); // Grab that Low Byte
            humidCRC = I2Cgetbyte(); // Grab that CRC
            temp = I2Cgetbyte(); // Grab that High Byte
            temp = temp + I2Cgetbyte(); // Grab that Low Byte
            tempCRC = I2Cgetbyte(); // Grab that CRC
            I2CStop();          // Send stop command
            
            // Send Sleep Signal
            I2CStart();         // Send start command
            I2Csendbyte(0xE0);  // Send address of Humidity Sensor w/ write bit
            us_delay(100);      // Wait
            I2Csendbyte(0xB0);  // MSB of Wakeup
            us_delay(100);      // Wait
            I2Csendbyte(0x98);  // LSB of Wakeup
            us_delay(100);      // Wait
            I2CStop();
            
            hTemp = 175*(temp>>16)-45;
            if(hTemp<125)
            {
                printf( "\f" ); // Clear screen
                RH = 100*(humid>>16);
                printf("CoLlIn WuZ hErE!\r\nHumid = %1.3f\r\n", RH);
            }
            else
            {
                printf( "\f" ); // Clear screen
                printf("Temperature\r\nToo High\r\n");
            }

        }
        if(BUTTON_IsPressed(BUTTON_DEMO_S4) == true)
        {
            TRISA = 0xff00;
            PORTA = 0xAA;
            ms_delay(500);
            PORTA = 0x55;
            ms_delay(500);
        }
        else
        {
            LED_Off( LED_BUTTON_PRESSED );
        }
        while(BUTTON_IsPressed(BUTTON_DEMO_S5) == true)
        {
            for(i=0;i<(1<<bitSamps);i++) //This is for averaging
            {
                adcResult = adcResult + ADC_Read10bit(ADC_CHANNEL_THERMOCOUPLE);

            }
            adcResult = adcResult >> bitSamps; // Divides by 2^bitSamps
            Vout = adcResult*Quant_Res;
            //Temp_C = (Vout-0.5)*100;
            //TMJ = (VOUT - VREF)/(5 mV/°C)
            Temp_C = (Vout - 0)*200;
            Temp_F = Temp_C*1.8 + 32;

            printf("CoLlIn WuZ hErE!\r\nTemp F = %1.3f\r\n", Temp_F);
            ms_delay(50);
            printf( "\f" ); // Clear screen
        }
    }
}

static void TimerEventHandler(void)
{    
    LED_Toggle( LED_BLINK_ALIVE );
}
