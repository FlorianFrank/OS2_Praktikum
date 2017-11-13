	.file	"ee_startos.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_StartOS
	.type	EE_oo_StartOS, @function
EE_oo_StartOS:
.LFB96:
	.file 1 "0_Src/OS/kernel/oo/src/ee_startos.c"
	.loc 1 190 0
.LVL0:
	.loc 1 200 0
	movh.a	%a15, hi:EE_oo_start_os_flag.2029
	ld.bu	%d15, [%a15] lo:EE_oo_start_os_flag.2029
	jnz	%d15, .L14
.LVL1:
.LBB188:
.LBB189:
.LBB190:
.LBB191:
.LBB192:
.LBB193:
.LBB194:
.LBB195:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE195:
.LBE194:
.LBE193:
.LBE192:
.LBB196:
.LBB197:
.LBB198:
	.loc 2 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE198:
.LBE197:
.LBE196:
.LBE191:
.LBE190:
.LBE189:
.LBE188:
	.loc 1 236 0
	mov	%d15, 1
	.loc 1 232 0
	movh.a	%a2, hi:EE_ApplicationMode
	.loc 1 240 0
	movh.a	%a12, hi:EE_oo_no_preemption
	.loc 1 236 0
	st.b	[%a15] lo:EE_oo_start_os_flag.2029, %d15
	.loc 1 240 0
	mov	%d15, 1
	.loc 1 232 0
	st.w	[%a2] lo:EE_ApplicationMode, %d4
	.loc 1 240 0
	st.w	[%a12] lo:EE_oo_no_preemption, %d15
.LVL3:
.LBB199:
.LBB200:
	.loc 1 144 0
	jlt.u	%d4, 2, .L3
.LVL4:
.L6:
.LBE200:
.LBE199:
	.loc 1 246 0
	mov	%d15, 0
	st.w	[%a12] lo:EE_oo_no_preemption, %d15
	.loc 1 254 0
	call	EE_rq_queryfirst
.LVL5:
	.loc 1 255 0
	jeq	%d2, -1, .L5
	.loc 1 257 0
	movh.a	%a2, hi:EE_th_dispatch_prio
	sh	%d2, 2
.LVL6:
	lea	%a2, [%a2] lo:EE_th_dispatch_prio
	addsc.a	%a2, %a2, %d2, 0
	movh.a	%a15, hi:EE_sys_ceiling
	ld.w	%d4, [%a15] lo:EE_sys_ceiling
	ld.w	%d3, [%a2]0
	or	%d3, %d4
	st.w	[%a15] lo:EE_sys_ceiling, %d3
	.loc 1 259 0
	movh	%d3, hi:EE_th_status
	addi	%d3, %d3, lo:EE_th_status
	mov.a	%a2, %d3
	addsc.a	%a15, %a2, %d2, 0
	st.w	[%a15]0, %d15
	.loc 1 270 0
	call	EE_rq2stk_exchange
.LVL7:
.LBB204:
.LBB205:
	.file 3 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 3 214 0
	mov	%d4, %d2
	call	EE_std_change_context
.LVL8:
.L5:
.LBE205:
.LBE204:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
.LBB212:
	.loc 2 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d8
	# 0 "" 2
#NO_APP
.LBE212:
.LBE211:
.LBB213:
.LBB214:
.LBB215:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE215:
.LBE214:
.LBE213:
.LBE210:
.LBE209:
.LBE208:
.LBE207:
.LBE206:
.LBB216:
.LBB217:
.LBB218:
.LBB219:
	.loc 2 172 0
#APP
	# 172 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.LBE219:
.LBE218:
.LBE217:
.LBE216:
.LBB220:
.LBB221:
	.loc 1 181 0
	mov	%d15, 1
	movh.a	%a15, hi:started.2024
	st.w	[%a15] lo:started.2024, %d15
.L8:
	j	.L8
.LVL9:
.L14:
.LBE221:
.LBE220:
.LBB222:
.LBB223:
.LBB224:
.LBB225:
.LBB226:
.LBB227:
.LBB228:
.LBB229:
	.loc 2 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL10:
#NO_APP
.LBE229:
.LBE228:
.LBE227:
.LBE226:
.LBB230:
.LBB231:
.LBB232:
	.loc 2 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL11:
#NO_APP
.LBE232:
.LBE231:
.LBE230:
.LBE225:
.LBE224:
.LBE223:
.LBE222:
.LBB233:
.LBB234:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
.LBB239:
	.loc 2 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE239:
.LBE238:
.LBB240:
.LBB241:
.LBB242:
	.loc 2 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE242:
.LBE241:
.LBE240:
.LBE237:
.LBE236:
.LBE235:
.LBE234:
.LBE233:
	.loc 1 285 0
	mov	%d2, 7
	ret
.LVL12:
.L3:
.LBB243:
.LBB203:
.LBB201:
.LBB202:
	.loc 1 98 0
	movh.a	%a15, hi:EE_oo_autostart_task_data
	lea	%a15, [%a15] lo:EE_oo_autostart_task_data
	addsc.a	%a15, %a15, %d4, 3
	ld.bu	%d15, [%a15]0
.LVL13:
	.loc 1 99 0
	jz	%d15, .L6
	ld.a	%a15, [%a15] 4
.LVL14:
	mov	%d9, 0
.LVL15:
.L7:
	.loc 1 100 0
	ld.w	%d4, [%a15+]4
	add	%d9, 1
.LVL16:
	call	EE_oo_ActivateTask
.LVL17:
	.loc 1 99 0
	and	%d2, %d9, 255
	jlt.u	%d2, %d15, .L7
	j	.L6
.LBE202:
.LBE201:
.LBE203:
.LBE243:
.LFE96:
	.size	EE_oo_StartOS, .-EE_oo_StartOS
	.local	started.2024
.section .bss,"aw",@nobits
	.align 2
	.type		 started.2024,@object
	.size		 started.2024,4
started.2024:
	.space	4
	.local	EE_oo_start_os_flag.2029
	.align 0
	.type		 EE_oo_start_os_flag.2029,@object
	.size		 EE_oo_start_os_flag.2029,1
EE_oo_start_os_flag.2029:
	.space	1
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
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 5 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 6 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 9 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 10 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.file 11 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.file 12 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe38
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_startos.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"EE_BIT"
	.byte	0x4
	.byte	0x35
	.uaword	0x17c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"EE_UINT8"
	.byte	0x4
	.byte	0x38
	.uaword	0x17c
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
	.byte	0x4
	.byte	0x4b
	.uaword	0x1df
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.string	"EE_UINT32"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1f7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.string	"EE_UREG"
	.byte	0x5
	.byte	0x7b
	.uaword	0x1e6
	.uleb128 0x2
	.string	"EE_FREG"
	.byte	0x5
	.byte	0x7d
	.uaword	0x1e6
	.uleb128 0x2
	.string	"EE_TID"
	.byte	0x5
	.byte	0x80
	.uaword	0x1cf
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.uahalf	0x134
	.uaword	0x389
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x207
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x5
	.uahalf	0x136
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x5
	.uahalf	0x137
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x5
	.uahalf	0x138
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x5
	.uahalf	0x139
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x5
	.uahalf	0x13c
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x207
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x5
	.uahalf	0x13f
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x5
	.uahalf	0x140
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x5
	.uahalf	0x142
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x5
	.uahalf	0x146
	.uaword	0x207
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.uahalf	0x133
	.uaword	0x3ac
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x233
	.uleb128 0x7
	.string	"reg"
	.byte	0x5
	.uahalf	0x148
	.uaword	0x207
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x5
	.uahalf	0x149
	.uaword	0x389
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x17c
	.uleb128 0x9
	.string	"EE_oo_autostart_task_type"
	.byte	0x8
	.byte	0x6
	.uahalf	0x282
	.uaword	0x40b
	.uleb128 0xa
	.string	"n"
	.byte	0x6
	.uahalf	0x283
	.uaword	0x207
	.byte	0
	.uleb128 0xa
	.string	"task"
	.byte	0x6
	.uahalf	0x284
	.uaword	0x40b
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x411
	.uleb128 0xc
	.uaword	0x225
	.uleb128 0x8
	.string	"TaskType"
	.byte	0x6
	.uahalf	0x2bb
	.uaword	0x225
	.uleb128 0x8
	.string	"AppModeType"
	.byte	0x6
	.uahalf	0x348
	.uaword	0x207
	.uleb128 0xd
	.string	"_isync"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.string	"_mfcr"
	.byte	0x2
	.byte	0x6f
	.byte	0x1
	.uaword	0x1f7
	.byte	0x3
	.uaword	0x473
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x2
	.byte	0x6f
	.uaword	0x473
	.uleb128 0x10
	.string	"__res"
	.byte	0x2
	.byte	0x71
	.uaword	0x1f7
	.byte	0
	.uleb128 0xc
	.uaword	0x1f7
	.uleb128 0x11
	.string	"_mtcr"
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x4a0
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x2
	.byte	0x87
	.uaword	0x473
	.uleb128 0x12
	.string	"__val"
	.byte	0x2
	.byte	0x87
	.uaword	0x473
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_isync"
	.byte	0x5
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"_enable"
	.byte	0x2
	.byte	0xaa
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"_disable"
	.byte	0x2
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"EE_tc_set_ICR"
	.byte	0x5
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x4f2
	.uleb128 0x15
	.string	"icr"
	.byte	0x5
	.uahalf	0x242
	.uaword	0x3ac
	.byte	0
	.uleb128 0x16
	.string	"EE_tc_get_ICR"
	.byte	0x5
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3ac
	.byte	0x3
	.uaword	0x51b
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x3ac
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_disableIRQ"
	.byte	0x5
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"EE_tc_enableIRQ"
	.byte	0x5
	.uahalf	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"EE_tc_resumeIRQ"
	.byte	0x5
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x57d
	.uleb128 0x15
	.string	"flags"
	.byte	0x5
	.uahalf	0x37d
	.uaword	0x216
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x37f
	.uaword	0x3ac
	.byte	0
	.uleb128 0x16
	.string	"EE_tc_suspendIRQ"
	.byte	0x5
	.uahalf	0x384
	.byte	0x1
	.uaword	0x216
	.byte	0x3
	.uaword	0x5a9
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x386
	.uaword	0x3ac
	.byte	0
	.uleb128 0x18
	.string	"EE_hal_suspendIRQ"
	.byte	0x5
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x216
	.byte	0x3
	.uleb128 0x14
	.string	"EE_hal_resumeIRQ"
	.byte	0x5
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x5ef
	.uleb128 0x15
	.string	"flags"
	.byte	0x5
	.uahalf	0x3ed
	.uaword	0x216
	.byte	0
	.uleb128 0xe
	.string	"compute_task_tid"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x225
	.byte	0x1
	.uaword	0x62a
	.uleb128 0x12
	.string	"task_id_vec"
	.byte	0x1
	.byte	0x5b
	.uaword	0x40b
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0x5b
	.uaword	0x18d
	.byte	0
	.uleb128 0x19
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x7
	.byte	0x6c
	.byte	0x1
	.uaword	0x216
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_end_nested_primitive"
	.byte	0x7
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x684
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.byte	0x73
	.uaword	0x216
	.byte	0
	.uleb128 0x11
	.string	"EE_oo_autostart_os"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.uaword	0x6ad
	.uleb128 0x12
	.string	"Mode"
	.byte	0x1
	.byte	0x8e
	.uaword	0x427
	.byte	0
	.uleb128 0x11
	.string	"EE_hal_ready2stacked"
	.byte	0x3
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.uaword	0x6d7
	.uleb128 0x12
	.string	"tid"
	.byte	0x3
	.byte	0xd4
	.uaword	0x225
	.byte	0
	.uleb128 0x13
	.string	"EE_hal_enableIRQ"
	.byte	0x5
	.uahalf	0x3e3
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_oo_start_os"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.byte	0x1
	.uaword	0x716
	.uleb128 0x10
	.string	"started"
	.byte	0x1
	.byte	0xb4
	.uaword	0x716
	.byte	0
	.uleb128 0x1a
	.uaword	0x1df
	.uleb128 0x11
	.string	"EE_oo_autostart_tasks"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uaword	0x759
	.uleb128 0x12
	.string	"Mode"
	.byte	0x1
	.byte	0x5f
	.uaword	0x427
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x61
	.uaword	0x18d
	.uleb128 0x10
	.string	"t"
	.byte	0x1
	.byte	0x61
	.uaword	0x18d
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"EE_oo_StartOS"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.uaword	0x3bb
	.uaword	.LFB96
	.uaword	.LFE96
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xba6
	.uleb128 0x1c
	.string	"Mode"
	.byte	0x1
	.byte	0xbd
	.uaword	0x427
	.uaword	.LLST0
	.uleb128 0x1d
	.string	"EE_oo_start_os_flag"
	.byte	0x1
	.byte	0xc0
	.uaword	0x16e
	.byte	0x5
	.byte	0x3
	.uaword	EE_oo_start_os_flag.2029
	.uleb128 0x1e
	.string	"rq"
	.byte	0x1
	.byte	0xc2
	.uaword	0x225
	.uaword	.LLST1
	.uleb128 0x10
	.string	"flag"
	.byte	0x1
	.byte	0xc3
	.uaword	0x216
	.uleb128 0x1f
	.uaword	0x62a
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x1
	.byte	0xd8
	.uaword	0x880
	.uleb128 0x20
	.uaword	0x5a9
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x57d
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x22
	.uaword	.LBB191
	.uaword	.LBE191
	.uleb128 0x23
	.uaword	0x59c
	.uleb128 0x24
	.uaword	0x4f2
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x5
	.uahalf	0x386
	.uaword	0x85b
	.uleb128 0x22
	.uaword	.LBB193
	.uaword	.LBE193
	.uleb128 0x23
	.uaword	0x50e
	.uleb128 0x21
	.uaword	0x447
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x25
	.uaword	0x45a
	.uaword	.LLST2
	.uleb128 0x22
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x26
	.uaword	0x465
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x51b
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x27
	.uaword	0x4bf
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x684
	.uaword	.LBB199
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf4
	.uaword	0x8db
	.uleb128 0x25
	.uaword	0x6a0
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	0x71b
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x1
	.byte	0x91
	.uleb128 0x25
	.uaword	0x73a
	.uaword	.LLST5
	.uleb128 0x22
	.uaword	.LBB202
	.uaword	.LBE202
	.uleb128 0x26
	.uaword	0x746
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	0x74f
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.LVL17
	.uaword	0xdb6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x6ad
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x902
	.uleb128 0x25
	.uaword	0x6cb
	.uaword	.LLST8
	.uleb128 0x29
	.uaword	.LVL8
	.uaword	0xddd
	.byte	0
	.uleb128 0x24
	.uaword	0x651
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x1
	.uahalf	0x112
	.uaword	0x9c0
	.uleb128 0x25
	.uaword	0x676
	.uaword	.LLST9
	.uleb128 0x20
	.uaword	0x5c5
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x7
	.byte	0x75
	.uleb128 0x25
	.uaword	0x5e0
	.uaword	.LLST9
	.uleb128 0x21
	.uaword	0x548
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x25
	.uaword	0x562
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x23
	.uaword	0x570
	.uleb128 0x21
	.uaword	0x4cd
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x2a
	.uaword	0x4e5
	.uleb128 0x24
	.uaword	0x478
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x5
	.uahalf	0x244
	.uaword	0x99a
	.uleb128 0x25
	.uaword	0x492
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0x487
	.uaword	.LLST13
	.byte	0
	.uleb128 0x21
	.uaword	0x4a0
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x27
	.uaword	0x43b
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x6d7
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x1
	.uahalf	0x115
	.uaword	0x9f6
	.uleb128 0x21
	.uaword	0x532
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x5
	.uahalf	0x3e5
	.uleb128 0x27
	.uaword	0x4b2
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x5
	.uahalf	0x24e
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x6ee
	.uaword	.LBB220
	.uaword	.LBE220
	.byte	0x1
	.uahalf	0x11a
	.uaword	0xa20
	.uleb128 0x22
	.uaword	.LBB221
	.uaword	.LBE221
	.uleb128 0x2b
	.uaword	0x706
	.byte	0x5
	.byte	0x3
	.uaword	started.2024
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x62a
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x1
	.byte	0xcb
	.uaword	0xad6
	.uleb128 0x20
	.uaword	0x5a9
	.uaword	.LBB223
	.uaword	.LBE223
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x57d
	.uaword	.LBB224
	.uaword	.LBE224
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x22
	.uaword	.LBB225
	.uaword	.LBE225
	.uleb128 0x23
	.uaword	0x59c
	.uleb128 0x24
	.uaword	0x4f2
	.uaword	.LBB226
	.uaword	.LBE226
	.byte	0x5
	.uahalf	0x386
	.uaword	0xab1
	.uleb128 0x22
	.uaword	.LBB227
	.uaword	.LBE227
	.uleb128 0x23
	.uaword	0x50e
	.uleb128 0x21
	.uaword	0x447
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x25
	.uaword	0x45a
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	.LBB229
	.uaword	.LBE229
	.uleb128 0x26
	.uaword	0x465
	.uaword	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x51b
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x27
	.uaword	0x4bf
	.uaword	.LBB231
	.uaword	.LBE231
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x651
	.uaword	.LBB233
	.uaword	.LBE233
	.byte	0x1
	.byte	0xcd
	.uaword	0xb93
	.uleb128 0x25
	.uaword	0x676
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	0x5c5
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x7
	.byte	0x75
	.uleb128 0x25
	.uaword	0x5e0
	.uaword	.LLST16
	.uleb128 0x21
	.uaword	0x548
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x25
	.uaword	0x562
	.uaword	.LLST16
	.uleb128 0x22
	.uaword	.LBB236
	.uaword	.LBE236
	.uleb128 0x23
	.uaword	0x570
	.uleb128 0x21
	.uaword	0x4cd
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x2a
	.uaword	0x4e5
	.uleb128 0x24
	.uaword	0x478
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x5
	.uahalf	0x244
	.uaword	0xb6d
	.uleb128 0x25
	.uaword	0x492
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	0x487
	.uaword	.LLST20
	.byte	0
	.uleb128 0x21
	.uaword	0x4a0
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x27
	.uaword	0x43b
	.uaword	.LBB241
	.uaword	.LBE241
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL5
	.uaword	0xe03
	.uleb128 0x29
	.uaword	.LVL7
	.uaword	0xe1e
	.byte	0
	.uleb128 0x2c
	.uaword	0x207
	.uaword	0xbb1
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0xbcc
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xba6
	.uleb128 0x2e
	.string	"EE_IRQ_nesting_level"
	.byte	0x9
	.byte	0x39
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_std_endcycle_next_tid"
	.byte	0x3
	.byte	0x41
	.uaword	0x225
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_th_status"
	.byte	0x6
	.byte	0xa6
	.uaword	0xba6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0x225
	.uaword	0xc4c
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.string	"EE_th_next"
	.byte	0x6
	.byte	0xae
	.uaword	0xc41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_th_ready_prio"
	.byte	0x6
	.byte	0xb1
	.uaword	0xc7a
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xba6
	.uleb128 0x2e
	.string	"EE_th_dispatch_prio"
	.byte	0x6
	.byte	0xb2
	.uaword	0xc9c
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xba6
	.uleb128 0x2e
	.string	"EE_stkfirst"
	.byte	0x6
	.byte	0xc7
	.uaword	0x225
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_sys_ceiling"
	.byte	0x6
	.byte	0xca
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"EE_th_event_active"
	.byte	0x6
	.uahalf	0x111
	.uaword	0xba6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"EE_th_waswaiting"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xba6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0x3ce
	.uaword	0xd11
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2f
	.string	"EE_oo_autostart_task_data"
	.byte	0x6
	.uahalf	0x289
	.uaword	0xd35
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xd06
	.uleb128 0x2e
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xa
	.byte	0x33
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xa
	.byte	0x3a
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_ApplicationMode"
	.byte	0xa
	.byte	0x3d
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_oo_no_preemption"
	.byte	0xb
	.byte	0x8e
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"EE_oo_ActivateTask"
	.byte	0xc
	.byte	0x95
	.byte	0x1
	.uaword	0x3bb
	.byte	0x1
	.uaword	0xddd
	.uleb128 0x31
	.uaword	0x416
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x3
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0xe03
	.uleb128 0x31
	.uaword	0x225
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0xb
	.byte	0xb6
	.byte	0x1
	.uaword	0x225
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0xb
	.byte	0xd4
	.byte	0x1
	.uaword	0x225
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL12-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
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
	.uaword	.LBB199-.Ltext0
	.uaword	.LBE199-.Ltext0
	.uaword	.LBB243-.Ltext0
	.uaword	.LBE243-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"__regaddr"
	.extern	EE_oo_ActivateTask,STT_FUNC,0
	.extern	EE_oo_autostart_task_data,STT_OBJECT,-1
	.extern	EE_std_change_context,STT_FUNC,0
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_oo_no_preemption,STT_OBJECT,4
	.extern	EE_ApplicationMode,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
