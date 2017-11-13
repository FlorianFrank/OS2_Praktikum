	.file	"Cpu1_Main.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	core1_main
	.type	core1_main, @function
core1_main:
.LFB334:
	.file 1 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c"
	.loc 1 37 0
.LBB4:
.LBB5:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 2 589 0
#APP
	# 589 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE5:
.LBE4:
	.loc 1 43 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL0:
	mov	%d4, %d2
	call	IfxScuWdt_disableCpuWatchdog
.LVL1:
	movh.a	%a15, hi:Ifx_OSTask_100ms_Count_next
	ld.w	%d2, [%a15] lo:Ifx_OSTask_100ms_Count_next
	movh.a	%a15, hi:Core1_Stm_1ms
	lea	%a15, [%a15] lo:Core1_Stm_1ms
	.loc 1 51 0
	mov.aa	%a2, %a15
.L2:
	ld.w	%d15, [%a15]0
	jne	%d15, %d2, .L2
	.loc 1 53 0
	ld.w	%d2, [%a2]0
	addi	%d2, %d2, 100
	j	.L2
.LFE334:
	.size	core1_main, .-core1_main
	.global	Ifx_OSTask_100ms_Count_next
.section .data,"aw",@progbits
	.align 2
	.type	Ifx_OSTask_100ms_Count_next, @object
	.size	Ifx_OSTask_100ms_Count_next, 4
Ifx_OSTask_100ms_Count_next:
	.word	100
	.global	g_AppCpu1
.section .bss,"aw",@nobits
	.align 2
	.type	g_AppCpu1, @object
	.size	g_AppCpu1, 20
g_AppCpu1:
	.zero	20
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/CPU_main.h"
	.file 5 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x410
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x1d4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0x17d
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x5e
	.uaword	0x207
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.byte	0x28
	.uaword	0x2b2
	.uleb128 0x5
	.string	"sysFreq"
	.byte	0x4
	.byte	0x2a
	.uaword	0x1f8
	.byte	0
	.uleb128 0x5
	.string	"cpuFreq"
	.byte	0x4
	.byte	0x2b
	.uaword	0x1f8
	.byte	0x4
	.uleb128 0x5
	.string	"pllFreq"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1f8
	.byte	0x8
	.uleb128 0x5
	.string	"stmFreq"
	.byte	0x4
	.byte	0x2d
	.uaword	0x1f8
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"AppInfo"
	.byte	0x4
	.byte	0x2e
	.uaword	0x269
	.uleb128 0x4
	.byte	0x14
	.byte	0x4
	.byte	0x31
	.uaword	0x2ed
	.uleb128 0x5
	.string	"info"
	.byte	0x4
	.byte	0x33
	.uaword	0x2b2
	.byte	0
	.uleb128 0x5
	.string	"TickCount_1ms"
	.byte	0x4
	.byte	0x34
	.uaword	0x1ea
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"App_Cpu"
	.byte	0x4
	.byte	0x35
	.uaword	0x2c1
	.uleb128 0x6
	.string	"IfxCpu_enableInterrupts"
	.byte	0x2
	.uahalf	0x24b
	.byte	0x1
	.byte	0x3
	.uleb128 0x7
	.byte	0x1
	.string	"core1_main"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	0x192
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35f
	.uleb128 0x8
	.uaword	0x2fc
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x26
	.uleb128 0x9
	.uaword	.LVL0
	.uaword	0x3bd
	.uleb128 0x9
	.uaword	.LVL1
	.uaword	0x3e9
	.byte	0
	.uleb128 0xa
	.string	"g_AppCpu1"
	.byte	0x1
	.byte	0x20
	.uaword	0x2ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	g_AppCpu1
	.uleb128 0xb
	.string	"Core1_Stm_1ms"
	.byte	0x1
	.byte	0x22
	.uaword	0x38e
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x1ea
	.uleb128 0xa
	.string	"Ifx_OSTask_100ms_Count_next"
	.byte	0x1
	.byte	0x23
	.uaword	0x1ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Ifx_OSTask_100ms_Count_next
	.uleb128 0xd
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x5
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x1c6
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"IfxScuWdt_disableCpuWatchdog"
	.byte	0x5
	.uahalf	0x136
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x1c6
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Core1_Stm_1ms,STT_OBJECT,4
	.extern	IfxScuWdt_disableCpuWatchdog,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
