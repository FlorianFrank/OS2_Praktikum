	.file	"ee_activate.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_ActivateTask
	.type	EE_oo_ActivateTask, @function
EE_oo_ActivateTask:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_activate.c"
	.loc 1 61 0
.LVL0:
.LBB264:
.LBB265:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE265:
.LBE264:
	.loc 1 87 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB266:
.LBB267:
.LBB268:
.LBB269:
.LBB270:
.LBB271:
.LBB272:
.LBB273:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE273:
.LBE272:
.LBE271:
.LBE270:
.LBB274:
.LBB275:
.LBB276:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE276:
.LBE275:
.LBE274:
.LBE269:
.LBE268:
.LBE267:
.LBE266:
.LBB277:
.LBB278:
.LBB279:
.LBB280:
.LBB281:
.LBB282:
.LBB283:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE283:
.LBE282:
.LBB284:
.LBB285:
.LBB286:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE286:
.LBE285:
.LBE284:
.LBE281:
.LBE280:
.LBE279:
.LBE278:
.LBE277:
	.loc 1 96 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 101 0
	jlt.u	%d4, 14, .L4
.LVL5:
.LBB287:
.LBB288:
.LBB289:
.LBB290:
.LBB291:
.LBB292:
.LBB293:
.LBB294:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE294:
.LBE293:
.LBE292:
.LBE291:
.LBB295:
.LBB296:
.LBB297:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE297:
.LBE296:
.LBE295:
.LBE290:
.LBE289:
.LBE288:
.LBE287:
.LBB298:
.LBB299:
.LBB300:
.LBB301:
.LBB302:
.LBB303:
.LBB304:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE304:
.LBE303:
.LBB305:
.LBB306:
.LBB307:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE307:
.LBE306:
.LBE305:
.LBE302:
.LBE301:
.LBE300:
.LBE299:
.LBE298:
	.loc 1 110 0
	mov	%d2, 3
	ret
.LVL8:
.L4:
.LBB308:
.LBB309:
.LBB310:
.LBB311:
.LBB312:
.LBB313:
.LBB314:
.LBB315:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL9:
#NO_APP
.LBE315:
.LBE314:
.LBE313:
.LBE312:
.LBB316:
.LBB317:
.LBB318:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE318:
.LBE317:
.LBE316:
.LBE311:
.LBE310:
.LBE309:
.LBE308:
	.loc 1 117 0
	movh.a	%a15, hi:EE_th_rnact
	sh	%d2, %d4, 2
	lea	%a15, [%a15] lo:EE_th_rnact
	addsc.a	%a15, %a15, %d2, 0
	ld.w	%d3, [%a15]0
	jnz	%d3, .L5
.LVL10:
.LBB319:
.LBB320:
.LBB321:
.LBB322:
.LBB323:
.LBB324:
.LBB325:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d8
	# 0 "" 2
#NO_APP
.LBE325:
.LBE324:
.LBB326:
.LBB327:
.LBB328:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE328:
.LBE327:
.LBE326:
.LBE323:
.LBE322:
.LBE321:
.LBE320:
.LBE319:
	.loc 1 125 0
	mov	%d2, 4
	ret
.LVL11:
.L5:
	.loc 1 127 0
	add	%d3, -1
.LBB329:
.LBB330:
	.loc 2 318 0
	movh.a	%a12, hi:EE_th_status
	lea	%a12, [%a12] lo:EE_th_status
.LBE330:
.LBE329:
	.loc 1 127 0
	st.w	[%a15]0, %d3
.LVL12:
.LBB335:
.LBB333:
	.loc 2 318 0
	addsc.a	%a15, %a12, %d2, 0
	ld.w	%d3, [%a15]0
	jeq	%d3, 3, .L19
.L6:
.LBE333:
.LBE335:
.LBB336:
.LBB337:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 4 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE337:
.LBE336:
	.loc 1 139 0
	call	EE_rq_insert
.LVL13:
	.loc 1 143 0
	ld.w	%d15, [%a15] lo:EE_IRQ_nesting_level
	jnz	%d15, .L8
	.loc 1 145 0
	movh.a	%a15, hi:EE_oo_no_preemption
	ld.w	%d15, [%a15] lo:EE_oo_no_preemption
	jz	%d15, .L20
.L8:
.LVL14:
.LBB338:
.LBB339:
.LBB340:
.LBB341:
.LBB342:
.LBB343:
.LBB344:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d8
	# 0 "" 2
#NO_APP
.LBE344:
.LBE343:
.LBB345:
.LBB346:
.LBB347:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE347:
.LBE346:
.LBE345:
.LBE342:
.LBE341:
.LBE340:
.LBE339:
.LBE338:
	.loc 1 156 0
	mov	%d2, 0
	.loc 1 157 0
	ret
.LVL15:
.L19:
.LBB348:
.LBB334:
	.loc 2 319 0
	mov	%d3, 2
	st.w	[%a15]0, %d3
.LVL16:
.LBB331:
.LBB332:
	.loc 2 277 0
	movh.a	%a15, hi:EE_th_event_active
	lea	%a15, [%a15] lo:EE_th_event_active
	addsc.a	%a15, %a15, %d2, 0
	st.w	[%a15]0, %d15
	j	.L6
.LVL17:
.L20:
.LBE332:
.LBE331:
.LBE334:
.LBE348:
.LBB349:
.LBB350:
.LBB351:
.LBB352:
	.file 5 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 5 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d9, [%a15] lo:EE_stkfirst
.LBE352:
.LBE351:
	.loc 2 349 0
	call	EE_rq_queryfirst
.LVL18:
	.loc 2 351 0
	jeq	%d2, -1, .L8
	.loc 2 354 0
	movh.a	%a15, hi:EE_th_ready_prio
	sh	%d2, 2
.LVL19:
	lea	%a15, [%a15] lo:EE_th_ready_prio
	addsc.a	%a15, %a15, %d2, 0
	movh.a	%a2, hi:EE_sys_ceiling
	ld.w	%d15, [%a2] lo:EE_sys_ceiling
	ld.w	%d3, [%a15]0
	jge.u	%d15, %d3, .L8
	.loc 2 355 0
	jeq	%d9, -1, .L10
	.loc 2 358 0
	mov	%d3, 2
	addsc.a	%a15, %a12, %d9, 2
	st.w	[%a15]0, %d3
.L10:
	.loc 2 365 0
	movh.a	%a15, hi:EE_th_dispatch_prio
	lea	%a15, [%a15] lo:EE_th_dispatch_prio
	addsc.a	%a15, %a15, %d2, 0
	.loc 2 367 0
	addsc.a	%a12, %a12, %d2, 0
	.loc 2 365 0
	ld.w	%d3, [%a15]0
.LBB353:
.LBB354:
	.loc 2 288 0
	movh.a	%a15, hi:EE_th_waswaiting
.LBE354:
.LBE353:
	.loc 2 365 0
	or	%d15, %d3
.LBB363:
.LBB361:
	.loc 2 288 0
	lea	%a15, [%a15] lo:EE_th_waswaiting
.LBE361:
.LBE363:
	.loc 2 365 0
	st.w	[%a2] lo:EE_sys_ceiling, %d15
	.loc 2 367 0
	mov	%d15, 0
	st.w	[%a12]0, %d15
.LBB364:
.LBB362:
	.loc 2 287 0
	call	EE_rq2stk_exchange
.LVL20:
	.loc 2 288 0
	addsc.a	%a15, %a15, %d2, 2
	.loc 2 287 0
	mov	%d4, %d2
.LVL21:
	.loc 2 288 0
	ld.w	%d2, [%a15]0
.LVL22:
	jz	%d2, .L11
.LBB355:
.LBB356:
	.file 6 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 6 201 0
	insert	%d4, %d4, 15, 31, 1
.LVL23:
.LBE356:
.LBE355:
	.loc 2 290 0
	st.w	[%a15]0, %d15
.LBB358:
.LBB357:
	.loc 6 201 0
	call	EE_std_change_context
.LVL24:
	j	.L8
.LVL25:
.L11:
.LBE357:
.LBE358:
.LBB359:
.LBB360:
	.loc 6 214 0
	call	EE_std_change_context
.LVL26:
	j	.L8
.LBE360:
.LBE359:
.LBE362:
.LBE364:
.LBE350:
.LBE349:
.LFE92:
	.size	EE_oo_ActivateTask, .-EE_oo_ActivateTask
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
	.uaword	0x1058
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_activate.c"
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
	.uaword	0x418
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x418
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
	.uaword	0x445
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x418
	.uleb128 0xf
	.string	"__val"
	.byte	0x3
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
	.uleb128 0x11
	.string	"EE_oo_reset_th_event_active"
	.byte	0x2
	.uahalf	0x113
	.byte	0x1
	.byte	0x3
	.uaword	0x5d5
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x113
	.uaword	0x3cf
	.byte	0
	.uleb128 0x17
	.string	"EE_stk_queryfirst"
	.byte	0x5
	.byte	0x43
	.byte	0x1
	.uaword	0x217
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_run_next_task"
	.byte	0x2
	.uahalf	0x11b
	.byte	0x1
	.byte	0x3
	.uaword	0x61b
	.uleb128 0x14
	.string	"tmp"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x3cf
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x1f9
	.byte	0x3
	.uaword	0x659
	.uleb128 0xc
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x1f9
	.byte	0
	.uleb128 0x17
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
	.uaword	0x6b3
	.uleb128 0xf
	.string	"flags"
	.byte	0xa
	.byte	0x73
	.uaword	0x208
	.byte	0
	.uleb128 0x11
	.string	"EE_oo_set_th_status_ready"
	.byte	0x2
	.uahalf	0x13c
	.byte	0x1
	.byte	0x3
	.uaword	0x6e4
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x13c
	.uaword	0x3cf
	.byte	0
	.uleb128 0x17
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x4
	.byte	0x3b
	.byte	0x1
	.uaword	0x1ea
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_preemption_point"
	.byte	0x2
	.uahalf	0x157
	.byte	0x1
	.byte	0x3
	.uaword	0x747
	.uleb128 0x14
	.string	"current"
	.byte	0x2
	.uahalf	0x159
	.uaword	0x217
	.uleb128 0x14
	.string	"rq"
	.byte	0x2
	.uahalf	0x159
	.uaword	0x217
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_ready2stacked"
	.byte	0x6
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.uaword	0x771
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xd4
	.uaword	0x217
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"EE_oo_ActivateTask"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x3bc
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdf3
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3c
	.uaword	0x3cf
	.uaword	.LLST0
	.uleb128 0xc
	.string	"flag"
	.byte	0x1
	.byte	0x3e
	.uaword	0x208
	.uleb128 0x1a
	.uaword	0x61b
	.uaword	.LBB264
	.uaword	.LBE264
	.byte	0x1
	.byte	0x57
	.uaword	0x7da
	.uleb128 0x1b
	.uaword	.LBB265
	.uaword	.LBE265
	.uleb128 0x1c
	.uaword	0x645
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x659
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x1
	.byte	0x5a
	.uaword	0x890
	.uleb128 0x1d
	.uaword	0x52b
	.uaword	.LBB267
	.uaword	.LBE267
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4ff
	.uaword	.LBB268
	.uaword	.LBE268
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB269
	.uaword	.LBE269
	.uleb128 0x1c
	.uaword	0x51e
	.uleb128 0x1f
	.uaword	0x48a
	.uaword	.LBB270
	.uaword	.LBE270
	.byte	0x8
	.uahalf	0x386
	.uaword	0x86b
	.uleb128 0x1b
	.uaword	.LBB271
	.uaword	.LBE271
	.uleb128 0x1c
	.uaword	0x4a6
	.uleb128 0x1e
	.uaword	0x3ec
	.uaword	.LBB272
	.uaword	.LBE272
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x3ff
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LBB273
	.uaword	.LBE273
	.uleb128 0x21
	.uaword	0x40a
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4b3
	.uaword	.LBB274
	.uaword	.LBE274
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x457
	.uaword	.LBB275
	.uaword	.LBE275
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x680
	.uaword	.LBB277
	.uaword	.LBE277
	.byte	0x1
	.byte	0x5c
	.uaword	0x94d
	.uleb128 0x20
	.uaword	0x6a5
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x547
	.uaword	.LBB278
	.uaword	.LBE278
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x562
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x4ca
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4e4
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	.LBB280
	.uaword	.LBE280
	.uleb128 0x1c
	.uaword	0x4f2
	.uleb128 0x1e
	.uaword	0x465
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x47d
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LBB282
	.uaword	.LBE282
	.byte	0x8
	.uahalf	0x244
	.uaword	0x927
	.uleb128 0x20
	.uaword	0x437
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1e
	.uaword	0x445
	.uaword	.LBB284
	.uaword	.LBE284
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3e0
	.uaword	.LBB285
	.uaword	.LBE285
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x659
	.uaword	.LBB287
	.uaword	.LBE287
	.byte	0x1
	.byte	0x68
	.uaword	0xa03
	.uleb128 0x1d
	.uaword	0x52b
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4ff
	.uaword	.LBB289
	.uaword	.LBE289
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB290
	.uaword	.LBE290
	.uleb128 0x1c
	.uaword	0x51e
	.uleb128 0x1f
	.uaword	0x48a
	.uaword	.LBB291
	.uaword	.LBE291
	.byte	0x8
	.uahalf	0x386
	.uaword	0x9de
	.uleb128 0x1b
	.uaword	.LBB292
	.uaword	.LBE292
	.uleb128 0x1c
	.uaword	0x4a6
	.uleb128 0x1e
	.uaword	0x3ec
	.uaword	.LBB293
	.uaword	.LBE293
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x3ff
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	.LBB294
	.uaword	.LBE294
	.uleb128 0x21
	.uaword	0x40a
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4b3
	.uaword	.LBB295
	.uaword	.LBE295
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x457
	.uaword	.LBB296
	.uaword	.LBE296
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x680
	.uaword	.LBB298
	.uaword	.LBE298
	.byte	0x1
	.byte	0x6a
	.uaword	0xac0
	.uleb128 0x20
	.uaword	0x6a5
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	0x547
	.uaword	.LBB299
	.uaword	.LBE299
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x562
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x4ca
	.uaword	.LBB300
	.uaword	.LBE300
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4e4
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	.LBB301
	.uaword	.LBE301
	.uleb128 0x1c
	.uaword	0x4f2
	.uleb128 0x1e
	.uaword	0x465
	.uaword	.LBB302
	.uaword	.LBE302
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x47d
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LBB303
	.uaword	.LBE303
	.byte	0x8
	.uahalf	0x244
	.uaword	0xa9a
	.uleb128 0x20
	.uaword	0x437
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST14
	.byte	0
	.uleb128 0x1e
	.uaword	0x445
	.uaword	.LBB305
	.uaword	.LBE305
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3e0
	.uaword	.LBB306
	.uaword	.LBE306
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x659
	.uaword	.LBB308
	.uaword	.LBE308
	.byte	0x1
	.byte	0x72
	.uaword	0xb72
	.uleb128 0x1d
	.uaword	0x52b
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4ff
	.uaword	.LBB310
	.uaword	.LBE310
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB311
	.uaword	.LBE311
	.uleb128 0x1c
	.uaword	0x51e
	.uleb128 0x1f
	.uaword	0x48a
	.uaword	.LBB312
	.uaword	.LBE312
	.byte	0x8
	.uahalf	0x386
	.uaword	0xb4d
	.uleb128 0x1b
	.uaword	.LBB313
	.uaword	.LBE313
	.uleb128 0x1c
	.uaword	0x4a6
	.uleb128 0x1e
	.uaword	0x3ec
	.uaword	.LBB314
	.uaword	.LBE314
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x24
	.uaword	0x3ff
	.uahalf	0xfe2c
	.uleb128 0x1b
	.uaword	.LBB315
	.uaword	.LBE315
	.uleb128 0x25
	.uaword	0x40a
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4b3
	.uaword	.LBB316
	.uaword	.LBE316
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x457
	.uaword	.LBB317
	.uaword	.LBE317
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x680
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0x1
	.byte	0x7a
	.uaword	0xc1f
	.uleb128 0x23
	.uaword	0x6a5
	.uleb128 0x1d
	.uaword	0x547
	.uaword	.LBB320
	.uaword	.LBE320
	.byte	0xa
	.byte	0x75
	.uleb128 0x23
	.uaword	0x562
	.uleb128 0x1e
	.uaword	0x4ca
	.uaword	.LBB321
	.uaword	.LBE321
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x4e4
	.uleb128 0x1b
	.uaword	.LBB322
	.uaword	.LBE322
	.uleb128 0x1c
	.uaword	0x4f2
	.uleb128 0x1e
	.uaword	0x465
	.uaword	.LBB323
	.uaword	.LBE323
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x47d
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LBB324
	.uaword	.LBE324
	.byte	0x8
	.uahalf	0x244
	.uaword	0xbf9
	.uleb128 0x23
	.uaword	0x437
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST15
	.byte	0
	.uleb128 0x1e
	.uaword	0x445
	.uaword	.LBB326
	.uaword	.LBE326
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3e0
	.uaword	.LBB327
	.uaword	.LBE327
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x6b3
	.uaword	.LBB329
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x88
	.uaword	0xc56
	.uleb128 0x20
	.uaword	0x6d7
	.uaword	.LLST16
	.uleb128 0x1e
	.uaword	0x5a2
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0x2
	.uahalf	0x140
	.uleb128 0x20
	.uaword	0x5c8
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x6e4
	.uaword	.LBB336
	.uaword	.LBE336
	.byte	0x1
	.byte	0x8f
	.uleb128 0x1a
	.uaword	0x680
	.uaword	.LBB338
	.uaword	.LBE338
	.byte	0x1
	.byte	0x99
	.uaword	0xd22
	.uleb128 0x20
	.uaword	0x6a5
	.uaword	.LLST18
	.uleb128 0x1d
	.uaword	0x547
	.uaword	.LBB339
	.uaword	.LBE339
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x562
	.uaword	.LLST18
	.uleb128 0x1e
	.uaword	0x4ca
	.uaword	.LBB340
	.uaword	.LBE340
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4e4
	.uaword	.LLST18
	.uleb128 0x1b
	.uaword	.LBB341
	.uaword	.LBE341
	.uleb128 0x1c
	.uaword	0x4f2
	.uleb128 0x1e
	.uaword	0x465
	.uaword	.LBB342
	.uaword	.LBE342
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x47d
	.uleb128 0x1f
	.uaword	0x41d
	.uaword	.LBB343
	.uaword	.LBE343
	.byte	0x8
	.uahalf	0x244
	.uaword	0xcfc
	.uleb128 0x20
	.uaword	0x437
	.uaword	.LLST18
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST22
	.byte	0
	.uleb128 0x1e
	.uaword	0x445
	.uaword	.LBB345
	.uaword	.LBE345
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3e0
	.uaword	.LBB346
	.uaword	.LBE346
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x70a
	.uaword	.LBB349
	.uaword	.LBE349
	.byte	0x1
	.byte	0x96
	.uaword	0xde9
	.uleb128 0x1b
	.uaword	.LBB350
	.uaword	.LBE350
	.uleb128 0x1c
	.uaword	0x72b
	.uleb128 0x21
	.uaword	0x73b
	.uaword	.LLST23
	.uleb128 0x22
	.uaword	0x5d5
	.uaword	.LBB351
	.uaword	.LBE351
	.byte	0x2
	.uahalf	0x15c
	.uleb128 0x28
	.uaword	0x5f0
	.uaword	.LBB353
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x176
	.uaword	0xdde
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x21
	.uaword	0x60e
	.uaword	.LLST24
	.uleb128 0x28
	.uaword	0x571
	.uaword	.LBB355
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x2
	.uahalf	0x123
	.uaword	0xdac
	.uleb128 0x23
	.uaword	0x58b
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x1c
	.uaword	0x596
	.uleb128 0x2a
	.uaword	.LVL24
	.uaword	0xfe4
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x747
	.uaword	.LBB359
	.uaword	.LBE359
	.byte	0x2
	.uahalf	0x126
	.uaword	0xdd3
	.uleb128 0x20
	.uaword	0x765
	.uaword	.LLST25
	.uleb128 0x2a
	.uaword	.LVL26
	.uaword	0xfe4
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL20
	.uaword	0x100a
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL18
	.uaword	0x1027
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL13
	.uaword	0x1042
	.byte	0
	.uleb128 0x2b
	.uaword	0x1ea
	.uaword	0xdfe
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.string	"EE_std_thread_tos"
	.byte	0xb
	.byte	0x5d
	.uaword	0xe19
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xdf3
	.uleb128 0x2d
	.string	"EE_IRQ_nesting_level"
	.byte	0x4
	.byte	0x39
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_tc_active_tos"
	.byte	0xa
	.byte	0xbe
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_std_endcycle_next_tid"
	.byte	0x6
	.byte	0x41
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0xdf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x217
	.uaword	0xe99
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0xe8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0xec7
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xdf3
	.uleb128 0x2d
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0xee9
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xdf3
	.uleb128 0x2d
	.string	"EE_th_rnact"
	.byte	0x9
	.byte	0xba
	.uaword	0xdf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0xdf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0xdf3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x5
	.byte	0x33
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x5
	.byte	0x3a
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_ApplicationMode"
	.byte	0x5
	.byte	0x3d
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_oo_no_preemption"
	.byte	0x2
	.byte	0x8e
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x6
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0x100a
	.uleb128 0x30
	.uaword	0x217
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x2
	.byte	0xd4
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.uaword	0x217
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"EE_rq_insert"
	.byte	0x2
	.byte	0xcf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
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
	.uleb128 0x5
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL13-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13-1-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
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
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13-1-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LBB329-.Ltext0
	.uaword	.LBE329-.Ltext0
	.uaword	.LBB335-.Ltext0
	.uaword	.LBE335-.Ltext0
	.uaword	.LBB348-.Ltext0
	.uaword	.LBE348-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB353-.Ltext0
	.uaword	.LBE353-.Ltext0
	.uaword	.LBB363-.Ltext0
	.uaword	.LBE363-.Ltext0
	.uaword	.LBB364-.Ltext0
	.uaword	.LBE364-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB355-.Ltext0
	.uaword	.LBE355-.Ltext0
	.uaword	.LBB358-.Ltext0
	.uaword	.LBE358-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"TaskID"
.LASF0:
	.string	"__regaddr"
	.extern	EE_std_change_context,STT_FUNC,0
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_th_waswaiting,STT_OBJECT,-1
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_th_event_active,STT_OBJECT,-1
	.extern	EE_oo_no_preemption,STT_OBJECT,4
	.extern	EE_rq_insert,STT_FUNC,0
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_th_rnact,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
