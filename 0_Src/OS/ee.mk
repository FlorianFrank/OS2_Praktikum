###############################################################################
#                                                                             #
#        Copyright © 2011 Infineon Technologies AG. All rights reserved.      #
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
# Subdir make file for ERIKA OS
# This make file is made specifically for ERIKA 2.1.0 !!!!
###############################################################################

# Function to test EEOPT, useful in conditionals and in or/and expressions
# Examples:
#   ifeq ($(call iseeopt,__MULTI__), yes)
#   ifeq ($(and $(call iseeopt,__MULTI__), $(call iseeopt,__IRQ_STACK_NEEDED__)), yes)
#   ifneq ($(call iseeopt,__MULTI__), yes)
iseeopt = $(if $(filter $1,$(EEOPT)),yes,)

EE_PKG= 0_Src/OS

EE_IPATH= -I./0_Src/OS/ -I./0_Src/OS/config/inc -I./0_Src/BaseSW/SFR_39A/_Reg -I./0_Src/BaseSw/Compilers

CC_OPTIONS_EE = $(CC_OPTIONS_MAIN) $(EE_IPATH)

include 0_Src/OS/config/cfg/cfg.mk
include 0_Src/OS/kernel/oo/cfg/cfg.mk 0_Src/OS/cpu/common/cfg/cfg.mk 0_Src/OS/cpu/tricore/cfg/cfg.mk

EE_OBJS:= $(EE_SRCS:%.c=$(OUT_DIR)/%.o)
DEP_FILES_EE= $(EE_SRCS:%.c=$(OUT_DIR)/%.d)
USER_MAKE_OBJS_MAIN=$(EE_OBJS)
USER_C_INCLUDES+=$(EE_IPATH)
-include $(DEP_FILES_EE)

$(OUT_DIR)/%.o:%.c
	@mkdir -p $(@D)									
	@rm -f $(ELF_BIN_MAIN) $(HEX_BIN_MAIN) $(MAP_FILE_MAIN)					
	@echo 'Compiling $<'
ifeq ($(strip $(TOOL_CHAIN_MAIN)),Dcc)								
	$(CC) $(CC_OPTIONS_EE) -D__TC161__ -c $< -o $@ -Xmake-dependency=4 -Xmake-dependency-savefile=$(@:.o=.d)
endif
ifeq ($(strip $(TOOL_CHAIN_MAIN)),Gnuc)
	$(CC) $(CC_OPTIONS_EE) -c $< -o $@ -save-temps=obj -MMD
endif
ifeq ($(strip $(TOOL_CHAIN_MAIN)),Tasking)
	$(CC) $(CC_OPTIONS_EE) $< -o $(OUT_DIR)/$*.src	--dep-file=$(OUT_DIR)/$*.dep
	$(AS) $(ASM_OPTS) $(OUT_DIR)/$*.src -o $@
	@sed $(call TaskingDepConversionString,$(@F),$(@D)) $(@:.o=.dep) >$(@:.o=.d)
	@rm -f $(@:.o=.dep)
endif	
	@echo ' '
