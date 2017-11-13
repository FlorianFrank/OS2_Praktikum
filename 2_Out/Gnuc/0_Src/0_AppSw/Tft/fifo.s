	.file	"fifo.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	fifo_display_used
	.type	fifo_display_used, @function
fifo_display_used:
.LFB334:
	.file 1 "0_Src/0_AppSw/Tft/fifo.c"
	.loc 1 87 0
	.loc 1 89 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
	ld.w	%d2, [%a15] 8
	ld.w	%d15, [%a15] 12
	sub	%d2, %d15
.LVL0:
	.loc 1 90 0
	jltz	%d2, .L4
	.loc 1 93 0
	ret
.L4:
	.loc 1 91 0
	ld.w	%d15, [%a15] 4
	add	%d2, %d15
.LVL1:
	.loc 1 93 0
	ret
.LFE334:
	.size	fifo_display_used, .-fifo_display_used
	.align 1
	.global	fifo_max_used
	.type	fifo_max_used, @function
fifo_max_used:
.LFB335:
	.loc 1 96 0
	.loc 1 98 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
	ld.w	%d2, [%a15] 16
	ret
.LFE335:
	.size	fifo_max_used, .-fifo_max_used
	.align 1
	.global	fifo_display_init
	.type	fifo_display_init, @function
fifo_display_init:
.LFB336:
	.loc 1 101 0
.LVL2:
	.loc 1 102 0
	mov	%d15, 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	st.w	[%a15] 8, %d15
	.loc 1 103 0
	st.w	[%a15] 12, %d15
	.loc 1 104 0
	st.w	[%a15] 4, %d4
	.loc 1 105 0
	st.w	[%a15] 16, %d15
	.loc 1 106 0
	st.a	[%a2] lo:fifodisplay, %a4
	ret
.LFE336:
	.size	fifo_display_init, .-fifo_display_init
	.align 1
	.global	FIFO_DISPLAY_USED
	.type	FIFO_DISPLAY_USED, @function
FIFO_DISPLAY_USED:
.LFB337:
	.loc 1 110 0
	.loc 1 112 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
	ld.w	%d2, [%a15] 8
	ld.w	%d15, [%a15] 12
	sub	%d2, %d15
.LVL3:
	.loc 1 113 0
	jltz	%d2, .L10
.L8:
	.loc 1 115 0
	ld.w	%d15, [%a15] 16
	jge.u	%d15, %d2, .L9
	.loc 1 116 0
	st.w	[%a15] 16, %d2
.L9:
	.loc 1 118 0
	ret
.L10:
	.loc 1 114 0
	ld.w	%d15, [%a15] 4
	add	%d2, %d15
.LVL4:
	j	.L8
.LFE337:
	.size	FIFO_DISPLAY_USED, .-FIFO_DISPLAY_USED
	.align 1
	.global	FIFO_DISPLAY_FREE
	.type	FIFO_DISPLAY_FREE, @function
FIFO_DISPLAY_FREE:
.LFB338:
	.loc 1 121 0
	.loc 1 122 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
.LBB4:
.LBB5:
	.loc 1 112 0
	ld.w	%d3, [%a15] 8
	ld.w	%d15, [%a15] 12
.LBE5:
.LBE4:
	.loc 1 122 0
	ld.w	%d2, [%a15] 4
.LBB7:
.LBB6:
	.loc 1 112 0
	sub	%d15, %d3, %d15
.LVL5:
	.loc 1 114 0
	lt	%d3, %d15, 0
	cadd	%d15, %d3, %d15, %d2
.LVL6:
	.loc 1 115 0
	ld.w	%d3, [%a15] 16
	jge.u	%d3, %d15, .L13
	.loc 1 116 0
	st.w	[%a15] 16, %d15
.L13:
.LBE6:
.LBE7:
	.loc 1 123 0
	sub	%d2, %d15
	ret
.LFE338:
	.size	FIFO_DISPLAY_FREE, .-FIFO_DISPLAY_FREE
	.align 1
	.global	PUT_FIFO_DISPLAY
	.type	PUT_FIFO_DISPLAY, @function
PUT_FIFO_DISPLAY:
.LFB339:
	.loc 1 127 0
.LVL7:
	.loc 1 129 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	ld.w	%d15, [%a15] 8
	.loc 1 130 0
	ld.w	%d2, [%a15] 4
	.loc 1 129 0
	add	%d15, 1
.LVL8:
	.loc 1 131 0
	ne	%d2, %d15, %d2
	.loc 1 132 0
	ld.w	%d3, [%a15] 12
	.loc 1 131 0
	sel	%d15, %d2, %d15, 0
.LVL9:
	.loc 1 133 0
	mov	%d2, 1
	.loc 1 132 0
	jeq	%d3, %d15, .L16
	.loc 1 134 0
	ld.a	%a2, [%a2] lo:fifodisplay
	.loc 1 136 0
	mov	%d2, 0
	.loc 1 134 0
	addsc.a	%a2, %a2, %d15, 2
	st.w	[%a2]0, %d4
	.loc 1 135 0
	st.w	[%a15] 8, %d15
.L16:
	.loc 1 137 0
	ret
.LFE339:
	.size	PUT_FIFO_DISPLAY, .-PUT_FIFO_DISPLAY
	.align 1
	.global	GET_FIFO_DISPLAY
	.type	GET_FIFO_DISPLAY, @function
GET_FIFO_DISPLAY:
.LFB340:
	.loc 1 139 0
.LVL10:
	.loc 1 141 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	ld.w	%d15, [%a15] 12
.LVL11:
	.loc 1 142 0
	ld.w	%d3, [%a15] 8
	.loc 1 143 0
	mov	%d2, 1
	.loc 1 142 0
	jeq	%d3, %d15, .L19
	.loc 1 145 0
	ld.w	%d2, [%a15] 4
	.loc 1 144 0
	add	%d15, 1
.LVL12:
	.loc 1 145 0
	jeq	%d15, %d2, .L22
	sh	%d2, %d15, 2
.LVL13:
.L20:
	.loc 1 147 0
	ld.a	%a2, [%a2] lo:fifodisplay
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d2, [%a2]0
	st.w	[%a4]0, %d2
	.loc 1 148 0
	st.w	[%a15] 12, %d15
	.loc 1 149 0
	mov	%d2, 0
.L19:
	.loc 1 150 0
	ret
.L22:
	mov	%d2, 0
	.loc 1 146 0
	mov	%d15, 0
.LVL14:
	j	.L20
.LFE340:
	.size	GET_FIFO_DISPLAY, .-GET_FIFO_DISPLAY
	.align 1
	.global	GET_FIFO_DISPLAY_NODROP
	.type	GET_FIFO_DISPLAY_NODROP, @function
GET_FIFO_DISPLAY_NODROP:
.LFB341:
	.loc 1 153 0
.LVL15:
	.loc 1 155 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	ld.w	%d15, [%a15] 12
.LVL16:
	.loc 1 156 0
	ld.w	%d3, [%a15] 8
	.loc 1 157 0
	mov	%d2, 1
	.loc 1 156 0
	jeq	%d3, %d15, .L24
.LVL17:
	.loc 1 159 0
	ld.a	%a15, [%a15] 4
	.loc 1 158 0
	add	%d15, 1
.LVL18:
	sh	%d2, %d15, 2
	mov.d	%d3, %a15
	.loc 1 161 0
	ld.a	%a15, [%a2] lo:fifodisplay
	ne	%d15, %d15, %d3
.LVL19:
	cmovn	%d2, %d15, 0
.LVL20:
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 162 0
	mov	%d2, 0
	.loc 1 161 0
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
.L24:
	.loc 1 163 0
	ret
.LFE341:
	.size	GET_FIFO_DISPLAY_NODROP, .-GET_FIFO_DISPLAY_NODROP
	.global	fifodisplay
.section .bss_cpu1,"awc1",@progbits
	.align 2
	.type	fifodisplay, @object
	.size	fifodisplay, 20
fifodisplay:
	.zero	20
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
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/0_AppSw/Tft/fifo.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x51e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tft/fifo.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
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
	.byte	0x2
	.byte	0x5c
	.uaword	0x163
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x16f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.string	"tfifodisplay"
	.byte	0x14
	.byte	0x3
	.byte	0x15
	.uaword	0x2bd
	.uleb128 0x5
	.string	"pFIFO_DISPLAY"
	.byte	0x3
	.byte	0x17
	.uaword	0x2bd
	.byte	0
	.uleb128 0x5
	.string	"FIFO_DISPLAY_SIZE"
	.byte	0x3
	.byte	0x18
	.uaword	0x1dc
	.byte	0x4
	.uleb128 0x5
	.string	"FIFO_DISPLAY_IN"
	.byte	0x3
	.byte	0x19
	.uaword	0x2c3
	.byte	0x8
	.uleb128 0x5
	.string	"FIFO_DISPLAY_OUT"
	.byte	0x3
	.byte	0x1a
	.uaword	0x2c3
	.byte	0xc
	.uleb128 0x5
	.string	"FIFO_MAX_USED"
	.byte	0x3
	.byte	0x1b
	.uaword	0x1dc
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1dc
	.uleb128 0x7
	.uaword	0x1ce
	.uleb128 0x3
	.string	"TFIFODISPLAY"
	.byte	0x3
	.byte	0x1c
	.uaword	0x230
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x1
	.string	"FIFO_DISPLAY_USED"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	0x1ce
	.byte	0x3
	.uaword	0x322
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.uaword	0x1ce
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"fifo_display_used"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	0x1ce
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x358
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x58
	.uaword	0x1ce
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"fifo_max_used"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x1dc
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"fifo_display_init"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3be
	.uleb128 0xe
	.string	"pFIFO"
	.byte	0x1
	.byte	0x64
	.uaword	0x2bd
	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.string	"size"
	.byte	0x1
	.byte	0x64
	.uaword	0x1dc
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xf
	.uaword	0x2f8
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3da
	.uleb128 0x10
	.uaword	0x318
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"FIFO_DISPLAY_FREE"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	0x1ce
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x422
	.uleb128 0x11
	.uaword	0x2f8
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7a
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x10
	.uaword	0x318
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"PUT_FIFO_DISPLAY"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.uaword	0x1ce
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x46a
	.uleb128 0xe
	.string	"value"
	.byte	0x1
	.byte	0x7e
	.uaword	0x1dc
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"index"
	.byte	0x1
	.byte	0x80
	.uaword	0x1ce
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"GET_FIFO_DISPLAY"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.uaword	0x1ce
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4b5
	.uleb128 0xe
	.string	"pvalue"
	.byte	0x1
	.byte	0x8a
	.uaword	0x2bd
	.byte	0x1
	.byte	0x64
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.byte	0x8c
	.uaword	0x1ce
	.uaword	.LLST0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"GET_FIFO_DISPLAY_NODROP"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	0x1ce
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x507
	.uleb128 0xe
	.string	"pvalue"
	.byte	0x1
	.byte	0x98
	.uaword	0x2bd
	.byte	0x1
	.byte	0x64
	.uleb128 0x13
	.string	"index"
	.byte	0x1
	.byte	0x9a
	.uaword	0x1ce
	.uaword	.LLST1
	.byte	0
	.uleb128 0x14
	.string	"fifodisplay"
	.byte	0x1
	.byte	0x41
	.uaword	0x2c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	fifodisplay
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
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x9
	.byte	0x3
	.uaword	fifodisplay+12
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x9
	.byte	0x3
	.uaword	fifodisplay+12
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
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
	.uaword	.LBB4-.Ltext0
	.uaword	.LBE4-.Ltext0
	.uaword	.LBB7-.Ltext0
	.uaword	.LBE7-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
