	.file	"ee_alget.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_GetAlarm
	.type	EE_oo_GetAlarm, @function
EE_oo_GetAlarm:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_alget.c"
	.loc 1 58 0
.LVL0:
.LBB149:
.LBB150:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE150:
.LBE149:
	.loc 1 71 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB151:
.LBB152:
.LBB153:
.LBB154:
.LBB155:
.LBB156:
.LBB157:
.LBB158:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE158:
.LBE157:
.LBE156:
.LBE155:
.LBB159:
.LBB160:
.LBB161:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE161:
.LBE160:
.LBE159:
.LBE154:
.LBE153:
.LBE152:
.LBE151:
.LBB162:
.LBB163:
.LBB164:
.LBB165:
.LBB166:
.LBB167:
.LBB168:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE168:
.LBE167:
.LBB169:
.LBB170:
.LBB171:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE171:
.LBE170:
.LBE169:
.LBE166:
.LBE165:
.LBE164:
.LBE163:
.LBE162:
	.loc 1 80 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 84 0
	jlt.u	%d4, 9, .L4
.LVL5:
.LBB172:
.LBB173:
.LBB174:
.LBB175:
.LBB176:
.LBB177:
.LBB178:
.LBB179:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE179:
.LBE178:
.LBE177:
.LBE176:
.LBB180:
.LBB181:
.LBB182:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE182:
.LBE181:
.LBE180:
.LBE175:
.LBE174:
.LBE173:
.LBE172:
.LBB183:
.LBB184:
.LBB185:
.LBB186:
.LBB187:
.LBB188:
.LBB189:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE189:
.LBE188:
.LBB190:
.LBB191:
.LBB192:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE192:
.LBE191:
.LBE190:
.LBE187:
.LBE186:
.LBE185:
.LBE184:
.LBE183:
	.loc 1 93 0
	mov	%d2, 3
	ret
.LVL8:
.L4:
.LBB193:
.LBB194:
.LBB195:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
.LBB200:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d6, LO:65068
	# 0 "" 2
.LVL9:
#NO_APP
.LBE200:
.LBE199:
.LBE198:
.LBE197:
.LBB201:
.LBB202:
.LBB203:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE203:
.LBE202:
.LBE201:
.LBE196:
.LBE195:
.LBE194:
.LBE193:
	.loc 1 99 0
	movh	%d5, hi:EE_alarm_RAM
	addi	%d5, %d5, lo:EE_alarm_RAM
	madd	%d2, %d5, %d4, 16
	mov.a	%a15, %d2
	ld.w	%d15, [%a15]0
	jnz	%d15, .L5
.LVL10:
.LBB204:
.LBB205:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
.LBB210:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d6
	# 0 "" 2
#NO_APP
.LBE210:
.LBE209:
.LBB211:
.LBB212:
.LBB213:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE213:
.LBE212:
.LBE211:
.LBE208:
.LBE207:
.LBE206:
.LBE205:
.LBE204:
	.loc 1 106 0
	mov	%d2, 5
	ret
.LVL11:
.L5:
	.loc 1 111 0
	movh.a	%a15, hi:EE_alarm_ROM
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:EE_alarm_ROM
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	.loc 1 131 0
	mov	%d2, 15
	.loc 1 111 0
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:EE_counter_RAM
	lea	%a15, [%a15] lo:EE_counter_RAM
	addsc.a	%a15, %a15, %d15, 3
	ld.w	%d15, [%a15] 4
.LVL12:
	.loc 1 113 0
	jz.a	%a4, .L6
	.loc 1 116 0
	mov.a	%a2, %d5
	sh	%d3, %d15, 4
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%a15] 8
	add	%d2, 1
	st.w	[%a4]0, %d2
.LVL13:
	.loc 1 117 0
	jeq	%d4, %d15, .L9
.L11:
	.loc 1 118 0
	mov.a	%a2, %d5
	addsc.a	%a15, %a2, %d3, 0
.LVL14:
	ld.w	%d15, [%a15] 12
	.loc 1 119 0
	sh	%d3, %d15, 4
	addsc.a	%a15, %a2, %d3, 0
.LVL15:
	ld.w	%d7, [%a15] 8
	add	%d2, %d7
	st.w	[%a4]0, %d2
	.loc 1 117 0
	jne	%d4, %d15, .L11
.L9:
	.loc 1 121 0
	mov	%d2, 0
.L6:
.LVL16:
.LBB214:
.LBB215:
.LBB216:
.LBB217:
.LBB218:
.LBB219:
.LBB220:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d6
	# 0 "" 2
#NO_APP
.LBE220:
.LBE219:
.LBB221:
.LBB222:
.LBB223:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE223:
.LBE222:
.LBE221:
.LBE218:
.LBE217:
.LBE216:
.LBE215:
.LBE214:
	.loc 1 138 0
	ret
.LFE92:
	.size	EE_oo_GetAlarm, .-EE_oo_GetAlarm
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
	.file 4 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 5 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 6 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 7 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 8 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
	.file 9 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.file 10 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.file 11 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf1d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_alget.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"EE_UINT8"
	.byte	0x4
	.byte	0x38
	.uaword	0x16c
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
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1e7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1fd
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x3
	.string	"EE_VOID_CALLBACK"
	.byte	0x4
	.byte	0x66
	.uaword	0x1f7
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x5
	.byte	0x7b
	.uaword	0x1d6
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x5
	.byte	0x7c
	.uaword	0x1bf
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x5
	.byte	0x7d
	.uaword	0x1d6
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x5
	.byte	0x80
	.uaword	0x1bf
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.uahalf	0x134
	.uaword	0x3a8
	.uleb128 0x7
	.string	"CCPN"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x217
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"bit8_"
	.byte	0x5
	.uahalf	0x136
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"bit9_"
	.byte	0x5
	.uahalf	0x137
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"bit10_"
	.byte	0x5
	.uahalf	0x138
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"bit11_"
	.byte	0x5
	.uahalf	0x139
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"bit12_"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"bit13_"
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"bit14_"
	.byte	0x5
	.uahalf	0x13c
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"IE"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"PIPN"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x217
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"bit24_"
	.byte	0x5
	.uahalf	0x13f
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"bit25_"
	.byte	0x5
	.uahalf	0x140
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"bit26_"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"bit27_"
	.byte	0x5
	.uahalf	0x142
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"bit28_"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"bit29_"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"bit30_"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"bit31_"
	.byte	0x5
	.uahalf	0x146
	.uaword	0x217
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.uahalf	0x133
	.uaword	0x3cb
	.uleb128 0x9
	.string	"bits"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x252
	.uleb128 0x9
	.string	"reg"
	.byte	0x5
	.uahalf	0x148
	.uaword	0x217
	.byte	0
	.uleb128 0xa
	.string	"EE_ICR"
	.byte	0x5
	.uahalf	0x149
	.uaword	0x3a8
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.uahalf	0x168
	.uaword	0x402
	.uleb128 0xb
	.string	"value"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x217
	.byte	0
	.uleb128 0xb
	.string	"first"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x226
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_counter_RAM_type"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x3da
	.uleb128 0x6
	.byte	0x18
	.byte	0x6
	.uahalf	0x17c
	.uaword	0x481
	.uleb128 0xb
	.string	"c"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x226
	.byte	0
	.uleb128 0xb
	.string	"action"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x17d
	.byte	0x4
	.uleb128 0xb
	.string	"TaskID"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x244
	.byte	0x8
	.uleb128 0xb
	.string	"Mask"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x217
	.byte	0xc
	.uleb128 0xb
	.string	"f"
	.byte	0x6
	.uahalf	0x185
	.uaword	0x1ff
	.byte	0x10
	.uleb128 0xb
	.string	"inccount"
	.byte	0x6
	.uahalf	0x187
	.uaword	0x226
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_alarm_ROM_type"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x421
	.uleb128 0x6
	.byte	0x10
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x4e2
	.uleb128 0xb
	.string	"used"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x217
	.byte	0
	.uleb128 0xb
	.string	"cycle"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x217
	.byte	0x4
	.uleb128 0xb
	.string	"delta"
	.byte	0x6
	.uahalf	0x18e
	.uaword	0x217
	.byte	0x8
	.uleb128 0xb
	.string	"next"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x226
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_alarm_RAM_type"
	.byte	0x6
	.uahalf	0x190
	.uaword	0x49e
	.uleb128 0xa
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x16c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x217
	.uleb128 0xa
	.string	"TickRefType"
	.byte	0x6
	.uahalf	0x323
	.uaword	0x512
	.uleb128 0xa
	.string	"AlarmType"
	.byte	0x6
	.uahalf	0x337
	.uaword	0x226
	.uleb128 0xc
	.string	"_isync"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"_mfcr"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x1e7
	.byte	0x3
	.uaword	0x576
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x576
	.uleb128 0xf
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1e7
	.byte	0
	.uleb128 0x10
	.uaword	0x1e7
	.uleb128 0x11
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x5a3
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x576
	.uleb128 0x12
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x576
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_isync"
	.byte	0x5
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0xc
	.string	"_disable"
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"EE_tc_set_ICR"
	.byte	0x5
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x5e8
	.uleb128 0x15
	.string	"icr"
	.byte	0x5
	.uahalf	0x242
	.uaword	0x3cb
	.byte	0
	.uleb128 0x16
	.string	"EE_tc_get_ICR"
	.byte	0x5
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3cb
	.byte	0x3
	.uaword	0x611
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x3cb
	.byte	0
	.uleb128 0x13
	.string	"EE_tc_disableIRQ"
	.byte	0x5
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"EE_tc_resumeIRQ"
	.byte	0x5
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x65d
	.uleb128 0x15
	.string	"flags"
	.byte	0x5
	.uahalf	0x37d
	.uaword	0x235
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x37f
	.uaword	0x3cb
	.byte	0
	.uleb128 0x16
	.string	"EE_tc_suspendIRQ"
	.byte	0x5
	.uahalf	0x384
	.byte	0x1
	.uaword	0x235
	.byte	0x3
	.uaword	0x689
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x386
	.uaword	0x3cb
	.byte	0
	.uleb128 0x18
	.string	"EE_hal_suspendIRQ"
	.byte	0x5
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x235
	.byte	0x3
	.uleb128 0x14
	.string	"EE_hal_resumeIRQ"
	.byte	0x5
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x6cf
	.uleb128 0x15
	.string	"flags"
	.byte	0x5
	.uahalf	0x3ed
	.uaword	0x235
	.byte	0
	.uleb128 0xd
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x226
	.byte	0x3
	.uaword	0x70d
	.uleb128 0xf
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x226
	.byte	0
	.uleb128 0x19
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x7
	.byte	0x6c
	.byte	0x1
	.uaword	0x235
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_end_nested_primitive"
	.byte	0x7
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x767
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.byte	0x73
	.uaword	0x235
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"EE_oo_GetAlarm"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	0x4ff
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcf4
	.uleb128 0x1b
	.string	"AlarmID"
	.byte	0x1
	.byte	0x39
	.uaword	0x52c
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"Tick"
	.byte	0x1
	.byte	0x39
	.uaword	0x518
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.string	"current"
	.byte	0x1
	.byte	0x3b
	.uaword	0x52c
	.uaword	.LLST0
	.uleb128 0x1d
	.string	"retVal"
	.byte	0x1
	.byte	0x3c
	.uaword	0x4ff
	.byte	0x1
	.byte	0x52
	.uleb128 0xf
	.string	"flag"
	.byte	0x1
	.byte	0x3d
	.uaword	0x235
	.uleb128 0x1e
	.uaword	0x6cf
	.uaword	.LBB149
	.uaword	.LBE149
	.byte	0x1
	.byte	0x47
	.uaword	0x7ff
	.uleb128 0x1f
	.uaword	.LBB150
	.uaword	.LBE150
	.uleb128 0x20
	.uaword	0x6f9
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x70d
	.uaword	.LBB151
	.uaword	.LBE151
	.byte	0x1
	.byte	0x4a
	.uaword	0x8b5
	.uleb128 0x21
	.uaword	0x689
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x7
	.byte	0x6e
	.uleb128 0x22
	.uaword	0x65d
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1f
	.uaword	.LBB154
	.uaword	.LBE154
	.uleb128 0x20
	.uaword	0x67c
	.uleb128 0x23
	.uaword	0x5e8
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x5
	.uahalf	0x386
	.uaword	0x890
	.uleb128 0x1f
	.uaword	.LBB156
	.uaword	.LBE156
	.uleb128 0x20
	.uaword	0x604
	.uleb128 0x22
	.uaword	0x54a
	.uaword	.LBB157
	.uaword	.LBE157
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x24
	.uaword	0x55d
	.uaword	.LLST1
	.uleb128 0x1f
	.uaword	.LBB158
	.uaword	.LBE158
	.uleb128 0x25
	.uaword	0x568
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x611
	.uaword	.LBB159
	.uaword	.LBE159
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x26
	.uaword	0x5b5
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x734
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.byte	0x4c
	.uaword	0x972
	.uleb128 0x24
	.uaword	0x759
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	0x6a5
	.uaword	.LBB163
	.uaword	.LBE163
	.byte	0x7
	.byte	0x75
	.uleb128 0x24
	.uaword	0x6c0
	.uaword	.LLST3
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x24
	.uaword	0x642
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x20
	.uaword	0x650
	.uleb128 0x22
	.uaword	0x5c3
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x27
	.uaword	0x5db
	.uleb128 0x23
	.uaword	0x57b
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x5
	.uahalf	0x244
	.uaword	0x94c
	.uleb128 0x24
	.uaword	0x595
	.uaword	.LLST3
	.uleb128 0x24
	.uaword	0x58a
	.uaword	.LLST7
	.byte	0
	.uleb128 0x22
	.uaword	0x5a3
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x26
	.uaword	0x53e
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x70d
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.byte	0x57
	.uaword	0xa28
	.uleb128 0x21
	.uaword	0x689
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x7
	.byte	0x6e
	.uleb128 0x22
	.uaword	0x65d
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1f
	.uaword	.LBB175
	.uaword	.LBE175
	.uleb128 0x20
	.uaword	0x67c
	.uleb128 0x23
	.uaword	0x5e8
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x5
	.uahalf	0x386
	.uaword	0xa03
	.uleb128 0x1f
	.uaword	.LBB177
	.uaword	.LBE177
	.uleb128 0x20
	.uaword	0x604
	.uleb128 0x22
	.uaword	0x54a
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x24
	.uaword	0x55d
	.uaword	.LLST8
	.uleb128 0x1f
	.uaword	.LBB179
	.uaword	.LBE179
	.uleb128 0x25
	.uaword	0x568
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x611
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x26
	.uaword	0x5b5
	.uaword	.LBB181
	.uaword	.LBE181
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x734
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x1
	.byte	0x59
	.uaword	0xae5
	.uleb128 0x24
	.uaword	0x759
	.uaword	.LLST10
	.uleb128 0x21
	.uaword	0x6a5
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x7
	.byte	0x75
	.uleb128 0x24
	.uaword	0x6c0
	.uaword	.LLST10
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x24
	.uaword	0x642
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	.LBB186
	.uaword	.LBE186
	.uleb128 0x20
	.uaword	0x650
	.uleb128 0x22
	.uaword	0x5c3
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x27
	.uaword	0x5db
	.uleb128 0x23
	.uaword	0x57b
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x5
	.uahalf	0x244
	.uaword	0xabf
	.uleb128 0x24
	.uaword	0x595
	.uaword	.LLST10
	.uleb128 0x24
	.uaword	0x58a
	.uaword	.LLST14
	.byte	0
	.uleb128 0x22
	.uaword	0x5a3
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x26
	.uaword	0x53e
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x70d
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x61
	.uaword	0xb97
	.uleb128 0x21
	.uaword	0x689
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x7
	.byte	0x6e
	.uleb128 0x22
	.uaword	0x65d
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1f
	.uaword	.LBB196
	.uaword	.LBE196
	.uleb128 0x20
	.uaword	0x67c
	.uleb128 0x23
	.uaword	0x5e8
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x5
	.uahalf	0x386
	.uaword	0xb72
	.uleb128 0x1f
	.uaword	.LBB198
	.uaword	.LBE198
	.uleb128 0x20
	.uaword	0x604
	.uleb128 0x22
	.uaword	0x54a
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x28
	.uaword	0x55d
	.uahalf	0xfe2c
	.uleb128 0x1f
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x29
	.uaword	0x568
	.byte	0x1
	.byte	0x56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x611
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x26
	.uaword	0x5b5
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x734
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x1
	.byte	0x67
	.uaword	0xc44
	.uleb128 0x27
	.uaword	0x759
	.uleb128 0x21
	.uaword	0x6a5
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x7
	.byte	0x75
	.uleb128 0x27
	.uaword	0x6c0
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x27
	.uaword	0x642
	.uleb128 0x1f
	.uaword	.LBB207
	.uaword	.LBE207
	.uleb128 0x20
	.uaword	0x650
	.uleb128 0x22
	.uaword	0x5c3
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x27
	.uaword	0x5db
	.uleb128 0x23
	.uaword	0x57b
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x5
	.uahalf	0x244
	.uaword	0xc1e
	.uleb128 0x27
	.uaword	0x595
	.uleb128 0x24
	.uaword	0x58a
	.uaword	.LLST15
	.byte	0
	.uleb128 0x22
	.uaword	0x5a3
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x26
	.uaword	0x53e
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x734
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.byte	0x86
	.uleb128 0x2a
	.uaword	0x759
	.byte	0x1
	.byte	0x56
	.uleb128 0x21
	.uaword	0x6a5
	.uaword	.LBB215
	.uaword	.LBE215
	.byte	0x7
	.byte	0x75
	.uleb128 0x2a
	.uaword	0x6c0
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x2a
	.uaword	0x642
	.byte	0x1
	.byte	0x56
	.uleb128 0x1f
	.uaword	.LBB217
	.uaword	.LBE217
	.uleb128 0x20
	.uaword	0x650
	.uleb128 0x22
	.uaword	0x5c3
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x27
	.uaword	0x5db
	.uleb128 0x23
	.uaword	0x57b
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x5
	.uahalf	0x244
	.uaword	0xccd
	.uleb128 0x2a
	.uaword	0x595
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.uaword	0x58a
	.uahalf	0xfe2c
	.byte	0
	.uleb128 0x22
	.uaword	0x5a3
	.uaword	.LBB221
	.uaword	.LBE221
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x26
	.uaword	0x53e
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x217
	.uaword	0xcff
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0xd1a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xcf4
	.uleb128 0x2d
	.string	"EE_IRQ_nesting_level"
	.byte	0x9
	.byte	0x39
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_std_endcycle_next_tid"
	.byte	0xa
	.byte	0x41
	.uaword	0x244
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_status"
	.byte	0x6
	.byte	0xa6
	.uaword	0xcf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x244
	.uaword	0xd9a
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.string	"EE_th_next"
	.byte	0x6
	.byte	0xae
	.uaword	0xd8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_ready_prio"
	.byte	0x6
	.byte	0xb1
	.uaword	0xdc8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xcf4
	.uleb128 0x2d
	.string	"EE_th_dispatch_prio"
	.byte	0x6
	.byte	0xb2
	.uaword	0xdea
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xcf4
	.uleb128 0x2d
	.string	"EE_stkfirst"
	.byte	0x6
	.byte	0xc7
	.uaword	0x244
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_sys_ceiling"
	.byte	0x6
	.byte	0xca
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_th_event_active"
	.byte	0x6
	.uahalf	0x111
	.uaword	0xcf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"EE_th_waswaiting"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xcf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x402
	.uaword	0xe5f
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2e
	.string	"EE_counter_RAM"
	.byte	0x6
	.uahalf	0x198
	.uaword	0xe54
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x481
	.uaword	0xe83
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2e
	.string	"EE_alarm_ROM"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0xe9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xe78
	.uleb128 0x2b
	.uaword	0x4e2
	.uaword	0xeaa
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2e
	.string	"EE_alarm_RAM"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0xe9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xb
	.byte	0x33
	.uaword	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xb
	.byte	0x3a
	.uaword	0x235
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_ApplicationMode"
	.byte	0xb
	.byte	0x3d
	.uaword	0x217
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.extern	EE_counter_RAM,STT_OBJECT,-1
	.extern	EE_alarm_ROM,STT_OBJECT,-1
	.extern	EE_alarm_RAM,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
