	.file	"ee_evset.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_SetEvent
	.type	EE_oo_SetEvent, @function
EE_oo_SetEvent:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_evset.c"
	.loc 1 73 0
.LVL0:
.LBB298:
.LBB299:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE299:
.LBE298:
	.loc 1 105 0
	ld.w	%d2, [%a15] lo:EE_oo_IRQ_disable_count
	.loc 1 73 0
	mov	%d15, %d4
	.loc 1 105 0
	jz	%d2, .L2
.LVL1:
.LBB300:
.LBB301:
.LBB302:
.LBB303:
.LBB304:
.LBB305:
.LBB306:
.LBB307:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE307:
.LBE306:
.LBE305:
.LBE304:
.LBB308:
.LBB309:
.LBB310:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE310:
.LBE309:
.LBE308:
.LBE303:
.LBE302:
.LBE301:
.LBE300:
.LBB311:
.LBB312:
.LBB313:
.LBB314:
.LBB315:
.LBB316:
.LBB317:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE317:
.LBE316:
.LBB318:
.LBB319:
.LBB320:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE320:
.LBE319:
.LBE318:
.LBE315:
.LBE314:
.LBE313:
.LBE312:
.LBE311:
	.loc 1 114 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 118 0
	jlt.u	%d4, 14, .L4
.LVL5:
.LBB321:
.LBB322:
.LBB323:
.LBB324:
.LBB325:
.LBB326:
.LBB327:
.LBB328:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE328:
.LBE327:
.LBE326:
.LBE325:
.LBB329:
.LBB330:
.LBB331:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE331:
.LBE330:
.LBE329:
.LBE324:
.LBE323:
.LBE322:
.LBE321:
.LBB332:
.LBB333:
.LBB334:
.LBB335:
.LBB336:
.LBB337:
.LBB338:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE338:
.LBE337:
.LBB339:
.LBB340:
.LBB341:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE341:
.LBE340:
.LBE339:
.LBE336:
.LBE335:
.LBE334:
.LBE333:
.LBE332:
	.loc 1 127 0
	mov	%d2, 3
	ret
.LVL8:
.L4:
	.loc 1 130 0
	movh.a	%a15, hi:EE_th_is_extended
	sh	%d15, 2
	lea	%a15, [%a15] lo:EE_th_is_extended
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d2, [%a15]0
	jz	%d2, .L19
.LVL9:
.LBB342:
.LBB343:
.LBB344:
.LBB345:
.LBB346:
.LBB347:
.LBB348:
.LBB349:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL10:
#NO_APP
.LBE349:
.LBE348:
.LBE347:
.LBE346:
.LBB350:
.LBB351:
.LBB352:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE352:
.LBE351:
.LBE350:
.LBE345:
.LBE344:
.LBE343:
.LBE342:
	.loc 1 145 0
	movh.a	%a12, hi:EE_th_status
	lea	%a12, [%a12] lo:EE_th_status
	addsc.a	%a15, %a12, %d15, 0
	ld.w	%d2, [%a15]0
	jeq	%d2, 3, .L20
	.loc 1 158 0
	movh.a	%a2, hi:EE_th_event_active
	mov	%d6, %d5
	mov	%d7, %d5
	lea	%a2, [%a2] lo:EE_th_event_active
	addsc.a	%a2, %a2, %d15, 0
	ldmst	[%a2]0, %e6
	.loc 1 168 0
	movh.a	%a2, hi:EE_th_event_waitmask
	lea	%a2, [%a2] lo:EE_th_event_waitmask
	addsc.a	%a2, %a2, %d15, 0
	ld.w	%d15, [%a2]0
	and	%d5, %d15
.LVL11:
	.loc 1 169 0
	eq	%d15, %d2, 1
	and.ne	%d15, %d5, 0
	jnz	%d15, .L21
.LVL12:
.L8:
.LBB353:
.LBB354:
.LBB355:
.LBB356:
.LBB357:
.LBB358:
.LBB359:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d8
	# 0 "" 2
#NO_APP
.LBE359:
.LBE358:
.LBB360:
.LBB361:
.LBB362:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE362:
.LBE361:
.LBE360:
.LBE357:
.LBE356:
.LBE355:
.LBE354:
.LBE353:
	.loc 1 188 0
	mov	%d2, 0
	.loc 1 190 0
	ret
.LVL13:
.L20:
.LBB363:
.LBB364:
.LBB365:
.LBB366:
.LBB367:
.LBB368:
.LBB369:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d8
	# 0 "" 2
#NO_APP
.LBE369:
.LBE368:
.LBB370:
.LBB371:
.LBB372:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE372:
.LBE371:
.LBE370:
.LBE367:
.LBE366:
.LBE365:
.LBE364:
.LBE363:
	.loc 1 154 0
	mov	%d2, 7
	ret
.LVL14:
.L19:
.LBB373:
.LBB374:
.LBB375:
.LBB376:
.LBB377:
.LBB378:
.LBB379:
.LBB380:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL15:
#NO_APP
.LBE380:
.LBE379:
.LBE378:
.LBE377:
.LBB381:
.LBB382:
.LBB383:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL16:
#NO_APP
.LBE383:
.LBE382:
.LBE381:
.LBE376:
.LBE375:
.LBE374:
.LBE373:
.LBB384:
.LBB385:
.LBB386:
.LBB387:
.LBB388:
.LBB389:
.LBB390:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE390:
.LBE389:
.LBB391:
.LBB392:
.LBB393:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE393:
.LBE392:
.LBE391:
.LBE388:
.LBE387:
.LBE386:
.LBE385:
.LBE384:
	.loc 1 139 0
	mov	%d2, 1
	ret
.LVL17:
.L21:
	.loc 1 171 0
	mov	%d15, 2
	st.w	[%a15]0, %d15
	.loc 1 173 0
	call	EE_rq_insert
.LVL18:
.LBB394:
.LBB395:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 4 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE395:
.LBE394:
	.loc 1 176 0
	ld.w	%d2, [%a15] lo:EE_IRQ_nesting_level
	jnz	%d2, .L8
.LBB396:
.LBB397:
.LBB398:
.LBB399:
	.file 5 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 5 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d9, [%a15] lo:EE_stkfirst
.LBE399:
.LBE398:
	.loc 2 349 0
	call	EE_rq_queryfirst
.LVL19:
	.loc 2 351 0
	jeq	%d2, -1, .L8
	.loc 2 354 0
	movh.a	%a2, hi:EE_th_ready_prio
	sh	%d2, 2
.LVL20:
	lea	%a2, [%a2] lo:EE_th_ready_prio
	addsc.a	%a2, %a2, %d2, 0
	movh.a	%a15, hi:EE_sys_ceiling
	ld.w	%d3, [%a15] lo:EE_sys_ceiling
	ld.w	%d4, [%a2]0
	jge.u	%d3, %d4, .L8
	.loc 2 355 0
	jeq	%d9, -1, .L10
	.loc 2 358 0
	addsc.a	%a2, %a12, %d9, 2
	st.w	[%a2]0, %d15
.L10:
	.loc 2 365 0
	movh.a	%a2, hi:EE_th_dispatch_prio
	lea	%a2, [%a2] lo:EE_th_dispatch_prio
	addsc.a	%a2, %a2, %d2, 0
	.loc 2 367 0
	addsc.a	%a12, %a12, %d2, 0
	.loc 2 365 0
	ld.w	%d15, [%a2]0
	or	%d3, %d15
	.loc 2 367 0
	mov	%d15, 0
	.loc 2 365 0
	st.w	[%a15] lo:EE_sys_ceiling, %d3
.LBB400:
.LBB401:
	.loc 2 288 0
	movh.a	%a15, hi:EE_th_waswaiting
.LBE401:
.LBE400:
	.loc 2 367 0
	st.w	[%a12]0, %d15
.LBB409:
.LBB408:
	.loc 2 288 0
	lea	%a15, [%a15] lo:EE_th_waswaiting
	.loc 2 287 0
	call	EE_rq2stk_exchange
.LVL21:
	.loc 2 288 0
	addsc.a	%a15, %a15, %d2, 2
	.loc 2 287 0
	mov	%d4, %d2
.LVL22:
	.loc 2 288 0
	ld.w	%d2, [%a15]0
.LVL23:
	jz	%d2, .L11
.LBB402:
.LBB403:
	.file 6 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 6 201 0
	insert	%d4, %d4, 15, 31, 1
.LVL24:
.LBE403:
.LBE402:
	.loc 2 290 0
	st.w	[%a15]0, %d15
.LBB405:
.LBB404:
	.loc 6 201 0
	call	EE_std_change_context
.LVL25:
	j	.L8
.LVL26:
.L11:
.LBE404:
.LBE405:
.LBB406:
.LBB407:
	.loc 6 214 0
	call	EE_std_change_context
.LVL27:
	j	.L8
.LBE407:
.LBE406:
.LBE408:
.LBE409:
.LBE397:
.LBE396:
.LFE92:
	.size	EE_oo_SetEvent, .-EE_oo_SetEvent
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
	.uaword	0x115f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_evset.c"
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
	.uaword	0x1bf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x7
	.byte	0x4c
	.uaword	0x1d7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x8
	.byte	0x7b
	.uaword	0x1c6
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x8
	.byte	0x7c
	.uaword	0x1af
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x8
	.byte	0x7d
	.uaword	0x1c6
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x8
	.byte	0x80
	.uaword	0x1af
	.uleb128 0x3
	.string	"EE_UTID"
	.byte	0x8
	.byte	0x83
	.uaword	0x1c6
	.uleb128 0x4
	.byte	0x4
	.byte	0x8
	.uahalf	0x134
	.uaword	0x387
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x1e7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x1e7
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x1e7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.uahalf	0x133
	.uaword	0x3aa
	.uleb128 0x7
	.string	"bits"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x231
	.uleb128 0x7
	.string	"reg"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x1e7
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x387
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x16c
	.uleb128 0x8
	.string	"TaskType"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x214
	.uleb128 0x8
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0x1e7
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
	.uaword	0x1d7
	.byte	0x3
	.uaword	0x42b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x42b
	.uleb128 0xc
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1d7
	.byte	0
	.uleb128 0xd
	.uaword	0x1d7
	.uleb128 0xe
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x458
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x42b
	.uleb128 0xf
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x42b
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
	.uaword	0x49d
	.uleb128 0x12
	.string	"icr"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x3aa
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_get_ICR"
	.byte	0x8
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3aa
	.byte	0x3
	.uaword	0x4c6
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x3aa
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
	.uaword	0x512
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x37d
	.uaword	0x205
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x3aa
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_suspendIRQ"
	.byte	0x8
	.uahalf	0x384
	.byte	0x1
	.uaword	0x205
	.byte	0x3
	.uaword	0x53e
	.uleb128 0x14
	.string	"icr"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x3aa
	.byte	0
	.uleb128 0x15
	.string	"EE_hal_suspendIRQ"
	.byte	0x8
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x205
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_resumeIRQ"
	.byte	0x8
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x584
	.uleb128 0x12
	.string	"flags"
	.byte	0x8
	.uahalf	0x3ed
	.uaword	0x205
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_stkchange"
	.byte	0x6
	.byte	0xc6
	.byte	0x1
	.byte	0x3
	.uaword	0x5b5
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xc6
	.uaword	0x214
	.uleb128 0xc
	.string	"tmp"
	.byte	0x6
	.byte	0xc8
	.uaword	0x222
	.byte	0
	.uleb128 0x16
	.string	"EE_stk_queryfirst"
	.byte	0x5
	.byte	0x43
	.byte	0x1
	.uaword	0x214
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_run_next_task"
	.byte	0x2
	.uahalf	0x11b
	.byte	0x1
	.byte	0x3
	.uaword	0x5fb
	.uleb128 0x14
	.string	"tmp"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x3cc
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x1f6
	.byte	0x3
	.uaword	0x639
	.uleb128 0xc
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x1f6
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_begin_nested_primitive"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.uaword	0x205
	.byte	0x3
	.uleb128 0xe
	.string	"EE_hal_end_nested_primitive"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x693
	.uleb128 0xf
	.string	"flags"
	.byte	0xa
	.byte	0x73
	.uaword	0x205
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x4
	.byte	0x3b
	.byte	0x1
	.uaword	0x1e7
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_preemption_point"
	.byte	0x2
	.uahalf	0x157
	.byte	0x1
	.byte	0x3
	.uaword	0x6f6
	.uleb128 0x14
	.string	"current"
	.byte	0x2
	.uahalf	0x159
	.uaword	0x214
	.uleb128 0x14
	.string	"rq"
	.byte	0x2
	.uahalf	0x159
	.uaword	0x214
	.byte	0
	.uleb128 0xe
	.string	"EE_hal_ready2stacked"
	.byte	0x6
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.uaword	0x720
	.uleb128 0xf
	.string	"tid"
	.byte	0x6
	.byte	0xd4
	.uaword	0x214
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"EE_oo_SetEvent"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	0x3b9
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xef1
	.uleb128 0x18
	.string	"TaskID"
	.byte	0x1
	.byte	0x45
	.uaword	0x3cc
	.uaword	.LLST0
	.uleb128 0x18
	.string	"Mask"
	.byte	0x1
	.byte	0x45
	.uaword	0x3dd
	.uaword	.LLST1
	.uleb128 0xc
	.string	"flag"
	.byte	0x1
	.byte	0x4a
	.uaword	0x205
	.uleb128 0x19
	.uaword	0x5fb
	.uaword	.LBB298
	.uaword	.LBE298
	.byte	0x1
	.byte	0x69
	.uaword	0x798
	.uleb128 0x1a
	.uaword	.LBB299
	.uaword	.LBE299
	.uleb128 0x1b
	.uaword	0x625
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x639
	.uaword	.LBB300
	.uaword	.LBE300
	.byte	0x1
	.byte	0x6c
	.uaword	0x84e
	.uleb128 0x1c
	.uaword	0x53e
	.uaword	.LBB301
	.uaword	.LBE301
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x512
	.uaword	.LBB302
	.uaword	.LBE302
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB303
	.uaword	.LBE303
	.uleb128 0x1b
	.uaword	0x531
	.uleb128 0x1e
	.uaword	0x49d
	.uaword	.LBB304
	.uaword	.LBE304
	.byte	0x8
	.uahalf	0x386
	.uaword	0x829
	.uleb128 0x1a
	.uaword	.LBB305
	.uaword	.LBE305
	.uleb128 0x1b
	.uaword	0x4b9
	.uleb128 0x1d
	.uaword	0x3ff
	.uaword	.LBB306
	.uaword	.LBE306
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	.LBB307
	.uaword	.LBE307
	.uleb128 0x20
	.uaword	0x41d
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4c6
	.uaword	.LBB308
	.uaword	.LBE308
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x46a
	.uaword	.LBB309
	.uaword	.LBE309
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x660
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x1
	.byte	0x6e
	.uaword	0x90b
	.uleb128 0x1f
	.uaword	0x685
	.uaword	.LLST4
	.uleb128 0x1c
	.uaword	0x55a
	.uaword	.LBB312
	.uaword	.LBE312
	.byte	0xa
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x575
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	0x4dd
	.uaword	.LBB313
	.uaword	.LBE313
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4f7
	.uaword	.LLST4
	.uleb128 0x1a
	.uaword	.LBB314
	.uaword	.LBE314
	.uleb128 0x1b
	.uaword	0x505
	.uleb128 0x1d
	.uaword	0x478
	.uaword	.LBB315
	.uaword	.LBE315
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x490
	.uleb128 0x1e
	.uaword	0x430
	.uaword	.LBB316
	.uaword	.LBE316
	.byte	0x8
	.uahalf	0x244
	.uaword	0x8e5
	.uleb128 0x1f
	.uaword	0x44a
	.uaword	.LLST4
	.uleb128 0x1f
	.uaword	0x43f
	.uaword	.LLST8
	.byte	0
	.uleb128 0x1d
	.uaword	0x458
	.uaword	.LBB318
	.uaword	.LBE318
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3f3
	.uaword	.LBB319
	.uaword	.LBE319
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x639
	.uaword	.LBB321
	.uaword	.LBE321
	.byte	0x1
	.byte	0x79
	.uaword	0x9c1
	.uleb128 0x1c
	.uaword	0x53e
	.uaword	.LBB322
	.uaword	.LBE322
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x512
	.uaword	.LBB323
	.uaword	.LBE323
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB324
	.uaword	.LBE324
	.uleb128 0x1b
	.uaword	0x531
	.uleb128 0x1e
	.uaword	0x49d
	.uaword	.LBB325
	.uaword	.LBE325
	.byte	0x8
	.uahalf	0x386
	.uaword	0x99c
	.uleb128 0x1a
	.uaword	.LBB326
	.uaword	.LBE326
	.uleb128 0x1b
	.uaword	0x4b9
	.uleb128 0x1d
	.uaword	0x3ff
	.uaword	.LBB327
	.uaword	.LBE327
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	.LBB328
	.uaword	.LBE328
	.uleb128 0x20
	.uaword	0x41d
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4c6
	.uaword	.LBB329
	.uaword	.LBE329
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x46a
	.uaword	.LBB330
	.uaword	.LBE330
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x660
	.uaword	.LBB332
	.uaword	.LBE332
	.byte	0x1
	.byte	0x7b
	.uaword	0xa7e
	.uleb128 0x1f
	.uaword	0x685
	.uaword	.LLST11
	.uleb128 0x1c
	.uaword	0x55a
	.uaword	.LBB333
	.uaword	.LBE333
	.byte	0xa
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x575
	.uaword	.LLST11
	.uleb128 0x1d
	.uaword	0x4dd
	.uaword	.LBB334
	.uaword	.LBE334
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4f7
	.uaword	.LLST11
	.uleb128 0x1a
	.uaword	.LBB335
	.uaword	.LBE335
	.uleb128 0x1b
	.uaword	0x505
	.uleb128 0x1d
	.uaword	0x478
	.uaword	.LBB336
	.uaword	.LBE336
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x490
	.uleb128 0x1e
	.uaword	0x430
	.uaword	.LBB337
	.uaword	.LBE337
	.byte	0x8
	.uahalf	0x244
	.uaword	0xa58
	.uleb128 0x1f
	.uaword	0x44a
	.uaword	.LLST11
	.uleb128 0x1f
	.uaword	0x43f
	.uaword	.LLST15
	.byte	0
	.uleb128 0x1d
	.uaword	0x458
	.uaword	.LBB339
	.uaword	.LBE339
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3f3
	.uaword	.LBB340
	.uaword	.LBE340
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x639
	.uaword	.LBB342
	.uaword	.LBE342
	.byte	0x1
	.byte	0x8f
	.uaword	0xb34
	.uleb128 0x1c
	.uaword	0x53e
	.uaword	.LBB343
	.uaword	.LBE343
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x512
	.uaword	.LBB344
	.uaword	.LBE344
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB345
	.uaword	.LBE345
	.uleb128 0x1b
	.uaword	0x531
	.uleb128 0x1e
	.uaword	0x49d
	.uaword	.LBB346
	.uaword	.LBE346
	.byte	0x8
	.uahalf	0x386
	.uaword	0xb0f
	.uleb128 0x1a
	.uaword	.LBB347
	.uaword	.LBE347
	.uleb128 0x1b
	.uaword	0x4b9
	.uleb128 0x1d
	.uaword	0x3ff
	.uaword	.LBB348
	.uaword	.LBE348
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LLST16
	.uleb128 0x1a
	.uaword	.LBB349
	.uaword	.LBE349
	.uleb128 0x20
	.uaword	0x41d
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4c6
	.uaword	.LBB350
	.uaword	.LBE350
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x46a
	.uaword	.LBB351
	.uaword	.LBE351
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x660
	.uaword	.LBB353
	.uaword	.LBE353
	.byte	0x1
	.byte	0xb8
	.uaword	0xbf1
	.uleb128 0x1f
	.uaword	0x685
	.uaword	.LLST18
	.uleb128 0x1c
	.uaword	0x55a
	.uaword	.LBB354
	.uaword	.LBE354
	.byte	0xa
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x575
	.uaword	.LLST18
	.uleb128 0x1d
	.uaword	0x4dd
	.uaword	.LBB355
	.uaword	.LBE355
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4f7
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	.LBB356
	.uaword	.LBE356
	.uleb128 0x1b
	.uaword	0x505
	.uleb128 0x1d
	.uaword	0x478
	.uaword	.LBB357
	.uaword	.LBE357
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x490
	.uleb128 0x1e
	.uaword	0x430
	.uaword	.LBB358
	.uaword	.LBE358
	.byte	0x8
	.uahalf	0x244
	.uaword	0xbcb
	.uleb128 0x1f
	.uaword	0x44a
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	0x43f
	.uaword	.LLST22
	.byte	0
	.uleb128 0x1d
	.uaword	0x458
	.uaword	.LBB360
	.uaword	.LBE360
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3f3
	.uaword	.LBB361
	.uaword	.LBE361
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x660
	.uaword	.LBB363
	.uaword	.LBE363
	.byte	0x1
	.byte	0x97
	.uaword	0xc9e
	.uleb128 0x22
	.uaword	0x685
	.uleb128 0x1c
	.uaword	0x55a
	.uaword	.LBB364
	.uaword	.LBE364
	.byte	0xa
	.byte	0x75
	.uleb128 0x22
	.uaword	0x575
	.uleb128 0x1d
	.uaword	0x4dd
	.uaword	.LBB365
	.uaword	.LBE365
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x4f7
	.uleb128 0x1a
	.uaword	.LBB366
	.uaword	.LBE366
	.uleb128 0x1b
	.uaword	0x505
	.uleb128 0x1d
	.uaword	0x478
	.uaword	.LBB367
	.uaword	.LBE367
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x490
	.uleb128 0x1e
	.uaword	0x430
	.uaword	.LBB368
	.uaword	.LBE368
	.byte	0x8
	.uahalf	0x244
	.uaword	0xc78
	.uleb128 0x22
	.uaword	0x44a
	.uleb128 0x1f
	.uaword	0x43f
	.uaword	.LLST23
	.byte	0
	.uleb128 0x1d
	.uaword	0x458
	.uaword	.LBB370
	.uaword	.LBE370
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3f3
	.uaword	.LBB371
	.uaword	.LBE371
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x639
	.uaword	.LBB373
	.uaword	.LBE373
	.byte	0x1
	.byte	0x85
	.uaword	0xd54
	.uleb128 0x1c
	.uaword	0x53e
	.uaword	.LBB374
	.uaword	.LBE374
	.byte	0xa
	.byte	0x6e
	.uleb128 0x1d
	.uaword	0x512
	.uaword	.LBB375
	.uaword	.LBE375
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x1a
	.uaword	.LBB376
	.uaword	.LBE376
	.uleb128 0x1b
	.uaword	0x531
	.uleb128 0x1e
	.uaword	0x49d
	.uaword	.LBB377
	.uaword	.LBE377
	.byte	0x8
	.uahalf	0x386
	.uaword	0xd2f
	.uleb128 0x1a
	.uaword	.LBB378
	.uaword	.LBE378
	.uleb128 0x1b
	.uaword	0x4b9
	.uleb128 0x1d
	.uaword	0x3ff
	.uaword	.LBB379
	.uaword	.LBE379
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	.LBB380
	.uaword	.LBE380
	.uleb128 0x20
	.uaword	0x41d
	.uaword	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x4c6
	.uaword	.LBB381
	.uaword	.LBE381
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x21
	.uaword	0x46a
	.uaword	.LBB382
	.uaword	.LBE382
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x660
	.uaword	.LBB384
	.uaword	.LBE384
	.byte	0x1
	.byte	0x87
	.uaword	0xe11
	.uleb128 0x1f
	.uaword	0x685
	.uaword	.LLST26
	.uleb128 0x1c
	.uaword	0x55a
	.uaword	.LBB385
	.uaword	.LBE385
	.byte	0xa
	.byte	0x75
	.uleb128 0x1f
	.uaword	0x575
	.uaword	.LLST26
	.uleb128 0x1d
	.uaword	0x4dd
	.uaword	.LBB386
	.uaword	.LBE386
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x1f
	.uaword	0x4f7
	.uaword	.LLST26
	.uleb128 0x1a
	.uaword	.LBB387
	.uaword	.LBE387
	.uleb128 0x1b
	.uaword	0x505
	.uleb128 0x1d
	.uaword	0x478
	.uaword	.LBB388
	.uaword	.LBE388
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x22
	.uaword	0x490
	.uleb128 0x1e
	.uaword	0x430
	.uaword	.LBB389
	.uaword	.LBE389
	.byte	0x8
	.uahalf	0x244
	.uaword	0xdeb
	.uleb128 0x1f
	.uaword	0x44a
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	0x43f
	.uaword	.LLST30
	.byte	0
	.uleb128 0x1d
	.uaword	0x458
	.uaword	.LBB391
	.uaword	.LBE391
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x21
	.uaword	0x3f3
	.uaword	.LBB392
	.uaword	.LBE392
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x693
	.uaword	.LBB394
	.uaword	.LBE394
	.byte	0x1
	.byte	0xb0
	.uleb128 0x19
	.uaword	0x6b9
	.uaword	.LBB396
	.uaword	.LBE396
	.byte	0x1
	.byte	0xb2
	.uaword	0xee7
	.uleb128 0x1a
	.uaword	.LBB397
	.uaword	.LBE397
	.uleb128 0x1b
	.uaword	0x6da
	.uleb128 0x20
	.uaword	0x6ea
	.uaword	.LLST31
	.uleb128 0x21
	.uaword	0x5b5
	.uaword	.LBB398
	.uaword	.LBE398
	.byte	0x2
	.uahalf	0x15c
	.uleb128 0x24
	.uaword	0x5d0
	.uaword	.LBB400
	.uaword	.Ldebug_ranges0+0
	.byte	0x2
	.uahalf	0x176
	.uaword	0xedc
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x20
	.uaword	0x5ee
	.uaword	.LLST32
	.uleb128 0x24
	.uaword	0x584
	.uaword	.LBB402
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x2
	.uahalf	0x123
	.uaword	0xeaa
	.uleb128 0x22
	.uaword	0x59e
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1b
	.uaword	0x5a9
	.uleb128 0x26
	.uaword	.LVL25
	.uaword	0x10eb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x6f6
	.uaword	.LBB406
	.uaword	.LBE406
	.byte	0x2
	.uahalf	0x126
	.uaword	0xed1
	.uleb128 0x1f
	.uaword	0x714
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LVL27
	.uaword	0x10eb
	.byte	0
	.uleb128 0x26
	.uaword	.LVL21
	.uaword	0x1111
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL19
	.uaword	0x112e
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL18
	.uaword	0x1149
	.byte	0
	.uleb128 0x27
	.uaword	0x1e7
	.uaword	0xefc
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"EE_std_thread_tos"
	.byte	0xb
	.byte	0x5d
	.uaword	0xf17
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xef1
	.uleb128 0x29
	.string	"EE_IRQ_nesting_level"
	.byte	0x4
	.byte	0x39
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_tc_active_tos"
	.byte	0xa
	.byte	0xbe
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_std_endcycle_next_tid"
	.byte	0x6
	.byte	0x41
	.uaword	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0xef1
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.uaword	0x214
	.uaword	0xf97
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0xf8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0xfc5
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xef1
	.uleb128 0x29
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0xfe7
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xef1
	.uleb128 0x29
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0xef1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_event_waitmask"
	.byte	0x9
	.uahalf	0x116
	.uaword	0xef1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0xef1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_is_extended"
	.byte	0x9
	.uahalf	0x123
	.uaword	0xef1
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x5
	.byte	0x33
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x5
	.byte	0x3a
	.uaword	0x205
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_ApplicationMode"
	.byte	0x5
	.byte	0x3d
	.uaword	0x1e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x6
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0x1111
	.uleb128 0x2c
	.uaword	0x214
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x2
	.byte	0xd4
	.byte	0x1
	.uaword	0x214
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.uaword	0x214
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"EE_rq_insert"
	.byte	0x2
	.byte	0xcf
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0x214
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18-1-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-1-.Ltext0
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
	.uaword	.LBB400-.Ltext0
	.uaword	.LBE400-.Ltext0
	.uaword	.LBB409-.Ltext0
	.uaword	.LBE409-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB402-.Ltext0
	.uaword	.LBE402-.Ltext0
	.uaword	.LBB405-.Ltext0
	.uaword	.LBE405-.Ltext0
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
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_rq_insert,STT_FUNC,0
	.extern	EE_th_event_waitmask,STT_OBJECT,-1
	.extern	EE_th_event_active,STT_OBJECT,-1
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_th_is_extended,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
