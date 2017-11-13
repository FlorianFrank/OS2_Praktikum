/**
 * \file    Interrupts_Cfg.h
 * \ingroup configuration_interrupts
 *
 * \brief Interrupts configuration.
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
 * \copyright Copyright (C) 2013 Infineon Technologies AG
 * \author Dian Tresna Nugraha <Dian.Nugraha@Infineon.com>
 *
 * $Revision: 601 $
 * $Date: 2013-02-20 17:13:43 +0100 (Wed, 20 Feb 2013) $
 *
 */

/**
 * \defgroup configuration_interrupts Interrupt Priorities
 * \ingroup configuration
 *
 * This list contains interrupt service priority and interrupt service provider
 * configuration.
 *
 * \see \ref interrupts.
 */

#ifndef CFG_INTERRUPTS_H
#define CFG_INTERRUPTS_H

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief Build the ISR configuration object
 * \param no interrupt priority
 * \param cpu assign CPU number
 */
#define ISR_ASSIGN(no, cpu)  ((no << 8) + cpu)

/** \brief extract the priority out of the ISR object */
#define ISR_PRIORITY(no_cpu) (no_cpu >> 8)

/** \brief extract the service provider  out of the ISR object */
#define ISR_PROVIDER(no_cpu) (no_cpu % 8)
//------------------------------------------------------------------------------
/**
 * \addtogroup configuration_interrupts
 * \{
 */
/**
 * \name Interrupt priority configuration
 *
 * The interrupt priority range is [0,255]. Higher number has higher priority. Priority=0
 * WILL NOT be serviced.
 * \{
 */

#define ISR_PRIORITY_STM_0      4       /**< \brief Define priority of the STM receive interrupt request.  */
#define ISR_PRIORITY_STM_0_EVENT      0       /**< \brief Define priority of the STM receive interrupt request.  */
#define ISR_PRIORITY_STM_1      0       /**< \brief Define priority of the STM receive interrupt request.  */


#define ISR_PRIORITY_ASC_0_RX  12      /**< \brief Define priority of the ASC0 receive interrupt request.  */
#define ISR_PRIORITY_ASC_0_TX  13      /**< \brief Define priority of the ASC0 transmit interrupt request.  */
#define ISR_PRIORITY_ASC_0_ERR 14      /**< \brief Define priority of the ASC0 error interrupt request.  */

#define ISR_PRIORITY_QSPI0_TX       15  /**< \brief Define the Qspi0 transmit interrupt priority. DMA Channel 3 */
#define ISR_PRIORITY_QSPI0_RX       0  /**< \brief Define the Qspi0 transmit interrupt priority.  */
#define ISR_PRIORITY_QSPI0_ER       16 /**< \brief Define the Qspi0 error interrupt priority.  */
#define ISR_PRIORITY_DMA_CH3        52 /**< \brief Define the Dma channel3 interrupt priority.  */
#define ISR_PRIORITY_QSPI0_DMA      0  /**< \brief Define the Qspi0 transmit interrupt priority.  */             // DMA

#define ISR_CPUSRV0		      		2  /**< \brief Define the touch data receive interrupt priority.  */

#define ISR_PRIORITY_QSPI1_TX	33  /**< \brief Define the Qspi1 transmit interrupt priority.  */
#define ISR_PRIORITY_QSPI1_RX   34  /**< \brief Define the Qspi1 receive interrupt priority.  */
#define ISR_PRIORITY_QSPI1_ER   35 /**< \brief Define the Qspi1 error interrupt priority.  */
#define ISR_PRIORITY_DMA_CH1    50 /**< \brief Define the Dma channel1 interrupt priority.  */
#define ISR_PRIORITY_DMA_CH2    51 /**< \brief Define the Dma channel2 interrupt priority.  */


#define ISR_PRIORITY_ETH       32      /**< \brief Define priority of the ETHERNET interrupt request.  */

/** \} */
/**
 * \name Interrupt provider configuration
 *
 * The interrupt provider range is {0,1,2} for {CPU0, CPU1, CPU2} respectively.
 * \{
 */

#define ISR_PROVIDER_ASC_0     IfxSrc_Tos_cpu0      /**< \brief Define CPU number which handles the ASC0 interrupt request.  */
#define ISR_PROVIDER_ETH       IfxSrc_Tos_cpu0      /**< \brief Define CPU number which handles the ETHERNET interrupt request.  */

#define ISR_PROVIDER_QSPI0_TX       IfxSrc_Tos_cpu1     /**< \brief Define the Qspi0 transmit interrupt provider.  */
#define ISR_PROVIDER_QSPI0_RX		IfxSrc_Tos_cpu1     /**< \brief Define the Qspi0 transmit interrupt provider.  */
#define ISR_PROVIDER_QSPI0_ER       IfxSrc_Tos_cpu1     /**< \brief Define the Qspi0 error interrupt provider.  */
#define ISR_PROVIDER_CPUSRV0      	IfxSrc_Tos_cpu1  	/**< \brief Define the touch data receive interrupt provider.  */


#define ISR_PROVIDER_QSPI1_TX       IfxSrc_Tos_dma      /**< \brief Define the Qspi2 transmit interrupt provider.  */
#define ISR_PROVIDER_QSPI1_RX       IfxSrc_Tos_dma      /**< \brief Define the Qspi2 receive interrupt provider.  */
#define ISR_PROVIDER_QSPI1_ER       IfxSrc_Tos_cpu0     /**< \brief Define the Qspi2 error interrupt provider.  */

#define ISR_PROVIDER_DMA_CH1        IfxSrc_Tos_cpu0     /**< \brief Define the Dma Channel1 interrupt provider.  */
#define ISR_PROVIDER_DMA_CH2        IfxSrc_Tos_cpu0     /**< \brief Define the Dma Channel2 interrupt provider.  */

#define ISR_PROVIDER_DMA_CH3        IfxSrc_Tos_cpu1     /**< \brief Define the Dma Channel1 interrupt provider.  */

#define ISR_PROVIDER_STM0			IfxSrc_Tos_cpu0     /**< \brief Define the STM0 interrupt provider.  */
#define ISR_PROVIDER_STM1			IfxSrc_Tos_cpu1     /**< \brief Define the STM1 interrupt provider.  */

#define ISR_PROVIDER_STM0			IfxSrc_Tos_cpu0     /**< \brief Define the STM0 interrupt provider.  */


/** \} */

/**
 * \name Interrupt configuration.
 * \{ */

#define INTERRUPT_QSPI0_TX          ISR_ASSIGN(ISR_PRIORITY_QSPI0_TX, ISR_PROVIDER_QSPI0_TX)             /**< \brief Define the QSPI0 transmit interrupt priority.  */
//#define INTERRUPT_QSPI0_RX          ISR_ASSIGN(ISR_PRIORITY_QSPI0_RX, ISR_PROVIDER_QSPI0_RX)             /**< \brief Define the QSPI0 receive interrupt priority.  */
#define INTERRUPT_QSPI0_ER          ISR_ASSIGN(ISR_PRIORITY_QSPI0_ER, ISR_PROVIDER_QSPI0_ER)             /**< \brief Define the QSPI0 error interrupt priority.  */

#define INTERRUPT_CPUSRV0 			ISR_ASSIGN(ISR_PRIORITY_CPUSRV0, ISR_PROVIDER_CPUSRV0)				 /**< \brief Define the touch data receive interrupt priority.  */

#define INTERRUPT_QSPI1_TX          ISR_ASSIGN(ISR_PRIORITY_QSPI1_TX, ISR_PROVIDER_QSPI1_TX)             /**< \brief Define the QSPI1 transmit interrupt priority.  */
#define INTERRUPT_QSPI1_RX          ISR_ASSIGN(ISR_PRIORITY_QSPI1_RX, ISR_PROVIDER_QSPI1_RX)             /**< \brief Define the QSPI1 receive interrupt priority.  */
#define INTERRUPT_QSPI1_ER          ISR_ASSIGN(ISR_PRIORITY_QSPI1_ER, ISR_PROVIDER_QSPI1_ER)             /**< \brief Define the QSPI1 error interrupt priority.  */

#define INTERRUPT_DMA_CH3           ISR_ASSIGN(ISR_PRIORITY_DMA_CH3, ISR_PROVIDER_DMA_CH3)               /**< \brief Define the Dma channel1 interrupt priority.  */
#define INTERRUPT_DMA_CH4           ISR_ASSIGN(ISR_PRIORITY_DMA_CH4, ISR_PROVIDER_DMA_CH4)               /**< \brief Define the Dma channel2 interrupt priority.  */

#define INTERRUPT_DMA_CH1           ISR_ASSIGN(ISR_PRIORITY_DMA_CH1, ISR_PROVIDER_DMA_CH1)               /**< \brief Define the Dma channel1 interrupt priority.  */
#define INTERRUPT_DMA_CH2           ISR_ASSIGN(ISR_PRIORITY_DMA_CH2, ISR_PROVIDER_DMA_CH2)               /**< \brief Define the Dma channel2 interrupt priority.  */

#define INTERRUPT_TIMER             ISR_ASSIGN(ISR_PRIORITY_STM_0, ISR_PROVIDER_STM0)                   /**< \brief Define the 1ms timer interrupt priority.  */

/** \} */
/** \} */
//------------------------------------------------------------------------------

#endif
