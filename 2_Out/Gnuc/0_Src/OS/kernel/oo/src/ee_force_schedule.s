	.file	"ee_force_schedule.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_ForceSchedule
	.type	EE_oo_ForceSchedule, @function
EE_oo_ForceSchedule:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_force_schedule.c"
	.loc 1 76 0
.LVL0:
.LBB233:
.LBB234:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE234:
.LBE233:
	.loc 1 89 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
.LBB239:
.LBB240:
.LBB241:
.LBB242:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE242:
.LBE241:
.LBE240:
.LBE239:
.LBB243:
.LBB244:
.LBB245:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE245:
.LBE244:
.LBE243:
.LBE238:
.LBE237:
.LBE236:
.LBE235:
.LBB246:
.LBB247:
.LBB248:
.LBB249:
.LBB250:
.LBB251:
.LBB252:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE252:
.LBE251:
.LBB253:
.LBB254:
.LBB255:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE255:
.LBE254:
.LBE253:
.LBE250:
.LBE249:
.LBE248:
.LBE247:
.LBE246:
	.loc 1 98 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
.LBB256:
.LBB257:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 4 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE257:
.LBE256:
	.loc 1 102 0
	ld.w	%d15, [%a15] lo:EE_IRQ_nesting_level
	jz	%d15, .L4
.LVL5:
.LBB258:
.LBB259:
.LBB260:
.LBB261:
.LBB262:
.LBB263:
.LBB264:
.LBB265:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE265:
.LBE264:
.LBE263:
.LBE262:
.LBB266:
.LBB267:
.LBB268:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE268:
.LBE267:
.LBE266:
.LBE261:
.LBE260:
.LBE259:
.LBE258:
.LBB269:
.LBB270:
.LBB271:
.LBB272:
.LBB273:
.LBB274:
.LBB275:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE275:
.LBE274:
.LBB276:
.LBB277:
.LBB278:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE278:
.LBE277:
.LBE276:
.LBE273:
.LBE272:
.LBE271:
.LBE270:
.LBE269:
	.loc 1 111 0
	mov	%d2, 2
	ret
.LVL8:
.L4:
.LBB279:
.LBB280:
.LBB281:
.LBB282:
.LBB283:
.LBB284:
.LBB285:
.LBB286:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL9:
#NO_APP
.LBE286:
.LBE285:
.LBE284:
.LBE283:
.LBB287:
.LBB288:
.LBB289:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE289:
.LBE288:
.LBE287:
.LBE282:
.LBE281:
.LBE280:
.LBE279:
.LBB290:
.LBB291:
.LBB292:
.LBB293:
	.file 5 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 5 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d8, [%a15] lo:EE_stkfirst
.LBE293:
.LBE292:
	.loc 2 349 0
	call	EE_rq_queryfirst
.LVL10:
	.loc 2 351 0
	jeq	%d2, -1, .L5
	.loc 2 354 0
	movh.a	%a2, hi:EE_th_ready_prio
	sh	%d2, 2
.LVL11:
	lea	%a2, [%a2] lo:EE_th_ready_prio
	addsc.a	%a2, %a2, %d2, 0
	movh.a	%a15, hi:EE_sys_ceiling
	ld.w	%d3, [%a15] lo:EE_sys_ceiling
	ld.w	%d4, [%a2]0
	jge.u	%d3, %d4, .L5
	movh.a	%a3, hi:EE_th_status
	lea	%a3, [%a3] lo:EE_th_status
	.loc 2 355 0
	jeq	%d8, -1, .L6
	.loc 2 358 0
	mov	%d4, 2
	addsc.a	%a2, %a3, %d8, 2
	st.w	[%a2]0, %d4
.L6:
	.loc 2 365 0
	movh.a	%a2, hi:EE_th_dispatch_prio
	lea	%a2, [%a2] lo:EE_th_dispatch_prio
	addsc.a	%a2, %a2, %d2, 0
	.loc 2 367 0
	mov	%d8, 0
	.loc 2 365 0
	ld.w	%d4, [%a2]0
	or	%d3, %d4
	st.w	[%a15] lo:EE_sys_ceiling, %d3
	.loc 2 367 0
	addsc.a	%a15, %a3, %d2, 0
	st.w	[%a15]0, %d8
.LBB294:
.LBB295:
	.loc 2 288 0
	movh.a	%a15, hi:EE_th_waswaiting
	.loc 2 287 0
	call	EE_rq2stk_exchange
.LVL12:
	.loc 2 288 0
	lea	%a15, [%a15] lo:EE_th_waswaiting
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d3, [%a15]0
	jz	%d3, .L7
.LBB296:
.LBB297:
	.file 6 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 6 201 0
	insert	%d4, %d2, 15, 31, 1
.LBE297:
.LBE296:
	.loc 2 290 0
	st.w	[%a15]0, %d8
.LVL13:
.LBB299:
.LBB298:
	.loc 6 201 0
	call	EE_std_change_context
.LVL14:
.L5:
.LBE298:
.LBE299:
.LBE295:
.LBE294:
.LBE291:
.LBE290:
.LBB305:
.LBB306:
.LBB307:
.LBB308:
.LBB309:
.LBB310:
.LBB311:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE311:
.LBE310:
.LBB312:
.LBB313:
.LBB314:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE314:
.LBE313:
.LBE312:
.LBE309:
.LBE308:
.LBE307:
.LBE306:
.LBE305:
	.loc 1 124 0
	mov	%d2, 0
	.loc 1 126 0
	ret
.LVL15:
.L7:
.LBB315:
.LBB304:
.LBB303:
.LBB302:
.LBB300:
.LBB301:
	.loc 6 214 0
	mov	%d4, %d2
	call	EE_std_change_context
.LVL16:
	j	.L5
.LBE301:
.LBE300:
.LBE302:
.LBE303:
.LBE304:
.LBE315:
.LFE92:
	.size	EE_oo_ForceSchedule, .-EE_oo_ForceSchedule
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
	.uaword	0xeb4
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_force_schedule.c"
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
	.uaword	0x1c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x7
	.byte	0x4c
	.uaword	0x1e0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x8
	.byte	0x7b
	.uaword	0x1cf
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x8
	.byte	0x7c
	.uaword	0x1b8
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x8
	.byte	0x7d
	.uaword	0x1cf
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x8
	.byte	0x80
	.uaword	0x1b8
	.uleb128 0x3
	.string	"EE_UTID"
	.byte	0x8
	.byte	0x83
	.uaword	0x1cf
	.uleb128 0x4
	.byte	0x4
	.byte	0x8
	.uahalf	0x134
	.uaword	0x390
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x1f0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x1f0
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.uahalf	0x133
	.uaword	0x3b3
	.uleb128 0x7
	.string	"bits"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x23a
	.uleb128 0x7
	.string	"reg"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x1f0
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x390
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x175
	.uleb128 0x8
	.string	"TaskType"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x21d
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
	.uaword	0x1e0
	.byte	0x3
	.uaword	0x41e
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x41e
	.uleb128 0xc
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1e0
	.byte	0
	.uleb128 0xd
	.uaword	0x1e0
	.uleb128 0xe
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x44b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x41e
	.uleb128 0xf
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x41e
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_isync"
	.byte	0x8
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
	.byte	0x8
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x490
	.uleb128 0x12
	.string	"icr"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x3b3
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_get_ICR"
	.byte	0x8
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3b3
	.byte	0x3
	.uaword	0x4b9
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x3b3
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
	.uaword	0x505
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x37d
	.uaword	0x20e
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x3b3
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_suspendIRQ"
	.byte	0x8
	.uahalf	0x384
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uaword	0x531
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x3b3
	.byte	0
	.uleb128 0x15
	.string	"EE_hal_suspendIRQ"
	.byte	0x8
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_resumeIRQ"
	.byte	0x8
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x577
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x3ed
	.uaword	0x20e
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_stkchange"
	.byte	0x6
	.byte	0xc6
	.byte	0x1
	.byte	0x3
	.uaword	0x5a8
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xc6
	.uaword	0x21d
	.uleb128 0xc
	.string	"tmp"
	.byte	0x6
	.byte	0xc8
	.uaword	0x22b
	.byte	0
	.uleb128 0x16
	.string	"EE_stk_queryfirst"
	.byte	0x5
	.byte	0x43
	.byte	0x1
	.uaword	0x21d
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_run_next_task"
	.byte	0x2
	.uahalf	0x11b
	.byte	0x1
	.byte	0x3
	.uaword	0x5ee
	.uleb128 0x14
	.string	"tmp"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x3d5
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x1ff
	.byte	0x3
	.uaword	0x62c
	.uleb128 0xc
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x1ff
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_begin_nested_primitive"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.uaword	0x20e
	.byte	0x3
	.uleb128 0xe
	.string	"EE_hal_end_nested_primitive"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x686
	.uleb128 0xf
	.string	"flags"
	.byte	0xa
	.byte	0x73
	.uaword	0x20e
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x4
	.byte	0x3b
	.byte	0x1
	.uaword	0x1f0
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_preemption_point"
	.byte	0x2
	.uahalf	0x157
	.byte	0x1
	.byte	0x3
	.uaword	0x6e9
	.uleb128 0x14
	.string	"current"
	.byte	0x2
	.uahalf	0x159
	.uaword	0x21d
	.uleb128 0x14
	.string	"rq"
	.byte	0x2
	.uahalf	0x159
	.uaword	0x21d
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_ready2stacked"
	.byte	0x6
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.uaword	0x713
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xd4
	.uaword	0x21d
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"EE_oo_ForceSchedule"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x3c2
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc9a
	.uleb128 0xc
	.string	"flag"
	.byte	0x1
	.byte	0x4d
	.uaword	0x20e
	.uleb128 0x18
	.uaword	0x5ee
	.uaword	.LBB233
	.uaword	.LBE233
	.byte	0x1
	.byte	0x59
	.uaword	0x76e
	.uleb128 0x19
	.uaword	.LBB234
	.uaword	.LBE234
	.uleb128 0x1a
	.uaword	0x618
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x62c
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x1
	.byte	0x5c
	.uaword	0x824
	.uleb128 0x1b
	.uaword	0x531
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1c
	.uaword	0x505
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x19
	.uaword	.LBB238
	.uaword	.LBE238
	.uleb128 0x1a
	.uaword	0x524
	.uleb128 0x1d
	.uaword	0x490
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x8
	.uahalf	0x386
	.uaword	0x7ff
	.uleb128 0x19
	.uaword	.LBB240
	.uaword	.LBE240
	.uleb128 0x1a
	.uaword	0x4ac
	.uleb128 0x1c
	.uaword	0x3f2
	.uaword	.LBB241
	.uaword	.LBE241
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x1e
	.uaword	0x405
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	.LBB242
	.uaword	.LBE242
	.uleb128 0x1f
	.uaword	0x410
	.uaword	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x4b9
	.uaword	.LBB243
	.uaword	.LBE243
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x20
	.uaword	0x45d
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x653
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x1
	.byte	0x5e
	.uaword	0x8e1
	.uleb128 0x1e
	.uaword	0x678
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	0x54d
	.uaword	.LBB247
	.uaword	.LBE247
	.byte	0xa
	.byte	0x75
	.uleb128 0x1e
	.uaword	0x568
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	0x4d0
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x1e
	.uaword	0x4ea
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	.LBB249
	.uaword	.LBE249
	.uleb128 0x1a
	.uaword	0x4f8
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x21
	.uaword	0x483
	.uleb128 0x1d
	.uaword	0x423
	.uaword	.LBB251
	.uaword	.LBE251
	.byte	0x8
	.uahalf	0x244
	.uaword	0x8bb
	.uleb128 0x1e
	.uaword	0x43d
	.uaword	.LLST2
	.uleb128 0x1e
	.uaword	0x432
	.uaword	.LLST6
	.byte	0
	.uleb128 0x1c
	.uaword	0x44b
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x20
	.uaword	0x3e6
	.uaword	.LBB254
	.uaword	.LBE254
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x686
	.uaword	.LBB256
	.uaword	.LBE256
	.byte	0x1
	.byte	0x66
	.uleb128 0x18
	.uaword	0x62c
	.uaword	.LBB258
	.uaword	.LBE258
	.byte	0x1
	.byte	0x69
	.uaword	0x9a6
	.uleb128 0x1b
	.uaword	0x531
	.uaword	.LBB259
	.uaword	.LBE259
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1c
	.uaword	0x505
	.uaword	.LBB260
	.uaword	.LBE260
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x19
	.uaword	.LBB261
	.uaword	.LBE261
	.uleb128 0x1a
	.uaword	0x524
	.uleb128 0x1d
	.uaword	0x490
	.uaword	.LBB262
	.uaword	.LBE262
	.byte	0x8
	.uahalf	0x386
	.uaword	0x981
	.uleb128 0x19
	.uaword	.LBB263
	.uaword	.LBE263
	.uleb128 0x1a
	.uaword	0x4ac
	.uleb128 0x1c
	.uaword	0x3f2
	.uaword	.LBB264
	.uaword	.LBE264
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x1e
	.uaword	0x405
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	.LBB265
	.uaword	.LBE265
	.uleb128 0x1f
	.uaword	0x410
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x4b9
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x20
	.uaword	0x45d
	.uaword	.LBB267
	.uaword	.LBE267
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x653
	.uaword	.LBB269
	.uaword	.LBE269
	.byte	0x1
	.byte	0x6b
	.uaword	0xa63
	.uleb128 0x1e
	.uaword	0x678
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	0x54d
	.uaword	.LBB270
	.uaword	.LBE270
	.byte	0xa
	.byte	0x75
	.uleb128 0x1e
	.uaword	0x568
	.uaword	.LLST9
	.uleb128 0x1c
	.uaword	0x4d0
	.uaword	.LBB271
	.uaword	.LBE271
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x1e
	.uaword	0x4ea
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	.LBB272
	.uaword	.LBE272
	.uleb128 0x1a
	.uaword	0x4f8
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LBB273
	.uaword	.LBE273
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x21
	.uaword	0x483
	.uleb128 0x1d
	.uaword	0x423
	.uaword	.LBB274
	.uaword	.LBE274
	.byte	0x8
	.uahalf	0x244
	.uaword	0xa3d
	.uleb128 0x1e
	.uaword	0x43d
	.uaword	.LLST9
	.uleb128 0x1e
	.uaword	0x432
	.uaword	.LLST13
	.byte	0
	.uleb128 0x1c
	.uaword	0x44b
	.uaword	.LBB276
	.uaword	.LBE276
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x20
	.uaword	0x3e6
	.uaword	.LBB277
	.uaword	.LBE277
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x62c
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x1
	.byte	0x73
	.uaword	0xb15
	.uleb128 0x1b
	.uaword	0x531
	.uaword	.LBB280
	.uaword	.LBE280
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1c
	.uaword	0x505
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x19
	.uaword	.LBB282
	.uaword	.LBE282
	.uleb128 0x1a
	.uaword	0x524
	.uleb128 0x1d
	.uaword	0x490
	.uaword	.LBB283
	.uaword	.LBE283
	.byte	0x8
	.uahalf	0x386
	.uaword	0xaf0
	.uleb128 0x19
	.uaword	.LBB284
	.uaword	.LBE284
	.uleb128 0x1a
	.uaword	0x4ac
	.uleb128 0x1c
	.uaword	0x3f2
	.uaword	.LBB285
	.uaword	.LBE285
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x23
	.uaword	0x405
	.uahalf	0xfe2c
	.uleb128 0x19
	.uaword	.LBB286
	.uaword	.LBE286
	.uleb128 0x24
	.uaword	0x410
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x4b9
	.uaword	.LBB287
	.uaword	.LBE287
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x20
	.uaword	0x45d
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x6ac
	.uaword	.LBB290
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x75
	.uaword	0xbe0
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1a
	.uaword	0x6cd
	.uleb128 0x1f
	.uaword	0x6dd
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	0x5a8
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0x2
	.uahalf	0x15c
	.uleb128 0x27
	.uaword	0x5c3
	.uaword	.LBB294
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x176
	.uaword	0xbd5
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.uaword	0x5e1
	.uaword	.LLST15
	.uleb128 0x27
	.uaword	0x577
	.uaword	.LBB296
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x2
	.uahalf	0x123
	.uaword	0xba3
	.uleb128 0x1e
	.uaword	0x591
	.uaword	.LLST16
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x1f
	.uaword	0x59c
	.uaword	.LLST17
	.uleb128 0x28
	.uaword	.LVL14
	.uaword	0xe59
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x6e9
	.uaword	.LBB300
	.uaword	.LBE300
	.byte	0x2
	.uahalf	0x126
	.uaword	0xbca
	.uleb128 0x1e
	.uaword	0x707
	.uaword	.LLST18
	.uleb128 0x28
	.uaword	.LVL16
	.uaword	0xe59
	.byte	0
	.uleb128 0x28
	.uaword	.LVL12
	.uaword	0xe7f
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL10
	.uaword	0xe9c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x653
	.uaword	.LBB305
	.uaword	.LBE305
	.byte	0x1
	.byte	0x77
	.uleb128 0x1e
	.uaword	0x678
	.uaword	.LLST19
	.uleb128 0x1b
	.uaword	0x54d
	.uaword	.LBB306
	.uaword	.LBE306
	.byte	0xa
	.byte	0x75
	.uleb128 0x1e
	.uaword	0x568
	.uaword	.LLST19
	.uleb128 0x1c
	.uaword	0x4d0
	.uaword	.LBB307
	.uaword	.LBE307
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x1e
	.uaword	0x4ea
	.uaword	.LLST19
	.uleb128 0x19
	.uaword	.LBB308
	.uaword	.LBE308
	.uleb128 0x1a
	.uaword	0x4f8
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x21
	.uaword	0x483
	.uleb128 0x1d
	.uaword	0x423
	.uaword	.LBB310
	.uaword	.LBE310
	.byte	0x8
	.uahalf	0x244
	.uaword	0xc73
	.uleb128 0x1e
	.uaword	0x43d
	.uaword	.LLST19
	.uleb128 0x1e
	.uaword	0x432
	.uaword	.LLST23
	.byte	0
	.uleb128 0x1c
	.uaword	0x44b
	.uaword	.LBB312
	.uaword	.LBE312
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x20
	.uaword	0x3e6
	.uaword	.LBB313
	.uaword	.LBE313
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x1f0
	.uaword	0xca5
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_std_thread_tos"
	.byte	0xb
	.byte	0x5d
	.uaword	0xcc0
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc9a
	.uleb128 0x2b
	.string	"EE_IRQ_nesting_level"
	.byte	0x4
	.byte	0x39
	.uaword	0x1f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_tc_active_tos"
	.byte	0xa
	.byte	0xbe
	.uaword	0x1f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_std_endcycle_next_tid"
	.byte	0x6
	.byte	0x41
	.uaword	0x21d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0xc9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x21d
	.uaword	0xd40
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0xd35
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0xd6e
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc9a
	.uleb128 0x2b
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0xd90
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc9a
	.uleb128 0x2b
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x21d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x1f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0xc9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0xc9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x5
	.byte	0x33
	.uaword	0x1f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x5
	.byte	0x3a
	.uaword	0x20e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_ApplicationMode"
	.byte	0x5
	.byte	0x3d
	.uaword	0x1f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x6
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0xe7f
	.uleb128 0x2e
	.uaword	0x21d
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x2
	.byte	0xd4
	.byte	0x1
	.uaword	0x21d
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.uaword	0x21d
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-1-.Ltext0
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
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB290-.Ltext0
	.uaword	.LBE290-.Ltext0
	.uaword	.LBB315-.Ltext0
	.uaword	.LBE315-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB294-.Ltext0
	.uaword	.LBE294-.Ltext0
	.uaword	.LBB303-.Ltext0
	.uaword	.LBE303-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB296-.Ltext0
	.uaword	.LBE296-.Ltext0
	.uaword	.LBB299-.Ltext0
	.uaword	.LBE299-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"__regaddr"
	.extern	EE_std_change_context,STT_FUNC,0
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_th_waswaiting,STT_OBJECT,-1
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
