	.file	"ee_tc_context.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_std_change_context
	.type	EE_std_change_context, @function
EE_std_change_context:
.LFB96:
	.file 1 "0_Src/OS/cpu/tricore/src/ee_tc_context.c"
	.loc 1 123 0
.LVL0:
	movh.a	%a14, hi:EE_tc_active_tos
	movh	%d10, hi:EE_std_thread_tos
	lea	%a14, [%a14] lo:EE_tc_active_tos
	movh.a	%a12, hi:EE_tc_active_utid
	movh	%d8, hi:EE_tc_tasks_RA
.LBB52:
.LBB53:
	.loc 1 72 0
	movh.a	%a13, hi:EE_tc_system_tos
	addi	%d10, %d10, lo:EE_std_thread_tos
	lea	%a12, [%a12] lo:EE_tc_active_utid
	addi	%d8, %d8, lo:EE_tc_tasks_RA
.LBE53:
.LBE52:
	.loc 1 131 0
	mov.d	%d9, %a14
.LBB60:
.LBB57:
	.loc 1 72 0
	lea	%a13, [%a13] lo:EE_tc_system_tos
	j	.L4
.LVL1:
.L3:
.LBE57:
.LBE60:
	.loc 1 153 0
	call	EE_std_run_task_code
.LVL2:
	mov	%d4, %d2
.LVL3:
.L4:
.LBB61:
.LBB62:
	.file 2 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.loc 2 230 0
	addi	%d2, %d4, 1
	insert	%d2, %d2, 0, 31, 1
.LBE62:
.LBE61:
	.loc 1 130 0
	mov.a	%a2, %d10
	sh	%d5, %d2, 2
	addsc.a	%a15, %a2, %d5, 0
	.loc 1 131 0
	ld.w	%d3, [%a14]0
	.loc 1 130 0
	ld.w	%d15, [%a15]0
.LVL4:
	.loc 1 134 0
	ld.w	%d6, [%a12]0
.LVL5:
.LBB63:
.LBB64:
.LBB65:
.LBB66:
	.file 3 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.loc 3 619 0
#APP
	# 619 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mov.aa %a3, %a11
	# 0 "" 2
.LVL6:
#NO_APP
.LBE66:
.LBE65:
	.loc 1 58 0
	mov.a	%a15, %d8
	addsc.a	%a2, %a15, %d6, 2
	st.a	[%a2]0, %a3
.LBE64:
.LBE63:
	.loc 1 137 0
	jeq	%d3, %d15, .L2
.LVL7:
.LBB67:
.LBB58:
.LBB54:
.LBB55:
	.loc 3 631 0
#APP
	# 631 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mov.aa %a2, %a10
	# 0 "" 2
.LVL8:
#NO_APP
.LBE55:
.LBE54:
	.loc 1 72 0
	addsc.a	%a15, %a13, %d3, 3
	st.a	[%a15]0, %a2
.LBB56:
	.loc 1 73 0
#APP
	# 73 "0_Src/OS/cpu/tricore/src/ee_tc_context.c" 1
	mfcr %d3, LO:0xFE00
	# 0 "" 2
.LVL9:
#NO_APP
.LBE56:
.LBE58:
.LBE67:
	.loc 1 140 0
	mov.a	%a2, %d9
.LVL10:
.LBB68:
.LBB59:
	.loc 1 73 0
	st.w	[%a15] 4, %d3
.LBE59:
.LBE68:
.LBB69:
.LBB70:
	.loc 1 81 0
	addsc.a	%a15, %a13, %d15, 3
.LVL11:
.LBE70:
.LBE69:
	.loc 1 140 0
	st.w	[%a2]0, %d15
.LVL12:
.LBB79:
.LBB78:
	.loc 1 81 0
	ld.w	%d15, [%a15] 4
.LVL13:
.LBB71:
.LBB72:
	.loc 3 638 0
	ld.a	%a15, [%a15]0
#APP
	# 638 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mov.aa %a10, %a15
	# 0 "" 2
.LVL14:
#NO_APP
.LBE72:
.LBE71:
.LBB73:
.LBB74:
	.loc 3 669 0
#APP
	# 669 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mtcr LO:0xFE00, %d15
	# 0 "" 2
#NO_APP
.LBE74:
.LBB75:
.LBB76:
.LBB77:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL15:
#NO_APP
.L2:
.LBE77:
.LBE76:
.LBE75:
.LBE73:
.LBE78:
.LBE79:
	.loc 1 145 0
	st.w	[%a12]0, %d2
	.loc 1 147 0
	jgez	%d4, .L3
.LVL16:
.LBB80:
.LBB81:
	.loc 1 64 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d5, 0
.LBB82:
.LBB83:
	.loc 3 625 0
	ld.a	%a15, [%a15]0
#APP
	# 625 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mov.aa %a11, %a15
	# 0 "" 2
#NO_APP
.LBE83:
.LBE82:
.LBE81:
.LBE80:
.LBB84:
.LBB85:
.LBB86:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
	ret
.LBE86:
.LBE85:
.LBE84:
.LFE96:
	.size	EE_std_change_context, .-EE_std_change_context
	.global	EE_tc_active_utid
.section .bss,"aw",@nobits
	.align 2
	.type	EE_tc_active_utid, @object
	.size	EE_tc_active_utid, 4
EE_tc_active_utid:
	.zero	4
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
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 6 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 7 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.file 9 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 10 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x927
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/cpu/tricore/src/ee_tc_context.c"
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
	.byte	0x5
	.byte	0x4b
	.uaword	0x1c6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x5
	.byte	0x4c
	.uaword	0x1de
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_ADDR"
	.byte	0x5
	.byte	0x5a
	.uaword	0x1fd
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.string	"EE_CONST_ADDR"
	.byte	0x5
	.byte	0x60
	.uaword	0x214
	.uleb128 0x5
	.byte	0x4
	.uaword	0x21a
	.uleb128 0x6
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x3
	.byte	0x7b
	.uaword	0x1cd
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x3
	.byte	0x7d
	.uaword	0x1cd
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x3
	.byte	0x80
	.uaword	0x1b6
	.uleb128 0x3
	.string	"EE_UTID"
	.byte	0x3
	.byte	0x83
	.uaword	0x1cd
	.uleb128 0x7
	.string	"EE_TC_TOS"
	.byte	0x8
	.byte	0x3
	.byte	0x94
	.uaword	0x28a
	.uleb128 0x8
	.string	"ram_tos"
	.byte	0x3
	.byte	0x95
	.uaword	0x1ee
	.byte	0
	.uleb128 0x8
	.string	"pcxi_tos"
	.byte	0x3
	.byte	0x96
	.uaword	0x21b
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"_isync"
	.byte	0x4
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xa
	.string	"EE_tc_isync"
	.byte	0x3
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0xb
	.string	"EE_tc_get_RA"
	.byte	0x3
	.uahalf	0x268
	.byte	0x1
	.uaword	0x1ee
	.byte	0x3
	.uaword	0x2d0
	.uleb128 0xc
	.string	"reg"
	.byte	0x3
	.uahalf	0x26a
	.uaword	0x1ee
	.byte	0
	.uleb128 0xd
	.string	"EE_tc_set_RA"
	.byte	0x3
	.uahalf	0x26f
	.byte	0x1
	.byte	0x3
	.uaword	0x2f4
	.uleb128 0xe
	.string	"reg"
	.byte	0x3
	.uahalf	0x26f
	.uaword	0x1ff
	.byte	0
	.uleb128 0xb
	.string	"EE_tc_get_SP"
	.byte	0x3
	.uahalf	0x274
	.byte	0x1
	.uaword	0x1ee
	.byte	0x3
	.uaword	0x31c
	.uleb128 0xc
	.string	"reg"
	.byte	0x3
	.uahalf	0x276
	.uaword	0x1ee
	.byte	0
	.uleb128 0xd
	.string	"EE_tc_set_SP"
	.byte	0x3
	.uahalf	0x27b
	.byte	0x1
	.byte	0x3
	.uaword	0x340
	.uleb128 0xe
	.string	"reg"
	.byte	0x3
	.uahalf	0x27b
	.uaword	0x1ff
	.byte	0
	.uleb128 0xd
	.string	"EE_tc_set_pcxi"
	.byte	0x3
	.uahalf	0x29b
	.byte	0x1
	.byte	0x3
	.uaword	0x379
	.uleb128 0xe
	.string	"reg"
	.byte	0x3
	.uahalf	0x29b
	.uaword	0x21b
	.uleb128 0xf
	.uleb128 0xc
	.string	"__newval"
	.byte	0x3
	.uahalf	0x29d
	.uaword	0x1de
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_tid_as_index"
	.byte	0x2
	.byte	0xe4
	.byte	0x1
	.uaword	0x247
	.byte	0x3
	.uaword	0x3a5
	.uleb128 0x11
	.string	"tid"
	.byte	0x2
	.byte	0xe4
	.uaword	0x239
	.byte	0
	.uleb128 0x12
	.string	"EE_tc_task_save"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uaword	0x3cb
	.uleb128 0x11
	.string	"utid"
	.byte	0x1
	.byte	0x38
	.uaword	0x247
	.byte	0
	.uleb128 0x12
	.string	"EE_tc_stack_save"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.uaword	0x40d
	.uleb128 0x11
	.string	"tos"
	.byte	0x1
	.byte	0x44
	.uaword	0x21b
	.uleb128 0x13
	.string	"p_tos"
	.byte	0x1
	.byte	0x46
	.uaword	0x40d
	.uleb128 0xf
	.uleb128 0x13
	.string	"__res"
	.byte	0x1
	.byte	0x49
	.uaword	0x1de
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x412
	.uleb128 0x5
	.byte	0x4
	.uaword	0x256
	.uleb128 0x12
	.string	"EE_tc_stack_restore"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uaword	0x464
	.uleb128 0x11
	.string	"tos"
	.byte	0x1
	.byte	0x4d
	.uaword	0x21b
	.uleb128 0x13
	.string	"p_tos"
	.byte	0x1
	.byte	0x4f
	.uaword	0x40d
	.uleb128 0x13
	.string	"sp"
	.byte	0x1
	.byte	0x50
	.uaword	0x464
	.uleb128 0x13
	.string	"pcxi"
	.byte	0x1
	.byte	0x51
	.uaword	0x469
	.byte	0
	.uleb128 0x14
	.uaword	0x1ee
	.uleb128 0x14
	.uaword	0x21b
	.uleb128 0x12
	.string	"EE_tc_task_restore"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.byte	0x3
	.uaword	0x4a1
	.uleb128 0x11
	.string	"utid"
	.byte	0x1
	.byte	0x3e
	.uaword	0x247
	.uleb128 0x13
	.string	"ra"
	.byte	0x1
	.byte	0x40
	.uaword	0x464
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	.LFB96
	.uaword	.LFE96
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d9
	.uleb128 0x16
	.string	"tid"
	.byte	0x1
	.byte	0x7a
	.uaword	0x239
	.uaword	.LLST0
	.uleb128 0x13
	.string	"utid"
	.byte	0x1
	.byte	0x7c
	.uaword	0x247
	.uleb128 0x17
	.string	"tos_new"
	.byte	0x1
	.byte	0x7d
	.uaword	0x21b
	.uaword	.LLST1
	.uleb128 0x17
	.string	"tos_from"
	.byte	0x1
	.byte	0x7e
	.uaword	0x21b
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	0x3cb
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x8b
	.uaword	0x56f
	.uleb128 0x19
	.uaword	0x3e5
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0x3f0
	.uleb128 0x1c
	.uaword	0x2f4
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0x48
	.uaword	0x55a
	.uleb128 0x1d
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x1e
	.uaword	0x30f
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.LBB56
	.uaword	.LBE56
	.uleb128 0x1e
	.uaword	0x3fe
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x379
	.uaword	.LBB61
	.uaword	.LBE61
	.byte	0x1
	.byte	0x81
	.uaword	0x58c
	.uleb128 0x19
	.uaword	0x399
	.uaword	.LLST6
	.byte	0
	.uleb128 0x1c
	.uaword	0x3a5
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.byte	0x86
	.uaword	0x5cc
	.uleb128 0x19
	.uaword	0x3be
	.uaword	.LLST7
	.uleb128 0x1f
	.uaword	0x2a8
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x1
	.byte	0x3a
	.uleb128 0x1d
	.uaword	.LBB66
	.uaword	.LBE66
	.uleb128 0x1e
	.uaword	0x2c3
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x418
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x8d
	.uaword	0x66c
	.uleb128 0x19
	.uaword	0x435
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x1b
	.uaword	0x440
	.uleb128 0x1b
	.uaword	0x44d
	.uleb128 0x1e
	.uaword	0x457
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	0x31c
	.uaword	.LBB71
	.uaword	.LBE71
	.byte	0x1
	.byte	0x53
	.uaword	0x619
	.uleb128 0x20
	.uaword	0x333
	.byte	0
	.uleb128 0x1f
	.uaword	0x340
	.uaword	.LBB73
	.uaword	.LBE73
	.byte	0x1
	.byte	0x57
	.uleb128 0x19
	.uaword	0x359
	.uaword	.LLST11
	.uleb128 0x21
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0x648
	.uleb128 0x1e
	.uaword	0x366
	.uaword	.LLST11
	.byte	0
	.uleb128 0x22
	.uaword	0x296
	.uaword	.LBB75
	.uaword	.LBE75
	.byte	0x3
	.uahalf	0x2a1
	.uleb128 0x23
	.uaword	0x28a
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x3
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x46e
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.byte	0x95
	.uaword	0x6ab
	.uleb128 0x24
	.uaword	0x48a
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.uaword	.LBB81
	.uaword	.LBE81
	.uleb128 0x1b
	.uaword	0x496
	.uleb128 0x1f
	.uaword	0x2d0
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.byte	0x41
	.uleb128 0x20
	.uaword	0x2e7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x296
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.byte	0x9e
	.uaword	0x6cf
	.uleb128 0x23
	.uaword	0x28a
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x3
	.uahalf	0x21e
	.byte	0
	.uleb128 0x25
	.uaword	.LVL2
	.uaword	0x905
	.byte	0
	.uleb128 0x26
	.uaword	0x21b
	.uaword	0x6e4
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.string	"EE_std_thread_tos"
	.byte	0x6
	.byte	0x5d
	.uaword	0x6ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x6d9
	.uleb128 0x28
	.string	"EE_IRQ_nesting_level"
	.byte	0x7
	.byte	0x39
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_tc_active_tos"
	.byte	0x2
	.byte	0xbe
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.uaword	0x256
	.uaword	0x747
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.string	"EE_tc_system_tos"
	.byte	0x2
	.byte	0xc4
	.uaword	0x73c
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.uaword	0x1ee
	.uaword	0x76c
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.string	"EE_tc_tasks_RA"
	.byte	0x2
	.byte	0xc8
	.uaword	0x761
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_std_endcycle_next_tid"
	.byte	0x8
	.byte	0x41
	.uaword	0x239
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0x6d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.uaword	0x239
	.uaword	0x7c7
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0x7bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0x7f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x6d9
	.uleb128 0x28
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0x817
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0x6d9
	.uleb128 0x28
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x239
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x6d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x6d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xa
	.byte	0x33
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xa
	.byte	0x3a
	.uaword	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_ApplicationMode"
	.byte	0xa
	.byte	0x3d
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_tc_active_utid"
	.byte	0x1
	.byte	0x74
	.uaword	0x900
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EE_tc_active_utid
	.uleb128 0x2b
	.uaword	0x247
	.uleb128 0x2c
	.byte	0x1
	.string	"EE_std_run_task_code"
	.byte	0x8
	.byte	0x7d
	.byte	0x1
	.uaword	0x239
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x239
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB52-.Ltext0
	.uaword	.LBE52-.Ltext0
	.uaword	.LBB60-.Ltext0
	.uaword	.LBE60-.Ltext0
	.uaword	.LBB67-.Ltext0
	.uaword	.LBE67-.Ltext0
	.uaword	.LBB68-.Ltext0
	.uaword	.LBE68-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB69-.Ltext0
	.uaword	.LBE69-.Ltext0
	.uaword	.LBB79-.Ltext0
	.uaword	.LBE79-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	EE_std_run_task_code,STT_FUNC,0
	.extern	EE_tc_system_tos,STT_OBJECT,-1
	.extern	EE_tc_tasks_RA,STT_OBJECT,-1
	.extern	EE_std_thread_tos,STT_OBJECT,-1
	.extern	EE_tc_active_tos,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
