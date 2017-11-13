	.file	"ee_rq_exchg.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_rq2stk_exchange
	.type	EE_rq2stk_exchange, @function
EE_rq2stk_exchange:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_rq_exchg.c"
	.loc 1 69 0
	.loc 1 76 0
	movh.a	%a3, hi:EE_rq_bitmask
	ld.hu	%d4, [%a3] lo:EE_rq_bitmask
	movh.a	%a2, hi:EE_rq_lookup
	sh	%d15, %d4, -8
	lea	%a2, [%a2] lo:EE_rq_lookup
	addsc.a	%a15, %a2, %d15, 0
	ld.b	%d2, [%a15]0
.LVL0:
	.loc 1 80 0
	addi	%d15, %d2, 8
	extr	%d15, %d15, 0, 8
	.loc 1 77 0
	jeq	%d2, -1, .L6
.LVL1:
.L3:
	.loc 1 89 0
	movh.a	%a15, hi:EE_rq_queues_head
	sh	%d6, %d15, 2
	lea	%a15, [%a15] lo:EE_rq_queues_head
	addsc.a	%a15, %a15, %d6, 0
	movh.a	%a2, hi:EE_rq_pairs_tid
	ld.w	%d5, [%a15]0
	lea	%a2, [%a2] lo:EE_rq_pairs_tid
	sh	%d3, %d5, 2
	addsc.a	%a2, %a2, %d3, 0
	ld.w	%d2, [%a2]0
.LVL2:
	.loc 1 93 0
	movh.a	%a2, hi:EE_rq_pairs_next
	lea	%a2, [%a2] lo:EE_rq_pairs_next
	addsc.a	%a2, %a2, %d3, 0
	ld.w	%d3, [%a2]0
	st.w	[%a15]0, %d3
	.loc 1 94 0
	movh.a	%a15, hi:EE_rq_free
	ld.w	%d7, [%a15] lo:EE_rq_free
	st.w	[%a2]0, %d7
	.loc 1 95 0
	st.w	[%a15] lo:EE_rq_free, %d5
	.loc 1 97 0
	jne	%d3, -1, .L4
	.loc 1 98 0
	movh.a	%a15, hi:EE_rq_queues_tail
	.loc 1 100 0
	insert	%d15, %d4, 0, %d15, 1
.LVL3:
	.loc 1 98 0
	lea	%a15, [%a15] lo:EE_rq_queues_tail
	addsc.a	%a15, %a15, %d6, 0
	.loc 1 100 0
	st.h	[%a3] lo:EE_rq_bitmask, %d15
	.loc 1 98 0
	st.w	[%a15]0, %d3
.L4:
	.loc 1 104 0
	movh.a	%a2, hi:EE_th_next
	lea	%a2, [%a2] lo:EE_th_next
	movh.a	%a15, hi:EE_stkfirst
	addsc.a	%a2, %a2, %d2, 2
	ld.w	%d15, [%a15] lo:EE_stkfirst
	st.w	[%a2]0, %d15
	.loc 1 105 0
	st.w	[%a15] lo:EE_stkfirst, %d2
	.loc 1 108 0
	ret
.LVL4:
.L6:
	.loc 1 78 0
	addsc.a	%a2, %a2, %d4, 0
	ld.b	%d15, [%a2]0
.LVL5:
	j	.L3
.LFE92:
	.size	EE_rq2stk_exchange, .-EE_rq2stk_exchange
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
	.file 10 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x535
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_rq_exchg.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"EE_INT8"
	.byte	0x2
	.byte	0x39
	.uaword	0x18f
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
	.uaword	0x1bc
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"EE_INT32"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1e2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1fa
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x3
	.byte	0x7b
	.uaword	0x1e9
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x3
	.byte	0x7c
	.uaword	0x1d2
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x3
	.byte	0x7d
	.uaword	0x1e9
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x3
	.byte	0x80
	.uaword	0x1d2
	.uleb128 0x3
	.string	"EE_TYPE_RQ_MASK"
	.byte	0x4
	.byte	0xe8
	.uaword	0x1ab
	.uleb128 0x4
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	0x237
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b2
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x46
	.uaword	0x180
	.uaword	.LLST0
	.uleb128 0x5
	.string	"temp"
	.byte	0x1
	.byte	0x47
	.uaword	0x237
	.uaword	.LLST1
	.uleb128 0x5
	.string	"y"
	.byte	0x1
	.byte	0x48
	.uaword	0x219
	.uaword	.LLST2
	.byte	0
	.uleb128 0x6
	.uaword	0x20a
	.uaword	0x2bd
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.string	"EE_std_thread_tos"
	.byte	0x5
	.byte	0x5d
	.uaword	0x2d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x2b2
	.uleb128 0x8
	.string	"EE_IRQ_nesting_level"
	.byte	0x6
	.byte	0x39
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_std_endcycle_next_tid"
	.byte	0x8
	.byte	0x41
	.uaword	0x237
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_th_status"
	.byte	0x4
	.byte	0xa6
	.uaword	0x2b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x237
	.uaword	0x358
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.string	"EE_th_next"
	.byte	0x4
	.byte	0xae
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_th_ready_prio"
	.byte	0x4
	.byte	0xb1
	.uaword	0x386
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x2b2
	.uleb128 0x8
	.string	"EE_th_dispatch_prio"
	.byte	0x4
	.byte	0xb2
	.uaword	0x3a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x2b2
	.uleb128 0x8
	.string	"EE_stkfirst"
	.byte	0x4
	.byte	0xc7
	.uaword	0x237
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_sys_ceiling"
	.byte	0x4
	.byte	0xca
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_rq_bitmask"
	.byte	0x4
	.byte	0xea
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x219
	.uaword	0x3fc
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.string	"EE_rq_queues_head"
	.byte	0x4
	.byte	0xf6
	.uaword	0x3f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_rq_queues_tail"
	.byte	0x4
	.byte	0xf7
	.uaword	0x3f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_rq_pairs_next"
	.byte	0x4
	.byte	0xfd
	.uaword	0x3f1
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"EE_rq_pairs_tid"
	.byte	0x4
	.uahalf	0x100
	.uaword	0x34d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"EE_rq_free"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x219
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"EE_th_event_active"
	.byte	0x4
	.uahalf	0x111
	.uaword	0x2b2
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.string	"EE_th_waswaiting"
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x2b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x9
	.byte	0x33
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x9
	.byte	0x3a
	.uaword	0x228
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"EE_ApplicationMode"
	.byte	0x9
	.byte	0x3d
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x180
	.uaword	0x51d
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.string	"EE_rq_lookup"
	.byte	0xa
	.byte	0xa9
	.uaword	0x533
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x512
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uaword	.LVL1-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL5-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x55
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
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_th_next,STT_OBJECT,-1
	.extern	EE_rq_queues_tail,STT_OBJECT,-1
	.extern	EE_rq_free,STT_OBJECT,4
	.extern	EE_rq_pairs_next,STT_OBJECT,-1
	.extern	EE_rq_pairs_tid,STT_OBJECT,-1
	.extern	EE_rq_queues_head,STT_OBJECT,-1
	.extern	EE_rq_lookup,STT_OBJECT,-1
	.extern	EE_rq_bitmask,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
