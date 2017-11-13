	.file	"ee_gettaskid.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_GetTaskID
	.type	EE_oo_GetTaskID, @function
EE_oo_GetTaskID:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_gettaskid.c"
	.loc 1 57 0
.LVL0:
.LBB117:
.LBB118:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE118:
.LBE117:
	.loc 1 68 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB119:
.LBB120:
.LBB121:
.LBB122:
.LBB123:
.LBB124:
.LBB125:
.LBB126:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE126:
.LBE125:
.LBE124:
.LBE123:
.LBB127:
.LBB128:
.LBB129:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE129:
.LBE128:
.LBE127:
.LBE122:
.LBE121:
.LBE120:
.LBE119:
.LBB130:
.LBB131:
.LBB132:
.LBB133:
.LBB134:
.LBB135:
.LBB136:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE136:
.LBE135:
.LBB137:
.LBB138:
.LBB139:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE139:
.LBE138:
.LBE137:
.LBE134:
.LBE133:
.LBE132:
.LBE131:
.LBE130:
	.loc 1 77 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 80 0
	jz.a	%a4, .L4
.LVL5:
.LBB140:
.LBB141:
	.file 4 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 4 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d15, [%a15] lo:EE_stkfirst
	st.w	[%a4]0, %d15
.LVL6:
.LBE141:
.LBE140:
	.loc 1 82 0
	mov	%d2, 0
	ret
.LVL7:
.L4:
.LBB142:
.LBB143:
.LBB144:
.LBB145:
.LBB146:
.LBB147:
.LBB148:
.LBB149:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL8:
#NO_APP
.LBE149:
.LBE148:
.LBE147:
.LBE146:
.LBB150:
.LBB151:
.LBB152:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL9:
#NO_APP
.LBE152:
.LBE151:
.LBE150:
.LBE145:
.LBE144:
.LBE143:
.LBE142:
.LBB153:
.LBB154:
.LBB155:
.LBB156:
.LBB157:
.LBB158:
.LBB159:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE159:
.LBE158:
.LBB160:
.LBB161:
.LBB162:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL10:
#NO_APP
.LBE162:
.LBE161:
.LBE160:
.LBE157:
.LBE156:
.LBE155:
.LBE154:
.LBE153:
	.loc 1 95 0
	mov	%d2, 15
	.loc 1 99 0
	ret
.LFE92:
	.size	EE_oo_GetTaskID, .-EE_oo_GetTaskID
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
	.file 10 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 11 "./0_Src/OS/cpu/common/inc/ee_context.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb38
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_gettaskid.c"
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
	.uaword	0x1c3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x5
	.byte	0x4c
	.uaword	0x1db
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x6
	.byte	0x7b
	.uaword	0x1ca
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x6
	.byte	0x7c
	.uaword	0x1b3
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x6
	.byte	0x7d
	.uaword	0x1ca
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x6
	.byte	0x80
	.uaword	0x1b3
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.uahalf	0x134
	.uaword	0x37c
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x1eb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x6
	.uahalf	0x139
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x1eb
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x6
	.uahalf	0x141
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x6
	.uahalf	0x142
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1eb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.uahalf	0x133
	.uaword	0x39f
	.uleb128 0x7
	.string	"bits"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x226
	.uleb128 0x7
	.string	"reg"
	.byte	0x6
	.uahalf	0x148
	.uaword	0x1eb
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x37c
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x170
	.uleb128 0x8
	.string	"TaskRefType"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x3d5
	.uleb128 0x9
	.byte	0x4
	.uaword	0x218
	.uleb128 0xa
	.string	"_isync"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xb
	.string	"_mfcr"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x1db
	.byte	0x3
	.uaword	0x413
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x413
	.uleb128 0xd
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1db
	.byte	0
	.uleb128 0xe
	.uaword	0x1db
	.uleb128 0xf
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x440
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x413
	.uleb128 0x10
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x413
	.byte	0
	.uleb128 0x11
	.string	"EE_tc_isync"
	.byte	0x6
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0xa
	.string	"_disable"
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"EE_tc_set_ICR"
	.byte	0x6
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x485
	.uleb128 0x13
	.string	"icr"
	.byte	0x6
	.uahalf	0x242
	.uaword	0x39f
	.byte	0
	.uleb128 0x14
	.string	"EE_tc_get_ICR"
	.byte	0x6
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x39f
	.byte	0x3
	.uaword	0x4ae
	.uleb128 0x15
	.string	"icr"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x39f
	.byte	0
	.uleb128 0x11
	.string	"EE_tc_disableIRQ"
	.byte	0x6
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"EE_tc_resumeIRQ"
	.byte	0x6
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x4fa
	.uleb128 0x13
	.string	"flags"
	.byte	0x6
	.uahalf	0x37d
	.uaword	0x209
	.uleb128 0x15
	.string	"icr"
	.byte	0x6
	.uahalf	0x37f
	.uaword	0x39f
	.byte	0
	.uleb128 0x14
	.string	"EE_tc_suspendIRQ"
	.byte	0x6
	.uahalf	0x384
	.byte	0x1
	.uaword	0x209
	.byte	0x3
	.uaword	0x526
	.uleb128 0x15
	.string	"icr"
	.byte	0x6
	.uahalf	0x386
	.uaword	0x39f
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_suspendIRQ"
	.byte	0x6
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x209
	.byte	0x3
	.uleb128 0x12
	.string	"EE_hal_resumeIRQ"
	.byte	0x6
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x56c
	.uleb128 0x13
	.string	"flags"
	.byte	0x6
	.uahalf	0x3ed
	.uaword	0x209
	.byte	0
	.uleb128 0xb
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x1fa
	.byte	0x3
	.uaword	0x5aa
	.uleb128 0xd
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x1fa
	.byte	0
	.uleb128 0x17
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x8
	.byte	0x6c
	.byte	0x1
	.uaword	0x209
	.byte	0x3
	.uleb128 0xf
	.string	"EE_hal_end_nested_primitive"
	.byte	0x8
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x604
	.uleb128 0x10
	.string	"flags"
	.byte	0x8
	.byte	0x73
	.uaword	0x209
	.byte	0
	.uleb128 0x17
	.string	"EE_stk_queryfirst"
	.byte	0x4
	.byte	0x43
	.byte	0x1
	.uaword	0x218
	.byte	0x3
	.uleb128 0x18
	.byte	0x1
	.string	"EE_oo_GetTaskID"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	0x3ae
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x97c
	.uleb128 0x19
	.string	"TaskID"
	.byte	0x1
	.byte	0x38
	.uaword	0x3c1
	.byte	0x1
	.byte	0x64
	.uleb128 0x1a
	.string	"retVal"
	.byte	0x1
	.byte	0x3a
	.uaword	0x3ae
	.uaword	.LLST0
	.uleb128 0xd
	.string	"flag"
	.byte	0x1
	.byte	0x3b
	.uaword	0x209
	.uleb128 0x1b
	.uaword	0x56c
	.uaword	.LBB117
	.uaword	.LBE117
	.byte	0x1
	.byte	0x44
	.uaword	0x698
	.uleb128 0x1c
	.uaword	.LBB118
	.uaword	.LBE118
	.uleb128 0x1d
	.uaword	0x596
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x5aa
	.uaword	.LBB119
	.uaword	.LBE119
	.byte	0x1
	.byte	0x47
	.uaword	0x74e
	.uleb128 0x1e
	.uaword	0x526
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x8
	.byte	0x6e
	.uleb128 0x1f
	.uaword	0x4fa
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x6
	.uahalf	0x3f4
	.uleb128 0x1c
	.uaword	.LBB122
	.uaword	.LBE122
	.uleb128 0x1d
	.uaword	0x519
	.uleb128 0x20
	.uaword	0x485
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x6
	.uahalf	0x386
	.uaword	0x729
	.uleb128 0x1c
	.uaword	.LBB124
	.uaword	.LBE124
	.uleb128 0x1d
	.uaword	0x4a1
	.uleb128 0x1f
	.uaword	0x3e7
	.uaword	.LBB125
	.uaword	.LBE125
	.byte	0x6
	.uahalf	0x23e
	.uleb128 0x21
	.uaword	0x3fa
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	.LBB126
	.uaword	.LBE126
	.uleb128 0x22
	.uaword	0x405
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x4ae
	.uaword	.LBB127
	.uaword	.LBE127
	.byte	0x6
	.uahalf	0x387
	.uleb128 0x23
	.uaword	0x452
	.uaword	.LBB128
	.uaword	.LBE128
	.byte	0x6
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x5d1
	.uaword	.LBB130
	.uaword	.LBE130
	.byte	0x1
	.byte	0x49
	.uaword	0x80b
	.uleb128 0x21
	.uaword	0x5f6
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x542
	.uaword	.LBB131
	.uaword	.LBE131
	.byte	0x8
	.byte	0x75
	.uleb128 0x21
	.uaword	0x55d
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	0x4c5
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x6
	.uahalf	0x3ef
	.uleb128 0x21
	.uaword	0x4df
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	.LBB133
	.uaword	.LBE133
	.uleb128 0x1d
	.uaword	0x4ed
	.uleb128 0x1f
	.uaword	0x460
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x6
	.uahalf	0x381
	.uleb128 0x24
	.uaword	0x478
	.uleb128 0x20
	.uaword	0x418
	.uaword	.LBB135
	.uaword	.LBE135
	.byte	0x6
	.uahalf	0x244
	.uaword	0x7e5
	.uleb128 0x21
	.uaword	0x432
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	0x427
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1f
	.uaword	0x440
	.uaword	.LBB137
	.uaword	.LBE137
	.byte	0x6
	.uahalf	0x248
	.uleb128 0x23
	.uaword	0x3db
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x6
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x604
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.uaword	0x5aa
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.byte	0x5b
	.uaword	0x8cc
	.uleb128 0x1e
	.uaword	0x526
	.uaword	.LBB143
	.uaword	.LBE143
	.byte	0x8
	.byte	0x6e
	.uleb128 0x1f
	.uaword	0x4fa
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x6
	.uahalf	0x3f4
	.uleb128 0x1c
	.uaword	.LBB145
	.uaword	.LBE145
	.uleb128 0x1d
	.uaword	0x519
	.uleb128 0x20
	.uaword	0x485
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x6
	.uahalf	0x386
	.uaword	0x8a7
	.uleb128 0x1c
	.uaword	.LBB147
	.uaword	.LBE147
	.uleb128 0x1d
	.uaword	0x4a1
	.uleb128 0x1f
	.uaword	0x3e7
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x6
	.uahalf	0x23e
	.uleb128 0x26
	.uaword	0x3fa
	.uahalf	0xfe2c
	.uleb128 0x1c
	.uaword	.LBB149
	.uaword	.LBE149
	.uleb128 0x27
	.uaword	0x405
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x4ae
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x6
	.uahalf	0x387
	.uleb128 0x23
	.uaword	0x452
	.uaword	.LBB151
	.uaword	.LBE151
	.byte	0x6
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x5d1
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.uaword	0x5f6
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.uaword	0x542
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x8
	.byte	0x75
	.uleb128 0x28
	.uaword	0x55d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.uaword	0x4c5
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x6
	.uahalf	0x3ef
	.uleb128 0x28
	.uaword	0x4df
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.uaword	.LBB156
	.uaword	.LBE156
	.uleb128 0x1d
	.uaword	0x4ed
	.uleb128 0x1f
	.uaword	0x460
	.uaword	.LBB157
	.uaword	.LBE157
	.byte	0x6
	.uahalf	0x381
	.uleb128 0x24
	.uaword	0x478
	.uleb128 0x20
	.uaword	0x418
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x6
	.uahalf	0x244
	.uaword	0x955
	.uleb128 0x28
	.uaword	0x432
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.uaword	0x427
	.uahalf	0xfe2c
	.byte	0
	.uleb128 0x1f
	.uaword	0x440
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x6
	.uahalf	0x248
	.uleb128 0x23
	.uaword	0x3db
	.uaword	.LBB161
	.uaword	.LBE161
	.byte	0x6
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x1eb
	.uaword	0x987
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_std_thread_tos"
	.byte	0x9
	.byte	0x5d
	.uaword	0x9a2
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x97c
	.uleb128 0x2b
	.string	"EE_IRQ_nesting_level"
	.byte	0xa
	.byte	0x39
	.uaword	0x1eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_tc_active_tos"
	.byte	0x8
	.byte	0xbe
	.uaword	0x1eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_std_endcycle_next_tid"
	.byte	0xb
	.byte	0x41
	.uaword	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_status"
	.byte	0x7
	.byte	0xa6
	.uaword	0x97c
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x218
	.uaword	0xa22
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_th_next"
	.byte	0x7
	.byte	0xae
	.uaword	0xa17
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_ready_prio"
	.byte	0x7
	.byte	0xb1
	.uaword	0xa50
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x97c
	.uleb128 0x2b
	.string	"EE_th_dispatch_prio"
	.byte	0x7
	.byte	0xb2
	.uaword	0xa72
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x97c
	.uleb128 0x2b
	.string	"EE_stkfirst"
	.byte	0x7
	.byte	0xc7
	.uaword	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_sys_ceiling"
	.byte	0x7
	.byte	0xca
	.uaword	0x1eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_event_active"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x97c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_waswaiting"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x97c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x4
	.byte	0x33
	.uaword	0x1eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x4
	.byte	0x3a
	.uaword	0x209
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_ApplicationMode"
	.byte	0x4
	.byte	0x3d
	.uaword	0x1eb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
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
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
