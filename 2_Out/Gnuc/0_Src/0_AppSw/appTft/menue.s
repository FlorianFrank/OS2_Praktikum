	.file	"menue.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	menu_input
	.type	menu_input, @function
menu_input:
.LFB338:
	.file 1 "0_Src/0_AppSw/appTft/menue.c"
	.loc 1 124 0
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
	.loc 1 127 0
	mov	%d2, 0
	ret
.LFE338:
	.size	menu_input, .-menu_input
	.align 1
	.global	menu_display
	.type	menu_display, @function
menu_display:
.LFB336:
	.loc 1 106 0
.LVL1:
	.loc 1 107 0
	ld.bu	%d5, [%a4]0
	mov	%d4, 1
.LVL2:
	.loc 1 106 0
	mov.aa	%a15, %a4
	.loc 1 107 0
	call	conio_ascii_textattr
.LVL3:
	.loc 1 108 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL4:
	.loc 1 109 0
	mov	%d4, 1
	lea	%a4, [%a15] 20
	j	conio_ascii_cputs
.LVL5:
.LFE336:
	.size	menu_display, .-menu_display
.section .rodata,"a",@progbits
.LC0:
	.string	"Reset Time"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_menu1
	.type	menu_select_menu1, @function
menu_select_menu1:
.LFB341:
	.loc 1 154 0
.LVL6:
	.loc 1 155 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL7:
	.loc 1 154 0
	mov.aa	%a15, %a4
	.loc 1 155 0
	call	conio_ascii_textattr
.LVL8:
	.loc 1 156 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL9:
	.loc 1 157 0
	movh.a	%a4, hi:.LC0
	.loc 1 158 0
	movh.a	%a15, hi:touch_driver
.LVL10:
	.loc 1 157 0
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC0
	.loc 1 158 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 157 0
	call	conio_ascii_cputs
.LVL11:
	.loc 1 158 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L3
	.loc 1 160 0
	mov	%d2, 0
	.loc 1 161 0
	andn	%d15, %d15, ~(-9)
	.loc 1 160 0
	movh.a	%a2, hi:controlmenu
	st.w	[%a2] lo:controlmenu, %d2
	.loc 1 161 0
	st.w	[%a15] 64, %d15
.L3:
	ret
.LFE341:
	.size	menu_select_menu1, .-menu_select_menu1
.section .rodata,"a",@progbits
.LC1:
	.string	"----> Increase +"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_background_lightplus
	.type	menu_select_background_lightplus, @function
menu_select_background_lightplus:
.LFB350:
	.loc 1 258 0
.LVL12:
	.loc 1 259 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL13:
	.loc 1 258 0
	mov.aa	%a15, %a4
	.loc 1 259 0
	call	conio_ascii_textattr
.LVL14:
	.loc 1 260 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL15:
	.loc 1 261 0
	movh.a	%a4, hi:.LC1
	.loc 1 262 0
	movh.a	%a15, hi:touch_driver
.LVL16:
	.loc 1 261 0
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC1
	.loc 1 262 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 261 0
	call	conio_ascii_cputs
.LVL17:
	.loc 1 262 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L9
	.loc 1 264 0
	andn	%d15, %d15, ~(-9)
	.loc 1 265 0
	movh.a	%a2, hi:backgroundlightmax
	ld.w	%d2, [%a2] lo:backgroundlightmax
	.loc 1 264 0
	st.w	[%a15] 64, %d15
	.loc 1 265 0
	movh.a	%a15, hi:backgroundlightsize
	ld.w	%d15, [%a15] lo:backgroundlightsize
	jge.u	%d15, %d2, .L9
	.loc 1 266 0
	movh.a	%a2, hi:backgroundlightdelta
	ld.w	%d2, [%a2] lo:backgroundlightdelta
	add	%d15, %d2
	st.w	[%a15] lo:backgroundlightsize, %d15
.L9:
	ret
.LFE350:
	.size	menu_select_background_lightplus, .-menu_select_background_lightplus
.section .rodata,"a",@progbits
.LC2:
	.string	"----> Decrease -"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_background_lightminus
	.type	menu_select_background_lightminus, @function
menu_select_background_lightminus:
.LFB351:
	.loc 1 271 0
.LVL18:
	.loc 1 272 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL19:
	.loc 1 271 0
	mov.aa	%a15, %a4
	.loc 1 272 0
	call	conio_ascii_textattr
.LVL20:
	.loc 1 273 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL21:
	.loc 1 274 0
	movh.a	%a4, hi:.LC2
	.loc 1 275 0
	movh.a	%a15, hi:touch_driver
.LVL22:
	.loc 1 274 0
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC2
	.loc 1 275 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 274 0
	call	conio_ascii_cputs
.LVL23:
	.loc 1 275 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L13
	.loc 1 277 0
	andn	%d15, %d15, ~(-9)
	.loc 1 278 0
	movh.a	%a2, hi:backgroundlightmin
	ld.w	%d2, [%a2] lo:backgroundlightmin
	.loc 1 277 0
	st.w	[%a15] 64, %d15
	.loc 1 278 0
	movh.a	%a15, hi:backgroundlightsize
	ld.w	%d15, [%a15] lo:backgroundlightsize
	jge.u	%d2, %d15, .L13
	.loc 1 279 0
	movh.a	%a2, hi:backgroundlightdelta
	ld.w	%d2, [%a2] lo:backgroundlightdelta
	sub	%d15, %d2
	st.w	[%a15] lo:backgroundlightsize, %d15
.L13:
	ret
.LFE351:
	.size	menu_select_background_lightminus, .-menu_select_background_lightminus
.section .rodata,"a",@progbits
.LC3:
	.string	"Date: %02x/%02x/%02x Time: %02x:%02x"
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_time
	.type	menu_display_time, @function
menu_display_time:
.LFB339:
	.loc 1 130 0
.LVL24:
	sub.a	%SP, 32
.LCFI0:
	.loc 1 130 0
	mov.aa	%a15, %a4
	.loc 1 132 0
	lea	%a4, [%SP] 24
.LVL25:
	call	rtc_gettime
.LVL26:
	.loc 1 133 0
	ld.bu	%d5, [%a15]0
	mov	%d4, 1
	call	conio_ascii_textattr
.LVL27:
	.loc 1 134 0
	ld.bu	%d7, [%SP] 28
	movh.a	%a4, hi:.LC3
	ld.bu	%d4, [%SP] 29
	ld.b	%d5, [%a15] 2
	ld.bu	%d3, [%SP] 30
	ld.b	%d6, [%a15] 4
	ld.bu	%d2, [%SP] 26
	ld.bu	%d15, [%SP] 25
	st.w	[%SP] 4, %d4
	st.w	[%SP]0, %d7
	st.w	[%SP] 8, %d3
	st.w	[%SP] 12, %d2
	st.w	[%SP] 16, %d15
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC3
	j	conio_ascii_printfxy
.LVL28:
.LFE339:
	.size	menu_display_time, .-menu_display_time
.section .srodata,"as",@progbits
.LC4:
	.string	"Time %f"
	.global	__extendsfdf2
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_menu2
	.type	menu_display_menu2, @function
menu_display_menu2:
.LFB342:
	.loc 1 166 0
.LVL29:
	.loc 1 167 0
	ld.bu	%d5, [%a4]0
	.loc 1 166 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI1:
	.loc 1 167 0
	mov	%d4, 1
.LVL30:
	call	conio_ascii_textattr
.LVL31:
	.loc 1 168 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:controlmenu
.LVL32:
	ld.w	%d4, [%a15] lo:controlmenu
	call	__extendsfdf2
.LVL33:
	st.d	[%SP]0, %e2
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%A0] SM:.LC4
	j	conio_ascii_printfxy
.LVL34:
.LFE342:
	.size	menu_display_menu2, .-menu_display_menu2
.section .rodata,"a",@progbits
.LC5:
	.string	"Background Light: %u"
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_background_light
	.type	menu_display_background_light, @function
menu_display_background_light:
.LFB347:
	.loc 1 219 0
.LVL35:
	.loc 1 220 0
	ld.bu	%d5, [%a4]0
	.loc 1 219 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 220 0
	mov	%d4, 1
.LVL36:
	.loc 1 219 0
	mov.aa	%a15, %a4
	.loc 1 220 0
	call	conio_ascii_textattr
.LVL37:
	.loc 1 221 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	movh.a	%a15, hi:backgroundlightsize
.LVL38:
	ld.w	%d15, [%a15] lo:backgroundlightsize
	movh.a	%a4, hi:.LC5
	st.w	[%SP]0, %d15
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC5
	j	conio_ascii_printfxy
.LVL39:
.LFE347:
	.size	menu_display_background_light, .-menu_display_background_light
.section .rodata,"a",@progbits
.LC6:
	.string	"DIE Temperature: %.1f %cC"
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_die_temp
	.type	menu_display_die_temp, @function
menu_display_die_temp:
.LFB352:
	.loc 1 285 0
.LVL40:
	.loc 1 286 0
	ld.bu	%d5, [%a4]0
	.loc 1 285 0
	mov.aa	%a15, %a4
	sub.a	%SP, 16
.LCFI3:
	.loc 1 286 0
	mov	%d4, 1
.LVL41:
	call	conio_ascii_textattr
.LVL42:
	.loc 1 287 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:die_temp
.LVL43:
	ld.w	%d4, [%a15] lo:die_temp
	call	__extendsfdf2
.LVL44:
	st.d	[%SP]0, %e2
	mov	%d2, 248
	movh.a	%a4, hi:.LC6
	mov	%d4, 1
	st.w	[%SP] 8, %d2
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC6
	j	conio_ascii_printfxy
.LVL45:
.LFE352:
	.size	menu_display_die_temp, .-menu_display_die_temp
.section .rodata,"a",@progbits
.LC7:
	.string	"DIE Temp min: %.1f %cC  max: %.1f %cC"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_die_temp
	.type	menu_select_die_temp, @function
menu_select_die_temp:
.LFB353:
	.loc 1 291 0
.LVL46:
	.loc 1 292 0
	ld.bu	%d5, [%a4] 1
	.loc 1 291 0
	sub.a	%SP, 24
.LCFI4:
	.loc 1 291 0
	mov.aa	%a15, %a4
	.loc 1 292 0
	mov	%d4, 1
.LVL47:
	call	conio_ascii_textattr
.LVL48:
	.loc 1 293 0
	ld.b	%d9, [%a15] 2
	ld.b	%d8, [%a15] 4
	movh.a	%a15, hi:die_lowest
.LVL49:
	ld.w	%d4, [%a15] lo:die_lowest
	mov	%d15, 248
	call	__extendsfdf2
.LVL50:
	movh.a	%a15, hi:die_highest
	ld.w	%d4, [%a15] lo:die_highest
	st.w	[%SP] 8, %d15
	st.d	[%SP]0, %e2
	call	__extendsfdf2
.LVL51:
	movh.a	%a4, hi:.LC7
	.loc 1 294 0
	movh.a	%a15, hi:touch_driver
	.loc 1 293 0
	st.w	[%SP] 20, %d15
	st.d	[%SP] 12, %e2
	mov	%d4, 1
	mov	%d5, %d9
	mov	%d6, %d8
	lea	%a4, [%a4] lo:.LC7
	.loc 1 294 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 293 0
	call	conio_ascii_printfxy
.LVL52:
	.loc 1 294 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L21
	.loc 1 296 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L21:
	ret
.LFE353:
	.size	menu_select_die_temp, .-menu_select_die_temp
.section .rodata,"a",@progbits
.LC8:
	.string	"CORE Voltage : %.2f V"
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_core_volt
	.type	menu_display_core_volt, @function
menu_display_core_volt:
.LFB354:
	.loc 1 301 0
.LVL53:
	.loc 1 302 0
	ld.bu	%d5, [%a4]0
	.loc 1 301 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI5:
	.loc 1 302 0
	mov	%d4, 1
.LVL54:
	call	conio_ascii_textattr
.LVL55:
	.loc 1 303 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:core_voltage
.LVL56:
	ld.w	%d4, [%a15] lo:core_voltage
	call	__extendsfdf2
.LVL57:
	movh.a	%a4, hi:.LC8
	st.d	[%SP]0, %e2
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC8
	j	conio_ascii_printfxy
.LVL58:
.LFE354:
	.size	menu_display_core_volt, .-menu_display_core_volt
.section .rodata,"a",@progbits
.LC9:
	.string	"CORE Voltage min : %.2f V  max : %.2f V"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_core_volt
	.type	menu_select_core_volt, @function
menu_select_core_volt:
.LFB355:
	.loc 1 307 0
.LVL59:
	.loc 1 308 0
	ld.bu	%d5, [%a4] 1
	.loc 1 307 0
	mov.aa	%a15, %a4
	sub.a	%SP, 16
.LCFI6:
	.loc 1 308 0
	mov	%d4, 1
.LVL60:
	call	conio_ascii_textattr
.LVL61:
	.loc 1 309 0
	ld.b	%d15, [%a15] 4
	ld.b	%d8, [%a15] 2
	movh.a	%a15, hi:core_volt_min
.LVL62:
	ld.w	%d4, [%a15] lo:core_volt_min
	movh.a	%a15, hi:core_volt_max
	call	__extendsfdf2
.LVL63:
	ld.w	%d4, [%a15] lo:core_volt_max
	st.d	[%SP]0, %e2
	call	__extendsfdf2
.LVL64:
	movh.a	%a4, hi:.LC9
	.loc 1 310 0
	movh.a	%a15, hi:touch_driver
	.loc 1 309 0
	mov	%d6, %d15
	st.d	[%SP] 8, %e2
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC9
	.loc 1 310 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 309 0
	call	conio_ascii_printfxy
.LVL65:
	.loc 1 310 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L27
	.loc 1 312 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L27:
	ret
.LFE355:
	.size	menu_select_core_volt, .-menu_select_core_volt
.section .rodata,"a",@progbits
.LC10:
	.string	"VDDP3 Voltage: %.2f V"
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_Vddp3
	.type	menu_display_Vddp3, @function
menu_display_Vddp3:
.LFB356:
	.loc 1 317 0
.LVL66:
	.loc 1 318 0
	ld.bu	%d5, [%a4]0
	.loc 1 317 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI7:
	.loc 1 318 0
	mov	%d4, 1
.LVL67:
	call	conio_ascii_textattr
.LVL68:
	.loc 1 319 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:Vddp3
.LVL69:
	ld.w	%d4, [%a15] lo:Vddp3
	call	__extendsfdf2
.LVL70:
	movh.a	%a4, hi:.LC10
	st.d	[%SP]0, %e2
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC10
	j	conio_ascii_printfxy
.LVL71:
.LFE356:
	.size	menu_display_Vddp3, .-menu_display_Vddp3
.section .rodata,"a",@progbits
.LC11:
	.string	"VDDP3 Voltage min: %.2f V  max: %.2f V"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_Vddp3
	.type	menu_select_Vddp3, @function
menu_select_Vddp3:
.LFB357:
	.loc 1 323 0
.LVL72:
	.loc 1 324 0
	ld.bu	%d5, [%a4] 1
	.loc 1 323 0
	mov.aa	%a15, %a4
	sub.a	%SP, 16
.LCFI8:
	.loc 1 324 0
	mov	%d4, 1
.LVL73:
	call	conio_ascii_textattr
.LVL74:
	.loc 1 325 0
	ld.b	%d15, [%a15] 4
	ld.b	%d8, [%a15] 2
	movh.a	%a15, hi:Vddp3_min
.LVL75:
	ld.w	%d4, [%a15] lo:Vddp3_min
	movh.a	%a15, hi:Vddp3_max
	call	__extendsfdf2
.LVL76:
	ld.w	%d4, [%a15] lo:Vddp3_max
	st.d	[%SP]0, %e2
	call	__extendsfdf2
.LVL77:
	movh.a	%a4, hi:.LC11
	.loc 1 326 0
	movh.a	%a15, hi:touch_driver
	.loc 1 325 0
	mov	%d6, %d15
	st.d	[%SP] 8, %e2
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC11
	.loc 1 326 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 325 0
	call	conio_ascii_printfxy
.LVL78:
	.loc 1 326 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L33
	.loc 1 328 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L33:
	ret
.LFE357:
	.size	menu_select_Vddp3, .-menu_select_Vddp3
.section .rodata,"a",@progbits
.LC12:
	.string	"VEXT Voltage : %.2f V"
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_Vext
	.type	menu_display_Vext, @function
menu_display_Vext:
.LFB358:
	.loc 1 333 0
.LVL79:
	.loc 1 334 0
	ld.bu	%d5, [%a4]0
	.loc 1 333 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI9:
	.loc 1 334 0
	mov	%d4, 1
.LVL80:
	call	conio_ascii_textattr
.LVL81:
	.loc 1 335 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:Vext
.LVL82:
	ld.w	%d4, [%a15] lo:Vext
	call	__extendsfdf2
.LVL83:
	movh.a	%a4, hi:.LC12
	st.d	[%SP]0, %e2
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC12
	j	conio_ascii_printfxy
.LVL84:
.LFE358:
	.size	menu_display_Vext, .-menu_display_Vext
.section .rodata,"a",@progbits
.LC13:
	.string	"VEXT Voltage min : %.2f V  max : %.2f V"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_Vext
	.type	menu_select_Vext, @function
menu_select_Vext:
.LFB359:
	.loc 1 339 0
.LVL85:
	.loc 1 340 0
	ld.bu	%d5, [%a4] 1
	.loc 1 339 0
	mov.aa	%a15, %a4
	sub.a	%SP, 16
.LCFI10:
	.loc 1 340 0
	mov	%d4, 1
.LVL86:
	call	conio_ascii_textattr
.LVL87:
	.loc 1 341 0
	ld.b	%d15, [%a15] 4
	ld.b	%d8, [%a15] 2
	movh.a	%a15, hi:Vext_min
.LVL88:
	ld.w	%d4, [%a15] lo:Vext_min
	movh.a	%a15, hi:Vext_max
	call	__extendsfdf2
.LVL89:
	ld.w	%d4, [%a15] lo:Vext_max
	st.d	[%SP]0, %e2
	call	__extendsfdf2
.LVL90:
	movh.a	%a4, hi:.LC13
	.loc 1 342 0
	movh.a	%a15, hi:touch_driver
	.loc 1 341 0
	mov	%d6, %d15
	st.d	[%SP] 8, %e2
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC13
	.loc 1 342 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 341 0
	call	conio_ascii_printfxy
.LVL91:
	.loc 1 342 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L39
	.loc 1 344 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L39:
	ret
.LFE359:
	.size	menu_select_Vext, .-menu_select_Vext
.section .srodata,"as",@progbits
.LC14:
	.string	"%u"
.section .text,"ax",@progbits
	.align 1
	.global	menu_input_background_light
	.type	menu_input_background_light, @function
menu_input_background_light:
.LFB348:
	.loc 1 225 0
.LVL92:
	sub.a	%SP, 16
.LCFI11:
	.loc 1 228 0
	lea	%a15, [%SP] 12
	movh.a	%a4, hi:conio_driver+212
.LVL93:
	st.a	[%SP]0, %a15
	lea	%a4, [%a4] lo:conio_driver+212
	lea	%a5, [%A0] SM:.LC14
	call	sscanf
.LVL94:
	.loc 1 230 0
	mov	%d15, -1
	.loc 1 229 0
	jne	%d2, 1, .L45
	.loc 1 231 0
	movh.a	%a15, hi:backgroundlightmin
	ld.w	%d15, [%a15] lo:backgroundlightmin
	ld.w	%d3, [%SP] 12
	movh.a	%a15, hi:backgroundlightmax
	ld.w	%d2, [%a15] lo:backgroundlightmax
.LVL95:
	max.u	%d15, %d15, %d3
	min.u	%d15, %d15, %d2
	.loc 1 236 0
	movh.a	%a15, hi:backgroundlightsize
	st.w	[%a15] lo:backgroundlightsize, %d15
	.loc 1 238 0
	mov	%d15, 0
.L45:
	.loc 1 239 0
	mov	%d2, %d15
	ret
.LFE348:
	.size	menu_input_background_light, .-menu_input_background_light
	.align 1
	.global	menu_display_slideshow
	.type	menu_display_slideshow, @function
menu_display_slideshow:
.LFB360:
	.loc 1 349 0
.LVL96:
.LBB12:
.LBB13:
	.file 3 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.loc 3 532 0
	movh.a	%a2, 61444
	lea	%a2, [%a2] -19200
	ld.w	%d15, [%a2] 36
.LBE13:
.LBE12:
	.loc 1 349 0
	mov.aa	%a15, %a4
	.loc 1 353 0
	mov	%d4, 1
.LVL97:
	.loc 1 350 0
	jnz.t	%d15, 8, .L50
	.loc 1 357 0
	ld.bu	%d5, [%a4]0
	call	conio_ascii_textattr
.LVL98:
.L49:
	.loc 1 358 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL99:
	.loc 1 359 0
	mov	%d4, 1
	lea	%a4, [%a15] 20
	j	conio_ascii_cputs
.LVL100:
.L50:
	.loc 1 353 0
	mov	%d5, 8
	call	conio_ascii_textattr
.LVL101:
	.loc 1 354 0
	mov	%d4, 1
	mov	%d5, 5
	call	conio_ascii_textbackground
.LVL102:
	j	.L49
.LFE360:
	.size	menu_display_slideshow, .-menu_display_slideshow
	.align 1
	.global	menu_select_alarm
	.type	menu_select_alarm, @function
menu_select_alarm:
.LFB346:
	.loc 1 206 0
.LVL103:
	.loc 1 207 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL104:
	.loc 1 206 0
	mov.aa	%a15, %a4
	.loc 1 207 0
	call	conio_ascii_textattr
.LVL105:
	.loc 1 208 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL106:
	.loc 1 209 0
	lea	%a4, [%a15] 20
	.loc 1 210 0
	movh.a	%a15, hi:touch_driver
.LVL107:
	.loc 1 209 0
	mov	%d4, 1
	.loc 1 210 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 209 0
	call	conio_ascii_cputs
.LVL108:
	.loc 1 210 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L56
	ret
.L56:
.LVL109:
.LBB16:
.LBB17:
	.loc 1 212 0
	mov	%d15, 5
	.loc 1 214 0
	mov	%d8, 0
	mov	%d9, 8
	.loc 1 212 0
	movh.a	%a2, hi:conio_driver
	.loc 1 213 0
	movh.a	%a4, hi:Time2Set
	.loc 1 212 0
	lea	%a2, [%a2] lo:conio_driver
	.loc 1 213 0
	lea	%a4, [%a4] lo:Time2Set
	.loc 1 212 0
	st.w	[%a2] 188, %d15
	.loc 1 213 0
	call	rtc_gettime
.LVL110:
	.loc 1 214 0
	ldmst	[%a15] 64, %e8
	ret
.LBE17:
.LBE16:
.LFE346:
	.size	menu_select_alarm, .-menu_select_alarm
	.align 1
	.global	menu_select_time
	.type	menu_select_time, @function
menu_select_time:
.LFB340:
	.loc 1 138 0
.LVL111:
	sub.a	%SP, 32
.LCFI12:
	.loc 1 138 0
	mov.aa	%a15, %a4
	.loc 1 140 0
	lea	%a4, [%SP] 24
.LVL112:
	call	rtc_gettime
.LVL113:
	.loc 1 142 0
	ld.bu	%d5, [%a15] 1
	mov	%d4, 1
	call	conio_ascii_textattr
.LVL114:
	.loc 1 143 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	ld.bu	%d7, [%SP] 28
	movh.a	%a4, hi:.LC3
	ld.bu	%d4, [%SP] 29
	.loc 1 144 0
	movh.a	%a15, hi:touch_driver
.LVL115:
	.loc 1 143 0
	ld.bu	%d3, [%SP] 30
	ld.bu	%d2, [%SP] 26
	ld.bu	%d15, [%SP] 25
	st.w	[%SP] 4, %d4
	st.w	[%SP] 16, %d15
	st.w	[%SP]0, %d7
	st.w	[%SP] 8, %d3
	st.w	[%SP] 12, %d2
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC3
	.loc 1 144 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 143 0
	call	conio_ascii_printfxy
.LVL116:
	.loc 1 144 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L62
	ret
.L62:
.LVL117:
.LBB20:
.LBB21:
	.loc 1 146 0
	mov	%d15, 4
	.loc 1 148 0
	mov	%d8, 0
	mov	%d9, 8
	.loc 1 146 0
	movh.a	%a2, hi:conio_driver
	.loc 1 147 0
	movh.a	%a4, hi:Time2Set
	.loc 1 146 0
	lea	%a2, [%a2] lo:conio_driver
	.loc 1 147 0
	lea	%a4, [%a4] lo:Time2Set
	.loc 1 146 0
	st.w	[%a2] 188, %d15
	.loc 1 147 0
	call	rtc_gettime
.LVL118:
	.loc 1 148 0
	ldmst	[%a15] 64, %e8
	.loc 1 149 0
	call	rtc_calibration
.LVL119:
	ret
.LBE21:
.LBE20:
.LFE340:
	.size	menu_select_time, .-menu_select_time
.section .rodata,"a",@progbits
.LC15:
	.string	"Change Light: %u"
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_background_light
	.type	menu_select_background_light, @function
menu_select_background_light:
.LFB349:
	.loc 1 242 0
.LVL120:
	.loc 1 243 0
	ld.bu	%d5, [%a4] 1
	.loc 1 242 0
	sub.a	%SP, 8
.LCFI13:
	.loc 1 242 0
	mov	%d15, %d4
	.loc 1 243 0
	mov	%d4, 1
.LVL121:
	.loc 1 242 0
	mov.aa	%a15, %a4
	.loc 1 244 0
	movh.a	%a13, hi:backgroundlightsize
	.loc 1 243 0
	call	conio_ascii_textattr
.LVL122:
	.loc 1 244 0
	ld.w	%d2, [%a13] lo:backgroundlightsize
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	movh.a	%a4, hi:.LC15
	st.w	[%SP]0, %d2
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC15
	.loc 1 245 0
	movh.a	%a12, hi:touch_driver
	.loc 1 244 0
	call	conio_ascii_printfxy
.LVL123:
	.loc 1 245 0
	lea	%a12, [%a12] lo:touch_driver
	ld.w	%d2, [%a12] 64
	jnz.t	%d2, 3, .L68
	ret
.L68:
.LVL124:
.LBB24:
.LBB25:
	.loc 1 247 0
	movh	%d2, 26727
	addi	%d2, %d2, 26956
	movh.a	%a2, hi:conio_driver+192
	lea	%a14, [%a2] lo:conio_driver+192
	st.w	[%a14]0, %d2
	movh	%d2, 32
	addi	%d2, %d2, 14964
	.loc 1 248 0
	lea	%a4, [%a14] 20
	lea	%a5, [%A0] SM:.LC14
	.loc 1 247 0
	st.w	[%a14] 4, %d2
	.loc 1 248 0
	ld.w	%d2, [%a13] lo:backgroundlightsize
	st.w	[%SP]0, %d2
	call	sprintf
.LVL125:
	.loc 1 249 0
	mov	%d2, 0
	.loc 1 253 0
	mov	%d8, 0
	mov	%d9, 8
	.loc 1 249 0
	st.b	[%a14] 48, %d2
	.loc 1 250 0
	mov	%d2, 1
	st.w	[%a14] -4, %d2
	.loc 1 251 0
	ld.w	%d2, [%a15] 16
	st.w	[%a14] 40, %d2
	.loc 1 252 0
	st.w	[%a14] 44, %d15
	.loc 1 253 0
	ldmst	[%a12] 64, %e8
	ret
.LBE25:
.LBE24:
.LFE349:
	.size	menu_select_background_light, .-menu_select_background_light
	.align 1
	.global	menu_select_slideshow
	.type	menu_select_slideshow, @function
menu_select_slideshow:
.LFB361:
	.loc 1 363 0
.LVL126:
.LBB32:
.LBB33:
	.loc 3 532 0
	movh.a	%a2, 61444
	lea	%a2, [%a2] -19200
	ld.w	%d15, [%a2] 36
.LBE33:
.LBE32:
	.loc 1 363 0
	mov.aa	%a15, %a4
.LBB34:
.LBB35:
	.loc 1 367 0
	mov	%d4, 1
.LVL127:
.LBE35:
.LBE34:
	.loc 1 364 0
	jnz.t	%d15, 8, .L72
	.loc 1 374 0
	ld.bu	%d5, [%a4] 1
	call	conio_ascii_textattr
.LVL128:
	.loc 1 375 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL129:
	.loc 1 376 0
	lea	%a4, [%a15] 20
	.loc 1 377 0
	movh.a	%a15, hi:touch_driver
.LVL130:
	.loc 1 376 0
	mov	%d4, 1
	.loc 1 377 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 376 0
	call	conio_ascii_cputs
.LVL131:
	.loc 1 377 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L73
	ret
.L73:
	.loc 1 379 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 380 0
	mov	%d15, 6
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	st.w	[%a15] 188, %d15
	.loc 1 381 0
	j	start_slideshow
.LVL132:
.L72:
.LBB37:
.LBB36:
	.loc 1 367 0
	mov	%d5, 8
	call	conio_ascii_textattr
.LVL133:
	.loc 1 368 0
	mov	%d4, 1
	mov	%d5, 5
	call	conio_ascii_textbackground
.LVL134:
	.loc 1 369 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL135:
	.loc 1 370 0
	mov	%d4, 1
	lea	%a4, [%a15] 20
	j	conio_ascii_cputs
.LVL136:
.LBE36:
.LBE37:
.LFE361:
	.size	menu_select_slideshow, .-menu_select_slideshow
	.align 1
	.global	menu_select
	.type	menu_select, @function
menu_select:
.LFB337:
	.loc 1 113 0
.LVL137:
	.loc 1 114 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL138:
	.loc 1 113 0
	mov.aa	%a15, %a4
	.loc 1 114 0
	call	conio_ascii_textattr
.LVL139:
	.loc 1 115 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
.LVL140:
	.loc 1 116 0
	lea	%a4, [%a15] 20
	.loc 1 117 0
	movh.a	%a15, hi:touch_driver
.LVL141:
	.loc 1 116 0
	mov	%d4, 1
	.loc 1 117 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 116 0
	call	conio_ascii_cputs
.LVL142:
	.loc 1 117 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L74
	.loc 1 119 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L74:
	ret
.LFE337:
	.size	menu_select, .-menu_select
.section .rodata,"a",@progbits
.LC16:
	.string	"Delta %f"
.section .text,"ax",@progbits
	.align 1
	.global	menu_display_menu3
	.type	menu_display_menu3, @function
menu_display_menu3:
.LFB343:
	.loc 1 172 0
.LVL143:
	.loc 1 173 0
	ld.bu	%d5, [%a4]0
	.loc 1 172 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI14:
	.loc 1 173 0
	mov	%d4, 1
.LVL144:
	call	conio_ascii_textattr
.LVL145:
	.loc 1 174 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:controlmenu
.LVL146:
	lea	%a15, [%a15] lo:controlmenu
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
.LVL147:
	movh.a	%a4, hi:.LC16
	st.d	[%SP]0, %e2
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC16
	j	conio_ascii_printfxy
.LVL148:
.LFE343:
	.size	menu_display_menu3, .-menu_display_menu3
.section .srodata,"as",@progbits
.LC17:
	.string	"%f"
.section .text,"ax",@progbits
	.align 1
	.global	menu_input_menu3
	.type	menu_input_menu3, @function
menu_input_menu3:
.LFB344:
	.loc 1 178 0
.LVL149:
	sub.a	%SP, 16
.LCFI15:
	.loc 1 181 0
	lea	%a15, [%SP] 12
	movh.a	%a4, hi:conio_driver+212
.LVL150:
	st.a	[%SP]0, %a15
	lea	%a4, [%a4] lo:conio_driver+212
	lea	%a5, [%A0] SM:.LC17
	call	sscanf
.LVL151:
	.loc 1 183 0
	mov	%d15, -1
	.loc 1 182 0
	jne	%d2, 1, .L81
	.loc 1 184 0
	movh.a	%a15, hi:controlmenu
	ld.w	%d15, [%SP] 12
	lea	%a15, [%a15] lo:controlmenu
	st.w	[%a15] 4, %d15
	.loc 1 185 0
	mov	%d15, 0
.L81:
	.loc 1 186 0
	mov	%d2, %d15
.LVL152:
	ret
.LFE344:
	.size	menu_input_menu3, .-menu_input_menu3
.section .srodata,"as",@progbits
.LC18:
	.string	"Delta "
.section .text,"ax",@progbits
	.align 1
	.global	menu_select_menu3
	.type	menu_select_menu3, @function
menu_select_menu3:
.LFB345:
	.loc 1 189 0
.LVL153:
	.loc 1 190 0
	ld.bu	%d5, [%a4] 1
	.loc 1 189 0
	sub.a	%SP, 8
.LCFI16:
	.loc 1 189 0
	mov	%d9, %d4
	.loc 1 191 0
	movh.a	%a13, hi:controlmenu
	.loc 1 190 0
	mov	%d4, 1
.LVL154:
	.loc 1 189 0
	mov.aa	%a15, %a4
	.loc 1 191 0
	lea	%a13, [%a13] lo:controlmenu
	.loc 1 190 0
	call	conio_ascii_textattr
.LVL155:
	.loc 1 191 0
	ld.w	%d4, [%a13] 4
	ld.b	%d15, [%a15] 4
	call	__extendsfdf2
.LVL156:
	ld.b	%d8, [%a15] 2
	movh.a	%a4, hi:.LC16
	.loc 1 192 0
	movh.a	%a12, hi:touch_driver
	.loc 1 191 0
	mov	%d6, %d15
	st.d	[%SP]0, %e2
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC16
	.loc 1 192 0
	lea	%a12, [%a12] lo:touch_driver
	.loc 1 191 0
	call	conio_ascii_printfxy
.LVL157:
	.loc 1 192 0
	ld.w	%d15, [%a12] 64
	jnz.t	%d15, 3, .L88
	ret
.L88:
	.loc 1 194 0
	movh.a	%a2, hi:conio_driver+192
	lea	%a14, [%a2] lo:conio_driver+192
	mov.aa	%a3, %a14
	lea	%a2, [%A0] SM:.LC18
	.loc 1 195 0
	ld.w	%d4, [%a13] 4
	.loc 1 194 0
		# #chunks=7, chunksize=1, remains=0
	lea	%a4, 7-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 195 0
	mov.d	%d2, %a14
	addi	%d15, %d2, 20
	call	__extendsfdf2
.LVL158:
	mov.a	%a4, %d15
	.loc 1 197 0
	mov	%d15, 0
	.loc 1 195 0
	st.d	[%SP]0, %e2
	lea	%a5, [%A0] SM:.LC17
	call	sprintf
.LVL159:
	.loc 1 197 0
	st.b	[%a14] 48, %d15
	.loc 1 198 0
	mov	%d15, 1
	.loc 1 201 0
	mov	%d10, 0
	mov	%d11, 8
	.loc 1 198 0
	st.w	[%a14] -4, %d15
	.loc 1 199 0
	ld.w	%d15, [%a15] 16
	st.w	[%a14] 40, %d15
	.loc 1 200 0
	st.w	[%a14] 44, %d9
	.loc 1 201 0
	ldmst	[%a12] 64, %e10
	ret
.LFE345:
	.size	menu_select_menu3, .-menu_select_menu3
	.align 1
	.global	showmenu
	.type	showmenu, @function
showmenu:
.LFB362:
	.loc 1 386 0
.LVL160:
	.loc 1 386 0
	mov	%e8, %d5, %d4
	.loc 1 388 0
	mov	%d5, 5
.LVL161:
	mov	%d4, 1
.LVL162:
	.loc 1 386 0
	mov.aa	%a15, %a4
	.loc 1 388 0
	call	conio_ascii_textbackground
.LVL163:
	.loc 1 389 0
	mov	%d4, 1
	call	conio_ascii_clrscr
.LVL164:
	.loc 1 390 0
	mov	%e4, 1
	call	conio_ascii_textcolor
.LVL165:
	.loc 1 391 0
	mov	%d4, 1
	mov	%d5, 7
	call	conio_ascii_textbackground
.LVL166:
	.loc 1 392 0
	ld.a	%a2, [%a15] 8
	.loc 1 396 0
	movh.a	%a12, hi:conio_driver
	.loc 1 392 0
	mov	%d15, 0
	.loc 1 396 0
	lea	%a12, [%a12] lo:conio_driver
	.loc 1 392 0
	jz.a	%a2, .L89
.LVL167:
.L97:
	.loc 1 394 0
	ld.b	%d2, [%a15] 2
	jlt	%d8, %d2, .L91
	.loc 1 394 0 is_stmt 0 discriminator 1
	ld.b	%d2, [%a15] 3
	jlt	%d2, %d8, .L91
	.loc 1 394 0 discriminator 2
	ld.b	%d2, [%a15] 4
	jeq	%d2, %d9, .L99
.L91:
	.loc 1 408 0 is_stmt 1
	ld.a	%a2, [%a15] 12
	.loc 1 409 0
	mov	%d4, %d15
	mov.aa	%a4, %a15
	.loc 1 408 0
	jz.a	%a2, .L100
.LVL168:
.L94:
	.loc 1 412 0
	calli	%a2
.LVL169:
.L92:
	.loc 1 392 0 discriminator 2
	lea	%a15, [%a15] 64
	ld.a	%a2, [%a15] 8
	add	%d15, 1
.LVL170:
	jnz.a	%a2, .L97
.LVL171:
.L89:
	ret
.LVL172:
.L100:
	.loc 1 409 0
	call	menu_display
.LVL173:
	j	.L92
.L99:
	.loc 1 396 0
	ld.w	%d2, [%a12] 188
	jnz	%d2, .L92
	.loc 1 398 0
	ld.w	%d2, [%a15] 12
	.loc 1 399 0
	mov	%d4, %d15
	mov.aa	%a4, %a15
	.loc 1 398 0
	jnz	%d2, .L94
.LVL174:
	.loc 1 399 0
	call	menu_select
.LVL175:
	j	.L92
.LFE362:
	.size	showmenu, .-showmenu
	.global	menulist
.section .rodata,"a",@progbits
	.align 2
	.type	menulist, @object
	.size	menulist, 1216
menulist:
	.byte	112
	.byte	12
	.byte	7
	.byte	31
	.byte	0
	.zero	3
	.word	menu_select_time
	.word	menu_display_time
	.word	menu_input
	.string	"Date: 24/10/14 Time: 16:00"
	.zero	13
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
	.byte	112
	.byte	12
	.byte	0
	.byte	12
	.byte	2
	.zero	3
	.word	menu_select_menu1
	.word	menu_display
	.word	menu_input
	.string	"TFT Main Menu"
	.zero	26
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	5
	.byte	3
	.zero	3
	.word	menu_display_menu2
	.word	menu_display_menu2
	.word	menu_input
	.string	"Menu_2"
	.zero	33
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	5
	.byte	4
	.zero	3
	.word	menu_display_menu2
	.word	menu_display_menu2
	.word	menu_input
	.string	"Menu_2"
	.zero	33
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	8
	.byte	5
	.zero	3
	.word	menu_select_alarm
	.word	menu_display
	.word	menu_input
	.string	"Set Alarm"
	.zero	30
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	16
	.byte	7
	.zero	3
	.word	menu_select_background_light
	.word	menu_display_background_light
	.word	menu_input_background_light
	.string	"Background Light: "
	.zero	21
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	15
	.byte	8
	.zero	3
	.word	menu_select_background_lightplus
	.word	menu_display
	.word	menu_input
	.string	"----> Increase: +"
	.zero	22
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	15
	.byte	9
	.zero	3
	.word	menu_select_background_lightminus
	.word	menu_display
	.word	menu_input
	.string	"----> Decrease: -"
	.zero	22
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	15
	.byte	11
	.zero	3
	.word	menu_select_die_temp
	.word	menu_display_die_temp
	.word	menu_input
	.string	"DIE-Temperature: "
	.zero	22
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	13
	.byte	13
	.zero	3
	.word	menu_select_core_volt
	.word	menu_display_core_volt
	.word	menu_input
	.string	"Core Voltage : "
	.zero	24
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	13
	.byte	14
	.zero	3
	.word	menu_select_Vddp3
	.word	menu_display_Vddp3
	.word	menu_input
	.string	"VDDP3 Voltage: "
	.zero	24
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	13
	.byte	15
	.zero	3
	.word	menu_select_Vext
	.word	menu_display_Vext
	.word	menu_input
	.string	"VEXT Voltage : "
	.zero	24
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	13
	.byte	17
	.zero	3
	.word	menu_select_slideshow
	.word	menu_display_slideshow
	.word	menu_input
	.string	"Start Slideshow"
	.zero	24
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
	.uaword	.LFB338
	.uaword	.LFE338-.LFB338
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
	.uaword	.LFB341
	.uaword	.LFE341-.LFB341
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB339
	.uaword	.LFE339-.LFB339
	.byte	0x4
	.uaword	.LCFI0-.LFB339
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB342
	.uaword	.LFE342-.LFB342
	.byte	0x4
	.uaword	.LCFI1-.LFB342
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB347
	.uaword	.LFE347-.LFB347
	.byte	0x4
	.uaword	.LCFI2-.LFB347
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.byte	0x4
	.uaword	.LCFI3-.LFB352
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.byte	0x4
	.uaword	.LCFI4-.LFB353
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.byte	0x4
	.uaword	.LCFI5-.LFB354
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.byte	0x4
	.uaword	.LCFI6-.LFB355
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.byte	0x4
	.uaword	.LCFI7-.LFB356
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.byte	0x4
	.uaword	.LCFI8-.LFB357
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.byte	0x4
	.uaword	.LCFI9-.LFB358
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.byte	0x4
	.uaword	.LCFI10-.LFB359
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB348
	.uaword	.LFE348-.LFB348
	.byte	0x4
	.uaword	.LCFI11-.LFB348
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB346
	.uaword	.LFE346-.LFB346
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB340
	.uaword	.LFE340-.LFB340
	.byte	0x4
	.uaword	.LCFI12-.LFB340
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.byte	0x4
	.uaword	.LCFI13-.LFB349
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB337
	.uaword	.LFE337-.LFB337
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB343
	.uaword	.LFE343-.LFB343
	.byte	0x4
	.uaword	.LCFI14-.LFB343
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB344
	.uaword	.LFE344-.LFB344
	.byte	0x4
	.uaword	.LCFI15-.LFB344
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB345
	.uaword	.LFE345-.LFB345
	.byte	0x4
	.uaword	.LCFI16-.LFB345
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE52:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 6 "./0_Src/0_AppSw/Tft/conio_tft.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 8 "./0_Src/0_AppSw/Tft/touch.h"
	.file 9 "./0_Src/0_AppSw/Config/Common/main_appl.h"
	.file 10 "./0_Src/0_AppSw/Rtc/RTC.h"
	.file 11 "./0_Src/0_AppSw/DemoApp/background_light.h"
	.file 12 "./0_Src/0_AppSw/DemoApp/Measurement.h"
	.file 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x41d2
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/appTft/menue.c"
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
	.byte	0x4
	.byte	0x58
	.uaword	0x19c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x5a
	.uaword	0x1d7
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
	.byte	0x4
	.byte	0x5c
	.uaword	0x167
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x173
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x225
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
	.byte	0x4
	.byte	0x68
	.uaword	0x1b8
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
	.uaword	0x278
	.uleb128 0x5
	.uaword	0x27d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x6
	.uaword	0x1b8
	.uaword	0x2a5
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x27d
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xa
	.uaword	0x31c
	.uleb128 0x9
	.string	"DIALOGOFF"
	.sleb128 0
	.uleb128 0x9
	.string	"KEYBOARDON"
	.sleb128 1
	.uleb128 0x9
	.string	"SWITCHOFFON"
	.sleb128 2
	.uleb128 0x9
	.string	"SHOWALARMON"
	.sleb128 3
	.uleb128 0x9
	.string	"SETTIMEON"
	.sleb128 4
	.uleb128 0x9
	.string	"SETALARMTIME"
	.sleb128 5
	.uleb128 0x9
	.string	"SLIDESHOW"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"TDIALOGMODE"
	.byte	0x5
	.byte	0x12
	.uaword	0x2b7
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x23
	.uaword	0x388
	.uleb128 0x9
	.string	"DISPLAYBAR"
	.sleb128 0
	.uleb128 0x9
	.string	"DISPLAYMENU"
	.sleb128 1
	.uleb128 0x9
	.string	"DISPLAYSTDOUT0"
	.sleb128 2
	.uleb128 0x9
	.string	"DISPLAYSTDOUT1"
	.sleb128 3
	.uleb128 0x9
	.string	"DISPLAYGRAPHICS0"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"TDISPLAYMODE"
	.byte	0x5
	.byte	0x29
	.uaword	0x32f
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.uaword	0x411
	.uleb128 0x9
	.string	"RAWMODE"
	.sleb128 0
	.uleb128 0x9
	.string	"TEXTMODE"
	.sleb128 1
	.uleb128 0x9
	.string	"GRAPHICMODE_2COLOR"
	.sleb128 2
	.uleb128 0x9
	.string	"GRAPHICMODE_4COLOR"
	.sleb128 3
	.uleb128 0x9
	.string	"GRAPHICMODE_16COLOR"
	.sleb128 4
	.uleb128 0x9
	.string	"GRAPHICMODE_256COLOR"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TMODE"
	.byte	0x5
	.byte	0x35
	.uaword	0x39c
	.uleb128 0xa
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x5
	.byte	0x38
	.uaword	0x4a4
	.uleb128 0xb
	.string	"pdisplay"
	.byte	0x5
	.byte	0x3a
	.uaword	0x4a4
	.byte	0
	.uleb128 0xb
	.string	"pdisplaycolor"
	.byte	0x5
	.byte	0x3b
	.uaword	0x4a4
	.byte	0x4
	.uleb128 0xb
	.string	"mode"
	.byte	0x5
	.byte	0x3c
	.uaword	0x411
	.byte	0x8
	.uleb128 0xb
	.string	"color"
	.byte	0x5
	.byte	0x3d
	.uaword	0x1ab
	.byte	0xc
	.uleb128 0xb
	.string	"maxx"
	.byte	0x5
	.byte	0x3e
	.uaword	0x1fa
	.byte	0x10
	.uleb128 0xb
	.string	"maxy"
	.byte	0x5
	.byte	0x3f
	.uaword	0x1fa
	.byte	0x14
	.uleb128 0xb
	.string	"x"
	.byte	0x5
	.byte	0x40
	.uaword	0x1fa
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0x5
	.byte	0x41
	.uaword	0x1fa
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1ab
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x5
	.byte	0x42
	.uaword	0x41e
	.uleb128 0x6
	.uaword	0x1ab
	.uaword	0x4cf
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x27
	.byte	0
	.uleb128 0xa
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x6
	.byte	0x8b
	.uaword	0x57d
	.uleb128 0xb
	.string	"color_display"
	.byte	0x6
	.byte	0x8d
	.uaword	0x1ab
	.byte	0
	.uleb128 0xb
	.string	"color_select"
	.byte	0x6
	.byte	0x8f
	.uaword	0x1ab
	.byte	0x1
	.uleb128 0xb
	.string	"xmin"
	.byte	0x6
	.byte	0x90
	.uaword	0x18f
	.byte	0x2
	.uleb128 0xb
	.string	"xmax"
	.byte	0x6
	.byte	0x91
	.uaword	0x18f
	.byte	0x3
	.uleb128 0xb
	.string	"y"
	.byte	0x6
	.byte	0x92
	.uaword	0x18f
	.byte	0x4
	.uleb128 0xb
	.string	"select"
	.byte	0x6
	.byte	0x93
	.uaword	0x594
	.byte	0x8
	.uleb128 0xb
	.string	"display"
	.byte	0x6
	.byte	0x94
	.uaword	0x594
	.byte	0xc
	.uleb128 0xb
	.string	"input"
	.byte	0x6
	.byte	0x95
	.uaword	0x5af
	.byte	0x10
	.uleb128 0xb
	.string	"text"
	.byte	0x6
	.byte	0x96
	.uaword	0x4bf
	.byte	0x14
	.uleb128 0xb
	.string	"symbol"
	.byte	0x6
	.byte	0x97
	.uaword	0x1ab
	.byte	0x3c
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x58e
	.uleb128 0xd
	.uaword	0x1fa
	.uleb128 0xd
	.uaword	0x58e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4cf
	.uleb128 0x4
	.byte	0x4
	.uaword	0x57d
	.uleb128 0xe
	.byte	0x1
	.uaword	0x1fa
	.uaword	0x5af
	.uleb128 0xd
	.uaword	0x1fa
	.uleb128 0xd
	.uaword	0x58e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x59a
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x6
	.byte	0x98
	.uaword	0x4cf
	.uleb128 0xa
	.string	"CONIO_DRIVER"
	.byte	0xf4
	.byte	0x6
	.byte	0x9d
	.uaword	0x6e6
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x6
	.byte	0x9f
	.uaword	0x6e6
	.byte	0
	.uleb128 0xb
	.string	"pstdlist"
	.byte	0x6
	.byte	0xa0
	.uaword	0x6e6
	.byte	0x4
	.uleb128 0xb
	.string	"display"
	.byte	0x6
	.byte	0xa1
	.uaword	0x6ec
	.byte	0x8
	.uleb128 0xb
	.string	"pdasmirror"
	.byte	0x6
	.byte	0xa2
	.uaword	0x6fc
	.byte	0xa8
	.uleb128 0xb
	.string	"dasstatus"
	.byte	0x6
	.byte	0xa3
	.uaword	0x208
	.byte	0xac
	.uleb128 0xb
	.string	"dasdisplaymode"
	.byte	0x6
	.byte	0xa4
	.uaword	0x388
	.byte	0xb0
	.uleb128 0xb
	.string	"cursorstatus"
	.byte	0x6
	.byte	0xa5
	.uaword	0x1fa
	.byte	0xb4
	.uleb128 0xb
	.string	"displaymode"
	.byte	0x6
	.byte	0xa6
	.uaword	0x388
	.byte	0xb8
	.uleb128 0xb
	.string	"dialogmode"
	.byte	0x6
	.byte	0xa7
	.uaword	0x31c
	.byte	0xbc
	.uleb128 0xb
	.string	"scanfdescr"
	.byte	0x6
	.byte	0xa8
	.uaword	0x702
	.byte	0xc0
	.uleb128 0xb
	.string	"scanftext"
	.byte	0x6
	.byte	0xa9
	.uaword	0x702
	.byte	0xd4
	.uleb128 0xb
	.string	"input"
	.byte	0x6
	.byte	0xaa
	.uaword	0x727
	.byte	0xe8
	.uleb128 0xb
	.string	"inputid"
	.byte	0x6
	.byte	0xab
	.uaword	0x1fa
	.byte	0xec
	.uleb128 0xb
	.string	"scanfx"
	.byte	0x6
	.byte	0xac
	.uaword	0x18f
	.byte	0xf0
	.uleb128 0xb
	.string	"blinky"
	.byte	0x6
	.byte	0xad
	.uaword	0x1ab
	.byte	0xf1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5b5
	.uleb128 0x6
	.uaword	0x4aa
	.uaword	0x6fc
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x208
	.uleb128 0x6
	.uaword	0x1ab
	.uaword	0x712
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x1fa
	.uaword	0x727
	.uleb128 0xd
	.uaword	0x1fa
	.uleb128 0xd
	.uaword	0x6e6
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x712
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x6
	.byte	0xae
	.uaword	0x5ca
	.uleb128 0x6
	.uaword	0x1b8
	.uaword	0x752
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.uaword	0x1b8
	.uaword	0x762
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x974
	.uleb128 0x10
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x762
	.uleb128 0xa
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x9b8
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0x54
	.uaword	0x285
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x98d
	.uleb128 0xa
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0xaef
	.uleb128 0x10
	.string	"EN0"
	.byte	0x7
	.byte	0x5a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"EN1"
	.byte	0x7
	.byte	0x5b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"EN2"
	.byte	0x7
	.byte	0x5c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"EN3"
	.byte	0x7
	.byte	0x5d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"EN4"
	.byte	0x7
	.byte	0x5e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"EN5"
	.byte	0x7
	.byte	0x5f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"EN6"
	.byte	0x7
	.byte	0x60
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"EN7"
	.byte	0x7
	.byte	0x61
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EN8"
	.byte	0x7
	.byte	0x62
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"EN9"
	.byte	0x7
	.byte	0x63
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"EN10"
	.byte	0x7
	.byte	0x64
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"EN11"
	.byte	0x7
	.byte	0x65
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"EN12"
	.byte	0x7
	.byte	0x66
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"EN13"
	.byte	0x7
	.byte	0x67
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"EN14"
	.byte	0x7
	.byte	0x68
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"EN15"
	.byte	0x7
	.byte	0x69
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.byte	0x6a
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x7
	.byte	0x6b
	.uaword	0x9d1
	.uleb128 0xa
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x6e
	.uaword	0xb57
	.uleb128 0x10
	.string	"MODREV"
	.byte	0x7
	.byte	0x70
	.uaword	0x285
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"MODTYPE"
	.byte	0x7
	.byte	0x71
	.uaword	0x285
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"MODNUMBER"
	.byte	0x7
	.byte	0x72
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x7
	.byte	0x73
	.uaword	0xb05
	.uleb128 0xa
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x76
	.uaword	0xc79
	.uleb128 0x10
	.string	"P0"
	.byte	0x7
	.byte	0x78
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x7
	.byte	0x79
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x7
	.byte	0x7a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x7
	.byte	0x7b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x7
	.byte	0x7c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x7
	.byte	0x7d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x7
	.byte	0x7e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x7
	.byte	0x7f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x7
	.byte	0x80
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x7
	.byte	0x81
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x7
	.byte	0x82
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x7
	.byte	0x83
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x7
	.byte	0x84
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x7
	.byte	0x85
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x7
	.byte	0x86
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x7
	.byte	0x87
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.byte	0x88
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x7
	.byte	0x89
	.uaword	0xb6c
	.uleb128 0xa
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8c
	.uaword	0xd21
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0x8e
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC0"
	.byte	0x7
	.byte	0x8f
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x7
	.byte	0x90
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC1"
	.byte	0x7
	.byte	0x91
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.byte	0x92
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC2"
	.byte	0x7
	.byte	0x93
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x7
	.byte	0x94
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC3"
	.byte	0x7
	.byte	0x95
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x7
	.byte	0x96
	.uaword	0xc8e
	.uleb128 0xa
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x99
	.uaword	0xdd1
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0x9b
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC12"
	.byte	0x7
	.byte	0x9c
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x7
	.byte	0x9d
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC13"
	.byte	0x7
	.byte	0x9e
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.byte	0x9f
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC14"
	.byte	0x7
	.byte	0xa0
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x7
	.byte	0xa1
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC15"
	.byte	0x7
	.byte	0xa2
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x7
	.byte	0xa3
	.uaword	0xd39
	.uleb128 0xa
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.uaword	0xe7d
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xa8
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC4"
	.byte	0x7
	.byte	0xa9
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x7
	.byte	0xaa
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC5"
	.byte	0x7
	.byte	0xab
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.byte	0xac
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC6"
	.byte	0x7
	.byte	0xad
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x7
	.byte	0xae
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC7"
	.byte	0x7
	.byte	0xaf
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x7
	.byte	0xb0
	.uaword	0xdea
	.uleb128 0xa
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb3
	.uaword	0xf2a
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xb5
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PC8"
	.byte	0x7
	.byte	0xb6
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x7
	.byte	0xb7
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PC9"
	.byte	0x7
	.byte	0xb8
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.byte	0xb9
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PC10"
	.byte	0x7
	.byte	0xba
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x7
	.byte	0xbb
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PC11"
	.byte	0x7
	.byte	0xbc
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x7
	.byte	0xbd
	.uaword	0xe95
	.uleb128 0xa
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc0
	.uaword	0xf8a
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xc2
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.byte	0xc3
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x7
	.byte	0xc4
	.uaword	0x285
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x7
	.byte	0xc5
	.uaword	0xf42
	.uleb128 0xa
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc8
	.uaword	0xfea
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xca
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x7
	.byte	0xcb
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x7
	.byte	0xcc
	.uaword	0x285
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x7
	.byte	0xcd
	.uaword	0xfa2
	.uleb128 0xa
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd0
	.uaword	0x107a
	.uleb128 0x10
	.string	"RDIS_CTRL"
	.byte	0x7
	.byte	0xd2
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RX_DIS"
	.byte	0x7
	.byte	0xd3
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TERM"
	.byte	0x7
	.byte	0xd4
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"LRXTERM"
	.byte	0x7
	.byte	0xd5
	.uaword	0x285
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x7
	.byte	0xd6
	.uaword	0x285
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x7
	.byte	0xd7
	.uaword	0x1002
	.uleb128 0xa
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xda
	.uaword	0x1155
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xdc
	.uaword	0x285
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"LVDSR"
	.byte	0x7
	.byte	0xdd
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"LVDSRL"
	.byte	0x7
	.byte	0xde
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"reserved_10"
	.byte	0x7
	.byte	0xdf
	.uaword	0x285
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TDIS_CTRL"
	.byte	0x7
	.byte	0xe0
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"TX_DIS"
	.byte	0x7
	.byte	0xe1
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"TX_PD"
	.byte	0x7
	.byte	0xe2
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"TX_PWDPD"
	.byte	0x7
	.byte	0xe3
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.byte	0xe4
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x7
	.byte	0xe5
	.uaword	0x1096
	.uleb128 0xa
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe8
	.uaword	0x11e6
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xea
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x7
	.byte	0xeb
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x7
	.byte	0xec
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x7
	.byte	0xed
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x7
	.byte	0xee
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x7
	.byte	0xef
	.uaword	0x285
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x7
	.byte	0xf0
	.uaword	0x116d
	.uleb128 0xa
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf3
	.uaword	0x126d
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xf5
	.uaword	0x285
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x7
	.byte	0xf6
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x7
	.byte	0xf7
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x7
	.byte	0xf8
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x7
	.byte	0xf9
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x7
	.byte	0xfa
	.uaword	0x11fe
	.uleb128 0xa
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xfd
	.uaword	0x1304
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0xff
	.uaword	0x285
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x104
	.uaword	0x285
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x1286
	.uleb128 0x15
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x108
	.uaword	0x139f
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x285
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x285
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x131d
	.uleb128 0x15
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x113
	.uaword	0x14f9
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x115
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x117
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x13b8
	.uleb128 0x15
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1747
	.uleb128 0x12
	.string	"PS0"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"PS1"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"PS2"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"PS3"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"PS4"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.string	"PS5"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.string	"PS6"
	.byte	0x7
	.uahalf	0x131
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"PS7"
	.byte	0x7
	.uahalf	0x132
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"PS8"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.string	"PS9"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.string	"PS10"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"PS11"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"PS12"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.string	"PS13"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.string	"PS14"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"PS15"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMR_Bits"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x1511
	.uleb128 0x15
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x17d1
	.uleb128 0x12
	.string	"PS0"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"PS1"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"PS2"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"PS3"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"reserved_4"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x285
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x175e
	.uleb128 0x15
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x186b
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x285
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"PS12"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.string	"PS13"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.string	"PS14"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"PS15"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x7
	.uahalf	0x160
	.uaword	0x17ea
	.uleb128 0x15
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x163
	.uaword	0x1901
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x165
	.uaword	0x285
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"PS4"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.string	"PS5"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.string	"PS6"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"PS7"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x285
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x1885
	.uleb128 0x15
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x1998
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x170
	.uaword	0x285
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"PS8"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.string	"PS9"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.string	"PS10"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"PS11"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x175
	.uaword	0x285
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x191a
	.uleb128 0x15
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x179
	.uaword	0x1ae2
	.uleb128 0x12
	.string	"PS0"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"PS1"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"PS2"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"PS3"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"PS4"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.string	"PS5"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.string	"PS6"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"PS7"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"PS8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.string	"PS9"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.string	"PS10"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"PS11"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"PS12"
	.byte	0x7
	.uahalf	0x187
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.string	"PS13"
	.byte	0x7
	.uahalf	0x188
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.string	"PS14"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"PS15"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x19b1
	.uleb128 0x15
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x1c1a
	.uleb128 0x12
	.string	"P0"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"P1"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"P2"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"P3"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"P4"
	.byte	0x7
	.uahalf	0x195
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.string	"P5"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.string	"P6"
	.byte	0x7
	.uahalf	0x197
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"P7"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"P8"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.string	"P9"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.string	"P10"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"P11"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"P12"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.string	"P13"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.string	"P14"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"P15"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OUT_Bits"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1afa
	.uleb128 0x15
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x1d1e
	.uleb128 0x12
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"SEL2"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"SEL3"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"SEL4"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.string	"SEL5"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.string	"SEL6"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"reserved_7"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.string	"SEL10"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"SEL11"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x285
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x1c31
	.uleb128 0x15
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x1e88
	.uleb128 0x12
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.string	"PDIS2"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"PDIS3"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"PDIS4"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.string	"PDIS5"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x12
	.string	"PDIS6"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"PDIS7"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"PDIS8"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.string	"PDIS9"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x12
	.string	"PDIS10"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"PDIS11"
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"PDIS12"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.string	"PDIS13"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.string	"PDIS14"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"PDIS15"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x285
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x1d36
	.uleb128 0x15
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x1fbc
	.uleb128 0x12
	.string	"PD0"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"PL0"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"PD1"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"PL1"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"PD2"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"PL2"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"PD3"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"PL3"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.string	"PD4"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.string	"PL4"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"PD5"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.string	"PL5"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.string	"PD6"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.string	"PL6"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"PD7"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"PL7"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x1ea1
	.uleb128 0x15
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x20fb
	.uleb128 0x12
	.string	"PD8"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.string	"PL8"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.string	"PD9"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x12
	.string	"PL9"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"PD10"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x12
	.string	"PL10"
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x12
	.string	"PD11"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.string	"PL11"
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.string	"PD12"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.string	"PL12"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"PD13"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.string	"PL13"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.string	"PD14"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.string	"PL14"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"PD15"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x285
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.string	"PL15"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x285
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1fd4
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x213b
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x202
	.uaword	0x974
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_ACCEN0"
	.byte	0x7
	.uahalf	0x203
	.uaword	0x2113
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x206
	.uaword	0x2178
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x209
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x9b8
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_ACCEN1"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x2150
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x211
	.uaword	0x21b5
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x218
	.uaword	0xaef
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_ESR"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x218d
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x21ef
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x221
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x223
	.uaword	0xb57
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_ID"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x21c7
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x227
	.uaword	0x2228
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0xc79
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_IN"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x2200
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x232
	.uaword	0x2261
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x239
	.uaword	0xd21
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_IOCR0"
	.byte	0x7
	.uahalf	0x23a
	.uaword	0x2239
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x229d
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x242
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x244
	.uaword	0xdd1
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_IOCR12"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x2275
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x248
	.uaword	0x22da
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x24f
	.uaword	0xe7d
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_IOCR4"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x22b2
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x253
	.uaword	0x2316
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x258
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0xf2a
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_IOCR8"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x22ee
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x2352
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x263
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x265
	.uaword	0xf8a
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_LPCR0"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x232a
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x269
	.uaword	0x239c
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x270
	.uaword	0xfea
	.uleb128 0x17
	.string	"B_P21"
	.byte	0x7
	.uahalf	0x272
	.uaword	0x107a
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_LPCR1"
	.byte	0x7
	.uahalf	0x273
	.uaword	0x2366
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x276
	.uaword	0x23d8
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x1155
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_LPCR2"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x23b0
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x281
	.uaword	0x2414
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x284
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x14f9
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x23ec
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x244f
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x291
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x293
	.uaword	0x11e6
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR0"
	.byte	0x7
	.uahalf	0x294
	.uaword	0x2427
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x297
	.uaword	0x248b
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x29a
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x29e
	.uaword	0x126d
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR12"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x2463
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x24c8
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2a5
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x1304
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR4"
	.byte	0x7
	.uahalf	0x2aa
	.uaword	0x24a0
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ad
	.uaword	0x2504
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x139f
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMCR8"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x24dc
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x2540
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2bd
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x1747
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMR"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x2518
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x257a
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x1ae2
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR"
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x2552
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x25b5
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x17d1
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR0"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x258d
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x25f1
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x186b
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR12"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x25c9
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x262e
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x1901
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR4"
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x2606
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x266a
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x1998
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OMSR8"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x2642
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x2fa
	.uaword	0x26a6
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x2fd
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x1c1a
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_OUT"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x267e
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x305
	.uaword	0x26e0
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x308
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x1d1e
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PCSR"
	.byte	0x7
	.uahalf	0x30d
	.uaword	0x26b8
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x310
	.uaword	0x271b
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x313
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x315
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x317
	.uaword	0x1e88
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PDISC"
	.byte	0x7
	.uahalf	0x318
	.uaword	0x26f3
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x31b
	.uaword	0x2757
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x322
	.uaword	0x1fbc
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PDR0"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x272f
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.uahalf	0x326
	.uaword	0x2792
	.uleb128 0x17
	.string	"U"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x285
	.uleb128 0x17
	.string	"I"
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x188
	.uleb128 0x17
	.string	"B"
	.byte	0x7
	.uahalf	0x32d
	.uaword	0x20fb
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P_PDR1"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x276a
	.uleb128 0x18
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x7
	.uahalf	0x339
	.uaword	0x29e6
	.uleb128 0x19
	.string	"OUT"
	.byte	0x7
	.uahalf	0x33b
	.uaword	0x26a6
	.byte	0
	.uleb128 0x19
	.string	"OMR"
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x2540
	.byte	0x4
	.uleb128 0x19
	.string	"ID"
	.byte	0x7
	.uahalf	0x33d
	.uaword	0x21ef
	.byte	0x8
	.uleb128 0x19
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x295
	.byte	0xc
	.uleb128 0x19
	.string	"IOCR0"
	.byte	0x7
	.uahalf	0x33f
	.uaword	0x2261
	.byte	0x10
	.uleb128 0x19
	.string	"IOCR4"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x22da
	.byte	0x14
	.uleb128 0x19
	.string	"IOCR8"
	.byte	0x7
	.uahalf	0x341
	.uaword	0x2316
	.byte	0x18
	.uleb128 0x19
	.string	"IOCR12"
	.byte	0x7
	.uahalf	0x342
	.uaword	0x229d
	.byte	0x1c
	.uleb128 0x1a
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x343
	.uaword	0x295
	.byte	0x20
	.uleb128 0x19
	.string	"IN"
	.byte	0x7
	.uahalf	0x344
	.uaword	0x2228
	.byte	0x24
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x345
	.uaword	0x29e6
	.byte	0x28
	.uleb128 0x19
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x346
	.uaword	0x2757
	.byte	0x40
	.uleb128 0x19
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x2792
	.byte	0x44
	.uleb128 0x19
	.string	"reserved_48"
	.byte	0x7
	.uahalf	0x348
	.uaword	0x742
	.byte	0x48
	.uleb128 0x19
	.string	"ESR"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x21b5
	.byte	0x50
	.uleb128 0x19
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x34a
	.uaword	0x752
	.byte	0x54
	.uleb128 0x19
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x34b
	.uaword	0x271b
	.byte	0x60
	.uleb128 0x19
	.string	"PCSR"
	.byte	0x7
	.uahalf	0x34c
	.uaword	0x26e0
	.byte	0x64
	.uleb128 0x19
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x742
	.byte	0x68
	.uleb128 0x19
	.string	"OMSR0"
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x25b5
	.byte	0x70
	.uleb128 0x19
	.string	"OMSR4"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x262e
	.byte	0x74
	.uleb128 0x19
	.string	"OMSR8"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x266a
	.byte	0x78
	.uleb128 0x19
	.string	"OMSR12"
	.byte	0x7
	.uahalf	0x351
	.uaword	0x25f1
	.byte	0x7c
	.uleb128 0x19
	.string	"OMCR0"
	.byte	0x7
	.uahalf	0x352
	.uaword	0x244f
	.byte	0x80
	.uleb128 0x19
	.string	"OMCR4"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x24c8
	.byte	0x84
	.uleb128 0x19
	.string	"OMCR8"
	.byte	0x7
	.uahalf	0x354
	.uaword	0x2504
	.byte	0x88
	.uleb128 0x19
	.string	"OMCR12"
	.byte	0x7
	.uahalf	0x355
	.uaword	0x248b
	.byte	0x8c
	.uleb128 0x19
	.string	"OMSR"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x257a
	.byte	0x90
	.uleb128 0x19
	.string	"OMCR"
	.byte	0x7
	.uahalf	0x357
	.uaword	0x2414
	.byte	0x94
	.uleb128 0x19
	.string	"reserved_98"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x742
	.byte	0x98
	.uleb128 0x19
	.string	"LPCR0"
	.byte	0x7
	.uahalf	0x359
	.uaword	0x2352
	.byte	0xa0
	.uleb128 0x19
	.string	"LPCR1"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x239c
	.byte	0xa4
	.uleb128 0x19
	.string	"LPCR2"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x23d8
	.byte	0xa8
	.uleb128 0x19
	.string	"reserved_A4"
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x29f6
	.byte	0xac
	.uleb128 0x19
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x2178
	.byte	0xf8
	.uleb128 0x19
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x213b
	.byte	0xfc
	.byte	0
	.uleb128 0x6
	.uaword	0x1b8
	.uaword	0x29f6
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.uaword	0x1b8
	.uaword	0x2a06
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x4b
	.byte	0
	.uleb128 0x14
	.string	"Ifx_P"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x2a14
	.uleb128 0x1b
	.uaword	0x27a5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a06
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.uaword	0x2a7b
	.uleb128 0x9
	.string	"TOUCH_UNINIT"
	.sleb128 0
	.uleb128 0x9
	.string	"TOUCH_DOWN"
	.sleb128 1
	.uleb128 0x9
	.string	"TOUCH_MOVE"
	.sleb128 2
	.uleb128 0x9
	.string	"TOUCH_UP"
	.sleb128 3
	.uleb128 0x9
	.string	"TOUCH_DOWN3S"
	.sleb128 4
	.uleb128 0x9
	.string	"TOUCH_DOWN10S"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_STATUS"
	.byte	0x8
	.byte	0x15
	.uaword	0x2a1f
	.uleb128 0xa
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x8
	.byte	0x42
	.uaword	0x2bef
	.uleb128 0xb
	.string	"time"
	.byte	0x8
	.byte	0x44
	.uaword	0x208
	.byte	0
	.uleb128 0xb
	.string	"prev_time"
	.byte	0x8
	.byte	0x45
	.uaword	0x208
	.byte	0x4
	.uleb128 0xb
	.string	"prev_time_down"
	.byte	0x8
	.byte	0x46
	.uaword	0x208
	.byte	0x8
	.uleb128 0xb
	.string	"bounce_limit"
	.byte	0x8
	.byte	0x47
	.uaword	0x208
	.byte	0xc
	.uleb128 0xb
	.string	"bounce_cnt"
	.byte	0x8
	.byte	0x48
	.uaword	0x208
	.byte	0x10
	.uleb128 0xb
	.string	"x"
	.byte	0x8
	.byte	0x49
	.uaword	0x1c9
	.byte	0x14
	.uleb128 0xb
	.string	"prev_x"
	.byte	0x8
	.byte	0x4a
	.uaword	0x1c9
	.byte	0x16
	.uleb128 0xb
	.string	"prev_x_down"
	.byte	0x8
	.byte	0x4b
	.uaword	0x1c9
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0x8
	.byte	0x4c
	.uaword	0x1c9
	.byte	0x1a
	.uleb128 0xb
	.string	"prev_y"
	.byte	0x8
	.byte	0x4d
	.uaword	0x1c9
	.byte	0x1c
	.uleb128 0xb
	.string	"prev_y_down"
	.byte	0x8
	.byte	0x4e
	.uaword	0x1c9
	.byte	0x1e
	.uleb128 0xb
	.string	"cnt"
	.byte	0x8
	.byte	0x4f
	.uaword	0x1c9
	.byte	0x20
	.uleb128 0xb
	.string	"xdisp"
	.byte	0x8
	.byte	0x50
	.uaword	0x1c9
	.byte	0x22
	.uleb128 0xb
	.string	"ydisp"
	.byte	0x8
	.byte	0x51
	.uaword	0x1c9
	.byte	0x24
	.uleb128 0xb
	.string	"xmin"
	.byte	0x8
	.byte	0x52
	.uaword	0x216
	.byte	0x28
	.uleb128 0xb
	.string	"xmax"
	.byte	0x8
	.byte	0x53
	.uaword	0x216
	.byte	0x2c
	.uleb128 0xb
	.string	"ymin"
	.byte	0x8
	.byte	0x54
	.uaword	0x216
	.byte	0x30
	.uleb128 0xb
	.string	"ymax"
	.byte	0x8
	.byte	0x55
	.uaword	0x216
	.byte	0x34
	.uleb128 0xb
	.string	"status"
	.byte	0x8
	.byte	0x56
	.uaword	0x2a7b
	.byte	0x38
	.uleb128 0xb
	.string	"prev_status"
	.byte	0x8
	.byte	0x57
	.uaword	0x2a7b
	.byte	0x3c
	.uleb128 0xb
	.string	"touchmode"
	.byte	0x8
	.byte	0x58
	.uaword	0x208
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_DRIVER"
	.byte	0x8
	.byte	0x59
	.uaword	0x2a90
	.uleb128 0xa
	.string	"CONTROLMENU"
	.byte	0x8
	.byte	0x9
	.byte	0xc
	.uaword	0x2c44
	.uleb128 0xb
	.string	"cpuseconds"
	.byte	0x9
	.byte	0xe
	.uaword	0x216
	.byte	0
	.uleb128 0xb
	.string	"cpusecondsdelta"
	.byte	0x9
	.byte	0xf
	.uaword	0x216
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"TCONTROLMENU"
	.byte	0x9
	.byte	0x10
	.uaword	0x2c04
	.uleb128 0x1c
	.byte	0x1
	.byte	0xa
	.byte	0x25
	.uaword	0x2ce6
	.uleb128 0x10
	.string	"running"
	.byte	0xa
	.byte	0x26
	.uaword	0x1ab
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"hour_12"
	.byte	0xa
	.byte	0x27
	.uaword	0x1ab
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"pm_set"
	.byte	0xa
	.byte	0x28
	.uaword	0x1ab
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"leap_year"
	.byte	0xa
	.byte	0x29
	.uaword	0x1ab
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"alarm0"
	.byte	0xa
	.byte	0x2a
	.uaword	0x1ab
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"alarm1"
	.byte	0xa
	.byte	0x2b
	.uaword	0x1ab
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"reserved"
	.byte	0xa
	.byte	0x2c
	.uaword	0x1ab
	.byte	0x1
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.byte	0xa
	.byte	0x23
	.uaword	0x2d01
	.uleb128 0x1e
	.string	"U"
	.byte	0xa
	.byte	0x24
	.uaword	0x1ab
	.uleb128 0x1e
	.string	"B"
	.byte	0xa
	.byte	0x2d
	.uaword	0x2c58
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.byte	0xa
	.byte	0x1a
	.uaword	0x2d7a
	.uleb128 0xb
	.string	"seconds"
	.byte	0xa
	.byte	0x1c
	.uaword	0x1ab
	.byte	0
	.uleb128 0xb
	.string	"minutes"
	.byte	0xa
	.byte	0x1d
	.uaword	0x1ab
	.byte	0x1
	.uleb128 0xb
	.string	"hours"
	.byte	0xa
	.byte	0x1e
	.uaword	0x1ab
	.byte	0x2
	.uleb128 0xb
	.string	"day"
	.byte	0xa
	.byte	0x1f
	.uaword	0x1ab
	.byte	0x3
	.uleb128 0xb
	.string	"date"
	.byte	0xa
	.byte	0x20
	.uaword	0x1ab
	.byte	0x4
	.uleb128 0xb
	.string	"month"
	.byte	0xa
	.byte	0x21
	.uaword	0x1ab
	.byte	0x5
	.uleb128 0xb
	.string	"year"
	.byte	0xa
	.byte	0x22
	.uaword	0x1ab
	.byte	0x6
	.uleb128 0xb
	.string	"flags"
	.byte	0xa
	.byte	0x2e
	.uaword	0x2d7a
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.uaword	0x2ce6
	.uleb128 0x3
	.string	"TIME"
	.byte	0xa
	.byte	0x2f
	.uaword	0x2d8b
	.uleb128 0x1b
	.uaword	0x2d01
	.uleb128 0x1f
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x20
	.byte	0x1
	.string	"menu_select_alarm"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.byte	0x1
	.uaword	0x2dd1
	.uleb128 0x21
	.string	"ind"
	.byte	0x1
	.byte	0xcd
	.uaword	0x1fa
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.byte	0xcd
	.uaword	0x6e6
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"menu_select_time"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.uaword	0x2e12
	.uleb128 0x21
	.string	"ind"
	.byte	0x1
	.byte	0x89
	.uaword	0x1fa
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.byte	0x89
	.uaword	0x6e6
	.uleb128 0x23
	.string	"ActTime"
	.byte	0x1
	.byte	0x8b
	.uaword	0x2d7f
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"menu_select_background_light"
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.byte	0x1
	.uaword	0x2e50
	.uleb128 0x21
	.string	"ind"
	.byte	0x1
	.byte	0xf1
	.uaword	0x1fa
	.uleb128 0x22
	.uaword	.LASF9
	.byte	0x1
	.byte	0xf1
	.uaword	0x6e6
	.byte	0
	.uleb128 0x24
	.string	"IfxPort_getPinState"
	.byte	0x3
	.uahalf	0x212
	.byte	0x1
	.uaword	0x238
	.byte	0x3
	.uaword	0x2e91
	.uleb128 0x25
	.string	"port"
	.byte	0x3
	.uahalf	0x212
	.uaword	0x2a19
	.uleb128 0x25
	.string	"pinIndex"
	.byte	0x3
	.uahalf	0x212
	.uaword	0x1ab
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"menu_select_slideshow"
	.byte	0x1
	.uahalf	0x16a
	.byte	0x1
	.byte	0x1
	.uaword	0x2ecb
	.uleb128 0x25
	.string	"ind"
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x1fa
	.uleb128 0x27
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x6e6
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"menu_input"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	0x1fa
	.uaword	.LFB338
	.uaword	.LFE338
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f18
	.uleb128 0x29
	.string	"ind"
	.byte	0x1
	.byte	0x7b
	.uaword	0x1fa
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.uaword	.LASF9
	.byte	0x1
	.byte	0x7b
	.uaword	0x6e6
	.byte	0x1
	.byte	0x64
	.uleb128 0x2b
	.uaword	0x2d90
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0x7d
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"menu_display"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f94
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0x69
	.uaword	0x1fa
	.uaword	.LLST0
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0x69
	.uaword	0x6e6
	.uaword	.LLST1
	.uleb128 0x2f
	.uaword	.LVL3
	.uaword	0x4004
	.uaword	0x2f6a
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL4
	.uaword	0x402e
	.uaword	0x2f7d
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x405b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 20
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"menu_select_menu1"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	.LFB341
	.uaword	.LFE341
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3017
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0x99
	.uaword	0x1fa
	.uaword	.LLST2
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0x99
	.uaword	0x6e6
	.uaword	.LLST3
	.uleb128 0x2f
	.uaword	.LVL8
	.uaword	0x4004
	.uaword	0x2feb
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL9
	.uaword	0x402e
	.uaword	0x2ffe
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL11
	.uaword	0x405b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"menu_select_background_lightplus"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x30ac
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x1fa
	.uaword	.LLST4
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x101
	.uaword	0x6e6
	.uaword	.LLST5
	.uleb128 0x2f
	.uaword	.LVL14
	.uaword	0x4004
	.uaword	0x3080
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL15
	.uaword	0x402e
	.uaword	0x3093
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL17
	.uaword	0x405b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"menu_select_background_lightminus"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3142
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x1fa
	.uaword	.LLST6
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x6e6
	.uaword	.LLST7
	.uleb128 0x2f
	.uaword	.LVL20
	.uaword	0x4004
	.uaword	0x3116
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL21
	.uaword	0x402e
	.uaword	0x3129
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL23
	.uaword	0x405b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"menu_display_time"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB339
	.uaword	.LFE339
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x31e0
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0x81
	.uaword	0x1fa
	.uaword	.LLST8
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0x81
	.uaword	0x6e6
	.uaword	.LLST9
	.uleb128 0x36
	.string	"ActTime"
	.byte	0x1
	.byte	0x83
	.uaword	0x2d7f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2f
	.uaword	.LVL26
	.uaword	0x4082
	.uaword	0x31ac
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL27
	.uaword	0x4004
	.uaword	0x31bf
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 16
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"menu_display_menu2"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB342
	.uaword	.LFE342
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x325e
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0xa5
	.uaword	0x1fa
	.uaword	.LLST10
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0xa5
	.uaword	0x6e6
	.uaword	.LLST11
	.uleb128 0x2f
	.uaword	.LVL31
	.uaword	0x4004
	.uaword	0x3238
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL34
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"menu_display_background_light"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	.LFB347
	.uaword	.LFE347
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x32e2
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0xda
	.uaword	0x1fa
	.uaword	.LLST12
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0xda
	.uaword	0x6e6
	.uaword	.LLST13
	.uleb128 0x2f
	.uaword	.LVL37
	.uaword	0x4004
	.uaword	0x32c1
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL39
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_display_die_temp"
	.byte	0x1
	.uahalf	0x11c
	.byte	0x1
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x336d
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x1fa
	.uaword	.LLST14
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x6e6
	.uaword	.LLST15
	.uleb128 0x2f
	.uaword	.LVL42
	.uaword	0x4004
	.uaword	0x3340
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL45
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x8
	.byte	0xf8
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_select_die_temp"
	.byte	0x1
	.uahalf	0x122
	.byte	0x1
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x33fd
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x1fa
	.uaword	.LLST16
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x122
	.uaword	0x6e6
	.uaword	.LLST17
	.uleb128 0x2f
	.uaword	.LVL48
	.uaword	0x4004
	.uaword	0x33ca
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL52
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC7
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 20
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_display_core_volt"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3482
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x1fa
	.uaword	.LLST18
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x6e6
	.uaword	.LLST19
	.uleb128 0x2f
	.uaword	.LVL55
	.uaword	0x4004
	.uaword	0x345c
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL58
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC8
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_select_core_volt"
	.byte	0x1
	.uahalf	0x132
	.byte	0x1
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3505
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x132
	.uaword	0x1fa
	.uaword	.LLST20
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x132
	.uaword	0x6e6
	.uaword	.LLST21
	.uleb128 0x2f
	.uaword	.LVL61
	.uaword	0x4004
	.uaword	0x34e0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL65
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC9
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_display_Vddp3"
	.byte	0x1
	.uahalf	0x13c
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3586
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x1fa
	.uaword	.LLST22
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x6e6
	.uaword	.LLST23
	.uleb128 0x2f
	.uaword	.LVL68
	.uaword	0x4004
	.uaword	0x3560
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL71
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC10
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_select_Vddp3"
	.byte	0x1
	.uahalf	0x142
	.byte	0x1
	.uaword	.LFB357
	.uaword	.LFE357
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3605
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x1fa
	.uaword	.LLST24
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x142
	.uaword	0x6e6
	.uaword	.LLST25
	.uleb128 0x2f
	.uaword	.LVL74
	.uaword	0x4004
	.uaword	0x35e0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL78
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC11
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_display_Vext"
	.byte	0x1
	.uahalf	0x14c
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3685
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x1fa
	.uaword	.LLST26
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x6e6
	.uaword	.LLST27
	.uleb128 0x2f
	.uaword	.LVL81
	.uaword	0x4004
	.uaword	0x365f
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL84
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC12
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"menu_select_Vext"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	.LFB359
	.uaword	.LFE359
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3703
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x152
	.uaword	0x1fa
	.uaword	.LLST28
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x152
	.uaword	0x6e6
	.uaword	.LLST29
	.uleb128 0x2f
	.uaword	.LVL87
	.uaword	0x4004
	.uaword	0x36de
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL91
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC13
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"menu_input_background_light"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.uaword	0x1fa
	.uaword	.LFB348
	.uaword	.LFE348
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3791
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0xe0
	.uaword	0x1fa
	.uaword	.LLST30
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0xe0
	.uaword	0x6e6
	.uaword	.LLST31
	.uleb128 0x36
	.string	"temp"
	.byte	0x1
	.byte	0xe2
	.uaword	0x208
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x39
	.string	"result"
	.byte	0x1
	.byte	0xe3
	.uaword	0x1fa
	.uaword	.LLST32
	.uleb128 0x32
	.uaword	.LVL94
	.uaword	0x40e8
	.uleb128 0x30
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC14
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"menu_display_slideshow"
	.byte	0x1
	.uahalf	0x15c
	.byte	0x1
	.uaword	.LFB360
	.uaword	.LFE360
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x386a
	.uleb128 0x34
	.string	"ind"
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x1fa
	.uaword	.LLST33
	.uleb128 0x35
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x6e6
	.uaword	.LLST34
	.uleb128 0x3a
	.uaword	0x2e50
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x3802
	.uleb128 0x3b
	.uaword	0x2e7f
	.byte	0x8
	.uleb128 0x3c
	.uaword	0x2e72
	.sleb128 -268192512
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL98
	.uaword	0x4004
	.uaword	0x3815
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL99
	.uaword	0x402e
	.uaword	0x3828
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL100
	.byte	0x1
	.uaword	0x405b
	.uaword	0x3842
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 20
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL101
	.uaword	0x4004
	.uaword	0x3855
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x32
	.uaword	.LVL102
	.uaword	0x4109
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x2d9e
	.uaword	.LFB346
	.uaword	.LFE346
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x38fa
	.uleb128 0x3f
	.uaword	0x2dba
	.uaword	.LLST35
	.uleb128 0x3f
	.uaword	0x2dc5
	.uaword	.LLST36
	.uleb128 0x40
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0x38bb
	.uleb128 0x41
	.uaword	0x2dba
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x41
	.uaword	0x2dc5
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uleb128 0x42
	.uaword	.LVL110
	.uaword	0x4082
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL105
	.uaword	0x4004
	.uaword	0x38ce
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL106
	.uaword	0x402e
	.uaword	0x38e1
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL108
	.uaword	0x405b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x2dd1
	.uaword	.LFB340
	.uaword	.LFE340
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x39b2
	.uleb128 0x3f
	.uaword	0x2dec
	.uaword	.LLST37
	.uleb128 0x3f
	.uaword	0x2df7
	.uaword	.LLST38
	.uleb128 0x43
	.uaword	0x2e02
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x40
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	0x396b
	.uleb128 0x41
	.uaword	0x2dec
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x41
	.uaword	0x2df7
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uleb128 0x44
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x45
	.uaword	0x2e02
	.uleb128 0x42
	.uaword	.LVL118
	.uaword	0x4082
	.uleb128 0x42
	.uaword	.LVL119
	.uaword	0x4139
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL113
	.uaword	0x4082
	.uaword	0x397f
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL114
	.uaword	0x4004
	.uaword	0x3992
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL116
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 16
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x2e12
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a39
	.uleb128 0x3f
	.uaword	0x2e39
	.uaword	.LLST39
	.uleb128 0x3f
	.uaword	0x2e44
	.uaword	.LLST40
	.uleb128 0x40
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0x3a0d
	.uleb128 0x41
	.uaword	0x2e44
	.byte	0x1
	.byte	0x6f
	.uleb128 0x41
	.uaword	0x2e39
	.byte	0x1
	.byte	0x5f
	.uleb128 0x32
	.uaword	.LVL125
	.uaword	0x4153
	.uleb128 0x30
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC14
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL122
	.uaword	0x4004
	.uaword	0x3a20
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL123
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC15
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x2e91
	.uaword	.LFB361
	.uaword	.LFE361
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b42
	.uleb128 0x3f
	.uaword	0x2eb2
	.uaword	.LLST41
	.uleb128 0x3f
	.uaword	0x2ebe
	.uaword	.LLST42
	.uleb128 0x3a
	.uaword	0x2e50
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x3a84
	.uleb128 0x3b
	.uaword	0x2e7f
	.byte	0x8
	.uleb128 0x3c
	.uaword	0x2e72
	.sleb128 -268192512
	.byte	0
	.uleb128 0x46
	.uaword	.Ldebug_ranges0+0
	.uaword	0x3af5
	.uleb128 0x41
	.uaword	0x2eb2
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x3f
	.uaword	0x2ebe
	.uaword	.LLST43
	.uleb128 0x2f
	.uaword	.LVL133
	.uaword	0x4004
	.uaword	0x3ab3
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL134
	.uaword	0x4109
	.uaword	0x3acb
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL135
	.uaword	0x402e
	.uaword	0x3ade
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL136
	.byte	0x1
	.uaword	0x405b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 20
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL128
	.uaword	0x4004
	.uaword	0x3b08
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL129
	.uaword	0x402e
	.uaword	0x3b1b
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL131
	.uaword	0x405b
	.uaword	0x3b37
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x47
	.uaword	.LVL132
	.byte	0x1
	.uaword	0x4175
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"menu_select"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB337
	.uaword	.LFE337
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3bbf
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0x70
	.uaword	0x1fa
	.uaword	.LLST44
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0x70
	.uaword	0x6e6
	.uaword	.LLST45
	.uleb128 0x2f
	.uaword	.LVL139
	.uaword	0x4004
	.uaword	0x3b93
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL140
	.uaword	0x402e
	.uaword	0x3ba6
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL142
	.uaword	0x405b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"menu_display_menu3"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	.LFB343
	.uaword	.LFE343
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3c3d
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0xab
	.uaword	0x1fa
	.uaword	.LLST46
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0xab
	.uaword	0x6e6
	.uaword	.LLST47
	.uleb128 0x2f
	.uaword	.LVL145
	.uaword	0x4004
	.uaword	0x3c17
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.uaword	.LVL148
	.byte	0x1
	.uaword	0x40a8
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC16
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"menu_input_menu3"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.uaword	0x1fa
	.uaword	.LFB344
	.uaword	.LFE344
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3cc0
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0xb1
	.uaword	0x1fa
	.uaword	.LLST48
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0xb1
	.uaword	0x6e6
	.uaword	.LLST49
	.uleb128 0x36
	.string	"temp"
	.byte	0x1
	.byte	0xb3
	.uaword	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x39
	.string	"result"
	.byte	0x1
	.byte	0xb4
	.uaword	0x1fa
	.uaword	.LLST50
	.uleb128 0x32
	.uaword	.LVL151
	.uaword	0x40e8
	.uleb128 0x30
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC17
	.uleb128 0x30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"menu_select_menu3"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	.LFB345
	.uaword	.LFE345
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3d59
	.uleb128 0x2d
	.string	"ind"
	.byte	0x1
	.byte	0xbc
	.uaword	0x1fa
	.uaword	.LLST51
	.uleb128 0x2e
	.uaword	.LASF9
	.byte	0x1
	.byte	0xbc
	.uaword	0x6e6
	.uaword	.LLST52
	.uleb128 0x2f
	.uaword	.LVL155
	.uaword	0x4004
	.uaword	0x3d17
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL157
	.uaword	0x40a8
	.uaword	0x3d3f
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC16
	.uleb128 0x30
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.uaword	.LVL159
	.uaword	0x4153
	.uleb128 0x30
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC17
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8e
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"showmenu"
	.byte	0x1
	.uahalf	0x181
	.byte	0x1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3e2c
	.uleb128 0x34
	.string	"x"
	.byte	0x1
	.uahalf	0x181
	.uaword	0x1c9
	.uaword	.LLST53
	.uleb128 0x34
	.string	"y"
	.byte	0x1
	.uahalf	0x181
	.uaword	0x1c9
	.uaword	.LLST54
	.uleb128 0x35
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x181
	.uaword	0x6e6
	.uaword	.LLST55
	.uleb128 0x48
	.string	"i"
	.byte	0x1
	.uahalf	0x183
	.uaword	0x1fa
	.uaword	.LLST56
	.uleb128 0x2f
	.uaword	.LVL163
	.uaword	0x4109
	.uaword	0x3dc9
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL164
	.uaword	0x418b
	.uaword	0x3ddc
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL165
	.uaword	0x41ae
	.uaword	0x3df4
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL166
	.uaword	0x4109
	.uaword	0x3e0c
	.uleb128 0x30
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x37
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x42
	.uaword	.LVL173
	.uaword	0x2f18
	.uleb128 0x32
	.uaword	.LVL175
	.uaword	0x3b42
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x49
	.string	"conio_driver"
	.byte	0x6
	.byte	0xc9
	.uaword	0x72d
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"touch_driver"
	.byte	0x8
	.byte	0x5b
	.uaword	0x2bef
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"backgroundlightmin"
	.byte	0xb
	.byte	0x15
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"backgroundlightmax"
	.byte	0xb
	.byte	0x16
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"backgroundlightdelta"
	.byte	0xb
	.byte	0x17
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"backgroundlightsize"
	.byte	0xb
	.byte	0x18
	.uaword	0x208
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"die_temp"
	.byte	0xc
	.byte	0x17
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"die_highest"
	.byte	0xc
	.byte	0x18
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"die_lowest"
	.byte	0xc
	.byte	0x19
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"core_voltage"
	.byte	0xc
	.byte	0x1b
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"core_volt_min"
	.byte	0xc
	.byte	0x1c
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"core_volt_max"
	.byte	0xc
	.byte	0x1d
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"Vddp3"
	.byte	0xc
	.byte	0x1f
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"Vddp3_min"
	.byte	0xc
	.byte	0x20
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"Vddp3_max"
	.byte	0xc
	.byte	0x21
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"Vext"
	.byte	0xc
	.byte	0x23
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"Vext_min"
	.byte	0xc
	.byte	0x24
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"Vext_max"
	.byte	0xc
	.byte	0x25
	.uaword	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.uaword	0x5b5
	.uaword	0x3fc1
	.uleb128 0x7
	.uaword	0x2a5
	.byte	0x12
	.byte	0
	.uleb128 0x4a
	.string	"menulist"
	.byte	0x1
	.byte	0x40
	.uaword	0x3fd8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	menulist
	.uleb128 0x5
	.uaword	0x3fb1
	.uleb128 0x49
	.string	"controlmenu"
	.byte	0x1
	.byte	0x62
	.uaword	0x2c44
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"Time2Set"
	.byte	0x1
	.byte	0x64
	.uaword	0x2d7f
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.string	"conio_ascii_textattr"
	.byte	0x6
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x402e
	.uleb128 0xd
	.uaword	0x388
	.uleb128 0xd
	.uaword	0x1fa
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.string	"conio_ascii_gotoxy"
	.byte	0x6
	.byte	0xd8
	.byte	0x1
	.byte	0x1
	.uaword	0x405b
	.uleb128 0xd
	.uaword	0x388
	.uleb128 0xd
	.uaword	0x1fa
	.uleb128 0xd
	.uaword	0x1fa
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.string	"conio_ascii_cputs"
	.byte	0x6
	.byte	0xd4
	.byte	0x1
	.byte	0x1
	.uaword	0x4082
	.uleb128 0xd
	.uaword	0x388
	.uleb128 0xd
	.uaword	0x4a4
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"rtc_gettime"
	.byte	0xa
	.byte	0x43
	.byte	0x1
	.uaword	0x1fa
	.byte	0x1
	.uaword	0x40a2
	.uleb128 0xd
	.uaword	0x40a2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d7f
	.uleb128 0x4b
	.byte	0x1
	.string	"conio_ascii_printfxy"
	.byte	0x6
	.byte	0xdf
	.byte	0x1
	.byte	0x1
	.uaword	0x40dd
	.uleb128 0xd
	.uaword	0x388
	.uleb128 0xd
	.uaword	0x1fa
	.uleb128 0xd
	.uaword	0x1fa
	.uleb128 0xd
	.uaword	0x40dd
	.uleb128 0x4d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x40e3
	.uleb128 0x5
	.uaword	0x1ab
	.uleb128 0x4c
	.byte	0x1
	.string	"sscanf"
	.byte	0xd
	.byte	0xbe
	.byte	0x1
	.uaword	0x188
	.byte	0x1
	.uaword	0x4109
	.uleb128 0xd
	.uaword	0x272
	.uleb128 0xd
	.uaword	0x272
	.uleb128 0x4d
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.string	"conio_ascii_textbackground"
	.byte	0x6
	.byte	0xda
	.byte	0x1
	.byte	0x1
	.uaword	0x4139
	.uleb128 0xd
	.uaword	0x388
	.uleb128 0xd
	.uaword	0x1fa
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.string	"rtc_calibration"
	.byte	0xa
	.byte	0x49
	.byte	0x1
	.uaword	0x1fa
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.string	"sprintf"
	.byte	0xd
	.byte	0xe6
	.byte	0x1
	.uaword	0x188
	.byte	0x1
	.uaword	0x4175
	.uleb128 0xd
	.uaword	0x2b1
	.uleb128 0xd
	.uaword	0x272
	.uleb128 0x4d
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"start_slideshow"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.string	"conio_ascii_clrscr"
	.byte	0x6
	.byte	0xd6
	.byte	0x1
	.byte	0x1
	.uaword	0x41ae
	.uleb128 0xd
	.uaword	0x388
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"conio_ascii_textcolor"
	.byte	0x6
	.byte	0xd9
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.uaword	0x388
	.uleb128 0xd
	.uaword	0x1fa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uaword	.LVL3-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1-.Ltext0
	.uaword	.LFE336-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL8-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10-.Ltext0
	.uaword	.LFE341-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL16-.Ltext0
	.uaword	.LFE350-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19-.Ltext0
	.uaword	.LFE351-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL20-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22-.Ltext0
	.uaword	.LFE351-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL26-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26-1-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE339-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32-.Ltext0
	.uaword	.LFE342-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE347-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37-1-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE347-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41-.Ltext0
	.uaword	.LFE352-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL42-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42-1-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL43-.Ltext0
	.uaword	.LFE352-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL48-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48-1-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL49-.Ltext0
	.uaword	.LFE353-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL54-.Ltext0
	.uaword	.LFE354-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL55-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL56-.Ltext0
	.uaword	.LFE354-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL61-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61-1-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL62-.Ltext0
	.uaword	.LFE355-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE356-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL68-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68-1-.Ltext0
	.uaword	.LVL69-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL69-.Ltext0
	.uaword	.LFE356-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL73-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL72-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-1-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL75-.Ltext0
	.uaword	.LFE357-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL80-.Ltext0
	.uaword	.LFE358-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL81-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81-1-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL82-.Ltext0
	.uaword	.LFE358-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL86-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86-.Ltext0
	.uaword	.LFE359-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL87-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL87-1-.Ltext0
	.uaword	.LVL88-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL88-.Ltext0
	.uaword	.LFE359-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL94-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL94-1-.Ltext0
	.uaword	.LFE348-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL93-.Ltext0
	.uaword	.LFE348-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL94-.Ltext0
	.uaword	.LVL95-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL97-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL97-.Ltext0
	.uaword	.LFE360-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL96-.Ltext0
	.uaword	.LVL98-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL98-1-.Ltext0
	.uaword	.LVL100-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL101-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL101-1-.Ltext0
	.uaword	.LFE360-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL104-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL103-.Ltext0
	.uaword	.LVL105-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL105-1-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL107-.Ltext0
	.uaword	.LVL108-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	.LVL108-1-.Ltext0
	.uaword	.LFE346-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL113-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL113-1-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL112-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL112-.Ltext0
	.uaword	.LVL115-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL115-.Ltext0
	.uaword	.LFE340-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL121-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL121-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL120-.Ltext0
	.uaword	.LVL122-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL122-1-.Ltext0
	.uaword	.LFE349-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL127-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL127-.Ltext0
	.uaword	.LFE361-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL126-.Ltext0
	.uaword	.LVL128-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL128-1-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL130-.Ltext0
	.uaword	.LVL131-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	.LVL131-1-.Ltext0
	.uaword	.LVL132-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL132-.Ltext0
	.uaword	.LVL133-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL133-1-.Ltext0
	.uaword	.LFE361-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL132-.Ltext0
	.uaword	.LVL133-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL133-1-.Ltext0
	.uaword	.LFE361-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL138-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL139-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL139-1-.Ltext0
	.uaword	.LVL141-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL142-1-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	.LVL142-1-.Ltext0
	.uaword	.LFE337-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL144-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL144-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL145-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL145-1-.Ltext0
	.uaword	.LVL146-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL146-.Ltext0
	.uaword	.LFE343-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL151-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL151-1-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL149-.Ltext0
	.uaword	.LVL150-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL150-.Ltext0
	.uaword	.LFE344-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL151-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL154-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL154-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL155-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL155-1-.Ltext0
	.uaword	.LFE345-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL160-.Ltext0
	.uaword	.LVL162-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL162-.Ltext0
	.uaword	.LFE362-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL160-.Ltext0
	.uaword	.LVL161-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL161-.Ltext0
	.uaword	.LFE362-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL160-.Ltext0
	.uaword	.LVL163-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL163-1-.Ltext0
	.uaword	.LVL167-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL167-.Ltext0
	.uaword	.LFE362-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL166-.Ltext0
	.uaword	.LVL167-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL167-.Ltext0
	.uaword	.LVL168-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL169-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL169-1-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL172-.Ltext0
	.uaword	.LVL173-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL173-1-.Ltext0
	.uaword	.LVL174-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL174-.Ltext0
	.uaword	.LVL175-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL175-1-.Ltext0
	.uaword	.LFE362-.Ltext0
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LBB34-.Ltext0
	.uaword	.LBE34-.Ltext0
	.uaword	.LBB37-.Ltext0
	.uaword	.LBE37-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"reserved_0"
.LASF5:
	.string	"reserved_2"
.LASF3:
	.string	"reserved_8"
.LASF9:
	.string	"pdisplayentry"
.LASF0:
	.string	"pmenulist"
.LASF8:
	.string	"reserved_12"
.LASF2:
	.string	"reserved_16"
.LASF6:
	.string	"reserved_20"
.LASF4:
	.string	"reserved_24"
.LASF7:
	.string	"reserved_28"
	.extern	conio_ascii_textcolor,STT_FUNC,0
	.extern	conio_ascii_clrscr,STT_FUNC,0
	.extern	start_slideshow,STT_FUNC,0
	.extern	sprintf,STT_FUNC,0
	.extern	rtc_calibration,STT_FUNC,0
	.extern	Time2Set,STT_OBJECT,8
	.extern	conio_ascii_textbackground,STT_FUNC,0
	.extern	sscanf,STT_FUNC,0
	.extern	conio_driver,STT_OBJECT,244
	.extern	Vext_max,STT_OBJECT,4
	.extern	Vext_min,STT_OBJECT,4
	.extern	Vext,STT_OBJECT,4
	.extern	Vddp3_max,STT_OBJECT,4
	.extern	Vddp3_min,STT_OBJECT,4
	.extern	Vddp3,STT_OBJECT,4
	.extern	core_volt_max,STT_OBJECT,4
	.extern	core_volt_min,STT_OBJECT,4
	.extern	core_voltage,STT_OBJECT,4
	.extern	die_highest,STT_OBJECT,4
	.extern	die_lowest,STT_OBJECT,4
	.extern	die_temp,STT_OBJECT,4
	.extern	conio_ascii_printfxy,STT_FUNC,0
	.extern	rtc_gettime,STT_FUNC,0
	.extern	backgroundlightmin,STT_OBJECT,4
	.extern	backgroundlightdelta,STT_OBJECT,4
	.extern	backgroundlightsize,STT_OBJECT,4
	.extern	backgroundlightmax,STT_OBJECT,4
	.extern	controlmenu,STT_OBJECT,8
	.extern	touch_driver,STT_OBJECT,68
	.extern	conio_ascii_cputs,STT_FUNC,0
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_ascii_textattr,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
