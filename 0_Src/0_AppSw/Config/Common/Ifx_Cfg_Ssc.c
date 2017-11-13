/**
 * \file Ifx_Cfg_Ssc_If.c
 * \brief SSC Interface configuration
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
 *
 * $Revision: 236 $
 * $Date: 2012-04-02 18:16:52 +0200 (Mon, 02 Apr 2012) $
 */

//#include "Qspi/SPI/IfxQspi_Spi.h"
#include "Interrupts_Cfg.h"
#include "Ifx_Cfg_Ssc.h"

//#include "Tricore/Driver/QspiDmaDemo.h"
/** SSC interface 0 pins configuration */
const IfxQspi_SpiMaster_Pins cfg_CDrv_Ssc_If_1_pins =
{
	.sclk                       = &IfxQspi1_SCLK_P10_2_OUT,
	.sclkMode                   = IfxPort_OutputMode_pushPull,
	.mtsr                       = &IfxQspi1_MTSR_P10_3_OUT,
	.mtsrMode                   = IfxPort_OutputMode_pushPull,
	.mrst                       = &IfxQspi1_MRSTA_P10_1_IN,
	.mrstMode                   = IfxPort_InputMode_noPullDevice,
	.pinDriver					= IfxPort_PadDriver_ttlSpeed1
};


/** Interurpt Configuration**/
const Ifx_Priority cfg_CDrv_ssc_txPriority =
{
		ISR_PRIORITY_DMA_CH1,
};

const Ifx_Priority cfg_CDrv_ssc_rxPriority =
{
		ISR_PRIORITY_DMA_CH2,
};

const IfxDma_ChannelId cfg_CDrv_ssc_txDmaChId ={
		IfxDma_ChannelId_1,
};
const IfxDma_ChannelId cfg_CDrv_ssc_rxDmaChId ={
		IfxDma_ChannelId_2,
};

const Ifx_Priority cfg_CDrv_ssc_errPriority =
{
		ISR_PRIORITY_QSPI1_ER
};


const IfxQspi_SpiMaster_Output cfg_CDrv_ssc_slsOutput[2] = {
	{
		.pin = &IfxQspi1_SLSO9_P10_5_OUT,
		.mode = IfxPort_OutputMode_pushPull,
		.driver = IfxPort_PadDriver_ttlSpeed1
	},
	{	//SLSO10_SD CARD
		.pin = &IfxQspi1_SLSO10_P10_0_OUT,
		.mode = IfxPort_OutputMode_pushPull,
		.driver = IfxPort_PadDriver_ttlSpeed1
	}
};



// Channel Configuration
const SpiIf_ChConfig cfg_CDrv_Ssc_Ch[2] =
{
	{
		.driver               = NULL_PTR,
		.baudrate             = 1000000,
		.mode.enabled         = 1,
		.mode.autoCS          = 1,
		.mode.loopback        = 0,
		.mode.clockPolarity   = SpiIf_ClockPolarity_idleLow,
		.mode.shiftClock      = SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge,
		.mode.dataHeading     = SpiIf_DataHeading_msbFirst,
		.mode.dataWidth       = 15,
		.mode.csActiveLevel   = Ifx_ActiveState_low,
		.mode.csLeadDelay     = SpiIf_SlsoTiming_0,
		.mode.csTrailDelay    = SpiIf_SlsoTiming_1,
		.mode.csInactiveDelay = SpiIf_SlsoTiming_7,
		.mode.parityCheck     = 1,
		.mode.parityMode      = Ifx_ParityMode_even,
		.errorChecks.baudrate = 0,
		.errorChecks.phase    = 0,
		.errorChecks.receive  = 0,
		.errorChecks.transmit = 0,
	},
	{
		.driver               = NULL_PTR,
		.baudrate             = 25000000,
		.mode.enabled         = 1,
		.mode.autoCS          = 1,
		.mode.loopback        = 0,
		.mode.clockPolarity   = SpiIf_ClockPolarity_idleLow,
		.mode.shiftClock      = SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge,
		.mode.dataHeading     = SpiIf_DataHeading_msbFirst,
		.mode.dataWidth       = 8,
		.mode.csActiveLevel   = Ifx_ActiveState_low,
		.mode.csLeadDelay     = SpiIf_SlsoTiming_0,
		.mode.csTrailDelay    = SpiIf_SlsoTiming_0,
		.mode.csInactiveDelay = SpiIf_SlsoTiming_0,
		.mode.parityCheck     = 0,
		.mode.parityMode      = Ifx_ParityMode_even,
		.errorChecks.baudrate = 0,
		.errorChecks.phase    = 0,
		.errorChecks.receive  = 0,
		.errorChecks.transmit = 0,
	}
};




