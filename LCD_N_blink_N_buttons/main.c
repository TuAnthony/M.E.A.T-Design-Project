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

    ADC_SetConfiguration ( ADC_CONFIGURATION_DEFAULT );
    ADC_ChannelEnable ( ADC_CHANNEL_POTENTIOMETER );
    
    /* Clear the screen */
    printf( "\f" );   
    
    void ms_Delay(int N)
    {
        T1CON = 0x8030;
        TMR1 = 0;
        while(TMR1<N*62.5);
    }
    
    while ( 1 )
    {
        float Temp_C,Temp_F,Vout;
        float Quant_Res = 3.3/1024.0;
        adcResult = ADC_Read10bit( ADC_CHANNEL_TEMPERATURE_SENSOR );
        Vout = adcResult*Quant_Res;
        Temp_C = (Vout-0.5)*100;
        Temp_F = Temp_C*1.8 + 32;

        printf("CoLlIn WuZ hErE!\r\nTemp F = %1.4f\r\n", Temp_F);

        /* To determine how the LED and Buttons are mapped to the actual board
         * features, please see io_mapping.h. */
        if(BUTTON_IsPressed( BUTTON_DEMO_S3 ) == true)
        {
            LED_On( LED_BUTTON_PRESSED );
        }
        else if(BUTTON_IsPressed(BUTTON_DEMO_S4) == true)
        {
            TRISA = 0xff00;
            PORTA = 0xAA;
            ms_Delay(500);
            PORTA = 0x55;
            ms_Delay(500);
        }
        else
        {
            LED_Off( LED_BUTTON_PRESSED );
        }
    }
}

static void TimerEventHandler(void)
{    
    LED_Toggle( LED_BLINK_ALIVE );
}
