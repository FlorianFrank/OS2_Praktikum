	.file	"ee_tc_oo.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	EE_tc_dummy_context, @function
EE_tc_dummy_context:
.LFB93:
	.file 1 "0_Src/OS/cpu/tricore/src/ee_tc_oo.c"
	.loc 1 112 0
.LVL0:
.LBB68:
	.loc 1 114 0
#APP
	# 114 "0_Src/OS/cpu/tricore/src/ee_tc_oo.c" 1
	mfcr %d15, LO:0xFE00
	# 0 "" 2
.LVL1:
#NO_APP
.LBE68:
	movh.a	%a15, hi:EE_terminate_data
	sh	%d4, 2
.LVL2:
	lea	%a15, [%a15] lo:EE_terminate_data
	addsc.a	%a15, %a15, %d4, 0
	st.w	[%a15]0, %d15
	.loc 1 117 0
	movh.a	%a15, hi:EE_terminate_real_th_body
	lea	%a15, [%a15] lo:EE_terminate_real_th_body
	addsc.a	%a15, %a15, %d4, 0
	ld.a	%a15, [%a15]0
	calli	%a15
.LVL3:
	.loc 1 128 0
	j	EE_thread_not_terminated
.LVL4:
.LFE93:
	.size	EE_tc_dummy_context, .-EE_tc_dummy_context
	.align 1
	.global	EE_hal_terminate_task
	.type	EE_hal_terminate_task, @function
EE_hal_terminate_task:
.LFB92:
	.loc 1 64 0
.LVL5:
.LBB69:
.LBB70:
.LBB71:
	.file 2 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.loc 2 943 0
#APP
	# 943 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mfcr %d6, LO:0xFE38
	# 0 "" 2
.LVL6:
#NO_APP
.LBE71:
.LBE70:
.LBE69:
.LBB72:
.LBB73:
.LBB74:
	.loc 2 957 0
#APP
	# 957 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mfcr %d5, LO:0xFE00
	# 0 "" 2
.LVL7:
#NO_APP
.LBE74:
.LBE73:
.LBE72:
.LBB75:
.LBB76:
.LBB77:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 190 0
#APP
	# 190 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE77:
.LBE76:
.LBE75:
	.loc 1 83 0
	movh.a	%a15, hi:EE_terminate_data
	lea	%a15, [%a15] lo:EE_terminate_data
	addsc.a	%a15, %a15, %d4, 2
	ld.w	%d15, [%a15]0
.LVL8:
.LBB78:
.LBB79:
	.loc 2 935 0
	extr.u	%d2, %d15, 0, 16
	.loc 2 934 0
	extr.u	%d3, %d15, 16, 4
	.loc 2 935 0
	sh	%d2, 6
	.loc 2 934 0
	sh	%d3, %d3, 28
	or	%d3, %d2
	mov.a	%a15, %d3
.LVL9:
.LBE79:
.LBE78:
	.loc 1 86 0
	jz.a	%a15, .L2
	.loc 1 87 0
	ld.w	%d3, [%a15]0
.LVL10:
	.loc 1 88 0
	ld.a	%a15, [%a15] 12
.LVL11:
	.loc 1 91 0
.LVL12:
.LBB80:
.LBB81:
.LBB82:
	.loc 2 669 0
#APP
	# 669 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mtcr LO:0xFE00, %d3
	# 0 "" 2
#NO_APP
.LBE82:
.LBB83:
.LBB84:
.LBB85:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL13:
#NO_APP
.LBE85:
.LBE84:
.LBE83:
.LBE81:
.LBE80:
.LBB86:
.LBB87:
.LBB88:
.LBB89:
	.loc 2 934 0
	extr.u	%d15, %d15, 16, 4
.LVL14:
	sh	%d15, %d15, 28
.LVL15:
	or	%d2, %d15
.LVL16:
.LBE89:
.LBE88:
	.loc 2 983 0
	jz	%d2, .L4
	.loc 2 984 0
	mov.a	%a2, %d2
	st.w	[%a2]0, %d6
.LVL17:
.L4:
.LBE87:
.LBE86:
.LBB90:
.LBB91:
.LBB92:
	.loc 2 680 0
#APP
	# 680 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mtcr LO:0xFE38, %d5
	# 0 "" 2
#NO_APP
.LBE92:
.LBB93:
.LBB94:
.LBB95:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL18:
#NO_APP
.LBE95:
.LBE94:
.LBE93:
.LBE91:
.LBE90:
.LBB96:
.LBB97:
	.loc 2 625 0
#APP
	# 625 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
	mov.aa %a11, %a15
	# 0 "" 2
#NO_APP
.LBE97:
.LBE96:
.LBB98:
.LBB99:
.LBB100:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
.LVL19:
#NO_APP
.L2:
	ret
.LBE100:
.LBE99:
.LBE98:
.LFE92:
	.size	EE_hal_terminate_task, .-EE_hal_terminate_task
	.align 1
	.global	EE_hal_terminate_savestk
	.type	EE_hal_terminate_savestk, @function
EE_hal_terminate_savestk:
.LFB95:
	.loc 1 140 0
.LVL20:
.LBB101:
.LBB102:
	.loc 1 134 0
#APP
	# 134 "0_Src/OS/cpu/tricore/src/ee_tc_oo.c" 1
	call EE_tc_dummy_context
	# 0 "" 2
#NO_APP
.LBE102:
.LBE101:
	.loc 1 154 0
	j	EE_tc_dummy_context
.LVL21:
.LFE95:
	.size	EE_hal_terminate_savestk, .-EE_hal_terminate_savestk
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
	.uaword	.LFB93
	.uaword	.LFE93-.LFB93
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB92
	.uaword	.LFE92-.LFB92
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB95
	.uaword	.LFE95-.LFB95
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 5 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 6 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.file 9 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 10 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.file 11 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xcdc
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/cpu/tricore/src/ee_tc_oo.c"
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
	.uaword	0x1c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1d9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_ADDR"
	.byte	0x4
	.byte	0x5a
	.uaword	0x1f8
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.string	"EE_CONST_ADDR"
	.byte	0x4
	.byte	0x60
	.uaword	0x20f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x215
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x21c
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x3
	.string	"EE_THREAD_PTR"
	.byte	0x4
	.byte	0x69
	.uaword	0x216
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x2
	.byte	0x7b
	.uaword	0x1c8
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x2
	.byte	0x7d
	.uaword	0x1c8
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x2
	.byte	0x80
	.uaword	0x1b1
	.uleb128 0x8
	.byte	0x4
	.byte	0x2
	.byte	0xdf
	.uaword	0x2b5
	.uleb128 0x9
	.string	"PCXO"
	.byte	0x2
	.byte	0xe0
	.uaword	0x1c8
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PCXS"
	.byte	0x2
	.byte	0xe1
	.uaword	0x1c8
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"UL"
	.byte	0x2
	.byte	0xe6
	.uaword	0x1c8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"PIE"
	.byte	0x2
	.byte	0xe7
	.uaword	0x1c8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PCPN"
	.byte	0x2
	.byte	0xe8
	.uaword	0x1c8
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0xdd
	.uaword	0x2d5
	.uleb128 0xb
	.string	"reg"
	.byte	0x2
	.byte	0xde
	.uaword	0x1c8
	.uleb128 0xb
	.string	"bits"
	.byte	0x2
	.byte	0xe9
	.uaword	0x25f
	.byte	0
	.uleb128 0x3
	.string	"EE_PCXI"
	.byte	0x2
	.byte	0xea
	.uaword	0x2b5
	.uleb128 0x3
	.string	"EE_CSA_LINK"
	.byte	0x2
	.byte	0xed
	.uaword	0x2d5
	.uleb128 0x8
	.byte	0x3c
	.byte	0x2
	.byte	0xf3
	.uaword	0x3b8
	.uleb128 0xc
	.string	"PSW_"
	.byte	0x2
	.byte	0xf6
	.uaword	0x233
	.byte	0
	.uleb128 0xc
	.string	"A10"
	.byte	0x2
	.byte	0xf7
	.uaword	0x1e9
	.byte	0x4
	.uleb128 0xc
	.string	"A11"
	.byte	0x2
	.byte	0xf8
	.uaword	0x1e9
	.byte	0x8
	.uleb128 0xc
	.string	"D8"
	.byte	0x2
	.byte	0xf9
	.uaword	0x233
	.byte	0xc
	.uleb128 0xc
	.string	"D9"
	.byte	0x2
	.byte	0xfa
	.uaword	0x233
	.byte	0x10
	.uleb128 0xc
	.string	"D10"
	.byte	0x2
	.byte	0xfb
	.uaword	0x233
	.byte	0x14
	.uleb128 0xc
	.string	"D11"
	.byte	0x2
	.byte	0xfc
	.uaword	0x233
	.byte	0x18
	.uleb128 0xc
	.string	"A12"
	.byte	0x2
	.byte	0xfd
	.uaword	0x1e9
	.byte	0x1c
	.uleb128 0xc
	.string	"A13"
	.byte	0x2
	.byte	0xfe
	.uaword	0x1e9
	.byte	0x20
	.uleb128 0xc
	.string	"A14"
	.byte	0x2
	.byte	0xff
	.uaword	0x1e9
	.byte	0x24
	.uleb128 0xd
	.string	"A15"
	.byte	0x2
	.uahalf	0x100
	.uaword	0x1e9
	.byte	0x28
	.uleb128 0xd
	.string	"D12"
	.byte	0x2
	.uahalf	0x101
	.uaword	0x233
	.byte	0x2c
	.uleb128 0xd
	.string	"D13"
	.byte	0x2
	.uahalf	0x102
	.uaword	0x233
	.byte	0x30
	.uleb128 0xd
	.string	"D14"
	.byte	0x2
	.uahalf	0x103
	.uaword	0x233
	.byte	0x34
	.uleb128 0xd
	.string	"D15"
	.byte	0x2
	.uahalf	0x104
	.uaword	0x233
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.byte	0x3c
	.byte	0x2
	.uahalf	0x106
	.uaword	0x477
	.uleb128 0xd
	.string	"A11"
	.byte	0x2
	.uahalf	0x107
	.uaword	0x1e9
	.byte	0
	.uleb128 0xd
	.string	"A2"
	.byte	0x2
	.uahalf	0x108
	.uaword	0x1e9
	.byte	0x4
	.uleb128 0xd
	.string	"A3"
	.byte	0x2
	.uahalf	0x109
	.uaword	0x1e9
	.byte	0x8
	.uleb128 0xd
	.string	"D0"
	.byte	0x2
	.uahalf	0x10a
	.uaword	0x233
	.byte	0xc
	.uleb128 0xd
	.string	"D1"
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x233
	.byte	0x10
	.uleb128 0xd
	.string	"D2"
	.byte	0x2
	.uahalf	0x10c
	.uaword	0x233
	.byte	0x14
	.uleb128 0xd
	.string	"D3"
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x233
	.byte	0x18
	.uleb128 0xd
	.string	"A4"
	.byte	0x2
	.uahalf	0x10e
	.uaword	0x1e9
	.byte	0x1c
	.uleb128 0xd
	.string	"A5"
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x1e9
	.byte	0x20
	.uleb128 0xd
	.string	"A6"
	.byte	0x2
	.uahalf	0x110
	.uaword	0x1e9
	.byte	0x24
	.uleb128 0xd
	.string	"A7"
	.byte	0x2
	.uahalf	0x111
	.uaword	0x1e9
	.byte	0x28
	.uleb128 0xd
	.string	"D4"
	.byte	0x2
	.uahalf	0x112
	.uaword	0x233
	.byte	0x2c
	.uleb128 0xd
	.string	"D5"
	.byte	0x2
	.uahalf	0x113
	.uaword	0x233
	.byte	0x30
	.uleb128 0xd
	.string	"D6"
	.byte	0x2
	.uahalf	0x114
	.uaword	0x233
	.byte	0x34
	.uleb128 0xd
	.string	"D7"
	.byte	0x2
	.uahalf	0x115
	.uaword	0x233
	.byte	0x38
	.byte	0
	.uleb128 0xa
	.byte	0x3c
	.byte	0x2
	.byte	0xf2
	.uaword	0x498
	.uleb128 0xf
	.string	"ucx"
	.byte	0x2
	.uahalf	0x105
	.uaword	0x2f7
	.uleb128 0xf
	.string	"lcx"
	.byte	0x2
	.uahalf	0x116
	.uaword	0x3b8
	.byte	0
	.uleb128 0x8
	.byte	0x40
	.byte	0x2
	.byte	0xf0
	.uaword	0x4ba
	.uleb128 0xc
	.string	"next"
	.byte	0x2
	.byte	0xf1
	.uaword	0x2e4
	.byte	0
	.uleb128 0xd
	.string	"cx"
	.byte	0x2
	.uahalf	0x117
	.uaword	0x477
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EE_CSA"
	.byte	0x2
	.uahalf	0x118
	.uaword	0x498
	.uleb128 0x11
	.string	"_dsync"
	.byte	0x3
	.byte	0xbc
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"_isync"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"EE_tc_isync"
	.byte	0x2
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"EE_tc_set_fcx"
	.byte	0x2
	.uahalf	0x2a6
	.byte	0x1
	.byte	0x3
	.uaword	0x526
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x2a6
	.uaword	0x233
	.uleb128 0x15
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x2a8
	.uaword	0x1d9
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_set_pcxi"
	.byte	0x2
	.uahalf	0x29b
	.byte	0x1
	.byte	0x3
	.uaword	0x55a
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x29b
	.uaword	0x233
	.uleb128 0x15
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x29d
	.uaword	0x1d9
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"EE_tc_csa_make_addr"
	.byte	0x2
	.uahalf	0x3a4
	.byte	0x1
	.uaword	0x596
	.byte	0x3
	.uaword	0x596
	.uleb128 0x14
	.string	"link"
	.byte	0x2
	.uahalf	0x3a4
	.uaword	0x2e4
	.uleb128 0x18
	.string	"res"
	.byte	0x2
	.uahalf	0x3a6
	.uaword	0x596
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4ba
	.uleb128 0x17
	.string	"EE_tc_csa_get_fcx"
	.byte	0x2
	.uahalf	0x3ac
	.byte	0x1
	.uaword	0x2e4
	.byte	0x3
	.uaword	0x5da
	.uleb128 0x18
	.string	"head"
	.byte	0x2
	.uahalf	0x3ae
	.uaword	0x2e4
	.uleb128 0x15
	.uleb128 0x18
	.string	"__res"
	.byte	0x2
	.uahalf	0x3af
	.uaword	0x1d9
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"EE_tc_csa_get_pcxi"
	.byte	0x2
	.uahalf	0x3ba
	.uaword	0x2e4
	.byte	0x3
	.uaword	0x618
	.uleb128 0x18
	.string	"head"
	.byte	0x2
	.uahalf	0x3bc
	.uaword	0x2e4
	.uleb128 0x15
	.uleb128 0x18
	.string	"__res"
	.byte	0x2
	.uahalf	0x3bd
	.uaword	0x1d9
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"EE_tc_dsync"
	.byte	0x2
	.uahalf	0x216
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"EE_tc_csa_set_pcxi"
	.byte	0x2
	.uahalf	0x3c2
	.byte	0x1
	.byte	0x3
	.uaword	0x655
	.uleb128 0x14
	.string	"link"
	.byte	0x2
	.uahalf	0x3c2
	.uaword	0x2e4
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_csa_set_next"
	.byte	0x2
	.uahalf	0x3d3
	.byte	0x1
	.byte	0x3
	.uaword	0x69b
	.uleb128 0x14
	.string	"at"
	.byte	0x2
	.uahalf	0x3d3
	.uaword	0x2e4
	.uleb128 0x14
	.string	"link"
	.byte	0x2
	.uahalf	0x3d4
	.uaword	0x2e4
	.uleb128 0x18
	.string	"csa_ptr"
	.byte	0x2
	.uahalf	0x3d6
	.uaword	0x596
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_csa_set_fcx"
	.byte	0x2
	.uahalf	0x3b4
	.byte	0x1
	.byte	0x3
	.uaword	0x6c5
	.uleb128 0x14
	.string	"link"
	.byte	0x2
	.uahalf	0x3b4
	.uaword	0x2e4
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_set_RA"
	.byte	0x2
	.uahalf	0x26f
	.byte	0x1
	.byte	0x3
	.uaword	0x6e9
	.uleb128 0x14
	.string	"reg"
	.byte	0x2
	.uahalf	0x26f
	.uaword	0x1fa
	.byte	0
	.uleb128 0x11
	.string	"EE_tc_call_dummy_context"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.string	"EE_tc_dummy_context"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	.LFB93
	.uaword	.LFE93
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76d
	.uleb128 0x1b
	.string	"tid"
	.byte	0x1
	.byte	0x6f
	.uaword	0x251
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	0x75a
	.uleb128 0x1d
	.string	"__res"
	.byte	0x1
	.byte	0x72
	.uaword	0x1d9
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL3
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1f
	.uaword	.LVL4
	.byte	0x1
	.uaword	0xcc0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"EE_hal_terminate_task"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa4a
	.uleb128 0x21
	.string	"tid"
	.byte	0x1
	.byte	0x3f
	.uaword	0x251
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"task_queue_tail"
	.byte	0x1
	.byte	0x42
	.uaword	0x2e4
	.uaword	.LLST1
	.uleb128 0x23
	.string	"p_task_tail_csa"
	.byte	0x1
	.byte	0x44
	.uaword	0x596
	.uleb128 0x22
	.string	"cp"
	.byte	0x1
	.byte	0x46
	.uaword	0x2e4
	.uaword	.LLST2
	.uleb128 0x22
	.string	"ra"
	.byte	0x1
	.byte	0x48
	.uaword	0x1e9
	.uaword	.LLST3
	.uleb128 0x1d
	.string	"fcx"
	.byte	0x1
	.byte	0x4b
	.uaword	0x2e4
	.byte	0x3
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1d
	.string	"pcx"
	.byte	0x1
	.byte	0x4d
	.uaword	0x2e4
	.byte	0x3
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x24
	.uaword	0x59c
	.uaword	.LBB69
	.uaword	.LBE69
	.byte	0x1
	.byte	0x4b
	.uaword	0x844
	.uleb128 0x25
	.uaword	.LBB70
	.uaword	.LBE70
	.uleb128 0x26
	.uaword	0x5bc
	.uleb128 0x25
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x27
	.uaword	0x5ca
	.byte	0x1
	.byte	0x56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x5da
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x4d
	.uaword	0x878
	.uleb128 0x25
	.uaword	.LBB73
	.uaword	.LBE73
	.uleb128 0x26
	.uaword	0x5fa
	.uleb128 0x25
	.uaword	.LBB74
	.uaword	.LBE74
	.uleb128 0x27
	.uaword	0x608
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x618
	.uaword	.LBB75
	.uaword	.LBE75
	.byte	0x1
	.byte	0x50
	.uaword	0x89c
	.uleb128 0x28
	.uaword	0x4c9
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x2
	.uahalf	0x218
	.byte	0
	.uleb128 0x24
	.uaword	0x55a
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.byte	0x54
	.uaword	0x8cc
	.uleb128 0x29
	.uaword	0x57c
	.uaword	.LLST4
	.uleb128 0x25
	.uaword	.LBB79
	.uaword	.LBE79
	.uleb128 0x2a
	.uaword	0x589
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x62a
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.byte	0x5e
	.uaword	0x93b
	.uleb128 0x29
	.uaword	0x647
	.uaword	.LLST6
	.uleb128 0x2b
	.uaword	0x526
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x2
	.uahalf	0x3c4
	.uleb128 0x29
	.uaword	0x53f
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	0x918
	.uleb128 0x2a
	.uaword	0x54c
	.uaword	.LLST7
	.byte	0
	.uleb128 0x2b
	.uaword	0x4e1
	.uaword	.LBB83
	.uaword	.LBE83
	.byte	0x2
	.uahalf	0x2a1
	.uleb128 0x28
	.uaword	0x4d5
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x2
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x655
	.uaword	.LBB86
	.uaword	.LBE86
	.byte	0x1
	.byte	0x60
	.uaword	0x99d
	.uleb128 0x29
	.uaword	0x67d
	.uaword	.LLST9
	.uleb128 0x29
	.uaword	0x672
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	.LBB87
	.uaword	.LBE87
	.uleb128 0x26
	.uaword	0x68a
	.uleb128 0x2b
	.uaword	0x55a
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x2
	.uahalf	0x3d6
	.uleb128 0x29
	.uaword	0x57c
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	.LBB89
	.uaword	.LBE89
	.uleb128 0x2a
	.uaword	0x589
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x69b
	.uaword	.LBB90
	.uaword	.LBE90
	.byte	0x1
	.byte	0x62
	.uaword	0xa0c
	.uleb128 0x29
	.uaword	0x6b7
	.uaword	.LLST13
	.uleb128 0x2b
	.uaword	0x4f3
	.uaword	.LBB91
	.uaword	.LBE91
	.byte	0x2
	.uahalf	0x3b6
	.uleb128 0x29
	.uaword	0x50b
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	0x9e9
	.uleb128 0x2a
	.uaword	0x518
	.uaword	.LLST14
	.byte	0
	.uleb128 0x2b
	.uaword	0x4e1
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x2
	.uahalf	0x2ac
	.uleb128 0x28
	.uaword	0x4d5
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x2
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x6c5
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.byte	0x64
	.uaword	0xa29
	.uleb128 0x29
	.uaword	0x6dc
	.uaword	.LLST16
	.byte	0
	.uleb128 0x2c
	.uaword	0x4e1
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.byte	0x66
	.uleb128 0x28
	.uaword	0x4d5
	.uaword	.LBB99
	.uaword	.LBE99
	.byte	0x2
	.uahalf	0x21e
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"EE_hal_terminate_savestk"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	.LFB95
	.uaword	.LFE95
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaa8
	.uleb128 0x1b
	.string	"tid"
	.byte	0x1
	.byte	0x8b
	.uaword	0x251
	.uaword	.LLST17
	.uleb128 0x2d
	.uaword	0x6e9
	.uaword	.LBB101
	.uaword	.LBE101
	.byte	0x1
	.byte	0x97
	.uleb128 0x2e
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x707
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x233
	.uaword	0xab3
	.uleb128 0x31
	.byte	0
	.uleb128 0x32
	.string	"EE_std_thread_tos"
	.byte	0x5
	.byte	0x5d
	.uaword	0xace
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.uaword	0xaa8
	.uleb128 0x30
	.uaword	0x1c8
	.uaword	0xade
	.uleb128 0x31
	.byte	0
	.uleb128 0x32
	.string	"EE_terminate_data"
	.byte	0x5
	.byte	0x69
	.uaword	0xad3
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.uaword	0x21e
	.uaword	0xb04
	.uleb128 0x31
	.byte	0
	.uleb128 0x32
	.string	"EE_terminate_real_th_body"
	.byte	0x5
	.byte	0x6d
	.uaword	0xb27
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.uaword	0xaf9
	.uleb128 0x32
	.string	"EE_IRQ_nesting_level"
	.byte	0x6
	.byte	0x39
	.uaword	0x233
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x233
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_std_endcycle_next_tid"
	.byte	0x8
	.byte	0x41
	.uaword	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0xaa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.uaword	0x251
	.uaword	0xba7
	.uleb128 0x31
	.byte	0
	.uleb128 0x32
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0xb9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0xbd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.uaword	0xaa8
	.uleb128 0x32
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0xbf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.uaword	0xaa8
	.uleb128 0x32
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x233
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0xaa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0xaa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xa
	.byte	0x33
	.uaword	0x233
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xa
	.byte	0x3a
	.uaword	0x242
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"EE_ApplicationMode"
	.byte	0xa
	.byte	0x3d
	.uaword	0x233
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"EE_thread_not_terminated"
	.byte	0xb
	.byte	0xf3
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x17
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-.Ltext0
	.uaword	.LFE93-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x3
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xf0
	.byte	0x24
	.byte	0x4c
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x4c
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x3
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x3
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x5
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x3
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-1-.Ltext0
	.uaword	.LFE95-.Ltext0
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
.LASF0:
	.string	"__newval"
	.extern	EE_thread_not_terminated,STT_FUNC,0
	.extern	EE_terminate_real_th_body,STT_OBJECT,-1
	.extern	EE_terminate_data,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
