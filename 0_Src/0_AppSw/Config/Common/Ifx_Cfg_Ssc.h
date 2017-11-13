/*
 * Cfg_Ssc_If.h
 *
 *  Created on: 25.07.2012
 */

#ifndef CFG_SSC_IF_H_
#define CFG_SSC_IF_H_


#include <Ifx_Types.h>
#include "SpiIf.h"
#include "Interrupts_Cfg.h"
#include <Qspi/SpiMaster/IfxQspi_SpiMaster.h>


typedef enum
{
	Drv_Ssc_Channel_Display = 0,
	Drv_Ssc_Channel_SDCard,
	Drv_Ssc_Channel_Count,
}SscChannelId;


IFX_EXTERN const IfxQspi_SpiMaster_Pins cfg_CDrv_Ssc_If_1_pins;
/** Interurpt Configuration**/
IFX_EXTERN const Ifx_Priority cfg_CDrv_ssc_txPriority;
IFX_EXTERN const Ifx_Priority cfg_CDrv_ssc_rxPriority;
IFX_EXTERN const IfxDma_ChannelId cfg_CDrv_ssc_txDmaChId;
IFX_EXTERN const IfxDma_ChannelId cfg_CDrv_ssc_rxDmaChId;
IFX_EXTERN const Ifx_Priority cfg_CDrv_ssc_errPriority;

IFX_EXTERN const IfxQspi_SpiMaster_Output cfg_CDrv_ssc_slsOutput[2];
// Channel Configuration
IFX_EXTERN const SpiIf_ChConfig cfg_CDrv_Ssc_Ch[2];

#endif /* CFG_SSC_IF_H_ */
