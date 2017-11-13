/**
 * \file General_Defines.h
 * \brief Driver configuration.
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
 * \author scheffer
 *
 * $Revision:  $
 * $Date:  $
 *
 * \defgroup 
 * \defgroup 
 * \ingroup 
 */

#ifndef GENERAL_DEFINES_H_
#define GENERAL_DEFINES_H_

#define USE_TFT
//#define TFT_OVER_DAS

#define DISP_CPU		1	// Display routines runs at CPU1


#define REFRESH_TFT 50		// Refresh rate [ms]; 1x refresh ~0,8 % CPU load; for graphic-out: 4 colors ~ 1.2 % CPU load, 16 colors ~ 0.8 % CPU load
							// Max refresh rate ~ 40 ms due to QSPI-load

#endif /* GENERAL_DEFINES_H_ */
