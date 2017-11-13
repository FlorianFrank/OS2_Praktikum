	.file	"ee_gettaskstate.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_GetTaskState
	.type	EE_oo_GetTaskState, @function
EE_oo_GetTaskState:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_gettaskstate.c"
	.loc 1 56 0
.LVL0:
.LBB138:
.LBB139:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE139:
.LBE138:
	.loc 1 68 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB140:
.LBB141:
.LBB142:
.LBB143:
.LBB144:
.LBB145:
.LBB146:
.LBB147:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE147:
.LBE146:
.LBE145:
.LBE144:
.LBB148:
.LBB149:
.LBB150:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE150:
.LBE149:
.LBE148:
.LBE143:
.LBE142:
.LBE141:
.LBE140:
.LBB151:
.LBB152:
.LBB153:
.LBB154:
.LBB155:
.LBB156:
.LBB157:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE157:
.LBE156:
.LBB158:
.LBB159:
.LBB160:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE160:
.LBE159:
.LBE158:
.LBE155:
.LBE154:
.LBE153:
.LBE152:
.LBE151:
	.loc 1 77 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 81 0
	jlt.u	%d4, 14, .L4
.LVL5:
.LBB161:
.LBB162:
.LBB163:
.LBB164:
.LBB165:
.LBB166:
.LBB167:
.LBB168:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE168:
.LBE167:
.LBE166:
.LBE165:
.LBB169:
.LBB170:
.LBB171:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE171:
.LBE170:
.LBE169:
.LBE164:
.LBE163:
.LBE162:
.LBE161:
.LBB172:
.LBB173:
.LBB174:
.LBB175:
.LBB176:
.LBB177:
.LBB178:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE178:
.LBE177:
.LBB179:
.LBB180:
.LBB181:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE181:
.LBE180:
.LBE179:
.LBE176:
.LBE175:
.LBE174:
.LBE173:
.LBE172:
	.loc 1 89 0
	mov	%d2, 3
	ret
.LVL8:
.L4:
.LBB182:
.LBB183:
.LBB184:
.LBB185:
.LBB186:
.LBB187:
.LBB188:
.LBB189:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL9:
#NO_APP
.LBE189:
.LBE188:
.LBE187:
.LBE186:
.LBB190:
.LBB191:
.LBB192:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE192:
.LBE191:
.LBE190:
.LBE185:
.LBE184:
.LBE183:
.LBE182:
	.loc 1 108 0
	mov	%d2, 15
	.loc 1 94 0
	jz.a	%a4, .L5
.LVL10:
	.loc 1 95 0
	movh.a	%a15, hi:EE_th_status
	lea	%a15, [%a15] lo:EE_th_status
	addsc.a	%a15, %a15, %d4, 2
	ld.w	%d2, [%a15]0
	st.w	[%a4]0, %d2
.LVL11:
	.loc 1 96 0
	mov	%d2, 0
.LVL12:
.L5:
.LBB193:
.LBB194:
.LBB195:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE199:
.LBE198:
.LBB200:
.LBB201:
.LBB202:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE202:
.LBE201:
.LBE200:
.LBE197:
.LBE196:
.LBE195:
.LBE194:
.LBE193:
	.loc 1 115 0
	ret
.LFE92:
	.size	EE_oo_GetTaskState, .-EE_oo_GetTaskState
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
	.file 4 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 5 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 6 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 9 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 10 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.file 11 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xcac
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_gettaskstate.c"
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
	.byte	0x4
	.byte	0x4b
	.uaword	0x1c6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1de
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x5
	.byte	0x7b
	.uaword	0x1cd
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x5
	.byte	0x7c
	.uaword	0x1b6
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x5
	.byte	0x7d
	.uaword	0x1cd
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x5
	.byte	0x80
	.uaword	0x1b6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.uahalf	0x134
	.uaword	0x37f
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x1ee
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x5
	.uahalf	0x136
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x5
	.uahalf	0x137
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x5
	.uahalf	0x138
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x5
	.uahalf	0x139
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x5
	.uahalf	0x13c
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x1ee
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x5
	.uahalf	0x13f
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x5
	.uahalf	0x140
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x5
	.uahalf	0x142
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x5
	.uahalf	0x146
	.uaword	0x1ee
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.uahalf	0x133
	.uaword	0x3a2
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x229
	.uleb128 0x7
	.string	"reg"
	.byte	0x5
	.uahalf	0x148
	.uaword	0x1ee
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x5
	.uahalf	0x149
	.uaword	0x37f
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x173
	.uleb128 0x8
	.string	"TaskType"
	.byte	0x6
	.uahalf	0x2bb
	.uaword	0x21b
	.uleb128 0x8
	.string	"TaskStateRefType"
	.byte	0x6
	.uahalf	0x2c4
	.uaword	0x3ee
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1ee
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
	.uaword	0x1de
	.byte	0x3
	.uaword	0x42c
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x42c
	.uleb128 0xd
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1de
	.byte	0
	.uleb128 0xe
	.uaword	0x1de
	.uleb128 0xf
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x459
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x42c
	.uleb128 0x10
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x42c
	.byte	0
	.uleb128 0x11
	.string	"EE_tc_isync"
	.byte	0x5
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
	.byte	0x5
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x49e
	.uleb128 0x13
	.string	"icr"
	.byte	0x5
	.uahalf	0x242
	.uaword	0x3a2
	.byte	0
	.uleb128 0x14
	.string	"EE_tc_get_ICR"
	.byte	0x5
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3a2
	.byte	0x3
	.uaword	0x4c7
	.uleb128 0x15
	.string	"icr"
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x3a2
	.byte	0
	.uleb128 0x11
	.string	"EE_tc_disableIRQ"
	.byte	0x5
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"EE_tc_resumeIRQ"
	.byte	0x5
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x513
	.uleb128 0x13
	.string	"flags"
	.byte	0x5
	.uahalf	0x37d
	.uaword	0x20c
	.uleb128 0x15
	.string	"icr"
	.byte	0x5
	.uahalf	0x37f
	.uaword	0x3a2
	.byte	0
	.uleb128 0x14
	.string	"EE_tc_suspendIRQ"
	.byte	0x5
	.uahalf	0x384
	.byte	0x1
	.uaword	0x20c
	.byte	0x3
	.uaword	0x53f
	.uleb128 0x15
	.string	"icr"
	.byte	0x5
	.uahalf	0x386
	.uaword	0x3a2
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_suspendIRQ"
	.byte	0x5
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x20c
	.byte	0x3
	.uleb128 0x12
	.string	"EE_hal_resumeIRQ"
	.byte	0x5
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x585
	.uleb128 0x13
	.string	"flags"
	.byte	0x5
	.uahalf	0x3ed
	.uaword	0x20c
	.byte	0
	.uleb128 0xb
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x1fd
	.byte	0x3
	.uaword	0x5c3
	.uleb128 0xd
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x1fd
	.byte	0
	.uleb128 0x17
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x7
	.byte	0x6c
	.byte	0x1
	.uaword	0x20c
	.byte	0x3
	.uleb128 0xf
	.string	"EE_hal_end_nested_primitive"
	.byte	0x7
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x61d
	.uleb128 0x10
	.string	"flags"
	.byte	0x7
	.byte	0x73
	.uaword	0x20c
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"EE_oo_GetTaskState"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x3b1
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaf0
	.uleb128 0x19
	.string	"TaskID"
	.byte	0x1
	.byte	0x37
	.uaword	0x3c4
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.string	"State"
	.byte	0x1
	.byte	0x37
	.uaword	0x3d5
	.byte	0x1
	.byte	0x64
	.uleb128 0xd
	.string	"flag"
	.byte	0x1
	.byte	0x39
	.uaword	0x20c
	.uleb128 0x1a
	.string	"retVal"
	.byte	0x1
	.byte	0x3a
	.uaword	0x3b1
	.uaword	.LLST0
	.uleb128 0x1b
	.uaword	0x585
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.byte	0x44
	.uaword	0x6a8
	.uleb128 0x1c
	.uaword	.LBB139
	.uaword	.LBE139
	.uleb128 0x1d
	.uaword	0x5af
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x5c3
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.byte	0x47
	.uaword	0x75e
	.uleb128 0x1e
	.uaword	0x53f
	.uaword	.LBB141
	.uaword	.LBE141
	.byte	0x7
	.byte	0x6e
	.uleb128 0x1f
	.uaword	0x513
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1c
	.uaword	.LBB143
	.uaword	.LBE143
	.uleb128 0x1d
	.uaword	0x532
	.uleb128 0x20
	.uaword	0x49e
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x5
	.uahalf	0x386
	.uaword	0x739
	.uleb128 0x1c
	.uaword	.LBB145
	.uaword	.LBE145
	.uleb128 0x1d
	.uaword	0x4ba
	.uleb128 0x1f
	.uaword	0x400
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x21
	.uaword	0x413
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	.LBB147
	.uaword	.LBE147
	.uleb128 0x22
	.uaword	0x41e
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x4c7
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x23
	.uaword	0x46b
	.uaword	.LBB149
	.uaword	.LBE149
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x5ea
	.uaword	.LBB151
	.uaword	.LBE151
	.byte	0x1
	.byte	0x49
	.uaword	0x81b
	.uleb128 0x21
	.uaword	0x60f
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x55b
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x7
	.byte	0x75
	.uleb128 0x21
	.uaword	0x576
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	0x4de
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x21
	.uaword	0x4f8
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	.LBB154
	.uaword	.LBE154
	.uleb128 0x1d
	.uaword	0x506
	.uleb128 0x1f
	.uaword	0x479
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x24
	.uaword	0x491
	.uleb128 0x20
	.uaword	0x431
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x5
	.uahalf	0x244
	.uaword	0x7f5
	.uleb128 0x21
	.uaword	0x44b
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	0x440
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1f
	.uaword	0x459
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x23
	.uaword	0x3f4
	.uaword	.LBB159
	.uaword	.LBE159
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x5c3
	.uaword	.LBB161
	.uaword	.LBE161
	.byte	0x1
	.byte	0x54
	.uaword	0x8d1
	.uleb128 0x1e
	.uaword	0x53f
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x7
	.byte	0x6e
	.uleb128 0x1f
	.uaword	0x513
	.uaword	.LBB163
	.uaword	.LBE163
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1c
	.uaword	.LBB164
	.uaword	.LBE164
	.uleb128 0x1d
	.uaword	0x532
	.uleb128 0x20
	.uaword	0x49e
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x5
	.uahalf	0x386
	.uaword	0x8ac
	.uleb128 0x1c
	.uaword	.LBB166
	.uaword	.LBE166
	.uleb128 0x1d
	.uaword	0x4ba
	.uleb128 0x1f
	.uaword	0x400
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x21
	.uaword	0x413
	.uaword	.LLST8
	.uleb128 0x1c
	.uaword	.LBB168
	.uaword	.LBE168
	.uleb128 0x22
	.uaword	0x41e
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x4c7
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x23
	.uaword	0x46b
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x5ea
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.byte	0x56
	.uaword	0x98e
	.uleb128 0x21
	.uaword	0x60f
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x55b
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x7
	.byte	0x75
	.uleb128 0x21
	.uaword	0x576
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	0x4de
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x21
	.uaword	0x4f8
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	.LBB175
	.uaword	.LBE175
	.uleb128 0x1d
	.uaword	0x506
	.uleb128 0x1f
	.uaword	0x479
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x24
	.uaword	0x491
	.uleb128 0x20
	.uaword	0x431
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x5
	.uahalf	0x244
	.uaword	0x968
	.uleb128 0x21
	.uaword	0x44b
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	0x440
	.uaword	.LLST14
	.byte	0
	.uleb128 0x1f
	.uaword	0x459
	.uaword	.LBB179
	.uaword	.LBE179
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x23
	.uaword	0x3f4
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x5c3
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.byte	0x5d
	.uaword	0xa40
	.uleb128 0x1e
	.uaword	0x53f
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x7
	.byte	0x6e
	.uleb128 0x1f
	.uaword	0x513
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1c
	.uaword	.LBB185
	.uaword	.LBE185
	.uleb128 0x1d
	.uaword	0x532
	.uleb128 0x20
	.uaword	0x49e
	.uaword	.LBB186
	.uaword	.LBE186
	.byte	0x5
	.uahalf	0x386
	.uaword	0xa1b
	.uleb128 0x1c
	.uaword	.LBB187
	.uaword	.LBE187
	.uleb128 0x1d
	.uaword	0x4ba
	.uleb128 0x1f
	.uaword	0x400
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x25
	.uaword	0x413
	.uahalf	0xfe2c
	.uleb128 0x1c
	.uaword	.LBB189
	.uaword	.LBE189
	.uleb128 0x26
	.uaword	0x41e
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x4c7
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x23
	.uaword	0x46b
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x5ea
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x6f
	.uleb128 0x27
	.uaword	0x60f
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.uaword	0x55b
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x7
	.byte	0x75
	.uleb128 0x27
	.uaword	0x576
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.uaword	0x4de
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x27
	.uaword	0x4f8
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.uaword	.LBB196
	.uaword	.LBE196
	.uleb128 0x1d
	.uaword	0x506
	.uleb128 0x1f
	.uaword	0x479
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x24
	.uaword	0x491
	.uleb128 0x20
	.uaword	0x431
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x5
	.uahalf	0x244
	.uaword	0xac9
	.uleb128 0x27
	.uaword	0x44b
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.uaword	0x440
	.uahalf	0xfe2c
	.byte	0
	.uleb128 0x1f
	.uaword	0x459
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x23
	.uaword	0x3f4
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x1ee
	.uaword	0xafb
	.uleb128 0x29
	.byte	0
	.uleb128 0x2a
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0xb16
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xaf0
	.uleb128 0x2a
	.string	"EE_IRQ_nesting_level"
	.byte	0x9
	.byte	0x39
	.uaword	0x1ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x1ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_std_endcycle_next_tid"
	.byte	0xa
	.byte	0x41
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_status"
	.byte	0x6
	.byte	0xa6
	.uaword	0xaf0
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.uaword	0x21b
	.uaword	0xb96
	.uleb128 0x29
	.byte	0
	.uleb128 0x2a
	.string	"EE_th_next"
	.byte	0x6
	.byte	0xae
	.uaword	0xb8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_ready_prio"
	.byte	0x6
	.byte	0xb1
	.uaword	0xbc4
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xaf0
	.uleb128 0x2a
	.string	"EE_th_dispatch_prio"
	.byte	0x6
	.byte	0xb2
	.uaword	0xbe6
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xaf0
	.uleb128 0x2a
	.string	"EE_stkfirst"
	.byte	0x6
	.byte	0xc7
	.uaword	0x21b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_sys_ceiling"
	.byte	0x6
	.byte	0xca
	.uaword	0x1ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_event_active"
	.byte	0x6
	.uahalf	0x111
	.uaword	0xaf0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_waswaiting"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xaf0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xb
	.byte	0x33
	.uaword	0x1ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xb
	.byte	0x3a
	.uaword	0x20c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_ApplicationMode"
	.byte	0xb
	.byte	0x3d
	.uaword	0x1ee
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x52
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
.LLST8:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
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
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
