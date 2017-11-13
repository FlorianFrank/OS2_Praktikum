	.file	"ee_irqendin.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_IRQ_end_instance
	.type	EE_IRQ_end_instance, @function
EE_IRQ_end_instance:
.LFB93:
	.file 1 "0_Src/OS/kernel/oo/src/ee_irqendin.c"
	.loc 1 132 0
	.loc 1 136 0
	call	EE_rq_queryfirst
.LVL0:
.LBB20:
.LBB21:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 2 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d15, [%a15] lo:EE_stkfirst
.LBE21:
.LBE20:
	.loc 1 139 0
	jeq	%d2, -1, .L2
	.loc 1 139 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:EE_th_ready_prio
	sh	%d2, 2
.LVL1:
	lea	%a2, [%a2] lo:EE_th_ready_prio
	addsc.a	%a2, %a2, %d2, 0
	movh.a	%a15, hi:EE_sys_ceiling
	ld.w	%d3, [%a15] lo:EE_sys_ceiling
	ld.w	%d4, [%a2]0
	jge.u	%d3, %d4, .L2
	movh.a	%a2, hi:EE_th_status
	lea	%a3, [%a2] lo:EE_th_status
	.loc 1 142 0 is_stmt 1
	jeq	%d15, -1, .L3
	.loc 1 147 0
	addsc.a	%a2, %a3, %d15, 2
	mov	%d15, 2
	st.w	[%a2]0, %d15
.L3:
	.loc 1 151 0
	mov	%d15, 0
	addsc.a	%a2, %a3, %d2, 0
	st.w	[%a2]0, %d15
	.loc 1 153 0
	movh.a	%a2, hi:EE_th_dispatch_prio
	lea	%a2, [%a2] lo:EE_th_dispatch_prio
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d2, [%a2]0
	or	%d3, %d2
	st.w	[%a15] lo:EE_sys_ceiling, %d3
.LBB22:
.LBB23:
	.loc 1 108 0
	movh.a	%a15, hi:EE_th_waswaiting
	.loc 1 107 0
	call	EE_rq2stk_exchange
.LVL2:
	.loc 1 108 0
	lea	%a15, [%a15] lo:EE_th_waswaiting
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d3, [%a15]0
	jnz	%d3, .L13
.LVL3:
.LBB24:
.LBB25:
	.file 3 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 3 220 0
	movh.a	%a15, hi:EE_std_endcycle_next_tid
	st.w	[%a15] lo:EE_std_endcycle_next_tid, %d2
	ret
.LVL4:
.L2:
.LBE25:
.LBE24:
.LBE23:
.LBE22:
.LBB31:
.LBB32:
	.loc 3 226 0
	insert	%d15, %d15, 15, 31, 1
.LVL5:
	.loc 3 227 0
	movh.a	%a15, hi:EE_std_endcycle_next_tid
	st.w	[%a15] lo:EE_std_endcycle_next_tid, %d15
	ret
.LVL6:
.L13:
.LBE32:
.LBE31:
.LBB33:
.LBB30:
.LBB26:
.LBB27:
	.loc 3 226 0
	insert	%d2, %d2, 15, 31, 1
.LVL7:
.LBE27:
.LBE26:
	.loc 1 109 0
	st.w	[%a15]0, %d15
.LBB29:
.LBB28:
	.loc 3 227 0
	movh.a	%a15, hi:EE_std_endcycle_next_tid
	st.w	[%a15] lo:EE_std_endcycle_next_tid, %d2
	ret
.LBE28:
.LBE29:
.LBE30:
.LBE33:
.LFE93:
	.size	EE_IRQ_end_instance, .-EE_IRQ_end_instance
	.align 1
	.global	EE_IRQ_end_post_stub
	.type	EE_IRQ_end_post_stub, @function
EE_IRQ_end_post_stub:
.LFB94:
	.loc 1 169 0
	.loc 1 180 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L14
	.loc 1 182 0
	mov	%d15, 0
	st.w	[%a15] lo:EE_oo_IRQ_disable_count, %d15
.L14:
	ret
.LFE94:
	.size	EE_IRQ_end_post_stub, .-EE_IRQ_end_post_stub
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
	.uaword	.LFB94
	.uaword	.LFE94-.LFB94
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 5 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 6 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 7 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 8 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 9 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 10 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5ec
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_irqendin.c"
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
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1da
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x5
	.byte	0x7b
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x5
	.byte	0x7d
	.uaword	0x1c9
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x5
	.byte	0x80
	.uaword	0x1b2
	.uleb128 0x3
	.string	"EE_UTID"
	.byte	0x5
	.byte	0x83
	.uaword	0x1c9
	.uleb128 0x4
	.string	"EE_hal_endcycle_stacked"
	.byte	0x3
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.uaword	0x262
	.uleb128 0x5
	.string	"tid"
	.byte	0x3
	.byte	0xe0
	.uaword	0x208
	.uleb128 0x6
	.string	"utid_tmp"
	.byte	0x3
	.byte	0xe2
	.uaword	0x216
	.byte	0
	.uleb128 0x4
	.string	"EE_hal_endcycle_ready"
	.byte	0x3
	.byte	0xda
	.byte	0x1
	.byte	0x3
	.uaword	0x28d
	.uleb128 0x5
	.string	"tid"
	.byte	0x3
	.byte	0xda
	.uaword	0x208
	.byte	0
	.uleb128 0x7
	.string	"EE_stk_queryfirst"
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.uaword	0x208
	.byte	0x3
	.uleb128 0x4
	.string	"EE_IRQ_run_next_task"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uaword	0x2d3
	.uleb128 0x6
	.string	"next"
	.byte	0x1
	.byte	0x6a
	.uaword	0x208
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"EE_IRQ_end_instance"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB93
	.uaword	.LFE93
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3d3
	.uleb128 0x9
	.string	"tmp"
	.byte	0x1
	.byte	0x85
	.uaword	0x208
	.uaword	.LLST0
	.uleb128 0x6
	.string	"tmp_stacked"
	.byte	0x1
	.byte	0x86
	.uaword	0x208
	.uleb128 0xa
	.uaword	0x28d
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0x89
	.uleb128 0xb
	.uaword	0x2a8
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x9d
	.uaword	0x399
	.uleb128 0xc
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xd
	.uaword	0x2c6
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	0x262
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x71
	.uaword	0x36a
	.uleb128 0xf
	.uaword	0x281
	.uaword	.LLST2
	.byte	0
	.uleb128 0xb
	.uaword	0x225
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x6f
	.uaword	0x38e
	.uleb128 0x10
	.uaword	0x246
	.uleb128 0xc
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x11
	.uaword	0x251
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL2
	.uaword	0x5b7
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x225
	.uaword	.LBB31
	.uaword	.LBE31
	.byte	0x1
	.byte	0x9f
	.uaword	0x3c9
	.uleb128 0xf
	.uaword	0x246
	.uaword	.LLST3
	.uleb128 0x13
	.uaword	.LBB32
	.uaword	.LBE32
	.uleb128 0xd
	.uaword	0x251
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL0
	.uaword	0x5d4
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"EE_IRQ_end_post_stub"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB94
	.uaword	.LFE94
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x15
	.uaword	0x1ea
	.uaword	0x403
	.uleb128 0x16
	.byte	0
	.uleb128 0x17
	.string	"EE_std_thread_tos"
	.byte	0x6
	.byte	0x5d
	.uaword	0x41e
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x3f8
	.uleb128 0x17
	.string	"EE_IRQ_nesting_level"
	.byte	0x7
	.byte	0x39
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_tc_active_tos"
	.byte	0x8
	.byte	0xbe
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_std_endcycle_next_tid"
	.byte	0x3
	.byte	0x41
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0x3f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x208
	.uaword	0x49e
	.uleb128 0x16
	.byte	0
	.uleb128 0x17
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0x493
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0x4cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x3f8
	.uleb128 0x17
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0x4ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0x3f8
	.uleb128 0x17
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x3f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x3f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x2
	.byte	0x33
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x2
	.byte	0x3a
	.uaword	0x1f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"EE_ApplicationMode"
	.byte	0x2
	.byte	0x3d
	.uaword	0x1ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0xa
	.byte	0xd4
	.byte	0x1
	.uaword	0x208
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0xa
	.byte	0xb6
	.byte	0x1
	.uaword	0x208
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LBB22-.Ltext0
	.uaword	.LBE22-.Ltext0
	.uaword	.LBB33-.Ltext0
	.uaword	.LBE33-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB26-.Ltext0
	.uaword	.LBE26-.Ltext0
	.uaword	.LBB29-.Ltext0
	.uaword	.LBE29-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.extern	EE_std_endcycle_next_tid,STT_OBJECT,4
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_th_waswaiting,STT_OBJECT,-1
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
