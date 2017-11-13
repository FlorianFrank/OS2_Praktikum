	.file	"ee_context.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_std_run_task_code
	.type	EE_std_run_task_code, @function
EE_std_run_task_code:
.LFB92:
	.file 1 "0_Src/OS/cpu/common/src/ee_context.c"
	.loc 1 53 0
.LVL0:
.LBB24:
.LBB25:
.LBB26:
.LBB27:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 172 0
#APP
	# 172 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE27:
.LBE26:
.LBE25:
.LBE24:
	.loc 1 55 0
	call	EE_oo_thread_stub
.LVL1:
.LBB28:
.LBB29:
.LBB30:
.LBB31:
	.loc 2 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE31:
.LBE30:
.LBE29:
.LBE28:
	.loc 1 59 0
	movh.a	%a15, hi:EE_std_endcycle_next_tid
	.loc 1 57 0
	call	EE_thread_end_instance
.LVL2:
	.loc 1 59 0
	ld.w	%d2, [%a15] lo:EE_std_endcycle_next_tid
	ret
.LFE92:
	.size	EE_std_run_task_code, .-EE_std_run_task_code
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
	.uaword	.LFB92
	.uaword	.LFE92-.LFB92
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 4 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 5 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 6 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.file 9 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 10 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.file 11 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x538
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/cpu/common/src/ee_context.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"EE_INT32"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x3
	.byte	0x4c
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x4
	.byte	0x7b
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x4
	.byte	0x7d
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x4
	.byte	0x80
	.uaword	0x1b2
	.uleb128 0x4
	.string	"_enable"
	.byte	0x2
	.byte	0xaa
	.byte	0x1
	.byte	0x3
	.uleb128 0x4
	.string	"_disable"
	.byte	0x2
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.string	"EE_tc_enableIRQ"
	.byte	0x4
	.uahalf	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.string	"EE_tc_disableIRQ"
	.byte	0x4
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.string	"EE_hal_enableIRQ"
	.byte	0x4
	.uahalf	0x3e3
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.string	"EE_hal_disableIRQ"
	.byte	0x4
	.uahalf	0x3e8
	.byte	0x1
	.byte	0x3
	.uleb128 0x6
	.byte	0x1
	.string	"EE_std_run_task_code"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	0x208
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x346
	.uleb128 0x7
	.string	"tid"
	.byte	0x1
	.byte	0x34
	.uaword	0x208
	.uaword	.LLST0
	.uleb128 0x8
	.uaword	0x25e
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x36
	.uaword	0x2fe
	.uleb128 0x9
	.uaword	0x231
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x4
	.uahalf	0x3e5
	.uleb128 0xa
	.uaword	0x216
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x4
	.uahalf	0x24e
	.byte	0
	.byte	0
	.uleb128 0x8
	.uaword	0x275
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0x38
	.uaword	0x333
	.uleb128 0x9
	.uaword	0x247
	.uaword	.LBB29
	.uaword	.LBE29
	.byte	0x4
	.uahalf	0x3ea
	.uleb128 0xa
	.uaword	0x223
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x4
	.uahalf	0x253
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	.LVL1
	.uaword	0x505
	.uleb128 0xb
	.uaword	.LVL2
	.uaword	0x51e
	.byte	0
	.uleb128 0xc
	.uaword	0x1ea
	.uaword	0x351
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.string	"EE_std_thread_tos"
	.byte	0x5
	.byte	0x5d
	.uaword	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x346
	.uleb128 0xe
	.string	"EE_IRQ_nesting_level"
	.byte	0x6
	.byte	0x39
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_std_endcycle_next_tid"
	.byte	0x8
	.byte	0x41
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0x346
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x208
	.uaword	0x3ec
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0x3e1
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0x41a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x346
	.uleb128 0xe
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0x43c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x346
	.uleb128 0xe
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x346
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x346
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xa
	.byte	0x33
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xa
	.byte	0x3a
	.uaword	0x1f9
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.string	"EE_ApplicationMode"
	.byte	0xa
	.byte	0x3d
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"EE_oo_thread_stub"
	.byte	0x9
	.uahalf	0x1b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"EE_thread_end_instance"
	.byte	0xb
	.byte	0xfa
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
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
	.extern	EE_thread_end_instance,STT_FUNC,0
	.extern	EE_std_endcycle_next_tid,STT_OBJECT,4
	.extern	EE_oo_thread_stub,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
