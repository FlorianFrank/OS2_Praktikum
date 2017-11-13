	.file	"ee_evwait.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_WaitEvent
	.type	EE_oo_WaitEvent, @function
EE_oo_WaitEvent:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_evwait.c"
	.loc 1 67 0
.LVL0:
.LBB303:
.LBB304:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a2, hi:EE_oo_IRQ_disable_count
.LBE304:
.LBE303:
	.loc 1 83 0
	ld.w	%d15, [%a2] lo:EE_oo_IRQ_disable_count
.LBB305:
.LBB306:
	.file 3 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 3 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d2, [%a15] lo:EE_stkfirst
.LVL1:
.LBE306:
.LBE305:
	.loc 1 83 0
	jz	%d15, .L2
.LVL2:
.LBB307:
.LBB308:
.LBB309:
.LBB310:
.LBB311:
.LBB312:
.LBB313:
.LBB314:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL3:
#NO_APP
.LBE314:
.LBE313:
.LBE312:
.LBE311:
.LBB315:
.LBB316:
.LBB317:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL4:
#NO_APP
.LBE317:
.LBE316:
.LBE315:
.LBE310:
.LBE309:
.LBE308:
.LBE307:
.LBB318:
.LBB319:
.LBB320:
.LBB321:
.LBB322:
.LBB323:
.LBB324:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE324:
.LBE323:
.LBB325:
.LBB326:
.LBB327:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE327:
.LBE326:
.LBE325:
.LBE322:
.LBE321:
.LBE320:
.LBE319:
.LBE318:
	.loc 1 92 0
	mov	%d2, 13
	ret
.LVL5:
.L2:
.LBB328:
.LBB329:
	.file 5 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 5 61 0
	movh.a	%a2, hi:EE_IRQ_nesting_level
.LBE329:
.LBE328:
	.loc 1 98 0
	ld.w	%d3, [%a2] lo:EE_IRQ_nesting_level
	ne	%d15, %d3, 0
	or.eq	%d15, %d2, -1
	jnz	%d15, .L19
	.loc 1 126 0
	movh.a	%a2, hi:EE_th_is_extended
	sh	%d15, %d2, 2
	lea	%a2, [%a2] lo:EE_th_is_extended
	addsc.a	%a2, %a2, %d15, 0
	ld.w	%d2, [%a2]0
	jz	%d2, .L20
.LVL6:
.LBB330:
.LBB331:
.LBB332:
.LBB333:
.LBB334:
.LBB335:
.LBB336:
.LBB337:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d9, LO:65068
	# 0 "" 2
.LVL7:
#NO_APP
.LBE337:
.LBE336:
.LBE335:
.LBE334:
.LBB338:
.LBB339:
.LBB340:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE340:
.LBE339:
.LBE338:
.LBE333:
.LBE332:
.LBE331:
.LBE330:
	.loc 1 142 0
	movh.a	%a2, hi:EE_th_event_active
	lea	%a2, [%a2] lo:EE_th_event_active
	addsc.a	%a2, %a2, %d15, 0
	ld.w	%d8, [%a2]0
	and	%d8, %d4
	jz	%d8, .L21
.LVL8:
.L6:
.LBB341:
.LBB342:
.LBB343:
.LBB344:
.LBB345:
.LBB346:
.LBB347:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d9
	# 0 "" 2
#NO_APP
.LBE347:
.LBE346:
.LBB348:
.LBB349:
.LBB350:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE350:
.LBE349:
.LBE348:
.LBE345:
.LBE344:
.LBE343:
.LBE342:
.LBE341:
	.loc 1 166 0
	mov	%d2, 0
	.loc 1 168 0
	ret
.LVL9:
.L19:
.LBB351:
.LBB352:
.LBB353:
.LBB354:
.LBB355:
.LBB356:
.LBB357:
.LBB358:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL10:
#NO_APP
.LBE358:
.LBE357:
.LBE356:
.LBE355:
.LBB359:
.LBB360:
.LBB361:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL11:
#NO_APP
.LBE361:
.LBE360:
.LBE359:
.LBE354:
.LBE353:
.LBE352:
.LBE351:
.LBB362:
.LBB363:
.LBB364:
.LBB365:
.LBB366:
.LBB367:
.LBB368:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE368:
.LBE367:
.LBB369:
.LBB370:
.LBB371:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE371:
.LBE370:
.LBE369:
.LBE366:
.LBE365:
.LBE364:
.LBE363:
.LBE362:
	.loc 1 107 0
	mov	%d2, 2
	ret
.LVL12:
.L20:
.LBB372:
.LBB373:
.LBB374:
.LBB375:
.LBB376:
.LBB377:
.LBB378:
.LBB379:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL13:
#NO_APP
.LBE379:
.LBE378:
.LBE377:
.LBE376:
.LBB380:
.LBB381:
.LBB382:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL14:
#NO_APP
.LBE382:
.LBE381:
.LBE380:
.LBE375:
.LBE374:
.LBE373:
.LBE372:
.LBB383:
.LBB384:
.LBB385:
.LBB386:
.LBB387:
.LBB388:
.LBB389:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE389:
.LBE388:
.LBB390:
.LBB391:
.LBB392:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE392:
.LBE391:
.LBE390:
.LBE387:
.LBE386:
.LBE385:
.LBE384:
.LBE383:
	.loc 1 135 0
	mov	%d2, 1
	ret
.LVL15:
.L21:
	.loc 1 144 0
	movh	%d10, hi:EE_th_event_waitmask
	addi	%d10, %d10, lo:EE_th_event_waitmask
	mov.a	%a3, %d10
.LBB393:
.LBB394:
.LBB395:
.LBB396:
	.loc 3 69 0
	ld.w	%d3, [%a15] lo:EE_stkfirst
.LBE396:
.LBE395:
.LBE394:
.LBE393:
	.loc 1 144 0
	addsc.a	%a2, %a3, %d15, 0
.LBB407:
.LBB405:
	.loc 2 395 0
	movh.a	%a13, hi:EE_th_status
.LBE405:
.LBE407:
	.loc 1 144 0
	st.w	[%a2]0, %d4
.LBB408:
.LBB406:
	.loc 2 395 0
	sh	%d3, 2
	mov	%d4, 1
.LVL16:
	lea	%a13, [%a13] lo:EE_th_status
	addsc.a	%a2, %a13, %d3, 0
.LVL17:
	.loc 2 404 0
	movh	%d11, hi:EE_th_dispatch_prio
	.loc 2 395 0
	st.w	[%a2]0, %d4
.LBB397:
.LBB398:
	.loc 2 192 0
	movh.a	%a2, hi:EE_th_next
	lea	%a2, [%a2] lo:EE_th_next
.LBE398:
.LBE397:
	.loc 2 404 0
	addi	%d11, %d11, lo:EE_th_dispatch_prio
.LBB402:
.LBB399:
	.loc 2 192 0
	addsc.a	%a2, %a2, %d3, 0
.LBE399:
.LBE402:
	.loc 2 404 0
	mov.a	%a3, %d11
.LBB403:
.LBB400:
	.loc 2 192 0
	ld.w	%d2, [%a2]0
.LBE400:
.LBE403:
	.loc 2 404 0
	addsc.a	%a2, %a3, %d3, 0
	movh.a	%a12, hi:EE_sys_ceiling
	ld.w	%d5, [%a2]0
.LBB404:
.LBB401:
	.loc 2 192 0
	st.w	[%a15] lo:EE_stkfirst, %d2
.LBE401:
.LBE404:
	.loc 2 404 0
	ld.w	%d2, [%a12] lo:EE_sys_ceiling
	.loc 2 412 0
	movh.a	%a2, hi:EE_th_waswaiting
	.loc 2 404 0
	andn	%d5, %d2, %d5
	.loc 2 412 0
	lea	%a14, [%a2] lo:EE_th_waswaiting
	addsc.a	%a2, %a14, %d3, 0
	.loc 2 404 0
	st.w	[%a12] lo:EE_sys_ceiling, %d5
	.loc 2 412 0
	st.w	[%a2]0, %d4
.LBE406:
.LBE408:
.LBB409:
.LBB410:
	.loc 2 422 0
	call	EE_rq_queryfirst
.LVL18:
	.loc 2 423 0
	jeq	%d2, -1, .L7
	movh.a	%a2, hi:EE_th_ready_prio
	sh	%d2, 2
.LVL19:
	lea	%a2, [%a2] lo:EE_th_ready_prio
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d3, [%a12] lo:EE_sys_ceiling
	ld.w	%d4, [%a2]0
	jlt.u	%d3, %d4, .L8
.L7:
.LBB411:
.LBB412:
	.loc 3 69 0
	ld.w	%d4, [%a15] lo:EE_stkfirst
.LBE412:
.LBE411:
	.loc 2 427 0
	jeq	%d4, -1, .L9
	.loc 2 428 0
	mov	%d3, 0
	addsc.a	%a13, %a13, %d4, 2
	st.w	[%a13]0, %d3
.L9:
.LVL20:
.LBB413:
.LBB414:
	.file 6 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 6 201 0
	insert	%d4, %d4, 15, 31, 1
.LVL21:
	call	EE_std_change_context
.LVL22:
.L10:
.LBE414:
.LBE413:
.LBE410:
.LBE409:
	.loc 1 159 0
	mov.a	%a3, %d10
	addsc.a	%a15, %a3, %d15, 0
	mov	%d15, 0
	st.w	[%a15]0, %d15
	j	.L6
.L8:
.LBB424:
.LBB423:
	.loc 2 436 0
	mov.a	%a2, %d11
	.loc 2 435 0
	addsc.a	%a13, %a13, %d2, 0
	.loc 2 436 0
	addsc.a	%a15, %a2, %d2, 0
	.loc 2 435 0
	st.w	[%a13]0, %d8
	.loc 2 436 0
	ld.w	%d2, [%a15]0
	or	%d3, %d2
	st.w	[%a12] lo:EE_sys_ceiling, %d3
.LBB415:
.LBB416:
	.loc 2 287 0
	call	EE_rq2stk_exchange
.LVL23:
	.loc 2 288 0
	addsc.a	%a2, %a14, %d2, 2
	ld.w	%d3, [%a2]0
	jz	%d3, .L11
.LBB417:
.LBB418:
	.loc 6 201 0
	insert	%d4, %d2, 15, 31, 1
.LBE418:
.LBE417:
	.loc 2 290 0
	st.w	[%a2]0, %d8
.LVL24:
.LBB420:
.LBB419:
	.loc 6 201 0
	call	EE_std_change_context
.LVL25:
	j	.L10
.LVL26:
.L11:
.LBE419:
.LBE420:
.LBB421:
.LBB422:
	.loc 6 214 0
	mov	%d4, %d2
	call	EE_std_change_context
.LVL27:
	j	.L10
.LBE422:
.LBE421:
.LBE416:
.LBE415:
.LBE423:
.LBE424:
.LFE92:
	.size	EE_oo_WaitEvent, .-EE_oo_WaitEvent
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
	.uaword	0x1152
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_evwait.c"
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
	.uaword	0x1c0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x7
	.byte	0x4c
	.uaword	0x1d8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x8
	.byte	0x7b
	.uaword	0x1c7
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x8
	.byte	0x7c
	.uaword	0x1b0
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x8
	.byte	0x7d
	.uaword	0x1c7
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x8
	.byte	0x80
	.uaword	0x1b0
	.uleb128 0x3
	.string	"EE_UTID"
	.byte	0x8
	.byte	0x83
	.uaword	0x1c7
	.uleb128 0x4
	.byte	0x4
	.byte	0x8
	.uahalf	0x134
	.uaword	0x388
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x1e8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x1e8
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x1e8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.uahalf	0x133
	.uaword	0x3ab
	.uleb128 0x7
	.string	"bits"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x232
	.uleb128 0x7
	.string	"reg"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x1e8
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x388
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x16d
	.uleb128 0x8
	.string	"TaskType"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x215
	.uleb128 0x8
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0x1e8
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
	.uaword	0x1d8
	.byte	0x3
	.uaword	0x42c
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x6f
	.uaword	0x42c
	.uleb128 0xc
	.string	"__res"
	.byte	0x4
	.byte	0x71
	.uaword	0x1d8
	.byte	0
	.uleb128 0xd
	.uaword	0x1d8
	.uleb128 0xe
	.string	"_mtcr"
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x459
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x87
	.uaword	0x42c
	.uleb128 0xf
	.string	"__val"
	.byte	0x4
	.byte	0x87
	.uaword	0x42c
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
	.uaword	0x49e
	.uleb128 0x12
	.string	"icr"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x3ab
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_get_ICR"
	.byte	0x8
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3ab
	.byte	0x3
	.uaword	0x4c7
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x3ab
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
	.uaword	0x513
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x37d
	.uaword	0x206
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x3ab
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_suspendIRQ"
	.byte	0x8
	.uahalf	0x384
	.byte	0x1
	.uaword	0x206
	.byte	0x3
	.uaword	0x53f
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x3ab
	.byte	0
	.uleb128 0x15
	.string	"EE_hal_suspendIRQ"
	.byte	0x8
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x206
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_resumeIRQ"
	.byte	0x8
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x585
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x3ed
	.uaword	0x206
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_stkchange"
	.byte	0x6
	.byte	0xc6
	.byte	0x1
	.byte	0x3
	.uaword	0x5b6
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xc6
	.uaword	0x215
	.uleb128 0xc
	.string	"tmp"
	.byte	0x6
	.byte	0xc8
	.uaword	0x223
	.byte	0
	.uleb128 0x16
	.string	"EE_stk_queryfirst"
	.byte	0x3
	.byte	0x43
	.byte	0x1
	.uaword	0x215
	.byte	0x3
	.uleb128 0x9
	.string	"EE_stk_getfirst"
	.byte	0x2
	.byte	0xbe
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_run_next_task"
	.byte	0x2
	.uahalf	0x11b
	.byte	0x1
	.byte	0x3
	.uaword	0x611
	.uleb128 0x14
	.string	"tmp"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x3cd
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x1f7
	.byte	0x3
	.uaword	0x64f
	.uleb128 0xc
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x1f7
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_begin_nested_primitive"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.uaword	0x206
	.byte	0x3
	.uleb128 0xe
	.string	"EE_hal_end_nested_primitive"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x6a9
	.uleb128 0xf
	.string	"flags"
	.byte	0xa
	.byte	0x73
	.uaword	0x206
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.uaword	0x1e8
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_prepare_to_block"
	.byte	0x2
	.uahalf	0x185
	.byte	0x1
	.byte	0x3
	.uaword	0x701
	.uleb128 0x14
	.string	"current"
	.byte	0x2
	.uahalf	0x186
	.uaword	0x215
	.byte	0
	.uleb128 0x11
	.string	"EE_oo_reschedule_on_block"
	.byte	0x2
	.uahalf	0x1a2
	.byte	0x1
	.byte	0x3
	.uaword	0x733
	.uleb128 0x14
	.string	"next"
	.byte	0x2
	.uahalf	0x1a4
	.uaword	0x215
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_ready2stacked"
	.byte	0x6
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.uaword	0x75d
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xd4
	.uaword	0x215
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"EE_oo_WaitEvent"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	0x3ba
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xefd
	.uleb128 0x18
	.string	"Mask"
	.byte	0x1
	.byte	0x3f
	.uaword	0x3de
	.uaword	.LLST0
	.uleb128 0xc
	.string	"current"
	.byte	0x1
	.byte	0x44
	.uaword	0x3cd
	.uleb128 0xc
	.string	"flag"
	.byte	0x1
	.byte	0x45
	.uaword	0x206
	.uleb128 0x19
	.uaword	0x611
	.uaword	.LBB303
	.uaword	.LBE303
	.byte	0x1
	.byte	0x53
	.uaword	0x7d3
	.uleb128 0x1a
	.uaword	.LBB304
	.uaword	.LBE304
	.uleb128 0x1b
	.uaword	0x63b
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x5b6
	.uaword	.LBB305
	.uaword	.LBE305
	.byte	0x1
	.byte	0x49
	.uleb128 0x19
	.uaword	0x64f
	.uaword	.LBB307
	.uaword	.LBE307
	.byte	0x1
	.byte	0x56
	.uaword	0x898
	.uleb128 0x1d
	.uaword	0x53f
	.uaword	.LBB308
	.uaword	.LBE308
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x513
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB310
	.uaword	.LBE310
	.uleb128 0x1b
	.uaword	0x532
	.uleb128 0x1f
	.uaword	0x49e
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x8
	.uahalf	0x386
	.uaword	0x873
	.uleb128 0x1a
	.uaword	.LBB312
	.uaword	.LBE312
	.uleb128 0x1b
	.uaword	0x4ba
	.uleb128 0x1e
	.uaword	0x400
	.uaword	.LBB313
	.uaword	.LBE313
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x413
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LBB314
	.uaword	.LBE314
	.uleb128 0x21
	.uaword	0x41e
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4c7
	.uaword	.LBB315
	.uaword	.LBE315
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x46b
	.uaword	.LBB316
	.uaword	.LBE316
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x676
	.uaword	.LBB318
	.uaword	.LBE318
	.byte	0x1
	.byte	0x58
	.uaword	0x955
	.uleb128 0x20
	.uaword	0x69b
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x55b
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x576
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x4de
	.uaword	.LBB320
	.uaword	.LBE320
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4f8
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LBB321
	.uaword	.LBE321
	.uleb128 0x1b
	.uaword	0x506
	.uleb128 0x1e
	.uaword	0x479
	.uaword	.LBB322
	.uaword	.LBE322
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x491
	.uleb128 0x1f
	.uaword	0x431
	.uaword	.LBB323
	.uaword	.LBE323
	.byte	0x8
	.uahalf	0x244
	.uaword	0x92f
	.uleb128 0x20
	.uaword	0x44b
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x440
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1e
	.uaword	0x459
	.uaword	.LBB325
	.uaword	.LBE325
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3f4
	.uaword	.LBB326
	.uaword	.LBE326
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x6a9
	.uaword	.LBB328
	.uaword	.LBE328
	.byte	0x1
	.byte	0x62
	.uleb128 0x19
	.uaword	0x64f
	.uaword	.LBB330
	.uaword	.LBE330
	.byte	0x1
	.byte	0x8b
	.uaword	0xa1a
	.uleb128 0x1d
	.uaword	0x53f
	.uaword	.LBB331
	.uaword	.LBE331
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x513
	.uaword	.LBB332
	.uaword	.LBE332
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB333
	.uaword	.LBE333
	.uleb128 0x1b
	.uaword	0x532
	.uleb128 0x1f
	.uaword	0x49e
	.uaword	.LBB334
	.uaword	.LBE334
	.byte	0x8
	.uahalf	0x386
	.uaword	0x9f5
	.uleb128 0x1a
	.uaword	.LBB335
	.uaword	.LBE335
	.uleb128 0x1b
	.uaword	0x4ba
	.uleb128 0x1e
	.uaword	0x400
	.uaword	.LBB336
	.uaword	.LBE336
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x413
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.LBB337
	.uaword	.LBE337
	.uleb128 0x21
	.uaword	0x41e
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4c7
	.uaword	.LBB338
	.uaword	.LBE338
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x46b
	.uaword	.LBB339
	.uaword	.LBE339
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x676
	.uaword	.LBB341
	.uaword	.LBE341
	.byte	0x1
	.byte	0xa2
	.uaword	0xad7
	.uleb128 0x20
	.uaword	0x69b
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	0x55b
	.uaword	.LBB342
	.uaword	.LBE342
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x576
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x4de
	.uaword	.LBB343
	.uaword	.LBE343
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4f8
	.uaword	.LLST10
	.uleb128 0x1a
	.uaword	.LBB344
	.uaword	.LBE344
	.uleb128 0x1b
	.uaword	0x506
	.uleb128 0x1e
	.uaword	0x479
	.uaword	.LBB345
	.uaword	.LBE345
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x491
	.uleb128 0x1f
	.uaword	0x431
	.uaword	.LBB346
	.uaword	.LBE346
	.byte	0x8
	.uahalf	0x244
	.uaword	0xab1
	.uleb128 0x20
	.uaword	0x44b
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0x440
	.uaword	.LLST14
	.byte	0
	.uleb128 0x1e
	.uaword	0x459
	.uaword	.LBB348
	.uaword	.LBE348
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3f4
	.uaword	.LBB349
	.uaword	.LBE349
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x64f
	.uaword	.LBB351
	.uaword	.LBE351
	.byte	0x1
	.byte	0x65
	.uaword	0xb8d
	.uleb128 0x1d
	.uaword	0x53f
	.uaword	.LBB352
	.uaword	.LBE352
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x513
	.uaword	.LBB353
	.uaword	.LBE353
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB354
	.uaword	.LBE354
	.uleb128 0x1b
	.uaword	0x532
	.uleb128 0x1f
	.uaword	0x49e
	.uaword	.LBB355
	.uaword	.LBE355
	.byte	0x8
	.uahalf	0x386
	.uaword	0xb68
	.uleb128 0x1a
	.uaword	.LBB356
	.uaword	.LBE356
	.uleb128 0x1b
	.uaword	0x4ba
	.uleb128 0x1e
	.uaword	0x400
	.uaword	.LBB357
	.uaword	.LBE357
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x413
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.LBB358
	.uaword	.LBE358
	.uleb128 0x21
	.uaword	0x41e
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4c7
	.uaword	.LBB359
	.uaword	.LBE359
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x46b
	.uaword	.LBB360
	.uaword	.LBE360
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x676
	.uaword	.LBB362
	.uaword	.LBE362
	.byte	0x1
	.byte	0x67
	.uaword	0xc4a
	.uleb128 0x20
	.uaword	0x69b
	.uaword	.LLST17
	.uleb128 0x1d
	.uaword	0x55b
	.uaword	.LBB363
	.uaword	.LBE363
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x576
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	0x4de
	.uaword	.LBB364
	.uaword	.LBE364
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4f8
	.uaword	.LLST17
	.uleb128 0x1a
	.uaword	.LBB365
	.uaword	.LBE365
	.uleb128 0x1b
	.uaword	0x506
	.uleb128 0x1e
	.uaword	0x479
	.uaword	.LBB366
	.uaword	.LBE366
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x491
	.uleb128 0x1f
	.uaword	0x431
	.uaword	.LBB367
	.uaword	.LBE367
	.byte	0x8
	.uahalf	0x244
	.uaword	0xc24
	.uleb128 0x20
	.uaword	0x44b
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	0x440
	.uaword	.LLST21
	.byte	0
	.uleb128 0x1e
	.uaword	0x459
	.uaword	.LBB369
	.uaword	.LBE369
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3f4
	.uaword	.LBB370
	.uaword	.LBE370
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x64f
	.uaword	.LBB372
	.uaword	.LBE372
	.byte	0x1
	.byte	0x81
	.uaword	0xd00
	.uleb128 0x1d
	.uaword	0x53f
	.uaword	.LBB373
	.uaword	.LBE373
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x513
	.uaword	.LBB374
	.uaword	.LBE374
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB375
	.uaword	.LBE375
	.uleb128 0x1b
	.uaword	0x532
	.uleb128 0x1f
	.uaword	0x49e
	.uaword	.LBB376
	.uaword	.LBE376
	.byte	0x8
	.uahalf	0x386
	.uaword	0xcdb
	.uleb128 0x1a
	.uaword	.LBB377
	.uaword	.LBE377
	.uleb128 0x1b
	.uaword	0x4ba
	.uleb128 0x1e
	.uaword	0x400
	.uaword	.LBB378
	.uaword	.LBE378
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x413
	.uaword	.LLST22
	.uleb128 0x1a
	.uaword	.LBB379
	.uaword	.LBE379
	.uleb128 0x21
	.uaword	0x41e
	.uaword	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4c7
	.uaword	.LBB380
	.uaword	.LBE380
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x46b
	.uaword	.LBB381
	.uaword	.LBE381
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x676
	.uaword	.LBB383
	.uaword	.LBE383
	.byte	0x1
	.byte	0x83
	.uaword	0xdbd
	.uleb128 0x20
	.uaword	0x69b
	.uaword	.LLST24
	.uleb128 0x1d
	.uaword	0x55b
	.uaword	.LBB384
	.uaword	.LBE384
	.byte	0xa
	.byte	0x75
	.uleb128 0x20
	.uaword	0x576
	.uaword	.LLST24
	.uleb128 0x1e
	.uaword	0x4de
	.uaword	.LBB385
	.uaword	.LBE385
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4f8
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	.LBB386
	.uaword	.LBE386
	.uleb128 0x1b
	.uaword	0x506
	.uleb128 0x1e
	.uaword	0x479
	.uaword	.LBB387
	.uaword	.LBE387
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x491
	.uleb128 0x1f
	.uaword	0x431
	.uaword	.LBB388
	.uaword	.LBE388
	.byte	0x8
	.uahalf	0x244
	.uaword	0xd97
	.uleb128 0x20
	.uaword	0x44b
	.uaword	.LLST24
	.uleb128 0x20
	.uaword	0x440
	.uaword	.LLST28
	.byte	0
	.uleb128 0x1e
	.uaword	0x459
	.uaword	.LBB390
	.uaword	.LBE390
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3f4
	.uaword	.LBB391
	.uaword	.LBE391
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x6cf
	.uaword	.LBB393
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x93
	.uaword	0xdfc
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0x6f0
	.uleb128 0x22
	.uaword	0x5b6
	.uaword	.LBB395
	.uaword	.LBE395
	.byte	0x2
	.uahalf	0x188
	.uleb128 0x26
	.uaword	0x5d1
	.uaword	.LBB397
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x2
	.uahalf	0x191
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x701
	.uaword	.LBB409
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x9c
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x21
	.uaword	0x725
	.uaword	.LLST29
	.uleb128 0x22
	.uaword	0x5b6
	.uaword	.LBB411
	.uaword	.LBE411
	.byte	0x2
	.uahalf	0x1aa
	.uleb128 0x1f
	.uaword	0x585
	.uaword	.LBB413
	.uaword	.LBE413
	.byte	0x2
	.uahalf	0x1b0
	.uaword	0xe63
	.uleb128 0x20
	.uaword	0x59f
	.uaword	.LLST30
	.uleb128 0x1a
	.uaword	.LBB414
	.uaword	.LBE414
	.uleb128 0x21
	.uaword	0x5aa
	.uaword	.LLST31
	.uleb128 0x28
	.uaword	.LVL22
	.uaword	0x10f7
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x5e6
	.uaword	.LBB415
	.uaword	.LBE415
	.byte	0x2
	.uahalf	0x1bb
	.uaword	0xef1
	.uleb128 0x1a
	.uaword	.LBB416
	.uaword	.LBE416
	.uleb128 0x21
	.uaword	0x604
	.uaword	.LLST32
	.uleb128 0x29
	.uaword	0x585
	.uaword	.LBB417
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x2
	.uahalf	0x123
	.uaword	0xebf
	.uleb128 0x20
	.uaword	0x59f
	.uaword	.LLST33
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x21
	.uaword	0x5aa
	.uaword	.LLST34
	.uleb128 0x28
	.uaword	.LVL25
	.uaword	0x10f7
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x733
	.uaword	.LBB421
	.uaword	.LBE421
	.byte	0x2
	.uahalf	0x126
	.uaword	0xee6
	.uleb128 0x20
	.uaword	0x751
	.uaword	.LLST35
	.uleb128 0x28
	.uaword	.LVL27
	.uaword	0x10f7
	.byte	0
	.uleb128 0x28
	.uaword	.LVL23
	.uaword	0x111d
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL18
	.uaword	0x113a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x1e8
	.uaword	0xf08
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_std_thread_tos"
	.byte	0xb
	.byte	0x5d
	.uaword	0xf23
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xefd
	.uleb128 0x2c
	.string	"EE_IRQ_nesting_level"
	.byte	0x5
	.byte	0x39
	.uaword	0x1e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_tc_active_tos"
	.byte	0xa
	.byte	0xbe
	.uaword	0x1e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_std_endcycle_next_tid"
	.byte	0x6
	.byte	0x41
	.uaword	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0xefd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x215
	.uaword	0xfa3
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0xf98
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0xfd1
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xefd
	.uleb128 0x2c
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0xff3
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xefd
	.uleb128 0x2c
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x1e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0xefd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_event_waitmask"
	.byte	0x9
	.uahalf	0x116
	.uaword	0xefd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0xefd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_is_extended"
	.byte	0x9
	.uahalf	0x123
	.uaword	0xefd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x3
	.byte	0x33
	.uaword	0x1e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x3
	.byte	0x3a
	.uaword	0x206
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_ApplicationMode"
	.byte	0x3
	.byte	0x3d
	.uaword	0x1e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x6
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0x111d
	.uleb128 0x2f
	.uaword	0x215
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x2
	.byte	0xd4
	.byte	0x1
	.uaword	0x215
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.uaword	0x215
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0xb
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
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL18-1-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
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
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LBB393-.Ltext0
	.uaword	.LBE393-.Ltext0
	.uaword	.LBB407-.Ltext0
	.uaword	.LBE407-.Ltext0
	.uaword	.LBB408-.Ltext0
	.uaword	.LBE408-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB397-.Ltext0
	.uaword	.LBE397-.Ltext0
	.uaword	.LBB402-.Ltext0
	.uaword	.LBE402-.Ltext0
	.uaword	.LBB403-.Ltext0
	.uaword	.LBE403-.Ltext0
	.uaword	.LBB404-.Ltext0
	.uaword	.LBE404-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB409-.Ltext0
	.uaword	.LBE409-.Ltext0
	.uaword	.LBB424-.Ltext0
	.uaword	.LBE424-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB417-.Ltext0
	.uaword	.LBE417-.Ltext0
	.uaword	.LBB420-.Ltext0
	.uaword	.LBE420-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"__regaddr"
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_std_change_context,STT_FUNC,0
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_th_waswaiting,STT_OBJECT,-1
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_next,STT_OBJECT,-1
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_th_event_waitmask,STT_OBJECT,-1
	.extern	EE_th_event_active,STT_OBJECT,-1
	.extern	EE_th_is_extended,STT_OBJECT,-1
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
