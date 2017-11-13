	.file	"ee_thendin.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_thread_end_instance
	.type	EE_thread_end_instance, @function
EE_thread_end_instance:
.LFB94:
	.file 1 "0_Src/OS/kernel/oo/src/ee_thendin.c"
	.loc 1 81 0
	.loc 1 90 0
	mov	%d15, 0
.LBB56:
.LBB57:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 2 69 0
	movh.a	%a12, hi:EE_stkfirst
	ld.w	%d6, [%a12] lo:EE_stkfirst
.LBE57:
.LBE56:
	.loc 1 90 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
	st.w	[%a15] lo:EE_oo_IRQ_disable_count, %d15
	.loc 1 93 0
	movh.a	%a15, hi:EE_th_rnact
	sh	%d15, %d6, 2
	lea	%a15, [%a15] lo:EE_th_rnact
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 110 0
	movh.a	%a13, hi:EE_th_status
	.loc 1 93 0
	ld.w	%d2, [%a15]0
	.loc 1 110 0
	lea	%a13, [%a13] lo:EE_th_status
	.loc 1 93 0
	add	%d2, 1
	st.w	[%a15]0, %d2
	.loc 1 99 0
	movh.a	%a15, hi:EE_th_terminate_nextask
	lea	%a15, [%a15] lo:EE_th_terminate_nextask
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d4, [%a15]0
.LVL0:
.LBB58:
.LBB59:
	.loc 1 52 0
	movh.a	%a15, hi:EE_th_rnact_max
	lea	%a15, [%a15] lo:EE_th_rnact_max
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d5, [%a15]0
.LBE59:
.LBE58:
	.loc 1 110 0
	addsc.a	%a15, %a13, %d15, 0
	.loc 1 109 0
	eq	%d3, %d2, %d5
	or.eq	%d3, %d4, %d6
	jnz	%d3, .L19
	.loc 1 112 0
	mov	%d2, 2
	st.w	[%a15]0, %d2
.L3:
	.loc 1 119 0
	movh	%d9, hi:EE_th_dispatch_prio
	addi	%d9, %d9, lo:EE_th_dispatch_prio
	mov.a	%a3, %d9
	movh.a	%a15, hi:EE_sys_ceiling
	addsc.a	%a2, %a3, %d15, 0
	ld.w	%d2, [%a15] lo:EE_sys_ceiling
	ld.w	%d3, [%a2]0
.LBB60:
.LBB61:
	.file 3 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 3 192 0
	movh.a	%a2, hi:EE_th_next
	lea	%a2, [%a2] lo:EE_th_next
.LBE61:
.LBE60:
	.loc 1 119 0
	andn	%d3, %d2, %d3
.LBB64:
.LBB62:
	.loc 3 192 0
	addsc.a	%a2, %a2, %d15, 0
	ld.w	%d2, [%a2]0
.LBE62:
.LBE64:
	.loc 1 119 0
	st.w	[%a15] lo:EE_sys_ceiling, %d3
.LBB65:
.LBB63:
	.loc 3 192 0
	st.w	[%a12] lo:EE_stkfirst, %d2
.LBE63:
.LBE65:
	.loc 1 130 0
	jeq	%d4, -1, .L4
.LVL1:
.LBB66:
.LBB67:
	.loc 3 318 0
	sh	%d15, %d4, 2
	addsc.a	%a2, %a13, %d15, 0
	ld.w	%d2, [%a2]0
	jeq	%d2, 3, .L20
.L5:
.LBE67:
.LBE66:
	.loc 1 142 0
	call	EE_rq_insert
.LVL2:
.L4:
	.loc 1 148 0
	call	EE_rq_queryfirst
.LVL3:
	.loc 1 149 0
	jeq	%d2, -1, .L21
	.loc 1 158 0
	ld.w	%d15, [%a15] lo:EE_sys_ceiling
	movh.a	%a15, hi:EE_th_ready_prio
	sh	%d2, 2
.LVL4:
	lea	%a15, [%a15] lo:EE_th_ready_prio
	addsc.a	%a15, %a15, %d2, 0
	ld.w	%d3, [%a15]0
	jlt.u	%d15, %d3, .L9
.LBB71:
.LBB72:
	.loc 2 69 0
	ld.w	%d15, [%a12] lo:EE_stkfirst
.L17:
.LBE72:
.LBE71:
	.loc 1 152 0
	mov	%d2, 0
	addsc.a	%a13, %a13, %d15, 2
	st.w	[%a13]0, %d2
.L7:
.LVL5:
.LBB73:
.LBB74:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 4 226 0
	insert	%d15, %d15, 15, 31, 1
.LVL6:
	.loc 4 227 0
	movh.a	%a15, hi:EE_std_endcycle_next_tid
	st.w	[%a15] lo:EE_std_endcycle_next_tid, %d15
	ret
.LVL7:
.L9:
.LBE74:
.LBE73:
	.loc 1 168 0
	mov.a	%a2, %d9
	.loc 1 167 0
	addsc.a	%a13, %a13, %d2, 0
	.loc 1 168 0
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 167 0
	mov	%d8, 0
	.loc 1 168 0
	ld.w	%d2, [%a15]0
	movh.a	%a15, hi:EE_sys_ceiling
	or	%d15, %d2
	.loc 1 167 0
	st.w	[%a13]0, %d8
	.loc 1 168 0
	st.w	[%a15] lo:EE_sys_ceiling, %d15
.LBB75:
.LBB76:
	.loc 1 63 0
	movh.a	%a15, hi:EE_th_waswaiting
	.loc 1 62 0
	call	EE_rq2stk_exchange
.LVL8:
	.loc 1 63 0
	lea	%a15, [%a15] lo:EE_th_waswaiting
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d15, [%a15]0
	jnz	%d15, .L22
.LVL9:
.LBB77:
.LBB78:
	.loc 4 220 0
	movh.a	%a15, hi:EE_std_endcycle_next_tid
	st.w	[%a15] lo:EE_std_endcycle_next_tid, %d2
	ret
.LVL10:
.L20:
.LBE78:
.LBE77:
.LBE76:
.LBE75:
.LBB84:
.LBB70:
	.loc 3 319 0
	mov	%d2, 2
	st.w	[%a2]0, %d2
.LVL11:
.LBB68:
.LBB69:
	.loc 3 277 0
	movh.a	%a2, hi:EE_th_event_active
	lea	%a2, [%a2] lo:EE_th_event_active
	addsc.a	%a2, %a2, %d15, 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	j	.L5
.LVL12:
.L19:
.LBE69:
.LBE68:
.LBE70:
.LBE84:
	.loc 1 110 0
	mov	%d2, 3
	st.w	[%a15]0, %d2
	j	.L3
.LVL13:
.L21:
.LBB85:
.LBB86:
	.loc 2 69 0
	ld.w	%d15, [%a12] lo:EE_stkfirst
.LBE86:
.LBE85:
	.loc 1 151 0
	jne	%d15, -1, .L17
	j	.L7
.LVL14:
.L22:
.LBB87:
.LBB83:
.LBB79:
.LBB80:
	.loc 4 226 0
	insert	%d2, %d2, 15, 31, 1
.LVL15:
.LBE80:
.LBE79:
	.loc 1 64 0
	st.w	[%a15]0, %d8
.LBB82:
.LBB81:
	.loc 4 227 0
	movh.a	%a15, hi:EE_std_endcycle_next_tid
	st.w	[%a15] lo:EE_std_endcycle_next_tid, %d2
	ret
.LBE81:
.LBE82:
.LBE83:
.LBE87:
.LFE94:
	.size	EE_thread_end_instance, .-EE_thread_end_instance
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
	.uaword	.LFB94
	.uaword	.LFE94-.LFB94
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 6 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 7 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 9 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 10 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x79f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_thendin.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"EE_BIT"
	.byte	0x5
	.byte	0x35
	.uaword	0x17c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"EE_INT32"
	.byte	0x5
	.byte	0x4b
	.uaword	0x1cf
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.string	"EE_UINT32"
	.byte	0x5
	.byte	0x4c
	.uaword	0x1e7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.string	"EE_UREG"
	.byte	0x6
	.byte	0x7b
	.uaword	0x1d6
	.uleb128 0x2
	.string	"EE_FREG"
	.byte	0x6
	.byte	0x7d
	.uaword	0x1d6
	.uleb128 0x2
	.string	"EE_TID"
	.byte	0x6
	.byte	0x80
	.uaword	0x1bf
	.uleb128 0x2
	.string	"EE_UTID"
	.byte	0x6
	.byte	0x83
	.uaword	0x1d6
	.uleb128 0x4
	.string	"TaskType"
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x215
	.uleb128 0x5
	.string	"EE_oo_reset_th_event_active"
	.byte	0x3
	.uahalf	0x113
	.byte	0x1
	.byte	0x3
	.uaword	0x276
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x113
	.uaword	0x232
	.byte	0
	.uleb128 0x7
	.string	"EE_hal_endcycle_stacked"
	.byte	0x4
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.uaword	0x2b3
	.uleb128 0x8
	.string	"tid"
	.byte	0x4
	.byte	0xe0
	.uaword	0x215
	.uleb128 0x9
	.string	"utid_tmp"
	.byte	0x4
	.byte	0xe2
	.uaword	0x223
	.byte	0
	.uleb128 0x7
	.string	"EE_hal_endcycle_ready"
	.byte	0x4
	.byte	0xda
	.byte	0x1
	.byte	0x3
	.uaword	0x2de
	.uleb128 0x8
	.string	"tid"
	.byte	0x4
	.byte	0xda
	.uaword	0x215
	.byte	0
	.uleb128 0xa
	.string	"EE_stk_queryfirst"
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.uaword	0x215
	.byte	0x3
	.uleb128 0xb
	.string	"EE_thread_rnact_max"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	0x16e
	.byte	0x1
	.uaword	0x32a
	.uleb128 0x8
	.string	"current"
	.byte	0x1
	.byte	0x33
	.uaword	0x215
	.byte	0
	.uleb128 0xc
	.string	"EE_stk_getfirst"
	.byte	0x3
	.byte	0xbe
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.string	"EE_oo_set_th_status_ready"
	.byte	0x3
	.uahalf	0x13c
	.byte	0x1
	.byte	0x3
	.uaword	0x370
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x13c
	.uaword	0x232
	.byte	0
	.uleb128 0x7
	.string	"EE_thread_endcycle_next"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uaword	0x39e
	.uleb128 0x9
	.string	"next"
	.byte	0x1
	.byte	0x3d
	.uaword	0x215
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"EE_thread_end_instance"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	.LFB94
	.uaword	.LFE94
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x53a
	.uleb128 0x9
	.string	"current"
	.byte	0x1
	.byte	0x52
	.uaword	0x215
	.uleb128 0xe
	.string	"rqfirst"
	.byte	0x1
	.byte	0x52
	.uaword	0x215
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x53
	.uaword	0x215
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	0x2de
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.uaword	0x2f9
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.byte	0x6d
	.uaword	0x426
	.uleb128 0x12
	.uaword	0x31a
	.uaword	.LLST2
	.byte	0
	.uleb128 0x13
	.uaword	0x32a
	.uaword	.LBB60
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7c
	.uleb128 0x14
	.uaword	0x33f
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x8b
	.uaword	0x46c
	.uleb128 0x12
	.uaword	0x363
	.uaword	.LLST3
	.uleb128 0x15
	.uaword	0x243
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x3
	.uahalf	0x140
	.uleb128 0x12
	.uaword	0x269
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x2de
	.uaword	.LBB71
	.uaword	.LBE71
	.byte	0x1
	.byte	0xa1
	.uleb128 0x11
	.uaword	0x276
	.uaword	.LBB73
	.uaword	.LBE73
	.byte	0x1
	.byte	0x9c
	.uaword	0x4ab
	.uleb128 0x12
	.uaword	0x297
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	.LBB74
	.uaword	.LBE74
	.uleb128 0x17
	.uaword	0x2a2
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x370
	.uaword	.LBB75
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xac
	.uaword	0x518
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x17
	.uaword	0x391
	.uaword	.LLST7
	.uleb128 0x11
	.uaword	0x2b3
	.uaword	.LBB77
	.uaword	.LBE77
	.byte	0x1
	.byte	0x44
	.uaword	0x4e9
	.uleb128 0x12
	.uaword	0x2d2
	.uaword	.LLST8
	.byte	0
	.uleb128 0x14
	.uaword	0x276
	.uaword	.LBB79
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x42
	.uaword	0x50d
	.uleb128 0x19
	.uaword	0x297
	.uleb128 0x18
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x1a
	.uaword	0x2a2
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL8
	.uaword	0x74d
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x2de
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x1
	.byte	0x97
	.uleb128 0x1b
	.uaword	.LVL2
	.uaword	0x76a
	.uleb128 0x1b
	.uaword	.LVL3
	.uaword	0x787
	.byte	0
	.uleb128 0x1c
	.uaword	0x1f7
	.uaword	0x545
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0x560
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x53a
	.uleb128 0x1e
	.string	"EE_IRQ_nesting_level"
	.byte	0x9
	.byte	0x39
	.uaword	0x1f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_tc_active_tos"
	.byte	0xa
	.byte	0xbe
	.uaword	0x1f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_std_endcycle_next_tid"
	.byte	0x4
	.byte	0x41
	.uaword	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_th_status"
	.byte	0x7
	.byte	0xa6
	.uaword	0x53a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x215
	.uaword	0x5e0
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.string	"EE_th_next"
	.byte	0x7
	.byte	0xae
	.uaword	0x5d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_th_ready_prio"
	.byte	0x7
	.byte	0xb1
	.uaword	0x60e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x53a
	.uleb128 0x1e
	.string	"EE_th_dispatch_prio"
	.byte	0x7
	.byte	0xb2
	.uaword	0x630
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x53a
	.uleb128 0x1e
	.string	"EE_th_rnact"
	.byte	0x7
	.byte	0xba
	.uaword	0x53a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_th_rnact_max"
	.byte	0x7
	.byte	0xbe
	.uaword	0x663
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x53a
	.uleb128 0x1e
	.string	"EE_th_terminate_nextask"
	.byte	0x7
	.byte	0xc3
	.uaword	0x5d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_stkfirst"
	.byte	0x7
	.byte	0xc7
	.uaword	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_sys_ceiling"
	.byte	0x7
	.byte	0xca
	.uaword	0x1f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EE_th_event_active"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x53a
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"EE_th_waswaiting"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x53a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x2
	.byte	0x33
	.uaword	0x1f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x2
	.byte	0x3a
	.uaword	0x206
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"EE_ApplicationMode"
	.byte	0x2
	.byte	0x3d
	.uaword	0x1f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x3
	.byte	0xd4
	.byte	0x1
	.uaword	0x215
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"EE_rq_insert"
	.byte	0x3
	.byte	0xcf
	.byte	0x1
	.byte	0x1
	.uaword	0x787
	.uleb128 0x23
	.uaword	0x215
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0x3
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x34
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
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
	.uaword	.LBB60-.Ltext0
	.uaword	.LBE60-.Ltext0
	.uaword	.LBB64-.Ltext0
	.uaword	.LBE64-.Ltext0
	.uaword	.LBB65-.Ltext0
	.uaword	.LBE65-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB66-.Ltext0
	.uaword	.LBE66-.Ltext0
	.uaword	.LBB84-.Ltext0
	.uaword	.LBE84-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB75-.Ltext0
	.uaword	.LBE75-.Ltext0
	.uaword	.LBB87-.Ltext0
	.uaword	.LBE87-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB79-.Ltext0
	.uaword	.LBE79-.Ltext0
	.uaword	.LBB82-.Ltext0
	.uaword	.LBE82-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"TaskID"
	.extern	EE_th_event_active,STT_OBJECT,-1
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_th_waswaiting,STT_OBJECT,-1
	.extern	EE_std_endcycle_next_tid,STT_OBJECT,4
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_rq_insert,STT_FUNC,0
	.extern	EE_th_next,STT_OBJECT,-1
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_th_rnact_max,STT_OBJECT,-1
	.extern	EE_th_terminate_nextask,STT_OBJECT,-1
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_th_rnact,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.extern	EE_stkfirst,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
