/**
 * \file Ifx_Cfg_sdCard.h
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
 * \author Scheffer
 *
 * $Revision:  $
 * $Date:  $
 *
 * \defgroup 
 * \defgroup 
 * \ingroup 
 */

#ifndef IFX_CFG_SDCARD_H_
#define IFX_CFG_SDCARD_H_

#include "SdCard.h"


#define SDCARD_CS_PORT   MODULE_P10
#define SDCARD_CS_PIN	 (0U)

#define SDCARD_WP_PORT	MODULE_P15
#define SDCARD_WP_PIN	(0U)

#define SDCARD_INS_PORT MODULE_P15
#define SDCARD_INS_PIN  (8U)



#endif /* IFX_CFG_SDCARD_H_ */
