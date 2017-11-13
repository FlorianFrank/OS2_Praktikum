	.file	"ee_chaintas.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_ChainTask
	.type	EE_oo_ChainTask, @function
EE_oo_ChainTask:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_chaintas.c"
	.loc 1 65 0
.LVL0:
.LBB165:
.LBB166:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE166:
.LBE165:
	.loc 1 77 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB167:
.LBB168:
.LBB169:
.LBB170:
.LBB171:
.LBB172:
.LBB173:
.LBB174:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE174:
.LBE173:
.LBE172:
.LBE171:
.LBB175:
.LBB176:
.LBB177:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE177:
.LBE176:
.LBE175:
.LBE170:
.LBE169:
.LBE168:
.LBE167:
.LBB178:
.LBB179:
.LBB180:
.LBB181:
.LBB182:
.LBB183:
.LBB184:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE184:
.LBE183:
.LBB185:
.LBB186:
.LBB187:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE187:
.LBE186:
.LBE185:
.LBE182:
.LBE181:
.LBE180:
.LBE179:
.LBE178:
	.loc 1 86 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
.LBB188:
.LBB189:
	.file 4 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 4 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d2, [%a15] lo:EE_stkfirst
.LBE189:
.LBE188:
.LBB190:
.LBB191:
	.file 5 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 5 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE191:
.LBE190:
	.loc 1 94 0
	ld.w	%d15, [%a15] lo:EE_IRQ_nesting_level
	jz	%d15, .L4
.LVL5:
.LBB192:
.LBB193:
.LBB194:
.LBB195:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE199:
.LBE198:
.LBE197:
.LBE196:
.LBB200:
.LBB201:
.LBB202:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE202:
.LBE201:
.LBE200:
.LBE195:
.LBE194:
.LBE193:
.LBE192:
.LBB203:
.LBB204:
.LBB205:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE209:
.LBE208:
.LBB210:
.LBB211:
.LBB212:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE212:
.LBE211:
.LBE210:
.LBE207:
.LBE206:
.LBE205:
.LBE204:
.LBE203:
	.loc 1 103 0
	mov	%d2, 2
	ret
.LVL8:
.L4:
	.loc 1 107 0
	jlt.u	%d4, 14, .L5
.LVL9:
.LBB213:
.LBB214:
.LBB215:
.LBB216:
.LBB217:
.LBB218:
.LBB219:
.LBB220:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL10:
#NO_APP
.LBE220:
.LBE219:
.LBE218:
.LBE217:
.LBB221:
.LBB222:
.LBB223:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL11:
#NO_APP
.LBE223:
.LBE222:
.LBE221:
.LBE216:
.LBE215:
.LBE214:
.LBE213:
.LBB224:
.LBB225:
.LBB226:
.LBB227:
.LBB228:
.LBB229:
.LBB230:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE230:
.LBE229:
.LBB231:
.LBB232:
.LBB233:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE233:
.LBE232:
.LBE231:
.LBE228:
.LBE227:
.LBE226:
.LBE225:
.LBE224:
	.loc 1 116 0
	mov	%d2, 3
	ret
.LVL12:
.L5:
.LBB234:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
.LBB239:
.LBB240:
.LBB241:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d5, LO:65068
	# 0 "" 2
.LVL13:
#NO_APP
.LBE241:
.LBE240:
.LBE239:
.LBE238:
.LBB242:
.LBB243:
.LBB244:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE244:
.LBE243:
.LBE242:
.LBE237:
.LBE236:
.LBE235:
.LBE234:
	.loc 1 142 0
	movh.a	%a15, hi:EE_th_rnact
	mov.d	%d15, %a15
	addi	%d6, %d15, lo:EE_th_rnact
	.loc 1 141 0
	jeq	%d2, %d4, .L6
	.loc 1 142 0 discriminator 1
	mov.a	%a2, %d6
	sh	%d15, %d4, 2
	addsc.a	%a15, %a2, %d15, 0
	ld.w	%d3, [%a15]0
	.loc 1 141 0 discriminator 1
	jnz	%d3, .L11
.LVL14:
.LBB245:
.LBB246:
.LBB247:
.LBB248:
.LBB249:
.LBB250:
.LBB251:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d5
	# 0 "" 2
#NO_APP
.LBE251:
.LBE250:
.LBB252:
.LBB253:
.LBB254:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE254:
.LBE253:
.LBE252:
.LBE249:
.LBE248:
.LBE247:
.LBE246:
.LBE245:
	.loc 1 150 0
	mov	%d2, 4
	ret
.LVL15:
.L11:
	sh	%d5, %d2, 2
.LVL16:
.L7:
	.loc 1 168 0
	mov.a	%a2, %d6
	add	%d3, -1
	addsc.a	%a15, %a2, %d15, 0
	st.w	[%a15]0, %d3
	.loc 1 170 0
	movh.a	%a15, hi:EE_th_terminate_nextask
	lea	%a15, [%a15] lo:EE_th_terminate_nextask
	addsc.a	%a15, %a15, %d5, 0
	st.w	[%a15]0, %d4
	.loc 1 175 0
	mov	%d4, %d2
.LVL17:
	call	EE_hal_terminate_task
.LVL18:
	.loc 1 178 0
	mov	%d2, 0
	.loc 1 179 0
	ret
.LVL19:
.L6:
	mov.a	%a2, %d6
	sh	%d5, %d2, 2
.LVL20:
	addsc.a	%a15, %a2, %d5, 0
	mov	%d15, %d5
	ld.w	%d3, [%a15]0
	j	.L7
.LFE92:
	.size	EE_oo_ChainTask, .-EE_oo_ChainTask
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
	.file 6 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 8 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 9 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 10 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 11 "./0_Src/OS/cpu/common/inc/ee_context.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xea9
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_chaintas.c"
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
	.byte	0x6
	.byte	0x4b
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x7
	.byte	0x7b
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x7
	.byte	0x7c
	.uaword	0x1b2
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x7
	.byte	0x7d
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x7
	.byte	0x80
	.uaword	0x1b2
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uahalf	0x134
	.uaword	0x37b
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1ea
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x1ea
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uahalf	0x133
	.uaword	0x39e
	.uleb128 0x7
	.string	"bits"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x225
	.uleb128 0x7
	.string	"reg"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x1ea
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x37b
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x16f
	.uleb128 0x8
	.string	"TaskType"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x217
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
	.uaword	0x409
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x409
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
	.uaword	0x436
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x409
	.uleb128 0xf
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x409
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_isync"
	.byte	0x7
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
	.byte	0x7
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x47b
	.uleb128 0x12
	.string	"icr"
	.byte	0x7
	.uahalf	0x242
	.uaword	0x39e
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_get_ICR"
	.byte	0x7
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x39e
	.byte	0x3
	.uaword	0x4a4
	.uleb128 0x14
	.string	"icr"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x39e
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_disableIRQ"
	.byte	0x7
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_tc_resumeIRQ"
	.byte	0x7
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x4f0
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x208
	.uleb128 0x14
	.string	"icr"
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x39e
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_suspendIRQ"
	.byte	0x7
	.uahalf	0x384
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uaword	0x51c
	.uleb128 0x14
	.string	"icr"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x39e
	.byte	0
	.uleb128 0x15
	.string	"EE_hal_suspendIRQ"
	.byte	0x7
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_resumeIRQ"
	.byte	0x7
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x562
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x208
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uaword	0x5a0
	.uleb128 0xc
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x1f9
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x9
	.byte	0x6c
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uleb128 0xe
	.string	"EE_hal_end_nested_primitive"
	.byte	0x9
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x5fa
	.uleb128 0xf
	.string	"flags"
	.byte	0x9
	.byte	0x73
	.uaword	0x208
	.byte	0
	.uleb128 0x16
	.string	"EE_stk_queryfirst"
	.byte	0x4
	.byte	0x43
	.byte	0x1
	.uaword	0x217
	.byte	0x3
	.uleb128 0x16
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.uaword	0x1ea
	.byte	0x3
	.uleb128 0x17
	.byte	0x1
	.string	"EE_oo_ChainTask"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	0x3ad
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc95
	.uleb128 0x18
	.string	"TaskID"
	.byte	0x1
	.byte	0x40
	.uaword	0x3c0
	.uaword	.LLST0
	.uleb128 0xc
	.string	"current"
	.byte	0x1
	.byte	0x42
	.uaword	0x3c0
	.uleb128 0xc
	.string	"flag"
	.byte	0x1
	.byte	0x43
	.uaword	0x208
	.uleb128 0x19
	.uaword	0x562
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x1
	.byte	0x4d
	.uaword	0x6b3
	.uleb128 0x1a
	.uaword	.LBB166
	.uaword	.LBE166
	.uleb128 0x1b
	.uaword	0x58c
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x5a0
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.byte	0x50
	.uaword	0x769
	.uleb128 0x1c
	.uaword	0x51c
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x4f0
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB170
	.uaword	.LBE170
	.uleb128 0x1b
	.uaword	0x50f
	.uleb128 0x1e
	.uaword	0x47b
	.uaword	.LBB171
	.uaword	.LBE171
	.byte	0x7
	.uahalf	0x386
	.uaword	0x744
	.uleb128 0x1a
	.uaword	.LBB172
	.uaword	.LBE172
	.uleb128 0x1b
	.uaword	0x497
	.uleb128 0x1d
	.uaword	0x3dd
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x3f0
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LBB174
	.uaword	.LBE174
	.uleb128 0x20
	.uaword	0x3fb
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4a4
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x448
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x5c7
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x1
	.byte	0x52
	.uaword	0x826
	.uleb128 0x1f
	.uaword	0x5ec
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	0x538
	.uaword	.LBB179
	.uaword	.LBE179
	.byte	0x9
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x553
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x4bb
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4d5
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LBB181
	.uaword	.LBE181
	.uleb128 0x1b
	.uaword	0x4e3
	.uleb128 0x1d
	.uaword	0x456
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x46e
	.uleb128 0x1e
	.uaword	0x40e
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x7
	.uahalf	0x244
	.uaword	0x800
	.uleb128 0x1f
	.uaword	0x428
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1d
	.uaword	0x436
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3d1
	.uaword	.LBB186
	.uaword	.LBE186
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x5fa
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x1
	.byte	0x59
	.uleb128 0x23
	.uaword	0x615
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x1
	.byte	0x5e
	.uleb128 0x19
	.uaword	0x5a0
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.byte	0x61
	.uaword	0x8fa
	.uleb128 0x1c
	.uaword	0x51c
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x4f0
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x1b
	.uaword	0x50f
	.uleb128 0x1e
	.uaword	0x47b
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x7
	.uahalf	0x386
	.uaword	0x8d5
	.uleb128 0x1a
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x1b
	.uaword	0x497
	.uleb128 0x1d
	.uaword	0x3dd
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x3f0
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.LBB199
	.uaword	.LBE199
	.uleb128 0x20
	.uaword	0x3fb
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4a4
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x448
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x5c7
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.byte	0x63
	.uaword	0x9b7
	.uleb128 0x1f
	.uaword	0x5ec
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	0x538
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x9
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x553
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	0x4bb
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4d5
	.uaword	.LLST10
	.uleb128 0x1a
	.uaword	.LBB206
	.uaword	.LBE206
	.uleb128 0x1b
	.uaword	0x4e3
	.uleb128 0x1d
	.uaword	0x456
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x46e
	.uleb128 0x1e
	.uaword	0x40e
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x7
	.uahalf	0x244
	.uaword	0x991
	.uleb128 0x1f
	.uaword	0x428
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LLST14
	.byte	0
	.uleb128 0x1d
	.uaword	0x436
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3d1
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x5a0
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x1
	.byte	0x6e
	.uaword	0xa6d
	.uleb128 0x1c
	.uaword	0x51c
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x4f0
	.uaword	.LBB215
	.uaword	.LBE215
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB216
	.uaword	.LBE216
	.uleb128 0x1b
	.uaword	0x50f
	.uleb128 0x1e
	.uaword	0x47b
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x7
	.uahalf	0x386
	.uaword	0xa48
	.uleb128 0x1a
	.uaword	.LBB218
	.uaword	.LBE218
	.uleb128 0x1b
	.uaword	0x497
	.uleb128 0x1d
	.uaword	0x3dd
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x3f0
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.LBB220
	.uaword	.LBE220
	.uleb128 0x20
	.uaword	0x3fb
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4a4
	.uaword	.LBB221
	.uaword	.LBE221
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x448
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x5c7
	.uaword	.LBB224
	.uaword	.LBE224
	.byte	0x1
	.byte	0x70
	.uaword	0xb2a
	.uleb128 0x1f
	.uaword	0x5ec
	.uaword	.LLST17
	.uleb128 0x1c
	.uaword	0x538
	.uaword	.LBB225
	.uaword	.LBE225
	.byte	0x9
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x553
	.uaword	.LLST17
	.uleb128 0x1d
	.uaword	0x4bb
	.uaword	.LBB226
	.uaword	.LBE226
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4d5
	.uaword	.LLST17
	.uleb128 0x1a
	.uaword	.LBB227
	.uaword	.LBE227
	.uleb128 0x1b
	.uaword	0x4e3
	.uleb128 0x1d
	.uaword	0x456
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x46e
	.uleb128 0x1e
	.uaword	0x40e
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x7
	.uahalf	0x244
	.uaword	0xb04
	.uleb128 0x1f
	.uaword	0x428
	.uaword	.LLST17
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LLST21
	.byte	0
	.uleb128 0x1d
	.uaword	0x436
	.uaword	.LBB231
	.uaword	.LBE231
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3d1
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x5a0
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.byte	0x88
	.uaword	0xbde
	.uleb128 0x1c
	.uaword	0x51c
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x4f0
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB237
	.uaword	.LBE237
	.uleb128 0x1b
	.uaword	0x50f
	.uleb128 0x1e
	.uaword	0x47b
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x7
	.uahalf	0x386
	.uaword	0xbb9
	.uleb128 0x1a
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x1b
	.uaword	0x497
	.uleb128 0x1d
	.uaword	0x3dd
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x24
	.uaword	0x3f0
	.uahalf	0xfe2c
	.uleb128 0x1a
	.uaword	.LBB241
	.uaword	.LBE241
	.uleb128 0x20
	.uaword	0x3fb
	.uaword	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4a4
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x448
	.uaword	.LBB243
	.uaword	.LBE243
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x5c7
	.uaword	.LBB245
	.uaword	.LBE245
	.byte	0x1
	.byte	0x93
	.uaword	0xc8b
	.uleb128 0x22
	.uaword	0x5ec
	.uleb128 0x1c
	.uaword	0x538
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x9
	.byte	0x75
	.uleb128 0x22
	.uaword	0x553
	.uleb128 0x1d
	.uaword	0x4bb
	.uaword	.LBB247
	.uaword	.LBE247
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x4d5
	.uleb128 0x1a
	.uaword	.LBB248
	.uaword	.LBE248
	.uleb128 0x1b
	.uaword	0x4e3
	.uleb128 0x1d
	.uaword	0x456
	.uaword	.LBB249
	.uaword	.LBE249
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x46e
	.uleb128 0x1e
	.uaword	0x40e
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x7
	.uahalf	0x244
	.uaword	0xc65
	.uleb128 0x22
	.uaword	0x428
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LLST23
	.byte	0
	.uleb128 0x1d
	.uaword	0x436
	.uaword	.LBB252
	.uaword	.LBE252
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3d1
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	.LVL18
	.uaword	0xe8a
	.byte	0
	.uleb128 0x26
	.uaword	0x1ea
	.uaword	0xca0
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.string	"EE_std_thread_tos"
	.byte	0xa
	.byte	0x5d
	.uaword	0xcbb
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc95
	.uleb128 0x28
	.string	"EE_IRQ_nesting_level"
	.byte	0x5
	.byte	0x39
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_tc_active_tos"
	.byte	0x9
	.byte	0xbe
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_std_endcycle_next_tid"
	.byte	0xb
	.byte	0x41
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_th_status"
	.byte	0x8
	.byte	0xa6
	.uaword	0xc95
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.uaword	0x217
	.uaword	0xd3b
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.string	"EE_th_next"
	.byte	0x8
	.byte	0xae
	.uaword	0xd30
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_th_ready_prio"
	.byte	0x8
	.byte	0xb1
	.uaword	0xd69
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc95
	.uleb128 0x28
	.string	"EE_th_dispatch_prio"
	.byte	0x8
	.byte	0xb2
	.uaword	0xd8b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc95
	.uleb128 0x28
	.string	"EE_th_rnact"
	.byte	0x8
	.byte	0xba
	.uaword	0xc95
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_th_terminate_nextask"
	.byte	0x8
	.byte	0xc3
	.uaword	0xd30
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_stkfirst"
	.byte	0x8
	.byte	0xc7
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_sys_ceiling"
	.byte	0x8
	.byte	0xca
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_event_active"
	.byte	0x8
	.uahalf	0x111
	.uaword	0xc95
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_waswaiting"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0xc95
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x4
	.byte	0x33
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x4
	.byte	0x3a
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"EE_ApplicationMode"
	.byte	0x4
	.byte	0x3d
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"EE_hal_terminate_task"
	.byte	0x9
	.byte	0xf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x217
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL18-1-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x54
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
.LLST15:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
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
	.extern	EE_th_rnact,STT_OBJECT,-1
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
