/**
 * \file EthDemo.c
 * \brief Demo EthDemo
 *
 * \version iLLD_Demos_1_0_0_11_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include "EthDemo.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

App_Eth g_Eth; /**< \brief Demo information */

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

const uint8 myMacAddress[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55};

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Demo_Eth_SrcDoc_Main_Interrupt
 * \{ */

/** \} */

/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void EthDemo_init(void)
{
    /* configure Ethermac */
    {
        const IfxEth_RmiiPins pins = {
            &IfxEth_CRSDVA_P11_11_IN,
            &IfxEth_REFCLK_P11_12_IN,
            &IfxEth_RXD0_P11_10_IN,
            &IfxEth_RXD1_P11_9_IN,
            &IfxEth_MDC_P21_0_OUT,
            &IfxEth_MDIO_P21_1_INOUT,
            &IfxEth_TXD0_P11_3_OUT,
            &IfxEth_TXD1_P11_2_OUT,
            &IfxEth_TXEN_P11_6_OUT
        };

        IfxEth_Config   config;
        IfxEth_initConfig(&config, &MODULE_ETH);

		config.phyInterfaceMode = IfxEth_PhyInterfaceMode_rmii;
		config.rmiiPins = &pins;
		config.phyInit = &IfxEth_Phy_Pef7071_init;
		config.phyLink = &IfxEth_Phy_Pef7071_link;

		config.isrPriority = ISR_PRIORITY_ETHERNET;
		config.isrProvider = ISR_PROVIDER_ETHERNET;

        IfxEth_init(&g_Eth.drivers.eth, &config);

        /* activate loopback */
        IfxEth_setLoopbackMode(&g_Eth.drivers.eth, 1);

        /* and enable transmitter/receiver */
        IfxEth_startTransmitter(&g_Eth.drivers.eth);
        IfxEth_startReceiver(&g_Eth.drivers.eth);
    }

}




void EthDemo_transmit(App_Eth *Ethernet,uint32 packetSize,uint8 *destinationAddress, uint8 *data)
{
	uint8 *pTxBuf = (uint8 *)IfxEth_getTransmitBuffer(&g_Eth.drivers.eth);

	if(pTxBuf!=NULL_PTR)
	{
		/* Destination Address */
		uint32      i;

		for (i = 0; i < 6; i++)
		{
			pTxBuf[i] = destinationAddress[i];
		}

		/* SA */
		for (i = 0; i < 6; i++)
		{
			pTxBuf[i + 6] = myMacAddress[i];
		}

		/* length of payload */
		pTxBuf[12] = packetSize / 256;
		pTxBuf[13] = packetSize % 256;

		for (i = HEADER_SIZE; i < (HEADER_SIZE + packetSize); i++)
		{
			pTxBuf[i] = *data++;
		}

		/* send packet */
		IfxEth_clearTxInterrupt(&g_Eth.drivers.eth);
		IfxEth_sendTransmitBuffer(&g_Eth.drivers.eth, HEADER_SIZE + packetSize);
	}
}


uint8 EthDemo_receive(App_Eth *Ethernet,uint32 *packetSize,uint8 *sourceAddress, uint8 *data)
{
	uint8      *pRxBuf = (uint8 *)IfxEth_getReceiveBuffer(&g_Eth.drivers.eth); /* we expect that a packet is available */
	uint8 errors = 0;
	uint32      i;
	IfxEth_freeReceiveBuffer(&g_Eth.drivers.eth);


	if(pRxBuf != NULL_PTR)
	{
		for (i = 0; i < 6; i++)
		{
			if (pRxBuf[i] != myMacAddress[i])
			{
				errors=0x1;		// Indicate that the Destination Address is not  as expected
			}
		}
		/* SA */
		for (i = 0; i < 6; i++)
		{
			if (pRxBuf[i + 6] != sourceAddress[i])
			{
				errors |= 0x02;	// Indicate that the source Address is not expected
			}
		}
		if(!errors)
		{
			*packetSize = pRxBuf[12]<<8;
			*packetSize += pRxBuf[13];
			// get Data
			for (i = HEADER_SIZE; i < (HEADER_SIZE + *packetSize); i++)
			{
				*data = pRxBuf[i];
				data++;		// increment Data pointer
			}
		}
	}
	return(errors);
}

IFX_INTERRUPT(ethISR,0,ISR_PRIORITY_ETHERNET);

uint32 isrEthernetCounter =0;

void ethISR(void)
{
	isrEthernetCounter++;
}
