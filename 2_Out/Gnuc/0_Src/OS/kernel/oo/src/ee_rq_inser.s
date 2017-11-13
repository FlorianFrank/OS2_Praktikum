	.file	"ee_rq_inser.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_rq_insert
	.type	EE_rq_insert, @function
EE_rq_insert:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_rq_inser.c"
	.loc 1 78 0
.LVL0:
	.loc 1 82 0
	movh.a	%a15, hi:EE_rq_link
	sh	%d6, %d4, 2
	lea	%a15, [%a15] lo:EE_rq_link
	.loc 1 85 0
	movh.a	%a2, hi:EE_rq_free
	.loc 1 82 0
	addsc.a	%a15, %a15, %d6, 0
	.loc 1 85 0
	ld.w	%d15, [%a2] lo:EE_rq_free
	.loc 1 82 0
	ld.w	%d7, [%a15]0
.LVL1:
	.loc 1 86 0
	movh.a	%a15, hi:EE_rq_pairs_next
	sh	%d5, %d15, 2
	lea	%a3, [%a15] lo:EE_rq_pairs_next
	addsc.a	%a15, %a3, %d5, 0
	ld.w	%d2, [%a15]0
	st.w	[%a2] lo:EE_rq_free, %d2
	.loc 1 89 0
	movh.a	%a2, hi:EE_rq_pairs_tid
	lea	%a2, [%a2] lo:EE_rq_pairs_tid
	addsc.a	%a2, %a2, %d5, 0
	st.w	[%a2]0, %d4
	.loc 1 90 0
	mov	%d4, -1
.LVL2:
	st.w	[%a15]0, %d4
	.loc 1 93 0
	movh.a	%a15, hi:EE_rq_queues_tail
	mov.d	%d2, %a15
	addi	%d4, %d2, lo:EE_rq_queues_tail
	mov.a	%a15, %d4
	sh	%d2, %d7, 2
	addsc.a	%a2, %a15, %d2, 0
.LVL3:
	ld.w	%d3, [%a2]0
	jeq	%d3, -1, .L5
	.loc 1 99 0
	addsc.a	%a15, %a3, %d3, 2
	.loc 1 101 0
	mov.a	%a2, %d4
	.loc 1 99 0
	st.w	[%a15]0, %d15
	.loc 1 101 0
	addsc.a	%a15, %a2, %d2, 0
	st.w	[%a15]0, %d15
	ret
.L5:
	.loc 1 96 0
	movh.a	%a2, hi:EE_th_ready_prio
	lea	%a2, [%a2] lo:EE_th_ready_prio
	addsc.a	%a2, %a2, %d6, 0
	movh.a	%a15, hi:EE_rq_bitmask
	ld.h	%d3, [%a15] lo:EE_rq_bitmask
	ld.w	%d5, [%a2]0
.LVL4:
	.loc 1 101 0
	mov.a	%a2, %d4
	.loc 1 96 0
	or	%d3, %d5
	st.h	[%a15] lo:EE_rq_bitmask, %d3
	.loc 1 97 0
	movh.a	%a15, hi:EE_rq_queues_head
	lea	%a15, [%a15] lo:EE_rq_queues_head
	addsc.a	%a15, %a15, %d2, 0
	st.w	[%a15]0, %d15
	.loc 1 101 0
	addsc.a	%a15, %a2, %d2, 0
	st.w	[%a15]0, %d15
	ret
.LFE92:
	.size	EE_rq_insert, .-EE_rq_insert
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
	.file 2 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 3 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 4 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 5 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 6 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.file 9 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x506
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_rq_inser.c"
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
	.uleb128 0x3
	.string	"EE_UINT16"
	.byte	0x2
	.byte	0x4a
	.uaword	0x1ad
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"EE_INT32"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1eb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x3
	.byte	0x7b
	.uaword	0x1da
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x3
	.byte	0x7c
	.uaword	0x1c3
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x3
	.byte	0x7d
	.uaword	0x1da
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x3
	.byte	0x80
	.uaword	0x1c3
	.uleb128 0x3
	.string	"EE_TYPE_RQ_MASK"
	.byte	0x4
	.byte	0xe8
	.uaword	0x19c
	.uleb128 0x4
	.byte	0x1
	.string	"EE_rq_insert"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x295
	.uleb128 0x5
	.string	"t"
	.byte	0x1
	.byte	0x4d
	.uaword	0x228
	.uaword	.LLST0
	.uleb128 0x6
	.string	"temp"
	.byte	0x1
	.byte	0x4f
	.uaword	0x20a
	.byte	0x1
	.byte	0x5f
	.uleb128 0x6
	.string	"p"
	.byte	0x1
	.byte	0x50
	.uaword	0x1fb
	.byte	0x1
	.byte	0x57
	.byte	0
	.uleb128 0x7
	.uaword	0x1fb
	.uaword	0x2a0
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"EE_std_thread_tos"
	.byte	0x5
	.byte	0x5d
	.uaword	0x2bb
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x295
	.uleb128 0x9
	.string	"EE_IRQ_nesting_level"
	.byte	0x6
	.byte	0x39
	.uaword	0x1fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x1fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_std_endcycle_next_tid"
	.byte	0x8
	.byte	0x41
	.uaword	0x228
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_th_status"
	.byte	0x4
	.byte	0xa6
	.uaword	0x295
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x228
	.uaword	0x33b
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"EE_th_next"
	.byte	0x4
	.byte	0xae
	.uaword	0x330
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_th_ready_prio"
	.byte	0x4
	.byte	0xb1
	.uaword	0x369
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x295
	.uleb128 0x9
	.string	"EE_th_dispatch_prio"
	.byte	0x4
	.byte	0xb2
	.uaword	0x38b
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x295
	.uleb128 0x9
	.string	"EE_stkfirst"
	.byte	0x4
	.byte	0xc7
	.uaword	0x228
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_sys_ceiling"
	.byte	0x4
	.byte	0xca
	.uaword	0x1fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_rq_bitmask"
	.byte	0x4
	.byte	0xea
	.uaword	0x236
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_rq_link"
	.byte	0x4
	.byte	0xf2
	.uaword	0x295
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x20a
	.uaword	0x3f3
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"EE_rq_queues_head"
	.byte	0x4
	.byte	0xf6
	.uaword	0x3e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_rq_queues_tail"
	.byte	0x4
	.byte	0xf7
	.uaword	0x3e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_rq_pairs_next"
	.byte	0x4
	.byte	0xfd
	.uaword	0x3e8
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"EE_rq_pairs_tid"
	.byte	0x4
	.uahalf	0x100
	.uaword	0x330
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"EE_rq_free"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"EE_th_event_active"
	.byte	0x4
	.uahalf	0x111
	.uaword	0x295
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"EE_th_waswaiting"
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x295
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x9
	.byte	0x33
	.uaword	0x1fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x9
	.byte	0x3a
	.uaword	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.string	"EE_ApplicationMode"
	.byte	0x9
	.byte	0x3d
	.uaword	0x1fb
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
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
	.extern	EE_rq_queues_head,STT_OBJECT,-1
	.extern	EE_rq_bitmask,STT_OBJECT,2
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queues_tail,STT_OBJECT,-1
	.extern	EE_rq_pairs_tid,STT_OBJECT,-1
	.extern	EE_rq_pairs_next,STT_OBJECT,-1
	.extern	EE_rq_free,STT_OBJECT,4
	.extern	EE_rq_link,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
