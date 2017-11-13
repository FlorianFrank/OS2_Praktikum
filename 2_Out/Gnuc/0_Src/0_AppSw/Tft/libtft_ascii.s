	.file	"libtft_ascii.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	tft_prepare_ascii_line, @function
tft_prepare_ascii_line:
.LFB361:
	.file 1 "0_Src/0_AppSw/Tft/libtft_ascii.c"
	.loc 1 533 0
.LVL0:
	.loc 1 543 0
	mov	%d6, 11
	movh.a	%a14, hi:__font_bitmap__8_12
	movh.a	%a6, hi:Row_Buff
	movh.a	%a13, hi:colortable_ascii
	.loc 1 540 0
	mov	%d15, 1
	lea	%a14, [%a14] lo:__font_bitmap__8_12
	lea	%a6, [%a6] lo:Row_Buff
	lea	%a13, [%a13] lo:colortable_ascii
	.loc 1 550 0
	mov	%d0, %d6
.LVL1:
.L2:
	.loc 1 533 0
	mov	%d7, 0
	.loc 1 550 0
	lea	%a12, 39
.LVL2:
.L8:
	.loc 1 548 0
	addsc.a	%a15, %a5, %d7, 0
	ld.bu	%d2, [%a15]0
	.loc 1 547 0
	addsc.a	%a15, %a4, %d7, 0
.LVL3:
	.loc 1 548 0
	sh	%d5, %d2, -4
.LVL4:
	.loc 1 549 0
	and	%d3, %d2, 15
.LVL5:
	.loc 1 547 0
	ld.bu	%d2, [%a15]0
.LVL6:
	.loc 1 561 0
	addsc.a	%a3, %a13, %d5, 1
	madd	%d2, %d6, %d2, 12
.LVL7:
	.loc 1 555 0
	addsc.a	%a2, %a13, %d3, 1
	addsc.a	%a15, %a14, %d2, 0
.LVL8:
	.loc 1 550 0
	mov	%d2, 128
	ld.bu	%d4, [%a15]0
	.loc 1 555 0
	mov.a	%a15, 7
.LVL9:
.L7:
	.loc 1 553 0
	and	%d3, %d2, %d4
	.loc 1 555 0
	addsc.a	%a7, %a6, %d15, 1
	.loc 1 553 0
	jz	%d3, .L3
	.loc 1 555 0
	ld.h	%d3, [%a2]0
.L14:
	.loc 1 562 0
	and	%d5, %d15, 1
	.loc 1 561 0
	st.h	[%a7]0, %d3
	.loc 1 562 0
	add	%d3, %d15, -1
	add	%d15, 3
.LVL10:
	seln	%d15, %d5, %d15, %d3
.LVL11:
	.loc 1 565 0
	sh	%d2, -1
.LVL12:
	loop	%a15, .L7
	.loc 1 545 0 discriminator 2
	add	%d7, 1
.LVL13:
	loop	%a12, .L8
	.loc 1 543 0 discriminator 2
	add	%d6, -1
.LVL14:
	jned	%d0, 0, .L2
	ret
.L3:
	.loc 1 561 0
	ld.h	%d3, [%a3]0
	j	.L14
.LFE361:
	.size	tft_prepare_ascii_line, .-tft_prepare_ascii_line
	.align 1
	.type	tft_ascii_line_written, @function
tft_ascii_line_written:
.LFB362:
	.loc 1 572 0
	.loc 1 574 0
	movh.a	%a15, hi:YROW_cnt
	ld.w	%d15, [%a15] lo:YROW_cnt
	movh.a	%a2, hi:cpy_pdisplay
	ld.a	%a4, [%a2] lo:cpy_pdisplay
	movh.a	%a2, hi:cpy_pdisplaycolor
	mul	%d2, %d15, 40
	ld.a	%a5, [%a2] lo:cpy_pdisplaycolor
	addsc.a	%a4, %a4, %d2, 0
	addsc.a	%a5, %a5, %d2, 0
	call	tft_prepare_ascii_line
.LVL15:
	.loc 1 576 0
	jz	%d15, .L19
	.loc 1 586 0
	add	%d15, -1
	.loc 1 587 0
	movh.a	%a4, hi:tft_ascii_line_written
	lea	%a4, [%a4] lo:tft_ascii_line_written
	mov	%d4, 3840
	.loc 1 586 0
	st.w	[%a15] lo:YROW_cnt, %d15
	.loc 1 587 0
	call	tft_flush_row_buff
.LVL16:
	.loc 1 590 0
	mov	%d2, 0
	ret
.L19:
.LBB27:
.LBB28:
	.loc 1 580 0
	mov.a	%a4, 0
	mov	%d4, 3840
	call	tft_flush_row_buff
.LVL17:
.LBE28:
.LBE27:
	.loc 1 590 0
	mov	%d2, 0
	ret
.LFE362:
	.size	tft_ascii_line_written, .-tft_ascii_line_written
	.align 1
	.global	display_ascii_clrscr
	.type	display_ascii_clrscr, @function
display_ascii_clrscr:
.LFB334:
	.loc 1 98 0
.LVL18:
	.loc 1 98 0
	mov	%d15, %d4
	.loc 1 99 0
	call	FIFO_DISPLAY_FREE
.LVL19:
	jge	%d2, 3, .L22
	ret
.L22:
	.loc 1 101 0
#APP
	# 101 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 102 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -30
	call	PUT_FIFO_DISPLAY
.LVL20:
	.loc 1 103 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
.LVL21:
	.loc 1 104 0
#APP
	# 104 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE334:
	.size	display_ascii_clrscr, .-display_ascii_clrscr
	.align 1
	.global	display_ascii_clreol
	.type	display_ascii_clreol, @function
display_ascii_clreol:
.LFB335:
	.loc 1 110 0
.LVL22:
	.loc 1 110 0
	mov	%d15, %d4
	.loc 1 111 0
	call	FIFO_DISPLAY_FREE
.LVL23:
	jge	%d2, 3, .L25
	ret
.L25:
	.loc 1 113 0
#APP
	# 113 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 114 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -25
	call	PUT_FIFO_DISPLAY
.LVL24:
	.loc 1 115 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
.LVL25:
	.loc 1 116 0
#APP
	# 116 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE335:
	.size	display_ascii_clreol, .-display_ascii_clreol
	.align 1
	.global	display_ascii_textattr
	.type	display_ascii_textattr, @function
display_ascii_textattr:
.LFB336:
	.loc 1 121 0
.LVL26:
	.loc 1 121 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 122 0
	call	FIFO_DISPLAY_FREE
.LVL27:
	jge	%d2, 3, .L28
	ret
.L28:
	.loc 1 124 0
#APP
	# 124 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 125 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -24
	call	PUT_FIFO_DISPLAY
.LVL28:
	.loc 1 126 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL29:
	.loc 1 127 0
#APP
	# 127 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE336:
	.size	display_ascii_textattr, .-display_ascii_textattr
	.align 1
	.global	display_ascii_textcolor
	.type	display_ascii_textcolor, @function
display_ascii_textcolor:
.LFB337:
	.loc 1 133 0
.LVL30:
	.loc 1 133 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 134 0
	call	FIFO_DISPLAY_FREE
.LVL31:
	jge	%d2, 3, .L31
	ret
.L31:
	.loc 1 136 0
#APP
	# 136 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 137 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -23
	call	PUT_FIFO_DISPLAY
.LVL32:
	.loc 1 138 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL33:
	.loc 1 139 0
#APP
	# 139 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE337:
	.size	display_ascii_textcolor, .-display_ascii_textcolor
	.align 1
	.global	display_ascii_textbackground
	.type	display_ascii_textbackground, @function
display_ascii_textbackground:
.LFB338:
	.loc 1 144 0
.LVL34:
	.loc 1 144 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 145 0
	call	FIFO_DISPLAY_FREE
.LVL35:
	jge	%d2, 3, .L34
	ret
.L34:
	.loc 1 147 0
#APP
	# 147 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 148 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -22
	call	PUT_FIFO_DISPLAY
.LVL36:
	.loc 1 149 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL37:
	.loc 1 150 0
#APP
	# 150 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE338:
	.size	display_ascii_textbackground, .-display_ascii_textbackground
	.align 1
	.global	display_ascii_textchangebackground
	.type	display_ascii_textchangebackground, @function
display_ascii_textchangebackground:
.LFB339:
	.loc 1 155 0
.LVL38:
	.loc 1 155 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 156 0
	call	FIFO_DISPLAY_FREE
.LVL39:
	jge	%d2, 3, .L37
	ret
.L37:
	.loc 1 158 0
#APP
	# 158 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 159 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -18
	call	PUT_FIFO_DISPLAY
.LVL40:
	.loc 1 160 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL41:
	.loc 1 161 0
#APP
	# 161 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE339:
	.size	display_ascii_textchangebackground, .-display_ascii_textchangebackground
	.align 1
	.global	display_ascii_textchangeforeground
	.type	display_ascii_textchangeforeground, @function
display_ascii_textchangeforeground:
.LFB340:
	.loc 1 166 0
.LVL42:
	.loc 1 166 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 167 0
	call	FIFO_DISPLAY_FREE
.LVL43:
	jge	%d2, 3, .L40
	ret
.L40:
	.loc 1 169 0
#APP
	# 169 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 170 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -17
	call	PUT_FIFO_DISPLAY
.LVL44:
	.loc 1 171 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL45:
	.loc 1 172 0
#APP
	# 172 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE340:
	.size	display_ascii_textchangeforeground, .-display_ascii_textchangeforeground
	.align 1
	.global	display_ascii_textchangecolor
	.type	display_ascii_textchangecolor, @function
display_ascii_textchangecolor:
.LFB341:
	.loc 1 177 0
.LVL46:
	.loc 1 177 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 178 0
	call	FIFO_DISPLAY_FREE
.LVL47:
	jge	%d2, 3, .L43
	ret
.L43:
	.loc 1 180 0
#APP
	# 180 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 181 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -16
	call	PUT_FIFO_DISPLAY
.LVL48:
	.loc 1 182 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL49:
	.loc 1 183 0
#APP
	# 183 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE341:
	.size	display_ascii_textchangecolor, .-display_ascii_textchangecolor
	.align 1
	.global	display_ascii_gotoxy
	.type	display_ascii_gotoxy, @function
display_ascii_gotoxy:
.LFB342:
	.loc 1 188 0
.LVL50:
	.loc 1 188 0
	mov	%d15, %d4
	mov	%e8, %d6, %d5
	.loc 1 189 0
	call	FIFO_DISPLAY_FREE
.LVL51:
	jge	%d2, 4, .L46
	ret
.L46:
	.loc 1 191 0
#APP
	# 191 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 192 0
#NO_APP
	movh	%d4, 4
	addi	%d4, %d4, -13
	call	PUT_FIFO_DISPLAY
.LVL52:
	.loc 1 193 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
.LVL53:
	.loc 1 194 0
	sh	%d4, %d8, 16
	add	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL54:
	.loc 1 195 0
#APP
	# 195 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE342:
	.size	display_ascii_gotoxy, .-display_ascii_gotoxy
	.align 1
	.global	display_ascii_cputs
	.type	display_ascii_cputs, @function
display_ascii_cputs:
.LFB343:
	.loc 1 200 0
.LVL55:
	.loc 1 200 0
	mov	%d9, %d4
	mov.aa	%a15, %a4
	.loc 1 204 0
	call	strlen
.LVL56:
	.loc 1 205 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jnz	%d3, .L48
	.loc 1 208 0
	or	%d8, %d2, 3
.LVL57:
	add	%d8, 1
.LVL58:
	sha	%d8, -2
.LVL59:
	.loc 1 207 0
	and	%d3, %d2, 3
	add	%d15, %d8, 2
	jz	%d3, .L57
.LVL60:
.L48:
	.loc 1 211 0
	call	FIFO_DISPLAY_FREE
.LVL61:
	jlt	%d15, %d2, .L58
	ret
.L58:
	.loc 1 213 0
#APP
	# 213 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 214 0
#NO_APP
	sh	%d15, %d15, 16
.LVL62:
	addi	%d4, %d15, -15
	addih	%d4, %d4, 1
	call	PUT_FIFO_DISPLAY
.LVL63:
	.loc 1 215 0
	sh	%d4, %d9, 16
	call	PUT_FIFO_DISPLAY
.LVL64:
	.loc 1 217 0
	mov	%d15, 0
	jlez	%d8, .L53
.LVL65:
.L55:
	.loc 1 218 0 discriminator 3
	ld.w	%d4, [%a15+]4
	.loc 1 217 0 discriminator 3
	add	%d15, 1
.LVL66:
	.loc 1 218 0 discriminator 3
	call	PUT_FIFO_DISPLAY
.LVL67:
	.loc 1 217 0 discriminator 3
	jne	%d15, %d8, .L55
.LVL68:
.L53:
	.loc 1 219 0
#APP
	# 219 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LVL69:
.L57:
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L48
.LFE343:
	.size	display_ascii_cputs, .-display_ascii_cputs
	.align 1
	.global	display_ascii_printfxy
	.type	display_ascii_printfxy, @function
display_ascii_printfxy:
.LFB344:
	.loc 1 225 0
.LVL70:
	sub.a	%SP, 80
.LCFI0:
.LVL71:
	.loc 1 225 0
	mov.aa	%a5, %a4
	.loc 1 232 0
	lea	%a6, [%SP] 80
.LVL72:
	mov.aa	%a4, %SP
.LVL73:
	.loc 1 225 0
	mov	%d9, %d4
	mov	%e10, %d6, %d5
	.loc 1 232 0
	call	vsprintf
.LVL74:
	.loc 1 234 0
	jltz	%d2, .L59
	.loc 1 236 0
	mov.aa	%a4, %SP
	call	strlen
.LVL75:
	add	%d2, 1
.LVL76:
	.loc 1 237 0
	ge	%d3, %d2, 41
	mov	%d15, 13
	mov	%d8, 10
	jz	%d3, .L71
.LVL77:
.L61:
	.loc 1 243 0
	call	FIFO_DISPLAY_FREE
.LVL78:
	jlt	%d15, %d2, .L72
.LVL79:
.L59:
	ret
.LVL80:
.L71:
	.loc 1 240 0
	or	%d8, %d2, 3
.LVL81:
	add	%d8, 1
.LVL82:
	sha	%d8, -2
.LVL83:
	.loc 1 239 0
	and	%d3, %d2, 3
	add	%d15, %d8, 3
	jnz	%d3, .L61
	sha	%d8, %d2, -2
	add	%d15, %d8, 3
	j	.L61
.LVL84:
.L72:
	.loc 1 245 0
#APP
	# 245 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 246 0
#NO_APP
	sh	%d15, %d15, 16
.LVL85:
	addi	%d4, %d15, -28
	addih	%d4, %d4, 1
	call	PUT_FIFO_DISPLAY
.LVL86:
	.loc 1 247 0
	mov	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL87:
	.loc 1 248 0
	sh	%d4, %d10, 16
	add	%d4, %d11
	call	PUT_FIFO_DISPLAY
.LVL88:
	.loc 1 250 0
	mov	%d15, 0
	jlez	%d8, .L65
.LVL89:
.L69:
	.loc 1 252 0 discriminator 3
	lea	%a2, [%SP] 80
.LVL90:
	addsc.a	%a15, %a2, %d15, 2
	.loc 1 250 0 discriminator 3
	add	%d15, 1
.LVL91:
	.loc 1 252 0 discriminator 3
	ld.w	%d4, [%a15] -80
	call	PUT_FIFO_DISPLAY
.LVL92:
	.loc 1 250 0 discriminator 3
	jne	%d15, %d8, .L69
.LVL93:
.L65:
	.loc 1 254 0
#APP
	# 254 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE344:
	.size	display_ascii_printfxy, .-display_ascii_printfxy
	.align 1
	.global	display_ascii_printf
	.type	display_ascii_printf, @function
display_ascii_printf:
.LFB345:
	.loc 1 259 0
.LVL94:
	sub.a	%SP, 80
.LCFI1:
.LVL95:
	.loc 1 259 0
	mov.aa	%a5, %a4
	.loc 1 266 0
	lea	%a6, [%SP] 80
.LVL96:
	mov.aa	%a4, %SP
.LVL97:
	.loc 1 259 0
	mov	%d9, %d4
	.loc 1 266 0
	call	vsprintf
.LVL98:
	.loc 1 268 0
	jltz	%d2, .L73
	.loc 1 270 0
	mov.aa	%a4, %SP
	call	strlen
.LVL99:
	add	%d2, 1
.LVL100:
	.loc 1 271 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jz	%d3, .L85
.LVL101:
.L75:
	.loc 1 277 0
	call	FIFO_DISPLAY_FREE
.LVL102:
	jlt	%d15, %d2, .L86
.LVL103:
.L73:
	ret
.LVL104:
.L85:
	.loc 1 274 0
	or	%d8, %d2, 3
.LVL105:
	add	%d8, 1
.LVL106:
	sha	%d8, -2
.LVL107:
	.loc 1 273 0
	and	%d3, %d2, 3
	add	%d15, %d8, 2
	jnz	%d3, .L75
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L75
.LVL108:
.L86:
	.loc 1 279 0
#APP
	# 279 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 280 0
#NO_APP
	sh	%d15, %d15, 16
.LVL109:
	addi	%d4, %d15, -26
	addih	%d4, %d4, 1
	call	PUT_FIFO_DISPLAY
.LVL110:
	.loc 1 281 0
	mov	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL111:
	.loc 1 283 0
	mov	%d15, 0
	jlez	%d8, .L79
.LVL112:
.L83:
	.loc 1 285 0 discriminator 3
	lea	%a2, [%SP] 80
.LVL113:
	addsc.a	%a15, %a2, %d15, 2
	.loc 1 283 0 discriminator 3
	add	%d15, 1
.LVL114:
	.loc 1 285 0 discriminator 3
	ld.w	%d4, [%a15] -80
	call	PUT_FIFO_DISPLAY
.LVL115:
	.loc 1 283 0 discriminator 3
	jne	%d15, %d8, .L83
.LVL116:
.L79:
	.loc 1 287 0
#APP
	# 287 "0_Src/0_AppSw/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE345:
	.size	display_ascii_printf, .-display_ascii_printf
	.align 1
	.global	conio_ascii_setcolortable
	.type	conio_ascii_setcolortable, @function
conio_ascii_setcolortable:
.LFB346:
	.loc 1 293 0
.LVL117:
	.loc 1 295 0
	sh	%d6, -2
.LVL118:
	.loc 1 298 0
	sh	%d6, 5
.LVL119:
	.loc 1 296 0
	sh	%d7, -3
.LVL120:
	.loc 1 294 0
	sh	%d5, -3
.LVL121:
	.loc 1 298 0
	movh.a	%a15, hi:colortable_ascii
	or	%d7, %d6
.LVL122:
	sh	%d5, %d5, 11
.LVL123:
	lea	%a15, [%a15] lo:colortable_ascii
	or	%d5, %d7
	addsc.a	%a15, %a15, %d4, 1
	st.h	[%a15]0, %d5
	ret
.LFE346:
	.size	conio_ascii_setcolortable, .-conio_ascii_setcolortable
	.align 1
	.global	conio_ascii_clrscr
	.type	conio_ascii_clrscr, @function
conio_ascii_clrscr:
.LFB347:
	.loc 1 302 0
.LVL124:
	.loc 1 305 0
	movh.a	%a3, hi:conio_driver
	lea	%a3, [%a3] lo:conio_driver
	sh	%d4, 5
.LVL125:
	addsc.a	%a15, %a3, %d4, 0
	ld.w	%d15, [%a15] 16
	jeq	%d15, 1, .L89
.LBB29:
.LBB30:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L89:
.LVL126:
.LBE30:
.LBE29:
	.loc 1 314 0 discriminator 1
	addsc.a	%a3, %a3, %d4, 0
	.loc 1 302 0 discriminator 1
	mov.a	%a2, 0
	.loc 1 314 0 discriminator 1
	lea	%a4, [%a3] 8
	.loc 1 316 0 discriminator 1
	lea	%a6, [%a3] 20
	.loc 1 314 0 discriminator 1
	mov	%d2, 32
	.loc 1 315 0 discriminator 1
	lea	%a3, [%a3] 12
	.loc 1 311 0 discriminator 1
	mov	%d4, 760
.LVL127:
.L90:
	mov.d	%d5, %a2
	addi	%d3, %d5, 40
	.loc 1 315 0
	lea	%a15, 39
.LVL128:
.L91:
	.loc 1 314 0 discriminator 3
	ld.a	%a5, [%a4]0
	add.a	%a5, %a2
	st.b	[%a5]0, %d2
	.loc 1 315 0 discriminator 3
	ld.a	%a5, [%a3]0
	.loc 1 316 0 discriminator 3
	ld.bu	%d15, [%a6]0
	.loc 1 315 0 discriminator 3
	add.a	%a5, %a2
	st.b	[%a5]0, %d15
.LVL129:
	add.a	%a2, 1
.LVL130:
	loop	%a15, .L91
	.loc 1 311 0 discriminator 2
	jne	%d3, %d4, .L90
	ret
.LFE347:
	.size	conio_ascii_clrscr, .-conio_ascii_clrscr
	.align 1
	.global	conio_ascii_clreol
	.type	conio_ascii_clreol, @function
conio_ascii_clreol:
.LFB348:
	.loc 1 321 0
.LVL131:
	.loc 1 323 0
	movh	%d2, hi:conio_driver
	addi	%d2, %d2, lo:conio_driver
	mov.a	%a2, %d2
	sh	%d5, %d4, 5
	addsc.a	%a15, %a2, %d5, 0
	ld.w	%d15, [%a15] 16
	jeq	%d15, 1, .L98
.LBB31:
.LBB32:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L98:
.LBE32:
.LBE31:
	.loc 1 329 0
	madd	%d3, %d2, %d4, 32
	.loc 1 331 0
	mov.a	%a2, %d2
	mov	%d4, 32
.LVL132:
	.loc 1 329 0
	mov.a	%a15, %d3
	.loc 1 331 0
	addsc.a	%a3, %a2, %d5, 0
	.loc 1 329 0
	ld.w	%d15, [%a15] 32
.LVL133:
	.loc 1 331 0
	lea	%a4, [%a3] 8
	.loc 1 332 0
	rsub	%d2, %d15, 39
	.loc 1 329 0
	lt	%d3, %d15, 40
	.loc 1 331 0
	lea	%a2, [%a3] 36
	.loc 1 333 0
	lea	%a6, [%a3] 20
	.loc 1 332 0
	mov.a	%a15, %d2
	lea	%a3, [%a3] 12
	.loc 1 329 0
	jz	%d3, .L97
.L104:
	.loc 1 331 0 discriminator 3
	ld.w	%d2, [%a2]0
	ld.a	%a7, [%a4]0
	madd	%d2, %d15, %d2, 40
	addsc.a	%a5, %a7, %d2, 0
	st.b	[%a5]0, %d4
	.loc 1 332 0 discriminator 3
	ld.w	%d2, [%a2]0
	ld.a	%a7, [%a3]0
	madd	%d2, %d15, %d2, 40
	.loc 1 333 0 discriminator 3
	ld.bu	%d3, [%a6]0
	.loc 1 329 0 discriminator 3
	add	%d15, 1
.LVL134:
	.loc 1 332 0 discriminator 3
	addsc.a	%a5, %a7, %d2, 0
	st.b	[%a5]0, %d3
	.loc 1 329 0 discriminator 3
	loop	%a15, .L104
.L97:
	ret
.LFE348:
	.size	conio_ascii_clreol, .-conio_ascii_clreol
	.align 1
	.global	conio_ascii_textattr
	.type	conio_ascii_textattr, @function
conio_ascii_textattr:
.LFB349:
	.loc 1 339 0
.LVL135:
	.loc 1 340 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	st.b	[%a15] 20, %d5
	ret
.LFE349:
	.size	conio_ascii_textattr, .-conio_ascii_textattr
	.align 1
	.global	conio_ascii_textcolor
	.type	conio_ascii_textcolor, @function
conio_ascii_textcolor:
.LFB350:
	.loc 1 344 0
.LVL136:
	.loc 1 345 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 0, 4
.LVL137:
	st.b	[%a15] 20, %d5
	ret
.LFE350:
	.size	conio_ascii_textcolor, .-conio_ascii_textcolor
	.align 1
	.global	conio_ascii_textbackground
	.type	conio_ascii_textbackground, @function
conio_ascii_textbackground:
.LFB351:
	.loc 1 349 0
.LVL138:
	.loc 1 350 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 4, 32-4
.LVL139:
	st.b	[%a15] 20, %d5
	ret
.LFE351:
	.size	conio_ascii_textbackground, .-conio_ascii_textbackground
	.align 1
	.global	conio_ascii_textchangebackground
	.type	conio_ascii_textchangebackground, @function
conio_ascii_textchangebackground:
.LFB352:
	.loc 1 354 0
.LVL140:
	.loc 1 355 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L111
.LBB33:
.LBB34:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L111:
.LVL141:
.LBE34:
.LBE33:
	.loc 1 363 0
	madd	%d3, %d15, %d4, 32
	.loc 1 362 0
	mov.a	%a3, %d15
	addsc.a	%a15, %a3, %d2, 0
	.loc 1 363 0
	mov.a	%a3, %d3
	.loc 1 362 0
	ld.w	%d2, [%a15] 36
	.loc 1 363 0
	ld.w	%d15, [%a3] 32
	ld.a	%a3, [%a15] 12
	madd	%d15, %d15, %d2, 40
	addsc.a	%a2, %a3, %d15, 0
	.loc 1 361 0
	ld.bu	%d15, [%a15] 20
	and	%d15, %d15, 15
	insert	%d5, %d15, %d5, 4, 4
.LVL142:
	.loc 1 363 0
	st.b	[%a2]0, %d5
.LVL143:
	ret
.LFE352:
	.size	conio_ascii_textchangebackground, .-conio_ascii_textchangebackground
	.align 1
	.global	conio_ascii_textchangeforeground
	.type	conio_ascii_textchangeforeground, @function
conio_ascii_textchangeforeground:
.LFB353:
	.loc 1 367 0
.LVL144:
	.loc 1 368 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L116
.LBB35:
.LBB36:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L116:
.LBE36:
.LBE35:
	.loc 1 376 0
	madd	%d3, %d15, %d4, 32
	.loc 1 375 0
	mov.a	%a3, %d15
	.loc 1 374 0
	and	%d5, %d5, 15
.LVL145:
	.loc 1 375 0
	addsc.a	%a15, %a3, %d2, 0
	.loc 1 376 0
	mov.a	%a3, %d3
	.loc 1 375 0
	ld.w	%d2, [%a15] 36
	.loc 1 376 0
	ld.w	%d15, [%a3] 32
	ld.a	%a3, [%a15] 12
	madd	%d15, %d15, %d2, 40
	addsc.a	%a2, %a3, %d15, 0
	.loc 1 374 0
	ld.bu	%d15, [%a15] 20
	and	%d15, %d15, 240
	or	%d5, %d15
.LVL146:
	.loc 1 376 0
	st.b	[%a2]0, %d5
.LVL147:
	ret
.LFE353:
	.size	conio_ascii_textchangeforeground, .-conio_ascii_textchangeforeground
	.align 1
	.global	conio_ascii_textchangecolor
	.type	conio_ascii_textchangecolor, @function
conio_ascii_textchangecolor:
.LFB354:
	.loc 1 380 0
.LVL148:
	.loc 1 381 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L121
.LBB37:
.LBB38:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L121:
.LBE38:
.LBE37:
	.loc 1 388 0
	madd	%d3, %d15, %d4, 32
	.loc 1 387 0
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 388 0
	mov.a	%a2, %d3
	.loc 1 387 0
	ld.w	%d2, [%a15] 36
	.loc 1 388 0
	ld.w	%d15, [%a2] 32
	ld.a	%a15, [%a15] 12
	madd	%d15, %d15, %d2, 40
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d5
	ret
.LFE354:
	.size	conio_ascii_textchangecolor, .-conio_ascii_textchangecolor
	.align 1
	.global	conio_ascii_gotoxy
	.type	conio_ascii_gotoxy, @function
conio_ascii_gotoxy:
.LFB355:
	.loc 1 392 0
.LVL149:
	.loc 1 393 0
	movh	%d2, hi:conio_driver
	addi	%d2, %d2, lo:conio_driver
	mov.a	%a2, %d2
	sh	%d15, %d4, 5
	addsc.a	%a15, %a2, %d15, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L126
.LBB39:
.LBB40:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L126:
.LBE40:
.LBE39:
	.loc 1 399 0
	mov.a	%a2, %d2
	addsc.a	%a15, %a2, %d15, 0
	ld.w	%d15, [%a15] 24
	jge	%d5, %d15, .L125
	.loc 1 399 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] 28
	jge	%d6, %d15, .L125
	.loc 1 400 0 is_stmt 1
	madd	%d15, %d2, %d4, 32
	.loc 1 401 0
	st.w	[%a15] 36, %d6
	.loc 1 400 0
	mov.a	%a2, %d15
	st.w	[%a2] 32, %d5
.L125:
	ret
.LFE355:
	.size	conio_ascii_gotoxy, .-conio_ascii_gotoxy
	.align 1
	.global	conio_ascii_cputs
	.type	conio_ascii_cputs, @function
conio_ascii_cputs:
.LFB356:
	.loc 1 405 0
.LVL150:
	.loc 1 408 0
	movh.a	%a13, hi:conio_driver
	mov.d	%d2, %a13
	addi	%d15, %d2, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d5, %d4, 5
	addsc.a	%a15, %a2, %d5, 0
	ld.w	%d2, [%a15] 16
	jeq	%d2, 1, .L132
.LBB41:
.LBB42:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L132:
.LVL151:
.LBE42:
.LBE41:
	.loc 1 415 0
	add	%d4, 1
.LVL152:
	madd	%d2, %d15, %d4, 32
	.loc 1 416 0
	mov.a	%a2, %d15
	.loc 1 417 0
	ld.bu	%d4, [%a4+]1
.LVL153:
	.loc 1 416 0
	addsc.a	%a13, %a2, %d5, 0
	.loc 1 415 0
	mov.a	%a12, %d2
	.loc 1 423 0
	mov.d	%d7, %a13
	.loc 1 416 0
	ld.w	%d2, [%a13] 36
	.loc 1 421 0
	lea	%a7, [%a13] 8
	.loc 1 422 0
	lea	%a6, [%a13] 12
	.loc 1 415 0
	ld.w	%d3, [%a12]0
.LVL154:
	.loc 1 423 0
	addi	%d6, %d7, 20
	.loc 1 433 0
	mov	%d15, 0
	.loc 1 460 0
	lea	%a13, [%a13] 36
	.loc 1 417 0
	jz	%d4, .L131
.LVL155:
.L144:
	.loc 1 419 0
	eq	%d5, %d4, 10
	jnz	%d5, .L135
	.loc 1 421 0
	ld.a	%a2, [%a7]0
	madd	%d5, %d3, %d2, 40
	.loc 1 423 0
	mov.a	%a3, %d6
	.loc 1 424 0
	add	%d3, 1
.LVL156:
	.loc 1 421 0
	addsc.a	%a15, %a2, %d5, 0
	st.b	[%a15]0, %d4
	.loc 1 422 0
	ld.a	%a2, [%a6]0
	.loc 1 423 0
	ld.bu	%d4, [%a3]0
	.loc 1 422 0
	addsc.a	%a15, %a2, %d5, 0
	st.b	[%a15]0, %d4
	.loc 1 431 0
	ge	%d4, %d3, 40
	jz	%d4, .L136
.L135:
.LVL157:
	.loc 1 434 0
	add	%d2, 1
.LVL158:
	.loc 1 433 0
	mov	%d3, 0
.LVL159:
.L136:
	.loc 1 436 0
	lt	%d4, %d2, 19
	jnz	%d4, .L137
.LBB43:
	.loc 1 445 0
	ld.w	%d2, [%a6]0
.LVL160:
	.loc 1 443 0
	ld.a	%a14, [%a7]0
	.loc 1 445 0
	mov.a	%a3, %d2
	.loc 1 443 0
	lea	%a2, [%a14] 40
.LVL161:
	.loc 1 445 0
	lea	%a15, [%a3] 40
.LVL162:
	lea	%a5, [%a14] 760
	lea	%a3, 179
.LVL163:
.L138:
	.loc 1 449 0 discriminator 3
	ld.w	%d4, [%a2]0
	st.w	[%a2] -40, %d4
.LVL164:
	.loc 1 450 0 discriminator 3
	ld.w	%d7, [%a15]0
	st.w	[%a15] -40, %d7
	add.a	%a2, 4
.LVL165:
	add.a	%a15, 4
.LVL166:
	loop	%a3, .L138
	mov.a	%a3, %d2
	lea	%a15, [%a14] 720
.LVL167:
	lea	%a2, [%a3] 720
.LVL168:
.L139:
	.loc 1 454 0 discriminator 3
	st.w	[%a15]0, %d15
	.loc 1 455 0 discriminator 3
	st.w	[%a2]0, %d15
	add.a	%a15, 4
.LVL169:
	add.a	%a2, 4
.LVL170:
	.loc 1 452 0 discriminator 3
	jne.a	%a15, %a5, .L139
	.loc 1 457 0
	mov	%d2, 18
.LVL171:
.L137:
.LBE43:
	.loc 1 459 0
	st.w	[%a12]0, %d3
	.loc 1 460 0
	st.w	[%a13]0, %d2
.LVL172:
	.loc 1 417 0
	ld.bu	%d4, [%a4+]1
.LVL173:
	jnz	%d4, .L144
.LVL174:
.L131:
	ret
.LFE356:
	.size	conio_ascii_cputs, .-conio_ascii_cputs
	.align 1
	.global	conio_ascii_putch
	.type	conio_ascii_putch, @function
conio_ascii_putch:
.LFB357:
	.loc 1 466 0
.LVL175:
	.loc 1 467 0
	movh.a	%a2, hi:conio_driver
	mov.d	%d2, %a2
	addi	%d15, %d2, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L150
.LBB44:
.LBB45:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L150:
.LBE45:
.LBE44:
	.loc 1 475 0
	add	%d4, 1
.LVL176:
	madd	%d3, %d15, %d4, 32
	.loc 1 474 0
	mov.a	%a4, %d15
	.loc 1 475 0
	mov.a	%a2, %d3
	.loc 1 474 0
	addsc.a	%a15, %a4, %d2, 0
	.loc 1 475 0
	ld.w	%d15, [%a2]0
	.loc 1 474 0
	ld.w	%d2, [%a15] 36
	.loc 1 475 0
	ld.a	%a4, [%a15] 8
	madd	%d15, %d15, %d2, 40
	addsc.a	%a3, %a4, %d15, 0
	st.b	[%a3]0, %d5
	.loc 1 476 0
	ld.w	%d3, [%a15] 36
	.loc 1 477 0
	ld.w	%d15, [%a2]0
	ld.a	%a4, [%a15] 12
	madd	%d15, %d15, %d3, 40
	.loc 1 478 0
	ld.bu	%d2, [%a15] 20
	.loc 1 477 0
	addsc.a	%a3, %a4, %d15, 0
	st.b	[%a3]0, %d2
	.loc 1 479 0
	ld.w	%d15, [%a2]0
	add	%d15, 1
	.loc 1 480 0
	eq	%d2, %d15, 40
	jnz	%d2, .L151
	.loc 1 479 0
	st.w	[%a2]0, %d15
	ret
.L151:
	.loc 1 482 0
	mov	%d15, 0
	st.w	[%a2]0, %d15
	.loc 1 483 0
	ld.w	%d15, [%a15] 36
	add	%d15, 1
	.loc 1 484 0
	eq	%d2, %d15, 20
	jnz	%d2, .L149
	.loc 1 483 0
	st.w	[%a15] 36, %d15
.L149:
	ret
.LFE357:
	.size	conio_ascii_putch, .-conio_ascii_putch
	.align 1
	.global	conio_ascii_cgets
	.type	conio_ascii_cgets, @function
conio_ascii_cgets:
.LFB358:
	.loc 1 492 0
.LVL177:
.LBB46:
.LBB47:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE47:
.LBE46:
	.loc 1 495 0
	mov.a	%a2, 0
	ret
.LFE358:
	.size	conio_ascii_cgets, .-conio_ascii_cgets
	.align 1
	.global	conio_ascii_printfxy
	.type	conio_ascii_printfxy, @function
conio_ascii_printfxy:
.LFB359:
	.loc 1 499 0
.LVL178:
	sub.a	%SP, 80
.LCFI2:
.LVL179:
	.loc 1 499 0
	mov.aa	%a5, %a4
	.loc 1 504 0
	lea	%a6, [%SP] 80
.LVL180:
	mov.aa	%a4, %SP
.LVL181:
	.loc 1 499 0
	mov	%d15, %d4
	mov	%e8, %d6, %d5
	.loc 1 504 0
	call	vsprintf
.LVL182:
	.loc 1 506 0
	jltz	%d2, .L161
.LVL183:
.LBB48:
.LBB49:
	.loc 1 393 0
	movh	%d3, hi:conio_driver
	addi	%d3, %d3, lo:conio_driver
	mov.a	%a2, %d3
	sh	%d2, %d15, 5
.LVL184:
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d4, [%a15] 16
	jeq	%d4, 1, .L163
.LBB50:
.LBB51:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L163:
.LBE51:
.LBE50:
	.loc 1 399 0
	mov.a	%a2, %d3
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d2, [%a15] 24
	jge	%d8, %d2, .L164
	ld.w	%d2, [%a15] 28
	jge	%d9, %d2, .L164
	.loc 1 400 0
	madd	%d2, %d3, %d15, 32
	.loc 1 401 0
	st.w	[%a15] 36, %d9
	.loc 1 400 0
	mov.a	%a2, %d2
	st.w	[%a2] 32, %d8
.L164:
.LBE49:
.LBE48:
	.loc 1 512 0
	mov	%d4, %d15
	mov.aa	%a4, %SP
	call	conio_ascii_cputs
.LVL185:
.L161:
	ret
.LFE359:
	.size	conio_ascii_printfxy, .-conio_ascii_printfxy
	.align 1
	.global	conio_ascii_printf
	.type	conio_ascii_printf, @function
conio_ascii_printf:
.LFB360:
	.loc 1 517 0
.LVL186:
	sub.a	%SP, 80
.LCFI3:
.LVL187:
	.loc 1 517 0
	mov.aa	%a5, %a4
	.loc 1 522 0
	lea	%a6, [%SP] 80
.LVL188:
	mov.aa	%a4, %SP
.LVL189:
	.loc 1 517 0
	mov	%d15, %d4
	.loc 1 522 0
	call	vsprintf
.LVL190:
	.loc 1 524 0
	jgez	%d2, .L172
	ret
.L172:
	.loc 1 529 0
	mov	%d4, %d15
	mov.aa	%a4, %SP
	call	conio_ascii_cputs
.LVL191:
	ret
.LFE360:
	.size	conio_ascii_printf, .-conio_ascii_printf
	.align 1
	.global	tft_ascii_bar
	.type	tft_ascii_bar, @function
tft_ascii_bar:
.LFB363:
	.loc 1 593 0
.LVL192:
	.loc 1 595 0
	call	tft_prepare_ascii_line
.LVL193:
	.loc 1 597 0
	mov.a	%a4, 0
	mov	%d4, 3840
	j	tft_flush_row_buff
.LVL194:
.LFE363:
	.size	tft_ascii_bar, .-tft_ascii_bar
	.align 1
	.global	tft_ascii
	.type	tft_ascii, @function
tft_ascii:
.LFB364:
	.loc 1 601 0
.LVL195:
	.loc 1 603 0
	movh.a	%a15, hi:cpy_mode
	st.w	[%a15] lo:cpy_mode, %d4
	.loc 1 607 0
	mov	%d15, 18
	.loc 1 604 0
	movh.a	%a15, hi:cpy_pdisplay
	st.a	[%a15] lo:cpy_pdisplay, %a4
	.loc 1 605 0
	movh.a	%a15, hi:cpy_pdisplaycolor
	st.a	[%a15] lo:cpy_pdisplaycolor, %a5
	.loc 1 607 0
	movh.a	%a15, hi:YROW_cnt
	st.w	[%a15] lo:YROW_cnt, %d15
	.loc 1 609 0
	j	tft_ascii_line_written
.LVL196:
.LFE364:
	.size	tft_ascii, .-tft_ascii
.section .data_cpu1,"awc1",@progbits
	.align 2
	.type	YROW_cnt, @object
	.size	YROW_cnt, 4
YROW_cnt:
	.zero	4
	.align 2
	.type	cpy_pdisplaycolor, @object
	.size	cpy_pdisplaycolor, 4
cpy_pdisplaycolor:
	.zero	4
	.align 2
	.type	cpy_pdisplay, @object
	.size	cpy_pdisplay, 4
cpy_pdisplay:
	.zero	4
	.align 2
	.type	cpy_mode, @object
	.size	cpy_mode, 4
cpy_mode:
	.zero	4
	.global	colortable_ascii
	.align 1
	.type	colortable_ascii, @object
	.size	colortable_ascii, 32
colortable_ascii:
	.short	0
	.short	-1
	.short	-2048
	.short	2016
	.short	-30174
	.short	31
	.short	-2017
	.short	2047
	.short	-12711
	.short	21130
	.short	-3056
	.short	-30832
	.short	-32
	.short	-31714
	.short	-3042
	.short	-30818
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
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.byte	0x4
	.uaword	.LCFI0-.LFB344
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.byte	0x4
	.uaword	.LCFI1-.LFB345
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB346
	.uaword	.LFE346-.LFB346
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB347
	.uaword	.LFE347-.LFB347
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB348
	.uaword	.LFE348-.LFB348
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.byte	0x4
	.uaword	.LCFI2-.LFB359
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.byte	0x4
	.uaword	.LCFI3-.LFB360
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.align 2
.LEFDE60:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 6 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h"
	.file 7 "0_Src/0_AppSw/Tft/conio_tft.h"
	.file 8 "0_Src/0_AppSw/Tft/font_8_12.h"
	.file 9 "0_Src/0_AppSw/Tft/tfthw.h"
	.file 10 "0_Src/0_AppSw/Tft/fifo.h"
	.file 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\string.h"
	.file 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1a27
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tft/libtft_ascii.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x3
	.byte	0xd4
	.uaword	0x185
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
	.byte	0x4
	.byte	0x58
	.uaword	0x1ae
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1ca
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1f6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x16b
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x185
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
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26c
	.uleb128 0x5
	.uaword	0x271
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa
	.uaword	0x2fc
	.uleb128 0x8
	.string	"DIALOGOFF"
	.sleb128 0
	.uleb128 0x8
	.string	"KEYBOARDON"
	.sleb128 1
	.uleb128 0x8
	.string	"SWITCHOFFON"
	.sleb128 2
	.uleb128 0x8
	.string	"SHOWALARMON"
	.sleb128 3
	.uleb128 0x8
	.string	"SETTIMEON"
	.sleb128 4
	.uleb128 0x8
	.string	"SETALARMTIME"
	.sleb128 5
	.uleb128 0x8
	.string	"SLIDESHOW"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"TDIALOGMODE"
	.byte	0x5
	.byte	0x12
	.uaword	0x297
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x23
	.uaword	0x368
	.uleb128 0x8
	.string	"DISPLAYBAR"
	.sleb128 0
	.uleb128 0x8
	.string	"DISPLAYMENU"
	.sleb128 1
	.uleb128 0x8
	.string	"DISPLAYSTDOUT0"
	.sleb128 2
	.uleb128 0x8
	.string	"DISPLAYSTDOUT1"
	.sleb128 3
	.uleb128 0x8
	.string	"DISPLAYGRAPHICS0"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"TDISPLAYMODE"
	.byte	0x5
	.byte	0x29
	.uaword	0x30f
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.uaword	0x3f1
	.uleb128 0x8
	.string	"RAWMODE"
	.sleb128 0
	.uleb128 0x8
	.string	"TEXTMODE"
	.sleb128 1
	.uleb128 0x8
	.string	"GRAPHICMODE_2COLOR"
	.sleb128 2
	.uleb128 0x8
	.string	"GRAPHICMODE_4COLOR"
	.sleb128 3
	.uleb128 0x8
	.string	"GRAPHICMODE_16COLOR"
	.sleb128 4
	.uleb128 0x8
	.string	"GRAPHICMODE_256COLOR"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TMODE"
	.byte	0x5
	.byte	0x35
	.uaword	0x37c
	.uleb128 0x9
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x5
	.byte	0x38
	.uaword	0x473
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x5
	.byte	0x3a
	.uaword	0x473
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x5
	.byte	0x3b
	.uaword	0x473
	.byte	0x4
	.uleb128 0xb
	.string	"mode"
	.byte	0x5
	.byte	0x3c
	.uaword	0x3f1
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x5
	.byte	0x3d
	.uaword	0x1bd
	.byte	0xc
	.uleb128 0xb
	.string	"maxx"
	.byte	0x5
	.byte	0x3e
	.uaword	0x20c
	.byte	0x10
	.uleb128 0xb
	.string	"maxy"
	.byte	0x5
	.byte	0x3f
	.uaword	0x20c
	.byte	0x14
	.uleb128 0xb
	.string	"x"
	.byte	0x5
	.byte	0x40
	.uaword	0x20c
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0x5
	.byte	0x41
	.uaword	0x20c
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1bd
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x5
	.byte	0x42
	.uaword	0x3fe
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x6
	.byte	0x28
	.uaword	0x4a4
	.uleb128 0xc
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x6
	.byte	0x62
	.uaword	0x48e
	.uleb128 0x3
	.string	"TCOLORTABLEASCII"
	.byte	0x7
	.byte	0x80
	.uaword	0x4df
	.uleb128 0xd
	.uaword	0x1e8
	.uaword	0x4ef
	.uleb128 0xe
	.uaword	0x28b
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.uaword	0x1bd
	.uaword	0x4ff
	.uleb128 0xe
	.uaword	0x28b
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x7
	.byte	0x8b
	.uaword	0x5ad
	.uleb128 0xb
	.string	"color_display"
	.byte	0x7
	.byte	0x8d
	.uaword	0x1bd
	.byte	0
	.uleb128 0xb
	.string	"color_select"
	.byte	0x7
	.byte	0x8f
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0xb
	.string	"xmin"
	.byte	0x7
	.byte	0x90
	.uaword	0x1a1
	.byte	0x2
	.uleb128 0xb
	.string	"xmax"
	.byte	0x7
	.byte	0x91
	.uaword	0x1a1
	.byte	0x3
	.uleb128 0xb
	.string	"y"
	.byte	0x7
	.byte	0x92
	.uaword	0x1a1
	.byte	0x4
	.uleb128 0xb
	.string	"select"
	.byte	0x7
	.byte	0x93
	.uaword	0x5c4
	.byte	0x8
	.uleb128 0xb
	.string	"display"
	.byte	0x7
	.byte	0x94
	.uaword	0x5c4
	.byte	0xc
	.uleb128 0xb
	.string	"input"
	.byte	0x7
	.byte	0x95
	.uaword	0x5df
	.byte	0x10
	.uleb128 0xb
	.string	"text"
	.byte	0x7
	.byte	0x96
	.uaword	0x4ef
	.byte	0x14
	.uleb128 0xb
	.string	"symbol"
	.byte	0x7
	.byte	0x97
	.uaword	0x1bd
	.byte	0x3c
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x5be
	.uleb128 0x10
	.uaword	0x20c
	.uleb128 0x10
	.uaword	0x5be
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4ff
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ad
	.uleb128 0x11
	.byte	0x1
	.uaword	0x20c
	.uaword	0x5df
	.uleb128 0x10
	.uaword	0x20c
	.uleb128 0x10
	.uaword	0x5be
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ca
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x7
	.byte	0x98
	.uaword	0x4ff
	.uleb128 0x9
	.string	"CONIO_DRIVER"
	.byte	0xf4
	.byte	0x7
	.byte	0x9d
	.uaword	0x714
	.uleb128 0xb
	.string	"pmenulist"
	.byte	0x7
	.byte	0x9f
	.uaword	0x714
	.byte	0
	.uleb128 0xb
	.string	"pstdlist"
	.byte	0x7
	.byte	0xa0
	.uaword	0x714
	.byte	0x4
	.uleb128 0xb
	.string	"display"
	.byte	0x7
	.byte	0xa1
	.uaword	0x71a
	.byte	0x8
	.uleb128 0xb
	.string	"pdasmirror"
	.byte	0x7
	.byte	0xa2
	.uaword	0x72a
	.byte	0xa8
	.uleb128 0xb
	.string	"dasstatus"
	.byte	0x7
	.byte	0xa3
	.uaword	0x21a
	.byte	0xac
	.uleb128 0xb
	.string	"dasdisplaymode"
	.byte	0x7
	.byte	0xa4
	.uaword	0x368
	.byte	0xb0
	.uleb128 0xb
	.string	"cursorstatus"
	.byte	0x7
	.byte	0xa5
	.uaword	0x20c
	.byte	0xb4
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.byte	0xa6
	.uaword	0x368
	.byte	0xb8
	.uleb128 0xb
	.string	"dialogmode"
	.byte	0x7
	.byte	0xa7
	.uaword	0x2fc
	.byte	0xbc
	.uleb128 0xb
	.string	"scanfdescr"
	.byte	0x7
	.byte	0xa8
	.uaword	0x730
	.byte	0xc0
	.uleb128 0xb
	.string	"scanftext"
	.byte	0x7
	.byte	0xa9
	.uaword	0x730
	.byte	0xd4
	.uleb128 0xb
	.string	"input"
	.byte	0x7
	.byte	0xaa
	.uaword	0x755
	.byte	0xe8
	.uleb128 0xb
	.string	"inputid"
	.byte	0x7
	.byte	0xab
	.uaword	0x20c
	.byte	0xec
	.uleb128 0xb
	.string	"scanfx"
	.byte	0x7
	.byte	0xac
	.uaword	0x1a1
	.byte	0xf0
	.uleb128 0xb
	.string	"blinky"
	.byte	0x7
	.byte	0xad
	.uaword	0x1bd
	.byte	0xf1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5e5
	.uleb128 0xd
	.uaword	0x479
	.uaword	0x72a
	.uleb128 0xe
	.uaword	0x28b
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21a
	.uleb128 0xd
	.uaword	0x1bd
	.uaword	0x740
	.uleb128 0xe
	.uaword	0x28b
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uaword	0x20c
	.uaword	0x755
	.uleb128 0x10
	.uaword	0x20c
	.uleb128 0x10
	.uaword	0x714
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x740
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x7
	.byte	0xae
	.uaword	0x5fa
	.uleb128 0x4
	.byte	0x4
	.uaword	0x271
	.uleb128 0x12
	.string	"tft_ascii_line_written"
	.byte	0x1
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x21a
	.byte	0x1
	.uleb128 0x13
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.byte	0x1
	.string	"conio_ascii_gotoxy"
	.byte	0x1
	.uahalf	0x187
	.byte	0x1
	.byte	0x1
	.uaword	0x7e4
	.uleb128 0x15
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x187
	.uaword	0x368
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x20c
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x20c
	.byte	0
	.uleb128 0x17
	.string	"tft_prepare_ascii_line"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.uaword	.LFB361
	.uaword	.LFE361
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8bc
	.uleb128 0x18
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x214
	.uaword	0x473
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x214
	.uaword	0x473
	.byte	0x1
	.byte	0x65
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x20c
	.uaword	.LLST0
	.uleb128 0x19
	.string	"k"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x20c
	.uaword	.LLST1
	.uleb128 0x19
	.string	"l"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x20c
	.uaword	.LLST2
	.uleb128 0x19
	.string	"ind"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x20c
	.uaword	.LLST3
	.uleb128 0x19
	.string	"buffer_cnt"
	.byte	0x1
	.uahalf	0x217
	.uaword	0x21a
	.uaword	.LLST4
	.uleb128 0x19
	.string	"mask"
	.byte	0x1
	.uahalf	0x219
	.uaword	0x1bd
	.uaword	.LLST5
	.uleb128 0x19
	.string	"color_bgnd"
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x1bd
	.uaword	.LLST6
	.uleb128 0x19
	.string	"color_fgnd"
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x1bd
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1a
	.uaword	0x776
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x90e
	.uleb128 0x1b
	.uaword	.LVL15
	.uaword	0x7e4
	.uleb128 0x1c
	.uaword	.LVL16
	.uaword	0x1983
	.uaword	0x8f7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xf00
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	tft_ascii_line_written
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL17
	.uaword	0x1983
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xf00
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_clrscr"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x977
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0x61
	.uaword	0x368
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	.LVL19
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL20
	.uaword	0x19c7
	.uaword	0x966
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffe2
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL21
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_clreol"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9e0
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6d
	.uaword	0x368
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	.LVL23
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL24
	.uaword	0x19c7
	.uaword	0x9cf
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffe7
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL25
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_textattr"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa5f
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0x78
	.uaword	0x368
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0x78
	.uaword	0x20c
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	.LVL27
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL28
	.uaword	0x19c7
	.uaword	0xa49
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffe8
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL29
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_textcolor"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xadf
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0x84
	.uaword	0x368
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0x84
	.uaword	0x20c
	.uaword	.LLST13
	.uleb128 0x1b
	.uaword	.LVL31
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL32
	.uaword	0x19c7
	.uaword	0xac9
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffe9
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL33
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_textbackground"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb64
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8f
	.uaword	0x368
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8f
	.uaword	0x20c
	.uaword	.LLST15
	.uleb128 0x1b
	.uaword	.LVL35
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL36
	.uaword	0x19c7
	.uaword	0xb4e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffea
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL37
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_textchangebackground"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbef
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0x9a
	.uaword	0x368
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0x9a
	.uaword	0x20c
	.uaword	.LLST17
	.uleb128 0x1b
	.uaword	.LVL39
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL40
	.uaword	0x19c7
	.uaword	0xbd9
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffee
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL41
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_textchangeforeground"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc7a
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa5
	.uaword	0x368
	.uaword	.LLST18
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa5
	.uaword	0x20c
	.uaword	.LLST19
	.uleb128 0x1b
	.uaword	.LVL43
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL44
	.uaword	0x19c7
	.uaword	0xc64
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffef
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL45
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_textchangecolor"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd00
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb0
	.uaword	0x368
	.uaword	.LLST20
	.uleb128 0x20
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb0
	.uaword	0x20c
	.uaword	.LLST21
	.uleb128 0x1b
	.uaword	.LVL47
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL48
	.uaword	0x19c7
	.uaword	0xcea
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2fff0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL49
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_gotoxy"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.uaword	.LFB342
	.uaword	.LFE342
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd9c
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0xbb
	.uaword	0x368
	.uaword	.LLST22
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0xbb
	.uaword	0x20c
	.uaword	.LLST23
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.byte	0xbb
	.uaword	0x20c
	.uaword	.LLST24
	.uleb128 0x1b
	.uaword	.LVL51
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL52
	.uaword	0x19c7
	.uaword	0xd72
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x3fff3
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL53
	.uaword	0x19c7
	.uaword	0xd86
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL54
	.uaword	0x19c7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_cputs"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.uaword	.LFB343
	.uaword	.LFE343
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe5f
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0xc7
	.uaword	0x368
	.uaword	.LLST25
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0xc7
	.uaword	0x473
	.uaword	.LLST26
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xc9
	.uaword	0x20c
	.uaword	.LLST27
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xca
	.uaword	0x20c
	.uaword	.LLST28
	.uleb128 0x22
	.string	"pbuf"
	.byte	0x1
	.byte	0xcb
	.uaword	0x72a
	.uaword	.LLST29
	.uleb128 0x1c
	.uaword	.LVL56
	.uaword	0x19ec
	.uaword	0xe20
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL61
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL63
	.uaword	0x19c7
	.uaword	0xe3f
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 65521
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL64
	.uaword	0x19c7
	.uaword	0xe55
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL67
	.uaword	0x19c7
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"display_ascii_printfxy"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.uaword	.LFB344
	.uaword	.LFE344
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfa4
	.uleb128 0x20
	.uaword	.LASF3
	.byte	0x1
	.byte	0xe0
	.uaword	0x368
	.uaword	.LLST30
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0xe0
	.uaword	0x20c
	.uaword	.LLST31
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.byte	0xe0
	.uaword	0x20c
	.uaword	.LLST32
	.uleb128 0x20
	.uaword	.LASF4
	.byte	0x1
	.byte	0xe0
	.uaword	0xfa4
	.uaword	.LLST33
	.uleb128 0x23
	.uleb128 0x24
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe2
	.uaword	0x20c
	.uaword	.LLST34
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xe2
	.uaword	0x20c
	.uaword	.LLST35
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe3
	.uaword	0xfaf
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.uaword	0x20c
	.uaword	.LLST36
	.uleb128 0x26
	.string	"pbuf"
	.byte	0x1
	.byte	0xe5
	.uaword	0x72a
	.byte	0x1
	.byte	0x6a
	.uleb128 0x22
	.string	"ap"
	.byte	0x1
	.byte	0xe6
	.uaword	0x4b8
	.uaword	.LLST37
	.uleb128 0x1c
	.uaword	.LVL74
	.uaword	0x1a07
	.uaword	0xf3a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL75
	.uaword	0x19ec
	.uaword	0xf4e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL78
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL86
	.uaword	0x19c7
	.uaword	0xf6d
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 65508
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL87
	.uaword	0x19c7
	.uaword	0xf81
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL88
	.uaword	0x19c7
	.uaword	0xf9a
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL92
	.uaword	0x19c7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xfaa
	.uleb128 0x5
	.uaword	0x1bd
	.uleb128 0xd
	.uaword	0x1bd
	.uaword	0xfbf
	.uleb128 0xe
	.uaword	0x28b
	.byte	0x4f
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"display_ascii_printf"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	.LFB345
	.uaword	.LFE345
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10d8
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x102
	.uaword	0x368
	.uaword	.LLST38
	.uleb128 0x28
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x102
	.uaword	0xfa4
	.uaword	.LLST39
	.uleb128 0x23
	.uleb128 0x29
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x104
	.uaword	0x20c
	.uaword	.LLST40
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x20c
	.uaword	.LLST41
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x105
	.uaword	0xfaf
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x20c
	.uaword	.LLST42
	.uleb128 0x2b
	.string	"pbuf"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x72a
	.byte	0x1
	.byte	0x6a
	.uleb128 0x19
	.string	"ap"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x4b8
	.uaword	.LLST43
	.uleb128 0x1c
	.uaword	.LVL98
	.uaword	0x1a07
	.uaword	0x1087
	.uleb128 0x1d
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL99
	.uaword	0x19ec
	.uaword	0x109b
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL102
	.uaword	0x19ab
	.uleb128 0x1c
	.uaword	.LVL110
	.uaword	0x19c7
	.uaword	0x10ba
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 65510
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL111
	.uaword	0x19c7
	.uaword	0x10ce
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL115
	.uaword	0x19c7
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_setcolortable"
	.byte	0x1
	.uahalf	0x124
	.byte	0x1
	.uaword	.LFB346
	.uaword	.LFE346
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1140
	.uleb128 0x2c
	.string	"ind"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x21a
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x21a
	.uaword	.LLST44
	.uleb128 0x2d
	.string	"g"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x21a
	.uaword	.LLST45
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x21a
	.uaword	.LLST46
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_clrscr"
	.byte	0x1
	.uahalf	0x12d
	.byte	0x1
	.uaword	.LFB347
	.uaword	.LFE347
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11a5
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x368
	.uaword	.LLST47
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x20c
	.uaword	.LLST48
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x20c
	.uaword	.LLST49
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB29
	.uaword	.LBE29
	.byte	0x1
	.uahalf	0x134
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_clreol"
	.byte	0x1
	.uahalf	0x140
	.byte	0x1
	.uaword	.LFB348
	.uaword	.LFE348
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11fa
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x140
	.uaword	0x368
	.uaword	.LLST50
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x20c
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB31
	.uaword	.LBE31
	.byte	0x1
	.uahalf	0x146
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_textattr"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1241
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x152
	.uaword	0x368
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x152
	.uaword	0x20c
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_textcolor"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x128b
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x157
	.uaword	0x368
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x157
	.uaword	0x20c
	.uaword	.LLST51
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_textbackground"
	.byte	0x1
	.uahalf	0x15c
	.byte	0x1
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12da
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x368
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x20c
	.uaword	.LLST52
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_textchangebackground"
	.byte	0x1
	.uahalf	0x161
	.byte	0x1
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x133f
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x161
	.uaword	0x368
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x161
	.uaword	0x20c
	.uaword	.LLST53
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB33
	.uaword	.LBE33
	.byte	0x1
	.uahalf	0x166
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_textchangeforeground"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x13a4
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x368
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x20c
	.uaword	.LLST54
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB35
	.uaword	.LBE35
	.byte	0x1
	.uahalf	0x173
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_textchangecolor"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1402
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x368
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x20c
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x180
	.byte	0
	.uleb128 0x1a
	.uaword	0x7a5
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x143c
	.uleb128 0x2f
	.uaword	0x7c3
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	0x7cf
	.byte	0x1
	.byte	0x55
	.uleb128 0x2f
	.uaword	0x7d9
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.uahalf	0x18c
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_cputs"
	.byte	0x1
	.uahalf	0x194
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1546
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x194
	.uaword	0x368
	.uaword	.LLST55
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x473
	.uaword	.LLST56
	.uleb128 0x19
	.string	"xtmp"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x20c
	.uaword	.LLST57
	.uleb128 0x19
	.string	"ytmp"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x20c
	.uaword	.LLST58
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x20c
	.uaword	.LLST59
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.uahalf	0x19b
	.uleb128 0x30
	.uaword	.LBB43
	.uaword	.LBE43
	.uleb128 0x19
	.string	"psrcdisplay"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x72a
	.uaword	.LLST60
	.uleb128 0x19
	.string	"psrcdisplaycolor"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x72a
	.uaword	.LLST61
	.uleb128 0x19
	.string	"pdstdisplay"
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x72a
	.uaword	.LLST62
	.uleb128 0x19
	.string	"pdstdisplaycolor"
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x72a
	.uaword	.LLST63
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x21a
	.uaword	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_putch"
	.byte	0x1
	.uahalf	0x1d1
	.byte	0x1
	.uaword	.LFB357
	.uaword	.LFE357
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x159b
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x368
	.uaword	.LLST65
	.uleb128 0x2c
	.string	"ch"
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x1bd
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.uahalf	0x1d6
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"conio_ascii_cgets"
	.byte	0x1
	.uahalf	0x1eb
	.byte	0x1
	.uaword	0x473
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x15f1
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x368
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x473
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x1ed
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_printfxy"
	.byte	0x1
	.uahalf	0x1f2
	.byte	0x1
	.uaword	.LFB359
	.uaword	.LFE359
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x170b
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x368
	.uaword	.LLST66
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x20c
	.uaword	.LLST67
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x20c
	.uaword	.LLST68
	.uleb128 0x28
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0xfa4
	.uaword	.LLST69
	.uleb128 0x23
	.uleb128 0x29
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x20c
	.uaword	.LLST70
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x20c
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0xfaf
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"ap"
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x4b8
	.uaword	.LLST71
	.uleb128 0x33
	.uaword	0x7a5
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x16d3
	.uleb128 0x34
	.uaword	0x7d9
	.uaword	.LLST72
	.uleb128 0x34
	.uaword	0x7cf
	.uaword	.LLST73
	.uleb128 0x34
	.uaword	0x7c3
	.uaword	.LLST74
	.uleb128 0x2e
	.uaword	0x797
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x18c
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL182
	.uaword	0x1a07
	.uaword	0x16f4
	.uleb128 0x1d
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL185
	.uaword	0x143c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"conio_ascii_printf"
	.byte	0x1
	.uahalf	0x204
	.byte	0x1
	.uaword	.LFB360
	.uaword	.LFE360
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x17c7
	.uleb128 0x28
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x204
	.uaword	0x368
	.uaword	.LLST75
	.uleb128 0x28
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x204
	.uaword	0xfa4
	.uaword	.LLST76
	.uleb128 0x23
	.uleb128 0x29
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x206
	.uaword	0x20c
	.uaword	.LLST77
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.uahalf	0x206
	.uaword	0x20c
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x207
	.uaword	0xfaf
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"ap"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x4b8
	.uaword	.LLST78
	.uleb128 0x1c
	.uaword	.LVL190
	.uaword	0x1a07
	.uaword	0x17b0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL191
	.uaword	0x143c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"tft_ascii_bar"
	.byte	0x1
	.uahalf	0x250
	.byte	0x1
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x183e
	.uleb128 0x28
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x250
	.uaword	0x473
	.uaword	.LLST79
	.uleb128 0x28
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x250
	.uaword	0x473
	.uaword	.LLST80
	.uleb128 0x1c
	.uaword	.LVL193
	.uaword	0x7e4
	.uaword	0x1826
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x35
	.uaword	.LVL194
	.byte	0x1
	.uaword	0x1983
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xf00
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"tft_ascii"
	.byte	0x1
	.uahalf	0x258
	.byte	0x1
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1899
	.uleb128 0x2d
	.string	"mode"
	.byte	0x1
	.uahalf	0x258
	.uaword	0x3f1
	.uaword	.LLST81
	.uleb128 0x28
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x258
	.uaword	0x473
	.uaword	.LLST82
	.uleb128 0x28
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x258
	.uaword	0x473
	.uaword	.LLST83
	.uleb128 0x36
	.uaword	.LVL196
	.byte	0x1
	.uaword	0x776
	.byte	0
	.uleb128 0x26
	.string	"cpy_mode"
	.byte	0x1
	.byte	0x47
	.uaword	0x3f1
	.byte	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uleb128 0x26
	.string	"cpy_pdisplay"
	.byte	0x1
	.byte	0x48
	.uaword	0x473
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uleb128 0x26
	.string	"cpy_pdisplaycolor"
	.byte	0x1
	.byte	0x49
	.uaword	0x473
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplaycolor
	.uleb128 0x26
	.string	"YROW_cnt"
	.byte	0x1
	.byte	0x4b
	.uaword	0x21a
	.byte	0x5
	.byte	0x3
	.uaword	YROW_cnt
	.uleb128 0xd
	.uaword	0x1bd
	.uaword	0x190f
	.uleb128 0x37
	.uaword	0x28b
	.uahalf	0xbff
	.byte	0
	.uleb128 0x38
	.string	"__font_bitmap__8_12"
	.byte	0x8
	.byte	0xe
	.uaword	0x192c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x18fe
	.uleb128 0xd
	.uaword	0x1e8
	.uaword	0x193c
	.uleb128 0x39
	.byte	0
	.uleb128 0x38
	.string	"Row_Buff"
	.byte	0x9
	.byte	0x17
	.uaword	0x1931
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.string	"conio_driver"
	.byte	0x7
	.byte	0xc9
	.uaword	0x75b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"colortable_ascii"
	.byte	0x1
	.byte	0x3f
	.uaword	0x4c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	colortable_ascii
	.uleb128 0x3b
	.byte	0x1
	.string	"tft_flush_row_buff"
	.byte	0x9
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uaword	0x19ab
	.uleb128 0x10
	.uaword	0x279
	.uleb128 0x10
	.uaword	0x21a
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.string	"FIFO_DISPLAY_FREE"
	.byte	0xa
	.byte	0x11
	.byte	0x1
	.uaword	0x20c
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"PUT_FIFO_DISPLAY"
	.byte	0xa
	.byte	0xf
	.byte	0x1
	.uaword	0x20c
	.byte	0x1
	.uaword	0x19ec
	.uleb128 0x10
	.uaword	0x21a
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"strlen"
	.byte	0xb
	.byte	0x22
	.byte	0x1
	.uaword	0x177
	.byte	0x1
	.uaword	0x1a07
	.uleb128 0x10
	.uaword	0x266
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"vsprintf"
	.byte	0xc
	.byte	0xc4
	.byte	0x1
	.uaword	0x19a
	.byte	0x1
	.uleb128 0x10
	.uaword	0x770
	.uleb128 0x10
	.uaword	0x266
	.uleb128 0x10
	.uaword	0x279
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
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
	.uleb128 0x25
	.uleb128 0x34
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2-.Ltext0
	.uaword	.LFE361-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL1-.Ltext0
	.uaword	.LFE361-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0xb
	.byte	0x84
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0xb
	.byte	0x84
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE361-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LFE361-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19-1-.Ltext0
	.uaword	.LFE334-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23-1-.Ltext0
	.uaword	.LFE335-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27-1-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27-1-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35-1-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL35-1-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39-1-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL39-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL39-1-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL43-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51-1-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51-1-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL51-1-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL56-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL56-1-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL56-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56-1-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL69-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL74-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL74-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL73-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL74-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL75-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL74-1-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL92-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL92-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL98-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL98-1-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL97-.Ltext0
	.uaword	.LVL98-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL98-1-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL99-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL101-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL105-.Ltext0
	.uaword	.LVL106-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL107-.Ltext0
	.uaword	.LVL108-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL109-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL112-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL115-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL115-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL98-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL98-1-.Ltext0
	.uaword	.LVL113-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL115-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL115-1-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL123-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL118-.Ltext0
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL119-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL119-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL117-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL120-.Ltext0
	.uahalf	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL122-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL122-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL124-.Ltext0
	.uaword	.LVL125-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL125-.Ltext0
	.uaword	.LFE347-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL129-.Ltext0
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL130-.Ltext0
	.uaword	.LFE347-.Ltext0
	.uahalf	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL131-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL132-.Ltext0
	.uaword	.LFE348-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL136-.Ltext0
	.uaword	.LVL137-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL137-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL139-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL139-.Ltext0
	.uaword	.LFE351-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL141-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL153-.Ltext0
	.uaword	.LFE356-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL155-.Ltext0
	.uaword	.LFE356-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL157-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL157-.Ltext0
	.uaword	.LVL159-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL172-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL174-.Ltext0
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL174-.Ltext0
	.uaword	.LFE356-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL154-.Ltext0
	.uaword	.LVL160-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL171-.Ltext0
	.uaword	.LFE356-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL151-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL172-.Ltext0
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL174-.Ltext0
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL168-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL162-.Ltext0
	.uaword	.LVL164-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL164-.Ltext0
	.uaword	.LVL166-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL166-.Ltext0
	.uaword	.LVL167-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL165-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 -36
	.byte	0x9f
	.uaword	.LVL165-.Ltext0
	.uaword	.LVL168-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 -40
	.byte	0x9f
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL162-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL164-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -40
	.byte	0x9f
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x3
	.byte	0x82
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL170-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL162-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL175-.Ltext0
	.uaword	.LVL176-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL176-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL182-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL182-1-.Ltext0
	.uaword	.LFE359-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL182-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL182-1-.Ltext0
	.uaword	.LFE359-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL182-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL182-1-.Ltext0
	.uaword	.LFE359-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL181-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL181-.Ltext0
	.uaword	.LVL182-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL182-1-.Ltext0
	.uaword	.LFE359-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL182-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL179-.Ltext0
	.uaword	.LVL180-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL180-.Ltext0
	.uaword	.LVL182-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL182-1-.Ltext0
	.uaword	.LFE359-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL190-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL190-1-.Ltext0
	.uaword	.LFE360-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL186-.Ltext0
	.uaword	.LVL189-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL189-.Ltext0
	.uaword	.LVL190-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL190-1-.Ltext0
	.uaword	.LFE360-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL191-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL188-.Ltext0
	.uaword	.LVL190-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL190-1-.Ltext0
	.uaword	.LFE360-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL193-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL193-1-.Ltext0
	.uaword	.LFE363-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL193-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL193-1-.Ltext0
	.uaword	.LFE363-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL195-.Ltext0
	.uaword	.LVL196-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL196-1-.Ltext0
	.uaword	.LFE364-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL195-.Ltext0
	.uaword	.LVL196-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL196-1-.Ltext0
	.uaword	.LFE364-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL195-.Ltext0
	.uaword	.LVL196-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL196-1-.Ltext0
	.uaword	.LFE364-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
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
.LASF1:
	.string	"pdisplaycolor"
.LASF2:
	.string	"color"
.LASF5:
	.string	"result"
.LASF4:
	.string	"format"
.LASF0:
	.string	"pdisplay"
.LASF3:
	.string	"displaymode"
.LASF6:
	.string	"buffer"
	.extern	conio_driver,STT_OBJECT,244
	.extern	vsprintf,STT_FUNC,0
	.extern	strlen,STT_FUNC,0
	.extern	PUT_FIFO_DISPLAY,STT_FUNC,0
	.extern	FIFO_DISPLAY_FREE,STT_FUNC,0
	.extern	tft_flush_row_buff,STT_FUNC,0
	.extern	Row_Buff,STT_OBJECT,-1
	.extern	__font_bitmap__8_12,STT_OBJECT,3072
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
