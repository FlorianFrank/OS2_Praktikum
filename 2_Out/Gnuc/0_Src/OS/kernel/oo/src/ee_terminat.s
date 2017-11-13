	.file	"ee_terminat.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_TerminateTask
	.type	EE_oo_TerminateTask, @function
EE_oo_TerminateTask:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_terminat.c"
	.loc 1 62 0
.LBB108:
.LBB109:
	.file 2 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 2 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE109:
.LBE108:
	.loc 1 70 0
	ld.w	%d15, [%a15] lo:EE_IRQ_nesting_level
	jz	%d15, .L2
.LVL0:
.LBB110:
.LBB111:
.LBB112:
.LBB113:
.LBB114:
.LBB115:
.LBB116:
.LBB117:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL1:
#NO_APP
.LBE117:
.LBE116:
.LBE115:
.LBE114:
.LBB118:
.LBB119:
.LBB120:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL2:
#NO_APP
.LBE120:
.LBE119:
.LBE118:
.LBE113:
.LBE112:
.LBE111:
.LBE110:
.LBB121:
.LBB122:
.LBB123:
.LBB124:
.LBB125:
.LBB126:
.LBB127:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE127:
.LBE126:
.LBB128:
.LBB129:
.LBB130:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE130:
.LBE129:
.LBE128:
.LBE125:
.LBE124:
.LBE123:
.LBE122:
.LBE121:
	.loc 1 80 0
	mov	%d2, 2
	ret
.LVL3:
.L2:
.LBB131:
.LBB132:
.LBB133:
.LBB134:
.LBB135:
.LBB136:
.LBB137:
.LBB138:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL4:
#NO_APP
.LBE138:
.LBE137:
.LBE136:
.LBE135:
.LBB139:
.LBB140:
.LBB141:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE141:
.LBE140:
.LBE139:
.LBE134:
.LBE133:
.LBE132:
.LBE131:
.LBB142:
.LBB143:
	.file 4 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 4 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d4, [%a15] lo:EE_stkfirst
.LBE143:
.LBE142:
	.loc 1 103 0
	movh.a	%a15, hi:EE_th_terminate_nextask
	mov	%d15, -1
	lea	%a15, [%a15] lo:EE_th_terminate_nextask
	addsc.a	%a15, %a15, %d4, 2
	st.w	[%a15]0, %d15
	.loc 1 108 0
	call	EE_hal_terminate_task
.LVL5:
	.loc 1 111 0
	mov	%d2, 0
	.loc 1 112 0
	ret
.LFE92:
	.size	EE_oo_TerminateTask, .-EE_oo_TerminateTask
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
	.file 5 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 6 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 7 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 8 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 9 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 10 "./0_Src/OS/cpu/common/inc/ee_context.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xa63
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_terminat.c"
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
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x5
	.byte	0x4c
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x6
	.byte	0x7b
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x6
	.byte	0x7d
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x6
	.byte	0x80
	.uaword	0x1b2
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.uahalf	0x134
	.uaword	0x36c
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x1ea
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x6
	.uahalf	0x139
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x1ea
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x6
	.uahalf	0x141
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x6
	.uahalf	0x142
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.uahalf	0x133
	.uaword	0x38f
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x216
	.uleb128 0x7
	.string	"reg"
	.byte	0x6
	.uahalf	0x148
	.uaword	0x1ea
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x36c
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x16f
	.uleb128 0x9
	.string	"_isync"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xa
	.string	"_mfcr"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x1da
	.byte	0x3
	.uaword	0x3e9
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x3e9
	.uleb128 0xc
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1da
	.byte	0
	.uleb128 0xd
	.uaword	0x1da
	.uleb128 0xe
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x416
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x3e9
	.uleb128 0xf
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x3e9
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_isync"
	.byte	0x6
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0x9
	.string	"_disable"
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_tc_set_ICR"
	.byte	0x6
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x45b
	.uleb128 0x12
	.string	"icr"
	.byte	0x6
	.uahalf	0x242
	.uaword	0x38f
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_get_ICR"
	.byte	0x6
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x38f
	.byte	0x3
	.uaword	0x484
	.uleb128 0x14
	.string	"icr"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x38f
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_disableIRQ"
	.byte	0x6
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_tc_resumeIRQ"
	.byte	0x6
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x4d0
	.uleb128 0x12
	.string	"flags"
	.byte	0x6
	.uahalf	0x37d
	.uaword	0x1f9
	.uleb128 0x14
	.string	"icr"
	.byte	0x6
	.uahalf	0x37f
	.uaword	0x38f
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_suspendIRQ"
	.byte	0x6
	.uahalf	0x384
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uaword	0x4fc
	.uleb128 0x14
	.string	"icr"
	.byte	0x6
	.uahalf	0x386
	.uaword	0x38f
	.byte	0
	.uleb128 0x15
	.string	"EE_hal_suspendIRQ"
	.byte	0x6
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_resumeIRQ"
	.byte	0x6
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x542
	.uleb128 0x12
	.string	"flags"
	.byte	0x6
	.uahalf	0x3ed
	.uaword	0x1f9
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x2
	.byte	0x3b
	.byte	0x1
	.uaword	0x1ea
	.byte	0x3
	.uleb128 0x16
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x8
	.byte	0x6c
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uleb128 0xe
	.string	"EE_hal_end_nested_primitive"
	.byte	0x8
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x5c2
	.uleb128 0xf
	.string	"flags"
	.byte	0x8
	.byte	0x73
	.uaword	0x1f9
	.byte	0
	.uleb128 0x16
	.string	"EE_stk_queryfirst"
	.byte	0x4
	.byte	0x43
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uleb128 0x17
	.byte	0x1
	.string	"EE_oo_TerminateTask"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x39e
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x864
	.uleb128 0xc
	.string	"np_flags"
	.byte	0x1
	.byte	0x3f
	.uaword	0x1f9
	.uleb128 0x18
	.uaword	0x542
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0x46
	.uleb128 0x19
	.uaword	0x568
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0x4a
	.uaword	0x6de
	.uleb128 0x1a
	.uaword	0x4fc
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x8
	.byte	0x6e
	.uleb128 0x1b
	.uaword	0x4d0
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x6
	.uahalf	0x3f4
	.uleb128 0x1c
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x1d
	.uaword	0x4ef
	.uleb128 0x1e
	.uaword	0x45b
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x6
	.uahalf	0x386
	.uaword	0x6b9
	.uleb128 0x1c
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x1d
	.uaword	0x477
	.uleb128 0x1b
	.uaword	0x3bd
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x6
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x3d0
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	.LBB117
	.uaword	.LBE117
	.uleb128 0x20
	.uaword	0x3db
	.uaword	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x484
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x6
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x428
	.uaword	.LBB119
	.uaword	.LBE119
	.byte	0x6
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x58f
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x1
	.byte	0x4c
	.uaword	0x79b
	.uleb128 0x1f
	.uaword	0x5b4
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	0x518
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x8
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x533
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	0x49b
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x6
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4b5
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	.LBB124
	.uaword	.LBE124
	.uleb128 0x1d
	.uaword	0x4c3
	.uleb128 0x1b
	.uaword	0x436
	.uaword	.LBB125
	.uaword	.LBE125
	.byte	0x6
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x44e
	.uleb128 0x1e
	.uaword	0x3ee
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x6
	.uahalf	0x244
	.uaword	0x775
	.uleb128 0x1f
	.uaword	0x408
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	0x3fd
	.uaword	.LLST6
	.byte	0
	.uleb128 0x1b
	.uaword	0x416
	.uaword	.LBB128
	.uaword	.LBE128
	.byte	0x6
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3b1
	.uaword	.LBB129
	.uaword	.LBE129
	.byte	0x6
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x568
	.uaword	.LBB131
	.uaword	.LBE131
	.byte	0x1
	.byte	0x64
	.uaword	0x84b
	.uleb128 0x1a
	.uaword	0x4fc
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x8
	.byte	0x6e
	.uleb128 0x1b
	.uaword	0x4d0
	.uaword	.LBB133
	.uaword	.LBE133
	.byte	0x6
	.uahalf	0x3f4
	.uleb128 0x1c
	.uaword	.LBB134
	.uaword	.LBE134
	.uleb128 0x1d
	.uaword	0x4ef
	.uleb128 0x1e
	.uaword	0x45b
	.uaword	.LBB135
	.uaword	.LBE135
	.byte	0x6
	.uahalf	0x386
	.uaword	0x826
	.uleb128 0x1c
	.uaword	.LBB136
	.uaword	.LBE136
	.uleb128 0x1d
	.uaword	0x477
	.uleb128 0x1b
	.uaword	0x3bd
	.uaword	.LBB137
	.uaword	.LBE137
	.byte	0x6
	.uahalf	0x23e
	.uleb128 0x23
	.uaword	0x3d0
	.uahalf	0xfe2c
	.uleb128 0x1c
	.uaword	.LBB138
	.uaword	.LBE138
	.uleb128 0x1d
	.uaword	0x3db
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x484
	.uaword	.LBB139
	.uaword	.LBE139
	.byte	0x6
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x428
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x6
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x5c2
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.byte	0x67
	.uleb128 0x24
	.uaword	.LVL5
	.uaword	0xa44
	.byte	0
	.uleb128 0x25
	.uaword	0x1ea
	.uaword	0x86f
	.uleb128 0x26
	.byte	0
	.uleb128 0x27
	.string	"EE_std_thread_tos"
	.byte	0x9
	.byte	0x5d
	.uaword	0x88a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x864
	.uleb128 0x27
	.string	"EE_IRQ_nesting_level"
	.byte	0x2
	.byte	0x39
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_tc_active_tos"
	.byte	0x8
	.byte	0xbe
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_std_endcycle_next_tid"
	.byte	0xa
	.byte	0x41
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_th_status"
	.byte	0x7
	.byte	0xa6
	.uaword	0x864
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0x208
	.uaword	0x90a
	.uleb128 0x26
	.byte	0
	.uleb128 0x27
	.string	"EE_th_next"
	.byte	0x7
	.byte	0xae
	.uaword	0x8ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_th_ready_prio"
	.byte	0x7
	.byte	0xb1
	.uaword	0x938
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x864
	.uleb128 0x27
	.string	"EE_th_dispatch_prio"
	.byte	0x7
	.byte	0xb2
	.uaword	0x95a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x864
	.uleb128 0x27
	.string	"EE_th_terminate_nextask"
	.byte	0x7
	.byte	0xc3
	.uaword	0x8ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_stkfirst"
	.byte	0x7
	.byte	0xc7
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_sys_ceiling"
	.byte	0x7
	.byte	0xca
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_th_event_active"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x864
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_th_waswaiting"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x864
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x4
	.byte	0x33
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x4
	.byte	0x3a
	.uaword	0x1f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"EE_ApplicationMode"
	.byte	0x4
	.byte	0x3d
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.byte	0x1
	.string	"EE_hal_terminate_task"
	.byte	0x8
	.byte	0xf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x208
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
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
	.uleb128 0x8
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uaword	.LVL3-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
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
.LASF0:
	.string	"__regaddr"
	.extern	EE_hal_terminate_task,STT_FUNC,0
	.extern	EE_th_terminate_nextask,STT_OBJECT,-1
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
