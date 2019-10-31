/*******************************************************************************
 Module for Microchip Graphics Library

  Company:
    Microchip Technology Inc.

  File Name:
    drv_gfx_tcon_bitbang.c

  Summary:
    This module initializes the SSD1289 Timing Controller (TCON) Module.
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright 2018 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/
// DOM-IGNORE-END

#include <stdint.h>
#include "system_config.h"
#include "system.h"
#include "driver/gfx/drv_gfx_tcon.h"

/*
 * This is a generic Timing Controller (TCON) module driver using SPI as
 * the communication protocol. There are two implementation on this module:
 * 1. Bit-Bang implementation
 * 2. Using the SPI Module
 *
 * The application MUST define the following pins for the Bit-Bang version to work.
 * TCON_CS_LAT - chip select signal
 * TCON_DC_LAT - data command signal
 * TCON_SCL_LAT - spi clock signal
 * TCON_SDO_LAT - spi data out signal
 *
 * Application MUST initialize and configure the pins ahead before
 * any of the functions in this module are called.
    
*/

    // BB means BitBang
    #define BB_CS                   0x01
    #define BB_SCL                  0x02
    #define BB_SDO                  0x04
    #define BB_DC                   0x08

    #define TCON_CSLow()            (TCON_CS_LAT = 0)
    #define TCON_CSHigh()           (TCON_CS_LAT = 1)
    #define TCON_CLKLow()           (TCON_SCL_LAT = 0)
    #define TCON_CLKHigh()          (TCON_SCL_LAT = 1)
    #define TCON_DataLow()          (TCON_SDO_LAT = 0)
    #define TCON_DataHigh()         (TCON_SDO_LAT = 1)

    #define TCON_SetCommand()       (TCON_DC_LAT = 0)
    #define TCON_SetData()          (TCON_DC_LAT = 1)

#ifndef BITBANG_IOPORT_SPI_PERIOD
    // define this macro globally if desired bitbang SPI period
    // is not the one that is defined here.
    #define BITBANG_IOPORT_SPI_PERIOD 1
#endif


/************************************************************************
* Function: void GFX_TCON_BB_IOSet(uint8_t mask, uint8_t level)
*                                                                       
* Overview: This sets the IO specified by mask to the value set by 
*           level.
*                                                                       
* Input: mask - specifies the IO to be toggles.
*		 level - specifies the logic where the IO will be set.
*                                                                       
* Output: none                                 
*                                                                       
************************************************************************/
void GFX_TCON_BB_IOSet(uint8_t mask, uint8_t level)
{
    switch(mask)
    {
        case BB_CS:
            (level == 1 ? TCON_CSHigh() : TCON_CSLow());
            break;

        case BB_SCL:
            (level == 1 ? TCON_CLKHigh() : TCON_CLKLow());
            break;

        case BB_SDO:
            (level == 1 ? TCON_DataHigh() : TCON_DataLow());
            break;

        case BB_DC:
            (level == 1 ? TCON_SetData() : TCON_SetCommand());
            break;
        default:
            break;            
    }
}

/************************************************************************
* Function: void DRV_TCON_BB_ByteWrite(uint8_t value)
*                                                                       
* Overview: This writes a uint8_ts to SPI.
*                                                                       
* Input: value - the uint8_t data to be written.
*                                                                       
* Output: none                                 
*                                                                       
************************************************************************/
void DRV_TCON_BB_ByteWrite(uint8_t value)
{
    uint8_t    mask;

    mask = 0x80;
    while(mask)
    {
        GFX_TCON_BB_IOSet(BB_SCL, 0);
        if(mask & value)
        {
            GFX_TCON_BB_IOSet(BB_SDO, 1);
        }
        else
        {
            GFX_TCON_BB_IOSet(BB_SDO, 0);
        }
        __delay_us(BITBANG_IOPORT_SPI_PERIOD);
        GFX_TCON_BB_IOSet(BB_SCL, 1);
        __delay_us(BITBANG_IOPORT_SPI_PERIOD);
        mask >>= 1;
    }
}

/************************************************************************
* Function: void DRV_TCON_BB_CommandWrite(uint8_t index, uint16_t value)
*                                                                       
* Overview: This writes a word to SPI by calling the write uint8_t 
*           routine.
*                                                                       
* Input: index - The index (or address) of the register to be written.
*        value - The value that will be written to the register.
*                                                                       
* Output: none                                 
*                                                                       
************************************************************************/
void DRV_TCON_BB_CommandWrite(uint16_t index, uint16_t value)
{
    typedef union
    {
        uint8_t  indexByte[2];
        uint16_t indexValue;
    }  GFX_TCON_INDEX;

    GFX_TCON_BB_IOSet(BB_CS, 0);

    // Index
    GFX_TCON_BB_IOSet(BB_DC, 0);
    DRV_TCON_BB_ByteWrite(((GFX_TCON_INDEX)index).indexByte[1]);
    DRV_TCON_BB_ByteWrite(((GFX_TCON_INDEX)index).indexByte[0]);

    GFX_TCON_BB_IOSet(BB_CS, 1);
    __delay_us(10);
    GFX_TCON_BB_IOSet(BB_CS, 0);

    // Data
    GFX_TCON_BB_IOSet(BB_DC, 1);
    DRV_TCON_BB_ByteWrite(((GFX_TCON_INDEX)value).indexByte[1]);
    DRV_TCON_BB_ByteWrite(((GFX_TCON_INDEX)value).indexByte[0]);

    GFX_TCON_BB_IOSet(BB_CS, 1);
    __delay_us(10);
}



