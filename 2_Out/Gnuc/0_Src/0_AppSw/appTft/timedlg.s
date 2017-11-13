	.file	"timedlg.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	calibration_input
	.type	calibration_input, @function
calibration_input:
.LFB337:
	.file 1 "0_Src/0_AppSw/appTft/timedlg.c"
	.loc 1 113 0
.LVL0:
.LBB10:
.LBB11:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE11:
.LBE10:
	.loc 1 116 0
	mov	%d2, 0
	ret
.LFE337:
	.size	calibration_input, .-calibration_input
	.align 1
	.global	timedlg_input
	.type	timedlg_input, @function
timedlg_input:
.LFB340:
	.loc 1 144 0
.LVL1:
.LBB12:
.LBB13:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE13:
.LBE12:
	.loc 1 147 0
	mov	%d2, 0
	ret
.LFE340:
	.size	timedlg_input, .-timedlg_input
	.align 1
	.global	calibration_display
	.type	calibration_display, @function
calibration_display:
.LFB336:
	.loc 1 103 0
.LVL2:
	.loc 1 105 0
	movh.a	%a15, hi:calibrationlist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:calibrationlist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL3:
	ld.b	%d8, [%a15] 3
	jlt	%d8, %d15, .L3
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15]0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL4:
.L5:
	.loc 1 107 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL5:
	.loc 1 108 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 105 0 discriminator 3
	add	%d15, 1
.LVL6:
	.loc 1 108 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL7:
	.loc 1 105 0 discriminator 3
	jge	%d8, %d15, .L5
.L3:
	ret
.LFE336:
	.size	calibration_display, .-calibration_display
	.align 1
	.global	calibration_select_cancel
	.type	calibration_select_cancel, @function
calibration_select_cancel:
.LFB338:
	.loc 1 119 0
.LVL8:
	.loc 1 121 0
	movh.a	%a15, hi:calibrationlist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:calibrationlist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL9:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L14
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL10:
.L13:
	.loc 1 123 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL11:
	.loc 1 124 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 121 0 discriminator 3
	add	%d15, 1
.LVL12:
	.loc 1 124 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL13:
	.loc 1 121 0 discriminator 3
	jge.u	%d8, %d15, .L13
.L14:
	.loc 1 126 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL14:
	jz.t	%d15, 3, .L16
	.loc 1 128 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 129 0
	mov	%d15, 1
	movh.a	%a15, hi:rtc_calibration_finished
	st.b	[%a15] lo:rtc_calibration_finished, %d15
	ret
.L16:
	ret
.LFE338:
	.size	calibration_select_cancel, .-calibration_select_cancel
	.align 1
	.global	timedlg_display
	.type	timedlg_display, @function
timedlg_display:
.LFB339:
	.loc 1 134 0
.LVL15:
	.loc 1 136 0
	movh.a	%a15, hi:timedlglist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:timedlglist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL16:
	ld.b	%d8, [%a15] 3
	jlt	%d8, %d15, .L17
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15]0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL17:
.L19:
	.loc 1 138 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL18:
	.loc 1 139 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 136 0 discriminator 3
	add	%d15, 1
.LVL19:
	.loc 1 139 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL20:
	.loc 1 136 0 discriminator 3
	jge	%d8, %d15, .L19
.L17:
	ret
.LFE339:
	.size	timedlg_display, .-timedlg_display
	.align 1
	.global	timedlg_select_cancel
	.type	timedlg_select_cancel, @function
timedlg_select_cancel:
.LFB342:
	.loc 1 174 0
.LVL21:
	.loc 1 176 0
	movh.a	%a15, hi:timedlglist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:timedlglist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL22:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L27
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL23:
.L26:
	.loc 1 178 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL24:
	.loc 1 179 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 176 0 discriminator 3
	add	%d15, 1
.LVL25:
	.loc 1 179 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL26:
	.loc 1 176 0 discriminator 3
	jge.u	%d8, %d15, .L26
.L27:
	.loc 1 181 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL27:
	jnz.t	%d15, 3, .L31
	ret
.L31:
	.loc 1 183 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 184 0
	mov	%d15, 0
	movh.a	%a15, hi:rtc_calibration_finished
	st.b	[%a15] lo:rtc_calibration_finished, %d15
	.loc 1 185 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	mov	%d15, 0
	.loc 1 186 0
	ld.w	%d4, [%a15] 184
	.loc 1 185 0
	st.w	[%a15] 188, %d15
	.loc 1 186 0
	j	conio_ascii_clrscr
.LVL28:
.LFE342:
	.size	timedlg_select_cancel, .-timedlg_select_cancel
	.align 1
	.global	timedlg_select_up_down
	.type	timedlg_select_up_down, @function
timedlg_select_up_down:
.LFB343:
	.loc 1 191 0
.LVL29:
	.loc 1 193 0
	movh.a	%a15, hi:timedlglist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:timedlglist
	madd	%d2, %d15, %d4, 64
	.loc 1 191 0
	mov	%d11, %d4
	.loc 1 193 0
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL30:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L37
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL31:
.L36:
	.loc 1 195 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL32:
	.loc 1 196 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 193 0 discriminator 3
	add	%d15, 1
.LVL33:
	.loc 1 196 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL34:
	.loc 1 193 0 discriminator 3
	jge.u	%d8, %d15, .L36
.L37:
	.loc 1 198 0
	movh.a	%a2, hi:touch_driver
	lea	%a2, [%a2] lo:touch_driver
	ld.w	%d15, [%a2] 64
.LVL35:
	jz.t	%d15, 3, .L102
.LVL36:
.LBB18:
.LBB19:
	.loc 1 200 0
	jlt.u	%d11, 12, .L103
.LBB20:
.LBB21:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	ld.w	%d15, [%a2] 64
.L57:
.LBE21:
.LBE20:
	.loc 1 304 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a2] 64, %d15
	ret
.L103:
	.loc 1 200 0
	movh.a	%a15, hi:.L40
	lea	%a15, [%a15] lo:.L40
	addsc.a	%a15, %a15, %d11, 2
	ji	%a15
	.align 2
	.align 2
.L40:
	.code32
	j	.L39
	.code32
	j	.L41
	.code32
	j	.L42
	.code32
	j	.L43
	.code32
	j	.L44
	.code32
	j	.L45
	.code32
	j	.L46
	.code32
	j	.L47
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L50
	.code32
	j	.L51
.LVL37:
.L102:
.LBE19:
.LBE18:
	ret
.LVL38:
.L51:
.LBB23:
.LBB22:
	.loc 1 295 0
	movh.a	%a15, hi:Time2Set
	ld.bu	%d2, [%a15] lo:Time2Set
	jnz	%d2, .L77
	.loc 1 296 0
	mov	%d2, 89
	st.b	[%a15] lo:Time2Set, %d2
.L78:
	.loc 1 299 0
	ld.bu	%d2, [%a15] lo:Time2Set
	movh.a	%a3, hi:Time2Set
	and	%d2, %d2, 15
	ne	%d2, %d2, 15
	jnz	%d2, .L57
	ld.bu	%d2, [%a3] lo:Time2Set
	add	%d2, -6
	and	%d2, %d2, 255
	st.b	[%a3] lo:Time2Set, %d2
	j	.L57
.L39:
	.loc 1 202 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 4
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] 4, %d2
	.loc 1 203 0
	ld.bu	%d2, [%a15] 4
	and	%d2, %d2, 15
	ne	%d2, %d2, 10
	jz	%d2, .L104
.L52:
	.loc 1 205 0
	ld.bu	%d2, [%a15] 5
	jeq	%d2, 2, .L105
.L53:
	.loc 1 217 0
	ld.bu	%d2, [%a15] 5
	jeq	%d2, 4, .L55
	ld.bu	%d2, [%a15] 5
	jeq	%d2, 6, .L55
	ld.bu	%d2, [%a15] 5
	eq	%d2, %d2, 9
	jnz	%d2, .L55
	ld.bu	%d2, [%a15] 5
	ne	%d2, %d2, 11
	jz	%d2, .L55
.L56:
	.loc 1 221 0
	ld.bu	%d2, [%a15] 4
	lt.u	%d2, %d2, 50
	jnz	%d2, .L57
	mov	%d2, 1
	st.b	[%a15] 4, %d2
	j	.L57
.L41:
	.loc 1 223 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 5
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] 5, %d2
	.loc 1 224 0
	ld.bu	%d2, [%a15] 5
	and	%d2, %d2, 15
	ne	%d2, %d2, 10
	jz	%d2, .L106
.L58:
	.loc 1 225 0
	ld.bu	%d2, [%a15] 5
	lt.u	%d2, %d2, 19
	jnz	%d2, .L57
	mov	%d2, 1
	st.b	[%a15] 5, %d2
	j	.L57
.L42:
	.loc 1 227 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 6
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] 6, %d2
	.loc 1 228 0
	ld.bu	%d2, [%a15] 6
	and	%d2, %d2, 15
	ne	%d2, %d2, 10
	jz	%d2, .L107
.L59:
	.loc 1 229 0
	ld.bu	%d2, [%a15] 6
	lt.u	%d2, %d2, 154
	jnz	%d2, .L57
	.loc 1 281 0
	st.b	[%a15] 6, %d2
	j	.L57
.L43:
	.loc 1 231 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 2
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] 2, %d2
	.loc 1 232 0
	ld.bu	%d2, [%a15] 2
	and	%d2, %d2, 15
	ne	%d2, %d2, 10
	jz	%d2, .L108
.L60:
	.loc 1 233 0
	ld.bu	%d2, [%a15] 2
	lt.u	%d2, %d2, 36
	jnz	%d2, .L57
	.loc 1 287 0
	st.b	[%a15] 2, %d2
	j	.L57
.L44:
	.loc 1 235 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 1
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] 1, %d2
	.loc 1 236 0
	ld.bu	%d2, [%a15] 1
	and	%d2, %d2, 15
	ne	%d2, %d2, 10
	jz	%d2, .L109
.L61:
	.loc 1 237 0
	ld.bu	%d2, [%a15] 1
	lt.u	%d2, %d2, 90
	jnz	%d2, .L57
	.loc 1 293 0
	st.b	[%a15] 1, %d2
	j	.L57
.L47:
	.loc 1 271 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 5
	jeq	%d2, 1, .L110
	.loc 1 274 0
	ld.bu	%d2, [%a15] 5
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] 5, %d2
.L70:
	.loc 1 275 0
	ld.bu	%d2, [%a15] 5
	and	%d2, %d2, 15
	ne	%d2, %d2, 15
	jnz	%d2, .L57
	ld.bu	%d2, [%a15] 5
	add	%d2, -6
	and	%d2, %d2, 255
	st.b	[%a15] 5, %d2
	j	.L57
.L48:
	.loc 1 277 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 6
	jnz	%d2, .L71
	.loc 1 278 0
	mov	%d2, -103
	st.b	[%a15] 6, %d2
.L72:
	.loc 1 281 0
	ld.bu	%d2, [%a15] 6
	and	%d2, %d2, 15
	ne	%d2, %d2, 15
	jnz	%d2, .L57
	ld.bu	%d2, [%a15] 6
	add	%d2, -6
	and	%d2, %d2, 255
	st.b	[%a15] 6, %d2
	j	.L57
.L45:
	.loc 1 239 0
	movh.a	%a15, hi:Time2Set
	ld.bu	%d2, [%a15] lo:Time2Set
	add	%d2, 1
	and	%d2, %d2, 255
	st.b	[%a15] lo:Time2Set, %d2
	.loc 1 240 0
	ld.bu	%d2, [%a15] lo:Time2Set
	and	%d2, %d2, 15
	ne	%d2, %d2, 10
	jz	%d2, .L111
.L62:
	.loc 1 241 0
	ld.bu	%d2, [%a15] lo:Time2Set
	lt.u	%d2, %d2, 90
	jnz	%d2, .L57
	movh.a	%a15, hi:Time2Set
	st.b	[%a15] lo:Time2Set, %d2
	j	.L57
.L49:
	.loc 1 283 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 2
	jnz	%d2, .L73
	.loc 1 284 0
	mov	%d2, 35
	st.b	[%a15] 2, %d2
.L74:
	.loc 1 287 0
	ld.bu	%d2, [%a15] 2
	and	%d2, %d2, 15
	ne	%d2, %d2, 15
	jnz	%d2, .L57
	ld.bu	%d2, [%a15] 2
	add	%d2, -6
	and	%d2, %d2, 255
	st.b	[%a15] 2, %d2
	j	.L57
.L46:
	.loc 1 244 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 4
	jeq	%d2, 1, .L112
	.loc 1 268 0
	ld.bu	%d2, [%a15] 4
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] 4, %d2
.L66:
	.loc 1 269 0
	ld.bu	%d2, [%a15] 4
	and	%d2, %d2, 15
	ne	%d2, %d2, 15
	jnz	%d2, .L57
	ld.bu	%d2, [%a15] 4
	add	%d2, -6
	and	%d2, %d2, 255
	st.b	[%a15] 4, %d2
	j	.L57
.L50:
	.loc 1 289 0
	movh.a	%a15, hi:Time2Set
	lea	%a15, [%a15] lo:Time2Set
	ld.bu	%d2, [%a15] 1
	jnz	%d2, .L75
	.loc 1 290 0
	mov	%d2, 89
	st.b	[%a15] 1, %d2
.L76:
	.loc 1 293 0
	ld.bu	%d2, [%a15] 1
	and	%d2, %d2, 15
	ne	%d2, %d2, 15
	jnz	%d2, .L57
	ld.bu	%d2, [%a15] 1
	add	%d2, -6
	and	%d2, %d2, 255
	st.b	[%a15] 1, %d2
	j	.L57
.L55:
	.loc 1 219 0
	ld.bu	%d2, [%a15] 4
	lt.u	%d2, %d2, 49
	jnz	%d2, .L56
	mov	%d2, 1
	st.b	[%a15] 4, %d2
	j	.L56
.L71:
	.loc 1 280 0
	ld.bu	%d2, [%a15] 6
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] 6, %d2
	j	.L72
.L73:
	.loc 1 286 0
	ld.bu	%d2, [%a15] 2
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] 2, %d2
	j	.L74
.L77:
	.loc 1 298 0
	ld.bu	%d2, [%a15] lo:Time2Set
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] lo:Time2Set, %d2
	j	.L78
.L75:
	.loc 1 292 0
	ld.bu	%d2, [%a15] 1
	add	%d2, -1
	and	%d2, %d2, 255
	st.b	[%a15] 1, %d2
	j	.L76
.L108:
	.loc 1 232 0
	ld.bu	%d2, [%a15] 2
	add	%d2, 6
	and	%d2, %d2, 255
	st.b	[%a15] 2, %d2
	j	.L60
.L105:
	.loc 1 207 0
	ld.bu	%d2, [%a15] 6
	and	%d2, %d2, 3
	jz	%d2, .L54
	.loc 1 209 0
	ld.bu	%d2, [%a15] 4
	lt.u	%d2, %d2, 41
	jnz	%d2, .L53
.L98:
	.loc 1 213 0
	mov	%d2, 1
	st.b	[%a15] 4, %d2
	j	.L53
.L104:
	.loc 1 203 0
	ld.bu	%d2, [%a15] 4
	add	%d2, 6
	and	%d2, %d2, 255
	st.b	[%a15] 4, %d2
	j	.L52
.L106:
	.loc 1 224 0
	ld.bu	%d2, [%a15] 5
	add	%d2, 6
	and	%d2, %d2, 255
	st.b	[%a15] 5, %d2
	j	.L58
.L110:
	.loc 1 272 0
	mov	%d2, 18
	st.b	[%a15] 5, %d2
	j	.L70
.L107:
	.loc 1 228 0
	ld.bu	%d2, [%a15] 6
	add	%d2, 6
	and	%d2, %d2, 255
	st.b	[%a15] 6, %d2
	j	.L59
.L109:
	.loc 1 236 0
	ld.bu	%d2, [%a15] 1
	add	%d2, 6
	and	%d2, %d2, 255
	st.b	[%a15] 1, %d2
	j	.L61
.L111:
	.loc 1 240 0
	ld.bu	%d2, [%a15] lo:Time2Set
	add	%d2, 6
	and	%d2, %d2, 255
	st.b	[%a15] lo:Time2Set, %d2
	j	.L62
.L112:
	.loc 1 246 0
	ld.bu	%d2, [%a15] 5
	jeq	%d2, 2, .L113
	.loc 1 260 0
	ld.bu	%d2, [%a15] 5
	jeq	%d2, 4, .L67
	ld.bu	%d2, [%a15] 5
	jeq	%d2, 6, .L67
	ld.bu	%d2, [%a15] 5
	eq	%d2, %d2, 9
	jnz	%d2, .L67
	ld.bu	%d2, [%a15] 5
	ne	%d2, %d2, 11
	jz	%d2, .L67
	.loc 1 264 0
	mov	%d2, 49
	st.b	[%a15] 4, %d2
	j	.L66
.L54:
	.loc 1 213 0
	ld.bu	%d2, [%a15] 4
	lt.u	%d2, %d2, 42
	jnz	%d2, .L53
	j	.L98
.L67:
	.loc 1 262 0
	mov	%d2, 48
	st.b	[%a15] 4, %d2
	j	.L66
.L113:
	.loc 1 248 0
	ld.bu	%d2, [%a15] 6
	and	%d2, %d2, 3
	jz	%d2, .L65
	.loc 1 250 0
	mov	%d2, 40
	st.b	[%a15] 4, %d2
	j	.L66
.L65:
	.loc 1 254 0
	mov	%d2, 41
	st.b	[%a15] 4, %d2
	j	.L66
.LBE22:
.LBE23:
.LFE343:
	.size	timedlg_select_up_down, .-timedlg_select_up_down
	.align 1
	.global	timedlg_select_ok
	.type	timedlg_select_ok, @function
timedlg_select_ok:
.LFB341:
	.loc 1 150 0
.LVL39:
	.loc 1 152 0
	movh.a	%a15, hi:timedlglist
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:timedlglist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL40:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L119
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL41:
.L118:
	.loc 1 154 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
.LVL42:
	.loc 1 155 0 discriminator 3
	ld.w	%d4, [%a15] 184
	mov	%d5, %d10
	.loc 1 152 0 discriminator 3
	add	%d15, 1
.LVL43:
	.loc 1 155 0 discriminator 3
	call	conio_ascii_textchangecolor
.LVL44:
	.loc 1 152 0 discriminator 3
	jge.u	%d8, %d15, .L118
.L119:
	.loc 1 157 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL45:
	jz.t	%d15, 3, .L124
	.loc 1 159 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 161 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	ld.w	%d15, [%a15] 188
	jeq	%d15, 4, .L125
.L120:
.LVL46:
.LBB26:
.LBB27:
	.loc 1 162 0
	jeq	%d15, 5, .L126
.L121:
	.loc 1 167 0
	mov	%d15, 0
	movh.a	%a2, hi:rtc_calibration_finished
	.loc 1 169 0
	ld.w	%d4, [%a15] 184
	.loc 1 167 0
	st.b	[%a2] lo:rtc_calibration_finished, %d15
	.loc 1 168 0
	mov	%d15, 0
	st.w	[%a15] 188, %d15
	.loc 1 169 0
	j	display_ascii_clrscr
.LVL47:
.L124:
.LBE27:
.LBE26:
	ret
.L125:
	.loc 1 161 0 discriminator 1
	movh.a	%a4, hi:Time2Set
	lea	%a4, [%a4] lo:Time2Set
	call	rtc_settime
.LVL48:
	ld.w	%d15, [%a15] 188
	j	.L120
.LVL49:
.L126:
.LBB29:
.LBB28:
	.loc 1 164 0
	movh.a	%a4, hi:Time2Set
	lea	%a4, [%a4] lo:Time2Set
	mov	%d4, 0
	mov	%d5, 7
	call	rtc_setalarm
.LVL50:
	.loc 1 165 0
	mov	%d4, 0
	mov	%d5, 1
	call	rtc_alarm_onoff
.LVL51:
	j	.L121
.LBE28:
.LBE29:
.LFE341:
	.size	timedlg_select_ok, .-timedlg_select_ok
.section .rodata,"a",@progbits
.LC0:
	.string	"SET DATE AND TIME"
.LC1:
	.string	"%02x / %02x / %02x    %02x : %02x : %02x"
.section .text,"ax",@progbits
	.align 1
	.global	set_time
	.type	set_time, @function
set_time:
.LFB344:
	.loc 1 309 0
.LVL52:
	sub.a	%SP, 24
.LCFI0:
	.loc 1 309 0
	mov	%d11, %d4
	mov	%d12, %d5
	.loc 1 312 0
	mov	%e4, 1
.LVL53:
	call	conio_ascii_textcolor
.LVL54:
	.loc 1 315 0
	movh.a	%a15, hi:rtc_calibration_finished
	.loc 1 313 0
	mov	%d4, 1
	mov	%d5, 7
	call	conio_ascii_textbackground
.LVL55:
	.loc 1 315 0
	ld.bu	%d15, [%a15] lo:rtc_calibration_finished
	movh.a	%a15, hi:conio_driver
	mov	%d10, 0
	lea	%a15, [%a15] lo:conio_driver
	jnz	%d15, .L136
	movh	%d9, hi:calibration_outline
	addi	%d9, %d9, lo:calibration_outline
	.loc 1 322 0
	mov.aa	%a12, %a15
.L130:
.LVL56:
	.loc 1 319 0
	ld.w	%d4, [%a15] 184
	mul	%d8, %d10, 30
	mov	%d5, 5
	addi	%d6, %d10, 6
	call	conio_ascii_gotoxy
.LVL57:
	.loc 1 320 0
	mov	%d15, 0
.LVL58:
.L129:
	.loc 1 322 0 discriminator 3
	mov.a	%a3, %d9
	add	%d2, %d15, %d8
	addsc.a	%a2, %a3, %d2, 0
	ld.w	%d4, [%a15] 184
	ld.bu	%d5, [%a2]0
	.loc 1 320 0 discriminator 3
	add	%d15, 1
.LVL59:
	.loc 1 322 0 discriminator 3
	call	conio_ascii_putch
.LVL60:
	.loc 1 320 0 discriminator 3
	ne	%d2, %d15, 30
	jnz	%d2, .L129
	.loc 1 317 0 discriminator 2
	add	%d10, 1
.LVL61:
	jne	%d10, 6, .L130
	.loc 1 325 0
	ld.w	%d4, [%a12] 184
	.loc 1 329 0
	addi	%d11, %d11, -16
	.loc 1 325 0
	mov	%d5, 5
	mov	%d6, 0
	.loc 1 329 0
	extr.u	%d11, %d11, 0, 16
	.loc 1 325 0
	call	conio_ascii_gotoxy
.LVL62:
	.loc 1 329 0
	eq	%d15, %d12, 9
	.loc 1 331 0
	movh.a	%a4, hi:calibrationlist
	.loc 1 329 0
	and.lt.u	%d15, %d11, 8
	.loc 1 331 0
	mov	%d4, 0
	lea	%a4, [%a4] lo:calibrationlist
	.loc 1 329 0
	jnz	%d15, .L131
	.loc 1 366 0
	lea	%SP, [%SP] 24
	.loc 1 335 0
	j	calibration_display
.LVL63:
.L136:
	movh	%d9, hi:timedlg_outline
	addi	%d9, %d9, lo:timedlg_outline
	.loc 1 346 0
	mov.aa	%a12, %a15
.L128:
.LVL64:
	.loc 1 343 0
	ld.w	%d4, [%a15] 184
	mul	%d8, %d10, 34
	mov	%d5, 3
	addi	%d6, %d10, 3
	call	conio_ascii_gotoxy
.LVL65:
	.loc 1 344 0
	mov	%d15, 0
.LVL66:
.L132:
	.loc 1 346 0 discriminator 3
	mov.a	%a3, %d9
	add	%d2, %d15, %d8
	addsc.a	%a2, %a3, %d2, 0
	ld.w	%d4, [%a15] 184
	ld.bu	%d5, [%a2]0
	.loc 1 344 0 discriminator 3
	add	%d15, 1
.LVL67:
	.loc 1 346 0 discriminator 3
	call	conio_ascii_putch
.LVL68:
	.loc 1 344 0 discriminator 3
	ne	%d2, %d15, 34
	jnz	%d2, .L132
	.loc 1 341 0 discriminator 2
	add	%d10, 1
.LVL69:
	ne	%d15, %d10, 13
.LVL70:
	jnz	%d15, .L128
	.loc 1 350 0
	ld.w	%d4, [%a12] 184
	mov	%d5, 11
	mov	%d6, 4
	call	conio_ascii_gotoxy
.LVL71:
	.loc 1 351 0
	ld.w	%d4, [%a12] 184
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	conio_ascii_cputs
.LVL72:
	.loc 1 352 0
	movh.a	%a2, hi:Time2Set
	lea	%a15, [%a2] lo:Time2Set
	ld.bu	%d6, [%a15] 4
	ld.bu	%d5, [%a15] 5
	ld.bu	%d4, [%a15] 6
	ld.bu	%d3, [%a15] 2
	ld.bu	%d2, [%a15] 1
	ld.bu	%d15, [%a2] lo:Time2Set
	st.w	[%SP]0, %d6
	st.w	[%SP] 4, %d5
	st.w	[%SP] 12, %d3
	st.w	[%SP] 16, %d2
	st.w	[%SP] 20, %d15
	st.w	[%SP] 8, %d4
	ld.w	%d4, [%a12] 184
	movh.a	%a4, hi:.LC1
	mov	%d5, 6
	mov	%d6, 8
	lea	%a4, [%a4] lo:.LC1
	call	conio_ascii_printfxy
.LVL73:
	.loc 1 353 0
	ld.w	%d4, [%a12] 184
	movh.a	%a13, hi:timedlglist
	mov	%d5, 3
	mov	%d6, 0
	lea	%a13, [%a13] lo:timedlglist
	call	conio_ascii_gotoxy
.LVL74:
	mov.aa	%a12, %a13
	.loc 1 355 0
	mov	%d15, 0
.LVL75:
.L135:
	.loc 1 357 0
	sh	%d3, %d15, 6
	addsc.a	%a15, %a13, %d3, 0
	ld.b	%d2, [%a15] 2
	jlt	%d11, %d2, .L133
	.loc 1 357 0 is_stmt 0 discriminator 1
	ld.b	%d2, [%a15] 3
	jlt	%d2, %d11, .L133
	.loc 1 357 0 discriminator 2
	ld.b	%d2, [%a15] 4
	jeq	%d2, %d12, .L142
.L133:
	.loc 1 363 0 is_stmt 1
	addsc.a	%a15, %a13, %d3, 0
	mov	%d4, %d15
	ld.a	%a15, [%a15] 12
	mov.aa	%a4, %a12
	calli	%a15
.LVL76:
.L134:
	.loc 1 355 0 discriminator 2
	add	%d15, 1
.LVL77:
	ne	%d2, %d15, 14
	lea	%a12, [%a12] 64
	jnz	%d2, .L135
	.loc 1 366 0
	ret
.L142:
	.loc 1 359 0
	ld.a	%a15, [%a15] 8
	mov	%d4, %d15
	mov.aa	%a4, %a12
	calli	%a15
.LVL78:
	j	.L134
.LVL79:
.L131:
	.loc 1 366 0
	lea	%SP, [%SP] 24
	.loc 1 331 0
	j	calibration_select_cancel
.LVL80:
.LFE344:
	.size	set_time, .-set_time
.section .rodata,"a",@progbits
.LC2:
	.string	"SET ALARM TIME"
.section .text,"ax",@progbits
	.align 1
	.global	set_alarmtime
	.type	set_alarmtime, @function
set_alarmtime:
.LFB345:
	.loc 1 369 0
.LVL81:
	sub.a	%SP, 24
.LCFI1:
	.loc 1 369 0
	mov	%d11, %d4
	mov	%d12, %d5
	.loc 1 371 0
	mov	%e4, 1
.LVL82:
	call	conio_ascii_textcolor
.LVL83:
	movh.a	%a15, hi:conio_driver
	.loc 1 372 0
	mov	%d4, 1
	mov	%d5, 7
	lea	%a15, [%a15] lo:conio_driver
	movh	%d9, hi:timedlg_outline
	call	conio_ascii_textbackground
.LVL84:
	.loc 1 374 0
	mov	%d10, 0
	addi	%d9, %d9, lo:timedlg_outline
	.loc 1 379 0
	mov.aa	%a12, %a15
.LVL85:
.L145:
	.loc 1 376 0
	ld.w	%d4, [%a15] 184
	mul	%d8, %d10, 34
	mov	%d5, 3
	addi	%d6, %d10, 3
	call	conio_ascii_gotoxy
.LVL86:
	.loc 1 377 0
	mov	%d15, 0
.LVL87:
.L144:
	.loc 1 379 0 discriminator 3
	mov.a	%a3, %d9
	add	%d2, %d15, %d8
	addsc.a	%a2, %a3, %d2, 0
	ld.w	%d4, [%a15] 184
	ld.bu	%d5, [%a2]0
	.loc 1 377 0 discriminator 3
	add	%d15, 1
.LVL88:
	.loc 1 379 0 discriminator 3
	call	conio_ascii_putch
.LVL89:
	.loc 1 377 0 discriminator 3
	ne	%d2, %d15, 34
	jnz	%d2, .L144
	.loc 1 374 0 discriminator 2
	add	%d10, 1
.LVL90:
	ne	%d15, %d10, 13
.LVL91:
	jnz	%d15, .L145
	.loc 1 383 0
	ld.w	%d4, [%a12] 184
	mov	%d5, 13
	mov	%d6, 4
	call	conio_ascii_gotoxy
.LVL92:
	.loc 1 384 0
	ld.w	%d4, [%a12] 184
	movh.a	%a4, hi:.LC2
	lea	%a4, [%a4] lo:.LC2
	call	conio_ascii_cputs
.LVL93:
	.loc 1 385 0
	movh.a	%a2, hi:Time2Set
	lea	%a15, [%a2] lo:Time2Set
	ld.bu	%d6, [%a15] 4
	ld.bu	%d5, [%a15] 5
	ld.bu	%d4, [%a15] 6
	ld.bu	%d3, [%a15] 2
	ld.bu	%d2, [%a15] 1
	ld.bu	%d15, [%a2] lo:Time2Set
	st.w	[%SP]0, %d6
	st.w	[%SP] 4, %d5
	st.w	[%SP] 12, %d3
	st.w	[%SP] 16, %d2
	st.w	[%SP] 20, %d15
	st.w	[%SP] 8, %d4
	ld.w	%d4, [%a12] 184
	movh.a	%a4, hi:.LC1
	mov	%d5, 6
	mov	%d6, 8
	lea	%a4, [%a4] lo:.LC1
	call	conio_ascii_printfxy
.LVL94:
	.loc 1 386 0
	ld.w	%d4, [%a12] 184
	movh.a	%a13, hi:timedlglist
	mov	%d5, 3
	mov	%d6, 0
	lea	%a13, [%a13] lo:timedlglist
	call	conio_ascii_gotoxy
.LVL95:
	mov.aa	%a12, %a13
	.loc 1 388 0
	mov	%d15, 0
.LVL96:
.L148:
	.loc 1 390 0
	sh	%d3, %d15, 6
	addsc.a	%a15, %a13, %d3, 0
	ld.b	%d2, [%a15] 2
	jlt	%d11, %d2, .L146
	.loc 1 390 0 is_stmt 0 discriminator 1
	ld.b	%d2, [%a15] 3
	jlt	%d2, %d11, .L146
	.loc 1 390 0 discriminator 2
	ld.b	%d2, [%a15] 4
	jeq	%d2, %d12, .L152
.L146:
	.loc 1 396 0 is_stmt 1
	addsc.a	%a15, %a13, %d3, 0
	mov	%d4, %d15
	ld.a	%a15, [%a15] 12
	mov.aa	%a4, %a12
	calli	%a15
.LVL97:
.L147:
	.loc 1 388 0 discriminator 2
	add	%d15, 1
.LVL98:
	ne	%d2, %d15, 14
	lea	%a12, [%a12] 64
	jnz	%d2, .L148
	.loc 1 399 0
	ret
.L152:
	.loc 1 392 0
	ld.a	%a15, [%a15] 8
	mov	%d4, %d15
	mov.aa	%a4, %a12
	calli	%a15
.LVL99:
	j	.L147
.LFE345:
	.size	set_alarmtime, .-set_alarmtime
	.global	Time2Set
.section .bss,"aw",@nobits
	.align 1
	.type	Time2Set, @object
	.size	Time2Set, 8
Time2Set:
	.zero	8
	.global	calibrationlist
.section .rodata,"a",@progbits
	.align 2
	.type	calibrationlist, @object
	.size	calibrationlist, 64
calibrationlist:
	.byte	112
	.byte	12
	.byte	16
	.byte	23
	.byte	9
	.zero	3
	.word	calibration_select_cancel
	.word	calibration_display
	.word	calibration_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.global	calibration_outline
	.type	calibration_outline, @object
	.size	calibration_outline, 180
calibration_outline:
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
	.byte	67
	.byte	65
	.byte	76
	.byte	73
	.byte	66
	.byte	82
	.byte	65
	.byte	84
	.byte	73
	.byte	78
	.byte	71
	.byte	32
	.byte	82
	.byte	84
	.byte	67
	.byte	32
	.byte	80
	.byte	76
	.byte	69
	.byte	65
	.byte	83
	.byte	69
	.byte	32
	.byte	87
	.byte	65
	.byte	73
	.byte	84
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
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
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
	.global	timedlglist
	.align 2
	.type	timedlglist, @object
	.size	timedlglist, 896
timedlglist:
	.byte	112
	.byte	12
	.byte	6
	.byte	7
	.byte	6
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	11
	.byte	12
	.byte	6
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	16
	.byte	17
	.byte	6
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	22
	.byte	23
	.byte	6
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	27
	.byte	28
	.byte	6
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	32
	.byte	33
	.byte	6
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	6
	.byte	7
	.byte	10
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	11
	.byte	12
	.byte	10
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	16
	.byte	17
	.byte	10
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	22
	.byte	23
	.byte	10
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	27
	.byte	28
	.byte	10
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	32
	.byte	33
	.byte	10
	.zero	3
	.word	timedlg_select_up_down
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	8
	.byte	15
	.byte	13
	.zero	3
	.word	timedlg_select_ok
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	24
	.byte	31
	.byte	13
	.zero	3
	.word	timedlg_select_cancel
	.word	timedlg_display
	.word	timedlg_input
	.string	""
	.zero	39
	.byte	0
	.zero	3
	.global	timedlg_outline
	.type	timedlg_outline, @object
	.size	timedlg_outline, 442
timedlg_outline:
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
	.byte	69
	.byte	78
	.byte	84
	.byte	69
	.byte	82
	.byte	32
	.byte	65
	.byte	32
	.byte	84
	.byte	73
	.byte	84
	.byte	76
	.byte	69
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
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	0
	.byte	30
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	30
	.byte	30
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	0
	.byte	48
	.byte	49
	.byte	0
	.byte	47
	.byte	0
	.byte	48
	.byte	49
	.byte	0
	.byte	47
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	58
	.byte	0
	.byte	48
	.byte	48
	.byte	0
	.byte	58
	.byte	0
	.byte	48
	.byte	48
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
	.byte	0
	.byte	31
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	31
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-77
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
	.byte	0
	.byte	-77
	.byte	-77
	.byte	0
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
	.byte	0
	.byte	-77
	.byte	-77
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
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
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
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
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
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.byte	0x4
	.uaword	.LCFI0-.LFB344
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.byte	0x4
	.uaword	.LCFI1-.LFB345
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "./0_Src/0_AppSw/Tft/conio_tft.h"
	.file 6 "./0_Src/0_AppSw/Tft/touch.h"
	.file 7 "./0_Src/0_AppSw/Rtc/RTC.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1560
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/appTft/timedlg.c"
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x68
	.uaword	0x1ba
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
	.uaword	0x2e1
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
	.uaword	0x27c
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x23
	.uaword	0x34d
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
	.uaword	0x2f4
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2e
	.uaword	0x3d6
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
	.uaword	0x361
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x38
	.uaword	0x469
	.uleb128 0x7
	.string	"pdisplay"
	.byte	0x4
	.byte	0x3a
	.uaword	0x469
	.byte	0
	.uleb128 0x7
	.string	"pdisplaycolor"
	.byte	0x4
	.byte	0x3b
	.uaword	0x469
	.byte	0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x4
	.byte	0x3c
	.uaword	0x3d6
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
	.uaword	0x3e3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.uaword	0x1ad
	.uaword	0x4a0
	.uleb128 0xa
	.uaword	0x484
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x5
	.byte	0x8b
	.uaword	0x54e
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
	.uaword	0x565
	.byte	0x8
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0x94
	.uaword	0x565
	.byte	0xc
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0x95
	.uaword	0x580
	.byte	0x10
	.uleb128 0x7
	.string	"text"
	.byte	0x5
	.byte	0x96
	.uaword	0x490
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
	.uaword	0x55f
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x55f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x4a0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x54e
	.uleb128 0xd
	.byte	0x1
	.uaword	0x1fc
	.uaword	0x580
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x55f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x56b
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x5
	.byte	0x98
	.uaword	0x4a0
	.uleb128 0x6
	.string	"CONIO_DRIVER"
	.byte	0xf4
	.byte	0x5
	.byte	0x9d
	.uaword	0x6bd
	.uleb128 0x7
	.string	"pmenulist"
	.byte	0x5
	.byte	0x9f
	.uaword	0x6bd
	.byte	0
	.uleb128 0x7
	.string	"pstdlist"
	.byte	0x5
	.byte	0xa0
	.uaword	0x6bd
	.byte	0x4
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0xa1
	.uaword	0x6c3
	.byte	0x8
	.uleb128 0x7
	.string	"pdasmirror"
	.byte	0x5
	.byte	0xa2
	.uaword	0x6d3
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
	.uaword	0x34d
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
	.uaword	0x34d
	.byte	0xb8
	.uleb128 0x7
	.string	"dialogmode"
	.byte	0x5
	.byte	0xa7
	.uaword	0x2e1
	.byte	0xbc
	.uleb128 0x7
	.string	"scanfdescr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x6d9
	.byte	0xc0
	.uleb128 0x7
	.string	"scanftext"
	.byte	0x5
	.byte	0xa9
	.uaword	0x6d9
	.byte	0xd4
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0xaa
	.uaword	0x6fe
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
	.uaword	0x586
	.uleb128 0x9
	.uaword	0x46f
	.uaword	0x6d3
	.uleb128 0xa
	.uaword	0x484
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x20a
	.uleb128 0x9
	.uaword	0x1ad
	.uaword	0x6e9
	.uleb128 0xa
	.uaword	0x484
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x1fc
	.uaword	0x6fe
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x6bd
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6e9
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x5
	.byte	0xae
	.uaword	0x59b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.uaword	0x785
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
	.uaword	0x729
	.uleb128 0x6
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x6
	.byte	0x42
	.uaword	0x8f9
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
	.uaword	0x785
	.byte	0x38
	.uleb128 0x7
	.string	"prev_status"
	.byte	0x6
	.byte	0x57
	.uaword	0x785
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
	.uaword	0x79a
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.byte	0x25
	.uaword	0x99c
	.uleb128 0xf
	.string	"running"
	.byte	0x7
	.byte	0x26
	.uaword	0x1ad
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"hour_12"
	.byte	0x7
	.byte	0x27
	.uaword	0x1ad
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"pm_set"
	.byte	0x7
	.byte	0x28
	.uaword	0x1ad
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"leap_year"
	.byte	0x7
	.byte	0x29
	.uaword	0x1ad
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"alarm0"
	.byte	0x7
	.byte	0x2a
	.uaword	0x1ad
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"alarm1"
	.byte	0x7
	.byte	0x2b
	.uaword	0x1ad
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"reserved"
	.byte	0x7
	.byte	0x2c
	.uaword	0x1ad
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.byte	0x7
	.byte	0x23
	.uaword	0x9b7
	.uleb128 0x11
	.string	"U"
	.byte	0x7
	.byte	0x24
	.uaword	0x1ad
	.uleb128 0x11
	.string	"B"
	.byte	0x7
	.byte	0x2d
	.uaword	0x90e
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.byte	0x1a
	.uaword	0xa30
	.uleb128 0x7
	.string	"seconds"
	.byte	0x7
	.byte	0x1c
	.uaword	0x1ad
	.byte	0
	.uleb128 0x7
	.string	"minutes"
	.byte	0x7
	.byte	0x1d
	.uaword	0x1ad
	.byte	0x1
	.uleb128 0x7
	.string	"hours"
	.byte	0x7
	.byte	0x1e
	.uaword	0x1ad
	.byte	0x2
	.uleb128 0x7
	.string	"day"
	.byte	0x7
	.byte	0x1f
	.uaword	0x1ad
	.byte	0x3
	.uleb128 0x7
	.string	"date"
	.byte	0x7
	.byte	0x20
	.uaword	0x1ad
	.byte	0x4
	.uleb128 0x7
	.string	"month"
	.byte	0x7
	.byte	0x21
	.uaword	0x1ad
	.byte	0x5
	.uleb128 0x7
	.string	"year"
	.byte	0x7
	.byte	0x22
	.uaword	0x1ad
	.byte	0x6
	.uleb128 0x7
	.string	"flags"
	.byte	0x7
	.byte	0x2e
	.uaword	0xa30
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.uaword	0x99c
	.uleb128 0x3
	.string	"TIME"
	.byte	0x7
	.byte	0x2f
	.uaword	0xa41
	.uleb128 0x12
	.uaword	0x9b7
	.uleb128 0x13
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.byte	0x1
	.string	"timedlg_select_up_down"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.byte	0x1
	.uaword	0xa95
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0xbe
	.uaword	0x1fc
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbe
	.uaword	0x6bd
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0xc0
	.uaword	0x20a
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"timedlg_select_ok"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.uaword	0xad1
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0x95
	.uaword	0x1fc
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.byte	0x95
	.uaword	0x6bd
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0x97
	.uaword	0x20a
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"calibration_input"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	0x1fc
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb25
	.uleb128 0x19
	.string	"ind"
	.byte	0x1
	.byte	0x70
	.uaword	0x1fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x70
	.uaword	0x6bd
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.uaword	0xa46
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0x72
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"timedlg_input"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x1fc
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb75
	.uleb128 0x19
	.string	"ind"
	.byte	0x1
	.byte	0x8f
	.uaword	0x1fc
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8f
	.uaword	0x6bd
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.uaword	0xa46
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0x91
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"calibration_display"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbf3
	.uleb128 0x1d
	.string	"ind"
	.byte	0x1
	.byte	0x66
	.uaword	0x1fc
	.uaword	.LLST0
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.byte	0x66
	.uaword	0x6bd
	.uaword	.LLST1
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0x68
	.uaword	0x1fc
	.uaword	.LLST2
	.uleb128 0x20
	.uaword	.LVL5
	.uaword	0x1359
	.uaword	0xbe2
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL7
	.uaword	0x1386
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"calibration_select_cancel"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc77
	.uleb128 0x1d
	.string	"ind"
	.byte	0x1
	.byte	0x76
	.uaword	0x1fc
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.byte	0x76
	.uaword	0x6bd
	.uaword	.LLST4
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0x78
	.uaword	0x20a
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	.LVL11
	.uaword	0x1359
	.uaword	0xc66
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL13
	.uaword	0x1386
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"timedlg_display"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcf1
	.uleb128 0x1d
	.string	"ind"
	.byte	0x1
	.byte	0x85
	.uaword	0x1fc
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.byte	0x85
	.uaword	0x6bd
	.uaword	.LLST7
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0x87
	.uaword	0x1fc
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	.LVL18
	.uaword	0x1359
	.uaword	0xce0
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL20
	.uaword	0x1386
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"timedlg_select_cancel"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	.LFB342
	.uaword	.LFE342
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd7f
	.uleb128 0x1d
	.string	"ind"
	.byte	0x1
	.byte	0xad
	.uaword	0x1fc
	.uaword	.LLST9
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.byte	0xad
	.uaword	0x6bd
	.uaword	.LLST10
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0xaf
	.uaword	0x20a
	.uaword	.LLST11
	.uleb128 0x20
	.uaword	.LVL24
	.uaword	0x1359
	.uaword	0xd60
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL26
	.uaword	0x1386
	.uaword	0xd74
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x13b7
	.byte	0
	.uleb128 0x24
	.uaword	0xa54
	.uaword	.LFB343
	.uaword	.LFE343
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe10
	.uleb128 0x25
	.uaword	0xa75
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	0xa80
	.uaword	.LLST13
	.uleb128 0x26
	.uaword	0xa8b
	.uaword	.LLST14
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uaword	0xde5
	.uleb128 0x25
	.uaword	0xa80
	.uaword	.LLST15
	.uleb128 0x25
	.uaword	0xa75
	.uaword	.LLST16
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x29
	.uaword	0xa8b
	.uleb128 0x2a
	.uaword	0xa46
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.uahalf	0x12d
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL32
	.uaword	0x1359
	.uaword	0xdff
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL34
	.uaword	0x1386
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xa95
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xee7
	.uleb128 0x25
	.uaword	0xab1
	.uaword	.LLST17
	.uleb128 0x25
	.uaword	0xabc
	.uaword	.LLST18
	.uleb128 0x26
	.uaword	0xac7
	.uaword	.LLST19
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0xea5
	.uleb128 0x25
	.uaword	0xab1
	.uaword	.LLST20
	.uleb128 0x25
	.uaword	0xabc
	.uaword	.LLST20
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x29
	.uaword	0xac7
	.uleb128 0x23
	.uaword	.LVL47
	.byte	0x1
	.uaword	0x13da
	.uleb128 0x20
	.uaword	.LVL50
	.uaword	0x1400
	.uaword	0xe8f
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x37
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Time2Set
	.byte	0
	.uleb128 0x22
	.uaword	.LVL51
	.uaword	0x1431
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL42
	.uaword	0x1359
	.uaword	0xebf
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL44
	.uaword	0x1386
	.uaword	0xed3
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL48
	.uaword	0x145a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Time2Set
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"set_time"
	.byte	0x1
	.uahalf	0x134
	.byte	0x1
	.uaword	.LFB344
	.uaword	.LFE344
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10bc
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x1cb
	.uaword	.LLST22
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x1cb
	.uaword	.LLST23
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x1fc
	.uaword	.LLST24
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x1fc
	.uaword	.LLST25
	.uleb128 0x20
	.uaword	.LVL54
	.uaword	0x147a
	.uaword	0xf55
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.uaword	.LVL55
	.uaword	0x14a5
	.uaword	0xf6d
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x37
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.uaword	.LVL57
	.uaword	0x1359
	.uaword	0xf86
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 6
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.uaword	.LVL60
	.uaword	0x14d5
	.uaword	0xfa4
	.uleb128 0x21
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
	.uleb128 0x20
	.uaword	.LVL62
	.uaword	0x1359
	.uaword	0xfbc
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL63
	.byte	0x1
	.uaword	0xb75
	.uaword	0xfd9
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	calibrationlist
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.uaword	.LVL65
	.uaword	0x1359
	.uaword	0xff2
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 3
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x20
	.uaword	.LVL68
	.uaword	0x14d5
	.uaword	0x1010
	.uleb128 0x21
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
	.uleb128 0x20
	.uaword	.LVL71
	.uaword	0x1359
	.uaword	0x1028
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x20
	.uaword	.LVL72
	.uaword	0x14fc
	.uaword	0x103f
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL73
	.uaword	0x1523
	.uaword	0x1067
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x38
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 20
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL74
	.uaword	0x1359
	.uaword	0x107f
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL76
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1098
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL78
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x10b1
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL80
	.byte	0x1
	.uaword	0xbf3
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"set_alarmtime"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	.LFB345
	.uaword	.LFE345
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x121c
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x1cb
	.uaword	.LLST26
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x1cb
	.uaword	.LLST27
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x1fc
	.uaword	.LLST28
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x1fc
	.uaword	.LLST29
	.uleb128 0x20
	.uaword	.LVL83
	.uaword	0x147a
	.uaword	0x112f
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.uaword	.LVL84
	.uaword	0x14a5
	.uaword	0x1147
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x37
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.uaword	.LVL86
	.uaword	0x1359
	.uaword	0x1160
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 3
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x20
	.uaword	.LVL89
	.uaword	0x14d5
	.uaword	0x117e
	.uleb128 0x21
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
	.uleb128 0x20
	.uaword	.LVL92
	.uaword	0x1359
	.uaword	0x1196
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x34
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x20
	.uaword	.LVL93
	.uaword	0x14fc
	.uaword	0x11ad
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.uleb128 0x20
	.uaword	.LVL94
	.uaword	0x1523
	.uaword	0x11d5
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x38
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x21
	.byte	0x2
	.byte	0x8a
	.sleb128 20
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL95
	.uaword	0x1359
	.uaword	0x11ed
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL97
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1206
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL99
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.string	"conio_driver"
	.byte	0x5
	.byte	0xc9
	.uaword	0x704
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"touch_driver"
	.byte	0x6
	.byte	0x5b
	.uaword	0x8f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x1ad
	.uaword	0x125e
	.uleb128 0xa
	.uaword	0x484
	.byte	0xc
	.uleb128 0xa
	.uaword	0x484
	.byte	0x21
	.byte	0
	.uleb128 0x32
	.string	"timedlg_outline"
	.byte	0x1
	.byte	0x2f
	.uaword	0x127c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	timedlg_outline
	.uleb128 0x33
	.uaword	0x1248
	.uleb128 0x9
	.uaword	0x586
	.uaword	0x1291
	.uleb128 0xa
	.uaword	0x484
	.byte	0xd
	.byte	0
	.uleb128 0x32
	.string	"timedlglist"
	.byte	0x1
	.byte	0x3f
	.uaword	0x12ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	timedlglist
	.uleb128 0x33
	.uaword	0x1281
	.uleb128 0x9
	.uaword	0x1ad
	.uaword	0x12c6
	.uleb128 0xa
	.uaword	0x484
	.byte	0x5
	.uleb128 0xa
	.uaword	0x484
	.byte	0x1d
	.byte	0
	.uleb128 0x32
	.string	"calibration_outline"
	.byte	0x1
	.byte	0x50
	.uaword	0x12e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	calibration_outline
	.uleb128 0x33
	.uaword	0x12b0
	.uleb128 0x9
	.uaword	0x586
	.uaword	0x12fd
	.uleb128 0xa
	.uaword	0x484
	.byte	0
	.byte	0
	.uleb128 0x32
	.string	"calibrationlist"
	.byte	0x1
	.byte	0x59
	.uaword	0x131b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	calibrationlist
	.uleb128 0x33
	.uaword	0x12ed
	.uleb128 0x32
	.string	"Time2Set"
	.byte	0x1
	.byte	0x61
	.uaword	0xa35
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Time2Set
	.uleb128 0x31
	.string	"rtc_calibration_finished"
	.byte	0x1
	.byte	0x62
	.uaword	0x23a
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_gotoxy"
	.byte	0x5
	.byte	0xd8
	.byte	0x1
	.byte	0x1
	.uaword	0x1386
	.uleb128 0xc
	.uaword	0x34d
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x1fc
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_textchangecolor"
	.byte	0x5
	.byte	0xde
	.byte	0x1
	.byte	0x1
	.uaword	0x13b7
	.uleb128 0xc
	.uaword	0x34d
	.uleb128 0xc
	.uaword	0x1fc
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_clrscr"
	.byte	0x5
	.byte	0xd6
	.byte	0x1
	.byte	0x1
	.uaword	0x13da
	.uleb128 0xc
	.uaword	0x34d
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"display_ascii_clrscr"
	.byte	0x5
	.uahalf	0x109
	.byte	0x1
	.byte	0x1
	.uaword	0x1400
	.uleb128 0xc
	.uaword	0x34d
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"rtc_setalarm"
	.byte	0x7
	.byte	0x46
	.byte	0x1
	.uaword	0x1fc
	.byte	0x1
	.uaword	0x142b
	.uleb128 0xc
	.uaword	0x142b
	.uleb128 0xc
	.uaword	0x1ad
	.uleb128 0xc
	.uaword	0x1ad
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xa35
	.uleb128 0x36
	.byte	0x1
	.string	"rtc_alarm_onoff"
	.byte	0x7
	.byte	0x47
	.byte	0x1
	.uaword	0x1fc
	.byte	0x1
	.uaword	0x145a
	.uleb128 0xc
	.uaword	0x1ad
	.uleb128 0xc
	.uaword	0x1ad
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"rtc_settime"
	.byte	0x7
	.byte	0x45
	.byte	0x1
	.uaword	0x1fc
	.byte	0x1
	.uaword	0x147a
	.uleb128 0xc
	.uaword	0x142b
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_textcolor"
	.byte	0x5
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uaword	0x14a5
	.uleb128 0xc
	.uaword	0x34d
	.uleb128 0xc
	.uaword	0x1fc
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_textbackground"
	.byte	0x5
	.byte	0xda
	.byte	0x1
	.byte	0x1
	.uaword	0x14d5
	.uleb128 0xc
	.uaword	0x34d
	.uleb128 0xc
	.uaword	0x1fc
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_putch"
	.byte	0x5
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uaword	0x14fc
	.uleb128 0xc
	.uaword	0x34d
	.uleb128 0xc
	.uaword	0x1ad
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_cputs"
	.byte	0x5
	.byte	0xd4
	.byte	0x1
	.byte	0x1
	.uaword	0x1523
	.uleb128 0xc
	.uaword	0x34d
	.uleb128 0xc
	.uaword	0x469
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"conio_ascii_printfxy"
	.byte	0x5
	.byte	0xdf
	.byte	0x1
	.byte	0x1
	.uaword	0x1558
	.uleb128 0xc
	.uaword	0x34d
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x1fc
	.uleb128 0xc
	.uaword	0x1558
	.uleb128 0x37
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x155e
	.uleb128 0x33
	.uaword	0x1ad
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
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-.Ltext0
	.uaword	.LFE338-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL20-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL26-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL30-.Ltext0
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
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL40-.Ltext0
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
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL49-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL53-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL59-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL63-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL64-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL82-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87-.Ltext0
	.uaword	.LVL88-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85-.Ltext0
	.uaword	.LFE345-.Ltext0
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18-.Ltext0
	.uaword	.LBE18-.Ltext0
	.uaword	.LBB23-.Ltext0
	.uaword	.LBE23-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB26-.Ltext0
	.uaword	.LBE26-.Ltext0
	.uaword	.LBB29-.Ltext0
	.uaword	.LBE29-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"pdisplayentry"
	.extern	conio_ascii_printfxy,STT_FUNC,0
	.extern	conio_ascii_cputs,STT_FUNC,0
	.extern	conio_ascii_putch,STT_FUNC,0
	.extern	conio_ascii_textbackground,STT_FUNC,0
	.extern	conio_ascii_textcolor,STT_FUNC,0
	.extern	rtc_alarm_onoff,STT_FUNC,0
	.extern	rtc_setalarm,STT_FUNC,0
	.extern	rtc_settime,STT_FUNC,0
	.extern	display_ascii_clrscr,STT_FUNC,0
	.extern	conio_ascii_clrscr,STT_FUNC,0
	.extern	rtc_calibration_finished,STT_OBJECT,1
	.extern	touch_driver,STT_OBJECT,68
	.extern	conio_ascii_textchangecolor,STT_FUNC,0
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_driver,STT_OBJECT,244
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
