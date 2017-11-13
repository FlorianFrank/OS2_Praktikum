	.file	"Bsp.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	initTime
	.type	initTime, @function
initTime:
.LFB242:
	.file 1 "0_Src/SrvSw/SysSe/Bsp/Bsp.c"
	.loc 1 38 0
.LVL0:
.LBB139:
.LBB140:
.LBB141:
.LBB142:
	.file 2 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 2 1104 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	call	IfxScuCcu_getSourceFrequency
.LVL1:
	ld.w	%d15, [%a15]0
.LBE142:
.LBE141:
.LBE140:
.LBE139:
	.loc 1 41 0
	movh	%d4, 21990
.LBB152:
.LBB149:
.LBB146:
.LBB143:
	.loc 2 1104 0
	extr.u	%d15, %d15, 8, 4
.LBE143:
.LBE146:
.LBE149:
.LBE152:
	.loc 1 41 0
	addi	%d4, %d4, 15241
.LBB153:
.LBB150:
.LBB147:
.LBB144:
	.loc 2 1104 0
	itof	%d15, %d15
.LBE144:
.LBE147:
.LBE150:
.LBE153:
	.loc 1 41 0
	movh.a	%a15, hi:TimeConst
.LBB154:
.LBB151:
.LBB148:
.LBB145:
	.loc 2 1104 0
	div.f	%d2, %d2, %d15
.LBE145:
.LBE148:
.LBE151:
.LBE154:
	.loc 1 41 0
	lea	%a15, [%a15] lo:TimeConst
	.loc 1 39 0
	ftoiz	%d2, %d2
.LVL2:
	.loc 1 41 0
	mul	%e4, %d2, %d4
	sha	%d15, %d2, -31
	sha	%d4, %d5, -25
	sub	%d4, %d15
	mov	%e4, %d4
	st.d	[%a15]0, %e4
	.loc 1 42 0
	movh	%d4, 27488
	addi	%d4, %d4, -13717
	mul	%e4, %d2, %d4
	sha	%d4, %d5, -22
	sub	%d4, %d15
	mov	%e4, %d4
	st.d	[%a15] 8, %e4
	.loc 1 43 0
	movh	%d4, 17180
	addi	%d4, %d4, -8573
	mul	%e4, %d2, %d4
	sha	%d4, %d5, -18
	sub	%d4, %d15
	mov	%e4, %d4
	st.d	[%a15] 16, %e4
	.loc 1 44 0
	movh	%d4, 5369
	addi	%d4, %d4, -19063
	mul	%e4, %d2, %d4
	sha	%d4, %d5, -13
	sub	%d4, %d15
	mov	%e4, %d4
	st.d	[%a15] 24, %e4
	.loc 1 45 0
	movh	%d4, 26844
	addi	%d4, %d4, -29779
	mul	%e4, %d2, %d4
	sha	%d4, %d5, -12
	sub	%d4, %d15
	mov	%e4, %d4
	st.d	[%a15] 32, %e4
	.loc 1 46 0
	movh	%d4, 4194
	addi	%d4, %d4, 19923
	mul	%e4, %d2, %d4
	sha	%d4, %d5, -6
	sub	%d4, %d15
	mov	%e4, %d4
	st.d	[%a15] 40, %e4
	.loc 1 47 0
	movh	%d4, 20972
	addi	%d4, %d4, -31457
	mul	%e4, %d2, %d4
	sha	%d4, %d5, -5
	sub	%d4, %d15
	mov	%e4, %d4
	st.d	[%a15] 48, %e4
	.loc 1 48 0
	movh	%d4, 26214
	addi	%d4, %d4, 26215
	mul	%e4, %d2, %d4
	sha	%d4, %d5, -2
	sub	%d15, %d4, %d15
	mov	%e4, %d15
	st.d	[%a15] 56, %e4
	.loc 1 49 0
	mov	%e4, %d2
	st.d	[%a15] 64, %e4
	.loc 1 50 0
	mul	%d4, %d2, 10
	.loc 1 51 0
	mul	%d2, %d2, 100
.LVL3:
	.loc 1 50 0
	mov	%e4, %d4
	.loc 1 51 0
	mov	%e2, %d2
	.loc 1 50 0
	st.d	[%a15] 72, %e4
	.loc 1 51 0
	st.d	[%a15] 80, %e2
	ret
.LFE242:
	.size	initTime, .-initTime
	.align 1
	.global	waitPoll
	.type	waitPoll, @function
waitPoll:
.LFB243:
	.loc 1 62 0
	ret
.LFE243:
	.size	waitPoll, .-waitPoll
	.align 1
	.global	waitTime
	.type	waitTime, @function
waitTime:
.LFB244:
	.loc 1 74 0
.LVL4:
.LBB155:
.LBB156:
.LBB157:
.LBB158:
	.file 3 "0_Src/SrvSw/SysSe/Bsp/Bsp.h"
	.loc 3 276 0
	mov	%d2, -1
	sh	%d2, -1
	eq	%d15, %d4, -1
	and.eq	%d15, %d2, %d5
	.loc 3 278 0
	mov	%d6, -1
	.loc 3 276 0
	jnz	%d15, .L4
.LBB159:
.LBB160:
.LBB161:
.LBB162:
.LBB163:
.LBB164:
.LBB165:
.LBB166:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 4 572 0
#APP
	# 572 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE2C
	# 0 "" 2
.LVL5:
#NO_APP
.LBE166:
	.loc 4 573 0
	extr.u	%d15, %d15, 15, 1
.LVL6:
.LBE165:
.LBE164:
	.loc 4 581 0
#APP
	# 581 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB167:
.LBB168:
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 5 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL7:
#NO_APP
.LBE168:
.LBE167:
.LBE163:
.LBE162:
.LBE161:
.LBB169:
.LBB170:
	.file 6 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
	.loc 6 462 0
	ld.w	%d7, 0xf0000010
.LVL8:
	.loc 6 463 0
	ld.w	%d3, 0xf000002c
.LVL9:
.LBE170:
.LBE169:
	.loc 3 207 0
	mov	%d6, %d7
	insert	%d2, %d3, 0, 31, 1
.LVL10:
.LBB171:
.LBB172:
.LBB173:
	.loc 4 794 0
	jnz	%d15, .L19
.L5:
.LBE173:
.LBE172:
.LBE171:
.LBE160:
.LBE159:
	.loc 3 282 0
	addx	%d6, %d4, %d6
	addc	%d2, %d5, %d2
.LVL11:
.L4:
.LBE158:
.LBE157:
.LBB180:
.LBB181:
	.loc 3 323 0
	mov	%d15, -1
	sh	%d15, -1
	ne	%d5, %d6, -1
.LVL12:
	or.ne	%d5, %d15, %d2
.LVL13:
.L9:
	jz	%d5, .L7
.LBB182:
.LBB183:
.LBB184:
.LBB185:
.LBB186:
.LBB187:
.LBB188:
.LBB189:
	.loc 4 572 0
#APP
	# 572 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE2C
	# 0 "" 2
.LVL14:
#NO_APP
.LBE189:
	.loc 4 573 0
	extr.u	%d15, %d15, 15, 1
.LVL15:
.LBE188:
.LBE187:
	.loc 4 581 0
#APP
	# 581 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB190:
.LBB191:
	.loc 5 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
.LVL16:
#NO_APP
.LBE191:
.LBE190:
.LBE186:
.LBE185:
.LBE184:
.LBB192:
.LBB193:
	.loc 6 462 0
	ld.w	%d4, 0xf0000010
.LVL17:
	.loc 6 463 0
	ld.w	%d3, 0xf000002c
.LVL18:
	or	%d4, %d4, 0
.LVL19:
.LBE193:
.LBE192:
	.loc 3 207 0
	insert	%d3, %d3, 0, 31, 1
.LVL20:
.LBB194:
.LBB195:
.LBB196:
	.loc 4 794 0
	jz	%d15, .L8
	.loc 4 796 0
#APP
	# 796 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L8:
.LVL21:
.LBE196:
.LBE195:
.LBE194:
.LBE183:
.LBE182:
.LBE181:
.LBE180:
	.loc 3 403 0
	eq	%d15, %d2, %d3
	and.lt.u	%d15, %d4, %d6
	or.lt	%d15, %d3, %d2
	jnz	%d15, .L9
.LBE156:
.LBE155:
	.loc 1 76 0
	ret
.LVL22:
.L7:
	j	.L7
.LVL23:
.L19:
.LBB199:
.LBB198:
.LBB197:
.LBB179:
.LBB178:
.LBB177:
.LBB176:
.LBB175:
.LBB174:
	.loc 4 796 0
#APP
	# 796 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
	j	.L5
.LBE174:
.LBE175:
.LBE176:
.LBE177:
.LBE178:
.LBE179:
.LBE197:
.LBE198:
.LBE199:
.LFE244:
	.size	waitTime, .-waitTime
	.global	TimeConst
.section .bss,"aw",@nobits
	.align 2
	.type	TimeConst, @object
	.size	TimeConst, 88
TimeConst:
	.zero	88
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
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 7 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 8 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
	.file 11 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1bdd
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/SrvSw/SysSe/Bsp/Bsp.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x7
	.byte	0x5c
	.uaword	0x190
	.uleb128 0x3
	.string	"float32"
	.byte	0x7
	.byte	0x5e
	.uaword	0x218
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x7
	.byte	0x68
	.uaword	0x1c7
	.uleb128 0x3
	.string	"sint64"
	.byte	0x8
	.byte	0x24
	.uaword	0x248
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64"
	.byte	0x8
	.byte	0x25
	.uaword	0x166
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x8
	.byte	0x2b
	.uaword	0x23a
	.uleb128 0x4
	.uaword	0x180
	.uleb128 0x5
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x176
	.uaword	0x305
	.uleb128 0x6
	.string	"CCPN"
	.byte	0x9
	.uahalf	0x178
	.uaword	0x283
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"reserved_10"
	.byte	0x9
	.uahalf	0x179
	.uaword	0x283
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"IE"
	.byte	0x9
	.uahalf	0x17a
	.uaword	0x283
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"PIPN"
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x283
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"reserved_26"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x283
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x288
	.uleb128 0x8
	.byte	0x4
	.byte	0x9
	.uahalf	0x451
	.uaword	0x346
	.uleb128 0x9
	.string	"U"
	.byte	0x9
	.uahalf	0x454
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0x9
	.uahalf	0x456
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0x9
	.uahalf	0x458
	.uaword	0x305
	.byte	0
	.uleb128 0x7
	.string	"Ifx_CPU_ICR"
	.byte	0x9
	.uahalf	0x459
	.uaword	0x31e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.uaword	0x1c7
	.uaword	0x376
	.uleb128 0xb
	.uaword	0x35a
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	0x1c7
	.uaword	0x386
	.uleb128 0xb
	.uaword	0x35a
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	0x1c7
	.uaword	0x396
	.uleb128 0xb
	.uaword	0x35a
	.byte	0x8f
	.byte	0
	.uleb128 0xc
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x72
	.uaword	0x46a
	.uleb128 0xd
	.string	"CANDIV"
	.byte	0xa
	.byte	0x74
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"ERAYDIV"
	.byte	0xa
	.byte	0x75
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"STMDIV"
	.byte	0xa
	.byte	0x76
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"GTMDIV"
	.byte	0xa
	.byte	0x77
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"ETHDIV"
	.byte	0xa
	.byte	0x78
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"ASCLINFDIV"
	.byte	0xa
	.byte	0x79
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"ASCLINSDIV"
	.byte	0xa
	.byte	0x7a
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"INSEL"
	.byte	0xa
	.byte	0x7b
	.uaword	0x180
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"UP"
	.byte	0xa
	.byte	0x7c
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0xa
	.byte	0x7d
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0xa
	.byte	0x7e
	.uaword	0x396
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.uahalf	0x4f1
	.uaword	0x4ae
	.uleb128 0x9
	.string	"U"
	.byte	0xa
	.uahalf	0x4f4
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xa
	.uahalf	0x4f6
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xa
	.uahalf	0x4f8
	.uaword	0x46a
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SCU_CCUCON1"
	.byte	0xa
	.uahalf	0x4f9
	.uaword	0x486
	.uleb128 0xc
	.string	"_Ifx_STM_ACCEN0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x2d
	.uaword	0x6da
	.uleb128 0xd
	.string	"EN0"
	.byte	0xb
	.byte	0x2f
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0xb
	.byte	0x30
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EN2"
	.byte	0xb
	.byte	0x31
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EN3"
	.byte	0xb
	.byte	0x32
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EN4"
	.byte	0xb
	.byte	0x33
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"EN5"
	.byte	0xb
	.byte	0x34
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"EN6"
	.byte	0xb
	.byte	0x35
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EN7"
	.byte	0xb
	.byte	0x36
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EN8"
	.byte	0xb
	.byte	0x37
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EN9"
	.byte	0xb
	.byte	0x38
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"EN10"
	.byte	0xb
	.byte	0x39
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"EN11"
	.byte	0xb
	.byte	0x3a
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EN12"
	.byte	0xb
	.byte	0x3b
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"EN13"
	.byte	0xb
	.byte	0x3c
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"EN14"
	.byte	0xb
	.byte	0x3d
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"EN15"
	.byte	0xb
	.byte	0x3e
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EN16"
	.byte	0xb
	.byte	0x3f
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"EN17"
	.byte	0xb
	.byte	0x40
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"EN18"
	.byte	0xb
	.byte	0x41
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"EN19"
	.byte	0xb
	.byte	0x42
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"EN20"
	.byte	0xb
	.byte	0x43
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"EN21"
	.byte	0xb
	.byte	0x44
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"EN22"
	.byte	0xb
	.byte	0x45
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"EN23"
	.byte	0xb
	.byte	0x46
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EN24"
	.byte	0xb
	.byte	0x47
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"EN25"
	.byte	0xb
	.byte	0x48
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"EN26"
	.byte	0xb
	.byte	0x49
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"EN27"
	.byte	0xb
	.byte	0x4a
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EN28"
	.byte	0xb
	.byte	0x4b
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"EN29"
	.byte	0xb
	.byte	0x4c
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"EN30"
	.byte	0xb
	.byte	0x4d
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"EN31"
	.byte	0xb
	.byte	0x4e
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0_Bits"
	.byte	0xb
	.byte	0x4f
	.uaword	0x4c6
	.uleb128 0xc
	.string	"_Ifx_STM_ACCEN1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x52
	.uaword	0x722
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0xb
	.byte	0x54
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN1_Bits"
	.byte	0xb
	.byte	0x55
	.uaword	0x6f5
	.uleb128 0xc
	.string	"_Ifx_STM_CAP_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x58
	.uaword	0x767
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xb
	.byte	0x5a
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAP_Bits"
	.byte	0xb
	.byte	0x5b
	.uaword	0x73d
	.uleb128 0xc
	.string	"_Ifx_STM_CAPSV_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x5e
	.uaword	0x7ab
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xb
	.byte	0x60
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAPSV_Bits"
	.byte	0xb
	.byte	0x61
	.uaword	0x77f
	.uleb128 0xc
	.string	"_Ifx_STM_CLC_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x64
	.uaword	0x82e
	.uleb128 0xd
	.string	"DISR"
	.byte	0xb
	.byte	0x66
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"DISS"
	.byte	0xb
	.byte	0x67
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0xb
	.byte	0x68
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"EDIS"
	.byte	0xb
	.byte	0x69
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0xb
	.byte	0x6a
	.uaword	0x180
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CLC_Bits"
	.byte	0xb
	.byte	0x6b
	.uaword	0x7c5
	.uleb128 0xc
	.string	"_Ifx_STM_CMCON_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x6e
	.uaword	0x908
	.uleb128 0xd
	.string	"MSIZE0"
	.byte	0xb
	.byte	0x70
	.uaword	0x180
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"reserved_5"
	.byte	0xb
	.byte	0x71
	.uaword	0x180
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"MSTART0"
	.byte	0xb
	.byte	0x72
	.uaword	0x180
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"reserved_13"
	.byte	0xb
	.byte	0x73
	.uaword	0x180
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"MSIZE1"
	.byte	0xb
	.byte	0x74
	.uaword	0x180
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"reserved_21"
	.byte	0xb
	.byte	0x75
	.uaword	0x180
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"MSTART1"
	.byte	0xb
	.byte	0x76
	.uaword	0x180
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"reserved_29"
	.byte	0xb
	.byte	0x77
	.uaword	0x180
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMCON_Bits"
	.byte	0xb
	.byte	0x78
	.uaword	0x846
	.uleb128 0xc
	.string	"_Ifx_STM_CMP_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x7b
	.uaword	0x94f
	.uleb128 0xd
	.string	"CMPVAL"
	.byte	0xb
	.byte	0x7d
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMP_Bits"
	.byte	0xb
	.byte	0x7e
	.uaword	0x922
	.uleb128 0xc
	.string	"_Ifx_STM_ICR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x81
	.uaword	0xa1a
	.uleb128 0xd
	.string	"CMP0EN"
	.byte	0xb
	.byte	0x83
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"CMP0IR"
	.byte	0xb
	.byte	0x84
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"CMP0OS"
	.byte	0xb
	.byte	0x85
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"reserved_3"
	.byte	0xb
	.byte	0x86
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"CMP1EN"
	.byte	0xb
	.byte	0x87
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"CMP1IR"
	.byte	0xb
	.byte	0x88
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"CMP1OS"
	.byte	0xb
	.byte	0x89
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"reserved_7"
	.byte	0xb
	.byte	0x8a
	.uaword	0x180
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ICR_Bits"
	.byte	0xb
	.byte	0x8b
	.uaword	0x967
	.uleb128 0xc
	.string	"_Ifx_STM_ID_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x8e
	.uaword	0xa86
	.uleb128 0xd
	.string	"MODREV"
	.byte	0xb
	.byte	0x90
	.uaword	0x180
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0xb
	.byte	0x91
	.uaword	0x180
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"MODNUMBER"
	.byte	0xb
	.byte	0x92
	.uaword	0x180
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ID_Bits"
	.byte	0xb
	.byte	0x93
	.uaword	0xa32
	.uleb128 0xc
	.string	"_Ifx_STM_ISCR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x96
	.uaword	0xb14
	.uleb128 0xd
	.string	"CMP0IRR"
	.byte	0xb
	.byte	0x98
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"CMP0IRS"
	.byte	0xb
	.byte	0x99
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"CMP1IRR"
	.byte	0xb
	.byte	0x9a
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"CMP1IRS"
	.byte	0xb
	.byte	0x9b
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0xb
	.byte	0x9c
	.uaword	0x180
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ISCR_Bits"
	.byte	0xb
	.byte	0x9d
	.uaword	0xa9d
	.uleb128 0xc
	.string	"_Ifx_STM_KRST0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa0
	.uaword	0xb7b
	.uleb128 0xd
	.string	"RST"
	.byte	0xb
	.byte	0xa2
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"RSTSTAT"
	.byte	0xb
	.byte	0xa3
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0xb
	.byte	0xa4
	.uaword	0x180
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST0_Bits"
	.byte	0xb
	.byte	0xa5
	.uaword	0xb2d
	.uleb128 0xc
	.string	"_Ifx_STM_KRST1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa8
	.uaword	0xbd0
	.uleb128 0xd
	.string	"RST"
	.byte	0xb
	.byte	0xaa
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xb
	.byte	0xab
	.uaword	0x180
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST1_Bits"
	.byte	0xb
	.byte	0xac
	.uaword	0xb95
	.uleb128 0xc
	.string	"_Ifx_STM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xaf
	.uaword	0xc27
	.uleb128 0xd
	.string	"CLR"
	.byte	0xb
	.byte	0xb1
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xb
	.byte	0xb2
	.uaword	0x180
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRSTCLR_Bits"
	.byte	0xb
	.byte	0xb3
	.uaword	0xbea
	.uleb128 0xc
	.string	"_Ifx_STM_OCS_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xb6
	.uaword	0xcb6
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0xb
	.byte	0xb8
	.uaword	0x180
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SUS"
	.byte	0xb
	.byte	0xb9
	.uaword	0x180
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"SUS_P"
	.byte	0xb
	.byte	0xba
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"SUSSTA"
	.byte	0xb
	.byte	0xbb
	.uaword	0x180
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"reserved_30"
	.byte	0xb
	.byte	0xbc
	.uaword	0x180
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_OCS_Bits"
	.byte	0xb
	.byte	0xbd
	.uaword	0xc43
	.uleb128 0xc
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xc0
	.uaword	0xcfd
	.uleb128 0xd
	.string	"STM31_0"
	.byte	0xb
	.byte	0xc2
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0xb
	.byte	0xc3
	.uaword	0xcce
	.uleb128 0xc
	.string	"_Ifx_STM_TIM0SV_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xc6
	.uaword	0xd47
	.uleb128 0xd
	.string	"STM31_0"
	.byte	0xb
	.byte	0xc8
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0SV_Bits"
	.byte	0xb
	.byte	0xc9
	.uaword	0xd16
	.uleb128 0xc
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xcc
	.uaword	0xd91
	.uleb128 0xd
	.string	"STM35_4"
	.byte	0xb
	.byte	0xce
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0xb
	.byte	0xcf
	.uaword	0xd62
	.uleb128 0xc
	.string	"_Ifx_STM_TIM2_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd2
	.uaword	0xdd9
	.uleb128 0xd
	.string	"STM39_8"
	.byte	0xb
	.byte	0xd4
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM2_Bits"
	.byte	0xb
	.byte	0xd5
	.uaword	0xdaa
	.uleb128 0xc
	.string	"_Ifx_STM_TIM3_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd8
	.uaword	0xe22
	.uleb128 0xd
	.string	"STM43_12"
	.byte	0xb
	.byte	0xda
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM3_Bits"
	.byte	0xb
	.byte	0xdb
	.uaword	0xdf2
	.uleb128 0xc
	.string	"_Ifx_STM_TIM4_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xde
	.uaword	0xe6b
	.uleb128 0xd
	.string	"STM47_16"
	.byte	0xb
	.byte	0xe0
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM4_Bits"
	.byte	0xb
	.byte	0xe1
	.uaword	0xe3b
	.uleb128 0xc
	.string	"_Ifx_STM_TIM5_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xe4
	.uaword	0xeb4
	.uleb128 0xd
	.string	"STM51_20"
	.byte	0xb
	.byte	0xe6
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM5_Bits"
	.byte	0xb
	.byte	0xe7
	.uaword	0xe84
	.uleb128 0xc
	.string	"_Ifx_STM_TIM6_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xea
	.uaword	0xefd
	.uleb128 0xd
	.string	"STM63_32"
	.byte	0xb
	.byte	0xec
	.uaword	0x180
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM6_Bits"
	.byte	0xb
	.byte	0xed
	.uaword	0xecd
	.uleb128 0xf
	.byte	0x4
	.byte	0xb
	.byte	0xf5
	.uaword	0xf3a
	.uleb128 0x10
	.string	"U"
	.byte	0xb
	.byte	0xf8
	.uaword	0x180
	.uleb128 0x10
	.string	"I"
	.byte	0xb
	.byte	0xfa
	.uaword	0x1b1
	.uleb128 0x10
	.string	"B"
	.byte	0xb
	.byte	0xfc
	.uaword	0x6da
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0"
	.byte	0xb
	.byte	0xfd
	.uaword	0xf16
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x100
	.uaword	0xf78
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x103
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x105
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x107
	.uaword	0x722
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_ACCEN1"
	.byte	0xb
	.uahalf	0x108
	.uaword	0xf50
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x10b
	.uaword	0xfb7
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x110
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x112
	.uaword	0x767
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_CAP"
	.byte	0xb
	.uahalf	0x113
	.uaword	0xf8f
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x116
	.uaword	0xff3
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x119
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x11b
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x11d
	.uaword	0x7ab
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_CAPSV"
	.byte	0xb
	.uahalf	0x11e
	.uaword	0xfcb
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x121
	.uaword	0x1031
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x124
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x126
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x128
	.uaword	0x82e
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_CLC"
	.byte	0xb
	.uahalf	0x129
	.uaword	0x1009
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x12c
	.uaword	0x106d
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x12f
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x131
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x133
	.uaword	0x908
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_CMCON"
	.byte	0xb
	.uahalf	0x134
	.uaword	0x1045
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x137
	.uaword	0x10ab
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x13a
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x13c
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x13e
	.uaword	0x94f
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_CMP"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0x1083
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x142
	.uaword	0x10e7
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x145
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x147
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x149
	.uaword	0xa1a
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_ICR"
	.byte	0xb
	.uahalf	0x14a
	.uaword	0x10bf
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x14d
	.uaword	0x1123
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x150
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x152
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x154
	.uaword	0xa86
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_ID"
	.byte	0xb
	.uahalf	0x155
	.uaword	0x10fb
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x158
	.uaword	0x115e
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x15b
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x15d
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x15f
	.uaword	0xb14
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_ISCR"
	.byte	0xb
	.uahalf	0x160
	.uaword	0x1136
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x163
	.uaword	0x119b
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x166
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x168
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x16a
	.uaword	0xb7b
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_KRST0"
	.byte	0xb
	.uahalf	0x16b
	.uaword	0x1173
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x16e
	.uaword	0x11d9
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x171
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x173
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x175
	.uaword	0xbd0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_KRST1"
	.byte	0xb
	.uahalf	0x176
	.uaword	0x11b1
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x179
	.uaword	0x1217
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x17c
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x17e
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x180
	.uaword	0xc27
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_KRSTCLR"
	.byte	0xb
	.uahalf	0x181
	.uaword	0x11ef
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x184
	.uaword	0x1257
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x187
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x189
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x18b
	.uaword	0xcb6
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_OCS"
	.byte	0xb
	.uahalf	0x18c
	.uaword	0x122f
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x18f
	.uaword	0x1293
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x192
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x194
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x196
	.uaword	0xcfd
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM0"
	.byte	0xb
	.uahalf	0x197
	.uaword	0x126b
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x19a
	.uaword	0x12d0
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x19f
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x1a1
	.uaword	0xd47
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM0SV"
	.byte	0xb
	.uahalf	0x1a2
	.uaword	0x12a8
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x1a5
	.uaword	0x130f
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x1a8
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x1aa
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0xd91
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM1"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0x12e7
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0x134c
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x1b3
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x1b5
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x1b7
	.uaword	0xdd9
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM2"
	.byte	0xb
	.uahalf	0x1b8
	.uaword	0x1324
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0x1389
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x1be
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0xe22
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM3"
	.byte	0xb
	.uahalf	0x1c3
	.uaword	0x1361
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x1c6
	.uaword	0x13c6
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x1c9
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x1cb
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x1cd
	.uaword	0xe6b
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM4"
	.byte	0xb
	.uahalf	0x1ce
	.uaword	0x139e
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0x1403
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x1d6
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x1d8
	.uaword	0xeb4
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM5"
	.byte	0xb
	.uahalf	0x1d9
	.uaword	0x13db
	.uleb128 0x8
	.byte	0x4
	.byte	0xb
	.uahalf	0x1dc
	.uaword	0x1440
	.uleb128 0x9
	.string	"U"
	.byte	0xb
	.uahalf	0x1df
	.uaword	0x180
	.uleb128 0x9
	.string	"I"
	.byte	0xb
	.uahalf	0x1e1
	.uaword	0x1b1
	.uleb128 0x9
	.string	"B"
	.byte	0xb
	.uahalf	0x1e3
	.uaword	0xefd
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM_TIM6"
	.byte	0xb
	.uahalf	0x1e4
	.uaword	0x1418
	.uleb128 0x11
	.string	"_Ifx_STM"
	.uahalf	0x100
	.byte	0xb
	.uahalf	0x1ef
	.uaword	0x15ee
	.uleb128 0x12
	.string	"CLC"
	.byte	0xb
	.uahalf	0x1f1
	.uaword	0x1031
	.byte	0
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0xb
	.uahalf	0x1f2
	.uaword	0x366
	.byte	0x4
	.uleb128 0x12
	.string	"ID"
	.byte	0xb
	.uahalf	0x1f3
	.uaword	0x1123
	.byte	0x8
	.uleb128 0x12
	.string	"reserved_C"
	.byte	0xb
	.uahalf	0x1f4
	.uaword	0x366
	.byte	0xc
	.uleb128 0x12
	.string	"TIM0"
	.byte	0xb
	.uahalf	0x1f5
	.uaword	0x1293
	.byte	0x10
	.uleb128 0x12
	.string	"TIM1"
	.byte	0xb
	.uahalf	0x1f6
	.uaword	0x130f
	.byte	0x14
	.uleb128 0x12
	.string	"TIM2"
	.byte	0xb
	.uahalf	0x1f7
	.uaword	0x134c
	.byte	0x18
	.uleb128 0x12
	.string	"TIM3"
	.byte	0xb
	.uahalf	0x1f8
	.uaword	0x1389
	.byte	0x1c
	.uleb128 0x12
	.string	"TIM4"
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0x13c6
	.byte	0x20
	.uleb128 0x12
	.string	"TIM5"
	.byte	0xb
	.uahalf	0x1fa
	.uaword	0x1403
	.byte	0x24
	.uleb128 0x12
	.string	"TIM6"
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0x1440
	.byte	0x28
	.uleb128 0x12
	.string	"CAP"
	.byte	0xb
	.uahalf	0x1fc
	.uaword	0xfb7
	.byte	0x2c
	.uleb128 0x12
	.string	"CMP"
	.byte	0xb
	.uahalf	0x1fd
	.uaword	0x15ee
	.byte	0x30
	.uleb128 0x12
	.string	"CMCON"
	.byte	0xb
	.uahalf	0x1fe
	.uaword	0x106d
	.byte	0x38
	.uleb128 0x12
	.string	"ICR"
	.byte	0xb
	.uahalf	0x1ff
	.uaword	0x10e7
	.byte	0x3c
	.uleb128 0x12
	.string	"ISCR"
	.byte	0xb
	.uahalf	0x200
	.uaword	0x115e
	.byte	0x40
	.uleb128 0x12
	.string	"reserved_44"
	.byte	0xb
	.uahalf	0x201
	.uaword	0x376
	.byte	0x44
	.uleb128 0x12
	.string	"TIM0SV"
	.byte	0xb
	.uahalf	0x202
	.uaword	0x12d0
	.byte	0x50
	.uleb128 0x12
	.string	"CAPSV"
	.byte	0xb
	.uahalf	0x203
	.uaword	0xff3
	.byte	0x54
	.uleb128 0x12
	.string	"reserved_58"
	.byte	0xb
	.uahalf	0x204
	.uaword	0x386
	.byte	0x58
	.uleb128 0x12
	.string	"OCS"
	.byte	0xb
	.uahalf	0x205
	.uaword	0x1257
	.byte	0xe8
	.uleb128 0x12
	.string	"KRSTCLR"
	.byte	0xb
	.uahalf	0x206
	.uaword	0x1217
	.byte	0xec
	.uleb128 0x12
	.string	"KRST1"
	.byte	0xb
	.uahalf	0x207
	.uaword	0x11d9
	.byte	0xf0
	.uleb128 0x12
	.string	"KRST0"
	.byte	0xb
	.uahalf	0x208
	.uaword	0x119b
	.byte	0xf4
	.uleb128 0x12
	.string	"ACCEN1"
	.byte	0xb
	.uahalf	0x209
	.uaword	0xf78
	.byte	0xf8
	.uleb128 0x12
	.string	"ACCEN0"
	.byte	0xb
	.uahalf	0x20a
	.uaword	0xf3a
	.byte	0xfc
	.byte	0
	.uleb128 0xa
	.uaword	0x10ab
	.uaword	0x15fe
	.uleb128 0xb
	.uaword	0x35a
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"Ifx_STM"
	.byte	0xb
	.uahalf	0x20b
	.uaword	0x160e
	.uleb128 0x4
	.uaword	0x1455
	.uleb128 0x14
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x4
	.uahalf	0x239
	.byte	0x1
	.uaword	0x22b
	.byte	0x3
	.uaword	0x165a
	.uleb128 0x15
	.string	"reg"
	.byte	0x4
	.uahalf	0x23b
	.uaword	0x346
	.uleb128 0x16
	.uleb128 0x15
	.string	"__res"
	.byte	0x4
	.uahalf	0x23c
	.uaword	0x180
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"__nop"
	.byte	0x5
	.uahalf	0x557
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x44e
	.byte	0x1
	.uaword	0x209
	.byte	0x3
	.uleb128 0x14
	.string	"IfxStm_getFrequency"
	.byte	0x6
	.uahalf	0x1db
	.byte	0x1
	.uaword	0x209
	.byte	0x3
	.uaword	0x16c5
	.uleb128 0x19
	.string	"stm"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x16c5
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x1dd
	.uaword	0x209
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.uaword	0x15fe
	.uleb128 0x14
	.string	"IfxCpu_disableInterrupts"
	.byte	0x4
	.uahalf	0x241
	.byte	0x1
	.uaword	0x22b
	.byte	0x3
	.uaword	0x16ff
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x243
	.uaword	0x22b
	.byte	0
	.uleb128 0x1c
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x4
	.uahalf	0x318
	.byte	0x1
	.byte	0x3
	.uaword	0x172f
	.uleb128 0x1d
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x318
	.uaword	0x22b
	.byte	0
	.uleb128 0x1e
	.string	"disableInterrupts"
	.byte	0x3
	.byte	0x58
	.byte	0x1
	.uaword	0x22b
	.byte	0x3
	.uleb128 0x14
	.string	"IfxStm_get"
	.byte	0x6
	.uahalf	0x1ca
	.byte	0x1
	.uaword	0x259
	.byte	0x3
	.uaword	0x177c
	.uleb128 0x19
	.string	"stm"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x16c5
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x259
	.byte	0
	.uleb128 0x1f
	.string	"restoreInterrupts"
	.byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.uaword	0x17a3
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x3
	.byte	0x7a
	.uaword	0x22b
	.byte	0
	.uleb128 0x21
	.string	"now"
	.byte	0x3
	.byte	0xc9
	.byte	0x1
	.uaword	0x26f
	.byte	0x3
	.uaword	0x17d9
	.uleb128 0x22
	.string	"stmNow"
	.byte	0x3
	.byte	0xcb
	.uaword	0x26f
	.uleb128 0x22
	.string	"interruptState"
	.byte	0x3
	.byte	0xcc
	.uaword	0x22b
	.byte	0
	.uleb128 0x14
	.string	"getDeadLine"
	.byte	0x3
	.uahalf	0x110
	.byte	0x1
	.uaword	0x26f
	.byte	0x3
	.uaword	0x180c
	.uleb128 0x1d
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x110
	.uaword	0x26f
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x112
	.uaword	0x26f
	.byte	0
	.uleb128 0x14
	.string	"isDeadLine"
	.byte	0x3
	.uahalf	0x13f
	.byte	0x1
	.uaword	0x22b
	.byte	0x3
	.uaword	0x183e
	.uleb128 0x1d
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x13f
	.uaword	0x26f
	.uleb128 0x1a
	.uaword	.LASF5
	.byte	0x3
	.uahalf	0x141
	.uaword	0x22b
	.byte	0
	.uleb128 0x1c
	.string	"wait"
	.byte	0x3
	.uahalf	0x18f
	.byte	0x1
	.byte	0x3
	.uaword	0x1866
	.uleb128 0x1d
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x18f
	.uaword	0x26f
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x3
	.uahalf	0x191
	.uaword	0x26f
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"initTime"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB242
	.uaword	.LFE242
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x18d3
	.uleb128 0x24
	.string	"Fsys"
	.byte	0x1
	.byte	0x27
	.uaword	0x1fb
	.uaword	.LLST0
	.uleb128 0x25
	.uaword	0x168a
	.uaword	.LBB139
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x27
	.uleb128 0x26
	.uaword	0x16ac
	.sleb128 -268435456
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x28
	.uaword	0x16b8
	.uleb128 0x29
	.uaword	0x1666
	.uaword	.LBB141
	.uaword	.Ldebug_ranges0+0
	.byte	0x6
	.uahalf	0x1df
	.uleb128 0x2a
	.uaword	.LVL1
	.uaword	0x1bb8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"waitPoll"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	.LFB243
	.uaword	.LFE243
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"waitTime"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	.LFB244
	.uaword	.LFE244
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1b90
	.uleb128 0x2c
	.uaword	.LASF7
	.byte	0x1
	.byte	0x49
	.uaword	0x26f
	.uaword	.LLST1
	.uleb128 0x25
	.uaword	0x183e
	.uaword	.LBB155
	.uaword	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x4b
	.uleb128 0x2d
	.uaword	0x184d
	.uaword	.LLST2
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x2e
	.uaword	0x1859
	.byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x2f
	.uaword	0x17d9
	.uaword	.LBB157
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x3
	.uahalf	0x191
	.uaword	0x1a67
	.uleb128 0x2d
	.uaword	0x17f3
	.uaword	.LLST2
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x30
	.uaword	0x17ff
	.uaword	.LLST4
	.uleb128 0x29
	.uaword	0x17a3
	.uaword	.LBB159
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x3
	.uahalf	0x11a
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x30
	.uaword	0x17b4
	.uaword	.LLST5
	.uleb128 0x28
	.uaword	0x17c2
	.uleb128 0x31
	.uaword	0x172f
	.uaword	.LBB161
	.uaword	.LBE161
	.byte	0x3
	.byte	0xce
	.uaword	0x1a09
	.uleb128 0x32
	.uaword	0x16cb
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x3
	.byte	0x5a
	.uleb128 0x33
	.uaword	.LBB163
	.uaword	.LBE163
	.uleb128 0x28
	.uaword	0x16f2
	.uleb128 0x34
	.uaword	0x1613
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x4
	.uahalf	0x244
	.uaword	0x19f6
	.uleb128 0x33
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x28
	.uaword	0x163d
	.uleb128 0x33
	.uaword	.LBB166
	.uaword	.LBE166
	.uleb128 0x30
	.uaword	0x164a
	.uaword	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x165a
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x4
	.uahalf	0x246
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x174a
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x3
	.byte	0xcf
	.uaword	0x1a39
	.uleb128 0x2d
	.uaword	0x1763
	.uaword	.LLST7
	.uleb128 0x33
	.uaword	.LBB170
	.uaword	.LBE170
	.uleb128 0x30
	.uaword	0x176f
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x177c
	.uaword	.LBB171
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x3
	.byte	0xd0
	.uleb128 0x36
	.uaword	0x1797
	.uleb128 0x25
	.uaword	0x16ff
	.uaword	.LBB172
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x3
	.byte	0x7c
	.uleb128 0x36
	.uaword	0x1722
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x180c
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x3
	.uahalf	0x193
	.uleb128 0x2d
	.uaword	0x1825
	.uaword	.LLST9
	.uleb128 0x33
	.uaword	.LBB181
	.uaword	.LBE181
	.uleb128 0x28
	.uaword	0x1831
	.uleb128 0x37
	.uaword	0x17a3
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x3
	.uahalf	0x149
	.uleb128 0x33
	.uaword	.LBB183
	.uaword	.LBE183
	.uleb128 0x30
	.uaword	0x17b4
	.uaword	.LLST10
	.uleb128 0x28
	.uaword	0x17c2
	.uleb128 0x31
	.uaword	0x172f
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x3
	.byte	0xce
	.uaword	0x1b2f
	.uleb128 0x32
	.uaword	0x16cb
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x3
	.byte	0x5a
	.uleb128 0x33
	.uaword	.LBB186
	.uaword	.LBE186
	.uleb128 0x28
	.uaword	0x16f2
	.uleb128 0x34
	.uaword	0x1613
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x4
	.uahalf	0x244
	.uaword	0x1b1c
	.uleb128 0x33
	.uaword	.LBB188
	.uaword	.LBE188
	.uleb128 0x28
	.uaword	0x163d
	.uleb128 0x33
	.uaword	.LBB189
	.uaword	.LBE189
	.uleb128 0x30
	.uaword	0x164a
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x165a
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x4
	.uahalf	0x246
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x174a
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x3
	.byte	0xcf
	.uaword	0x1b5f
	.uleb128 0x2d
	.uaword	0x1763
	.uaword	.LLST12
	.uleb128 0x33
	.uaword	.LBB193
	.uaword	.LBE193
	.uleb128 0x30
	.uaword	0x176f
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x177c
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x3
	.byte	0xd0
	.uleb128 0x36
	.uaword	0x1797
	.uleb128 0x32
	.uaword	0x16ff
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x3
	.byte	0x7c
	.uleb128 0x36
	.uaword	0x1722
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x26f
	.uaword	0x1ba0
	.uleb128 0xb
	.uaword	0x35a
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.string	"TimeConst"
	.byte	0x1
	.byte	0x1c
	.uaword	0x1b90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TimeConst
	.uleb128 0x39
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x2
	.uahalf	0x399
	.byte	0x1
	.uaword	0x209
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE242-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	TimeConst+64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x166
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE244-.Ltext0
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE244-.Ltext0
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE244-.Ltext0
	.uahalf	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x5
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE244-.Ltext0
	.uahalf	0x5
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x9
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x18
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x166
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE244-.Ltext0
	.uahalf	0x18
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x166
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x7fffffffffffffff
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x5
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x9f
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x18
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x166
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x180
	.byte	0xf7
	.uleb128 0x166
	.byte	0x21
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
	.uaword	.LBB139-.Ltext0
	.uaword	.LBE139-.Ltext0
	.uaword	.LBB152-.Ltext0
	.uaword	.LBE152-.Ltext0
	.uaword	.LBB153-.Ltext0
	.uaword	.LBE153-.Ltext0
	.uaword	.LBB154-.Ltext0
	.uaword	.LBE154-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB155-.Ltext0
	.uaword	.LBE155-.Ltext0
	.uaword	.LBB199-.Ltext0
	.uaword	.LBE199-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB157-.Ltext0
	.uaword	.LBE157-.Ltext0
	.uaword	.LBB197-.Ltext0
	.uaword	.LBE197-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB159-.Ltext0
	.uaword	.LBE159-.Ltext0
	.uaword	.LBB178-.Ltext0
	.uaword	.LBE178-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB171-.Ltext0
	.uaword	.LBE171-.Ltext0
	.uaword	.LBB176-.Ltext0
	.uaword	.LBE176-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"STMCAP63_32"
.LASF0:
	.string	"reserved_0"
.LASF4:
	.string	"reserved_1"
.LASF2:
	.string	"reserved_2"
.LASF3:
	.string	"reserved_4"
.LASF7:
	.string	"timeout"
.LASF8:
	.string	"deadLine"
.LASF5:
	.string	"result"
.LASF6:
	.string	"enabled"
	.extern	IfxScuCcu_getSourceFrequency,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
