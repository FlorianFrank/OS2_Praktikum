	.file	"ee_evclear.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_ClearEvent
	.type	EE_oo_ClearEvent, @function
EE_oo_ClearEvent:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_evclear.c"
	.loc 1 65 0
.LVL0:
.LBB165:
.LBB166:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 2 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d2, [%a15] lo:EE_stkfirst
.LVL1:
.LBE166:
.LBE165:
.LBB167:
.LBB168:
	.file 3 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 3 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE168:
.LBE167:
	.loc 1 80 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL2:
.LBB169:
.LBB170:
.LBB171:
.LBB172:
.LBB173:
.LBB174:
.LBB175:
.LBB176:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL3:
#NO_APP
.LBE176:
.LBE175:
.LBE174:
.LBE173:
.LBB177:
.LBB178:
.LBB179:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL4:
#NO_APP
.LBE179:
.LBE178:
.LBE177:
.LBE172:
.LBE171:
.LBE170:
.LBE169:
.LBB180:
.LBB181:
.LBB182:
.LBB183:
.LBB184:
.LBB185:
.LBB186:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE186:
.LBE185:
.LBB187:
.LBB188:
.LBB189:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE189:
.LBE188:
.LBE187:
.LBE184:
.LBE183:
.LBE182:
.LBE181:
.LBE180:
	.loc 1 89 0
	mov	%d2, 13
	ret
.LVL5:
.L2:
.LBB190:
.LBB191:
	.file 5 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 5 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE191:
.LBE190:
	.loc 1 93 0
	ld.w	%d15, [%a15] lo:EE_IRQ_nesting_level
	jz	%d15, .L4
.LVL6:
.LBB192:
.LBB193:
.LBB194:
.LBB195:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL7:
#NO_APP
.LBE199:
.LBE198:
.LBE197:
.LBE196:
.LBB200:
.LBB201:
.LBB202:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL8:
#NO_APP
.LBE202:
.LBE201:
.LBE200:
.LBE195:
.LBE194:
.LBE193:
.LBE192:
.LBB203:
.LBB204:
.LBB205:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE209:
.LBE208:
.LBB210:
.LBB211:
.LBB212:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE212:
.LBE211:
.LBE210:
.LBE207:
.LBE206:
.LBE205:
.LBE204:
.LBE203:
	.loc 1 102 0
	mov	%d2, 2
	ret
.LVL9:
.L4:
	.loc 1 106 0
	movh.a	%a2, hi:EE_th_is_extended
	sh	%d2, 2
	lea	%a2, [%a2] lo:EE_th_is_extended
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d15, [%a2]0
	jz	%d15, .L7
.LVL10:
.LBB213:
.LBB214:
.LBB215:
.LBB216:
.LBB217:
.LBB218:
.LBB219:
.LBB220:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL11:
#NO_APP
.LBE220:
.LBE219:
.LBE218:
.LBE217:
.LBB221:
.LBB222:
.LBB223:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE223:
.LBE222:
.LBE221:
.LBE216:
.LBE215:
.LBE214:
.LBE213:
	.loc 1 122 0
	movh.a	%a15, hi:EE_th_event_active
	lea	%a15, [%a15] lo:EE_th_event_active
	addsc.a	%a15, %a15, %d2, 0
	ld.w	%d2, [%a15]0
	andn	%d4, %d2, %d4
.LVL12:
	st.w	[%a15]0, %d4
.LVL13:
.LBB224:
.LBB225:
.LBB226:
.LBB227:
.LBB228:
.LBB229:
.LBB230:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE230:
.LBE229:
.LBB231:
.LBB232:
.LBB233:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE233:
.LBE232:
.LBE231:
.LBE228:
.LBE227:
.LBE226:
.LBE225:
.LBE224:
	.loc 1 128 0
	mov	%d2, 0
	.loc 1 130 0
	ret
.LVL14:
.L7:
.LBB234:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
.LBB239:
.LBB240:
.LBB241:
	.loc 4 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL15:
#NO_APP
.LBE241:
.LBE240:
.LBE239:
.LBE238:
.LBB242:
.LBB243:
.LBB244:
	.loc 4 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL16:
#NO_APP
.LBE244:
.LBE243:
.LBE242:
.LBE237:
.LBE236:
.LBE235:
.LBE234:
.LBB245:
.LBB246:
.LBB247:
.LBB248:
.LBB249:
.LBB250:
.LBB251:
	.loc 4 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE251:
.LBE250:
.LBB252:
.LBB253:
.LBB254:
	.loc 4 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE254:
.LBE253:
.LBE252:
.LBE249:
.LBE248:
.LBE247:
.LBE246:
.LBE245:
	.loc 1 115 0
	mov	%d2, 1
	ret
.LFE92:
	.size	EE_oo_ClearEvent, .-EE_oo_ClearEvent
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
	.file 6 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 8 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 9 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 10 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 11 "./0_Src/OS/cpu/common/inc/ee_context.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe67
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_evclear.c"
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
	.byte	0x6
	.byte	0x4b
	.uaword	0x1c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1d9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x7
	.byte	0x7b
	.uaword	0x1c8
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x7
	.byte	0x7c
	.uaword	0x1b1
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x7
	.byte	0x7d
	.uaword	0x1c8
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x7
	.byte	0x80
	.uaword	0x1b1
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uahalf	0x134
	.uaword	0x37a
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1e9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x1e9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1e9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uahalf	0x133
	.uaword	0x39d
	.uleb128 0x7
	.string	"bits"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x224
	.uleb128 0x7
	.string	"reg"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x1e9
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x37a
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x16e
	.uleb128 0x8
	.string	"EventMaskType"
	.byte	0x8
	.uahalf	0x2ec
	.uaword	0x1e9
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
	.uaword	0x1d9
	.byte	0x3
	.uaword	0x40d
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x6f
	.uaword	0x40d
	.uleb128 0xc
	.string	"__res"
	.byte	0x4
	.byte	0x71
	.uaword	0x1d9
	.byte	0
	.uleb128 0xd
	.uaword	0x1d9
	.uleb128 0xe
	.string	"_mtcr"
	.byte	0x4
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x43a
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x87
	.uaword	0x40d
	.uleb128 0xf
	.string	"__val"
	.byte	0x4
	.byte	0x87
	.uaword	0x40d
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_isync"
	.byte	0x7
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
	.byte	0x7
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x47f
	.uleb128 0x12
	.string	"icr"
	.byte	0x7
	.uahalf	0x242
	.uaword	0x39d
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_get_ICR"
	.byte	0x7
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x39d
	.byte	0x3
	.uaword	0x4a8
	.uleb128 0x14
	.string	"icr"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x39d
	.byte	0
	.uleb128 0x10
	.string	"EE_tc_disableIRQ"
	.byte	0x7
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.string	"EE_tc_resumeIRQ"
	.byte	0x7
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x4f4
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x207
	.uleb128 0x14
	.string	"icr"
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x39d
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_suspendIRQ"
	.byte	0x7
	.uahalf	0x384
	.byte	0x1
	.uaword	0x207
	.byte	0x3
	.uaword	0x520
	.uleb128 0x14
	.string	"icr"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x39d
	.byte	0
	.uleb128 0x15
	.string	"EE_hal_suspendIRQ"
	.byte	0x7
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x207
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_resumeIRQ"
	.byte	0x7
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x566
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x207
	.byte	0
	.uleb128 0x16
	.string	"EE_stk_queryfirst"
	.byte	0x2
	.byte	0x43
	.byte	0x1
	.uaword	0x216
	.byte	0x3
	.uleb128 0xa
	.string	"EE_oo_check_disableint_error"
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.uaword	0x1f8
	.byte	0x3
	.uaword	0x5bf
	.uleb128 0xc
	.string	"error_check"
	.byte	0x3
	.byte	0x96
	.uaword	0x1f8
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x9
	.byte	0x6c
	.byte	0x1
	.uaword	0x207
	.byte	0x3
	.uleb128 0xe
	.string	"EE_hal_end_nested_primitive"
	.byte	0x9
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x619
	.uleb128 0xf
	.string	"flags"
	.byte	0x9
	.byte	0x73
	.uaword	0x207
	.byte	0
	.uleb128 0x16
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.uaword	0x1e9
	.byte	0x3
	.uleb128 0x17
	.byte	0x1
	.string	"EE_oo_ClearEvent"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x3ac
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc8f
	.uleb128 0x18
	.string	"Mask"
	.byte	0x1
	.byte	0x3d
	.uaword	0x3bf
	.uaword	.LLST0
	.uleb128 0xc
	.string	"current"
	.byte	0x1
	.byte	0x42
	.uaword	0x216
	.uleb128 0xc
	.string	"flag"
	.byte	0x1
	.byte	0x43
	.uaword	0x207
	.uleb128 0x19
	.uaword	0x566
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x1
	.byte	0x47
	.uleb128 0x1a
	.uaword	0x581
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.byte	0x50
	.uaword	0x6c5
	.uleb128 0x1b
	.uaword	.LBB168
	.uaword	.LBE168
	.uleb128 0x1c
	.uaword	0x5ab
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5bf
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x1
	.byte	0x53
	.uaword	0x77b
	.uleb128 0x1d
	.uaword	0x520
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4f4
	.uaword	.LBB171
	.uaword	.LBE171
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB172
	.uaword	.LBE172
	.uleb128 0x1c
	.uaword	0x513
	.uleb128 0x1f
	.uaword	0x47f
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x7
	.uahalf	0x386
	.uaword	0x756
	.uleb128 0x1b
	.uaword	.LBB174
	.uaword	.LBE174
	.uleb128 0x1c
	.uaword	0x49b
	.uleb128 0x1e
	.uaword	0x3e1
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x3f4
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	.LBB176
	.uaword	.LBE176
	.uleb128 0x21
	.uaword	0x3ff
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4a8
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x44c
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5e6
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.byte	0x55
	.uaword	0x838
	.uleb128 0x20
	.uaword	0x60b
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x53c
	.uaword	.LBB181
	.uaword	.LBE181
	.byte	0x9
	.byte	0x75
	.uleb128 0x20
	.uaword	0x557
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	0x4bf
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4d9
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	.LBB183
	.uaword	.LBE183
	.uleb128 0x1c
	.uaword	0x4e7
	.uleb128 0x1e
	.uaword	0x45a
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x472
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x7
	.uahalf	0x244
	.uaword	0x812
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x421
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1e
	.uaword	0x43a
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3d5
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x619
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.uaword	0x5bf
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.byte	0x60
	.uaword	0x8fd
	.uleb128 0x1d
	.uaword	0x520
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4f4
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x1c
	.uaword	0x513
	.uleb128 0x1f
	.uaword	0x47f
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x7
	.uahalf	0x386
	.uaword	0x8d8
	.uleb128 0x1b
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x1c
	.uaword	0x49b
	.uleb128 0x1e
	.uaword	0x3e1
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x3f4
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	.LBB199
	.uaword	.LBE199
	.uleb128 0x21
	.uaword	0x3ff
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4a8
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x44c
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5e6
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.byte	0x62
	.uaword	0x9ba
	.uleb128 0x20
	.uaword	0x60b
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	0x53c
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x9
	.byte	0x75
	.uleb128 0x20
	.uaword	0x557
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	0x4bf
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4d9
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	.LBB206
	.uaword	.LBE206
	.uleb128 0x1c
	.uaword	0x4e7
	.uleb128 0x1e
	.uaword	0x45a
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x472
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x7
	.uahalf	0x244
	.uaword	0x994
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0x421
	.uaword	.LLST14
	.byte	0
	.uleb128 0x1e
	.uaword	0x43a
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3d5
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5bf
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x1
	.byte	0x77
	.uaword	0xa70
	.uleb128 0x1d
	.uaword	0x520
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4f4
	.uaword	.LBB215
	.uaword	.LBE215
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB216
	.uaword	.LBE216
	.uleb128 0x1c
	.uaword	0x513
	.uleb128 0x1f
	.uaword	0x47f
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x7
	.uahalf	0x386
	.uaword	0xa4b
	.uleb128 0x1b
	.uaword	.LBB218
	.uaword	.LBE218
	.uleb128 0x1c
	.uaword	0x49b
	.uleb128 0x1e
	.uaword	0x3e1
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x20
	.uaword	0x3f4
	.uaword	.LLST15
	.uleb128 0x1b
	.uaword	.LBB220
	.uaword	.LBE220
	.uleb128 0x21
	.uaword	0x3ff
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4a8
	.uaword	.LBB221
	.uaword	.LBE221
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x44c
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5e6
	.uaword	.LBB224
	.uaword	.LBE224
	.byte	0x1
	.byte	0x7d
	.uaword	0xb2d
	.uleb128 0x20
	.uaword	0x60b
	.uaword	.LLST17
	.uleb128 0x1d
	.uaword	0x53c
	.uaword	.LBB225
	.uaword	.LBE225
	.byte	0x9
	.byte	0x75
	.uleb128 0x20
	.uaword	0x557
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	0x4bf
	.uaword	.LBB226
	.uaword	.LBE226
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x20
	.uaword	0x4d9
	.uaword	.LLST17
	.uleb128 0x1b
	.uaword	.LBB227
	.uaword	.LBE227
	.uleb128 0x1c
	.uaword	0x4e7
	.uleb128 0x1e
	.uaword	0x45a
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x472
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x7
	.uahalf	0x244
	.uaword	0xb07
	.uleb128 0x20
	.uaword	0x42c
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	0x421
	.uaword	.LLST21
	.byte	0
	.uleb128 0x1e
	.uaword	0x43a
	.uaword	.LBB231
	.uaword	.LBE231
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3d5
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x5bf
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x1
	.byte	0x6d
	.uaword	0xbdf
	.uleb128 0x1d
	.uaword	0x520
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x9
	.byte	0x6e
	.uleb128 0x1e
	.uaword	0x4f4
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x7
	.uahalf	0x3f4
	.uleb128 0x1b
	.uaword	.LBB237
	.uaword	.LBE237
	.uleb128 0x1c
	.uaword	0x513
	.uleb128 0x1f
	.uaword	0x47f
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x7
	.uahalf	0x386
	.uaword	0xbba
	.uleb128 0x1b
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x1c
	.uaword	0x49b
	.uleb128 0x1e
	.uaword	0x3e1
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x7
	.uahalf	0x23e
	.uleb128 0x24
	.uaword	0x3f4
	.uahalf	0xfe2c
	.uleb128 0x1b
	.uaword	.LBB241
	.uaword	.LBE241
	.uleb128 0x25
	.uaword	0x3ff
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x4a8
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x7
	.uahalf	0x387
	.uleb128 0x22
	.uaword	0x44c
	.uaword	.LBB243
	.uaword	.LBE243
	.byte	0x7
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x5e6
	.uaword	.LBB245
	.uaword	.LBE245
	.byte	0x1
	.byte	0x6f
	.uleb128 0x26
	.uaword	0x60b
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.uaword	0x53c
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x9
	.byte	0x75
	.uleb128 0x26
	.uaword	0x557
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.uaword	0x4bf
	.uaword	.LBB247
	.uaword	.LBE247
	.byte	0x7
	.uahalf	0x3ef
	.uleb128 0x26
	.uaword	0x4d9
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.uaword	.LBB248
	.uaword	.LBE248
	.uleb128 0x1c
	.uaword	0x4e7
	.uleb128 0x1e
	.uaword	0x45a
	.uaword	.LBB249
	.uaword	.LBE249
	.byte	0x7
	.uahalf	0x381
	.uleb128 0x23
	.uaword	0x472
	.uleb128 0x1f
	.uaword	0x412
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x7
	.uahalf	0x244
	.uaword	0xc68
	.uleb128 0x26
	.uaword	0x42c
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.uaword	0x421
	.uahalf	0xfe2c
	.byte	0
	.uleb128 0x1e
	.uaword	0x43a
	.uaword	.LBB252
	.uaword	.LBE252
	.byte	0x7
	.uahalf	0x248
	.uleb128 0x22
	.uaword	0x3d5
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x7
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x1e9
	.uaword	0xc9a
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"EE_std_thread_tos"
	.byte	0xa
	.byte	0x5d
	.uaword	0xcb5
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc8f
	.uleb128 0x29
	.string	"EE_IRQ_nesting_level"
	.byte	0x5
	.byte	0x39
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_tc_active_tos"
	.byte	0x9
	.byte	0xbe
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_std_endcycle_next_tid"
	.byte	0xb
	.byte	0x41
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_status"
	.byte	0x8
	.byte	0xa6
	.uaword	0xc8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.uaword	0x216
	.uaword	0xd35
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.string	"EE_th_next"
	.byte	0x8
	.byte	0xae
	.uaword	0xd2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_th_ready_prio"
	.byte	0x8
	.byte	0xb1
	.uaword	0xd63
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc8f
	.uleb128 0x29
	.string	"EE_th_dispatch_prio"
	.byte	0x8
	.byte	0xb2
	.uaword	0xd85
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0xc8f
	.uleb128 0x29
	.string	"EE_stkfirst"
	.byte	0x8
	.byte	0xc7
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_sys_ceiling"
	.byte	0x8
	.byte	0xca
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_event_active"
	.byte	0x8
	.uahalf	0x111
	.uaword	0xc8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_waswaiting"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0xc8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"EE_th_is_extended"
	.byte	0x8
	.uahalf	0x123
	.uaword	0xc8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x2
	.byte	0x33
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x2
	.byte	0x3a
	.uaword	0x207
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"EE_ApplicationMode"
	.byte	0x2
	.byte	0x3d
	.uaword	0x1e9
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x54
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
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
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
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"__regaddr"
	.extern	EE_th_event_active,STT_OBJECT,-1
	.extern	EE_th_is_extended,STT_OBJECT,-1
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.extern	EE_stkfirst,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
