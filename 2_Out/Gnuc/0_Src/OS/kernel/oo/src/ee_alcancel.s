	.file	"ee_alcancel.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_CancelAlarm
	.type	EE_oo_CancelAlarm, @function
EE_oo_CancelAlarm:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_alcancel.c"
	.loc 1 57 0
.LVL0:
.LBB149:
.LBB150:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE150:
.LBE149:
	.loc 1 63 0
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
	.loc 1 72 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 77 0
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
	.loc 1 86 0
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
	mfcr %d5, LO:65068
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
	.loc 1 91 0
	movh	%d2, hi:EE_alarm_RAM
	addi	%d2, %d2, lo:EE_alarm_RAM
	mov.a	%a2, %d2
	sh	%d3, %d4, 4
	addsc.a	%a15, %a2, %d3, 0
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
	mtcr LO:65068, %d5
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
	.loc 1 99 0
	mov	%d2, 5
	ret
.LVL11:
.L5:
	.loc 1 104 0
	movh.a	%a2, hi:EE_alarm_ROM
	mov.d	%d6, %a2
	addi	%d15, %d6, lo:EE_alarm_ROM
	madd	%d7, %d15, %d4, 24
	.loc 1 114 0
	mov	%d6, %d2
	.loc 1 104 0
	mov.a	%a2, %d7
	ld.w	%d15, [%a2]0
	movh.a	%a2, hi:EE_counter_RAM
	lea	%a2, [%a2] lo:EE_counter_RAM
	addsc.a	%a2, %a2, %d15, 3
	ld.w	%d15, [%a2] 4
.LVL12:
	.loc 1 106 0
	jeq	%d15, %d4, .L16
.L14:
.LVL13:
	.loc 1 114 0 discriminator 1
	madd	%d7, %d2, %d15, 16
	mov.a	%a15, %d7
	ld.w	%d15, [%a15] 12
.LVL14:
	lea	%a2, [%a15] 12
	.loc 1 115 0 discriminator 1
	jne	%d15, %d4, .L14
	.loc 1 116 0
	mov.a	%a3, %d6
	addsc.a	%a15, %a3, %d3, 0
	ld.w	%d4, [%a15] 12
.LVL15:
	st.w	[%a2]0, %d4
.LVL16:
.L7:
	.loc 1 119 0
	mov.a	%a3, %d2
	addsc.a	%a2, %a3, %d3, 0
	ld.w	%d15, [%a2] 12
	jeq	%d15, -1, .L9
	.loc 1 120 0
	madd	%d4, %d2, %d15, 16
	ld.w	%d15, [%a2] 8
	mov.a	%a15, %d4
	ld.w	%d6, [%a15] 8
	add	%d15, %d6
	st.w	[%a15] 8, %d15
.L9:
	.loc 1 124 0
	mov.a	%a2, %d2
	mov	%d15, 0
	addsc.a	%a15, %a2, %d3, 0
	st.w	[%a15]0, %d15
.LVL17:
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
	mtcr LO:65068, %d5
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
	.loc 1 129 0
	mov	%d2, 0
	.loc 1 130 0
	ret
.LVL18:
.L16:
	.loc 1 108 0
	ld.w	%d15, [%a15] 12
.LVL19:
	st.w	[%a2] 4, %d15
.LVL20:
	j	.L7
.LFE92:
	.size	EE_oo_CancelAlarm, .-EE_oo_CancelAlarm
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
	.uaword	0xf0b
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_alcancel.c"
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
	.uaword	0x16f
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
	.uaword	0x1d2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1ea
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x200
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x3
	.string	"EE_VOID_CALLBACK"
	.byte	0x4
	.byte	0x66
	.uaword	0x1fa
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x5
	.byte	0x7b
	.uaword	0x1d9
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x5
	.byte	0x7c
	.uaword	0x1c2
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x5
	.byte	0x7d
	.uaword	0x1d9
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x5
	.byte	0x80
	.uaword	0x1c2
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.uahalf	0x134
	.uaword	0x3ab
	.uleb128 0x7
	.string	"CCPN"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x21a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"bit8_"
	.byte	0x5
	.uahalf	0x136
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"bit9_"
	.byte	0x5
	.uahalf	0x137
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"bit10_"
	.byte	0x5
	.uahalf	0x138
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"bit11_"
	.byte	0x5
	.uahalf	0x139
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"bit12_"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"bit13_"
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"bit14_"
	.byte	0x5
	.uahalf	0x13c
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"IE"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"PIPN"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x21a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"bit24_"
	.byte	0x5
	.uahalf	0x13f
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"bit25_"
	.byte	0x5
	.uahalf	0x140
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"bit26_"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"bit27_"
	.byte	0x5
	.uahalf	0x142
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"bit28_"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"bit29_"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"bit30_"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"bit31_"
	.byte	0x5
	.uahalf	0x146
	.uaword	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.uahalf	0x133
	.uaword	0x3ce
	.uleb128 0x9
	.string	"bits"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x255
	.uleb128 0x9
	.string	"reg"
	.byte	0x5
	.uahalf	0x148
	.uaword	0x21a
	.byte	0
	.uleb128 0xa
	.string	"EE_ICR"
	.byte	0x5
	.uahalf	0x149
	.uaword	0x3ab
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.uahalf	0x168
	.uaword	0x405
	.uleb128 0xb
	.string	"value"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.string	"first"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x229
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_counter_RAM_type"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x3dd
	.uleb128 0x6
	.byte	0x18
	.byte	0x6
	.uahalf	0x17c
	.uaword	0x484
	.uleb128 0xb
	.string	"c"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x229
	.byte	0
	.uleb128 0xb
	.string	"action"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x180
	.byte	0x4
	.uleb128 0xb
	.string	"TaskID"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x247
	.byte	0x8
	.uleb128 0xb
	.string	"Mask"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x21a
	.byte	0xc
	.uleb128 0xb
	.string	"f"
	.byte	0x6
	.uahalf	0x185
	.uaword	0x202
	.byte	0x10
	.uleb128 0xb
	.string	"inccount"
	.byte	0x6
	.uahalf	0x187
	.uaword	0x229
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_alarm_ROM_type"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x424
	.uleb128 0x6
	.byte	0x10
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x4e5
	.uleb128 0xb
	.string	"used"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.string	"cycle"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x21a
	.byte	0x4
	.uleb128 0xb
	.string	"delta"
	.byte	0x6
	.uahalf	0x18e
	.uaword	0x21a
	.byte	0x8
	.uleb128 0xb
	.string	"next"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x229
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_alarm_RAM_type"
	.byte	0x6
	.uahalf	0x190
	.uaword	0x4a1
	.uleb128 0xa
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x16f
	.uleb128 0xa
	.string	"AlarmType"
	.byte	0x6
	.uahalf	0x337
	.uaword	0x229
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
	.uaword	0x1ea
	.byte	0x3
	.uaword	0x55f
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x55f
	.uleb128 0xf
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1ea
	.byte	0
	.uleb128 0x10
	.uaword	0x1ea
	.uleb128 0x11
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x58c
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x55f
	.uleb128 0x12
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x55f
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
	.uaword	0x5d1
	.uleb128 0x15
	.string	"icr"
	.byte	0x5
	.uahalf	0x242
	.uaword	0x3ce
	.byte	0
	.uleb128 0x16
	.string	"EE_tc_get_ICR"
	.byte	0x5
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3ce
	.byte	0x3
	.uaword	0x5fa
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x3ce
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
	.uaword	0x646
	.uleb128 0x15
	.string	"flags"
	.byte	0x5
	.uahalf	0x37d
	.uaword	0x238
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x37f
	.uaword	0x3ce
	.byte	0
	.uleb128 0x16
	.string	"EE_tc_suspendIRQ"
	.byte	0x5
	.uahalf	0x384
	.byte	0x1
	.uaword	0x238
	.byte	0x3
	.uaword	0x672
	.uleb128 0x17
	.string	"icr"
	.byte	0x5
	.uahalf	0x386
	.uaword	0x3ce
	.byte	0
	.uleb128 0x18
	.string	"EE_hal_suspendIRQ"
	.byte	0x5
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x238
	.byte	0x3
	.uleb128 0x14
	.string	"EE_hal_resumeIRQ"
	.byte	0x5
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x6b8
	.uleb128 0x15
	.string	"flags"
	.byte	0x5
	.uahalf	0x3ed
	.uaword	0x238
	.byte	0
	.uleb128 0xd
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x229
	.byte	0x3
	.uaword	0x6f6
	.uleb128 0xf
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x229
	.byte	0
	.uleb128 0x19
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x7
	.byte	0x6c
	.byte	0x1
	.uaword	0x238
	.byte	0x3
	.uleb128 0x11
	.string	"EE_hal_end_nested_primitive"
	.byte	0x7
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x750
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.byte	0x73
	.uaword	0x238
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"EE_oo_CancelAlarm"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	0x502
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xce2
	.uleb128 0x1b
	.string	"AlarmID"
	.byte	0x1
	.byte	0x38
	.uaword	0x515
	.uaword	.LLST0
	.uleb128 0x1c
	.string	"current"
	.byte	0x1
	.byte	0x3a
	.uaword	0x515
	.uaword	.LLST1
	.uleb128 0x1c
	.string	"previous"
	.byte	0x1
	.byte	0x3a
	.uaword	0x515
	.uaword	.LLST2
	.uleb128 0xf
	.string	"flag"
	.byte	0x1
	.byte	0x3b
	.uaword	0x238
	.uleb128 0x1d
	.uaword	0x6b8
	.uaword	.LBB149
	.uaword	.LBE149
	.byte	0x1
	.byte	0x3f
	.uaword	0x7e3
	.uleb128 0x1e
	.uaword	.LBB150
	.uaword	.LBE150
	.uleb128 0x1f
	.uaword	0x6e2
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x6f6
	.uaword	.LBB151
	.uaword	.LBE151
	.byte	0x1
	.byte	0x42
	.uaword	0x899
	.uleb128 0x20
	.uaword	0x672
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x646
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1e
	.uaword	.LBB154
	.uaword	.LBE154
	.uleb128 0x1f
	.uaword	0x665
	.uleb128 0x22
	.uaword	0x5d1
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x5
	.uahalf	0x386
	.uaword	0x874
	.uleb128 0x1e
	.uaword	.LBB156
	.uaword	.LBE156
	.uleb128 0x1f
	.uaword	0x5ed
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB157
	.uaword	.LBE157
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x23
	.uaword	0x546
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	.LBB158
	.uaword	.LBE158
	.uleb128 0x24
	.uaword	0x551
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x5fa
	.uaword	.LBB159
	.uaword	.LBE159
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x25
	.uaword	0x59e
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x71d
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.byte	0x44
	.uaword	0x956
	.uleb128 0x23
	.uaword	0x742
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	0x68e
	.uaword	.LBB163
	.uaword	.LBE163
	.byte	0x7
	.byte	0x75
	.uleb128 0x23
	.uaword	0x6a9
	.uaword	.LLST5
	.uleb128 0x21
	.uaword	0x611
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x62b
	.uaword	.LLST5
	.uleb128 0x1e
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x1f
	.uaword	0x639
	.uleb128 0x21
	.uaword	0x5ac
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x5c4
	.uleb128 0x22
	.uaword	0x564
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x5
	.uahalf	0x244
	.uaword	0x930
	.uleb128 0x23
	.uaword	0x57e
	.uaword	.LLST5
	.uleb128 0x23
	.uaword	0x573
	.uaword	.LLST9
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x527
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
	.uleb128 0x1d
	.uaword	0x6f6
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.byte	0x50
	.uaword	0xa0c
	.uleb128 0x20
	.uaword	0x672
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x646
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1e
	.uaword	.LBB175
	.uaword	.LBE175
	.uleb128 0x1f
	.uaword	0x665
	.uleb128 0x22
	.uaword	0x5d1
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x5
	.uahalf	0x386
	.uaword	0x9e7
	.uleb128 0x1e
	.uaword	.LBB177
	.uaword	.LBE177
	.uleb128 0x1f
	.uaword	0x5ed
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x23
	.uaword	0x546
	.uaword	.LLST10
	.uleb128 0x1e
	.uaword	.LBB179
	.uaword	.LBE179
	.uleb128 0x24
	.uaword	0x551
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x5fa
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x25
	.uaword	0x59e
	.uaword	.LBB181
	.uaword	.LBE181
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x71d
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x1
	.byte	0x52
	.uaword	0xac9
	.uleb128 0x23
	.uaword	0x742
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	0x68e
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x7
	.byte	0x75
	.uleb128 0x23
	.uaword	0x6a9
	.uaword	.LLST12
	.uleb128 0x21
	.uaword	0x611
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x62b
	.uaword	.LLST12
	.uleb128 0x1e
	.uaword	.LBB186
	.uaword	.LBE186
	.uleb128 0x1f
	.uaword	0x639
	.uleb128 0x21
	.uaword	0x5ac
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x5c4
	.uleb128 0x22
	.uaword	0x564
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x5
	.uahalf	0x244
	.uaword	0xaa3
	.uleb128 0x23
	.uaword	0x57e
	.uaword	.LLST12
	.uleb128 0x23
	.uaword	0x573
	.uaword	.LLST16
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x527
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
	.uleb128 0x1d
	.uaword	0x6f6
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x5a
	.uaword	0xb7b
	.uleb128 0x20
	.uaword	0x672
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x646
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1e
	.uaword	.LBB196
	.uaword	.LBE196
	.uleb128 0x1f
	.uaword	0x665
	.uleb128 0x22
	.uaword	0x5d1
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x5
	.uahalf	0x386
	.uaword	0xb56
	.uleb128 0x1e
	.uaword	.LBB198
	.uaword	.LBE198
	.uleb128 0x1f
	.uaword	0x5ed
	.uleb128 0x21
	.uaword	0x533
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x27
	.uaword	0x546
	.uahalf	0xfe2c
	.uleb128 0x1e
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x28
	.uaword	0x551
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x5fa
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x25
	.uaword	0x59e
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x71d
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x1
	.byte	0x60
	.uaword	0xc28
	.uleb128 0x26
	.uaword	0x742
	.uleb128 0x20
	.uaword	0x68e
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x7
	.byte	0x75
	.uleb128 0x26
	.uaword	0x6a9
	.uleb128 0x21
	.uaword	0x611
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x26
	.uaword	0x62b
	.uleb128 0x1e
	.uaword	.LBB207
	.uaword	.LBE207
	.uleb128 0x1f
	.uaword	0x639
	.uleb128 0x21
	.uaword	0x5ac
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x5c4
	.uleb128 0x22
	.uaword	0x564
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x5
	.uahalf	0x244
	.uaword	0xc02
	.uleb128 0x26
	.uaword	0x57e
	.uleb128 0x23
	.uaword	0x573
	.uaword	.LLST17
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x527
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
	.uleb128 0x20
	.uaword	0x71d
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.byte	0x7e
	.uleb128 0x23
	.uaword	0x742
	.uaword	.LLST18
	.uleb128 0x20
	.uaword	0x68e
	.uaword	.LBB215
	.uaword	.LBE215
	.byte	0x7
	.byte	0x75
	.uleb128 0x23
	.uaword	0x6a9
	.uaword	.LLST18
	.uleb128 0x21
	.uaword	0x611
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x62b
	.uaword	.LLST18
	.uleb128 0x1e
	.uaword	.LBB217
	.uaword	.LBE217
	.uleb128 0x1f
	.uaword	0x639
	.uleb128 0x21
	.uaword	0x5ac
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x5c4
	.uleb128 0x22
	.uaword	0x564
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x5
	.uahalf	0x244
	.uaword	0xcbb
	.uleb128 0x23
	.uaword	0x57e
	.uaword	.LLST18
	.uleb128 0x23
	.uaword	0x573
	.uaword	.LLST22
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB221
	.uaword	.LBE221
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x527
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
	.uleb128 0x29
	.uaword	0x21a
	.uaword	0xced
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0xd08
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xce2
	.uleb128 0x2b
	.string	"EE_IRQ_nesting_level"
	.byte	0x9
	.byte	0x39
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_std_endcycle_next_tid"
	.byte	0xa
	.byte	0x41
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_status"
	.byte	0x6
	.byte	0xa6
	.uaword	0xce2
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x247
	.uaword	0xd88
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_th_next"
	.byte	0x6
	.byte	0xae
	.uaword	0xd7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_ready_prio"
	.byte	0x6
	.byte	0xb1
	.uaword	0xdb6
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xce2
	.uleb128 0x2b
	.string	"EE_th_dispatch_prio"
	.byte	0x6
	.byte	0xb2
	.uaword	0xdd8
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xce2
	.uleb128 0x2b
	.string	"EE_stkfirst"
	.byte	0x6
	.byte	0xc7
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_sys_ceiling"
	.byte	0x6
	.byte	0xca
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_event_active"
	.byte	0x6
	.uahalf	0x111
	.uaword	0xce2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_waswaiting"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xce2
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x405
	.uaword	0xe4d
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.string	"EE_counter_RAM"
	.byte	0x6
	.uahalf	0x198
	.uaword	0xe42
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x484
	.uaword	0xe71
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.string	"EE_alarm_ROM"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0xe88
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xe66
	.uleb128 0x29
	.uaword	0x4e5
	.uaword	0xe98
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.string	"EE_alarm_RAM"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0xe8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xb
	.byte	0x33
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xb
	.byte	0x3a
	.uaword	0x238
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_ApplicationMode"
	.byte	0xb
	.byte	0x3d
	.uaword	0x21a
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
	.uleb128 0x6
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
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
