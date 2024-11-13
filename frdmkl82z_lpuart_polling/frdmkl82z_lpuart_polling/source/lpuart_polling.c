/*
 * Copyright (c) 2013 - 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 * All rights reserved.
 * 
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "board.h"
#include "fsl_lpuart.h"

#include "pin_mux.h"
#include "clock_config.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/
#define DEMO_LPUART_CLKSRC kCLOCK_PllFllSelClk
#define DEMO_LPUART_CLK_FREQ CLOCK_GetFreq(kCLOCK_PllFllSelClk)

#define SYST_CSR *((uint32_t*)0xE000E010)
#define SYST_RVR *((uint32_t*)0xE000E014)
#define SYST_CVR *((uint32_t*)0xE000E018)

/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/

uint8_t txbuff[] = "Lpuart polling example\r\nBoard will send back received characters\r\n";
uint8_t rxbuff[20] = {0};

void delay1ms(void)
{
	SYST_CSR = 0; /* Reset and disable */
	SYST_RVR = 71999; /* Value to count */
	SYST_CSR = 5; /* Select source clock, Enable */
	while((SYST_CSR & 0x10000) != 0x10000); /* Wait flag */
	SYST_CSR = 0; /* Reset and disable */
}

void delaynms(uint32_t n)
{
	uint32_t i;

	for(i = 0; i < n; i++)
	{
		delay1ms();
	}
}

/*!
 * @brief Main function
 */
int main(void)
{
	gpio_pin_config_t pin_config_out = {
		kGPIO_DigitalOutput,
		0,
	};

    uint8_t ch;
    uint8_t ca;
    lpuart_config_t config;

    BOARD_InitPins();
    BOARD_BootClockRUN();
    CLOCK_SetLpuartClock(1U);

    GPIO_PinInit(GPIOC, 0, &pin_config_out);
	GPIO_PinInit(GPIOC, 1, &pin_config_out);
	GPIO_PinInit(GPIOC, 2, &pin_config_out);

    /*
     * config.baudRate_Bps = 115200U;
     * config.parityMode = kLPUART_ParityDisabled;
     * config.stopBitCount = kLPUART_OneStopBit;
     * config.txFifoWatermark = 0;
     * config.rxFifoWatermark = 0;
     * config.enableTx = false;
     * config.enableRx = false;
     */
    LPUART_GetDefaultConfig(&config);
    config.baudRate_Bps =9600; //BOARD_DEBUG_UART_BAUDRATE;
    config.enableTx = true;
    config.enableRx = true;

    LPUART_Init(LPUART0, &config, DEMO_LPUART_CLK_FREQ);

    GPIO_PinWrite(GPIOC, 0, 1);
	GPIO_PinWrite(GPIOC, 1, 1);
	GPIO_PinWrite(GPIOC, 2, 1);

    while(1)
    {
//    	ca='C';
//    	LPUART_WriteBlocking(LPUART0, &ca, 1);
//    	delay1ms();

    	ch = 0x00;
    	LPUART_ReadBlocking(LPUART0, &ch, 1);
    	if (ch == 'F') /* Turn on Red led */
    	{
    		GPIO_PinWrite(GPIOC, 0, 1);
    		GPIO_PinWrite(GPIOC, 1, 0);
    		GPIO_PinWrite(GPIOC, 2, 1);
    	}
    	if (ch == 'B') /* Turn on Blue led */
    	{
    		GPIO_PinWrite(GPIOC, 0, 0);
    		GPIO_PinWrite(GPIOC, 1, 1);
    		GPIO_PinWrite(GPIOC, 2, 1);
    	}
    	if (ch == 'L') /* Turn on  led */
		{
			GPIO_PinWrite(GPIOC, 0, 1);
			GPIO_PinWrite(GPIOC, 1, 1);
			GPIO_PinWrite(GPIOC, 2, 0);
		}
    	if (ch == 'L') /* Turn on  led */
		{
			GPIO_PinWrite(GPIOC, 0, 0);
			GPIO_PinWrite(GPIOC, 1, 1);
			GPIO_PinWrite(GPIOC, 2, 0);
		}


    }
}
