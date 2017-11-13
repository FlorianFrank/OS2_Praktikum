/**
 * \file Cfg_AscIf.c
 * \brief ASC interface configuration
 *
 * \license
 * You can use this file under the terms of the IFX License.
 *
 * This file is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE.  See the IFX License for more details (IFX_License.txt).
 *
 * This file may be used, copied, and distributed, with or without modification, provided
 * that all copyright notices are retained; that all modifications to this file are
 * prominently noted in the modified file; and that this paragraph is not modified.
 *
 * \copyright Copyright (C) 2012 Infineon Technologies AG
 * \author Alann Denais <Alann.Denais@Infineon.com>
 *
 * $Revision: 615 $
 * $Date: 2013-03-04 14:11:48 +0100 (Mon, 04 Mar 2013) $
 *
 * \defgroup configuration_comm_ascif ASC
 * \ingroup configuration_comm
 */

#include "Interrupts_Cfg.h"
#include "Asclin/Asc/IfxAsclin_Asc.h"
#include "Comm/Ifx_Console.h"



#define ASC_TX_BUFFER_SIZE (512)
#define ASC_RX_BUFFER_SIZE (512)



typedef struct
{
	 IfxAsclin_Asc asc;
	 IfxStdIf_DPipe standardIo;
	 uint8 ascTxBuffer[ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
	 uint8 ascRxBuffer[ASC_RX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
} Ifx_AscIf;

Ifx_AscIf Ifx_g_AscIf;



/** \brief Serial interface configuration */

void IfxAsclin_Asc_Init(void) {

	 IfxAsclin_Asc_Config ascConfig;
     IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN0);

     // set the desired baudrate
     ascConfig.baudrate.prescaler = 1;
     ascConfig.baudrate.baudrate =/* 4 */ 115200; // FDR values will be calculated in initModule
     ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_4;

     // ISR priorities and interrupt target
     ascConfig.interrupt.txPriority = ISR_PRIORITY_ASC_0_TX;
     ascConfig.interrupt.rxPriority = ISR_PRIORITY_ASC_0_RX;
     ascConfig.interrupt.erPriority = ISR_PRIORITY_ASC_0_ERR;
     ascConfig.interrupt.typeOfService = (IfxSrc_Tos)IfxCpu_getCoreId();

     // FIFO configuration
     ascConfig.txBuffer = &Ifx_g_AscIf.ascTxBuffer;
     ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;

     ascConfig.rxBuffer = &Ifx_g_AscIf.ascRxBuffer;
     ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

     // pin configuration
     const IfxAsclin_Asc_Pins pins = {
         NULL,                     IfxPort_InputMode_pullUp,          // CTS pin not used
         &IfxAsclin0_RXA_P14_1_IN, IfxPort_InputMode_pullUp,		  // RX pin
         NULL,                     IfxPort_OutputMode_pushPull,       // RTS pin not used
         &IfxAsclin0_TX_P14_0_OUT, IfxPort_OutputMode_pushPull,       // TX Pin
         IfxPort_PadDriver_cmosAutomotiveSpeed1
     };
     ascConfig.pins = &pins;

     // initialize module
     IfxAsclin_Asc_initModule(&Ifx_g_AscIf.asc, &ascConfig);

     // initialize standardIo
     IfxAsclin_Asc_stdIfDPipeInit(&Ifx_g_AscIf.standardIo, &Ifx_g_AscIf.asc);
}




/** \brief Initialise the console over serial communication */

void initConsole(void)
{

	IfxAsclin_Asc_Init();
	Ifx_Console_init(&Ifx_g_AscIf.standardIo);

    Ifx_Console_print("----------------------------------"ENDL);
    Ifx_Console_print("LWIP Demo Input & Output			 "ENDL);
    Ifx_Console_print("----------------------------------"ENDL);
}




IFX_INTERRUPT(asclin0TxISR, 0, ISR_PRIORITY_ASC_0_TX);

/**
 * \ingroup interrupts
 *
 * This interrupt is raised each time the serial interface transmit buffer get empty.
 *
 * Configuration of this interrupt is done by IfxAsclin_Asc_init() and in each service
 * Asc_If_transmitIrq() will be called.
 *
 * \isrProvider \ref ISR_PROVIDER_ASC_0
 * \isrPriority \ref ISR_PRIORITY_ASC_0_TX
 */

void asclin0TxISR()
{
	IfxAsclin_Asc_isrTransmit(&Ifx_g_AscIf.asc);
}



IFX_INTERRUPT(asclin0RxISR, 0, ISR_PRIORITY_ASC_0_RX);

/**
 * \ingroup interrupts
 *
 * This interrupt is raised each time a data have been received on the serial interface.
 *
 * Configuration of this interrupt is done by IfxAsclin_AscIf_init() and in each service
 * the Asc_If_receiveIrq() will be called.
 *
 * \isrProvider \ref ISR_PROVIDER_ASC_0
 * \isrPriority \ref ISR_PRIORITY_ASC_0_RX
 */

void asclin0RxISR()
{
    IfxAsclin_Asc_isrReceive(&Ifx_g_AscIf.asc);
}



IFX_INTERRUPT(asclin0ErISR, 0, ISR_PRIORITY_ASC_0_ERR);

/**
 * \ingroup interrupts
 *
 * This interrupt is raised each time an error occurs on the serial interface.
 *
 * Configuration of this interrupt is done by IfxAsclin_AscIf_init() and in each service
 * Asc_If_errorIrq() will be called.
 *
 * \isrProvider \ref ISR_PROVIDER_ASC_0
 * \isrPriority \ref ISR_PRIORITY_ASC_0_ERR
 */

void asclin0ErISR()
{
    IfxAsclin_Asc_isrError(&Ifx_g_AscIf.asc);
}
