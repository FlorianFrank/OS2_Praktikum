	.file	"libtft_graphics.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	tft_graphics_lines_written, @function
tft_graphics_lines_written:
.LFB357:
	.file 1 "0_Src/0_AppSw/Tft/libtft_graphics.c"
	.loc 1 709 0
	.loc 1 711 0
	movh.a	%a15, hi:cpy_pdisplay
	ld.a	%a4, [%a15] lo:cpy_pdisplay
.LVL0:
	movh.a	%a15, hi:cpy_mode
.LBB28:
.LBB29:
	.loc 1 625 0
	movh.a	%a7, hi:YSIZE_cnt
	.loc 1 627 0
	ld.w	%d15, [%a15] lo:cpy_mode
	.loc 1 625 0
	ld.w	%d6, [%a7] lo:YSIZE_cnt
	mov	%d5, 320
	.loc 1 627 0
	add	%d15, -2
	.loc 1 625 0
	mul	%d5, %d6
.LVL1:
	.loc 1 627 0
	jge.u	%d15, 4, .L2
	movh.a	%a15, hi:.L4
	lea	%a15, [%a15] lo:.L4
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L4:
	.code32
	j	.L27
	.code32
	j	.L28
	.code32
	j	.L29
	.code32
	j	.L30
.L30:
	movh.a	%a2, hi:Row_Buff
	movh.a	%a15, hi:colortable_graphics
	addsc.a	%a4, %a4, %d5, 0
.LVL2:
	mov	%d15, 1
	lea	%a2, [%a2] lo:Row_Buff
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 692 0
	lea	%a3, 3839
.LVL3:
.L7:
.LBB30:
	.loc 1 695 0
	addsc.a	%a5, %a4, %d15, 0
	.loc 1 697 0
	addsc.a	%a6, %a2, %d15, 1
	.loc 1 695 0
	ld.bu	%d2, [%a5] -1
.LVL4:
	.loc 1 697 0
	addsc.a	%a5, %a15, %d2, 1
.LVL5:
	ld.h	%d2, [%a5]0
	.loc 1 696 0
	jnz.t	%d15, 0, .L23
	.loc 1 697 0
	st.h	[%a6] -4, %d2
.LVL6:
.L24:
	add	%d15, 1
.LVL7:
.LBE30:
	.loc 1 692 0
	loop	%a3, .L7
.LVL8:
.L2:
.LBE29:
.LBE28:
	.loc 1 713 0
	addi	%d15, %d6, 12
	st.w	[%a7] lo:YSIZE_cnt, %d15
	.loc 1 715 0
	lt.u	%d15, %d15, 217
	jz	%d15, .L37
.L25:
	.loc 1 725 0
	movh.a	%a4, hi:tft_graphics_lines_written
	lea	%a4, [%a4] lo:tft_graphics_lines_written
	mov	%d4, 3840
	call	tft_flush_row_buff
.LVL9:
	.loc 1 728 0
	mov	%d2, 0
	ret
.LVL10:
.L29:
	movh.a	%a2, hi:Row_Buff
	movh.a	%a15, hi:colortable_graphics
.LBB44:
.LBB42:
	.loc 1 627 0
	mov	%d15, 0
	lea	%a2, [%a2] lo:Row_Buff
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 676 0
	lea	%a3, 3839
.LVL11:
.L6:
	add	%d2, %d15, %d5
.LVL12:
.LBB31:
	.loc 1 680 0
	sha	%d2, -1
.LVL13:
	addsc.a	%a5, %a4, %d2, 0
	ld.bu	%d2, [%a5]0
	.loc 1 679 0
	jz.t	%d15, 0, .L21
	.loc 1 680 0
	and	%d2, %d2, 15
.LVL14:
.L22:
	.loc 1 684 0
	addsc.a	%a5, %a15, %d2, 1
	addsc.a	%a6, %a2, %d15, 1
	ld.h	%d2, [%a5]0
.LVL15:
	st.h	[%a6]0, %d2
.LVL16:
.LBE31:
	.loc 1 676 0
	add	%d15, 1
.LVL17:
	loop	%a3, .L6
.LBE42:
.LBE44:
	.loc 1 713 0
	addi	%d15, %d6, 12
.LVL18:
	st.w	[%a7] lo:YSIZE_cnt, %d15
	.loc 1 715 0
	lt.u	%d15, %d15, 217
	jnz	%d15, .L25
.LVL19:
.L37:
.LBB45:
.LBB46:
	.loc 1 719 0
	mov.a	%a4, 0
	mov	%d4, 3840
	call	tft_flush_row_buff
.LVL20:
.LBE46:
.LBE45:
	.loc 1 728 0
	mov	%d2, 0
	ret
.LVL21:
.L28:
	movh.a	%a2, hi:Row_Buff
	movh.a	%a15, hi:colortable_graphics
.LBB47:
.LBB43:
	.loc 1 627 0
	mov	%d2, 0
	lea	%a2, [%a2] lo:Row_Buff
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 658 0
	lea	%a3, 3839
.LVL22:
.L5:
	add	%d3, %d2, %d5
.LVL23:
.LBB32:
	.loc 1 662 0
	sha	%d3, -2
.LVL24:
	.loc 1 661 0
	and	%d15, %d2, 3
	.loc 1 662 0
	addsc.a	%a5, %a4, %d3, 0
	.loc 1 661 0
	jnz	%d15, .L16
.LVL25:
	.loc 1 662 0
	ld.bu	%d15, [%a5]0
	and	%d15, %d15, 3
.LVL26:
.L17:
	.loc 1 670 0
	addsc.a	%a5, %a15, %d15, 1
	addsc.a	%a6, %a2, %d2, 1
	ld.h	%d15, [%a5]0
.LVL27:
	st.h	[%a6]0, %d15
.LVL28:
.LBE32:
	.loc 1 658 0
	add	%d2, 1
.LVL29:
	loop	%a3, .L5
	j	.L2
.LVL30:
.L27:
	movh.a	%a2, hi:Row_Buff
	movh.a	%a15, hi:colortable_graphics
	.loc 1 627 0
	mov	%d2, 0
	lea	%a2, [%a2] lo:Row_Buff
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 631 0
	lea	%a3, 3839
.LVL31:
.L3:
.LBB33:
	.loc 1 634 0
	and	%d15, %d2, 15
	add	%d4, %d2, %d5
.LVL32:
	jnz	%d15, .L8
.LVL33:
	.loc 1 635 0
	sha	%d4, -1
.LVL34:
	addsc.a	%a5, %a4, %d4, 0
.LVL35:
	ld.bu	%d3, [%a5]0
	and	%d3, %d3, 1
.LVL36:
.L9:
	.loc 1 651 0
	addsc.a	%a5, %a15, %d3, 1
	addsc.a	%a6, %a2, %d2, 1
	ld.h	%d15, [%a5]0
	st.h	[%a6]0, %d15
.LVL37:
.LBE33:
	.loc 1 631 0
	add	%d2, 1
.LVL38:
	loop	%a3, .L3
	j	.L2
.LVL39:
.L16:
.LBB34:
	.loc 1 663 0
	jeq	%d15, 1, .L38
	.loc 1 665 0
	jeq	%d15, 2, .L39
	.loc 1 668 0
	ld.bu	%d15, [%a5]0
	sh	%d15, -6
.LVL40:
	j	.L17
.LVL41:
.L21:
.LBE34:
.LBB35:
	.loc 1 682 0
	sh	%d2, -4
.LVL42:
	j	.L22
.LVL43:
.L23:
.LBE35:
.LBB36:
	.loc 1 699 0
	st.h	[%a6]0, %d2
	j	.L24
.LVL44:
.L8:
.LBE36:
.LBB37:
	.loc 1 636 0
	jeq	%d15, 1, .L40
	.loc 1 638 0
	jeq	%d15, 2, .L41
	.loc 1 640 0
	jeq	%d15, 3, .L42
	.loc 1 642 0
	jeq	%d15, 4, .L43
	.loc 1 644 0
	jeq	%d15, 5, .L44
	.loc 1 646 0
	jeq	%d15, 6, .L45
	.loc 1 648 0
	mov	%d3, 0
	jne	%d15, 7, .L9
.LVL45:
	.loc 1 649 0
	sha	%d4, -1
.LVL46:
	addsc.a	%a5, %a4, %d4, 0
.LVL47:
	ld.bu	%d3, [%a5]0
	sh	%d3, -7
	j	.L9
.LVL48:
.L38:
.LBE37:
.LBB38:
	.loc 1 664 0
	ld.bu	%d15, [%a5]0
	extr.u	%d15, %d15, 2, 2
.LVL49:
	j	.L17
.LVL50:
.L40:
.LBE38:
.LBB39:
	.loc 1 637 0
	sha	%d4, -1
.LVL51:
	addsc.a	%a5, %a4, %d4, 0
	ld.bu	%d3, [%a5]0
	extr.u	%d3, %d3, 1, 1
	j	.L9
.LVL52:
.L41:
	.loc 1 639 0
	sha	%d4, -1
.LVL53:
	addsc.a	%a5, %a4, %d4, 0
	ld.bu	%d3, [%a5]0
	extr.u	%d3, %d3, 2, 1
	j	.L9
.LVL54:
.L39:
.LBE39:
.LBB40:
	.loc 1 666 0
	ld.bu	%d15, [%a5]0
	extr.u	%d15, %d15, 4, 2
.LVL55:
	j	.L17
.LVL56:
.L42:
.LBE40:
.LBB41:
	.loc 1 641 0
	sha	%d4, -1
.LVL57:
	addsc.a	%a5, %a4, %d4, 0
	ld.bu	%d3, [%a5]0
	extr.u	%d3, %d3, 3, 1
	j	.L9
.LVL58:
.L43:
	.loc 1 643 0
	sha	%d4, -1
.LVL59:
	addsc.a	%a5, %a4, %d4, 0
	ld.bu	%d3, [%a5]0
	extr.u	%d3, %d3, 4, 1
	j	.L9
.LVL60:
.L44:
	.loc 1 645 0
	sha	%d4, -1
.LVL61:
	addsc.a	%a5, %a4, %d4, 0
	ld.bu	%d3, [%a5]0
	extr.u	%d3, %d3, 5, 1
	j	.L9
.LVL62:
.L45:
	.loc 1 647 0
	sha	%d4, -1
.LVL63:
	addsc.a	%a5, %a4, %d4, 0
	ld.bu	%d3, [%a5]0
	extr.u	%d3, %d3, 6, 1
	j	.L9
.LBE41:
.LBE43:
.LBE47:
.LFE357:
	.size	tft_graphics_lines_written, .-tft_graphics_lines_written
	.align 1
	.global	display_graphics_clrscr
	.type	display_graphics_clrscr, @function
display_graphics_clrscr:
.LFB334:
	.loc 1 112 0
.LVL64:
	.loc 1 112 0
	mov	%d15, %d4
	.loc 1 113 0
	call	FIFO_DISPLAY_FREE
.LVL65:
	jge	%d2, 3, .L48
	ret
.L48:
	.loc 1 115 0
#APP
	# 115 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 116 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -29
	call	PUT_FIFO_DISPLAY
.LVL66:
	.loc 1 117 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
.LVL67:
	.loc 1 118 0
#APP
	# 118 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE334:
	.size	display_graphics_clrscr, .-display_graphics_clrscr
	.align 1
	.global	display_graphics_textattr
	.type	display_graphics_textattr, @function
display_graphics_textattr:
.LFB335:
	.loc 1 124 0
.LVL68:
	.loc 1 124 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 125 0
	call	FIFO_DISPLAY_FREE
.LVL69:
	jge	%d2, 3, .L51
	ret
.L51:
	.loc 1 127 0
#APP
	# 127 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 128 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -21
	call	PUT_FIFO_DISPLAY
.LVL70:
	.loc 1 129 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL71:
	.loc 1 130 0
#APP
	# 130 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE335:
	.size	display_graphics_textattr, .-display_graphics_textattr
	.align 1
	.global	display_graphics_textcolor
	.type	display_graphics_textcolor, @function
display_graphics_textcolor:
.LFB336:
	.loc 1 136 0
.LVL72:
	.loc 1 136 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 137 0
	call	FIFO_DISPLAY_FREE
.LVL73:
	jge	%d2, 3, .L54
	ret
.L54:
	.loc 1 139 0
#APP
	# 139 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 140 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -20
	call	PUT_FIFO_DISPLAY
.LVL74:
	.loc 1 141 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL75:
	.loc 1 142 0
#APP
	# 142 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE336:
	.size	display_graphics_textcolor, .-display_graphics_textcolor
	.align 1
	.global	display_graphics_textbackground
	.type	display_graphics_textbackground, @function
display_graphics_textbackground:
.LFB337:
	.loc 1 147 0
.LVL76:
	.loc 1 147 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 148 0
	call	FIFO_DISPLAY_FREE
.LVL77:
	jge	%d2, 3, .L57
	ret
.L57:
	.loc 1 150 0
#APP
	# 150 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 151 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -19
	call	PUT_FIFO_DISPLAY
.LVL78:
	.loc 1 152 0
	sh	%d4, %d15, 16
	add	%d4, %d8
	call	PUT_FIFO_DISPLAY
.LVL79:
	.loc 1 153 0
#APP
	# 153 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE337:
	.size	display_graphics_textbackground, .-display_graphics_textbackground
	.align 1
	.global	display_graphics_gotoxy
	.type	display_graphics_gotoxy, @function
display_graphics_gotoxy:
.LFB338:
	.loc 1 158 0
.LVL80:
	.loc 1 158 0
	mov	%d15, %d4
	mov	%e8, %d6, %d5
	.loc 1 159 0
	call	FIFO_DISPLAY_FREE
.LVL81:
	jge	%d2, 4, .L60
	ret
.L60:
	.loc 1 161 0
#APP
	# 161 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 162 0
#NO_APP
	movh	%d4, 4
	addi	%d4, %d4, -12
	call	PUT_FIFO_DISPLAY
.LVL82:
	.loc 1 163 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
.LVL83:
	.loc 1 164 0
	sh	%d4, %d8, 16
	add	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL84:
	.loc 1 165 0
#APP
	# 165 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE338:
	.size	display_graphics_gotoxy, .-display_graphics_gotoxy
	.align 1
	.global	display_graphics_cputs
	.type	display_graphics_cputs, @function
display_graphics_cputs:
.LFB339:
	.loc 1 170 0
.LVL85:
	.loc 1 170 0
	mov	%d9, %d4
	mov.aa	%a15, %a4
	.loc 1 174 0
	call	strlen
.LVL86:
	.loc 1 175 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jnz	%d3, .L62
	.loc 1 178 0
	or	%d8, %d2, 3
.LVL87:
	add	%d8, 1
.LVL88:
	sha	%d8, -2
.LVL89:
	.loc 1 177 0
	and	%d3, %d2, 3
	add	%d15, %d8, 2
	jz	%d3, .L71
.LVL90:
.L62:
	.loc 1 181 0
	call	FIFO_DISPLAY_FREE
.LVL91:
	jlt	%d15, %d2, .L72
	ret
.L72:
	.loc 1 183 0
#APP
	# 183 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 184 0
#NO_APP
	sh	%d15, %d15, 16
.LVL92:
	addi	%d4, %d15, -10
	addih	%d4, %d4, 1
	call	PUT_FIFO_DISPLAY
.LVL93:
	.loc 1 185 0
	sh	%d4, %d9, 16
	call	PUT_FIFO_DISPLAY
.LVL94:
	.loc 1 187 0
	mov	%d15, 0
	jlez	%d8, .L67
.LVL95:
.L69:
	.loc 1 188 0 discriminator 3
	ld.w	%d4, [%a15+]4
	.loc 1 187 0 discriminator 3
	add	%d15, 1
.LVL96:
	.loc 1 188 0 discriminator 3
	call	PUT_FIFO_DISPLAY
.LVL97:
	.loc 1 187 0 discriminator 3
	jne	%d15, %d8, .L69
.LVL98:
.L67:
	.loc 1 189 0
#APP
	# 189 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LVL99:
.L71:
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L62
.LFE339:
	.size	display_graphics_cputs, .-display_graphics_cputs
	.align 1
	.global	display_graphics_printfxy
	.type	display_graphics_printfxy, @function
display_graphics_printfxy:
.LFB340:
	.loc 1 195 0
.LVL100:
	sub.a	%SP, 80
.LCFI0:
.LVL101:
	.loc 1 195 0
	mov.aa	%a5, %a4
	.loc 1 202 0
	lea	%a6, [%SP] 80
.LVL102:
	mov.aa	%a4, %SP
.LVL103:
	.loc 1 195 0
	mov	%d9, %d4
	mov	%e10, %d6, %d5
	.loc 1 202 0
	call	vsprintf
.LVL104:
	.loc 1 204 0
	jltz	%d2, .L73
	.loc 1 206 0
	mov.aa	%a4, %SP
	call	strlen
.LVL105:
	add	%d2, 1
.LVL106:
	.loc 1 207 0
	ge	%d3, %d2, 41
	mov	%d15, 13
	mov	%d8, 10
	jz	%d3, .L85
.LVL107:
.L75:
	.loc 1 213 0
	call	FIFO_DISPLAY_FREE
.LVL108:
	jlt	%d15, %d2, .L86
.LVL109:
.L73:
	ret
.LVL110:
.L85:
	.loc 1 210 0
	or	%d8, %d2, 3
.LVL111:
	add	%d8, 1
.LVL112:
	sha	%d8, -2
.LVL113:
	.loc 1 209 0
	and	%d3, %d2, 3
	add	%d15, %d8, 3
	jnz	%d3, .L75
	sha	%d8, %d2, -2
	add	%d15, %d8, 3
	j	.L75
.LVL114:
.L86:
	.loc 1 215 0
#APP
	# 215 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 216 0
#NO_APP
	sh	%d15, %d15, 16
.LVL115:
	addi	%d4, %d15, -27
	addih	%d4, %d4, 1
	call	PUT_FIFO_DISPLAY
.LVL116:
	.loc 1 217 0
	mov	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL117:
	.loc 1 218 0
	sh	%d4, %d10, 16
	add	%d4, %d11
	call	PUT_FIFO_DISPLAY
.LVL118:
	.loc 1 220 0
	mov	%d15, 0
	jlez	%d8, .L79
.LVL119:
.L83:
	.loc 1 221 0 discriminator 3
	lea	%a2, [%SP] 80
.LVL120:
	addsc.a	%a15, %a2, %d15, 2
	.loc 1 220 0 discriminator 3
	add	%d15, 1
.LVL121:
	.loc 1 221 0 discriminator 3
	ld.w	%d4, [%a15] -80
	call	PUT_FIFO_DISPLAY
.LVL122:
	.loc 1 220 0 discriminator 3
	jne	%d15, %d8, .L83
.LVL123:
.L79:
	.loc 1 222 0
#APP
	# 222 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE340:
	.size	display_graphics_printfxy, .-display_graphics_printfxy
	.align 1
	.global	display_graphics_printf
	.type	display_graphics_printf, @function
display_graphics_printf:
.LFB341:
	.loc 1 227 0
.LVL124:
	sub.a	%SP, 80
.LCFI1:
.LVL125:
	.loc 1 227 0
	mov.aa	%a5, %a4
	.loc 1 234 0
	lea	%a6, [%SP] 80
.LVL126:
	mov.aa	%a4, %SP
.LVL127:
	.loc 1 227 0
	mov	%d9, %d4
	.loc 1 234 0
	call	vsprintf
.LVL128:
	.loc 1 236 0
	jltz	%d2, .L87
	.loc 1 238 0
	mov.aa	%a4, %SP
	call	strlen
.LVL129:
	.loc 1 239 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jz	%d3, .L99
.LVL130:
.L89:
	.loc 1 245 0
	call	FIFO_DISPLAY_FREE
.LVL131:
	jlt	%d15, %d2, .L100
.LVL132:
.L87:
	ret
.LVL133:
.L99:
	.loc 1 242 0
	or	%d8, %d2, 3
.LVL134:
	add	%d8, 1
.LVL135:
	sha	%d8, -2
.LVL136:
	.loc 1 241 0
	and	%d3, %d2, 3
	add	%d15, %d8, 2
	jnz	%d3, .L89
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L89
.LVL137:
.L100:
	.loc 1 247 0
#APP
	# 247 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 248 0
#NO_APP
	sh	%d15, %d15, 16
.LVL138:
	addi	%d4, %d15, -11
	addih	%d4, %d4, 1
	call	PUT_FIFO_DISPLAY
.LVL139:
	.loc 1 249 0
	mov	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL140:
	.loc 1 251 0
	mov	%d15, 0
	jlez	%d8, .L93
.LVL141:
.L97:
	.loc 1 252 0 discriminator 3
	lea	%a2, [%SP] 80
.LVL142:
	addsc.a	%a15, %a2, %d15, 2
	.loc 1 251 0 discriminator 3
	add	%d15, 1
.LVL143:
	.loc 1 252 0 discriminator 3
	ld.w	%d4, [%a15] -80
	call	PUT_FIFO_DISPLAY
.LVL144:
	.loc 1 251 0 discriminator 3
	jne	%d15, %d8, .L97
.LVL145:
.L93:
	.loc 1 253 0
#APP
	# 253 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE341:
	.size	display_graphics_printf, .-display_graphics_printf
	.align 1
	.global	display_graphics_line
	.type	display_graphics_line, @function
display_graphics_line:
.LFB342:
	.loc 1 258 0
.LVL146:
	.loc 1 258 0
	mov	%d15, %d4
	mov	%d9, %d5
	mov	%d10, %d6
	mov	%d8, %d7
	.loc 1 259 0
	call	FIFO_DISPLAY_FREE
.LVL147:
	jge	%d2, 5, .L103
	ret
.L103:
	.loc 1 261 0
#APP
	# 261 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 262 0
#NO_APP
	movh	%d4, 5
	addi	%d4, %d4, -31
	call	PUT_FIFO_DISPLAY
.LVL148:
	.loc 1 263 0
	ld.bu	%d4, [%SP] 4
	insert	%d4, %d15, %d4, 16, 16
	call	PUT_FIFO_DISPLAY
.LVL149:
	.loc 1 264 0
	insert	%d4, %d9, %d10, 16, 16
	call	PUT_FIFO_DISPLAY
.LVL150:
	.loc 1 265 0
	ld.w	%d4, [%SP]0
	insert	%d4, %d8, %d4, 16, 16
	call	PUT_FIFO_DISPLAY
.LVL151:
	.loc 1 266 0
#APP
	# 266 "0_Src/0_AppSw/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE342:
	.size	display_graphics_line, .-display_graphics_line
	.align 1
	.global	conio_graphics_setcolortable
	.type	conio_graphics_setcolortable, @function
conio_graphics_setcolortable:
.LFB343:
	.loc 1 272 0
.LVL152:
	.loc 1 274 0
	sh	%d6, -2
.LVL153:
	.loc 1 277 0
	sh	%d6, 5
.LVL154:
	.loc 1 275 0
	sh	%d7, -3
.LVL155:
	.loc 1 273 0
	sh	%d5, -3
.LVL156:
	.loc 1 277 0
	movh.a	%a15, hi:colortable_graphics
	or	%d7, %d6
.LVL157:
	sh	%d5, %d5, 11
.LVL158:
	lea	%a15, [%a15] lo:colortable_graphics
	or	%d5, %d7
	addsc.a	%a15, %a15, %d4, 1
	st.h	[%a15]0, %d5
	ret
.LFE343:
	.size	conio_graphics_setcolortable, .-conio_graphics_setcolortable
	.align 1
	.global	conio_graphics_clrscr
	.type	conio_graphics_clrscr, @function
conio_graphics_clrscr:
.LFB344:
	.loc 1 281 0
.LVL159:
	.loc 1 284 0
	movh.a	%a3, hi:conio_driver
	lea	%a3, [%a3] lo:conio_driver
	sh	%d4, 5
.LVL160:
	addsc.a	%a15, %a3, %d4, 0
	ld.w	%d15, [%a15] 16
	add	%d15, -2
	jlt.u	%d15, 4, .L122
.LBB48:
.LBB49:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	ret
.L122:
.LBE49:
.LBE48:
	.loc 1 284 0
	movh.a	%a15, hi:.L108
	lea	%a15, [%a15] lo:.L108
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 310 0
	addsc.a	%a3, %a3, %d4, 0
	.loc 1 284 0
	mov.a	%a2, 0
	.loc 1 310 0
	lea	%a3, [%a3] 8
	mov	%d15, 0
	.loc 1 284 0
	ji	%a15
	.align 2
	.align 2
.L108:
	.code32
	j	.L114
	.code32
	j	.L115
	.code32
	j	.L116
	.code32
	j	.L117
.L116:
	.loc 1 301 0
	movh.a	%a15, 1
	lea	%a15, [%a15] -29057
.L110:
.LVL161:
	.loc 1 303 0 discriminator 3
	ld.a	%a4, [%a3]0
	add.a	%a4, %a2
	st.b	[%a4]0, %d15
	.loc 1 301 0 discriminator 3
	add.a	%a2, 1
.LVL162:
	loop	%a15, .L110
	ret
.LVL163:
.L115:
	.loc 1 294 0
	mov.a	%a15, 0
	lea	%a15, [%a15] 18239
.L109:
.LVL164:
	.loc 1 296 0 discriminator 3
	ld.a	%a4, [%a3]0
	add.a	%a4, %a2
	st.b	[%a4]0, %d15
	.loc 1 294 0 discriminator 3
	add.a	%a2, 1
.LVL165:
	loop	%a15, .L109
	ret
.LVL166:
.L114:
	.loc 1 288 0
	lea	%a15, 9119
.L107:
.LVL167:
	.loc 1 290 0 discriminator 3
	ld.a	%a4, [%a3]0
	add.a	%a4, %a2
	st.b	[%a4]0, %d15
	.loc 1 288 0 discriminator 3
	add.a	%a2, 1
.LVL168:
	loop	%a15, .L107
	ret
.LVL169:
.L117:
	.loc 1 308 0
	movh.a	%a15, 1
	lea	%a15, [%a15] 7423
.L111:
.LVL170:
	.loc 1 310 0 discriminator 3
	ld.a	%a4, [%a3]0
	add.a	%a4, %a2
	st.b	[%a4]0, %d15
	.loc 1 308 0 discriminator 3
	add.a	%a2, 1
.LVL171:
	loop	%a15, .L111
	ret
.LFE344:
	.size	conio_graphics_clrscr, .-conio_graphics_clrscr
	.align 1
	.global	conio_graphics_textattr
	.type	conio_graphics_textattr, @function
conio_graphics_textattr:
.LFB345:
	.loc 1 321 0
.LVL172:
	.loc 1 322 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	st.b	[%a15] 20, %d5
	ret
.LFE345:
	.size	conio_graphics_textattr, .-conio_graphics_textattr
	.align 1
	.global	conio_graphics_textcolor
	.type	conio_graphics_textcolor, @function
conio_graphics_textcolor:
.LFB346:
	.loc 1 327 0
.LVL173:
	.loc 1 328 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 0, 4
.LVL174:
	st.b	[%a15] 20, %d5
	ret
.LFE346:
	.size	conio_graphics_textcolor, .-conio_graphics_textcolor
	.align 1
	.global	conio_graphics_textbackground
	.type	conio_graphics_textbackground, @function
conio_graphics_textbackground:
.LFB347:
	.loc 1 332 0
.LVL175:
	.loc 1 333 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 4, 32-4
.LVL176:
	st.b	[%a15] 20, %d5
	ret
.LFE347:
	.size	conio_graphics_textbackground, .-conio_graphics_textbackground
	.align 1
	.global	conio_graphics_gotoxy
	.type	conio_graphics_gotoxy, @function
conio_graphics_gotoxy:
.LFB348:
	.loc 1 337 0
.LVL177:
	.loc 1 338 0
	movh	%d2, hi:conio_driver
	addi	%d2, %d2, lo:conio_driver
	mov.a	%a2, %d2
	sh	%d3, %d4, 5
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d15, [%a15] 16
	jlt.u	%d15, 2, .L129
.L127:
	.loc 1 343 0
	mov	%d7, 320
	ge	%d15, %d5, %d7
	or.ge	%d15, %d6, 228
	jnz	%d15, .L126
	.loc 1 345 0
	madd	%d15, %d2, %d4, 32
	.loc 1 346 0
	mov.a	%a2, %d2
	.loc 1 345 0
	mov.a	%a15, %d15
	st.w	[%a15] 32, %d5
	.loc 1 346 0
	addsc.a	%a15, %a2, %d3, 0
	st.w	[%a15] 36, %d6
.L126:
	ret
.L129:
.LBB50:
.LBB51:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L127
.LBE51:
.LBE50:
.LFE348:
	.size	conio_graphics_gotoxy, .-conio_graphics_gotoxy
	.align 1
	.global	conio_graphics_set_opt
	.type	conio_graphics_set_opt, @function
conio_graphics_set_opt:
.LFB352:
	.loc 1 414 0
.LVL178:
	.loc 1 417 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	.loc 1 418 0
	lt.u	%d15, %d5, 321
	.loc 1 417 0
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 8
.LVL179:
	.loc 1 418 0
	jz	%d15, .L130
	.loc 1 421 0
	ge.u	%d15, %d6, 229
	jnz	%d15, .L130
	.loc 1 424 0
	ld.w	%d15, [%a15] 16
	add	%d15, -2
	jlt.u	%d15, 4, .L145
.LBB54:
.LBB55:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L130:
	ret
.L145:
.LBE55:
.LBE54:
	.loc 1 424 0
	movh.a	%a15, hi:.L136
	lea	%a15, [%a15] lo:.L136
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 453 0
	mov	%d15, 320
	madd	%d5, %d5, %d6, %d15
.LVL180:
	.loc 1 424 0
	ji	%a15
	.align 2
	.align 2
.L136:
	.code32
	j	.L135
	.code32
	j	.L137
	.code32
	j	.L138
	.code32
	j	.L139
.L138:
.LVL181:
	.loc 1 446 0
	jnz.t	%d5, 0, .L144
	.loc 1 447 0
	sha	%d5, -1
.LVL182:
	addsc.a	%a2, %a2, %d5, 0
.LVL183:
	ld.bu	%d15, [%a2]0
.LVL184:
	insert	%d7, %d15, %d7, 0, 4
.LVL185:
	st.b	[%a2]0, %d7
.LVL186:
	ret
.LVL187:
.L137:
	.loc 1 435 0
	and	%d15, %d5, 3
	.loc 1 436 0
	sha	%d5, -2
.LVL188:
	addsc.a	%a2, %a2, %d5, 0
.LVL189:
	.loc 1 435 0
	jz	%d15, .L146
	.loc 1 437 0
	jne	%d15, 1, .L142
	.loc 1 438 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 2, 2
.LVL190:
	st.b	[%a2]0, %d7
.LVL191:
	ret
.LVL192:
.L135:
	.loc 1 429 0
	sha	%d15, %d5, -3
	addsc.a	%a2, %a2, %d15, 0
.LVL193:
	and	%d5, %d5, 15
.LVL194:
	ld.bu	%d15, [%a2]0
	.loc 1 428 0
	jnz	%d7, .L140
	.loc 1 429 0
	insert	%d5, %d15, 0, %d5, 1
	st.b	[%a2]0, %d5
.LVL195:
	ret
.LVL196:
.L139:
	.loc 1 453 0
	addsc.a	%a2, %a2, %d5, 0
.LVL197:
	st.b	[%a2]0, %d7
.LVL198:
	.loc 1 454 0
	ret
.LVL199:
.L140:
	.loc 1 431 0
	insert	%d5, %d15, 1, %d5, 1
	st.b	[%a2]0, %d5
.LVL200:
	ret
.LVL201:
.L146:
	.loc 1 436 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 0, 2
.LVL202:
	st.b	[%a2]0, %d7
.LVL203:
	ret
.LVL204:
.L144:
	.loc 1 449 0
	sha	%d5, -1
.LVL205:
	addsc.a	%a2, %a2, %d5, 0
.LVL206:
	ld.bu	%d15, [%a2]0
.LVL207:
	insert	%d7, %d15, %d7, 4, 32-4
.LVL208:
	st.b	[%a2]0, %d7
.LVL209:
	ret
.LVL210:
.L142:
	.loc 1 439 0
	jne	%d15, 2, .L143
	.loc 1 440 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 4, 2
.LVL211:
	st.b	[%a2]0, %d7
.LVL212:
	ret
.LVL213:
.L143:
	.loc 1 442 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 6, 32-6
.LVL214:
	st.b	[%a2]0, %d7
.LVL215:
	ret
.LFE352:
	.size	conio_graphics_set_opt, .-conio_graphics_set_opt
	.align 1
	.global	conio_graphics_line
	.type	conio_graphics_line, @function
conio_graphics_line:
.LFB353:
	.loc 1 465 0
.LVL216:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 476 0
	ld.w	%d3, [%SP] 8
	.loc 1 475 0
	sub	%d7, %d5
.LVL217:
	.loc 1 465 0
	ld.bu	%d2, [%SP] 12
	.loc 1 476 0
	sub	%d3, %d6
.LVL218:
	mov	%d13, 1
	.loc 1 482 0
	jltz	%d7, .L188
.LVL219:
.L148:
	mov	%d12, 1
	.loc 1 492 0
	jltz	%d3, .L189
.LVL220:
.L149:
	.loc 1 500 0
	sh	%d1, %d7, 1
.LVL221:
	.loc 1 501 0
	sh	%d8, %d3, 1
.LVL222:
	.loc 1 504 0
	jge	%d3, %d7, .L150
.LBB64:
.LBB65:
	.loc 1 438 0
	sh	%d3, %d2, 2
.LVL223:
	and	%d3, %d3, 12
.LBE65:
.LBE64:
	.loc 1 507 0
	sub	%d15, %d8, %d7
.LVL224:
	addi	%d10, %d7, 1
.LBB75:
.LBB68:
	.loc 1 438 0
	st.w	[%SP] 4, %d3
	movh	%d7, hi:conio_driver
.LVL225:
	.loc 1 440 0
	sh	%d3, %d2, 4
	extr	%d3, %d3, 0, 8
	addi	%d7, %d7, lo:conio_driver
	.loc 1 417 0
	madd	%d4, %d7, %d4, 32
.LVL226:
	.loc 1 440 0
	mov.a	%a5, %d3
	and	%d3, %d3, 48
	mov.a	%a14, %d3
	.loc 1 442 0
	sh	%d3, %d2, 6
	.loc 1 417 0
	mov.a	%a2, %d4
	.loc 1 442 0
	extr	%d3, %d3, 0, 8
	.loc 1 447 0
	and	%d4, %d2, 15
	.loc 1 436 0
	and	%d7, %d2, 3
	.loc 1 424 0
	movh.a	%a6, hi:.L156
	.loc 1 447 0
	mov.a	%a12, %d4
	.loc 1 436 0
	mov.a	%a7, %d7
	.loc 1 442 0
	mov.a	%a13, %d3
.LBE68:
.LBE75:
	.loc 1 503 0
	mov	%d11, 0
	.loc 1 509 0
	mov	%d3, 0
.LBB76:
.LBB69:
	.loc 1 417 0
	lea	%a15, [%a2] 8
	.loc 1 424 0
	lea	%a3, [%a2] 16
	lea	%a6, [%a6] lo:.L156
	.loc 1 453 0
	mov	%d14, 320
.LVL227:
.L166:
	.loc 1 418 0
	lt.u	%d7, %d5, 321
	.loc 1 417 0
	ld.a	%a2, [%a15]0
.LVL228:
	.loc 1 418 0
	jz	%d7, .L152
.LBE69:
.LBE76:
	.loc 1 511 0
	add	%d0, %d6, %d11
.LBB77:
.LBB70:
	.loc 1 421 0
	ge.u	%d9, %d0, 229
	jnz	%d9, .L152
	.loc 1 424 0
	ld.w	%d9, [%a3]0
	add	%d9, -2
	jlt.u	%d9, 4, .L190
.LBB66:
.LBB67:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
.LVL229:
#NO_APP
.L152:
.LBE67:
.LBE66:
.LBE70:
.LBE77:
	.loc 1 512 0
	jltz	%d15, .L165
	.loc 1 514 0
	sub	%d15, %d1
.LVL230:
	.loc 1 516 0
	add	%d11, %d12
.LVL231:
.L165:
	.loc 1 509 0 discriminator 2
	add	%d3, 1
.LVL232:
	.loc 1 518 0 discriminator 2
	add	%d15, %d8
.LVL233:
	add	%d5, %d13
.LVL234:
	.loc 1 509 0 discriminator 2
	jne	%d3, %d10, .L166
	ret
.LVL235:
.L190:
.LBB78:
.LBB71:
	.loc 1 424 0
	addsc.a	%a4, %a6, %d9, 2
	.loc 1 453 0
	madd	%d0, %d5, %d0, %d14
	.loc 1 424 0
	ji	%a4
	.align 2
	.align 2
.L156:
	.code32
	j	.L155
	.code32
	j	.L157
	.code32
	j	.L158
	.code32
	j	.L159
.LVL236:
.L150:
.LBE71:
.LBE78:
.LBB79:
.LBB80:
	.loc 1 438 0
	sh	%d7, %d2, 2
.LVL237:
	and	%d7, %d7, 12
	mov	%d10, 320
	mul	%d14, %d12, %d10
	st.w	[%SP] 4, %d7
	.loc 1 440 0
	sh	%d7, %d2, 4
	extr	%d7, %d7, 0, 8
	mul	%d10, %d6
	mov.a	%a5, %d7
	and	%d7, %d7, 48
	mov.a	%a14, %d7
	.loc 1 442 0
	sh	%d7, %d2, 6
	extr	%d7, %d7, 0, 8
	.loc 1 424 0
	movh.a	%a6, hi:.L172
	.loc 1 442 0
	mov.a	%a13, %d7
	movh	%d7, hi:conio_driver
	addi	%d7, %d7, lo:conio_driver
	.loc 1 417 0
	madd	%d4, %d7, %d4, 32
.LVL238:
	.loc 1 436 0
	and	%d7, %d2, 3
	mov.a	%a7, %d7
	.loc 1 417 0
	mov.a	%a2, %d4
	.loc 1 447 0
	and	%d4, %d2, 15
	mov.a	%a12, %d4
.LBE80:
.LBE79:
	.loc 1 526 0
	sub	%d15, %d1, %d3
.LVL239:
	addi	%d9, %d3, 1
	.loc 1 502 0
	mov	%d11, 0
	.loc 1 528 0
	mov	%d3, 0
.LVL240:
.LBB88:
.LBB83:
	.loc 1 417 0
	lea	%a15, [%a2] 8
	.loc 1 424 0
	lea	%a3, [%a2] 16
	lea	%a6, [%a6] lo:.L172
.LVL241:
.L182:
.LBE83:
.LBE88:
	.loc 1 530 0
	add	%d0, %d5, %d11
.LVL242:
.LBB89:
.LBB84:
	.loc 1 418 0
	lt.u	%d7, %d0, 321
	.loc 1 417 0
	ld.a	%a2, [%a15]0
.LVL243:
	.loc 1 418 0
	jz	%d7, .L168
	.loc 1 421 0
	ge.u	%d7, %d6, 229
	jnz	%d7, .L168
	.loc 1 424 0
	ld.w	%d7, [%a3]0
	add	%d7, -2
	jlt.u	%d7, 4, .L191
.LBB81:
.LBB82:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
.LVL244:
#NO_APP
.L168:
.LBE82:
.LBE81:
.LBE84:
.LBE89:
	.loc 1 531 0
	jltz	%d15, .L181
	.loc 1 533 0
	sub	%d15, %d8
.LVL245:
	.loc 1 534 0
	add	%d11, %d13
.LVL246:
.L181:
	.loc 1 528 0 discriminator 2
	add	%d3, 1
.LVL247:
	.loc 1 536 0 discriminator 2
	add	%d15, %d1
.LVL248:
	add	%d10, %d14
	add	%d6, %d12
	.loc 1 528 0 discriminator 2
	jne	%d3, %d9, .L182
	ret
.LVL249:
.L191:
.LBB90:
.LBB85:
	.loc 1 424 0
	addsc.a	%a4, %a6, %d7, 2
	ji	%a4
	.align 2
	.align 2
.L172:
	.code32
	j	.L171
	.code32
	j	.L173
	.code32
	j	.L174
	.code32
	j	.L175
.L174:
	.loc 1 445 0
	add	%d0, %d10
.LVL250:
	.loc 1 446 0
	jnz.t	%d0, 0, .L180
	.loc 1 447 0
	sha	%d0, -1
.LVL251:
	addsc.a	%a2, %a2, %d0, 0
.LVL252:
	mov.d	%d7, %a12
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-16)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL253:
	j	.L168
.LVL254:
.L173:
	.loc 1 434 0
	add	%d0, %d10
.LVL255:
	.loc 1 435 0
	and	%d4, %d0, 3
	.loc 1 436 0
	sha	%d0, -2
.LVL256:
	addsc.a	%a2, %a2, %d0, 0
.LVL257:
	.loc 1 435 0
	jz	%d4, .L192
	.loc 1 437 0
	jne	%d4, 1, .L178
	.loc 1 438 0
	ld.bu	%d4, [%a2]0
	ld.w	%d7, [%SP] 4
	andn	%d4, %d4, ~(-13)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL258:
	j	.L168
.LVL259:
.L171:
	.loc 1 427 0
	add	%d0, %d10
.LVL260:
	.loc 1 429 0
	sha	%d4, %d0, -3
	addsc.a	%a2, %a2, %d4, 0
.LVL261:
	and	%d0, %d0, 15
.LVL262:
	ld.bu	%d4, [%a2]0
	.loc 1 428 0
	jnz	%d2, .L176
	.loc 1 429 0
	insert	%d0, %d4, 0, %d0, 1
	st.b	[%a2]0, %d0
.LVL263:
	j	.L168
.LVL264:
.L175:
	.loc 1 453 0
	addsc.a	%a2, %a2, %d0, 0
.LVL265:
	addsc.a	%a2, %a2, %d10, 0
	st.b	[%a2]0, %d2
.LVL266:
	j	.L168
.LVL267:
.L158:
.LBE85:
.LBE90:
.LBB91:
.LBB72:
	.loc 1 446 0
	jnz.t	%d0, 0, .L164
	.loc 1 447 0
	sha	%d0, -1
.LVL268:
	addsc.a	%a2, %a2, %d0, 0
.LVL269:
	mov.d	%d7, %a12
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-16)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL270:
	j	.L152
.LVL271:
.L157:
	.loc 1 435 0
	and	%d4, %d0, 3
	.loc 1 436 0
	sha	%d0, -2
.LVL272:
	addsc.a	%a2, %a2, %d0, 0
.LVL273:
	.loc 1 435 0
	jz	%d4, .L193
	.loc 1 437 0
	jne	%d4, 1, .L162
	.loc 1 438 0
	ld.bu	%d4, [%a2]0
	ld.w	%d7, [%SP] 4
	andn	%d4, %d4, ~(-13)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL274:
	j	.L152
.LVL275:
.L155:
	.loc 1 429 0
	sha	%d4, %d0, -3
	addsc.a	%a2, %a2, %d4, 0
.LVL276:
	and	%d0, %d0, 15
.LVL277:
	ld.bu	%d4, [%a2]0
	.loc 1 428 0
	jnz	%d2, .L160
	.loc 1 429 0
	insert	%d0, %d4, 0, %d0, 1
	st.b	[%a2]0, %d0
.LVL278:
	j	.L152
.LVL279:
.L159:
	.loc 1 453 0
	addsc.a	%a2, %a2, %d0, 0
.LVL280:
	st.b	[%a2]0, %d2
.LVL281:
	j	.L152
.LVL282:
.L189:
.LBE72:
.LBE91:
	.loc 1 496 0
	rsub	%d3
.LVL283:
	.loc 1 495 0
	mov	%d12, -1
	j	.L149
.LVL284:
.L188:
	.loc 1 485 0
	rsub	%d7
.LVL285:
	.loc 1 484 0
	mov	%d13, -1
	j	.L148
.LVL286:
.L160:
.LBB92:
.LBB73:
	.loc 1 431 0
	insert	%d0, %d4, 1, %d0, 1
	st.b	[%a2]0, %d0
.LVL287:
	j	.L152
.LVL288:
.L193:
	.loc 1 436 0
	ld.bu	%d4, [%a2]0
	mov.d	%d7, %a7
	andn	%d4, %d4, ~(-4)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL289:
	j	.L152
.LVL290:
.L164:
	.loc 1 449 0
	sha	%d0, -1
.LVL291:
	addsc.a	%a2, %a2, %d0, 0
.LVL292:
	mov.d	%d7, %a5
	ld.bu	%d4, [%a2]0
	and	%d4, %d4, 15
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL293:
	j	.L152
.LVL294:
.L176:
.LBE73:
.LBE92:
.LBB93:
.LBB86:
	.loc 1 431 0
	insert	%d0, %d4, 1, %d0, 1
	st.b	[%a2]0, %d0
.LVL295:
	j	.L168
.LVL296:
.L192:
	.loc 1 436 0
	ld.bu	%d4, [%a2]0
	mov.d	%d7, %a7
	andn	%d4, %d4, ~(-4)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL297:
	j	.L168
.LVL298:
.L180:
	.loc 1 449 0
	sha	%d0, -1
.LVL299:
	addsc.a	%a2, %a2, %d0, 0
.LVL300:
	mov.d	%d7, %a5
	ld.bu	%d4, [%a2]0
	and	%d4, %d4, 15
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL301:
	j	.L168
.LVL302:
.L162:
.LBE86:
.LBE93:
.LBB94:
.LBB74:
	.loc 1 439 0
	jne	%d4, 2, .L163
	.loc 1 440 0
	ld.bu	%d4, [%a2]0
	mov.d	%d7, %a14
	andn	%d4, %d4, ~(-49)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL303:
	j	.L152
.LVL304:
.L163:
	.loc 1 442 0
	ld.bu	%d4, [%a2]0
	mov.d	%d7, %a13
	and	%d4, %d4, 63
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL305:
	j	.L152
.LVL306:
.L178:
.LBE74:
.LBE94:
.LBB95:
.LBB87:
	.loc 1 439 0
	jne	%d4, 2, .L179
	.loc 1 440 0
	ld.bu	%d4, [%a2]0
	mov.d	%d7, %a14
	andn	%d4, %d4, ~(-49)
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL307:
	j	.L168
.LVL308:
.L179:
	.loc 1 442 0
	ld.bu	%d4, [%a2]0
	mov.d	%d7, %a13
	and	%d4, %d4, 63
	or	%d4, %d7
	st.b	[%a2]0, %d4
.LVL309:
	j	.L168
.LBE87:
.LBE95:
.LFE353:
	.size	conio_graphics_line, .-conio_graphics_line
	.align 1
	.global	conio_graphics_set
	.type	conio_graphics_set, @function
conio_graphics_set:
.LFB354:
	.loc 1 545 0
.LVL310:
	.loc 1 548 0
	movh.a	%a15, hi:conio_driver
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	.loc 1 549 0
	lt.u	%d15, %d5, 321
	.loc 1 548 0
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 8
.LVL311:
	.loc 1 549 0
	jz	%d15, .L194
	.loc 1 552 0
	ge.u	%d15, %d6, 229
	jnz	%d15, .L194
	.loc 1 555 0
	ld.w	%d15, [%a15] 16
	add	%d15, -2
	jlt.u	%d15, 4, .L209
.LBB96:
.LBB97:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L194:
	ret
.L209:
.LBE97:
.LBE96:
	.loc 1 555 0
	movh.a	%a15, hi:.L200
	lea	%a15, [%a15] lo:.L200
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 584 0
	mov	%d15, 320
	madd	%d5, %d5, %d6, %d15
.LVL312:
	.loc 1 555 0
	ji	%a15
	.align 2
	.align 2
.L200:
	.code32
	j	.L199
	.code32
	j	.L201
	.code32
	j	.L202
	.code32
	j	.L203
.L202:
.LVL313:
	.loc 1 577 0
	jnz.t	%d5, 0, .L208
	.loc 1 578 0
	sha	%d5, -1
.LVL314:
	addsc.a	%a2, %a2, %d5, 0
.LVL315:
	ld.bu	%d15, [%a2]0
.LVL316:
	insert	%d7, %d15, %d7, 0, 4
.LVL317:
	st.b	[%a2]0, %d7
.LVL318:
	ret
.LVL319:
.L201:
	.loc 1 566 0
	and	%d15, %d5, 3
	.loc 1 567 0
	sha	%d5, -2
.LVL320:
	addsc.a	%a2, %a2, %d5, 0
.LVL321:
	.loc 1 566 0
	jz	%d15, .L210
	.loc 1 568 0
	jne	%d15, 1, .L206
	.loc 1 569 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 2, 2
.LVL322:
	st.b	[%a2]0, %d7
.LVL323:
	ret
.LVL324:
.L199:
	.loc 1 560 0
	sha	%d15, %d5, -3
	addsc.a	%a2, %a2, %d15, 0
.LVL325:
	and	%d5, %d5, 15
.LVL326:
	ld.bu	%d15, [%a2]0
	.loc 1 559 0
	jnz	%d7, .L204
	.loc 1 560 0
	insert	%d5, %d15, 0, %d5, 1
	st.b	[%a2]0, %d5
.LVL327:
	ret
.LVL328:
.L203:
	.loc 1 584 0
	addsc.a	%a2, %a2, %d5, 0
.LVL329:
	st.b	[%a2]0, %d7
.LVL330:
	.loc 1 585 0
	ret
.LVL331:
.L204:
	.loc 1 562 0
	insert	%d5, %d15, 1, %d5, 1
	st.b	[%a2]0, %d5
.LVL332:
	ret
.LVL333:
.L210:
	.loc 1 567 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 0, 2
.LVL334:
	st.b	[%a2]0, %d7
.LVL335:
	ret
.LVL336:
.L208:
	.loc 1 580 0
	sha	%d5, -1
.LVL337:
	addsc.a	%a2, %a2, %d5, 0
.LVL338:
	ld.bu	%d15, [%a2]0
.LVL339:
	insert	%d7, %d15, %d7, 4, 32-4
.LVL340:
	st.b	[%a2]0, %d7
.LVL341:
	ret
.LVL342:
.L206:
	.loc 1 570 0
	jne	%d15, 2, .L207
	.loc 1 571 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 4, 2
.LVL343:
	st.b	[%a2]0, %d7
.LVL344:
	ret
.LVL345:
.L207:
	.loc 1 573 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 6, 32-6
.LVL346:
	st.b	[%a2]0, %d7
.LVL347:
	ret
.LFE354:
	.size	conio_graphics_set, .-conio_graphics_set
	.align 1
	.global	conio_graphics_char
	.type	conio_graphics_char, @function
conio_graphics_char:
.LFB355:
	.loc 1 597 0
.LVL348:
	sub.a	%SP, 24
.LCFI3:
.LVL349:
	.loc 1 597 0
	ld.bu	%d2, [%SP] 24
.LBB106:
.LBB107:
	.loc 1 417 0
	movh	%d1, hi:conio_driver
.LBE107:
.LBE106:
	.loc 1 613 0
	sh	%d12, %d2, -4
.LBB120:
.LBB110:
	.loc 1 438 0
	sh	%d15, %d12, 2
	and	%d15, %d15, 12
.LBE110:
.LBE120:
	.loc 1 609 0
	and	%d11, %d2, 15
.LBB121:
.LBB111:
	.loc 1 417 0
	addi	%d1, %d1, lo:conio_driver
	.loc 1 438 0
	st.w	[%SP] 12, %d15
	.loc 1 440 0
	sh	%d15, %d12, 4
	extr	%d14, %d15, 0, 8
	.loc 1 436 0
	extr	%d15, %d12, 0, 8
	.loc 1 440 0
	and	%d3, %d14, 48
	.loc 1 417 0
	madd	%d4, %d1, %d4, 32
.LVL350:
	mov	%d0, 320
	.loc 1 440 0
	st.w	[%SP] 16, %d3
	.loc 1 436 0
	and	%d3, %d15, 3
	mov.a	%a14, %d3
	.loc 1 442 0
	sh	%d3, %d12, 6
	extr	%d3, %d3, 0, 8
	.loc 1 447 0
	mov.a	%a13, %d15
	mul	%d0, %d6
	.loc 1 417 0
	mov.a	%a15, %d4
	.loc 1 442 0
	st.w	[%SP] 20, %d3
.LBE111:
.LBE121:
.LBB122:
.LBB123:
	.loc 1 440 0
	sh	%d3, %d11, 4
	extr	%d13, %d3, 0, 8
	.loc 1 438 0
	sh	%d3, %d11, 2
	and	%d3, %d3, 12
	.loc 1 440 0
	and	%d15, %d13, 48
	.loc 1 436 0
	and	%d2, %d11, 3
	.loc 1 438 0
	st.w	[%SP]0, %d3
	.loc 1 442 0
	sh	%d3, %d11, 6
	extr	%d3, %d3, 0, 8
	mul	%d7, %d7, 12
.LVL351:
	movh.a	%a7, hi:__font_bitmap__8_12
.LBE123:
.LBE122:
.LBB132:
.LBB112:
	.loc 1 424 0
	movh.a	%a6, hi:.L230
.LBE112:
.LBE132:
.LBB133:
.LBB124:
	movh.a	%a5, hi:.L219
	.loc 1 436 0
	mov.a	%a12, %d2
	.loc 1 440 0
	st.w	[%SP] 4, %d15
	.loc 1 442 0
	st.w	[%SP] 8, %d3
	addi	%d10, %d0, 3840
	addi	%d9, %d6, 12
	lea	%a7, [%a7] lo:__font_bitmap__8_12
	addi	%d8, %d5, 8
.LBE124:
.LBE133:
.LBB134:
.LBB113:
	.loc 1 417 0
	lea	%a3, [%a15] 8
	.loc 1 424 0
	lea	%a4, [%a15] 16
	lea	%a6, [%a6] lo:.L230
.LBE113:
.LBE134:
.LBB135:
.LBB125:
	lea	%a5, [%a5] lo:.L219
.LVL352:
.L212:
.LBE125:
.LBE135:
	.loc 1 607 0
	addsc.a	%a15, %a7, %d7, 0
	mov	%d3, %d5
	ld.bu	%d0, [%a15]0
	.loc 1 597 0
	mov	%d4, 128
.LBB136:
.LBB114:
	.loc 1 421 0
	ge.u	%d1, %d9, 229
.LVL353:
.L239:
.LBE114:
.LBE136:
	.loc 1 607 0
	and	%d15, %d4, %d0
.LBB137:
.LBB126:
	.loc 1 417 0
	ld.a	%a2, [%a3]0
.LBE126:
.LBE137:
	.loc 1 607 0
	jz	%d15, .L213
.LVL354:
.LBB138:
.LBB127:
	.loc 1 418 0
	lt.u	%d15, %d3, 321
	jz	%d15, .L215
	.loc 1 421 0
	jnz	%d1, .L215
	.loc 1 424 0
	ld.w	%d15, [%a4]0
	add	%d15, -2
	jlt.u	%d15, 4, .L243
.LVL355:
.L228:
.LBE127:
.LBE138:
.LBB139:
.LBB115:
.LBB108:
.LBB109:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L215:
	add	%d3, 1
.LBE109:
.LBE108:
.LBE115:
.LBE139:
	.loc 1 615 0 discriminator 2
	sh	%d4, -1
.LVL356:
	.loc 1 605 0 discriminator 2
	jne	%d3, %d8, .L239
	add	%d9, -1
	addi	%d10, %d10, -320
	add	%d7, 1
	.loc 1 602 0 discriminator 2
	jne	%d6, %d9, .L212
	ret
.LVL357:
.L243:
.LBB140:
.LBB128:
	.loc 1 424 0
	addsc.a	%a15, %a5, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L219:
	.code32
	j	.L218
	.code32
	j	.L220
	.code32
	j	.L221
	.code32
	j	.L222
.L218:
	add	%d15, %d3, %d10
.LVL358:
	.loc 1 429 0
	sha	%d2, %d15, -3
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 428 0
	jnz	%d11, .L234
.LVL359:
.L242:
.LBE128:
.LBE140:
.LBB141:
.LBB116:
	.loc 1 429 0
	ld.bu	%d2, [%a15]0
	and	%d15, %d15, 15
	insert	%d15, %d2, 0, %d15, 1
	st.b	[%a15]0, %d15
	j	.L215
.LVL360:
.L221:
	add	%d15, %d3, %d10
.LVL361:
.LBE116:
.LBE141:
.LBB142:
.LBB129:
	.loc 1 446 0
	jnz.t	%d15, 0, .L227
	.loc 1 447 0
	sha	%d15, -1
.LVL362:
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-16)
	or	%d15, %d11
	st.b	[%a15]0, %d15
	j	.L215
.LVL363:
.L222:
	.loc 1 453 0
	addsc.a	%a15, %a2, %d3, 0
	addsc.a	%a15, %a15, %d10, 0
	st.b	[%a15]0, %d11
	j	.L215
.LVL364:
.L220:
	add	%d2, %d3, %d10
.LVL365:
	.loc 1 435 0
	and	%d15, %d2, 3
	.loc 1 436 0
	sha	%d2, -2
.LVL366:
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 435 0
	jnz	%d15, .L224
	.loc 1 436 0
	ld.bu	%d15, [%a15]0
	mov.d	%d2, %a12
	andn	%d15, %d15, ~(-4)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.LVL367:
.L213:
.LBE129:
.LBE142:
.LBB143:
.LBB117:
	.loc 1 418 0
	ge.u	%d15, %d3, 321
	jnz	%d15, .L215
	.loc 1 421 0
	jnz	%d1, .L215
	.loc 1 424 0
	ld.w	%d15, [%a4]0
	add	%d15, -2
	jge.u	%d15, 4, .L228
	addsc.a	%a15, %a6, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L230:
	.code32
	j	.L229
	.code32
	j	.L231
	.code32
	j	.L232
	.code32
	j	.L233
.L232:
	add	%d15, %d3, %d10
.LVL368:
	.loc 1 446 0
	jnz.t	%d15, 0, .L238
	.loc 1 447 0
	sha	%d15, -1
.LVL369:
	addsc.a	%a15, %a2, %d15, 0
	mov.d	%d2, %a13
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-16)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.LVL370:
.L231:
	add	%d2, %d3, %d10
.LVL371:
	.loc 1 435 0
	and	%d15, %d2, 3
	.loc 1 436 0
	sha	%d2, -2
.LVL372:
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 435 0
	jnz	%d15, .L235
	.loc 1 436 0
	ld.bu	%d15, [%a15]0
	mov.d	%d2, %a14
	andn	%d15, %d15, ~(-4)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.LVL373:
.L229:
	add	%d15, %d3, %d10
.LVL374:
	.loc 1 429 0
	sha	%d2, %d15, -3
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 428 0
	jz	%d12, .L242
.LVL375:
.L234:
	.loc 1 431 0
	and	%d2, %d15, 15
	ld.bu	%d15, [%a15]0
	insert	%d15, %d15, 1, %d2, 1
	st.b	[%a15]0, %d15
	j	.L215
.LVL376:
.L233:
	.loc 1 453 0
	addsc.a	%a15, %a2, %d3, 0
	addsc.a	%a15, %a15, %d10, 0
	st.b	[%a15]0, %d12
	j	.L215
.L235:
	.loc 1 437 0
	jne	%d15, 1, .L236
	.loc 1 438 0
	ld.bu	%d15, [%a15]0
	ld.w	%d2, [%SP] 12
	andn	%d15, %d15, ~(-13)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.LVL377:
.L224:
.LBE117:
.LBE143:
.LBB144:
.LBB130:
	.loc 1 437 0
	jne	%d15, 1, .L225
	.loc 1 438 0
	ld.bu	%d15, [%a15]0
	ld.w	%d2, [%SP]0
	andn	%d15, %d15, ~(-13)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.LVL378:
.L238:
.LBE130:
.LBE144:
.LBB145:
.LBB118:
	.loc 1 449 0
	sha	%d15, -1
.LVL379:
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d15, [%a15]0
	and	%d15, %d15, 15
	or	%d15, %d14
	st.b	[%a15]0, %d15
	j	.L215
.LVL380:
.L227:
.LBE118:
.LBE145:
.LBB146:
.LBB131:
	sha	%d15, -1
.LVL381:
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d15, [%a15]0
	and	%d15, %d15, 15
	or	%d15, %d13
	st.b	[%a15]0, %d15
	j	.L215
.L225:
	.loc 1 439 0
	jne	%d15, 2, .L226
	.loc 1 440 0
	ld.bu	%d15, [%a15]0
	ld.w	%d2, [%SP] 4
	andn	%d15, %d15, ~(-49)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.L226:
	.loc 1 442 0
	ld.bu	%d15, [%a15]0
	ld.w	%d2, [%SP] 8
	and	%d15, %d15, 63
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.LVL382:
.L236:
.LBE131:
.LBE146:
.LBB147:
.LBB119:
	.loc 1 439 0
	jne	%d15, 2, .L237
	.loc 1 440 0
	ld.bu	%d15, [%a15]0
	ld.w	%d2, [%SP] 16
	andn	%d15, %d15, ~(-49)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.L237:
	.loc 1 442 0
	ld.bu	%d15, [%a15]0
	ld.w	%d2, [%SP] 20
	and	%d15, %d15, 63
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L215
.LBE119:
.LBE147:
.LFE355:
	.size	conio_graphics_char, .-conio_graphics_char
	.align 1
	.global	conio_graphics_cputs
	.type	conio_graphics_cputs, @function
conio_graphics_cputs:
.LFB349:
	.loc 1 350 0
.LVL383:
	.loc 1 353 0
	movh	%d2, hi:conio_driver
	addi	%d2, %d2, lo:conio_driver
	mov.a	%a2, %d2
	sh	%d3, %d4, 5
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 350 0
	mov	%d15, %d4
	.loc 1 353 0
	ld.w	%d4, [%a15] 16
.LVL384:
	.loc 1 350 0
	sub.a	%SP, 8
.LCFI4:
	.loc 1 353 0
	jlt.u	%d4, 2, .L251
.L245:
	.loc 1 362 0
	add	%d4, %d15, 1
	mov.a	%a2, %d2
	lea	%a15, [%a4] 1
	madd	%d5, %d2, %d4, 32
	addsc.a	%a13, %a2, %d3, 0
	.loc 1 358 0
	ld.bu	%d7, [%a15] -1
	.loc 1 362 0
	lea	%a14, [%a13] 36
	mov.a	%a12, %d5
	lea	%a13, [%a13] 20
	.loc 1 366 0
	mov	%d8, 320
	.loc 1 358 0
	jz	%d7, .L252
.LVL385:
.L249:
	.loc 1 360 0
	jge.u	%d7, 14, .L253
	add.a	%a15, 1
.L255:
.LVL386:
	.loc 1 358 0
	ld.bu	%d7, [%a15] -1
	jnz	%d7, .L249
.LVL387:
.L252:
	.loc 1 376 0
	ret
.L253:
.LVL388:
	.loc 1 362 0
	ld.bu	%d2, [%a13]0
	st.w	[%SP]0, %d2
	ld.w	%d5, [%a12]0
	ld.w	%d6, [%a14]0
	mov	%d4, %d15
	call	conio_graphics_char
.LVL389:
	.loc 1 365 0
	ld.w	%d3, [%a12]0
	addi	%d2, %d3, 8
	.loc 1 366 0
	jeq	%d2, %d8, .L254
	.loc 1 368 0
	st.w	[%a12]0, %d2
.L256:
	add.a	%a15, 1
.LVL390:
	j	.L255
.LVL391:
.L254:
	mov	%d2, 0
	st.w	[%a12]0, %d2
	j	.L256
.LVL392:
.L251:
.LBB148:
.LBB149:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L245
.LBE149:
.LBE148:
.LFE349:
	.size	conio_graphics_cputs, .-conio_graphics_cputs
	.align 1
	.global	conio_graphics_printfxy
	.type	conio_graphics_printfxy, @function
conio_graphics_printfxy:
.LFB350:
	.loc 1 379 0
.LVL393:
	sub.a	%SP, 80
.LCFI5:
.LVL394:
	.loc 1 379 0
	mov.aa	%a5, %a4
	.loc 1 384 0
	lea	%a6, [%SP] 80
.LVL395:
	mov.aa	%a4, %SP
.LVL396:
	.loc 1 379 0
	mov	%d15, %d4
	mov	%e8, %d5, %d6
	.loc 1 384 0
	call	vsprintf
.LVL397:
	.loc 1 386 0
	jltz	%d2, .L257
.LVL398:
.LBB150:
.LBB151:
	.loc 1 338 0
	movh	%d3, hi:conio_driver
	addi	%d3, %d3, lo:conio_driver
	mov.a	%a2, %d3
	sh	%d4, %d15, 5
	addsc.a	%a15, %a2, %d4, 0
	ld.w	%d2, [%a15] 16
.LVL399:
	jlt.u	%d2, 2, .L262
.L259:
	.loc 1 343 0
	mov	%d5, 320
	ge	%d2, %d9, %d5
	or.ge	%d2, %d8, 228
	jnz	%d2, .L260
	.loc 1 345 0
	madd	%d2, %d3, %d15, 32
	.loc 1 346 0
	mov.a	%a2, %d3
	.loc 1 345 0
	mov.a	%a15, %d2
	st.w	[%a15] 32, %d9
	.loc 1 346 0
	addsc.a	%a15, %a2, %d4, 0
	st.w	[%a15] 36, %d8
.L260:
.LBE151:
.LBE150:
	.loc 1 393 0
	mov	%d4, %d15
	mov.aa	%a4, %SP
	call	conio_graphics_cputs
.LVL400:
.L257:
	ret
.LVL401:
.L262:
.LBB155:
.LBB154:
.LBB152:
.LBB153:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L259
.LBE153:
.LBE152:
.LBE154:
.LBE155:
.LFE350:
	.size	conio_graphics_printfxy, .-conio_graphics_printfxy
	.align 1
	.global	conio_graphics_printf
	.type	conio_graphics_printf, @function
conio_graphics_printf:
.LFB351:
	.loc 1 397 0
.LVL402:
	sub.a	%SP, 80
.LCFI6:
.LVL403:
	.loc 1 397 0
	mov.aa	%a5, %a4
	.loc 1 402 0
	lea	%a6, [%SP] 80
.LVL404:
	mov.aa	%a4, %SP
.LVL405:
	.loc 1 397 0
	mov	%d15, %d4
	.loc 1 402 0
	call	vsprintf
.LVL406:
	.loc 1 404 0
	jgez	%d2, .L266
	ret
.L266:
	.loc 1 409 0
	mov	%d4, %d15
	mov.aa	%a4, %SP
	call	conio_graphics_cputs
.LVL407:
	ret
.LFE351:
	.size	conio_graphics_printf, .-conio_graphics_printf
	.align 1
	.global	tft_graphic
	.type	tft_graphic, @function
tft_graphic:
.LFB358:
	.loc 1 731 0
.LVL408:
	.loc 1 733 0
	movh.a	%a15, hi:cpy_mode
	st.w	[%a15] lo:cpy_mode, %d4
	.loc 1 737 0
	mov	%d15, 0
	.loc 1 734 0
	movh.a	%a15, hi:cpy_pdisplay
	st.a	[%a15] lo:cpy_pdisplay, %a4
	.loc 1 735 0
	movh.a	%a15, hi:cpy_pdisplaycolor
	st.a	[%a15] lo:cpy_pdisplaycolor, %a5
	.loc 1 737 0
	movh.a	%a15, hi:YSIZE_cnt
	st.w	[%a15] lo:YSIZE_cnt, %d15
	.loc 1 739 0
	j	tft_graphics_lines_written
.LVL409:
.LFE358:
	.size	tft_graphic, .-tft_graphic
.section .data_cpu1,"awc1",@progbits
	.align 2
	.type	YSIZE_cnt, @object
	.size	YSIZE_cnt, 4
YSIZE_cnt:
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
	.global	colortable_graphics
	.align 1
	.type	colortable_graphics, @object
	.size	colortable_graphics, 512
colortable_graphics:
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
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.zero	32
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
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
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
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.byte	0x4
	.uaword	.LCFI0-.LFB340
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.byte	0x4
	.uaword	.LCFI1-.LFB341
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB346
	.uaword	.LFE346-.LFB346
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB347
	.uaword	.LFE347-.LFB347
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB348
	.uaword	.LFE348-.LFB348
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.byte	0x4
	.uaword	.LCFI2-.LFB353
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.byte	0x4
	.uaword	.LCFI3-.LFB355
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.byte	0x4
	.uaword	.LCFI4-.LFB349
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.byte	0x4
	.uaword	.LCFI5-.LFB350
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.byte	0x4
	.uaword	.LCFI6-.LFB351
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE46:
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
	.uaword	0x1ad2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tft/libtft_graphics.c"
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
	.uaword	0x188
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
	.uaword	0x1b1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1cd
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
	.uaword	0x1f9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x16e
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x188
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
	.uaword	0x26f
	.uleb128 0x5
	.uaword	0x274
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
	.uaword	0x2ff
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
	.uaword	0x29a
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x23
	.uaword	0x36b
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
	.uaword	0x312
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.uaword	0x3f4
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
	.uaword	0x37f
	.uleb128 0x9
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x5
	.byte	0x38
	.uaword	0x476
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x5
	.byte	0x3a
	.uaword	0x476
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x5
	.byte	0x3b
	.uaword	0x476
	.byte	0x4
	.uleb128 0xb
	.string	"mode"
	.byte	0x5
	.byte	0x3c
	.uaword	0x3f4
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x5
	.byte	0x3d
	.uaword	0x1c0
	.byte	0xc
	.uleb128 0xb
	.string	"maxx"
	.byte	0x5
	.byte	0x3e
	.uaword	0x20f
	.byte	0x10
	.uleb128 0xb
	.string	"maxy"
	.byte	0x5
	.byte	0x3f
	.uaword	0x20f
	.byte	0x14
	.uleb128 0xb
	.string	"x"
	.byte	0x5
	.byte	0x40
	.uaword	0x20f
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0x5
	.byte	0x41
	.uaword	0x20f
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1c0
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x5
	.byte	0x42
	.uaword	0x401
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x6
	.byte	0x28
	.uaword	0x4a7
	.uleb128 0xc
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x6
	.byte	0x62
	.uaword	0x491
	.uleb128 0x3
	.string	"TCOLORTABLE"
	.byte	0x7
	.byte	0x7f
	.uaword	0x4dd
	.uleb128 0xd
	.uaword	0x1eb
	.uaword	0x4ed
	.uleb128 0xe
	.uaword	0x28e
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.uaword	0x1c0
	.uaword	0x4fd
	.uleb128 0xe
	.uaword	0x28e
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x7
	.byte	0x8b
	.uaword	0x5ab
	.uleb128 0xb
	.string	"color_display"
	.byte	0x7
	.byte	0x8d
	.uaword	0x1c0
	.byte	0
	.uleb128 0xb
	.string	"color_select"
	.byte	0x7
	.byte	0x8f
	.uaword	0x1c0
	.byte	0x1
	.uleb128 0xb
	.string	"xmin"
	.byte	0x7
	.byte	0x90
	.uaword	0x1a4
	.byte	0x2
	.uleb128 0xb
	.string	"xmax"
	.byte	0x7
	.byte	0x91
	.uaword	0x1a4
	.byte	0x3
	.uleb128 0xb
	.string	"y"
	.byte	0x7
	.byte	0x92
	.uaword	0x1a4
	.byte	0x4
	.uleb128 0xb
	.string	"select"
	.byte	0x7
	.byte	0x93
	.uaword	0x5c2
	.byte	0x8
	.uleb128 0xb
	.string	"display"
	.byte	0x7
	.byte	0x94
	.uaword	0x5c2
	.byte	0xc
	.uleb128 0xb
	.string	"input"
	.byte	0x7
	.byte	0x95
	.uaword	0x5dd
	.byte	0x10
	.uleb128 0xb
	.string	"text"
	.byte	0x7
	.byte	0x96
	.uaword	0x4ed
	.byte	0x14
	.uleb128 0xb
	.string	"symbol"
	.byte	0x7
	.byte	0x97
	.uaword	0x1c0
	.byte	0x3c
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x5bc
	.uleb128 0x10
	.uaword	0x20f
	.uleb128 0x10
	.uaword	0x5bc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4fd
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ab
	.uleb128 0x11
	.byte	0x1
	.uaword	0x20f
	.uaword	0x5dd
	.uleb128 0x10
	.uaword	0x20f
	.uleb128 0x10
	.uaword	0x5bc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5c8
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x7
	.byte	0x98
	.uaword	0x4fd
	.uleb128 0x9
	.string	"CONIO_DRIVER"
	.byte	0xf4
	.byte	0x7
	.byte	0x9d
	.uaword	0x712
	.uleb128 0xb
	.string	"pmenulist"
	.byte	0x7
	.byte	0x9f
	.uaword	0x712
	.byte	0
	.uleb128 0xb
	.string	"pstdlist"
	.byte	0x7
	.byte	0xa0
	.uaword	0x712
	.byte	0x4
	.uleb128 0xb
	.string	"display"
	.byte	0x7
	.byte	0xa1
	.uaword	0x718
	.byte	0x8
	.uleb128 0xb
	.string	"pdasmirror"
	.byte	0x7
	.byte	0xa2
	.uaword	0x728
	.byte	0xa8
	.uleb128 0xb
	.string	"dasstatus"
	.byte	0x7
	.byte	0xa3
	.uaword	0x21d
	.byte	0xac
	.uleb128 0xb
	.string	"dasdisplaymode"
	.byte	0x7
	.byte	0xa4
	.uaword	0x36b
	.byte	0xb0
	.uleb128 0xb
	.string	"cursorstatus"
	.byte	0x7
	.byte	0xa5
	.uaword	0x20f
	.byte	0xb4
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.byte	0xa6
	.uaword	0x36b
	.byte	0xb8
	.uleb128 0xb
	.string	"dialogmode"
	.byte	0x7
	.byte	0xa7
	.uaword	0x2ff
	.byte	0xbc
	.uleb128 0xb
	.string	"scanfdescr"
	.byte	0x7
	.byte	0xa8
	.uaword	0x72e
	.byte	0xc0
	.uleb128 0xb
	.string	"scanftext"
	.byte	0x7
	.byte	0xa9
	.uaword	0x72e
	.byte	0xd4
	.uleb128 0xb
	.string	"input"
	.byte	0x7
	.byte	0xaa
	.uaword	0x753
	.byte	0xe8
	.uleb128 0xb
	.string	"inputid"
	.byte	0x7
	.byte	0xab
	.uaword	0x20f
	.byte	0xec
	.uleb128 0xb
	.string	"scanfx"
	.byte	0x7
	.byte	0xac
	.uaword	0x1a4
	.byte	0xf0
	.uleb128 0xb
	.string	"blinky"
	.byte	0x7
	.byte	0xad
	.uaword	0x1c0
	.byte	0xf1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5e3
	.uleb128 0xd
	.uaword	0x47c
	.uaword	0x728
	.uleb128 0xe
	.uaword	0x28e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21d
	.uleb128 0xd
	.uaword	0x1c0
	.uaword	0x73e
	.uleb128 0xe
	.uaword	0x28e
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uaword	0x20f
	.uaword	0x753
	.uleb128 0x10
	.uaword	0x20f
	.uleb128 0x10
	.uaword	0x712
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x73e
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x7
	.byte	0xae
	.uaword	0x5f8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x274
	.uleb128 0x12
	.string	"tft_prepare_graphics_lines"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.byte	0x1
	.uaword	0x81d
	.uleb128 0x13
	.string	"mode"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x3f4
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x476
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x476
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x20f
	.uleb128 0x15
	.string	"cnt"
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x20f
	.uleb128 0x16
	.uaword	0x7e7
	.uleb128 0x15
	.string	"temp"
	.byte	0x1
	.uahalf	0x279
	.uaword	0x1c0
	.byte	0
	.uleb128 0x16
	.uaword	0x7fa
	.uleb128 0x15
	.string	"temp"
	.byte	0x1
	.uahalf	0x294
	.uaword	0x1c0
	.byte	0
	.uleb128 0x16
	.uaword	0x80d
	.uleb128 0x15
	.string	"temp"
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x1c0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.string	"temp"
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x1c0
	.byte	0
	.byte	0
	.uleb128 0x18
	.string	"tft_graphics_lines_written"
	.byte	0x1
	.uahalf	0x2c4
	.byte	0x1
	.uaword	0x21d
	.byte	0x1
	.uleb128 0x19
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.byte	0x1
	.string	"conio_graphics_gotoxy"
	.byte	0x1
	.uahalf	0x150
	.byte	0x1
	.byte	0x1
	.uaword	0x892
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x150
	.uaword	0x36b
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x20f
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x20f
	.byte	0
	.uleb128 0x1b
	.uaword	0x81d
	.uaword	.LFB357
	.uaword	.LFE357
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x96b
	.uleb128 0x1c
	.uaword	0x774
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x936
	.uleb128 0x1d
	.uaword	0x7b2
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	0x7a6
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	0x799
	.uaword	.LLST2
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1f
	.uaword	0x7be
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	0x7c8
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0x8ff
	.uleb128 0x1f
	.uaword	0x80e
	.uaword	.LLST5
	.byte	0
	.uleb128 0x20
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0x912
	.uleb128 0x1f
	.uaword	0x7ff
	.uaword	.LLST6
	.byte	0
	.uleb128 0x20
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0x925
	.uleb128 0x1f
	.uaword	0x7ec
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x1f
	.uaword	0x7d9
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL9
	.uaword	0x1a2e
	.uaword	0x954
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xf00
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	tft_graphics_lines_written
	.byte	0
	.uleb128 0x23
	.uaword	.LVL20
	.uaword	0x1a2e
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xf00
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_clrscr"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9d7
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6f
	.uaword	0x36b
	.uaword	.LLST9
	.uleb128 0x26
	.uaword	.LVL65
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL66
	.uaword	0x1a72
	.uaword	0x9c6
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffe3
	.byte	0
	.uleb128 0x23
	.uaword	.LVL67
	.uaword	0x1a72
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_textattr"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa59
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0x7b
	.uaword	0x36b
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7b
	.uaword	0x20f
	.uaword	.LLST11
	.uleb128 0x26
	.uaword	.LVL69
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL70
	.uaword	0x1a72
	.uaword	0xa43
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffeb
	.byte	0
	.uleb128 0x23
	.uaword	.LVL71
	.uaword	0x1a72
	.uleb128 0x22
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
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_textcolor"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xadc
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0x87
	.uaword	0x36b
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	.LASF2
	.byte	0x1
	.byte	0x87
	.uaword	0x20f
	.uaword	.LLST13
	.uleb128 0x26
	.uaword	.LVL73
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL74
	.uaword	0x1a72
	.uaword	0xac6
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffec
	.byte	0
	.uleb128 0x23
	.uaword	.LVL75
	.uaword	0x1a72
	.uleb128 0x22
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
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_textbackground"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb64
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0x92
	.uaword	0x36b
	.uaword	.LLST14
	.uleb128 0x25
	.uaword	.LASF2
	.byte	0x1
	.byte	0x92
	.uaword	0x20f
	.uaword	.LLST15
	.uleb128 0x26
	.uaword	.LVL77
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL78
	.uaword	0x1a72
	.uaword	0xb4e
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x2ffed
	.byte	0
	.uleb128 0x23
	.uaword	.LVL79
	.uaword	0x1a72
	.uleb128 0x22
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
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_gotoxy"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc03
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0x9d
	.uaword	0x36b
	.uaword	.LLST16
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0x9d
	.uaword	0x20f
	.uaword	.LLST17
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.byte	0x9d
	.uaword	0x20f
	.uaword	.LLST18
	.uleb128 0x26
	.uaword	.LVL81
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL82
	.uaword	0x1a72
	.uaword	0xbd9
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x3fff4
	.byte	0
	.uleb128 0x21
	.uaword	.LVL83
	.uaword	0x1a72
	.uaword	0xbed
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL84
	.uaword	0x1a72
	.uleb128 0x22
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
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_cputs"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcc9
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa9
	.uaword	0x36b
	.uaword	.LLST19
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.byte	0xa9
	.uaword	0x476
	.uaword	.LLST20
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xab
	.uaword	0x20f
	.uaword	.LLST21
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xac
	.uaword	0x20f
	.uaword	.LLST22
	.uleb128 0x28
	.string	"pbuf"
	.byte	0x1
	.byte	0xad
	.uaword	0x728
	.uaword	.LLST23
	.uleb128 0x21
	.uaword	.LVL86
	.uaword	0x1a97
	.uaword	0xc8a
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL91
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL93
	.uaword	0x1a72
	.uaword	0xca9
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 65526
	.byte	0
	.uleb128 0x21
	.uaword	.LVL94
	.uaword	0x1a72
	.uaword	0xcbf
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x79
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0
	.uleb128 0x26
	.uaword	.LVL97
	.uaword	0x1a72
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_printfxy"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe11
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0xc2
	.uaword	0x36b
	.uaword	.LLST24
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0xc2
	.uaword	0x20f
	.uaword	.LLST25
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.byte	0xc2
	.uaword	0x20f
	.uaword	.LLST26
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.byte	0xc2
	.uaword	0xe11
	.uaword	.LLST27
	.uleb128 0x29
	.uleb128 0x2a
	.uaword	.LASF5
	.byte	0x1
	.byte	0xc4
	.uaword	0x20f
	.uaword	.LLST28
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xc4
	.uaword	0x20f
	.uaword	.LLST29
	.uleb128 0x2b
	.uaword	.LASF6
	.byte	0x1
	.byte	0xc5
	.uaword	0xe1c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.uaword	0x20f
	.uaword	.LLST30
	.uleb128 0x2c
	.string	"pbuf"
	.byte	0x1
	.byte	0xc7
	.uaword	0x728
	.byte	0x1
	.byte	0x6a
	.uleb128 0x28
	.string	"ap"
	.byte	0x1
	.byte	0xc8
	.uaword	0x4bb
	.uaword	.LLST31
	.uleb128 0x21
	.uaword	.LVL104
	.uaword	0x1ab2
	.uaword	0xda7
	.uleb128 0x22
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL105
	.uaword	0x1a97
	.uaword	0xdbb
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL108
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL116
	.uaword	0x1a72
	.uaword	0xdda
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 65509
	.byte	0
	.uleb128 0x21
	.uaword	.LVL117
	.uaword	0x1a72
	.uaword	0xdee
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL118
	.uaword	0x1a72
	.uaword	0xe07
	.uleb128 0x22
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
	.uleb128 0x26
	.uaword	.LVL122
	.uaword	0x1a72
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe17
	.uleb128 0x5
	.uaword	0x1c0
	.uleb128 0xd
	.uaword	0x1c0
	.uaword	0xe2c
	.uleb128 0xe
	.uaword	0x28e
	.byte	0x4f
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"display_graphics_printf"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf3f
	.uleb128 0x25
	.uaword	.LASF3
	.byte	0x1
	.byte	0xe2
	.uaword	0x36b
	.uaword	.LLST32
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.byte	0xe2
	.uaword	0xe11
	.uaword	.LLST33
	.uleb128 0x29
	.uleb128 0x2a
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe4
	.uaword	0x20f
	.uaword	.LLST34
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xe4
	.uaword	0x20f
	.uaword	.LLST35
	.uleb128 0x2b
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe5
	.uaword	0xe1c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.uaword	0x20f
	.uaword	.LLST36
	.uleb128 0x2c
	.string	"pbuf"
	.byte	0x1
	.byte	0xe7
	.uaword	0x728
	.byte	0x1
	.byte	0x6a
	.uleb128 0x28
	.string	"ap"
	.byte	0x1
	.byte	0xe8
	.uaword	0x4bb
	.uaword	.LLST37
	.uleb128 0x21
	.uaword	.LVL128
	.uaword	0x1ab2
	.uaword	0xeee
	.uleb128 0x22
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL129
	.uaword	0x1a97
	.uaword	0xf02
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL131
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL139
	.uaword	0x1a72
	.uaword	0xf21
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 65525
	.byte	0
	.uleb128 0x21
	.uaword	.LVL140
	.uaword	0x1a72
	.uaword	0xf35
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL144
	.uaword	0x1a72
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"display_graphics_line"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB342
	.uaword	.LFE342
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x103e
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x101
	.uaword	0x36b
	.uaword	.LLST38
	.uleb128 0x2f
	.string	"x1"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20f
	.uaword	.LLST39
	.uleb128 0x2f
	.string	"y1"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20f
	.uaword	.LLST40
	.uleb128 0x2f
	.string	"x2"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20f
	.uaword	.LLST41
	.uleb128 0x30
	.string	"y2"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x20f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x101
	.uaword	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.uaword	.LVL147
	.uaword	0x1a56
	.uleb128 0x21
	.uaword	.LVL148
	.uaword	0x1a72
	.uaword	0xfe4
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0xc
	.uaword	0x4ffe1
	.byte	0
	.uleb128 0x21
	.uaword	.LVL149
	.uaword	0x1a72
	.uaword	0x1006
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x10
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0
	.uleb128 0x21
	.uaword	.LVL150
	.uaword	0x1a72
	.uaword	0x1023
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0xb
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0
	.uleb128 0x23
	.uaword	.LVL151
	.uaword	0x1a72
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0xc
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_setcolortable"
	.byte	0x1
	.uahalf	0x10f
	.byte	0x1
	.uaword	.LFB343
	.uaword	.LFE343
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10a9
	.uleb128 0x30
	.string	"ind"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x21d
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"r"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x21d
	.uaword	.LLST42
	.uleb128 0x2f
	.string	"g"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x21d
	.uaword	.LLST43
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x21d
	.uaword	.LLST44
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_clrscr"
	.byte	0x1
	.uahalf	0x118
	.byte	0x1
	.uaword	.LFB344
	.uaword	.LFE344
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1103
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x118
	.uaword	0x36b
	.uaword	.LLST45
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x20f
	.uaword	.LLST46
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x13b
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_textattr"
	.byte	0x1
	.uahalf	0x140
	.byte	0x1
	.uaword	.LFB345
	.uaword	.LFE345
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x114d
	.uleb128 0x31
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x140
	.uaword	0x36b
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x140
	.uaword	0x20f
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_textcolor"
	.byte	0x1
	.uahalf	0x146
	.byte	0x1
	.uaword	.LFB346
	.uaword	.LFE346
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x119a
	.uleb128 0x31
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x146
	.uaword	0x36b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x146
	.uaword	0x20f
	.uaword	.LLST47
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_textbackground"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.uaword	.LFB347
	.uaword	.LFE347
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11ec
	.uleb128 0x31
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x36b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x20f
	.uaword	.LLST48
	.byte	0
	.uleb128 0x1b
	.uaword	0x850
	.uaword	.LFB348
	.uaword	.LFE348
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1226
	.uleb128 0x34
	.uaword	0x871
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.uaword	0x87d
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.uaword	0x887
	.byte	0x1
	.byte	0x56
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x155
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"conio_graphics_set_opt"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.byte	0x3
	.uaword	0x128e
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x36b
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x20f
	.uleb128 0x13
	.string	"y"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x20f
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x1c0
	.uleb128 0x35
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x476
	.uleb128 0x15
	.string	"offs"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x20f
	.byte	0
	.uleb128 0x1b
	.uaword	0x1226
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12e5
	.uleb128 0x34
	.uaword	0x1248
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	0x1254
	.uaword	.LLST49
	.uleb128 0x34
	.uaword	0x125e
	.byte	0x1
	.byte	0x56
	.uleb128 0x1d
	.uaword	0x1268
	.uaword	.LLST50
	.uleb128 0x1f
	.uaword	0x1274
	.uaword	.LLST51
	.uleb128 0x1f
	.uaword	0x1280
	.uaword	.LLST52
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_line"
	.byte	0x1
	.uahalf	0x1d0
	.byte	0x1
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x14b5
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x36b
	.uaword	.LLST53
	.uleb128 0x2f
	.string	"x1"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x20f
	.uaword	.LLST54
	.uleb128 0x2f
	.string	"y1"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x20f
	.uaword	.LLST55
	.uleb128 0x2f
	.string	"x2"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x20f
	.uaword	.LLST56
	.uleb128 0x2f
	.string	"y2"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x20f
	.uaword	.LLST57
	.uleb128 0x2e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x1c0
	.uaword	.LLST58
	.uleb128 0x32
	.string	"xofs"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x19d
	.uaword	.LLST59
	.uleb128 0x32
	.string	"yofs"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x19d
	.uaword	.LLST60
	.uleb128 0x32
	.string	"dx"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x19d
	.uaword	.LLST61
	.uleb128 0x32
	.string	"dy"
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x19d
	.uaword	.LLST62
	.uleb128 0x32
	.string	"dx2"
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x19d
	.uaword	.LLST63
	.uleb128 0x32
	.string	"dy2"
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x19d
	.uaword	.LLST64
	.uleb128 0x32
	.string	"ix"
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x19d
	.uaword	.LLST65
	.uleb128 0x32
	.string	"iy"
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x19d
	.uaword	.LLST66
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x19d
	.uaword	.LLST67
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x19d
	.uaword	.LLST68
	.uleb128 0x1c
	.uaword	0x1226
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x145f
	.uleb128 0x36
	.uaword	0x1268
	.uleb128 0x36
	.uaword	0x125e
	.uleb128 0x1d
	.uaword	0x1254
	.uaword	.LLST69
	.uleb128 0x1d
	.uaword	0x1248
	.uaword	.LLST70
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x1f
	.uaword	0x1274
	.uaword	.LLST71
	.uleb128 0x1f
	.uaword	0x1280
	.uaword	.LLST72
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x1226
	.uaword	.LBB79
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x212
	.uleb128 0x36
	.uaword	0x1268
	.uleb128 0x36
	.uaword	0x125e
	.uleb128 0x1d
	.uaword	0x1254
	.uaword	.LLST73
	.uleb128 0x1d
	.uaword	0x1248
	.uaword	.LLST74
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x1f
	.uaword	0x1274
	.uaword	.LLST75
	.uleb128 0x1f
	.uaword	0x1280
	.uaword	.LLST76
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_set"
	.byte	0x1
	.uahalf	0x220
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1547
	.uleb128 0x31
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x220
	.uaword	0x36b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.uahalf	0x220
	.uaword	0x20f
	.uaword	.LLST77
	.uleb128 0x30
	.string	"y"
	.byte	0x1
	.uahalf	0x220
	.uaword	0x20f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x220
	.uaword	0x1c0
	.uaword	.LLST78
	.uleb128 0x38
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x222
	.uaword	0x476
	.uaword	.LLST79
	.uleb128 0x32
	.string	"offs"
	.byte	0x1
	.uahalf	0x223
	.uaword	0x20f
	.uaword	.LLST80
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.uahalf	0x24c
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_char"
	.byte	0x1
	.uahalf	0x254
	.byte	0x1
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1693
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x254
	.uaword	0x36b
	.uaword	.LLST81
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x20f
	.byte	0x1
	.byte	0x55
	.uleb128 0x30
	.string	"y"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x20f
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.string	"ch"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x1c0
	.uaword	.LLST82
	.uleb128 0x2e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x254
	.uaword	0x1c0
	.uaword	.LLST83
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.uahalf	0x256
	.uaword	0x19d
	.uaword	.LLST84
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.uahalf	0x256
	.uaword	0x19d
	.uaword	.LLST85
	.uleb128 0x32
	.string	"ind"
	.byte	0x1
	.uahalf	0x256
	.uaword	0x19d
	.uaword	.LLST86
	.uleb128 0x32
	.string	"mask"
	.byte	0x1
	.uahalf	0x257
	.uaword	0x1c0
	.uaword	.LLST87
	.uleb128 0x1c
	.uaword	0x1226
	.uaword	.LBB106
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x265
	.uaword	0x164d
	.uleb128 0x36
	.uaword	0x1268
	.uleb128 0x36
	.uaword	0x125e
	.uleb128 0x1d
	.uaword	0x1254
	.uaword	.LLST88
	.uleb128 0x1d
	.uaword	0x1248
	.uaword	.LLST89
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x1f
	.uaword	0x1274
	.uaword	.LLST90
	.uleb128 0x1f
	.uaword	0x1280
	.uaword	.LLST91
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x1226
	.uaword	.LBB122
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x261
	.uleb128 0x36
	.uaword	0x1268
	.uleb128 0x36
	.uaword	0x125e
	.uleb128 0x1d
	.uaword	0x1254
	.uaword	.LLST92
	.uleb128 0x1d
	.uaword	0x1248
	.uaword	.LLST93
	.uleb128 0x1e
	.uaword	.Ldebug_ranges0+0x180
	.uleb128 0x1f
	.uaword	0x1274
	.uaword	.LLST94
	.uleb128 0x1f
	.uaword	0x1280
	.uaword	.LLST95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_cputs"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1707
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x36b
	.uaword	.LLST96
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x476
	.uaword	.LLST97
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x20f
	.byte	0
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.uahalf	0x164
	.uleb128 0x23
	.uaword	.LVL389
	.uaword	0x1547
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_printfxy"
	.byte	0x1
	.uahalf	0x17a
	.byte	0x1
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1824
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x36b
	.uaword	.LLST98
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x20f
	.uaword	.LLST99
	.uleb128 0x2f
	.string	"y"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x20f
	.uaword	.LLST100
	.uleb128 0x2e
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x17a
	.uaword	0xe11
	.uaword	.LLST101
	.uleb128 0x29
	.uleb128 0x38
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x20f
	.uaword	.LLST102
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x20f
	.uleb128 0x3a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xe1c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"ap"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x4bb
	.uaword	.LLST103
	.uleb128 0x1c
	.uaword	0x850
	.uaword	.LBB150
	.uaword	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.uahalf	0x188
	.uaword	0x17ec
	.uleb128 0x1d
	.uaword	0x887
	.uaword	.LLST104
	.uleb128 0x1d
	.uaword	0x87d
	.uaword	.LLST105
	.uleb128 0x1d
	.uaword	0x871
	.uaword	.LLST106
	.uleb128 0x33
	.uaword	0x842
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x1
	.uahalf	0x155
	.byte	0
	.uleb128 0x21
	.uaword	.LVL397
	.uaword	0x1ab2
	.uaword	0x180d
	.uleb128 0x22
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL400
	.uaword	0x1693
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"conio_graphics_printf"
	.byte	0x1
	.uahalf	0x18c
	.byte	0x1
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x18e3
	.uleb128 0x2e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x36b
	.uaword	.LLST107
	.uleb128 0x2e
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x18c
	.uaword	0xe11
	.uaword	.LLST108
	.uleb128 0x29
	.uleb128 0x38
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x20f
	.uaword	.LLST109
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x20f
	.uleb128 0x3a
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x18f
	.uaword	0xe1c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.string	"ap"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x4bb
	.uaword	.LLST110
	.uleb128 0x21
	.uaword	.LVL406
	.uaword	0x1ab2
	.uaword	0x18cc
	.uleb128 0x22
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL407
	.uaword	0x1693
	.uleb128 0x22
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x22
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"tft_graphic"
	.byte	0x1
	.uahalf	0x2da
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1940
	.uleb128 0x2f
	.string	"mode"
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x3f4
	.uaword	.LLST111
	.uleb128 0x2e
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x476
	.uaword	.LLST112
	.uleb128 0x2e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x476
	.uaword	.LLST113
	.uleb128 0x3b
	.uaword	.LVL409
	.byte	0x1
	.uaword	0x81d
	.byte	0
	.uleb128 0x2c
	.string	"cpy_mode"
	.byte	0x1
	.byte	0x55
	.uaword	0x3f4
	.byte	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uleb128 0x2c
	.string	"cpy_pdisplay"
	.byte	0x1
	.byte	0x56
	.uaword	0x476
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uleb128 0x2c
	.string	"cpy_pdisplaycolor"
	.byte	0x1
	.byte	0x57
	.uaword	0x476
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplaycolor
	.uleb128 0x2c
	.string	"YSIZE_cnt"
	.byte	0x1
	.byte	0x59
	.uaword	0x21d
	.byte	0x5
	.byte	0x3
	.uaword	YSIZE_cnt
	.uleb128 0xd
	.uaword	0x1c0
	.uaword	0x19b7
	.uleb128 0x3c
	.uaword	0x28e
	.uahalf	0xbff
	.byte	0
	.uleb128 0x3d
	.string	"__font_bitmap__8_12"
	.byte	0x8
	.byte	0xe
	.uaword	0x19d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x19a6
	.uleb128 0xd
	.uaword	0x1eb
	.uaword	0x19e4
	.uleb128 0x3e
	.byte	0
	.uleb128 0x3d
	.string	"Row_Buff"
	.byte	0x9
	.byte	0x17
	.uaword	0x19d9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"conio_driver"
	.byte	0x7
	.byte	0xc9
	.uaword	0x759
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"colortable_graphics"
	.byte	0x1
	.byte	0x3f
	.uaword	0x4ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	colortable_graphics
	.uleb128 0x40
	.byte	0x1
	.string	"tft_flush_row_buff"
	.byte	0x9
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uaword	0x1a56
	.uleb128 0x10
	.uaword	0x27c
	.uleb128 0x10
	.uaword	0x21d
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"FIFO_DISPLAY_FREE"
	.byte	0xa
	.byte	0x11
	.byte	0x1
	.uaword	0x20f
	.byte	0x1
	.uleb128 0x42
	.byte	0x1
	.string	"PUT_FIFO_DISPLAY"
	.byte	0xa
	.byte	0xf
	.byte	0x1
	.uaword	0x20f
	.byte	0x1
	.uaword	0x1a97
	.uleb128 0x10
	.uaword	0x21d
	.byte	0
	.uleb128 0x42
	.byte	0x1
	.string	"strlen"
	.byte	0xb
	.byte	0x22
	.byte	0x1
	.uaword	0x17a
	.byte	0x1
	.uaword	0x1ab2
	.uleb128 0x10
	.uaword	0x269
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"vsprintf"
	.byte	0xc
	.byte	0xc4
	.byte	0x1
	.uaword	0x19d
	.byte	0x1
	.uleb128 0x10
	.uaword	0x76e
	.uleb128 0x10
	.uaword	0x269
	.uleb128 0x10
	.uaword	0x27c
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplaycolor
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL20-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplaycolor
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplaycolor
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uaword	.LVL44-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL9-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL20-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL44-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x8
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x85
	.sleb128 -1
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0xf
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x7
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0xf
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x7
	.byte	0x85
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x32
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL52-.Ltext0
	.uahalf	0xc
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x32
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0xc
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x38
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0xc
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x38
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0xc
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0xd
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL63-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0xd
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL65-1-.Ltext0
	.uaword	.LFE334-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-1-.Ltext0
	.uaword	.LFE335-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL69-1-.Ltext0
	.uaword	.LFE335-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL73-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73-1-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL73-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL73-1-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL77-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL81-1-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL81-1-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL81-1-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL86-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86-1-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL86-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL86-1-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL99-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL99-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL88-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL99-.Ltext0
	.uaword	.LFE339-.Ltext0
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
.LLST22:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL97-.Ltext0
	.uaword	.LVL98-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL99-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL104-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL104-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL104-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL104-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL104-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL104-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL104-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL105-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL107-.Ltext0
	.uaword	.LVL109-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL110-.Ltext0
	.uaword	.LVL111-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL112-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL113-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL114-.Ltext0
	.uaword	.LVL115-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL118-.Ltext0
	.uaword	.LVL119-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL119-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL122-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL122-.Ltext0
	.uaword	.LVL123-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL101-.Ltext0
	.uaword	.LVL102-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL102-.Ltext0
	.uaword	.LVL104-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL104-1-.Ltext0
	.uaword	.LVL120-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL122-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL122-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL124-.Ltext0
	.uaword	.LVL128-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL128-1-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL124-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL128-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL128-1-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL128-.Ltext0
	.uaword	.LVL129-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL134-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL134-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL135-.Ltext0
	.uaword	.LVL136-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL136-.Ltext0
	.uaword	.LVL137-.Ltext0
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL141-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL143-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL144-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL125-.Ltext0
	.uaword	.LVL126-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL128-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL128-1-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL142-.Ltext0
	.uaword	.LVL144-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL144-1-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL147-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL147-1-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL147-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL147-1-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL147-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL147-1-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL147-1-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL147-1-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL156-.Ltext0
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL156-.Ltext0
	.uaword	.LVL158-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL158-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL154-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL154-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL155-.Ltext0
	.uaword	.LVL157-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL157-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL160-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL160-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL163-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL164-.Ltext0
	.uaword	.LVL166-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL167-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL170-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL174-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL174-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL175-.Ltext0
	.uaword	.LVL176-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL176-.Ltext0
	.uaword	.LFE347-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL180-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL180-.Ltext0
	.uaword	.LFE352-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL178-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL185-.Ltext0
	.uaword	.LVL187-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL190-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL192-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL202-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL202-.Ltext0
	.uaword	.LVL204-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL208-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL208-.Ltext0
	.uaword	.LVL210-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL211-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL211-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL214-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL214-.Ltext0
	.uaword	.LFE352-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL179-.Ltext0
	.uaword	.LVL183-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL183-.Ltext0
	.uaword	.LVL186-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL189-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL189-.Ltext0
	.uaword	.LVL191-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL193-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL195-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL196-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL197-.Ltext0
	.uaword	.LVL198-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL199-.Ltext0
	.uaword	.LVL200-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL201-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL206-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL206-.Ltext0
	.uaword	.LVL209-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL212-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL213-.Ltext0
	.uaword	.LVL215-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL181-.Ltext0
	.uaword	.LVL182-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL182-.Ltext0
	.uaword	.LVL184-.Ltext0
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL184-.Ltext0
	.uaword	.LVL187-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL188-.Ltext0
	.uaword	.LVL192-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL192-.Ltext0
	.uaword	.LVL194-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL196-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL199-.Ltext0
	.uaword	.LVL204-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL207-.Ltext0
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL207-.Ltext0
	.uaword	.LFE352-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL226-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL226-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL238-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL238-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL227-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL241-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL217-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL217-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL216-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL227-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL241-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL241-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL227-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL217-.Ltext0
	.uaword	.LVL225-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL225-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL237-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL218-.Ltext0
	.uaword	.LVL223-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL236-.Ltext0
	.uaword	.LVL240-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL240-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL221-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL222-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL218-.Ltext0
	.uaword	.LVL219-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL219-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL284-.Ltext0
	.uaword	.LVL286-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL219-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL220-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL282-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL224-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL239-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL224-.Ltext0
	.uaword	.LVL227-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL227-.Ltext0
	.uaword	.LVL232-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL233-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL233-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL239-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL241-.Ltext0
	.uaword	.LVL247-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL247-.Ltext0
	.uaword	.LVL248-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL248-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL286-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL227-.Ltext0
	.uaword	.LVL234-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL235-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL227-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL228-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL235-.Ltext0
	.uaword	.LVL236-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL269-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL269-.Ltext0
	.uaword	.LVL270-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL271-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL273-.Ltext0
	.uaword	.LVL274-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL276-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL276-.Ltext0
	.uaword	.LVL278-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL280-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL280-.Ltext0
	.uaword	.LVL281-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL287-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL288-.Ltext0
	.uaword	.LVL289-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL292-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL303-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL304-.Ltext0
	.uaword	.LVL305-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL268-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL268-.Ltext0
	.uaword	.LVL271-.Ltext0
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL271-.Ltext0
	.uaword	.LVL272-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL272-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL277-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL277-.Ltext0
	.uaword	.LVL279-.Ltext0
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL282-.Ltext0
	.uahalf	0xa
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL286-.Ltext0
	.uaword	.LVL290-.Ltext0
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL290-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL291-.Ltext0
	.uaword	.LVL294-.Ltext0
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL244-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL244-.Ltext0
	.uaword	.LVL246-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL249-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL250-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL254-.Ltext0
	.uaword	.LVL255-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL255-.Ltext0
	.uaword	.LVL259-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL259-.Ltext0
	.uaword	.LVL260-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL260-.Ltext0
	.uaword	.LVL264-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL242-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL243-.Ltext0
	.uaword	.LVL244-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL249-.Ltext0
	.uaword	.LVL252-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL252-.Ltext0
	.uaword	.LVL253-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL254-.Ltext0
	.uaword	.LVL257-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL257-.Ltext0
	.uaword	.LVL258-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL259-.Ltext0
	.uaword	.LVL261-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL263-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL265-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL265-.Ltext0
	.uaword	.LVL266-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL295-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL296-.Ltext0
	.uaword	.LVL297-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL298-.Ltext0
	.uaword	.LVL300-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL300-.Ltext0
	.uaword	.LVL301-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL308-.Ltext0
	.uaword	.LVL309-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL250-.Ltext0
	.uaword	.LVL251-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL251-.Ltext0
	.uaword	.LVL254-.Ltext0
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL255-.Ltext0
	.uaword	.LVL256-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL256-.Ltext0
	.uaword	.LVL259-.Ltext0
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL260-.Ltext0
	.uaword	.LVL262-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL262-.Ltext0
	.uaword	.LVL264-.Ltext0
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL294-.Ltext0
	.uaword	.LVL298-.Ltext0
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL298-.Ltext0
	.uaword	.LVL299-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL299-.Ltext0
	.uaword	.LVL302-.Ltext0
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x9
	.byte	0x75
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL312-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL312-.Ltext0
	.uaword	.LFE354-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL310-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL317-.Ltext0
	.uaword	.LVL319-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL322-.Ltext0
	.uaword	.LVL324-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL324-.Ltext0
	.uaword	.LVL334-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL334-.Ltext0
	.uaword	.LVL336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL336-.Ltext0
	.uaword	.LVL340-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL340-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL343-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL343-.Ltext0
	.uaword	.LVL345-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL345-.Ltext0
	.uaword	.LVL346-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL346-.Ltext0
	.uaword	.LFE354-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL311-.Ltext0
	.uaword	.LVL315-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL318-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL321-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL321-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL324-.Ltext0
	.uaword	.LVL325-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL325-.Ltext0
	.uaword	.LVL327-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL328-.Ltext0
	.uaword	.LVL329-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL329-.Ltext0
	.uaword	.LVL330-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL332-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL333-.Ltext0
	.uaword	.LVL335-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL336-.Ltext0
	.uaword	.LVL338-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL338-.Ltext0
	.uaword	.LVL341-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL344-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	.LVL345-.Ltext0
	.uaword	.LVL347-.Ltext0
	.uahalf	0x2
	.byte	0x72
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL313-.Ltext0
	.uaword	.LVL314-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL314-.Ltext0
	.uaword	.LVL316-.Ltext0
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL319-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL320-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL320-.Ltext0
	.uaword	.LVL324-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL324-.Ltext0
	.uaword	.LVL326-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL326-.Ltext0
	.uaword	.LVL328-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL336-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL336-.Ltext0
	.uaword	.LVL337-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL337-.Ltext0
	.uaword	.LVL339-.Ltext0
	.uahalf	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL339-.Ltext0
	.uaword	.LFE354-.Ltext0
	.uahalf	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL348-.Ltext0
	.uaword	.LVL350-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL350-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL348-.Ltext0
	.uaword	.LVL351-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL348-.Ltext0
	.uaword	.LVL352-.Ltext0
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL349-.Ltext0
	.uaword	.LVL352-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL352-.Ltext0
	.uaword	.LVL353-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL349-.Ltext0
	.uaword	.LVL351-.Ltext0
	.uahalf	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL352-.Ltext0
	.uaword	.LVL353-.Ltext0
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL353-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL367-.Ltext0
	.uaword	.LVL375-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL376-.Ltext0
	.uaword	.LVL377-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL378-.Ltext0
	.uaword	.LVL380-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL382-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL367-.Ltext0
	.uaword	.LVL375-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL376-.Ltext0
	.uaword	.LVL377-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL378-.Ltext0
	.uaword	.LVL380-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL382-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL367-.Ltext0
	.uaword	.LVL375-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL376-.Ltext0
	.uaword	.LVL377-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL378-.Ltext0
	.uaword	.LVL380-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL382-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL368-.Ltext0
	.uaword	.LVL369-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL369-.Ltext0
	.uaword	.LVL370-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL371-.Ltext0
	.uaword	.LVL372-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL372-.Ltext0
	.uaword	.LVL373-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL374-.Ltext0
	.uaword	.LVL375-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL376-.Ltext0
	.uaword	.LVL377-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL378-.Ltext0
	.uaword	.LVL379-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL379-.Ltext0
	.uaword	.LVL380-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL382-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL354-.Ltext0
	.uaword	.LVL355-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL357-.Ltext0
	.uaword	.LVL359-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL360-.Ltext0
	.uaword	.LVL367-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL377-.Ltext0
	.uaword	.LVL378-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL380-.Ltext0
	.uaword	.LVL382-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL354-.Ltext0
	.uaword	.LVL355-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL357-.Ltext0
	.uaword	.LVL359-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL360-.Ltext0
	.uaword	.LVL367-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL377-.Ltext0
	.uaword	.LVL378-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL380-.Ltext0
	.uaword	.LVL382-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL354-.Ltext0
	.uaword	.LVL355-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL357-.Ltext0
	.uaword	.LVL359-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL360-.Ltext0
	.uaword	.LVL367-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL377-.Ltext0
	.uaword	.LVL378-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL380-.Ltext0
	.uaword	.LVL382-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL358-.Ltext0
	.uaword	.LVL359-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL361-.Ltext0
	.uaword	.LVL362-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL362-.Ltext0
	.uaword	.LVL364-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL365-.Ltext0
	.uaword	.LVL366-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL366-.Ltext0
	.uaword	.LVL367-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL377-.Ltext0
	.uaword	.LVL378-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL380-.Ltext0
	.uaword	.LVL381-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL381-.Ltext0
	.uaword	.LVL382-.Ltext0
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL383-.Ltext0
	.uaword	.LVL384-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL384-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL383-.Ltext0
	.uaword	.LVL385-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL386-.Ltext0
	.uaword	.LVL387-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL388-.Ltext0
	.uaword	.LVL390-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL390-.Ltext0
	.uaword	.LVL391-.Ltext0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL391-.Ltext0
	.uaword	.LVL392-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL392-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL393-.Ltext0
	.uaword	.LVL397-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL397-1-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL393-.Ltext0
	.uaword	.LVL397-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL397-1-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL393-.Ltext0
	.uaword	.LVL397-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL397-1-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL393-.Ltext0
	.uaword	.LVL396-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL396-.Ltext0
	.uaword	.LVL397-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL397-1-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL397-.Ltext0
	.uaword	.LVL399-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL394-.Ltext0
	.uaword	.LVL395-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL395-.Ltext0
	.uaword	.LVL397-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL397-1-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL398-.Ltext0
	.uaword	.LVL400-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL401-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL398-.Ltext0
	.uaword	.LVL400-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL401-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL398-.Ltext0
	.uaword	.LVL400-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL401-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL402-.Ltext0
	.uaword	.LVL406-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL406-1-.Ltext0
	.uaword	.LFE351-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL402-.Ltext0
	.uaword	.LVL405-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL405-.Ltext0
	.uaword	.LVL406-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL406-1-.Ltext0
	.uaword	.LFE351-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL406-.Ltext0
	.uaword	.LVL407-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL403-.Ltext0
	.uaword	.LVL404-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL404-.Ltext0
	.uaword	.LVL406-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL406-1-.Ltext0
	.uaword	.LFE351-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL408-.Ltext0
	.uaword	.LVL409-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL409-1-.Ltext0
	.uaword	.LFE358-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL408-.Ltext0
	.uaword	.LVL409-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL409-1-.Ltext0
	.uaword	.LFE358-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL408-.Ltext0
	.uaword	.LVL409-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL409-1-.Ltext0
	.uaword	.LFE358-.Ltext0
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28-.Ltext0
	.uaword	.LBE28-.Ltext0
	.uaword	.LBB44-.Ltext0
	.uaword	.LBE44-.Ltext0
	.uaword	.LBB47-.Ltext0
	.uaword	.LBE47-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB30-.Ltext0
	.uaword	.LBE30-.Ltext0
	.uaword	.LBB36-.Ltext0
	.uaword	.LBE36-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB31-.Ltext0
	.uaword	.LBE31-.Ltext0
	.uaword	.LBB35-.Ltext0
	.uaword	.LBE35-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB32-.Ltext0
	.uaword	.LBE32-.Ltext0
	.uaword	.LBB34-.Ltext0
	.uaword	.LBE34-.Ltext0
	.uaword	.LBB38-.Ltext0
	.uaword	.LBE38-.Ltext0
	.uaword	.LBB40-.Ltext0
	.uaword	.LBE40-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB33-.Ltext0
	.uaword	.LBE33-.Ltext0
	.uaword	.LBB37-.Ltext0
	.uaword	.LBE37-.Ltext0
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	.LBB41-.Ltext0
	.uaword	.LBE41-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB64-.Ltext0
	.uaword	.LBE64-.Ltext0
	.uaword	.LBB75-.Ltext0
	.uaword	.LBE75-.Ltext0
	.uaword	.LBB76-.Ltext0
	.uaword	.LBE76-.Ltext0
	.uaword	.LBB77-.Ltext0
	.uaword	.LBE77-.Ltext0
	.uaword	.LBB78-.Ltext0
	.uaword	.LBE78-.Ltext0
	.uaword	.LBB91-.Ltext0
	.uaword	.LBE91-.Ltext0
	.uaword	.LBB92-.Ltext0
	.uaword	.LBE92-.Ltext0
	.uaword	.LBB94-.Ltext0
	.uaword	.LBE94-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB79-.Ltext0
	.uaword	.LBE79-.Ltext0
	.uaword	.LBB88-.Ltext0
	.uaword	.LBE88-.Ltext0
	.uaword	.LBB89-.Ltext0
	.uaword	.LBE89-.Ltext0
	.uaword	.LBB90-.Ltext0
	.uaword	.LBE90-.Ltext0
	.uaword	.LBB93-.Ltext0
	.uaword	.LBE93-.Ltext0
	.uaword	.LBB95-.Ltext0
	.uaword	.LBE95-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB106-.Ltext0
	.uaword	.LBE106-.Ltext0
	.uaword	.LBB120-.Ltext0
	.uaword	.LBE120-.Ltext0
	.uaword	.LBB121-.Ltext0
	.uaword	.LBE121-.Ltext0
	.uaword	.LBB132-.Ltext0
	.uaword	.LBE132-.Ltext0
	.uaword	.LBB134-.Ltext0
	.uaword	.LBE134-.Ltext0
	.uaword	.LBB136-.Ltext0
	.uaword	.LBE136-.Ltext0
	.uaword	.LBB139-.Ltext0
	.uaword	.LBE139-.Ltext0
	.uaword	.LBB141-.Ltext0
	.uaword	.LBE141-.Ltext0
	.uaword	.LBB143-.Ltext0
	.uaword	.LBE143-.Ltext0
	.uaword	.LBB145-.Ltext0
	.uaword	.LBE145-.Ltext0
	.uaword	.LBB147-.Ltext0
	.uaword	.LBE147-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB122-.Ltext0
	.uaword	.LBE122-.Ltext0
	.uaword	.LBB133-.Ltext0
	.uaword	.LBE133-.Ltext0
	.uaword	.LBB135-.Ltext0
	.uaword	.LBE135-.Ltext0
	.uaword	.LBB137-.Ltext0
	.uaword	.LBE137-.Ltext0
	.uaword	.LBB138-.Ltext0
	.uaword	.LBE138-.Ltext0
	.uaword	.LBB140-.Ltext0
	.uaword	.LBE140-.Ltext0
	.uaword	.LBB142-.Ltext0
	.uaword	.LBE142-.Ltext0
	.uaword	.LBB144-.Ltext0
	.uaword	.LBE144-.Ltext0
	.uaword	.LBB146-.Ltext0
	.uaword	.LBE146-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB150-.Ltext0
	.uaword	.LBE150-.Ltext0
	.uaword	.LBB155-.Ltext0
	.uaword	.LBE155-.Ltext0
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
.LASF7:
	.string	"video_data"
.LASF0:
	.string	"pdisplay"
.LASF3:
	.string	"displaymode"
.LASF6:
	.string	"buffer"
	.extern	__font_bitmap__8_12,STT_OBJECT,3072
	.extern	conio_driver,STT_OBJECT,244
	.extern	vsprintf,STT_FUNC,0
	.extern	strlen,STT_FUNC,0
	.extern	PUT_FIFO_DISPLAY,STT_FUNC,0
	.extern	FIFO_DISPLAY_FREE,STT_FUNC,0
	.extern	tft_flush_row_buff,STT_FUNC,0
	.extern	Row_Buff,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
