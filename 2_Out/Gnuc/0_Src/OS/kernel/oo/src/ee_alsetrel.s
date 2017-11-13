	.file	"ee_alsetrel.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_SetRelAlarm
	.type	EE_oo_SetRelAlarm, @function
EE_oo_SetRelAlarm:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_alsetrel.c"
	.loc 1 63 0
.LVL0:
.LBB195:
.LBB196:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE196:
.LBE195:
	.loc 1 73 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB197:
.LBB198:
.LBB199:
.LBB200:
.LBB201:
.LBB202:
.LBB203:
.LBB204:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE204:
.LBE203:
.LBE202:
.LBE201:
.LBB205:
.LBB206:
.LBB207:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE207:
.LBE206:
.LBE205:
.LBE200:
.LBE199:
.LBE198:
.LBE197:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
.LBB212:
.LBB213:
.LBB214:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE214:
.LBE213:
.LBB215:
.LBB216:
.LBB217:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE217:
.LBE216:
.LBE215:
.LBE212:
.LBE211:
.LBE210:
.LBE209:
.LBE208:
	.loc 1 82 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 86 0
	jlt.u	%d4, 9, .L4
.LVL5:
.LBB218:
.LBB219:
.LBB220:
.LBB221:
.LBB222:
.LBB223:
.LBB224:
.LBB225:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE225:
.LBE224:
.LBE223:
.LBE222:
.LBB226:
.LBB227:
.LBB228:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE228:
.LBE227:
.LBE226:
.LBE221:
.LBE220:
.LBE219:
.LBE218:
.LBB229:
.LBB230:
.LBB231:
.LBB232:
.LBB233:
.LBB234:
.LBB235:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE235:
.LBE234:
.LBB236:
.LBB237:
.LBB238:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE238:
.LBE237:
.LBE236:
.LBE233:
.LBE232:
.LBE231:
.LBE230:
.LBE229:
	.loc 1 95 0
	mov	%d2, 3
	ret
.LVL8:
.L4:
	.loc 1 102 0
	jnz	%d5, .L16
.L6:
.LVL9:
.LBB239:
.LBB240:
.LBB241:
.LBB242:
.LBB243:
.LBB244:
.LBB245:
.LBB246:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL10:
#NO_APP
.LBE246:
.LBE245:
.LBE244:
.LBE243:
.LBB247:
.LBB248:
.LBB249:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL11:
#NO_APP
.LBE249:
.LBE248:
.LBE247:
.LBE242:
.LBE241:
.LBE240:
.LBE239:
.LBB250:
.LBB251:
.LBB252:
.LBB253:
.LBB254:
.LBB255:
.LBB256:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE256:
.LBE255:
.LBB257:
.LBB258:
.LBB259:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE259:
.LBE258:
.LBE257:
.LBE254:
.LBE253:
.LBE252:
.LBE251:
.LBE250:
	.loc 1 138 0
	mov	%d2, 8
	ret
.LVL12:
.L16:
	.loc 1 124 0
	movh.a	%a15, hi:EE_alarm_ROM
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:EE_alarm_ROM
	madd	%d3, %d15, %d4, 24
	mov.a	%a15, %d3
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:EE_counter_ROM
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:EE_counter_ROM
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.w	%d15, [%a15]0
	jlt.u	%d15, %d5, .L6
	.loc 1 125 0
	jz	%d6, .L7
	.loc 1 126 0
	ld.w	%d3, [%a15] 8
	.loc 1 127 0
	lt.u	%d2, %d6, %d3
	or.lt.u	%d2, %d15, %d6
	jnz	%d2, .L6
.L7:
.LVL13:
.LBB260:
.LBB261:
.LBB262:
.LBB263:
.LBB264:
.LBB265:
.LBB266:
.LBB267:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL14:
#NO_APP
.LBE267:
.LBE266:
.LBE265:
.LBE264:
.LBB268:
.LBB269:
.LBB270:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE270:
.LBE269:
.LBE268:
.LBE263:
.LBE262:
.LBE261:
.LBE260:
	.loc 1 144 0
	movh.a	%a15, hi:EE_alarm_RAM
	mov.d	%d3, %a15
	addi	%d2, %d3, lo:EE_alarm_RAM
	madd	%d3, %d2, %d4, 16
	mov.a	%a15, %d3
	ld.w	%d2, [%a15]0
	jz	%d2, .L8
.LVL15:
.LBB271:
.LBB272:
.LBB273:
.LBB274:
.LBB275:
.LBB276:
.LBB277:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE277:
.LBE276:
.LBB278:
.LBB279:
.LBB280:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE280:
.LBE279:
.LBE278:
.LBE275:
.LBE274:
.LBE273:
.LBE272:
.LBE271:
	.loc 1 153 0
	mov	%d2, 7
	ret
.LVL16:
.L8:
	.loc 1 157 0
	mov	%d2, 1
	.loc 1 158 0
	st.w	[%a15] 4, %d6
	.loc 1 162 0
	add	%d5, -1
.LVL17:
	.loc 1 157 0
	st.w	[%a15]0, %d2
	.loc 1 162 0
	call	EE_oo_alarm_insert
.LVL18:
.LBB281:
.LBB282:
.LBB283:
.LBB284:
.LBB285:
.LBB286:
.LBB287:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE287:
.LBE286:
.LBB288:
.LBB289:
.LBB290:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE290:
.LBE289:
.LBE288:
.LBE285:
.LBE284:
.LBE283:
.LBE282:
.LBE281:
	.loc 1 167 0
	mov	%d2, 0
	.loc 1 168 0
	ret
.LFE92:
	.size	EE_oo_SetRelAlarm, .-EE_oo_SetRelAlarm
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
	.uaword	0x10df
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_alsetrel.c"
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
	.byte	0x18
	.byte	0x6
	.uahalf	0x17c
	.uaword	0x4a7
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
	.uaword	0x447
	.uleb128 0x6
	.byte	0x10
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x508
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
	.uaword	0x4c4
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
	.uaword	0x593
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x593
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
	.uaword	0x5c0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x593
	.uleb128 0x12
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x593
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
	.uaword	0x605
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
	.uaword	0x62e
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
	.uaword	0x67a
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
	.uaword	0x6a6
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
	.uaword	0x6ec
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
	.uaword	0x72a
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
	.uaword	0x784
	.uleb128 0x12
	.string	"flags"
	.byte	0x7
	.byte	0x73
	.uaword	0x238
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"EE_oo_SetRelAlarm"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x525
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe8d
	.uleb128 0x1b
	.string	"AlarmID"
	.byte	0x1
	.byte	0x3d
	.uaword	0x549
	.uaword	.LLST0
	.uleb128 0x1b
	.string	"increment"
	.byte	0x1
	.byte	0x3e
	.uaword	0x538
	.uaword	.LLST1
	.uleb128 0x1b
	.string	"cycle"
	.byte	0x1
	.byte	0x3e
	.uaword	0x538
	.uaword	.LLST2
	.uleb128 0xf
	.string	"flag"
	.byte	0x1
	.byte	0x40
	.uaword	0x238
	.uleb128 0x1c
	.uaword	0x6ec
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x1
	.byte	0x49
	.uaword	0x816
	.uleb128 0x1d
	.uaword	.LBB196
	.uaword	.LBE196
	.uleb128 0x1e
	.uaword	0x716
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x72a
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x1
	.byte	0x4c
	.uaword	0x8cc
	.uleb128 0x1f
	.uaword	0x6a6
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x7
	.byte	0x6e
	.uleb128 0x20
	.uaword	0x67a
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1d
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x1e
	.uaword	0x699
	.uleb128 0x21
	.uaword	0x605
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x5
	.uahalf	0x386
	.uaword	0x8a7
	.uleb128 0x1d
	.uaword	.LBB202
	.uaword	.LBE202
	.uleb128 0x1e
	.uaword	0x621
	.uleb128 0x20
	.uaword	0x567
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x22
	.uaword	0x57a
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	.LBB204
	.uaword	.LBE204
	.uleb128 0x23
	.uaword	0x585
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x62e
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x24
	.uaword	0x5d2
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x751
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.byte	0x4e
	.uaword	0x989
	.uleb128 0x22
	.uaword	0x776
	.uaword	.LLST5
	.uleb128 0x1f
	.uaword	0x6c2
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x7
	.byte	0x75
	.uleb128 0x22
	.uaword	0x6dd
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	0x645
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x65f
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x1e
	.uaword	0x66d
	.uleb128 0x20
	.uaword	0x5e0
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x5f8
	.uleb128 0x21
	.uaword	0x598
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x5
	.uahalf	0x244
	.uaword	0x963
	.uleb128 0x22
	.uaword	0x5b2
	.uaword	.LLST5
	.uleb128 0x22
	.uaword	0x5a7
	.uaword	.LLST9
	.byte	0
	.uleb128 0x20
	.uaword	0x5c0
	.uaword	.LBB215
	.uaword	.LBE215
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x55b
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x72a
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x1
	.byte	0x59
	.uaword	0xa3f
	.uleb128 0x1f
	.uaword	0x6a6
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x7
	.byte	0x6e
	.uleb128 0x20
	.uaword	0x67a
	.uaword	.LBB220
	.uaword	.LBE220
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1d
	.uaword	.LBB221
	.uaword	.LBE221
	.uleb128 0x1e
	.uaword	0x699
	.uleb128 0x21
	.uaword	0x605
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x5
	.uahalf	0x386
	.uaword	0xa1a
	.uleb128 0x1d
	.uaword	.LBB223
	.uaword	.LBE223
	.uleb128 0x1e
	.uaword	0x621
	.uleb128 0x20
	.uaword	0x567
	.uaword	.LBB224
	.uaword	.LBE224
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x22
	.uaword	0x57a
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	.LBB225
	.uaword	.LBE225
	.uleb128 0x23
	.uaword	0x585
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x62e
	.uaword	.LBB226
	.uaword	.LBE226
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x24
	.uaword	0x5d2
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x751
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x1
	.byte	0x5b
	.uaword	0xafc
	.uleb128 0x22
	.uaword	0x776
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	0x6c2
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x7
	.byte	0x75
	.uleb128 0x22
	.uaword	0x6dd
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	0x645
	.uaword	.LBB231
	.uaword	.LBE231
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x65f
	.uaword	.LLST12
	.uleb128 0x1d
	.uaword	.LBB232
	.uaword	.LBE232
	.uleb128 0x1e
	.uaword	0x66d
	.uleb128 0x20
	.uaword	0x5e0
	.uaword	.LBB233
	.uaword	.LBE233
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x5f8
	.uleb128 0x21
	.uaword	0x598
	.uaword	.LBB234
	.uaword	.LBE234
	.byte	0x5
	.uahalf	0x244
	.uaword	0xad6
	.uleb128 0x22
	.uaword	0x5b2
	.uaword	.LLST12
	.uleb128 0x22
	.uaword	0x5a7
	.uaword	.LLST16
	.byte	0
	.uleb128 0x20
	.uaword	0x5c0
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x55b
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x72a
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x1
	.byte	0x84
	.uaword	0xbb2
	.uleb128 0x1f
	.uaword	0x6a6
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x7
	.byte	0x6e
	.uleb128 0x20
	.uaword	0x67a
	.uaword	.LBB241
	.uaword	.LBE241
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1d
	.uaword	.LBB242
	.uaword	.LBE242
	.uleb128 0x1e
	.uaword	0x699
	.uleb128 0x21
	.uaword	0x605
	.uaword	.LBB243
	.uaword	.LBE243
	.byte	0x5
	.uahalf	0x386
	.uaword	0xb8d
	.uleb128 0x1d
	.uaword	.LBB244
	.uaword	.LBE244
	.uleb128 0x1e
	.uaword	0x621
	.uleb128 0x20
	.uaword	0x567
	.uaword	.LBB245
	.uaword	.LBE245
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x22
	.uaword	0x57a
	.uaword	.LLST17
	.uleb128 0x1d
	.uaword	.LBB246
	.uaword	.LBE246
	.uleb128 0x23
	.uaword	0x585
	.uaword	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x62e
	.uaword	.LBB247
	.uaword	.LBE247
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x24
	.uaword	0x5d2
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x751
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x1
	.byte	0x86
	.uaword	0xc6f
	.uleb128 0x22
	.uaword	0x776
	.uaword	.LLST19
	.uleb128 0x1f
	.uaword	0x6c2
	.uaword	.LBB251
	.uaword	.LBE251
	.byte	0x7
	.byte	0x75
	.uleb128 0x22
	.uaword	0x6dd
	.uaword	.LLST19
	.uleb128 0x20
	.uaword	0x645
	.uaword	.LBB252
	.uaword	.LBE252
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x65f
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	.LBB253
	.uaword	.LBE253
	.uleb128 0x1e
	.uaword	0x66d
	.uleb128 0x20
	.uaword	0x5e0
	.uaword	.LBB254
	.uaword	.LBE254
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x5f8
	.uleb128 0x21
	.uaword	0x598
	.uaword	.LBB255
	.uaword	.LBE255
	.byte	0x5
	.uahalf	0x244
	.uaword	0xc49
	.uleb128 0x22
	.uaword	0x5b2
	.uaword	.LLST19
	.uleb128 0x22
	.uaword	0x5a7
	.uaword	.LLST23
	.byte	0
	.uleb128 0x20
	.uaword	0x5c0
	.uaword	.LBB257
	.uaword	.LBE257
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x55b
	.uaword	.LBB258
	.uaword	.LBE258
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x72a
	.uaword	.LBB260
	.uaword	.LBE260
	.byte	0x1
	.byte	0x8e
	.uaword	0xd21
	.uleb128 0x1f
	.uaword	0x6a6
	.uaword	.LBB261
	.uaword	.LBE261
	.byte	0x7
	.byte	0x6e
	.uleb128 0x20
	.uaword	0x67a
	.uaword	.LBB262
	.uaword	.LBE262
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1d
	.uaword	.LBB263
	.uaword	.LBE263
	.uleb128 0x1e
	.uaword	0x699
	.uleb128 0x21
	.uaword	0x605
	.uaword	.LBB264
	.uaword	.LBE264
	.byte	0x5
	.uahalf	0x386
	.uaword	0xcfc
	.uleb128 0x1d
	.uaword	.LBB265
	.uaword	.LBE265
	.uleb128 0x1e
	.uaword	0x621
	.uleb128 0x20
	.uaword	0x567
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x26
	.uaword	0x57a
	.uahalf	0xfe2c
	.uleb128 0x1d
	.uaword	.LBB267
	.uaword	.LBE267
	.uleb128 0x27
	.uaword	0x585
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x62e
	.uaword	.LBB268
	.uaword	.LBE268
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x24
	.uaword	0x5d2
	.uaword	.LBB269
	.uaword	.LBE269
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x751
	.uaword	.LBB271
	.uaword	.LBE271
	.byte	0x1
	.byte	0x96
	.uaword	0xdce
	.uleb128 0x25
	.uaword	0x776
	.uleb128 0x1f
	.uaword	0x6c2
	.uaword	.LBB272
	.uaword	.LBE272
	.byte	0x7
	.byte	0x75
	.uleb128 0x25
	.uaword	0x6dd
	.uleb128 0x20
	.uaword	0x645
	.uaword	.LBB273
	.uaword	.LBE273
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x25
	.uaword	0x65f
	.uleb128 0x1d
	.uaword	.LBB274
	.uaword	.LBE274
	.uleb128 0x1e
	.uaword	0x66d
	.uleb128 0x20
	.uaword	0x5e0
	.uaword	.LBB275
	.uaword	.LBE275
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x5f8
	.uleb128 0x21
	.uaword	0x598
	.uaword	.LBB276
	.uaword	.LBE276
	.byte	0x5
	.uahalf	0x244
	.uaword	0xda8
	.uleb128 0x25
	.uaword	0x5b2
	.uleb128 0x22
	.uaword	0x5a7
	.uaword	.LLST24
	.byte	0
	.uleb128 0x20
	.uaword	0x5c0
	.uaword	.LBB278
	.uaword	.LBE278
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x55b
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x751
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x1
	.byte	0xa4
	.uaword	0xe79
	.uleb128 0x25
	.uaword	0x776
	.uleb128 0x1f
	.uaword	0x6c2
	.uaword	.LBB282
	.uaword	.LBE282
	.byte	0x7
	.byte	0x75
	.uleb128 0x25
	.uaword	0x6dd
	.uleb128 0x20
	.uaword	0x645
	.uaword	.LBB283
	.uaword	.LBE283
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x25
	.uaword	0x65f
	.uleb128 0x1d
	.uaword	.LBB284
	.uaword	.LBE284
	.uleb128 0x1e
	.uaword	0x66d
	.uleb128 0x20
	.uaword	0x5e0
	.uaword	.LBB285
	.uaword	.LBE285
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x5f8
	.uleb128 0x21
	.uaword	0x598
	.uaword	.LBB286
	.uaword	.LBE286
	.byte	0x5
	.uahalf	0x244
	.uaword	0xe53
	.uleb128 0x25
	.uaword	0x5b2
	.uleb128 0x26
	.uaword	0x5a7
	.uahalf	0xfe2c
	.byte	0
	.uleb128 0x20
	.uaword	0x5c0
	.uaword	.LBB288
	.uaword	.LBE288
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x55b
	.uaword	.LBB289
	.uaword	.LBE289
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL18
	.uaword	0x10be
	.uleb128 0x29
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x21a
	.uaword	0xe98
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0xeb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xe8d
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
	.uaword	0xe8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x247
	.uaword	0xf33
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.string	"EE_th_next"
	.byte	0x6
	.byte	0xae
	.uaword	0xf28
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_ready_prio"
	.byte	0x6
	.byte	0xb1
	.uaword	0xf61
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xe8d
	.uleb128 0x2c
	.string	"EE_th_dispatch_prio"
	.byte	0x6
	.byte	0xb2
	.uaword	0xf83
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xe8d
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
	.uaword	0xe8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.string	"EE_th_waswaiting"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xe8d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x428
	.uaword	0xff8
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2d
	.string	"EE_counter_ROM"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x1011
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0xfed
	.uleb128 0x2a
	.uaword	0x4a7
	.uaword	0x1021
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2d
	.string	"EE_alarm_ROM"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0x1038
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x1016
	.uleb128 0x2a
	.uaword	0x508
	.uaword	0x1048
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2d
	.string	"EE_alarm_RAM"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x103d
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
	.uaword	0x549
	.uleb128 0x2f
	.uaword	0x538
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
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
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18-1-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
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
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
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
	.extern	EE_alarm_RAM,STT_OBJECT,-1
	.extern	EE_counter_ROM,STT_OBJECT,-1
	.extern	EE_alarm_ROM,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
