	.file	"switchoff.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	switchoff_input
	.type	switchoff_input, @function
switchoff_input:
.LFB335:
	.file 1 "0_Src/0_AppSw/appTft/switchoff.c"
	.loc 1 73 0
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
	.loc 1 76 0
	mov	%d2, 0
	ret
.LFE335:
	.size	switchoff_input, .-switchoff_input
	.align 1
	.global	switchoff_display
	.type	switchoff_display, @function
switchoff_display:
.LFB334:
	.loc 1 63 0
.LVL1:
	.loc 1 65 0
	movh.a	%a15, hi:switchofflist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:switchofflist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL2:
	ld.b	%d8, [%a15] 3
	jlt	%d8, %d15, .L2
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15]0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL3:
.L4:
	.loc 1 67 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL4:
	.loc 1 68 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 65 0 discriminator 3
	add	%d15, 1
.LVL5:
	.loc 1 68 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL6:
	.loc 1 65 0 discriminator 3
	jge	%d8, %d15, .L4
.L2:
	ret
.LFE334:
	.size	switchoff_display, .-switchoff_display
	.align 1
	.global	switchoff_select_ok
	.type	switchoff_select_ok, @function
switchoff_select_ok:
.LFB336:
	.loc 1 79 0
.LVL7:
	.loc 1 81 0
	movh.a	%a15, hi:switchofflist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:switchofflist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL8:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L13
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL9:
.L12:
	.loc 1 83 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL10:
	.loc 1 84 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 81 0 discriminator 3
	add	%d15, 1
.LVL11:
	.loc 1 84 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL12:
	.loc 1 81 0 discriminator 3
	jge.u	%d8, %d15, .L12
.L13:
	.loc 1 86 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL13:
	jnz.t	%d15, 3, .L17
	ret
.L17:
	.loc 1 88 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 89 0
	mov	%d15, 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	st.w	[%a15] 188, %d15
	.loc 1 91 0
	call	IfxTLF35584_goto_standby_state
.LVL14:
	.loc 1 93 0
	mov	%d15, 3
	.loc 1 94 0
	ld.w	%d4, [%a15] 184
	.loc 1 93 0
	st.w	[%a15] 188, %d15
	.loc 1 94 0
	j	display_ascii_clrscr
.LVL15:
.LFE336:
	.size	switchoff_select_ok, .-switchoff_select_ok
.section .rodata,"a",@progbits
.LC0:
	.string	"Application Kit TC277TF SW V1.1..."
.section .text,"ax",@progbits
	.align 1
	.global	switchoff_select_cancel
	.type	switchoff_select_cancel, @function
switchoff_select_cancel:
.LFB337:
	.loc 1 99 0
.LVL16:
	.loc 1 101 0
	movh.a	%a15, hi:switchofflist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:switchofflist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL17:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L23
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL18:
.L22:
	.loc 1 103 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL19:
	.loc 1 104 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 101 0 discriminator 3
	add	%d15, 1
.LVL20:
	.loc 1 104 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL21:
	.loc 1 101 0 discriminator 3
	jge.u	%d8, %d15, .L22
.L23:
	.loc 1 106 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL22:
	jnz.t	%d15, 3, .L27
.L18:
	ret
.L27:
	.loc 1 108 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 109 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	mov	%d15, 0
	.loc 1 110 0
	ld.w	%d4, [%a15] 184
	.loc 1 109 0
	st.w	[%a15] 188, %d15
	.loc 1 110 0
	call	conio_ascii_clrscr
.LVL23:
	.loc 1 111 0
	ld.w	%d15, [%a15] 184
	jne	%d15, 2, .L18
.LVL24:
.LBB8:
.LBB9:
	.loc 1 112 0
	movh.a	%a4, hi:.LC0
	mov	%d4, 2
	mov	%d5, 1
	mov	%d6, 0
	lea	%a4, [%a4] lo:.LC0
	j	conio_ascii_printfxy
.LVL25:
.LBE9:
.LBE8:
.LFE337:
	.size	switchoff_select_cancel, .-switchoff_select_cancel
	.align 1
	.global	switchoff
	.type	switchoff, @function
switchoff:
.LFB338:
	.loc 1 118 0
.LVL26:
	.loc 1 118 0
	mov	%d12, %d4
	mov	%d11, %d5
	.loc 1 120 0
	mov	%e4, 1
.LVL27:
	call	conio_ascii_textcolor
.LVL28:
	movh.a	%a15, hi:conio_driver
	.loc 1 121 0
	mov	%d4, 1
	mov	%d5, 7
	lea	%a15, [%a15] lo:conio_driver
	movh	%d9, hi:switchoff_outline
	call	conio_ascii_textbackground
.LVL29:
	.loc 1 122 0
	mov	%d10, 0
	addi	%d9, %d9, lo:switchoff_outline
	.loc 1 127 0
	mov.aa	%a12, %a15
.LVL30:
.L30:
	.loc 1 124 0
	ld.w	%d4, [%a15] 184
	mul	%d8, %d10, 30
	mov	%d5, 5
	addi	%d6, %d10, 6
	call	conio_ascii_gotoxy
.LVL31:
	.loc 1 125 0
	mov	%d15, 0
.LVL32:
.L29:
	.loc 1 127 0 discriminator 3
	mov.a	%a3, %d9
	add	%d2, %d15, %d8
	addsc.a	%a2, %a3, %d2, 0
	ld.w	%d4, [%a15] 184
	ld.bu	%d5, [%a2]0
	.loc 1 125 0 discriminator 3
	add	%d15, 1
.LVL33:
	.loc 1 127 0 discriminator 3
	call	conio_ascii_putch
.LVL34:
	.loc 1 125 0 discriminator 3
	ne	%d2, %d15, 30
	jnz	%d2, .L29
	.loc 1 122 0 discriminator 2
	add	%d10, 1
.LVL35:
	jne	%d10, 6, .L30
	.loc 1 130 0
	ld.w	%d4, [%a12] 184
	.loc 1 134 0
	extr.u	%d12, %d12, 0, 16
	.loc 1 130 0
	mov	%d5, 5
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL36:
	.loc 1 134 0
	addi	%d15, %d12, -9
	lt.u	%d2, %d15, 8
	.loc 1 136 0
	movh.a	%a4, hi:switchofflist
	.loc 1 134 0
	and.eq	%d2, %d11, 9
	eq	%d8, %d11, 9
	.loc 1 136 0
	mov	%d4, 0
	lea	%a4, [%a4] lo:switchofflist
	.loc 1 134 0
	jnz	%d2, .L31
	.loc 1 140 0
	call	switchoff_display
.LVL37:
.L32:
	.loc 1 134 0
	addi	%d15, %d12, -23
	lt.u	%d15, %d15, 8
	.loc 1 136 0
	movh.a	%a4, hi:switchofflist+64
	.loc 1 134 0
	and	%d15, %d8
	.loc 1 136 0
	mov	%d4, 1
	lea	%a4, [%a4] lo:switchofflist+64
	.loc 1 134 0
	jnz	%d15, .L33
	.loc 1 140 0
	j	switchoff_display
.LVL38:
.L31:
	.loc 1 136 0
	call	switchoff_select_ok
.LVL39:
	j	.L32
.LVL40:
.L33:
	j	switchoff_select_cancel
.LVL41:
.LFE338:
	.size	switchoff, .-switchoff
	.global	switchofflist
.section .rodata,"a",@progbits
	.align 2
	.type	switchofflist, @object
	.size	switchofflist, 128
switchofflist:
	.byte	112
	.byte	12
	.byte	9
	.byte	16
	.byte	9
	.zero	3
	.word	switchoff_select_ok
	.word	switchoff_display
	.word	switchoff_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	23
	.byte	30
	.byte	9
	.zero	3
	.word	switchoff_select_cancel
	.word	switchoff_display
	.word	switchoff_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.global	switchoff_outline
	.type	switchoff_outline, @object
	.size	switchoff_outline, 180
switchoff_outline:
	.byte	-38
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-65
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	83
	.byte	87
	.byte	73
	.byte	84
	.byte	67
	.byte	72
	.byte	79
	.byte	70
	.byte	70
	.byte	32
	.byte	84
	.byte	72
	.byte	69
	.byte	32
	.byte	66
	.byte	79
	.byte	65
	.byte	82
	.byte	68
	.byte	63
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	0
	.byte	-38
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-65
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-38
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-65
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	79
	.byte	75
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	67
	.byte	65
	.byte	78
	.byte	67
	.byte	69
	.byte	76
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	0
	.byte	-64
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-64
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-39
	.byte	0
	.byte	0
	.byte	-77
	.byte	-64
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-39
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
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "./0_Src/0_AppSw/Tft/conio_tft.h"
	.file 6 "./0_Src/0_AppSw/Tft/touch.h"
	.file 7 "./0_Src/0_AppSw/Power/TLF35584.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xeac
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/appTft/switchoff.c"
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
	.uaword	0x1a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x59
	.uaword	0x1bc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1db
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
	.uaword	0x16b
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0x177
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x5e
	.uaword	0x229
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
	.uaword	0x2d4
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
	.uaword	0x26f
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x23
	.uaword	0x340
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
	.uaword	0x2e7
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2e
	.uaword	0x3c9
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
	.uaword	0x354
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x38
	.uaword	0x45c
	.uleb128 0x7
	.string	"pdisplay"
	.byte	0x4
	.byte	0x3a
	.uaword	0x45c
	.byte	0
	.uleb128 0x7
	.string	"pdisplaycolor"
	.byte	0x4
	.byte	0x3b
	.uaword	0x45c
	.byte	0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x4
	.byte	0x3c
	.uaword	0x3c9
	.byte	0x8
	.uleb128 0x7
	.string	"color"
	.byte	0x4
	.byte	0x3d
	.uaword	0x1af
	.byte	0xc
	.uleb128 0x7
	.string	"maxx"
	.byte	0x4
	.byte	0x3e
	.uaword	0x1fe
	.byte	0x10
	.uleb128 0x7
	.string	"maxy"
	.byte	0x4
	.byte	0x3f
	.uaword	0x1fe
	.byte	0x14
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x40
	.uaword	0x1fe
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x41
	.uaword	0x1fe
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1af
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x4
	.byte	0x42
	.uaword	0x3d6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x1af
	.uaword	0x493
	.uleb128 0xa
	.uaword	0x477
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x5
	.byte	0x8b
	.uaword	0x541
	.uleb128 0x7
	.string	"color_display"
	.byte	0x5
	.byte	0x8d
	.uaword	0x1af
	.byte	0
	.uleb128 0x7
	.string	"color_select"
	.byte	0x5
	.byte	0x8f
	.uaword	0x1af
	.byte	0x1
	.uleb128 0x7
	.string	"xmin"
	.byte	0x5
	.byte	0x90
	.uaword	0x193
	.byte	0x2
	.uleb128 0x7
	.string	"xmax"
	.byte	0x5
	.byte	0x91
	.uaword	0x193
	.byte	0x3
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0x92
	.uaword	0x193
	.byte	0x4
	.uleb128 0x7
	.string	"select"
	.byte	0x5
	.byte	0x93
	.uaword	0x558
	.byte	0x8
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0x94
	.uaword	0x558
	.byte	0xc
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0x95
	.uaword	0x573
	.byte	0x10
	.uleb128 0x7
	.string	"text"
	.byte	0x5
	.byte	0x96
	.uaword	0x483
	.byte	0x14
	.uleb128 0x7
	.string	"symbol"
	.byte	0x5
	.byte	0x97
	.uaword	0x1af
	.byte	0x3c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x552
	.uleb128 0xc
	.uaword	0x1fe
	.uleb128 0xc
	.uaword	0x552
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x493
	.uleb128 0x8
	.byte	0x4
	.uaword	0x541
	.uleb128 0xd
	.byte	0x1
	.uaword	0x1fe
	.uaword	0x573
	.uleb128 0xc
	.uaword	0x1fe
	.uleb128 0xc
	.uaword	0x552
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x55e
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x5
	.byte	0x98
	.uaword	0x493
	.uleb128 0x6
	.string	"CONIO_DRIVER"
	.byte	0xf4
	.byte	0x5
	.byte	0x9d
	.uaword	0x6b0
	.uleb128 0x7
	.string	"pmenulist"
	.byte	0x5
	.byte	0x9f
	.uaword	0x6b0
	.byte	0
	.uleb128 0x7
	.string	"pstdlist"
	.byte	0x5
	.byte	0xa0
	.uaword	0x6b0
	.byte	0x4
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0xa1
	.uaword	0x6b6
	.byte	0x8
	.uleb128 0x7
	.string	"pdasmirror"
	.byte	0x5
	.byte	0xa2
	.uaword	0x6c6
	.byte	0xa8
	.uleb128 0x7
	.string	"dasstatus"
	.byte	0x5
	.byte	0xa3
	.uaword	0x20c
	.byte	0xac
	.uleb128 0x7
	.string	"dasdisplaymode"
	.byte	0x5
	.byte	0xa4
	.uaword	0x340
	.byte	0xb0
	.uleb128 0x7
	.string	"cursorstatus"
	.byte	0x5
	.byte	0xa5
	.uaword	0x1fe
	.byte	0xb4
	.uleb128 0x7
	.string	"displaymode"
	.byte	0x5
	.byte	0xa6
	.uaword	0x340
	.byte	0xb8
	.uleb128 0x7
	.string	"dialogmode"
	.byte	0x5
	.byte	0xa7
	.uaword	0x2d4
	.byte	0xbc
	.uleb128 0x7
	.string	"scanfdescr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x6cc
	.byte	0xc0
	.uleb128 0x7
	.string	"scanftext"
	.byte	0x5
	.byte	0xa9
	.uaword	0x6cc
	.byte	0xd4
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0xaa
	.uaword	0x6f1
	.byte	0xe8
	.uleb128 0x7
	.string	"inputid"
	.byte	0x5
	.byte	0xab
	.uaword	0x1fe
	.byte	0xec
	.uleb128 0x7
	.string	"scanfx"
	.byte	0x5
	.byte	0xac
	.uaword	0x193
	.byte	0xf0
	.uleb128 0x7
	.string	"blinky"
	.byte	0x5
	.byte	0xad
	.uaword	0x1af
	.byte	0xf1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x579
	.uleb128 0x9
	.uaword	0x462
	.uaword	0x6c6
	.uleb128 0xa
	.uaword	0x477
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x20c
	.uleb128 0x9
	.uaword	0x1af
	.uaword	0x6dc
	.uleb128 0xa
	.uaword	0x477
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x1fe
	.uaword	0x6f1
	.uleb128 0xc
	.uaword	0x1fe
	.uleb128 0xc
	.uaword	0x6b0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6dc
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x5
	.byte	0xae
	.uaword	0x58e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.uaword	0x778
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
	.uaword	0x71c
	.uleb128 0x6
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x6
	.byte	0x42
	.uaword	0x8ec
	.uleb128 0x7
	.string	"time"
	.byte	0x6
	.byte	0x44
	.uaword	0x20c
	.byte	0
	.uleb128 0x7
	.string	"prev_time"
	.byte	0x6
	.byte	0x45
	.uaword	0x20c
	.byte	0x4
	.uleb128 0x7
	.string	"prev_time_down"
	.byte	0x6
	.byte	0x46
	.uaword	0x20c
	.byte	0x8
	.uleb128 0x7
	.string	"bounce_limit"
	.byte	0x6
	.byte	0x47
	.uaword	0x20c
	.byte	0xc
	.uleb128 0x7
	.string	"bounce_cnt"
	.byte	0x6
	.byte	0x48
	.uaword	0x20c
	.byte	0x10
	.uleb128 0x7
	.string	"x"
	.byte	0x6
	.byte	0x49
	.uaword	0x1cd
	.byte	0x14
	.uleb128 0x7
	.string	"prev_x"
	.byte	0x6
	.byte	0x4a
	.uaword	0x1cd
	.byte	0x16
	.uleb128 0x7
	.string	"prev_x_down"
	.byte	0x6
	.byte	0x4b
	.uaword	0x1cd
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1cd
	.byte	0x1a
	.uleb128 0x7
	.string	"prev_y"
	.byte	0x6
	.byte	0x4d
	.uaword	0x1cd
	.byte	0x1c
	.uleb128 0x7
	.string	"prev_y_down"
	.byte	0x6
	.byte	0x4e
	.uaword	0x1cd
	.byte	0x1e
	.uleb128 0x7
	.string	"cnt"
	.byte	0x6
	.byte	0x4f
	.uaword	0x1cd
	.byte	0x20
	.uleb128 0x7
	.string	"xdisp"
	.byte	0x6
	.byte	0x50
	.uaword	0x1cd
	.byte	0x22
	.uleb128 0x7
	.string	"ydisp"
	.byte	0x6
	.byte	0x51
	.uaword	0x1cd
	.byte	0x24
	.uleb128 0x7
	.string	"xmin"
	.byte	0x6
	.byte	0x52
	.uaword	0x21a
	.byte	0x28
	.uleb128 0x7
	.string	"xmax"
	.byte	0x6
	.byte	0x53
	.uaword	0x21a
	.byte	0x2c
	.uleb128 0x7
	.string	"ymin"
	.byte	0x6
	.byte	0x54
	.uaword	0x21a
	.byte	0x30
	.uleb128 0x7
	.string	"ymax"
	.byte	0x6
	.byte	0x55
	.uaword	0x21a
	.byte	0x34
	.uleb128 0x7
	.string	"status"
	.byte	0x6
	.byte	0x56
	.uaword	0x778
	.byte	0x38
	.uleb128 0x7
	.string	"prev_status"
	.byte	0x6
	.byte	0x57
	.uaword	0x778
	.byte	0x3c
	.uleb128 0x7
	.string	"touchmode"
	.byte	0x6
	.byte	0x58
	.uaword	0x20c
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_DRIVER"
	.byte	0x6
	.byte	0x59
	.uaword	0x78d
	.uleb128 0xe
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.byte	0x1
	.string	"switchoff_select_cancel"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.uaword	0x951
	.uleb128 0x10
	.string	"ind"
	.byte	0x1
	.byte	0x62
	.uaword	0x1fe
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x62
	.uaword	0x6b0
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x64
	.uaword	0x20c
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"switchoff_input"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x1fe
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9a3
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x48
	.uaword	0x1fe
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x48
	.uaword	0x6b0
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.uaword	0x901
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x4a
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"switchoff_display"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa1f
	.uleb128 0x18
	.string	"ind"
	.byte	0x1
	.byte	0x3e
	.uaword	0x1fe
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3e
	.uaword	0x6b0
	.uaword	.LLST1
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x40
	.uaword	0x1fe
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	.LVL4
	.uaword	0xd25
	.uaword	0xa0e
	.uleb128 0x1c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL6
	.uaword	0xd52
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"switchoff_select_ok"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xab4
	.uleb128 0x18
	.string	"ind"
	.byte	0x1
	.byte	0x4e
	.uaword	0x1fe
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4e
	.uaword	0x6b0
	.uaword	.LLST4
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x50
	.uaword	0x20c
	.uaword	.LLST5
	.uleb128 0x1b
	.uaword	.LVL10
	.uaword	0xd25
	.uaword	0xa8c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL12
	.uaword	0xd52
	.uaword	0xaa0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL14
	.uaword	0xd83
	.uleb128 0x1f
	.uaword	.LVL15
	.byte	0x1
	.uaword	0xda8
	.byte	0
	.uleb128 0x20
	.uaword	0x90f
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb6f
	.uleb128 0x21
	.uaword	0x931
	.uaword	.LLST6
	.uleb128 0x21
	.uaword	0x93c
	.uaword	.LLST7
	.uleb128 0x22
	.uaword	0x947
	.uaword	.LLST8
	.uleb128 0x23
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	0xb37
	.uleb128 0x24
	.uaword	0x931
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x24
	.uaword	0x93c
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uleb128 0x25
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x26
	.uaword	0x947
	.uleb128 0x27
	.uaword	.LVL25
	.byte	0x1
	.uaword	0xdce
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL19
	.uaword	0xd25
	.uaword	0xb51
	.uleb128 0x1c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL21
	.uaword	0xd52
	.uaword	0xb65
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL23
	.uaword	0xe0e
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"switchoff"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc8d
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.byte	0x75
	.uaword	0x1cd
	.uaword	.LLST9
	.uleb128 0x18
	.string	"y"
	.byte	0x1
	.byte	0x75
	.uaword	0x1cd
	.uaword	.LLST10
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x77
	.uaword	0x1fe
	.uaword	.LLST11
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x77
	.uaword	0x1fe
	.uaword	.LLST12
	.uleb128 0x1b
	.uaword	.LVL28
	.uaword	0xe31
	.uaword	0xbd9
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL29
	.uaword	0xe5c
	.uaword	0xbf1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x37
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL31
	.uaword	0xd25
	.uaword	0xc0a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL34
	.uaword	0xe8c
	.uaword	0xc28
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL36
	.uaword	0xd25
	.uaword	0xc40
	.uleb128 0x1c
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL37
	.uaword	0x9a3
	.uaword	0xc5c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	switchofflist
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.uaword	.LVL38
	.byte	0x1
	.uaword	0x9a3
	.uaword	0xc79
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	switchofflist+64
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL39
	.uaword	0xa1f
	.uleb128 0x1f
	.uaword	.LVL41
	.byte	0x1
	.uaword	0x90f
	.byte	0
	.uleb128 0x29
	.string	"conio_driver"
	.byte	0x5
	.byte	0xc9
	.uaword	0x6f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"touch_driver"
	.byte	0x6
	.byte	0x5b
	.uaword	0x8ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1af
	.uaword	0xccf
	.uleb128 0xa
	.uaword	0x477
	.byte	0x5
	.uleb128 0xa
	.uaword	0x477
	.byte	0x1d
	.byte	0
	.uleb128 0x2a
	.string	"switchoff_outline"
	.byte	0x1
	.byte	0x28
	.uaword	0xcef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	switchoff_outline
	.uleb128 0x2b
	.uaword	0xcb9
	.uleb128 0x9
	.uaword	0x579
	.uaword	0xd04
	.uleb128 0xa
	.uaword	0x477
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.string	"switchofflist"
	.byte	0x1
	.byte	0x31
	.uaword	0xd20
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	switchofflist
	.uleb128 0x2b
	.uaword	0xcf4
	.uleb128 0x2c
	.byte	0x1
	.string	"conio_ascii_gotoxy"
	.byte	0x5
	.byte	0xd8
	.byte	0x1
	.byte	0x1
	.uaword	0xd52
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"conio_ascii_textchangecolor"
	.byte	0x5
	.byte	0xde
	.byte	0x1
	.byte	0x1
	.uaword	0xd83
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxTLF35584_goto_standby_state"
	.byte	0x7
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"display_ascii_clrscr"
	.byte	0x5
	.uahalf	0x109
	.byte	0x1
	.byte	0x1
	.uaword	0xdce
	.uleb128 0xc
	.uaword	0x340
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"conio_ascii_printfxy"
	.byte	0x5
	.byte	0xdf
	.byte	0x1
	.byte	0x1
	.uaword	0xe03
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.uleb128 0xc
	.uaword	0x1fe
	.uleb128 0xc
	.uaword	0xe03
	.uleb128 0x2f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe09
	.uleb128 0x2b
	.uaword	0x1af
	.uleb128 0x2c
	.byte	0x1
	.string	"conio_ascii_clrscr"
	.byte	0x5
	.byte	0xd6
	.byte	0x1
	.byte	0x1
	.uaword	0xe31
	.uleb128 0xc
	.uaword	0x340
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"conio_ascii_textcolor"
	.byte	0x5
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uaword	0xe5c
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"conio_ascii_textbackground"
	.byte	0x5
	.byte	0xda
	.byte	0x1
	.byte	0x1
	.uaword	0xe8c
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"conio_ascii_putch"
	.byte	0x5
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1af
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.Ltext0
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
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE334-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE334-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x5a
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
	.extern	conio_ascii_putch,STT_FUNC,0
	.extern	conio_ascii_textbackground,STT_FUNC,0
	.extern	conio_ascii_textcolor,STT_FUNC,0
	.extern	conio_ascii_printfxy,STT_FUNC,0
	.extern	conio_ascii_clrscr,STT_FUNC,0
	.extern	display_ascii_clrscr,STT_FUNC,0
	.extern	IfxTLF35584_goto_standby_state,STT_FUNC,0
	.extern	touch_driver,STT_OBJECT,68
	.extern	conio_ascii_textchangecolor,STT_FUNC,0
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_driver,STT_OBJECT,244
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
