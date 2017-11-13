	.file	"showalarm.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	showalarm_input
	.type	showalarm_input, @function
showalarm_input:
.LFB337:
	.file 1 "0_Src/0_AppSw/appTft/showalarm.c"
	.loc 1 81 0
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
	.loc 1 84 0
	mov	%d2, 0
	ret
.LFE337:
	.size	showalarm_input, .-showalarm_input
	.align 1
	.global	showalarm_display
	.type	showalarm_display, @function
showalarm_display:
.LFB336:
	.loc 1 71 0
.LVL1:
	.loc 1 73 0
	movh.a	%a15, hi:showalarmlist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:showalarmlist
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
	.loc 1 75 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL4:
	.loc 1 76 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 73 0 discriminator 3
	add	%d15, 1
.LVL5:
	.loc 1 76 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL6:
	.loc 1 73 0 discriminator 3
	jge	%d8, %d15, .L4
.L2:
	ret
.LFE336:
	.size	showalarm_display, .-showalarm_display
	.align 1
	.global	showalarm_select_reset
	.type	showalarm_select_reset, @function
showalarm_select_reset:
.LFB338:
	.loc 1 87 0
.LVL7:
	.loc 1 89 0
	movh.a	%a15, hi:showalarmlist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:showalarmlist
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
	.loc 1 91 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL10:
	.loc 1 92 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 89 0 discriminator 3
	add	%d15, 1
.LVL11:
	.loc 1 92 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL12:
	.loc 1 89 0 discriminator 3
	jge.u	%d8, %d15, .L12
.L13:
	.loc 1 94 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL13:
	jnz.t	%d15, 3, .L16
	ret
.L16:
	.loc 1 96 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 97 0
	mov	%d15, 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	st.w	[%a15] 188, %d15
	.loc 1 98 0
	call	beeper_off
.LVL14:
	.loc 1 99 0
	mov	%e4, 0
	call	rtc_alarm_onoff
.LVL15:
	.loc 1 100 0
	mov	%d4, 0
	call	rtc_reset_alarmflag
.LVL16:
	.loc 1 102 0
	mov	%d15, 3
	.loc 1 101 0
	ld.w	%d4, [%a15] 184
	.loc 1 102 0
	movh.a	%a15, hi:touch_event
	lea	%a15, [%a15] lo:touch_event
	.loc 1 101 0
	call	display_ascii_clrscr
.LVL17:
	.loc 1 102 0
	st.w	[%a15] 20, %d15
	ret
.LFE338:
	.size	showalarm_select_reset, .-showalarm_select_reset
	.align 1
	.global	showalarm_select_ignore
	.type	showalarm_select_ignore, @function
showalarm_select_ignore:
.LFB339:
	.loc 1 107 0
.LVL18:
	.loc 1 109 0
	movh.a	%a15, hi:showalarmlist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:showalarmlist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL19:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L22
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL20:
.L21:
	.loc 1 111 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL21:
	.loc 1 112 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 109 0 discriminator 3
	add	%d15, 1
.LVL22:
	.loc 1 112 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL23:
	.loc 1 109 0 discriminator 3
	jge.u	%d8, %d15, .L21
.L22:
	.loc 1 114 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL24:
	jnz.t	%d15, 3, .L25
	ret
.L25:
	.loc 1 116 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 117 0
	mov	%d15, 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	st.w	[%a15] 188, %d15
	.loc 1 118 0
	call	beeper_off
.LVL25:
	.loc 1 120 0
	mov	%d15, 3
	.loc 1 119 0
	ld.w	%d4, [%a15] 184
	.loc 1 120 0
	movh.a	%a15, hi:touch_event
	lea	%a15, [%a15] lo:touch_event
	.loc 1 119 0
	call	conio_ascii_clrscr
.LVL26:
	.loc 1 120 0
	st.w	[%a15] 20, %d15
	ret
.LFE339:
	.size	showalarm_select_ignore, .-showalarm_select_ignore
	.align 1
	.global	showalarm
	.type	showalarm, @function
showalarm:
.LFB340:
	.loc 1 125 0
.LVL27:
	.loc 1 127 0
	movh.a	%a15, hi:periodic_count
	ld.w	%d15, [%a15] lo:periodic_count
	.loc 1 128 0
	movh.a	%a2, hi:touch_event
	.loc 1 127 0
	add	%d15, 1
	.loc 1 128 0
	lea	%a2, [%a2] lo:touch_event
	.loc 1 125 0
	mov	%d12, %d4
	.loc 1 127 0
	st.w	[%a15] lo:periodic_count, %d15
	.loc 1 128 0
	mov	%d15, 2
	.loc 1 125 0
	mov	%d11, %d5
	.loc 1 129 0
	mov	%e4, 1
.LVL28:
	.loc 1 128 0
	st.w	[%a2] 20, %d15
	.loc 1 129 0
	call	conio_ascii_textcolor
.LVL29:
	.loc 1 130 0
	ld.w	%d15, [%a15] lo:periodic_count
	.loc 1 132 0
	mov	%d4, 1
	.loc 1 130 0
	jz.t	%d15, 2, .L27
	.loc 1 132 0
	mov	%d5, 2
	call	conio_ascii_textbackground
.LVL30:
	.loc 1 133 0
	call	beeper_on
.LVL31:
.L28:
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	movh	%d9, hi:showalarm_outline
	.loc 1 125 0 discriminator 1
	mov	%d10, 0
	addi	%d9, %d9, lo:showalarm_outline
	.loc 1 145 0 discriminator 1
	mov.aa	%a12, %a15
.LVL32:
.L30:
	.loc 1 142 0
	ld.w	%d4, [%a15] 184
	mul	%d8, %d10, 30
	mov	%d5, 5
	addi	%d6, %d10, 5
	call	conio_ascii_gotoxy
.LVL33:
	.loc 1 143 0
	mov	%d15, 0
.LVL34:
.L29:
	.loc 1 145 0 discriminator 3
	mov.a	%a3, %d9
	add	%d2, %d15, %d8
	addsc.a	%a2, %a3, %d2, 0
	ld.w	%d4, [%a15] 184
	ld.bu	%d5, [%a2]0
	.loc 1 143 0 discriminator 3
	add	%d15, 1
.LVL35:
	.loc 1 145 0 discriminator 3
	call	conio_ascii_putch
.LVL36:
	.loc 1 143 0 discriminator 3
	ne	%d2, %d15, 30
	jnz	%d2, .L29
	.loc 1 140 0 discriminator 2
	add	%d10, 1
.LVL37:
	ne	%d15, %d10, 9
.LVL38:
	jnz	%d15, .L30
	.loc 1 148 0
	ld.w	%d4, [%a12] 184
	.loc 1 152 0
	extr.u	%d12, %d12, 0, 16
	.loc 1 148 0
	mov	%d5, 5
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL39:
	.loc 1 152 0
	addi	%d15, %d12, -9
	lt.u	%d2, %d15, 9
	.loc 1 154 0
	movh.a	%a4, hi:showalarmlist
	.loc 1 152 0
	and.eq	%d2, %d11, 10
	eq	%d8, %d11, 10
	.loc 1 154 0
	mov	%d4, 0
	lea	%a4, [%a4] lo:showalarmlist
	.loc 1 152 0
	jnz	%d2, .L31
	.loc 1 158 0
	call	showalarm_display
.LVL40:
.L32:
	.loc 1 152 0
	addi	%d15, %d12, -23
	lt.u	%d15, %d15, 8
	.loc 1 154 0
	movh.a	%a4, hi:showalarmlist+64
	.loc 1 152 0
	and	%d15, %d8
	.loc 1 154 0
	mov	%d4, 1
	lea	%a4, [%a4] lo:showalarmlist+64
	.loc 1 152 0
	jnz	%d15, .L33
	.loc 1 158 0
	j	showalarm_display
.LVL41:
.L27:
	.loc 1 137 0
	mov	%d5, 10
	call	conio_ascii_textbackground
.LVL42:
	.loc 1 138 0
	call	beeper_off
.LVL43:
	j	.L28
.LVL44:
.L31:
	.loc 1 154 0
	call	showalarm_select_reset
.LVL45:
	j	.L32
.LVL46:
.L33:
	j	showalarm_select_ignore
.LVL47:
.LFE340:
	.size	showalarm, .-showalarm
	.global	periodic_count
.section .bss,"aw",@nobits
	.align 2
	.type	periodic_count, @object
	.size	periodic_count, 4
periodic_count:
	.zero	4
	.global	showalarmlist
.section .rodata,"a",@progbits
	.align 2
	.type	showalarmlist, @object
	.size	showalarmlist, 128
showalarmlist:
	.byte	32
	.byte	12
	.byte	9
	.byte	17
	.byte	10
	.zero	3
	.word	showalarm_select_reset
	.word	showalarm_display
	.word	showalarm_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	32
	.byte	12
	.byte	23
	.byte	30
	.byte	10
	.zero	3
	.word	showalarm_select_ignore
	.word	showalarm_display
	.word	showalarm_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.global	showalarm_outline
	.type	showalarm_outline, @object
	.size	showalarm_outline, 270
showalarm_outline:
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	82
	.byte	32
	.byte	84
	.byte	32
	.byte	67
	.byte	32
	.byte	32
	.byte	65
	.byte	32
	.byte	76
	.byte	32
	.byte	65
	.byte	32
	.byte	82
	.byte	32
	.byte	77
	.byte	32
	.byte	65
	.byte	32
	.byte	67
	.byte	32
	.byte	84
	.byte	32
	.byte	73
	.byte	32
	.byte	86
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.byte	-60
	.byte	-65
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
	.byte	82
	.byte	69
	.byte	83
	.byte	69
	.byte	84
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	73
	.byte	71
	.byte	78
	.byte	79
	.byte	82
	.byte	69
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
	.byte	-60
	.byte	-39
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
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "./0_Src/0_AppSw/Tft/conio_tft.h"
	.file 6 "./0_Src/0_AppSw/Tft/touch.h"
	.file 7 "./0_Src/0_AppSw/Rtc/RTC.h"
	.file 8 "./0_Src/0_AppSw/Beeper/Beeper.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf7c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/appTft/showalarm.c"
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
	.string	"TOUCH_EVENT"
	.byte	0x18
	.byte	0x6
	.byte	0x29
	.uaword	0x812
	.uleb128 0x7
	.string	"time"
	.byte	0x6
	.byte	0x2b
	.uaword	0x20c
	.byte	0
	.uleb128 0x7
	.string	"dtime"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0x7
	.string	"x"
	.byte	0x6
	.byte	0x2d
	.uaword	0x1cd
	.byte	0x8
	.uleb128 0x7
	.string	"y"
	.byte	0x6
	.byte	0x2e
	.uaword	0x1cd
	.byte	0xa
	.uleb128 0x7
	.string	"dx"
	.byte	0x6
	.byte	0x2f
	.uaword	0x1cd
	.byte	0xc
	.uleb128 0x7
	.string	"dy"
	.byte	0x6
	.byte	0x30
	.uaword	0x1cd
	.byte	0xe
	.uleb128 0x7
	.string	"xdisp"
	.byte	0x6
	.byte	0x31
	.uaword	0x1cd
	.byte	0x10
	.uleb128 0x7
	.string	"ydisp"
	.byte	0x6
	.byte	0x32
	.uaword	0x1cd
	.byte	0x12
	.uleb128 0x7
	.string	"status"
	.byte	0x6
	.byte	0x33
	.uaword	0x778
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_EVENT"
	.byte	0x6
	.byte	0x34
	.uaword	0x78d
	.uleb128 0x6
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x6
	.byte	0x42
	.uaword	0x985
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
	.uaword	0x826
	.uleb128 0xe
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.byte	0x1
	.string	"showalarm_input"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x1fe
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9fa
	.uleb128 0x10
	.string	"ind"
	.byte	0x1
	.byte	0x50
	.uaword	0x1fe
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x50
	.uaword	0x6b0
	.byte	0x1
	.byte	0x64
	.uleb128 0x12
	.uaword	0x99a
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"showalarm_display"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa76
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x46
	.uaword	0x1fe
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x46
	.uaword	0x6b0
	.uaword	.LLST1
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x48
	.uaword	0x1fe
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LVL4
	.uaword	0xde0
	.uaword	0xa65
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL6
	.uaword	0xe0d
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"showalarm_select_reset"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb3b
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x56
	.uaword	0x1fe
	.uaword	.LLST3
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x56
	.uaword	0x6b0
	.uaword	.LLST4
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x58
	.uaword	0x20c
	.uaword	.LLST5
	.uleb128 0x17
	.uaword	.LVL10
	.uaword	0xde0
	.uaword	0xae6
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL12
	.uaword	0xe0d
	.uaword	0xafa
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL14
	.uaword	0xe3e
	.uleb128 0x17
	.uaword	.LVL15
	.uaword	0xe53
	.uaword	0xb1d
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL16
	.uaword	0xe7c
	.uaword	0xb31
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL17
	.uaword	0xea4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"showalarm_select_ignore"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbd3
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x6a
	.uaword	0x1fe
	.uaword	.LLST6
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6a
	.uaword	0x6b0
	.uaword	.LLST7
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x6c
	.uaword	0x20c
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	.LVL21
	.uaword	0xde0
	.uaword	0xbac
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL23
	.uaword	0xe0d
	.uaword	0xbc0
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL25
	.uaword	0xe3e
	.uleb128 0x1a
	.uaword	.LVL26
	.uaword	0xeca
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"showalarm"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd16
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x7c
	.uaword	0x1cd
	.uaword	.LLST9
	.uleb128 0x14
	.string	"y"
	.byte	0x1
	.byte	0x7c
	.uaword	0x1cd
	.uaword	.LLST10
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.uaword	0x1fe
	.uaword	.LLST11
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x7e
	.uaword	0x1fe
	.uaword	.LLST12
	.uleb128 0x17
	.uaword	.LVL29
	.uaword	0xeed
	.uaword	0xc3d
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.uaword	.LVL30
	.uaword	0xf18
	.uaword	0xc55
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL31
	.uaword	0xf48
	.uleb128 0x17
	.uaword	.LVL33
	.uaword	0xde0
	.uaword	0xc77
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 5
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x17
	.uaword	.LVL36
	.uaword	0xf5c
	.uaword	0xc95
	.uleb128 0x18
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
	.uleb128 0x17
	.uaword	.LVL39
	.uaword	0xde0
	.uaword	0xcad
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x17
	.uaword	.LVL40
	.uaword	0x9fa
	.uaword	0xcc9
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	showalarmlist
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL41
	.byte	0x1
	.uaword	0x9fa
	.uaword	0xce6
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	showalarmlist+64
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x17
	.uaword	.LVL42
	.uaword	0xf18
	.uaword	0xcf9
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL43
	.uaword	0xe3e
	.uleb128 0x1a
	.uaword	.LVL45
	.uaword	0xa76
	.uleb128 0x1c
	.uaword	.LVL47
	.byte	0x1
	.uaword	0xb3b
	.byte	0
	.uleb128 0x1d
	.string	"conio_driver"
	.byte	0x5
	.byte	0xc9
	.uaword	0x6f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"touch_driver"
	.byte	0x6
	.byte	0x5b
	.uaword	0x985
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"touch_event"
	.byte	0x6
	.byte	0x5c
	.uaword	0x812
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1af
	.uaword	0xd6d
	.uleb128 0xa
	.uaword	0x477
	.byte	0x8
	.uleb128 0xa
	.uaword	0x477
	.byte	0x1d
	.byte	0
	.uleb128 0x1e
	.string	"showalarm_outline"
	.byte	0x1
	.byte	0x28
	.uaword	0xd8d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	showalarm_outline
	.uleb128 0x1f
	.uaword	0xd57
	.uleb128 0x9
	.uaword	0x579
	.uaword	0xda2
	.uleb128 0xa
	.uaword	0x477
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.string	"showalarmlist"
	.byte	0x1
	.byte	0x36
	.uaword	0xdbe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	showalarmlist
	.uleb128 0x1f
	.uaword	0xd92
	.uleb128 0x1e
	.string	"periodic_count"
	.byte	0x1
	.byte	0x3e
	.uaword	0x20c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	periodic_count
	.uleb128 0x20
	.byte	0x1
	.string	"conio_ascii_gotoxy"
	.byte	0x5
	.byte	0xd8
	.byte	0x1
	.byte	0x1
	.uaword	0xe0d
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"conio_ascii_textchangecolor"
	.byte	0x5
	.byte	0xde
	.byte	0x1
	.byte	0x1
	.uaword	0xe3e
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"beeper_off"
	.byte	0x8
	.byte	0x25
	.byte	0x1
	.uaword	0x1fe
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"rtc_alarm_onoff"
	.byte	0x7
	.byte	0x47
	.byte	0x1
	.uaword	0x1fe
	.byte	0x1
	.uaword	0xe7c
	.uleb128 0xc
	.uaword	0x1af
	.uleb128 0xc
	.uaword	0x1af
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"rtc_reset_alarmflag"
	.byte	0x7
	.byte	0x48
	.byte	0x1
	.uaword	0x1fe
	.byte	0x1
	.uaword	0xea4
	.uleb128 0xc
	.uaword	0x1af
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"display_ascii_clrscr"
	.byte	0x5
	.uahalf	0x109
	.byte	0x1
	.byte	0x1
	.uaword	0xeca
	.uleb128 0xc
	.uaword	0x340
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"conio_ascii_clrscr"
	.byte	0x5
	.byte	0xd6
	.byte	0x1
	.byte	0x1
	.uaword	0xeed
	.uleb128 0xc
	.uaword	0x340
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"conio_ascii_textcolor"
	.byte	0x5
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uaword	0xf18
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"conio_ascii_textbackground"
	.byte	0x5
	.byte	0xda
	.byte	0x1
	.byte	0x1
	.uaword	0xf48
	.uleb128 0xc
	.uaword	0x340
	.uleb128 0xc
	.uaword	0x1fe
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"beeper_on"
	.byte	0x8
	.byte	0x24
	.byte	0x1
	.uaword	0x1fe
	.byte	0x1
	.uleb128 0x24
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uaword	.LFE336-.Ltext0
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
	.uaword	.LFE336-.Ltext0
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
	.uaword	.LFE336-.Ltext0
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
	.uaword	.LFE338-.Ltext0
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
	.uaword	.LFE338-.Ltext0
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
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL44-.Ltext0
	.uaword	.LFE340-.Ltext0
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
	.extern	beeper_on,STT_FUNC,0
	.extern	conio_ascii_textbackground,STT_FUNC,0
	.extern	conio_ascii_textcolor,STT_FUNC,0
	.extern	conio_ascii_clrscr,STT_FUNC,0
	.extern	display_ascii_clrscr,STT_FUNC,0
	.extern	touch_event,STT_OBJECT,24
	.extern	rtc_reset_alarmflag,STT_FUNC,0
	.extern	rtc_alarm_onoff,STT_FUNC,0
	.extern	beeper_off,STT_FUNC,0
	.extern	touch_driver,STT_OBJECT,68
	.extern	conio_ascii_textchangecolor,STT_FUNC,0
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_driver,STT_OBJECT,244
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
