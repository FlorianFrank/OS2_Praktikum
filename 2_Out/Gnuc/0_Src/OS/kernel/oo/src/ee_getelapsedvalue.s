	.file	"ee_getelapsedvalue.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_GetElapsedValue
	.type	EE_oo_GetElapsedValue, @function
EE_oo_GetElapsedValue:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_getelapsedvalue.c"
	.loc 1 56 0
.LVL0:
.LBB160:
.LBB161:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE161:
.LBE160:
	.loc 1 67 0
	ld.w	%d15, [%a15] lo:EE_oo_IRQ_disable_count
	jz	%d15, .L2
.LVL1:
.LBB162:
.LBB163:
.LBB164:
.LBB165:
.LBB166:
.LBB167:
.LBB168:
.LBB169:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL2:
#NO_APP
.LBE169:
.LBE168:
.LBE167:
.LBE166:
.LBB170:
.LBB171:
.LBB172:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL3:
#NO_APP
.LBE172:
.LBE171:
.LBE170:
.LBE165:
.LBE164:
.LBE163:
.LBE162:
.LBB173:
.LBB174:
.LBB175:
.LBB176:
.LBB177:
.LBB178:
.LBB179:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE179:
.LBE178:
.LBB180:
.LBB181:
.LBB182:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE182:
.LBE181:
.LBE180:
.LBE177:
.LBE176:
.LBE175:
.LBE174:
.LBE173:
	.loc 1 77 0
	mov	%d2, 13
	ret
.LVL4:
.L2:
	.loc 1 83 0
	jz	%d4, .L4
.LVL5:
.LBB183:
.LBB184:
.LBB185:
.LBB186:
.LBB187:
.LBB188:
.LBB189:
.LBB190:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL6:
#NO_APP
.LBE190:
.LBE189:
.LBE188:
.LBE187:
.LBB191:
.LBB192:
.LBB193:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL7:
#NO_APP
.LBE193:
.LBE192:
.LBE191:
.LBE186:
.LBE185:
.LBE184:
.LBE183:
.LBB194:
.LBB195:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
.LBB200:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE200:
.LBE199:
.LBB201:
.LBB202:
.LBB203:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE203:
.LBE202:
.LBE201:
.LBE198:
.LBE197:
.LBE196:
.LBE195:
.LBE194:
	.loc 1 91 0
	mov	%d2, 3
	ret
.LVL8:
.L4:
.LBB204:
.LBB205:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL9:
#NO_APP
.LBE211:
.LBE210:
.LBE209:
.LBE208:
.LBB212:
.LBB213:
.LBB214:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE214:
.LBE213:
.LBE212:
.LBE207:
.LBE206:
.LBE205:
.LBE204:
	.loc 1 95 0
	jz.a	%a4, .L5
	.loc 1 100 0
	movh.a	%a15, hi:EE_counter_ROM
	ld.w	%d2, [%a4]0
	ld.w	%d3, [%a15] lo:EE_counter_ROM
	jge.u	%d3, %d2, .L6
.LVL10:
.LBB215:
.LBB216:
.LBB217:
.LBB218:
.LBB219:
.LBB220:
.LBB221:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE221:
.LBE220:
.LBB222:
.LBB223:
.LBB224:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE224:
.LBE223:
.LBE222:
.LBE219:
.LBE218:
.LBE217:
.LBE216:
.LBE215:
	.loc 1 109 0
	mov	%d2, 8
	ret
.LVL11:
.L5:
.LBB225:
.LBB226:
.LBB227:
.LBB228:
.LBB229:
.LBB230:
.LBB231:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE231:
.LBE230:
.LBB232:
.LBB233:
.LBB234:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE234:
.LBE233:
.LBE232:
.LBE229:
.LBE228:
.LBE227:
.LBE226:
.LBE225:
	.loc 1 144 0
	mov	%d2, 15
	.loc 1 145 0
	ret
.LVL12:
.L6:
	.loc 1 119 0
	jz.a	%a5, .L5
	.loc 1 120 0
	movh.a	%a15, hi:EE_counter_RAM
	ld.w	%d4, [%a15] lo:EE_counter_RAM
.LVL13:
	add	%d3, %d4
	add	%d3, 1
	.loc 1 122 0
	sub	%d5, %d4, %d2
	sub	%d3, %d2
	lt.u	%d2, %d4, %d2
	sel	%d3, %d2, %d3, %d5
	.loc 1 120 0
	st.w	[%a5]0, %d3
.LVL14:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
.LBB239:
.LBB240:
.LBB241:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE241:
.LBE240:
.LBB242:
.LBB243:
.LBB244:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE244:
.LBE243:
.LBE242:
.LBE239:
.LBE238:
.LBE237:
.LBE236:
.LBE235:
	.loc 1 130 0
	mov	%d2, 0
	ret
.LFE92:
	.size	EE_oo_GetElapsedValue, .-EE_oo_GetElapsedValue
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
	.uaword	0xf21
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_getelapsedvalue.c"
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
	.uaword	0x1c9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1e1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x5
	.byte	0x7b
	.uaword	0x1d0
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x5
	.byte	0x7c
	.uaword	0x1b9
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x5
	.byte	0x7d
	.uaword	0x1d0
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x5
	.byte	0x80
	.uaword	0x1b9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.uahalf	0x134
	.uaword	0x382
	.uleb128 0x5
	.string	"CCPN"
	.byte	0x5
	.uahalf	0x135
	.uaword	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.string	"bit8_"
	.byte	0x5
	.uahalf	0x136
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.string	"bit9_"
	.byte	0x5
	.uahalf	0x137
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.string	"bit10_"
	.byte	0x5
	.uahalf	0x138
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.string	"bit11_"
	.byte	0x5
	.uahalf	0x139
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.string	"bit12_"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"bit13_"
	.byte	0x5
	.uahalf	0x13b
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.string	"bit14_"
	.byte	0x5
	.uahalf	0x13c
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.string	"IE"
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.string	"PIPN"
	.byte	0x5
	.uahalf	0x13e
	.uaword	0x1f1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.string	"bit24_"
	.byte	0x5
	.uahalf	0x13f
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.string	"bit25_"
	.byte	0x5
	.uahalf	0x140
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.string	"bit26_"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.string	"bit27_"
	.byte	0x5
	.uahalf	0x142
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"bit28_"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.string	"bit29_"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.string	"bit30_"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.string	"bit31_"
	.byte	0x5
	.uahalf	0x146
	.uaword	0x1f1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.uahalf	0x133
	.uaword	0x3a5
	.uleb128 0x7
	.string	"bits"
	.byte	0x5
	.uahalf	0x147
	.uaword	0x22c
	.uleb128 0x7
	.string	"reg"
	.byte	0x5
	.uahalf	0x148
	.uaword	0x1f1
	.byte	0
	.uleb128 0x8
	.string	"EE_ICR"
	.byte	0x5
	.uahalf	0x149
	.uaword	0x382
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.uahalf	0x161
	.uaword	0x3ff
	.uleb128 0x9
	.string	"maxallowedvalue"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1f1
	.byte	0
	.uleb128 0x9
	.string	"ticksperbase"
	.byte	0x6
	.uahalf	0x163
	.uaword	0x1f1
	.byte	0x4
	.uleb128 0x9
	.string	"mincycle"
	.byte	0x6
	.uahalf	0x164
	.uaword	0x1f1
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.string	"EE_oo_counter_ROM_type"
	.byte	0x6
	.uahalf	0x165
	.uaword	0x3b4
	.uleb128 0x4
	.byte	0x8
	.byte	0x6
	.uahalf	0x168
	.uaword	0x446
	.uleb128 0x9
	.string	"value"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x1f1
	.byte	0
	.uleb128 0x9
	.string	"first"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x200
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"EE_oo_counter_RAM_type"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x41e
	.uleb128 0x8
	.string	"StatusType"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x176
	.uleb128 0xa
	.byte	0x4
	.uaword	0x1f1
	.uleb128 0x8
	.string	"TickRefType"
	.byte	0x6
	.uahalf	0x323
	.uaword	0x478
	.uleb128 0x8
	.string	"CounterType"
	.byte	0x6
	.uahalf	0x33a
	.uaword	0x200
	.uleb128 0xb
	.string	"_isync"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xc
	.string	"_mfcr"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x1e1
	.byte	0x3
	.uaword	0x4de
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x3
	.byte	0x6f
	.uaword	0x4de
	.uleb128 0xe
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1e1
	.byte	0
	.uleb128 0xf
	.uaword	0x1e1
	.uleb128 0x10
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x50b
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x3
	.byte	0x87
	.uaword	0x4de
	.uleb128 0x11
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x4de
	.byte	0
	.uleb128 0x12
	.string	"EE_tc_isync"
	.byte	0x5
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0xb
	.string	"_disable"
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"EE_tc_set_ICR"
	.byte	0x5
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x550
	.uleb128 0x14
	.string	"icr"
	.byte	0x5
	.uahalf	0x242
	.uaword	0x3a5
	.byte	0
	.uleb128 0x15
	.string	"EE_tc_get_ICR"
	.byte	0x5
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3a5
	.byte	0x3
	.uaword	0x579
	.uleb128 0x16
	.string	"icr"
	.byte	0x5
	.uahalf	0x23d
	.uaword	0x3a5
	.byte	0
	.uleb128 0x12
	.string	"EE_tc_disableIRQ"
	.byte	0x5
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.string	"EE_tc_resumeIRQ"
	.byte	0x5
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x5c5
	.uleb128 0x14
	.string	"flags"
	.byte	0x5
	.uahalf	0x37d
	.uaword	0x20f
	.uleb128 0x16
	.string	"icr"
	.byte	0x5
	.uahalf	0x37f
	.uaword	0x3a5
	.byte	0
	.uleb128 0x15
	.string	"EE_tc_suspendIRQ"
	.byte	0x5
	.uahalf	0x384
	.byte	0x1
	.uaword	0x20f
	.byte	0x3
	.uaword	0x5f1
	.uleb128 0x16
	.string	"icr"
	.byte	0x5
	.uahalf	0x386
	.uaword	0x3a5
	.byte	0
	.uleb128 0x17
	.string	"EE_hal_suspendIRQ"
	.byte	0x5
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x20f
	.byte	0x3
	.uleb128 0x13
	.string	"EE_hal_resumeIRQ"
	.byte	0x5
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x637
	.uleb128 0x14
	.string	"flags"
	.byte	0x5
	.uahalf	0x3ed
	.uaword	0x20f
	.byte	0
	.uleb128 0xc
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x200
	.byte	0x3
	.uaword	0x675
	.uleb128 0xe
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x200
	.byte	0
	.uleb128 0x18
	.string	"EE_hal_begin_nested_primitive"
	.byte	0x7
	.byte	0x6c
	.byte	0x1
	.uaword	0x20f
	.byte	0x3
	.uleb128 0x10
	.string	"EE_hal_end_nested_primitive"
	.byte	0x7
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x6cf
	.uleb128 0x11
	.string	"flags"
	.byte	0x7
	.byte	0x73
	.uaword	0x20f
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"EE_oo_GetElapsedValue"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.uaword	0x465
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd18
	.uleb128 0x1a
	.string	"CounterID"
	.byte	0x1
	.byte	0x36
	.uaword	0x492
	.uaword	.LLST0
	.uleb128 0x1b
	.string	"Value"
	.byte	0x1
	.byte	0x36
	.uaword	0x47e
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.string	"ElapsedValue"
	.byte	0x1
	.byte	0x37
	.uaword	0x47e
	.byte	0x1
	.byte	0x65
	.uleb128 0xe
	.string	"flag"
	.byte	0x1
	.byte	0x39
	.uaword	0x20f
	.uleb128 0x1c
	.uaword	0x637
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.byte	0x43
	.uaword	0x766
	.uleb128 0x1d
	.uaword	.LBB161
	.uaword	.LBE161
	.uleb128 0x1e
	.uaword	0x661
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x675
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.byte	0x46
	.uaword	0x81c
	.uleb128 0x1f
	.uaword	0x5f1
	.uaword	.LBB163
	.uaword	.LBE163
	.byte	0x7
	.byte	0x6e
	.uleb128 0x20
	.uaword	0x5c5
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1d
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x1e
	.uaword	0x5e4
	.uleb128 0x21
	.uaword	0x550
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x5
	.uahalf	0x386
	.uaword	0x7f7
	.uleb128 0x1d
	.uaword	.LBB167
	.uaword	.LBE167
	.uleb128 0x1e
	.uaword	0x56c
	.uleb128 0x20
	.uaword	0x4b2
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x22
	.uaword	0x4c5
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	.LBB169
	.uaword	.LBE169
	.uleb128 0x23
	.uaword	0x4d0
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x579
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x24
	.uaword	0x51d
	.uaword	.LBB171
	.uaword	.LBE171
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x69c
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x1
	.byte	0x49
	.uaword	0x8d9
	.uleb128 0x22
	.uaword	0x6c1
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	0x60d
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x7
	.byte	0x75
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x590
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x5aa
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	.LBB176
	.uaword	.LBE176
	.uleb128 0x1e
	.uaword	0x5b8
	.uleb128 0x20
	.uaword	0x52b
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x543
	.uleb128 0x21
	.uaword	0x4e3
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x5
	.uahalf	0x244
	.uaword	0x8b3
	.uleb128 0x22
	.uaword	0x4fd
	.uaword	.LLST3
	.uleb128 0x22
	.uaword	0x4f2
	.uaword	.LLST7
	.byte	0
	.uleb128 0x20
	.uaword	0x50b
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x4a6
	.uaword	.LBB181
	.uaword	.LBE181
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x675
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x1
	.byte	0x56
	.uaword	0x98f
	.uleb128 0x1f
	.uaword	0x5f1
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x7
	.byte	0x6e
	.uleb128 0x20
	.uaword	0x5c5
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1d
	.uaword	.LBB186
	.uaword	.LBE186
	.uleb128 0x1e
	.uaword	0x5e4
	.uleb128 0x21
	.uaword	0x550
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x5
	.uahalf	0x386
	.uaword	0x96a
	.uleb128 0x1d
	.uaword	.LBB188
	.uaword	.LBE188
	.uleb128 0x1e
	.uaword	0x56c
	.uleb128 0x20
	.uaword	0x4b2
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x22
	.uaword	0x4c5
	.uaword	.LLST8
	.uleb128 0x1d
	.uaword	.LBB190
	.uaword	.LBE190
	.uleb128 0x23
	.uaword	0x4d0
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x579
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x24
	.uaword	0x51d
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x69c
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x1
	.byte	0x58
	.uaword	0xa4c
	.uleb128 0x22
	.uaword	0x6c1
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	0x60d
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x7
	.byte	0x75
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0x590
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x5aa
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x1e
	.uaword	0x5b8
	.uleb128 0x20
	.uaword	0x52b
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x543
	.uleb128 0x21
	.uaword	0x4e3
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x5
	.uahalf	0x244
	.uaword	0xa26
	.uleb128 0x22
	.uaword	0x4fd
	.uaword	.LLST10
	.uleb128 0x22
	.uaword	0x4f2
	.uaword	.LLST14
	.byte	0
	.uleb128 0x20
	.uaword	0x50b
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x4a6
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x675
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x1
	.byte	0x5e
	.uaword	0xafe
	.uleb128 0x1f
	.uaword	0x5f1
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x7
	.byte	0x6e
	.uleb128 0x20
	.uaword	0x5c5
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x5
	.uahalf	0x3f4
	.uleb128 0x1d
	.uaword	.LBB207
	.uaword	.LBE207
	.uleb128 0x1e
	.uaword	0x5e4
	.uleb128 0x21
	.uaword	0x550
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x5
	.uahalf	0x386
	.uaword	0xad9
	.uleb128 0x1d
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x1e
	.uaword	0x56c
	.uleb128 0x20
	.uaword	0x4b2
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x5
	.uahalf	0x23e
	.uleb128 0x26
	.uaword	0x4c5
	.uahalf	0xfe2c
	.uleb128 0x1d
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x27
	.uaword	0x4d0
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x579
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x5
	.uahalf	0x387
	.uleb128 0x24
	.uaword	0x51d
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x5
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x69c
	.uaword	.LBB215
	.uaword	.LBE215
	.byte	0x1
	.byte	0x6a
	.uaword	0xbab
	.uleb128 0x25
	.uaword	0x6c1
	.uleb128 0x1f
	.uaword	0x60d
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x7
	.byte	0x75
	.uleb128 0x25
	.uaword	0x628
	.uleb128 0x20
	.uaword	0x590
	.uaword	.LBB217
	.uaword	.LBE217
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x25
	.uaword	0x5aa
	.uleb128 0x1d
	.uaword	.LBB218
	.uaword	.LBE218
	.uleb128 0x1e
	.uaword	0x5b8
	.uleb128 0x20
	.uaword	0x52b
	.uaword	.LBB219
	.uaword	.LBE219
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x543
	.uleb128 0x21
	.uaword	0x4e3
	.uaword	.LBB220
	.uaword	.LBE220
	.byte	0x5
	.uahalf	0x244
	.uaword	0xb85
	.uleb128 0x25
	.uaword	0x4fd
	.uleb128 0x22
	.uaword	0x4f2
	.uaword	.LLST15
	.byte	0
	.uleb128 0x20
	.uaword	0x50b
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x4a6
	.uaword	.LBB223
	.uaword	.LBE223
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x69c
	.uaword	.LBB225
	.uaword	.LBE225
	.byte	0x1
	.byte	0x8e
	.uaword	0xc68
	.uleb128 0x22
	.uaword	0x6c1
	.uaword	.LLST16
	.uleb128 0x1f
	.uaword	0x60d
	.uaword	.LBB226
	.uaword	.LBE226
	.byte	0x7
	.byte	0x75
	.uleb128 0x22
	.uaword	0x628
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	0x590
	.uaword	.LBB227
	.uaword	.LBE227
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x22
	.uaword	0x5aa
	.uaword	.LLST16
	.uleb128 0x1d
	.uaword	.LBB228
	.uaword	.LBE228
	.uleb128 0x1e
	.uaword	0x5b8
	.uleb128 0x20
	.uaword	0x52b
	.uaword	.LBB229
	.uaword	.LBE229
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x543
	.uleb128 0x21
	.uaword	0x4e3
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x5
	.uahalf	0x244
	.uaword	0xc42
	.uleb128 0x22
	.uaword	0x4fd
	.uaword	.LLST16
	.uleb128 0x22
	.uaword	0x4f2
	.uaword	.LLST20
	.byte	0
	.uleb128 0x20
	.uaword	0x50b
	.uaword	.LBB232
	.uaword	.LBE232
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x4a6
	.uaword	.LBB233
	.uaword	.LBE233
	.byte	0x5
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x69c
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x1
	.byte	0x7f
	.uleb128 0x28
	.uaword	0x6c1
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.uaword	0x60d
	.uaword	.LBB236
	.uaword	.LBE236
	.byte	0x7
	.byte	0x75
	.uleb128 0x28
	.uaword	0x628
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.uaword	0x590
	.uaword	.LBB237
	.uaword	.LBE237
	.byte	0x5
	.uahalf	0x3ef
	.uleb128 0x28
	.uaword	0x5aa
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.uaword	.LBB238
	.uaword	.LBE238
	.uleb128 0x1e
	.uaword	0x5b8
	.uleb128 0x20
	.uaword	0x52b
	.uaword	.LBB239
	.uaword	.LBE239
	.byte	0x5
	.uahalf	0x381
	.uleb128 0x25
	.uaword	0x543
	.uleb128 0x21
	.uaword	0x4e3
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x5
	.uahalf	0x244
	.uaword	0xcf1
	.uleb128 0x28
	.uaword	0x4fd
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.uaword	0x4f2
	.uahalf	0xfe2c
	.byte	0
	.uleb128 0x20
	.uaword	0x50b
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x5
	.uahalf	0x248
	.uleb128 0x24
	.uaword	0x4a6
	.uaword	.LBB243
	.uaword	.LBE243
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
	.uaword	0x1f1
	.uaword	0xd23
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_std_thread_tos"
	.byte	0x8
	.byte	0x5d
	.uaword	0xd3e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0xd18
	.uleb128 0x2b
	.string	"EE_IRQ_nesting_level"
	.byte	0x9
	.byte	0x39
	.uaword	0x1f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_tc_active_tos"
	.byte	0x7
	.byte	0xbe
	.uaword	0x1f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_std_endcycle_next_tid"
	.byte	0xa
	.byte	0x41
	.uaword	0x21e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_status"
	.byte	0x6
	.byte	0xa6
	.uaword	0xd18
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x21e
	.uaword	0xdbe
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.string	"EE_th_next"
	.byte	0x6
	.byte	0xae
	.uaword	0xdb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_th_ready_prio"
	.byte	0x6
	.byte	0xb1
	.uaword	0xdec
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0xd18
	.uleb128 0x2b
	.string	"EE_th_dispatch_prio"
	.byte	0x6
	.byte	0xb2
	.uaword	0xe0e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0xd18
	.uleb128 0x2b
	.string	"EE_stkfirst"
	.byte	0x6
	.byte	0xc7
	.uaword	0x21e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_sys_ceiling"
	.byte	0x6
	.byte	0xca
	.uaword	0x1f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_event_active"
	.byte	0x6
	.uahalf	0x111
	.uaword	0xd18
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"EE_th_waswaiting"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xd18
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.uaword	0x3ff
	.uaword	0xe83
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.string	"EE_counter_ROM"
	.byte	0x6
	.uahalf	0x194
	.uaword	0xe9c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0xe78
	.uleb128 0x29
	.uaword	0x446
	.uaword	0xeac
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.string	"EE_counter_RAM"
	.byte	0x6
	.uahalf	0x198
	.uaword	0xea1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_disable_count"
	.byte	0xb
	.byte	0x33
	.uaword	0x1f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0xb
	.byte	0x3a
	.uaword	0x20f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"EE_ApplicationMode"
	.byte	0xb
	.byte	0x3d
	.uaword	0x1f1
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x5
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
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
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
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"__regaddr"
	.extern	EE_counter_RAM,STT_OBJECT,-1
	.extern	EE_counter_ROM,STT_OBJECT,-1
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
