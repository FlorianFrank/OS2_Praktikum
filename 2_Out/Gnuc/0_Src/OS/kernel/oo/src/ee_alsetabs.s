	.file	"ee_alsetabs.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_SetAbsAlarm
	.type	EE_oo_SetAbsAlarm, @function
EE_oo_SetAbsAlarm:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_alsetabs.c"
	.loc 1 63 0
.LVL0:
.LBB172:
.LBB173:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE173:
.LBE172:
	.loc 1 78 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB174:
.LBB175:
.LBB176:
.LBB177:
.LBB178:
.LBB179:
.LBB180:
.LBB181:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE181:
.LBE180:
.LBE179:
.LBE178:
.LBB182:
.LBB183:
.LBB184:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE184:
.LBE183:
.LBE182:
.LBE177:
.LBE176:
.LBE175:
.LBE174:
.LBB185:
.LBB186:
.LBB187:
.LBB188:
.LBB189:
.LBB190:
.LBB191:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE191:
.LBE190:
.LBB192:
.LBB193:
.LBB194:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE194:
.LBE193:
.LBE192:
.LBE189:
.LBE188:
.LBE187:
.LBE186:
.LBE185:
	.loc 1 87 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 91 0
	jlt.u	%d4, 9, .L4
.LVL5:
.LBB195:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
.LBB200:
.LBB201:
.LBB202:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE202:
.LBE201:
.LBE200:
.LBE199:
.LBB203:
.LBB204:
.LBB205:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE205:
.LBE204:
.LBE203:
.LBE198:
.LBE197:
.LBE196:
.LBE195:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
.LBB212:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE212:
.LBE211:
.LBB213:
.LBB214:
.LBB215:
	.loc 3 184 0
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
	.loc 1 101 0
	mov	%d2, 3
	ret
.LVL8:
.L4:
	.loc 1 106 0
	mul	%d3, %d4, 24
	movh.a	%a2, hi:EE_alarm_ROM
	lea	%a2, [%a2] lo:EE_alarm_ROM
	addsc.a	%a15, %a2, %d3, 0
	movh	%d15, hi:EE_counter_ROM
	ld.w	%d2, [%a15]0
	addi	%d15, %d15, lo:EE_counter_ROM
	madd	%d7, %d15, %d2, 12
	mov.a	%a15, %d7
	ld.w	%d2, [%a15]0
	jge.u	%d2, %d5, .L18
.L5:
.LVL9:
.LBB216:
.LBB217:
.LBB218:
.LBB219:
.LBB220:
.LBB221:
.LBB222:
.LBB223:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL10:
#NO_APP
.LBE223:
.LBE222:
.LBE221:
.LBE220:
.LBB224:
.LBB225:
.LBB226:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL11:
#NO_APP
.LBE226:
.LBE225:
.LBE224:
.LBE219:
.LBE218:
.LBE217:
.LBE216:
.LBB227:
.LBB228:
.LBB229:
.LBB230:
.LBB231:
.LBB232:
.LBB233:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE233:
.LBE232:
.LBB234:
.LBB235:
.LBB236:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE236:
.LBE235:
.LBE234:
.LBE231:
.LBE230:
.LBE229:
.LBE228:
.LBE227:
	.loc 1 120 0
	mov	%d2, 8
	ret
.LVL12:
.L18:
	.loc 1 107 0
	jz	%d6, .L6
	.loc 1 108 0
	ld.w	%d0, [%a15] 8
	.loc 1 109 0
	lt.u	%d7, %d6, %d0
	or.lt.u	%d7, %d2, %d6
	jnz	%d7, .L5
.L6:
.LVL13:
.LBB237:
.LBB238:
.LBB239:
.LBB240:
.LBB241:
.LBB242:
.LBB243:
.LBB244:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d8, LO:65068
	# 0 "" 2
.LVL14:
#NO_APP
.LBE244:
.LBE243:
.LBE242:
.LBE241:
.LBB245:
.LBB246:
.LBB247:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE247:
.LBE246:
.LBE245:
.LBE240:
.LBE239:
.LBE238:
.LBE237:
	.loc 1 126 0
	movh.a	%a15, hi:EE_alarm_RAM
	mov.d	%d7, %a15
	addi	%d2, %d7, lo:EE_alarm_RAM
	madd	%d7, %d2, %d4, 16
	mov.a	%a15, %d7
	ld.w	%d2, [%a15]0
	jz	%d2, .L7
.LVL15:
.LBB248:
.LBB249:
.LBB250:
.LBB251:
.LBB252:
.LBB253:
.LBB254:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d8
	# 0 "" 2
#NO_APP
.LBE254:
.LBE253:
.LBB255:
.LBB256:
.LBB257:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE257:
.LBE256:
.LBE255:
.LBE252:
.LBE251:
.LBE250:
.LBE249:
.LBE248:
	.loc 1 134 0
	mov	%d2, 7
	ret
.LVL16:
.L7:
	.loc 1 138 0
	mov	%d2, 1
	.loc 1 142 0
	addsc.a	%a2, %a2, %d3, 0
	.loc 1 139 0
	st.w	[%a15] 4, %d6
	.loc 1 138 0
	st.w	[%a15]0, %d2
	.loc 1 142 0
	ld.w	%d2, [%a2]0
.LVL17:
	movh.a	%a15, hi:EE_counter_RAM
	lea	%a15, [%a15] lo:EE_counter_RAM
	addsc.a	%a15, %a15, %d2, 3
	.loc 1 143 0
	ld.w	%d3, [%a15]0
	sub	%d5, %d3
.LVL18:
	.loc 1 144 0
	jlez	%d5, .L8
	.loc 1 146 0
	add	%d5, -1
.LVL19:
.L9:
	.loc 1 160 0
	call	EE_oo_alarm_insert
.LVL20:
.LBB258:
.LBB259:
.LBB260:
.LBB261:
.LBB262:
.LBB263:
.LBB264:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d8
	# 0 "" 2
#NO_APP
.LBE264:
.LBE263:
.LBB265:
.LBB266:
.LBB267:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE267:
.LBE266:
.LBE265:
.LBE262:
.LBE261:
.LBE260:
.LBE259:
.LBE258:
	.loc 1 165 0
	mov	%d2, 0
	.loc 1 166 0
	ret
.LVL21:
.L8:
	.loc 1 147 0
	jnz	%d5, .L10
	.loc 1 150 0
	madd	%d3, %d15, %d2, 12
	mov.a	%a15, %d3
	ld.w	%d5, [%a15]0
.LVL22:
	j	.L9
.LVL23:
.L10:
	.loc 1 154 0
	madd	%d7, %d15, %d2, 12
	mov.a	%a15, %d7
	ld.w	%d15, [%a15]0
	add	%d5, %d15
.LVL24:
	j	.L9
.LFE92:
	.size	EE_oo_SetAbsAlarm, .-EE_oo_SetAbsAlarm
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
	.uaword	0x118e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_alsetabs.c"
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
	.byte	0xc
	.byte	0x6
	.uahalf	0x161
	.uaword	0x428
	.uleb128 0xb
	.string	"maxallowedvalue"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x21a
	.byte	0
	.uleb128 0xb
	.string	"ticksperbase"
	.byte	0x6
	.uahalf	0x163
	.uaword	0x21a
	.byte	0x4
	.uleb128 0xb
	.string	"mincycle"
	.byte	0x6
	.uahalf	0x164
	.uaword	0x21a
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_counter_ROM_type"
	.byte	0x6
	.uahalf	0x165
	.uaword	0x3dd
	.uleb128 0x6
	.byte	0x8
	.byte	0x6
	.uahalf	0x168
	.uaword	0x46f
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
	.uaword	0x447
	.uleb128 0x6
	.byte	0x18
	.byte	0x6
	.uahalf	0x17c
	.uaword	0x4ee
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
	.uaword	0x48e
	.uleb128 0x6
	.byte	0x10
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x54f
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
	.uaword	0x50b
	.uleb128 0xa
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x16f
	.uleb128 0xa
	.string	"TickType"
	.byte	0x6
	.uahalf	0x320
	.uaword	0x21a
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
	.uaword	0x5da
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x5da
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
	.uaword	0x607
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x5da
	.uleb128 0x12
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x5da
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
	.uaword	0x64c
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
	.uaword	0x675
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
	.uaword	0x6c1
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
	.uaword	0x6ed
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
	.uaword	0x733
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
	.uaword	0x771
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
	.uaword	0x7cb
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.byte	0x73
	.uaword	0x238
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"EE_oo_SetAbsAlarm"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x56c
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf18
	.uleb128 0x1b
	.string	"AlarmID"
	.byte	0x1
	.byte	0x3d
	.uaword	0x590
	.uaword	.LLST0
	.uleb128 0x1b
	.string	"start"
	.byte	0x1
	.byte	0x3e
	.uaword	0x57f
	.uaword	.LLST1
	.uleb128 0x1b
	.string	"cycle"
	.byte	0x1
	.byte	0x3e
	.uaword	0x57f
	.uaword	.LLST2
	.uleb128 0xf
	.string	"flag"
	.byte	0x1
	.byte	0x40
	.uaword	0x238
	.uleb128 0xf
	.string	"counter_value"
	.byte	0x1
	.byte	0x42
	.uaword	0x57f
	.uleb128 0x1c
	.string	"alarm_time"
	.byte	0x1
	.byte	0x43
	.uaword	0x57f
	.uaword	.LLST3
	.uleb128 0x1c
	.string	"start_rel"
	.byte	0x1
	.byte	0x44
	.uaword	0x229
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	0x733
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.byte	0x4e
	.uaword	0x899
	.uleb128 0x1e
	.uaword	.LBB173
	.uaword	.LBE173
	.uleb128 0x1f
	.uaword	0x75d
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x771
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x1
	.byte	0x51
	.uaword	0x94f
	.uleb128 0x20
	.uaword	0x6ed
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x6c1
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1e
	.uaword	.LBB177
	.uaword	.LBE177
	.uleb128 0x1f
	.uaword	0x6e0
	.uleb128 0x22
	.uaword	0x64c
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x5
	.uahalf	0x386
	.uaword	0x92a
	.uleb128 0x1e
	.uaword	.LBB179
	.uaword	.LBE179
	.uleb128 0x1f
	.uaword	0x668
	.uleb128 0x21
	.uaword	0x5ae
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x23
	.uaword	0x5c1
	.uaword	.LLST5
	.uleb128 0x1e
	.uaword	.LBB181
	.uaword	.LBE181
	.uleb128 0x24
	.uaword	0x5cc
	.uaword	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x675
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x25
	.uaword	0x619
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x798
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x1
	.byte	0x53
	.uaword	0xa0c
	.uleb128 0x23
	.uaword	0x7bd
	.uaword	.LLST7
	.uleb128 0x20
	.uaword	0x709
	.uaword	.LBB186
	.uaword	.LBE186
	.byte	0x7
	.byte	0x75
	.uleb128 0x23
	.uaword	0x724
	.uaword	.LLST7
	.uleb128 0x21
	.uaword	0x68c
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x6a6
	.uaword	.LLST7
	.uleb128 0x1e
	.uaword	.LBB188
	.uaword	.LBE188
	.uleb128 0x1f
	.uaword	0x6b4
	.uleb128 0x21
	.uaword	0x627
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x63f
	.uleb128 0x22
	.uaword	0x5df
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x5
	.uahalf	0x244
	.uaword	0x9e6
	.uleb128 0x23
	.uaword	0x5f9
	.uaword	.LLST7
	.uleb128 0x23
	.uaword	0x5ee
	.uaword	.LLST11
	.byte	0
	.uleb128 0x21
	.uaword	0x607
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x5a2
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x771
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x1
	.byte	0x5f
	.uaword	0xac2
	.uleb128 0x20
	.uaword	0x6ed
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x6c1
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1e
	.uaword	.LBB198
	.uaword	.LBE198
	.uleb128 0x1f
	.uaword	0x6e0
	.uleb128 0x22
	.uaword	0x64c
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x5
	.uahalf	0x386
	.uaword	0xa9d
	.uleb128 0x1e
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x1f
	.uaword	0x668
	.uleb128 0x21
	.uaword	0x5ae
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x23
	.uaword	0x5c1
	.uaword	.LLST12
	.uleb128 0x1e
	.uaword	.LBB202
	.uaword	.LBE202
	.uleb128 0x24
	.uaword	0x5cc
	.uaword	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x675
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x25
	.uaword	0x619
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x798
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x1
	.byte	0x61
	.uaword	0xb7f
	.uleb128 0x23
	.uaword	0x7bd
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	0x709
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x7
	.byte	0x75
	.uleb128 0x23
	.uaword	0x724
	.uaword	.LLST14
	.uleb128 0x21
	.uaword	0x68c
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x6a6
	.uaword	.LLST14
	.uleb128 0x1e
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x1f
	.uaword	0x6b4
	.uleb128 0x21
	.uaword	0x627
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x63f
	.uleb128 0x22
	.uaword	0x5df
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x5
	.uahalf	0x244
	.uaword	0xb59
	.uleb128 0x23
	.uaword	0x5f9
	.uaword	.LLST14
	.uleb128 0x23
	.uaword	0x5ee
	.uaword	.LLST18
	.byte	0
	.uleb128 0x21
	.uaword	0x607
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x5a2
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
	.uleb128 0x1d
	.uaword	0x771
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x1
	.byte	0x72
	.uaword	0xc35
	.uleb128 0x20
	.uaword	0x6ed
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x6c1
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1e
	.uaword	.LBB219
	.uaword	.LBE219
	.uleb128 0x1f
	.uaword	0x6e0
	.uleb128 0x22
	.uaword	0x64c
	.uaword	.LBB220
	.uaword	.LBE220
	.byte	0x5
	.uahalf	0x386
	.uaword	0xc10
	.uleb128 0x1e
	.uaword	.LBB221
	.uaword	.LBE221
	.uleb128 0x1f
	.uaword	0x668
	.uleb128 0x21
	.uaword	0x5ae
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x23
	.uaword	0x5c1
	.uaword	.LLST19
	.uleb128 0x1e
	.uaword	.LBB223
	.uaword	.LBE223
	.uleb128 0x24
	.uaword	0x5cc
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x675
	.uaword	.LBB224
	.uaword	.LBE224
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x25
	.uaword	0x619
	.uaword	.LBB225
	.uaword	.LBE225
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x798
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x1
	.byte	0x74
	.uaword	0xcf2
	.uleb128 0x23
	.uaword	0x7bd
	.uaword	.LLST21
	.uleb128 0x20
	.uaword	0x709
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x7
	.byte	0x75
	.uleb128 0x23
	.uaword	0x724
	.uaword	.LLST21
	.uleb128 0x21
	.uaword	0x68c
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x6a6
	.uaword	.LLST21
	.uleb128 0x1e
	.uaword	.LBB230
	.uaword	.LBE230
	.uleb128 0x1f
	.uaword	0x6b4
	.uleb128 0x21
	.uaword	0x627
	.uaword	.LBB231
	.uaword	.LBE231
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x63f
	.uleb128 0x22
	.uaword	0x5df
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x5
	.uahalf	0x244
	.uaword	0xccc
	.uleb128 0x23
	.uaword	0x5f9
	.uaword	.LLST21
	.uleb128 0x23
	.uaword	0x5ee
	.uaword	.LLST25
	.byte	0
	.uleb128 0x21
	.uaword	0x607
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x5a2
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x771
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x1
	.byte	0x7c
	.uaword	0xda4
	.uleb128 0x20
	.uaword	0x6ed
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x7
	.byte	0x6e
	.uleb128 0x21
	.uaword	0x6c1
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1e
	.uaword	.LBB240
	.uaword	.LBE240
	.uleb128 0x1f
	.uaword	0x6e0
	.uleb128 0x22
	.uaword	0x64c
	.uaword	.LBB241
	.uaword	.LBE241
	.byte	0x5
	.uahalf	0x386
	.uaword	0xd7f
	.uleb128 0x1e
	.uaword	.LBB242
	.uaword	.LBE242
	.uleb128 0x1f
	.uaword	0x668
	.uleb128 0x21
	.uaword	0x5ae
	.uaword	.LBB243
	.uaword	.LBE243
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x27
	.uaword	0x5c1
	.uahalf	0xfe2c
	.uleb128 0x1e
	.uaword	.LBB244
	.uaword	.LBE244
	.uleb128 0x28
	.uaword	0x5cc
	.byte	0x1
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x675
	.uaword	.LBB245
	.uaword	.LBE245
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x25
	.uaword	0x619
	.uaword	.LBB246
	.uaword	.LBE246
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x798
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.byte	0x83
	.uaword	0xe51
	.uleb128 0x26
	.uaword	0x7bd
	.uleb128 0x20
	.uaword	0x709
	.uaword	.LBB249
	.uaword	.LBE249
	.byte	0x7
	.byte	0x75
	.uleb128 0x26
	.uaword	0x724
	.uleb128 0x21
	.uaword	0x68c
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x26
	.uaword	0x6a6
	.uleb128 0x1e
	.uaword	.LBB251
	.uaword	.LBE251
	.uleb128 0x1f
	.uaword	0x6b4
	.uleb128 0x21
	.uaword	0x627
	.uaword	.LBB252
	.uaword	.LBE252
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x63f
	.uleb128 0x22
	.uaword	0x5df
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x5
	.uahalf	0x244
	.uaword	0xe2b
	.uleb128 0x26
	.uaword	0x5f9
	.uleb128 0x23
	.uaword	0x5ee
	.uaword	.LLST26
	.byte	0
	.uleb128 0x21
	.uaword	0x607
	.uaword	.LBB255
	.uaword	.LBE255
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x5a2
	.uaword	.LBB256
	.uaword	.LBE256
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x798
	.uaword	.LBB258
	.uaword	.LBE258
	.byte	0x1
	.byte	0xa2
	.uaword	0xf0e
	.uleb128 0x23
	.uaword	0x7bd
	.uaword	.LLST27
	.uleb128 0x20
	.uaword	0x709
	.uaword	.LBB259
	.uaword	.LBE259
	.byte	0x7
	.byte	0x75
	.uleb128 0x23
	.uaword	0x724
	.uaword	.LLST27
	.uleb128 0x21
	.uaword	0x68c
	.uaword	.LBB260
	.uaword	.LBE260
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x23
	.uaword	0x6a6
	.uaword	.LLST27
	.uleb128 0x1e
	.uaword	.LBB261
	.uaword	.LBE261
	.uleb128 0x1f
	.uaword	0x6b4
	.uleb128 0x21
	.uaword	0x627
	.uaword	.LBB262
	.uaword	.LBE262
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x26
	.uaword	0x63f
	.uleb128 0x22
	.uaword	0x5df
	.uaword	.LBB263
	.uaword	.LBE263
	.byte	0x5
	.uahalf	0x244
	.uaword	0xee8
	.uleb128 0x23
	.uaword	0x5f9
	.uaword	.LLST27
	.uleb128 0x23
	.uaword	0x5ee
	.uaword	.LLST31
	.byte	0
	.uleb128 0x21
	.uaword	0x607
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x25
	.uaword	0x5a2
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL20
	.uaword	0x116d
	.byte	0
	.uleb128 0x2a
	.uaword	0x21a
	.uaword	0xf23
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0xf3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xf18
	.uleb128 0x2c
	.string	"EE_IRQ_nesting_level"
	.byte	0x9
	.byte	0x39
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_std_endcycle_next_tid"
	.byte	0xa
	.byte	0x41
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_status"
	.byte	0x6
	.byte	0xa6
	.uaword	0xf18
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x247
	.uaword	0xfbe
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_th_next"
	.byte	0x6
	.byte	0xae
	.uaword	0xfb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_ready_prio"
	.byte	0x6
	.byte	0xb1
	.uaword	0xfec
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xf18
	.uleb128 0x2c
	.string	"EE_th_dispatch_prio"
	.byte	0x6
	.byte	0xb2
	.uaword	0x100e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xf18
	.uleb128 0x2c
	.string	"EE_stkfirst"
	.byte	0x6
	.byte	0xc7
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_sys_ceiling"
	.byte	0x6
	.byte	0xca
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_event_active"
	.byte	0x6
	.uahalf	0x111
	.uaword	0xf18
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_waswaiting"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xf18
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x428
	.uaword	0x1083
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2d
	.string	"EE_counter_ROM"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x109c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x1078
	.uleb128 0x2a
	.uaword	0x46f
	.uaword	0x10ac
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2d
	.string	"EE_counter_RAM"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x10a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x4ee
	.uaword	0x10d0
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2d
	.string	"EE_alarm_ROM"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0x10e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x10c5
	.uleb128 0x2a
	.uaword	0x54f
	.uaword	0x10f7
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2d
	.string	"EE_alarm_RAM"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x10ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xb
	.byte	0x33
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xb
	.byte	0x3a
	.uaword	0x238
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_ApplicationMode"
	.byte	0xb
	.byte	0x3d
	.uaword	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"EE_oo_alarm_insert"
	.byte	0x2
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x590
	.uleb128 0x2f
	.uaword	0x57f
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL20-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-1-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL20-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL20-1-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL24-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL24-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
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
	.extern	EE_oo_alarm_insert,STT_FUNC,0
	.extern	EE_counter_RAM,STT_OBJECT,-1
	.extern	EE_alarm_RAM,STT_OBJECT,-1
	.extern	EE_counter_ROM,STT_OBJECT,-1
	.extern	EE_alarm_ROM,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
