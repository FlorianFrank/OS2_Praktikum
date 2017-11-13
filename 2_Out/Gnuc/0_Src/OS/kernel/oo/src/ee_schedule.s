	.file	"ee_schedule.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_Schedule
	.type	EE_oo_Schedule, @function
EE_oo_Schedule:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_schedule.c"
	.loc 1 62 0
.LBB223:
.LBB224:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 2 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d8, [%a15] lo:EE_stkfirst
.LVL0:
.LBE224:
.LBE223:
.LBB225:
.LBB226:
	.file 3 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 3 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE226:
.LBE225:
	.loc 1 78 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB227:
.LBB228:
.LBB229:
.LBB230:
.LBB231:
.LBB232:
.LBB233:
.LBB234:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE234:
.LBE233:
.LBE232:
.LBE231:
.LBB235:
.LBB236:
.LBB237:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE237:
.LBE236:
.LBE235:
.LBE230:
.LBE229:
.LBE228:
.LBE227:
.LBB238:
.LBB239:
.LBB240:
.LBB241:
.LBB242:
.LBB243:
.LBB244:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE244:
.LBE243:
.LBB245:
.LBB246:
.LBB247:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE247:
.LBE246:
.LBE245:
.LBE242:
.LBE241:
.LBE240:
.LBE239:
.LBE238:
	.loc 1 87 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
.LBB248:
.LBB249:
	.file 5 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 5 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE249:
.LBE248:
	.loc 1 91 0
	ld.w	%d15, [%a15] lo:EE_IRQ_nesting_level
	jz	%d15, .L4
.LVL5:
.LBB250:
.LBB251:
.LBB252:
.LBB253:
.LBB254:
.LBB255:
.LBB256:
.LBB257:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE257:
.LBE256:
.LBE255:
.LBE254:
.LBB258:
.LBB259:
.LBB260:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE260:
.LBE259:
.LBE258:
.LBE253:
.LBE252:
.LBE251:
.LBE250:
.LBB261:
.LBB262:
.LBB263:
.LBB264:
.LBB265:
.LBB266:
.LBB267:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE267:
.LBE266:
.LBB268:
.LBB269:
.LBB270:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE270:
.LBE269:
.LBE268:
.LBE265:
.LBE264:
.LBE263:
.LBE262:
.LBE261:
	.loc 1 100 0
	mov	%d2, 2
	ret
.LVL8:
.L4:
.LBB271:
.LBB272:
.LBB273:
.LBB274:
.LBB275:
.LBB276:
.LBB277:
.LBB278:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d9, LO:65068
	# 0 "" 2
.LVL9:
#NO_APP
.LBE278:
.LBE277:
.LBE276:
.LBE275:
.LBB279:
.LBB280:
.LBB281:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE281:
.LBE280:
.LBE279:
.LBE274:
.LBE273:
.LBE272:
.LBE271:
	.loc 1 124 0
	call	EE_rq_queryfirst
.LVL10:
	.loc 1 125 0
	jeq	%d2, -1, .L5
	.loc 1 132 0
	movh.a	%a15, hi:EE_th_ready_prio
	lea	%a15, [%a15] lo:EE_th_ready_prio
	sh	%d8, 2
	sh	%d2, 2
.LVL11:
	addsc.a	%a2, %a15, %d8, 0
	addsc.a	%a15, %a15, %d2, 0
	ld.w	%d10, [%a2]0
	ld.w	%d3, [%a15]0
	jge.u	%d10, %d3, .L5
	.loc 1 135 0
	movh.a	%a3, hi:EE_th_dispatch_prio
	lea	%a3, [%a3] lo:EE_th_dispatch_prio
	addsc.a	%a15, %a3, %d8, 0
	.loc 1 151 0
	movh.a	%a2, hi:EE_th_status
	.loc 1 135 0
	ld.w	%d11, [%a15]0
	.loc 1 151 0
	lea	%a2, [%a2] lo:EE_th_status
	.loc 1 135 0
	movh.a	%a15, hi:EE_sys_ceiling
	.loc 1 151 0
	mov	%d4, 2
	.loc 1 135 0
	ld.w	%d3, [%a15] lo:EE_sys_ceiling
	.loc 1 151 0
	addsc.a	%a4, %a2, %d8, 0
	.loc 1 157 0
	addsc.a	%a3, %a3, %d2, 0
	.loc 1 151 0
	st.w	[%a4]0, %d4
	.loc 1 135 0
	andn	%d3, %d3, %d11
	.loc 1 157 0
	ld.w	%d4, [%a3]0
	.loc 1 148 0
	or	%d3, %d10
	.loc 1 157 0
	or	%d3, %d4
	.loc 1 159 0
	addsc.a	%a2, %a2, %d2, 0
	.loc 1 157 0
	st.w	[%a15] lo:EE_sys_ceiling, %d3
	.loc 1 159 0
	st.w	[%a2]0, %d15
.LBB282:
.LBB283:
	.loc 3 287 0
	call	EE_rq2stk_exchange
.LVL12:
	.loc 3 288 0
	movh.a	%a2, hi:EE_th_waswaiting
	lea	%a2, [%a2] lo:EE_th_waswaiting
	addsc.a	%a2, %a2, %d2, 2
	ld.w	%d3, [%a2]0
	jz	%d3, .L6
.LBB284:
.LBB285:
	.file 6 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 6 201 0
	insert	%d4, %d2, 15, 31, 1
.LBE285:
.LBE284:
	.loc 3 290 0
	st.w	[%a2]0, %d15
.LVL13:
.LBB287:
.LBB286:
	.loc 6 201 0
	call	EE_std_change_context
.LVL14:
.L7:
.LBE286:
.LBE287:
.LBE283:
.LBE282:
	.loc 1 170 0
	ld.w	%d15, [%a15] lo:EE_sys_ceiling
	andn	%d10, %d15, %d10
	.loc 1 172 0
	or	%d11, %d10
	st.w	[%a15] lo:EE_sys_ceiling, %d11
.L5:
.LVL15:
.LBB291:
.LBB292:
.LBB293:
.LBB294:
.LBB295:
.LBB296:
.LBB297:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d9
	# 0 "" 2
#NO_APP
.LBE297:
.LBE296:
.LBB298:
.LBB299:
.LBB300:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE300:
.LBE299:
.LBE298:
.LBE295:
.LBE294:
.LBE293:
.LBE292:
.LBE291:
	.loc 1 184 0
	mov	%d2, 0
	.loc 1 185 0
	ret
.LVL16:
.L6:
.LBB301:
.LBB290:
.LBB288:
.LBB289:
	.loc 6 214 0
	mov	%d4, %d2
	call	EE_std_change_context
.LVL17:
	j	.L7
.LBE289:
.LBE288:
.LBE290:
.LBE301:
.LFE92:
	.size	EE_oo_Schedule, .-EE_oo_Schedule
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
	.file 7 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 8 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 9 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 10 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 11 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe63
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_schedule.c"
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
	.byte	0x7
	.byte	0x4b
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x7
	.byte	0x4c
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x8
	.byte	0x7b
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x8
	.byte	0x7c
	.uaword	0x1b2
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x8
	.byte	0x7d
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x8
	.byte	0x80
	.uaword	0x1b2
	.uleb128 0x3
	.string	"EE_UTID"
	.byte	0x8
	.byte	0x83
	.uaword	0x1c9
	.uleb128 0x4
	.byte	0x4
	.byte	0x8
	.uahalf	0x134
	.uaword	0x38a
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x1ea
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x1ea
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x1ea
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.uahalf	0x133
	.uaword	0x3ad
	.uleb128 0x7
	.string	"bits"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x234
	.uleb128 0x7
	.string	"reg"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x1ea
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x38a
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x16f
	.uleb128 0x8
	.string	"TaskType"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x217
	.uleb128 0x9
	.string	"_isync"
	.byte	0x4
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xa
	.string	"_mfcr"
	.byte	0x4
	.byte	0x6f
	.byte	0x1
	.uaword	0x1da
	.byte	0x3
	.uaword	0x418
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x6f
	.uaword	0x418
	.uleb128 0xc
	.string	"__res"
	.byte	0x4
	.byte	0x71
	.uaword	0x1da
	.byte	0
	.uleb128 0xd
	.uaword	0x1da
	.uleb128 0xe
	.string	"_mtcr"
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x445
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x87
	.uaword	0x418
	.uleb128 0xf
	.string	"__val"
	.byte	0x4
	.byte	0x87
	.uaword	0x418
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_isync"
	.byte	0x8
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0x9
	.string	"_disable"
	.byte	0x4
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_tc_set_ICR"
	.byte	0x8
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x48a
	.uleb128 0x12
	.string	"icr"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x3ad
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_get_ICR"
	.byte	0x8
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3ad
	.byte	0x3
	.uaword	0x4b3
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x3ad
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_disableIRQ"
	.byte	0x8
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_tc_resumeIRQ"
	.byte	0x8
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x4ff
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x37d
	.uaword	0x208
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x3ad
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_suspendIRQ"
	.byte	0x8
	.uahalf	0x384
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uaword	0x52b
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x3ad
	.byte	0
	.uleb128 0x15
	.string	"EE_hal_suspendIRQ"
	.byte	0x8
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_resumeIRQ"
	.byte	0x8
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x571
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x3ed
	.uaword	0x208
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_stkchange"
	.byte	0x6
	.byte	0xc6
	.byte	0x1
	.byte	0x3
	.uaword	0x5a2
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xc6
	.uaword	0x217
	.uleb128 0xc
	.string	"tmp"
	.byte	0x6
	.byte	0xc8
	.uaword	0x225
	.byte	0
	.uleb128 0x16
	.string	"EE_stk_queryfirst"
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.uaword	0x217
	.byte	0x3
	.uleb128 0xa
	.string	"EE_oo_check_disableint_error"
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uaword	0x5fb
	.uleb128 0xc
	.string	"error_check"
	.byte	0x3
	.byte	0x96
	.uaword	0x1f9
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_begin_nested_primitive"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uleb128 0xe
	.string	"EE_hal_end_nested_primitive"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x655
	.uleb128 0xf
	.string	"flags"
	.byte	0xa
	.byte	0x73
	.uaword	0x208
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.uaword	0x1ea
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_run_next_task"
	.byte	0x3
	.uahalf	0x11b
	.byte	0x1
	.byte	0x3
	.uaword	0x6a6
	.uleb128 0x14
	.string	"tmp"
	.byte	0x3
	.uahalf	0x11d
	.uaword	0x3cf
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_ready2stacked"
	.byte	0x6
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.uaword	0x6d0
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xd4
	.uaword	0x217
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"EE_oo_Schedule"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x3bc
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc49
	.uleb128 0xc
	.string	"current"
	.byte	0x1
	.byte	0x3f
	.uaword	0x217
	.uleb128 0x18
	.string	"rq"
	.byte	0x1
	.byte	0x3f
	.uaword	0x217
	.uaword	.LLST0
	.uleb128 0xc
	.string	"flag"
	.byte	0x1
	.byte	0x40
	.uaword	0x208
	.uleb128 0x19
	.uaword	0x5a2
	.uaword	.LBB223
	.uaword	.LBE223
	.byte	0x1
	.byte	0x44
	.uleb128 0x1a
	.uaword	0x5bd
	.uaword	.LBB225
	.uaword	.LBE225
	.byte	0x1
	.byte	0x4e
	.uaword	0x752
	.uleb128 0x1b
	.uaword	.LBB226
	.uaword	.LBE226
	.uleb128 0x1c
	.uaword	0x5e7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5fb
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x1
	.byte	0x51
	.uaword	0x808
	.uleb128 0x1d
	.uaword	0x52b
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4ff
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB230
	.uaword	.LBE230
	.uleb128 0x1c
	.uaword	0x51e
	.uleb128 0x1f
	.uaword	0x48a
	.uaword	.LBB231
	.uaword	.LBE231
	.byte	0x8
	.uahalf	0x386
	.uaword	0x7e3
	.uleb128 0x1b
	.uaword	.LBB232
	.uaword	.LBE232
	.uleb128 0x1c
	.uaword	0x4a6
	.uleb128 0x1e
	.uaword	0x3ec
	.uaword	.LBB233
	.uaword	.LBE233
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x3ff
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LBB234
	.uaword	.LBE234
	.uleb128 0x21
	.uaword	0x40a
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4b3
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x457
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x622
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x1
	.byte	0x53
	.uaword	0x8c5
	.uleb128 0x20
	.uaword	0x647
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x547
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x562
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x4ca
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4e4
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	.LBB241
	.uaword	.LBE241
	.uleb128 0x1c
	.uaword	0x4f2
	.uleb128 0x1e
	.uaword	0x465
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x47d
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LBB243
	.uaword	.LBE243
	.byte	0x8
	.uahalf	0x244
	.uaword	0x89f
	.uleb128 0x20
	.uaword	0x437
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1e
	.uaword	0x445
	.uaword	.LBB245
	.uaword	.LBE245
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3e0
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x655
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1a
	.uaword	0x5fb
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x1
	.byte	0x5e
	.uaword	0x98a
	.uleb128 0x1d
	.uaword	0x52b
	.uaword	.LBB251
	.uaword	.LBE251
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4ff
	.uaword	.LBB252
	.uaword	.LBE252
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB253
	.uaword	.LBE253
	.uleb128 0x1c
	.uaword	0x51e
	.uleb128 0x1f
	.uaword	0x48a
	.uaword	.LBB254
	.uaword	.LBE254
	.byte	0x8
	.uahalf	0x386
	.uaword	0x965
	.uleb128 0x1b
	.uaword	.LBB255
	.uaword	.LBE255
	.uleb128 0x1c
	.uaword	0x4a6
	.uleb128 0x1e
	.uaword	0x3ec
	.uaword	.LBB256
	.uaword	.LBE256
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x3ff
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	.LBB257
	.uaword	.LBE257
	.uleb128 0x21
	.uaword	0x40a
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4b3
	.uaword	.LBB258
	.uaword	.LBE258
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x457
	.uaword	.LBB259
	.uaword	.LBE259
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x622
	.uaword	.LBB261
	.uaword	.LBE261
	.byte	0x1
	.byte	0x60
	.uaword	0xa47
	.uleb128 0x20
	.uaword	0x647
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	0x547
	.uaword	.LBB262
	.uaword	.LBE262
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x562
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x4ca
	.uaword	.LBB263
	.uaword	.LBE263
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4e4
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	.LBB264
	.uaword	.LBE264
	.uleb128 0x1c
	.uaword	0x4f2
	.uleb128 0x1e
	.uaword	0x465
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x47d
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x8
	.uahalf	0x244
	.uaword	0xa21
	.uleb128 0x20
	.uaword	0x437
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST14
	.byte	0
	.uleb128 0x1e
	.uaword	0x445
	.uaword	.LBB268
	.uaword	.LBE268
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3e0
	.uaword	.LBB269
	.uaword	.LBE269
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5fb
	.uaword	.LBB271
	.uaword	.LBE271
	.byte	0x1
	.byte	0x79
	.uaword	0xaf9
	.uleb128 0x1d
	.uaword	0x52b
	.uaword	.LBB272
	.uaword	.LBE272
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4ff
	.uaword	.LBB273
	.uaword	.LBE273
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB274
	.uaword	.LBE274
	.uleb128 0x1c
	.uaword	0x51e
	.uleb128 0x1f
	.uaword	0x48a
	.uaword	.LBB275
	.uaword	.LBE275
	.byte	0x8
	.uahalf	0x386
	.uaword	0xad4
	.uleb128 0x1b
	.uaword	.LBB276
	.uaword	.LBE276
	.uleb128 0x1c
	.uaword	0x4a6
	.uleb128 0x1e
	.uaword	0x3ec
	.uaword	.LBB277
	.uaword	.LBE277
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x24
	.uaword	0x3ff
	.uahalf	0xfe2c
	.uleb128 0x1b
	.uaword	.LBB278
	.uaword	.LBE278
	.uleb128 0x25
	.uaword	0x40a
	.byte	0x1
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4b3
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x457
	.uaword	.LBB280
	.uaword	.LBE280
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x67b
	.uaword	.LBB282
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa7
	.uaword	0xb82
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x21
	.uaword	0x699
	.uaword	.LLST15
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB284
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x3
	.uahalf	0x123
	.uaword	0xb50
	.uleb128 0x20
	.uaword	0x58b
	.uaword	.LLST16
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x21
	.uaword	0x596
	.uaword	.LLST17
	.uleb128 0x29
	.uaword	.LVL14
	.uaword	0xe08
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x6a6
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0x3
	.uahalf	0x126
	.uaword	0xb77
	.uleb128 0x20
	.uaword	0x6c4
	.uaword	.LLST18
	.uleb128 0x29
	.uaword	.LVL17
	.uaword	0xe08
	.byte	0
	.uleb128 0x29
	.uaword	.LVL12
	.uaword	0xe2e
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x622
	.uaword	.LBB291
	.uaword	.LBE291
	.byte	0x1
	.byte	0xb5
	.uaword	0xc3f
	.uleb128 0x20
	.uaword	0x647
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	0x547
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x562
	.uaword	.LLST19
	.uleb128 0x1e
	.uaword	0x4ca
	.uaword	.LBB293
	.uaword	.LBE293
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4e4
	.uaword	.LLST19
	.uleb128 0x1b
	.uaword	.LBB294
	.uaword	.LBE294
	.uleb128 0x1c
	.uaword	0x4f2
	.uleb128 0x1e
	.uaword	0x465
	.uaword	.LBB295
	.uaword	.LBE295
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x47d
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LBB296
	.uaword	.LBE296
	.byte	0x8
	.uahalf	0x244
	.uaword	0xc19
	.uleb128 0x20
	.uaword	0x437
	.uaword	.LLST19
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST23
	.byte	0
	.uleb128 0x1e
	.uaword	0x445
	.uaword	.LBB298
	.uaword	.LBE298
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3e0
	.uaword	.LBB299
	.uaword	.LBE299
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL10
	.uaword	0xe4b
	.byte	0
	.uleb128 0x2a
	.uaword	0x1ea
	.uaword	0xc54
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_std_thread_tos"
	.byte	0xb
	.byte	0x5d
	.uaword	0xc6f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc49
	.uleb128 0x2c
	.string	"EE_IRQ_nesting_level"
	.byte	0x5
	.byte	0x39
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_tc_active_tos"
	.byte	0xa
	.byte	0xbe
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_std_endcycle_next_tid"
	.byte	0x6
	.byte	0x41
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0xc49
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x217
	.uaword	0xcef
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0xce4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0xd1d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc49
	.uleb128 0x2c
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0xd3f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc49
	.uleb128 0x2c
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0xc49
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0xc49
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x2
	.byte	0x33
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x2
	.byte	0x3a
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_ApplicationMode"
	.byte	0x2
	.byte	0x3d
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x6
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0xe2e
	.uleb128 0x2f
	.uaword	0x217
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x3
	.byte	0xd4
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.uaword	0x217
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
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
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
.LLST15:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB282-.Ltext0
	.uaword	.LBE282-.Ltext0
	.uaword	.LBB301-.Ltext0
	.uaword	.LBE301-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB284-.Ltext0
	.uaword	.LBE284-.Ltext0
	.uaword	.LBB287-.Ltext0
	.uaword	.LBE287-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"__regaddr"
	.extern	EE_std_change_context,STT_FUNC,0
	.extern	EE_th_waswaiting,STT_OBJECT,-1
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.extern	EE_stkfirst,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
