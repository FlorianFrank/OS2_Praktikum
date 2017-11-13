###############################################################################
#                                                                             #
#       Copyright (C) 2015 Infineon Technologies AG. All rights reserved.     #
#                                                                             #
#                                                                             #
#                              IMPORTANT NOTICE                               #
#                                                                             #
#                                                                             #
# Infineon Technologies AG (Infineon) is supplying this file for use          #
# exclusively with Infineon’s microcontroller products. This file can be      #
# freely distributed within development tools that are supporting such        #
# microcontroller products.                                                   #
#                                                                             #
# THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED #
# OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF          #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.#
# INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,#
# OR CONSEQUENTIAL DAMAGES, FOR	ANY REASON WHATSOEVER.                        #
#                                                                             #
###############################################################################
# Subdirectory make file for 0_Src/0_AppSw
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


include 1_ToolEnv/0_Build/9_Make/0_AppSw/appTft/0_AppSw_appTft.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Beeper/0_AppSw_Beeper.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Config/0_AppSw_Config.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/DemoApp/0_AppSw_DemoApp.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Ethernet/0_AppSw_Ethernet.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Fat_fs/0_AppSw_Fat_fs.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Power/0_AppSw_Power.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Qspi/0_AppSw_Qspi.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Rtc/0_AppSw_Rtc.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Tft/0_AppSw_Tft.mk \
		1_ToolEnv/0_Build/9_Make/0_AppSw/Tricore/0_AppSw_Tricore.mk

