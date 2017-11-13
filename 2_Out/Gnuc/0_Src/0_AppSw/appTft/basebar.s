	.file	"basebar.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	bar_input
	.type	bar_input, @function
bar_input:
.LFB339:
	.file 1 "0_Src/0_AppSw/appTft/basebar.c"
	.loc 1 115 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE5:
.LBE4:
	.loc 1 118 0
	mov	%d2, 0
	ret
.LFE339:
	.size	bar_input, .-bar_input
	.align 1
	.global	bar_select_menu
	.type	bar_select_menu, @function
bar_select_menu:
.LFB334:
	.loc 1 52 0
.LVL1:
	.loc 1 53 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL2:
	.loc 1 52 0
	mov.aa	%a15, %a4
	.loc 1 53 0
	call	conio_ascii_textattr
.LVL3:
	.loc 1 54 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL4:
	.loc 1 55 0
	lea	%a4, [%a15] 20
	.loc 1 56 0
	movh.a	%a15, hi:touch_driver
.LVL5:
	.loc 1 55 0
	mov	%d4, 0
	.loc 1 56 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 55 0
	call	conio_ascii_cputs
.LVL6:
	.loc 1 56 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L2
	.loc 1 58 0
	mov	%d2, 1
	.loc 1 59 0
	andn	%d15, %d15, ~(-9)
	.loc 1 58 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 184, %d2
	.loc 1 59 0
	st.w	[%a15] 64, %d15
.L2:
	ret
.LFE334:
	.size	bar_select_menu, .-bar_select_menu
	.align 1
	.global	bar_select_stdout0
	.type	bar_select_stdout0, @function
bar_select_stdout0:
.LFB335:
	.loc 1 64 0
.LVL7:
	.loc 1 65 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL8:
	.loc 1 64 0
	mov.aa	%a15, %a4
	.loc 1 65 0
	call	conio_ascii_textattr
.LVL9:
	.loc 1 66 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL10:
	.loc 1 67 0
	lea	%a4, [%a15] 20
	.loc 1 68 0
	movh.a	%a15, hi:touch_driver
.LVL11:
	.loc 1 67 0
	mov	%d4, 0
	.loc 1 68 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 67 0
	call	conio_ascii_cputs
.LVL12:
	.loc 1 68 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L8
	.loc 1 70 0
	mov	%d2, 2
	.loc 1 71 0
	andn	%d15, %d15, ~(-9)
	.loc 1 70 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 184, %d2
	.loc 1 71 0
	st.w	[%a15] 64, %d15
.L8:
	ret
.LFE335:
	.size	bar_select_stdout0, .-bar_select_stdout0
	.align 1
	.global	bar_select_stdout1
	.type	bar_select_stdout1, @function
bar_select_stdout1:
.LFB336:
	.loc 1 76 0
.LVL13:
	.loc 1 77 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL14:
	.loc 1 76 0
	mov.aa	%a15, %a4
	.loc 1 77 0
	call	conio_ascii_textattr
.LVL15:
	.loc 1 78 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL16:
	.loc 1 79 0
	lea	%a4, [%a15] 20
	.loc 1 80 0
	movh.a	%a15, hi:touch_driver
.LVL17:
	.loc 1 79 0
	mov	%d4, 0
	.loc 1 80 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 79 0
	call	conio_ascii_cputs
.LVL18:
	.loc 1 80 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L13
	.loc 1 82 0
	mov	%d2, 3
	.loc 1 83 0
	andn	%d15, %d15, ~(-9)
	.loc 1 82 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 184, %d2
	.loc 1 83 0
	st.w	[%a15] 64, %d15
.L13:
	ret
.LFE336:
	.size	bar_select_stdout1, .-bar_select_stdout1
	.align 1
	.global	bar_select_graph0
	.type	bar_select_graph0, @function
bar_select_graph0:
.LFB337:
	.loc 1 88 0
.LVL19:
	.loc 1 89 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL20:
	.loc 1 88 0
	mov.aa	%a15, %a4
	.loc 1 89 0
	call	conio_ascii_textattr
.LVL21:
	.loc 1 90 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL22:
	.loc 1 91 0
	lea	%a4, [%a15] 20
	.loc 1 92 0
	movh.a	%a15, hi:touch_driver
.LVL23:
	.loc 1 91 0
	mov	%d4, 0
	.loc 1 92 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 91 0
	call	conio_ascii_cputs
.LVL24:
	.loc 1 92 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L18
	.loc 1 94 0
	mov	%d2, 4
	.loc 1 95 0
	andn	%d15, %d15, ~(-9)
	.loc 1 94 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 184, %d2
	.loc 1 95 0
	st.w	[%a15] 64, %d15
.L18:
	ret
.LFE337:
	.size	bar_select_graph0, .-bar_select_graph0
	.align 1
	.global	bar_select_off
	.type	bar_select_off, @function
bar_select_off:
.LFB338:
	.loc 1 100 0
.LVL25:
	.loc 1 101 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL26:
	.loc 1 100 0
	mov.aa	%a15, %a4
	.loc 1 101 0
	call	conio_ascii_textattr
.LVL27:
	.loc 1 102 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL28:
	.loc 1 103 0
	mov	%d4, 0
	lea	%a4, [%a15] 20
	call	conio_ascii_cputs
.LVL29:
	.loc 1 104 0
	movh.a	%a2, hi:touch_driver
	lea	%a2, [%a2] lo:touch_driver
	ld.w	%d15, [%a2] 64
	jz.t	%d15, 3, .L23
	.loc 1 106 0
	mov	%d2, 2
	movh.a	%a15, hi:conio_driver
.LVL30:
	lea	%a15, [%a15] lo:conio_driver
	st.w	[%a15] 188, %d2
	.loc 1 108 0
	ld.w	%d2, [%a15] 184
	jeq	%d2, 4, .L29
	.loc 1 110 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a2] 64, %d15
.L23:
	ret
.L29:
	.loc 1 109 0
	mov	%d2, 1
	.loc 1 110 0
	andn	%d15, %d15, ~(-9)
	.loc 1 109 0
	st.w	[%a15] 184, %d2
	.loc 1 110 0
	st.w	[%a2] 64, %d15
	j	.L23
.LFE338:
	.size	bar_select_off, .-bar_select_off
	.global	stdlist
.section .rodata,"a",@progbits
	.align 2
	.type	stdlist, @object
	.size	stdlist, 384
stdlist:
	.byte	112
	.byte	12
	.byte	0
	.byte	6
	.byte	19
	.zero	3
	.word	bar_select_menu
	.word	0
	.word	bar_input
	.string	" iMENU "
	.zero	32
	.zero	4
	.byte	112
	.byte	12
	.byte	8
	.byte	16
	.byte	19
	.zero	3
	.word	bar_select_stdout0
	.word	0
	.word	bar_input
	.string	" STDOUT0 "
	.zero	30
	.zero	4
	.byte	112
	.byte	12
	.byte	18
	.byte	26
	.byte	19
	.zero	3
	.word	bar_select_stdout1
	.word	0
	.word	bar_input
	.string	" STDOUT1 "
	.zero	30
	.zero	4
	.byte	112
	.byte	12
	.byte	28
	.byte	35
	.byte	19
	.zero	3
	.word	bar_select_graph0
	.word	0
	.word	bar_input
	.string	" GRAPH0 "
	.zero	31
	.zero	4
	.byte	112
	.byte	12
	.byte	37
	.byte	40
	.byte	19
	.zero	3
	.word	bar_select_off
	.word	0
	.word	bar_input
	.string	"OFF"
	.zero	36
	.zero	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.word	0
	.word	0
	.word	0
	.string	" "
	.zero	38
	.zero	4
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
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "./0_Src/0_AppSw/Tft/conio_tft.h"
	.file 6 "./0_Src/0_AppSw/Tft/touch.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xcc9
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/appTft/basebar.c"
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
	.uleb128 0x3
	.string	"sint8"
	.byte	0x3
	.byte	0x58
	.uaword	0x19e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x59
	.uaword	0x1ba
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1d9
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
	.byte	0x3
	.byte	0x5c
	.uaword	0x169
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0x175
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x5e
	.uaword	0x227
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
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.uaword	0x2d2
	.uleb128 0x5
	.string	"DIALOGOFF"
	.sleb128 0
	.uleb128 0x5
	.string	"KEYBOARDON"
	.sleb128 1
	.uleb128 0x5
	.string	"SWITCHOFFON"
	.sleb128 2
	.uleb128 0x5
	.string	"SHOWALARMON"
	.sleb128 3
	.uleb128 0x5
	.string	"SETTIMEON"
	.sleb128 4
	.uleb128 0x5
	.string	"SETALARMTIME"
	.sleb128 5
	.uleb128 0x5
	.string	"SLIDESHOW"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"TDIALOGMODE"
	.byte	0x4
	.byte	0x12
	.uaword	0x26d
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x23
	.uaword	0x33e
	.uleb128 0x5
	.string	"DISPLAYBAR"
	.sleb128 0
	.uleb128 0x5
	.string	"DISPLAYMENU"
	.sleb128 1
	.uleb128 0x5
	.string	"DISPLAYSTDOUT0"
	.sleb128 2
	.uleb128 0x5
	.string	"DISPLAYSTDOUT1"
	.sleb128 3
	.uleb128 0x5
	.string	"DISPLAYGRAPHICS0"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"TDISPLAYMODE"
	.byte	0x4
	.byte	0x29
	.uaword	0x2e5
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2e
	.uaword	0x3c7
	.uleb128 0x5
	.string	"RAWMODE"
	.sleb128 0
	.uleb128 0x5
	.string	"TEXTMODE"
	.sleb128 1
	.uleb128 0x5
	.string	"GRAPHICMODE_2COLOR"
	.sleb128 2
	.uleb128 0x5
	.string	"GRAPHICMODE_4COLOR"
	.sleb128 3
	.uleb128 0x5
	.string	"GRAPHICMODE_16COLOR"
	.sleb128 4
	.uleb128 0x5
	.string	"GRAPHICMODE_256COLOR"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TMODE"
	.byte	0x4
	.byte	0x35
	.uaword	0x352
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x38
	.uaword	0x45a
	.uleb128 0x7
	.string	"pdisplay"
	.byte	0x4
	.byte	0x3a
	.uaword	0x45a
	.byte	0
	.uleb128 0x7
	.string	"pdisplaycolor"
	.byte	0x4
	.byte	0x3b
	.uaword	0x45a
	.byte	0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x4
	.byte	0x3c
	.uaword	0x3c7
	.byte	0x8
	.uleb128 0x7
	.string	"color"
	.byte	0x4
	.byte	0x3d
	.uaword	0x1ad
	.byte	0xc
	.uleb128 0x7
	.string	"maxx"
	.byte	0x4
	.byte	0x3e
	.uaword	0x1fc
	.byte	0x10
	.uleb128 0x7
	.string	"maxy"
	.byte	0x4
	.byte	0x3f
	.uaword	0x1fc
	.byte	0x14
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x40
	.uaword	0x1fc
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x41
	.uaword	0x1fc
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1ad
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x4
	.byte	0x42
	.uaword	0x3d4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x1ad
	.uaword	0x491
	.uleb128 0xa
	.uaword	0x475
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x5
	.byte	0x8b
	.uaword	0x53f
	.uleb128 0x7
	.string	"color_display"
	.byte	0x5
	.byte	0x8d
	.uaword	0x1ad
	.byte	0
	.uleb128 0x7
	.string	"color_select"
	.byte	0x5
	.byte	0x8f
	.uaword	0x1ad
	.byte	0x1
	.uleb128 0x7
	.string	"xmin"
	.byte	0x5
	.byte	0x90
	.uaword	0x191
	.byte	0x2
	.uleb128 0x7
	.string	"xmax"
	.byte	0x5
	.byte	0x91
	.uaword	0x191
	.byte	0x3
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0x92
	.uaword	0x191
	.byte	0x4
	.uleb128 0x7
	.string	"select"
	.byte	0x5
	.byte	0x93
	.uaword	0x556
	.byte	0x8
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0x94
	.uaword	0x556
	.byte	0xc
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0x95
	.uaword	0x571
	.byte	0x10
	.uleb128 0x7
	.string	"text"
	.byte	0x5
	.byte	0x96
	.uaword	0x481
	.byte	0x14
	.uleb128 0x7
	.string	"symbol"
	.byte	0x5
	.byte	0x97
	.uaword	0x1ad
	.byte	0x3c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x550
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x550
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x491
	.uleb128 0x8
	.byte	0x4
	.uaword	0x53f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x1fc
	.uaword	0x571
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x550
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x55c
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x5
	.byte	0x98
	.uaword	0x491
	.uleb128 0x6
	.string	"CONIO_DRIVER"
	.byte	0xf4
	.byte	0x5
	.byte	0x9d
	.uaword	0x6ae
	.uleb128 0x7
	.string	"pmenulist"
	.byte	0x5
	.byte	0x9f
	.uaword	0x6ae
	.byte	0
	.uleb128 0x7
	.string	"pstdlist"
	.byte	0x5
	.byte	0xa0
	.uaword	0x6ae
	.byte	0x4
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0xa1
	.uaword	0x6b4
	.byte	0x8
	.uleb128 0x7
	.string	"pdasmirror"
	.byte	0x5
	.byte	0xa2
	.uaword	0x6c4
	.byte	0xa8
	.uleb128 0x7
	.string	"dasstatus"
	.byte	0x5
	.byte	0xa3
	.uaword	0x20a
	.byte	0xac
	.uleb128 0x7
	.string	"dasdisplaymode"
	.byte	0x5
	.byte	0xa4
	.uaword	0x33e
	.byte	0xb0
	.uleb128 0x7
	.string	"cursorstatus"
	.byte	0x5
	.byte	0xa5
	.uaword	0x1fc
	.byte	0xb4
	.uleb128 0x7
	.string	"displaymode"
	.byte	0x5
	.byte	0xa6
	.uaword	0x33e
	.byte	0xb8
	.uleb128 0x7
	.string	"dialogmode"
	.byte	0x5
	.byte	0xa7
	.uaword	0x2d2
	.byte	0xbc
	.uleb128 0x7
	.string	"scanfdescr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x6ca
	.byte	0xc0
	.uleb128 0x7
	.string	"scanftext"
	.byte	0x5
	.byte	0xa9
	.uaword	0x6ca
	.byte	0xd4
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0xaa
	.uaword	0x6ef
	.byte	0xe8
	.uleb128 0x7
	.string	"inputid"
	.byte	0x5
	.byte	0xab
	.uaword	0x1fc
	.byte	0xec
	.uleb128 0x7
	.string	"scanfx"
	.byte	0x5
	.byte	0xac
	.uaword	0x191
	.byte	0xf0
	.uleb128 0x7
	.string	"blinky"
	.byte	0x5
	.byte	0xad
	.uaword	0x1ad
	.byte	0xf1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x577
	.uleb128 0x9
	.uaword	0x460
	.uaword	0x6c4
	.uleb128 0xa
	.uaword	0x475
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x20a
	.uleb128 0x9
	.uaword	0x1ad
	.uaword	0x6da
	.uleb128 0xa
	.uaword	0x475
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x1fc
	.uaword	0x6ef
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x6ae
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6da
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x5
	.byte	0xae
	.uaword	0x58c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.uaword	0x776
	.uleb128 0x5
	.string	"TOUCH_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"TOUCH_DOWN"
	.sleb128 1
	.uleb128 0x5
	.string	"TOUCH_MOVE"
	.sleb128 2
	.uleb128 0x5
	.string	"TOUCH_UP"
	.sleb128 3
	.uleb128 0x5
	.string	"TOUCH_DOWN3S"
	.sleb128 4
	.uleb128 0x5
	.string	"TOUCH_DOWN10S"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_STATUS"
	.byte	0x6
	.byte	0x15
	.uaword	0x71a
	.uleb128 0x6
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x6
	.byte	0x42
	.uaword	0x8ea
	.uleb128 0x7
	.string	"time"
	.byte	0x6
	.byte	0x44
	.uaword	0x20a
	.byte	0
	.uleb128 0x7
	.string	"prev_time"
	.byte	0x6
	.byte	0x45
	.uaword	0x20a
	.byte	0x4
	.uleb128 0x7
	.string	"prev_time_down"
	.byte	0x6
	.byte	0x46
	.uaword	0x20a
	.byte	0x8
	.uleb128 0x7
	.string	"bounce_limit"
	.byte	0x6
	.byte	0x47
	.uaword	0x20a
	.byte	0xc
	.uleb128 0x7
	.string	"bounce_cnt"
	.byte	0x6
	.byte	0x48
	.uaword	0x20a
	.byte	0x10
	.uleb128 0x7
	.string	"x"
	.byte	0x6
	.byte	0x49
	.uaword	0x1cb
	.byte	0x14
	.uleb128 0x7
	.string	"prev_x"
	.byte	0x6
	.byte	0x4a
	.uaword	0x1cb
	.byte	0x16
	.uleb128 0x7
	.string	"prev_x_down"
	.byte	0x6
	.byte	0x4b
	.uaword	0x1cb
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1cb
	.byte	0x1a
	.uleb128 0x7
	.string	"prev_y"
	.byte	0x6
	.byte	0x4d
	.uaword	0x1cb
	.byte	0x1c
	.uleb128 0x7
	.string	"prev_y_down"
	.byte	0x6
	.byte	0x4e
	.uaword	0x1cb
	.byte	0x1e
	.uleb128 0x7
	.string	"cnt"
	.byte	0x6
	.byte	0x4f
	.uaword	0x1cb
	.byte	0x20
	.uleb128 0x7
	.string	"xdisp"
	.byte	0x6
	.byte	0x50
	.uaword	0x1cb
	.byte	0x22
	.uleb128 0x7
	.string	"ydisp"
	.byte	0x6
	.byte	0x51
	.uaword	0x1cb
	.byte	0x24
	.uleb128 0x7
	.string	"xmin"
	.byte	0x6
	.byte	0x52
	.uaword	0x218
	.byte	0x28
	.uleb128 0x7
	.string	"xmax"
	.byte	0x6
	.byte	0x53
	.uaword	0x218
	.byte	0x2c
	.uleb128 0x7
	.string	"ymin"
	.byte	0x6
	.byte	0x54
	.uaword	0x218
	.byte	0x30
	.uleb128 0x7
	.string	"ymax"
	.byte	0x6
	.byte	0x55
	.uaword	0x218
	.byte	0x34
	.uleb128 0x7
	.string	"status"
	.byte	0x6
	.byte	0x56
	.uaword	0x776
	.byte	0x38
	.uleb128 0x7
	.string	"prev_status"
	.byte	0x6
	.byte	0x57
	.uaword	0x776
	.byte	0x3c
	.uleb128 0x7
	.string	"touchmode"
	.byte	0x6
	.byte	0x58
	.uaword	0x20a
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_DRIVER"
	.byte	0x6
	.byte	0x59
	.uaword	0x78b
	.uleb128 0xe
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.byte	0x1
	.string	"bar_input"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x1fc
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x959
	.uleb128 0x10
	.string	"ind"
	.byte	0x1
	.byte	0x72
	.uaword	0x1fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x72
	.uaword	0x6ae
	.byte	0x1
	.byte	0x64
	.uleb128 0x12
	.uaword	0x8ff
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x74
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"bar_select_menu"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9df
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x33
	.uaword	0x1fc
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x33
	.uaword	0x6ae
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	.LVL3
	.uaword	0xc52
	.uaword	0x9ae
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL4
	.uaword	0xc7c
	.uaword	0x9c6
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.uaword	.LVL6
	.uaword	0xca9
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"bar_select_stdout0"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa68
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x3f
	.uaword	0x1fc
	.uaword	.LLST2
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3f
	.uaword	0x6ae
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	.LVL9
	.uaword	0xc52
	.uaword	0xa37
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL10
	.uaword	0xc7c
	.uaword	0xa4f
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.uaword	.LVL12
	.uaword	0xca9
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"bar_select_stdout1"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaf1
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x4b
	.uaword	0x1fc
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4b
	.uaword	0x6ae
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	.LVL15
	.uaword	0xc52
	.uaword	0xac0
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL16
	.uaword	0xc7c
	.uaword	0xad8
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.uaword	.LVL18
	.uaword	0xca9
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"bar_select_graph0"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb79
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x57
	.uaword	0x1fc
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x57
	.uaword	0x6ae
	.uaword	.LLST7
	.uleb128 0x16
	.uaword	.LVL21
	.uaword	0xc52
	.uaword	0xb48
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL22
	.uaword	0xc7c
	.uaword	0xb60
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.uaword	.LVL24
	.uaword	0xca9
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"bar_select_off"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbfb
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x63
	.uaword	0x1fc
	.uaword	.LLST8
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x63
	.uaword	0x6ae
	.uaword	.LLST9
	.uleb128 0x16
	.uaword	.LVL27
	.uaword	0xc52
	.uaword	0xbcd
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.uaword	.LVL28
	.uaword	0xc7c
	.uaword	0xbe5
	.uleb128 0x17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.uaword	.LVL29
	.uaword	0xca9
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 20
	.uleb128 0x17
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"conio_driver"
	.byte	0x5
	.byte	0xc9
	.uaword	0x6f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"touch_driver"
	.byte	0x6
	.byte	0x5b
	.uaword	0x8ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x577
	.uaword	0xc37
	.uleb128 0xa
	.uaword	0x475
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.string	"stdlist"
	.byte	0x1
	.byte	0x27
	.uaword	0xc4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	stdlist
	.uleb128 0x1b
	.uaword	0xc27
	.uleb128 0x1c
	.byte	0x1
	.string	"conio_ascii_textattr"
	.byte	0x5
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0xc7c
	.uleb128 0xc
	.uaword	0x33e
	.uleb128 0xc
	.uaword	0x1fc
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"conio_ascii_gotoxy"
	.byte	0x5
	.byte	0xd8
	.byte	0x1
	.byte	0x1
	.uaword	0xca9
	.uleb128 0xc
	.uaword	0x33e
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x1fc
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"conio_ascii_cputs"
	.byte	0x5
	.byte	0xd4
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x33e
	.uleb128 0xc
	.uaword	0x45a
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-.Ltext0
	.uaword	.LFE334-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	.LVL6-1-.Ltext0
	.uaword	.LFE334-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE335-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	.LVL12-1-.Ltext0
	.uaword	.LFE335-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL15-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	.LVL18-1-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL21-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	.LVL24-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL27-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27-1-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL30-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
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
	.string	"pdisplayentry"
	.extern	conio_driver,STT_OBJECT,244
	.extern	conio_ascii_cputs,STT_FUNC,0
	.extern	touch_driver,STT_OBJECT,68
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_ascii_textattr,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
