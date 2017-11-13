	.file	"IfxScuCcu.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.type	IfxScuCcu_getOscFrequency.part.0, @function
IfxScuCcu_getOscFrequency.part.0:
.LFB231:
	.file 1 "0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.c"
	.loc 1 422 0
	.loc 1 430 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 437 0
	mov	%d2, 0
	.loc 1 430 0
	extr.u	%d15, %d15, 28, 2
	jeq	%d15, 1, .L5
.LVL0:
	.loc 1 441 0
	ret
.LVL1:
.L5:
	.loc 1 432 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	utof	%d2, %d2
.LVL2:
	.loc 1 441 0
	ret
.LFE231:
	.size	IfxScuCcu_getOscFrequency.part.0, .-IfxScuCcu_getOscFrequency.part.0
	.align 1
	.global	IfxScuCcu_calculateSysPllDividers
	.type	IfxScuCcu_calculateSysPllDividers, @function
IfxScuCcu_calculateSysPllDividers:
.LFB200:
	.loc 1 94 0
.LVL3:
.LBB28:
	.loc 1 133 0
	movh	%d3, 3662
	addi	%d3, %d3, 7169
	lt.u	%d14, %d4, %d3
	mov	%d15, 2
	sel	%d14, %d14, %d15, 1
	sh	%d5, %d14, 4
	.loc 1 126 0
	movh	%d6, 3052
	.loc 1 140 0
	movh.a	%a6, 244
	.loc 1 146 0
	movh	%d12, 59432
	movh.a	%a5, 6104
.LBE28:
	.loc 1 97 0
	ld.w	%d10, [%a4] 80
.LVL4:
	mov.a	%a3, %d5
.LBB31:
	.loc 1 126 0
	addi	%d6, %d6, -15872
	.loc 1 121 0
	mov	%e0, 0
	mov	%d7, 0
	.loc 1 136 0
	mov	%d9, 16
	.loc 1 140 0
	lea	%a6, [%a6] 9217
	.loc 1 146 0
	mov	%d13, -1
	addi	%d12, %d12, 31744
	lea	%a5, [%a5] -31743
	mov.a	%a2, 15
.LVL5:
.L14:
	.loc 1 138 0
	div.u	%e2, %d10, %d9
	.loc 1 140 0
	movh	%d5, 65414
	addi	%d5, %d5, -4608
	.loc 1 138 0
	mov	%d3, 0
	.loc 1 140 0
	addx	%d5, %d2, %d5
	addc	%d2, %d3, -1
	eq	%d15, %d2, 0
	mov.d	%d3, %a6
	and.ge.u	%d15, %d5, %d3
	or.ne	%d15, %d2, 0
	jnz	%d15, .L8
	mov	%d11, %d9
	mov	%d8, 1
.LVL6:
.L13:
	.loc 1 146 0
	madd.u	%e2, %e12, %d8, %d4
	mov.d	%d5, %a5
	eq	%d15, %d3, 0
	and.ge.u	%d15, %d2, %d5
	or.ne	%d15, %d3, 0
	jnz	%d15, .L9
	mov	%d5, 1
	lea	%a15, 127
.LVL7:
.L12:
.LBB29:
	.loc 1 151 0
	div.u	%e2, %d5, %d11
	mul	%d2, %d10
	sub	%d2, %d4
.LVL8:
	.loc 1 153 0
	jz	%d2, .L17
	.loc 1 163 0
	mov	%d15, 1
	and.ge.u	%d15, %d2, %d6
	cmovn	%d0, %d15, %d5
.LVL9:
	cmovn	%d6, %d15, %d2
.LVL10:
	cmovn	%d1, %d15, %d9
.LVL11:
	cmovn	%d7, %d15, %d8
.LVL12:
.LBE29:
	.loc 1 148 0
	add	%d5, 1
.LVL13:
	loop	%a15, .L12
.LVL14:
.L9:
	mov.d	%d15, %a3
	.loc 1 142 0 discriminator 2
	add	%d8, %d14
.LVL15:
	add	%d11, %d15
	lt.u	%d15, %d8, 129
	jnz	%d15, .L13
.LVL16:
.L8:
	mov.a	%a15, %d14
	.loc 1 136 0 discriminator 2
	add	%d9, -1
.LVL17:
	sub.a	%a3, %a3, %a15
	loop	%a2, .L14
	mov	%d9, %d1
.LVL18:
	mov	%d5, %d0
	mov	%d8, %d7
	j	.L10
.LVL19:
.L17:
.LBB30:
	.loc 1 155 0
	mov	%d6, 0
.LVL20:
.L10:
.LBE30:
	.loc 1 178 0
	movh	%d2, 20972
	sh	%d4, 1
.LVL21:
	addi	%d2, %d2, -31457
	mul.u	%e2, %d4, %d2
	mov	%d15, 1
	sh	%d2, %d3, -5
	and.ge.u	%d15, %d6, %d2
	.loc 1 188 0
	mov	%d2, 1
	.loc 1 178 0
	jnz	%d15, .L15
	.loc 1 183 0
	mov	%d2, 0
	.loc 1 180 0
	add	%d5, -1
.LVL22:
	.loc 1 181 0
	add	%d9, -1
.LVL23:
	.loc 1 182 0
	add	%d8, -1
.LVL24:
	.loc 1 183 0
	st.w	[%a4] 12, %d2
	.loc 1 180 0
	st.b	[%a4] 9, %d5
	.loc 1 181 0
	st.b	[%a4] 8, %d9
	.loc 1 182 0
	st.b	[%a4] 10, %d8
	.loc 1 184 0
	st.b	[%a4]0, %d15
.LBE31:
	.loc 1 95 0
	mov	%d2, 0
.LVL25:
.L15:
	.loc 1 193 0
	ret
.LFE200:
	.size	IfxScuCcu_calculateSysPllDividers, .-IfxScuCcu_calculateSysPllDividers
	.align 1
	.global	IfxScuCcu_getOsc0Frequency
	.type	IfxScuCcu_getOsc0Frequency, @function
IfxScuCcu_getOsc0Frequency:
.LFB209:
	.loc 1 417 0
	.loc 1 418 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	.loc 1 419 0
	utof	%d2, %d2
	ret
.LFE209:
	.size	IfxScuCcu_getOsc0Frequency, .-IfxScuCcu_getOsc0Frequency
	.align 1
	.global	IfxScuCcu_getOscFrequency
	.type	IfxScuCcu_getOscFrequency, @function
IfxScuCcu_getOscFrequency:
.LFB210:
	.loc 1 423 0
	.loc 1 426 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L24
	j	IfxScuCcu_getOscFrequency.part.0
.LVL26:
.L24:
	.loc 1 441 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	ret
.LFE210:
	.size	IfxScuCcu_getOscFrequency, .-IfxScuCcu_getOscFrequency
	.align 1
	.global	IfxScuCcu_getPllErayFrequency
	.type	IfxScuCcu_getPllErayFrequency, @function
IfxScuCcu_getPllErayFrequency:
.LFB211:
	.loc 1 445 0
.LVL27:
.LBB32:
.LBB33:
	.loc 1 426 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 428 0
	movh	%d2, 19647
	.loc 1 426 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 428 0
	addi	%d2, %d2, -17376
	.loc 1 426 0
	jnz	%d15, .L32
.LVL28:
.LBE33:
.LBE32:
	.loc 1 452 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 0, .L33
.L27:
	.loc 1 457 0
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 3, .L34
	.loc 1 465 0
	ld.w	%d3, [%a15] 40
	ld.w	%d15, [%a15] 44
	extr.u	%d3, %d3, 9, 5
	and	%d15, %d15, 127
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL29:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL30:
	.loc 1 469 0
	ret
.LVL31:
.L32:
	.loc 1 452 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB35:
.LBB34:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL32:
.LBE34:
.LBE35:
	ld.w	%d15, [%a15] 36
	jz.t	%d15, 0, .L27
.L33:
	.loc 1 455 0
	ld.w	%d15, [%a15] 44
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL33:
	ret
.LVL34:
.L34:
	.loc 1 460 0
	ld.w	%d2, [%a15] 44
.LVL35:
	and	%d2, %d2, 127
	add	%d2, 1
	itof	%d15, %d2
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	div.f	%d2, %d2, %d15
.LVL36:
	ret
.LFE211:
	.size	IfxScuCcu_getPllErayFrequency, .-IfxScuCcu_getPllErayFrequency
	.align 1
	.global	IfxScuCcu_getPllErayVcoFrequency
	.type	IfxScuCcu_getPllErayVcoFrequency, @function
IfxScuCcu_getPllErayVcoFrequency:
.LFB212:
	.loc 1 473 0
	.loc 1 476 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 479 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 476 0
	jnz.t	%d15, 3, .L36
.LBB36:
.LBB37:
	.loc 1 426 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L42
.L37:
.LVL37:
.LBE37:
.LBE36:
	.loc 1 484 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 5
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL38:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL39:
.L36:
	.loc 1 488 0
	ret
.LVL40:
.L42:
.LBB39:
.LBB38:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL41:
	j	.L37
.LBE38:
.LBE39:
.LFE212:
	.size	IfxScuCcu_getPllErayVcoFrequency, .-IfxScuCcu_getPllErayVcoFrequency
	.align 1
	.global	IfxScuCcu_getPllFrequency
	.type	IfxScuCcu_getPllFrequency, @function
IfxScuCcu_getPllFrequency:
.LFB213:
	.loc 1 492 0
.LVL42:
.LBB46:
.LBB47:
	.loc 1 426 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 428 0
	movh	%d2, 19647
	.loc 1 426 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 428 0
	addi	%d2, %d2, -17376
	.loc 1 426 0
	jnz	%d15, .L50
.LVL43:
.LBE47:
.LBE46:
	.loc 1 499 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 0, .L51
.L45:
	.loc 1 504 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 3, .L52
	.loc 1 512 0
	ld.w	%d4, [%a15] 24
	ld.w	%d15, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d15, 127
	ld.w	%d15, [%a15] 24
	add	%d4, 1
	extr.u	%d15, %d15, 24, 4
	itof	%d4, %d4
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	mul.f	%d2, %d4, %d2
.LVL44:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL45:
	.loc 1 516 0
	ret
.LVL46:
.L50:
	.loc 1 499 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB49:
.LBB48:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL47:
.LBE48:
.LBE49:
	ld.w	%d15, [%a15] 20
	jz.t	%d15, 0, .L45
.L51:
	.loc 1 502 0
	ld.w	%d15, [%a15] 28
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL48:
	ret
.LVL49:
.L52:
.LBB50:
.LBB51:
	.loc 1 507 0
	ld.w	%d2, [%a15] 28
.LVL50:
	and	%d2, %d2, 127
	add	%d2, 1
	itof	%d15, %d2
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	div.f	%d2, %d2, %d15
.LVL51:
	ret
.LBE51:
.LBE50:
.LFE213:
	.size	IfxScuCcu_getPllFrequency, .-IfxScuCcu_getPllFrequency
	.align 1
	.global	IfxScuCcu_getPllVcoFrequency
	.type	IfxScuCcu_getPllVcoFrequency, @function
IfxScuCcu_getPllVcoFrequency:
.LFB214:
	.loc 1 520 0
	.loc 1 523 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	ld.w	%d15, [%a15]0
	.loc 1 526 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 523 0
	jnz.t	%d15, 3, .L54
.LBB52:
.LBB53:
	.loc 1 426 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L60
.L55:
.LVL52:
.LBE53:
.LBE52:
	.loc 1 531 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 7
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL53:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL54:
.L54:
	.loc 1 535 0
	ret
.LVL55:
.L60:
.LBB55:
.LBB54:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL56:
	j	.L55
.LBE54:
.LBE55:
.LFE214:
	.size	IfxScuCcu_getPllVcoFrequency, .-IfxScuCcu_getPllVcoFrequency
	.align 1
	.global	IfxScuCcu_getSourceFrequency
	.type	IfxScuCcu_getSourceFrequency, @function
IfxScuCcu_getSourceFrequency:
.LFB215:
	.loc 1 539 0
	.loc 1 542 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L65
	jne	%d15, 1, .L66
	.loc 1 548 0
	j	IfxScuCcu_getPllFrequency
.LVL57:
.L66:
	.loc 1 551 0
	mov	%d2, 0
	ret
.L65:
	.loc 1 545 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
.LVL58:
	.loc 1 556 0
	ret
.LFE215:
	.size	IfxScuCcu_getSourceFrequency, .-IfxScuCcu_getSourceFrequency
	.align 1
	.type	IfxScuCcu_wait, @function
IfxScuCcu_wait:
.LFB230:
	.loc 1 1325 0
.LVL59:
.LBB56:
.LBB57:
	.file 2 "0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 2 1104 0
	movh.a	%a15, 61443
.LBE57:
.LBE56:
	.loc 1 1325 0
	mov	%d15, %d4
.LBB59:
.LBB58:
	.loc 2 1104 0
	lea	%a15, [%a15] 24628
	call	IfxScuCcu_getSourceFrequency
.LVL60:
	ld.w	%d4, [%a15]0
	extr.u	%d4, %d4, 8, 4
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LBE58:
.LBE59:
	.loc 1 1326 0
	mul.f	%d4, %d15, %d2
	.loc 1 1327 0
	ld.w	%d2, 0xf0000010
	.loc 1 1326 0
	ftouz	%d4, %d4
.LVL61:
.L68:
	.loc 1 1329 0 discriminator 1
	ld.w	%d15, 0xf0000010
	sub	%d15, %d2
	jlt.u	%d15, %d4, .L68
	.loc 1 1338 0
	ret
.LFE230:
	.size	IfxScuCcu_wait, .-IfxScuCcu_wait
	.align 1
	.global	IfxScuCcu_getBbbFrequency
	.type	IfxScuCcu_getBbbFrequency, @function
IfxScuCcu_getBbbFrequency:
.LFB203:
	.loc 1 233 0
	.loc 1 238 0
	movh.a	%a15, 61443
	.loc 1 236 0
	call	IfxScuCcu_getSourceFrequency
.LVL62:
	.loc 1 238 0
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 236 0
	mov	%d15, %d2
.LVL63:
	.loc 1 238 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 265 0
	mov	%d2, 0
.LVL64:
	.loc 1 238 0
	jge.u	%d3, 5, .L71
	movh.a	%a15, hi:.L73
	lea	%a15, [%a15] lo:.L73
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L73:
	.code32
	j	.L72
	.code32
	j	.L74
	.code32
	j	.L75
	.code32
	j	.L76
	.code32
	j	.L77
.L77:
	.loc 1 262 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL65:
.L71:
	.loc 1 270 0
	ret
.LVL66:
.L76:
	.loc 1 259 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL67:
	.loc 1 260 0
	ret
.LVL68:
.L72:
	.loc 1 242 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d3, [%a15]0
	.loc 1 244 0
	mov	%d2, 0
	.loc 1 242 0
	and	%d3, %d3, 15
	jz	%d3, .L71
	.loc 1 248 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL69:
	ret
.LVL70:
.L74:
	.loc 1 253 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL71:
	.loc 1 254 0
	ret
.LVL72:
.L75:
	.loc 1 256 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL73:
	.loc 1 257 0
	ret
.LFE203:
	.size	IfxScuCcu_getBbbFrequency, .-IfxScuCcu_getBbbFrequency
	.align 1
	.global	IfxScuCcu_getMaxFrequency
	.type	IfxScuCcu_getMaxFrequency, @function
IfxScuCcu_getMaxFrequency:
.LFB207:
	.loc 1 351 0
	.loc 1 356 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	.loc 1 354 0
	call	IfxScuCcu_getSourceFrequency
.LVL74:
	.loc 1 356 0
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 12, 4
	jlt.u	%d15, 5, .L93
	.loc 1 383 0
	mov	%d2, 0
.LVL75:
.L82:
	.loc 1 388 0
	ret
.LVL76:
.L93:
	.loc 1 356 0
	movh.a	%a15, hi:.L84
	lea	%a15, [%a15] lo:.L84
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L84:
	.code32
	j	.L83
	.code32
	j	.L85
	.code32
	j	.L86
	.code32
	j	.L87
	.code32
	j	.L88
.L87:
	.loc 1 377 0
	movh	%d15, 17008
	div.f	%d2, %d2, %d15
.LVL77:
	.loc 1 378 0
	ret
.LVL78:
.L88:
	.loc 1 380 0
	movh	%d15, 17136
	div.f	%d2, %d2, %d15
.LVL79:
	.loc 1 381 0
	ret
.LVL80:
.L83:
	.loc 1 360 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	jz	%d15, .L82
	.loc 1 366 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL81:
	ret
.LVL82:
.L85:
	.loc 1 371 0
	movh	%d15, 16752
	div.f	%d2, %d2, %d15
.LVL83:
	.loc 1 372 0
	ret
.LVL84:
.L86:
	.loc 1 374 0
	movh	%d15, 16880
	div.f	%d2, %d2, %d15
.LVL85:
	.loc 1 375 0
	ret
.LFE207:
	.size	IfxScuCcu_getMaxFrequency, .-IfxScuCcu_getMaxFrequency
	.align 1
	.global	IfxScuCcu_getBaud1Frequency
	.type	IfxScuCcu_getBaud1Frequency, @function
IfxScuCcu_getBaud1Frequency:
.LFB201:
	.loc 1 197 0
	.loc 1 199 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL86:
	.loc 1 203 0
	mov	%d2, 0
	.loc 1 199 0
	and	%d8, %d15, 15
.LVL87:
	.loc 1 201 0
	jnz	%d8, .L98
.LVL88:
	.loc 1 211 0
	ret
.LVL89:
.L98:
	.loc 1 207 0
	call	IfxScuCcu_getMaxFrequency
.LVL90:
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL91:
	.loc 1 211 0
	ret
.LFE201:
	.size	IfxScuCcu_getBaud1Frequency, .-IfxScuCcu_getBaud1Frequency
	.align 1
	.global	IfxScuCcu_getBaud2Frequency
	.type	IfxScuCcu_getBaud2Frequency, @function
IfxScuCcu_getBaud2Frequency:
.LFB202:
	.loc 1 215 0
	.loc 1 217 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL92:
	.loc 1 221 0
	mov	%d2, 0
	.loc 1 217 0
	extr.u	%d8, %d15, 4, 4
.LVL93:
	.loc 1 219 0
	and	%d15, %d15, 240
.LVL94:
	jnz	%d15, .L103
.LVL95:
	.loc 1 229 0
	ret
.LVL96:
.L103:
	.loc 1 225 0
	call	IfxScuCcu_getMaxFrequency
.LVL97:
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL98:
	.loc 1 229 0
	ret
.LFE202:
	.size	IfxScuCcu_getBaud2Frequency, .-IfxScuCcu_getBaud2Frequency
	.align 1
	.global	IfxScuCcu_getSpbFrequency
	.type	IfxScuCcu_getSpbFrequency, @function
IfxScuCcu_getSpbFrequency:
.LFB216:
	.loc 1 560 0
	.loc 1 565 0
	movh.a	%a15, 61443
	.loc 1 563 0
	call	IfxScuCcu_getSourceFrequency
.LVL99:
	.loc 1 565 0
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 563 0
	mov	%d15, %d2
.LVL100:
	.loc 1 565 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 592 0
	mov	%d2, 0
.LVL101:
	.loc 1 565 0
	jge.u	%d3, 5, .L105
	movh.a	%a15, hi:.L107
	lea	%a15, [%a15] lo:.L107
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L107:
	.code32
	j	.L106
	.code32
	j	.L108
	.code32
	j	.L109
	.code32
	j	.L110
	.code32
	j	.L111
.L111:
	.loc 1 589 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL102:
.L105:
	.loc 1 597 0
	ret
.LVL103:
.L110:
	.loc 1 586 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL104:
	.loc 1 587 0
	ret
.LVL105:
.L106:
	.loc 1 569 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 571 0
	mov	%d2, 0
	.loc 1 569 0
	extr.u	%d3, %d3, 16, 4
	jz	%d3, .L105
	.loc 1 575 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL106:
	ret
.LVL107:
.L108:
	.loc 1 580 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL108:
	.loc 1 581 0
	ret
.LVL109:
.L109:
	.loc 1 583 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL110:
	.loc 1 584 0
	ret
.LFE216:
	.size	IfxScuCcu_getSpbFrequency, .-IfxScuCcu_getSpbFrequency
	.align 1
	.global	IfxScuCcu_getModuleFrequency
	.type	IfxScuCcu_getModuleFrequency, @function
IfxScuCcu_getModuleFrequency:
.LFB208:
	.loc 1 392 0
	.loc 1 396 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24632
	ld.w	%d15, [%a15]0
.LVL111:
	.loc 1 397 0
	call	IfxScuCcu_getSpbFrequency
.LVL112:
	mov	%d3, %d2
	.loc 1 399 0
	mov.u	%d2, 49152
	.loc 1 396 0
	insert	%d8, %d15, 0, 10, 22
.LVL113:
	.loc 1 399 0
	and	%d15, %d2
.LVL114:
	mov	%d2, 16384
	jeq	%d15, %d2, .L119
	.loc 1 403 0
	mov.u	%d4, 32768
	.loc 1 409 0
	mov	%d2, 0
	.loc 1 403 0
	jeq	%d15, %d4, .L120
.LVL115:
	.loc 1 413 0
	ret
.LVL116:
.L120:
	.loc 1 405 0
	itof	%d2, %d8
	movh	%d15, 14976
	mul.f	%d2, %d2, %d3
	mul.f	%d2, %d2, %d15
.LVL117:
	.loc 1 413 0
	ret
.LVL118:
.L119:
	.loc 1 401 0
	mov	%d2, 1024
	sub	%d2, %d8
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL119:
	ret
.LFE208:
	.size	IfxScuCcu_getModuleFrequency, .-IfxScuCcu_getModuleFrequency
	.align 1
	.global	IfxScuCcu_getSriFrequency
	.type	IfxScuCcu_getSriFrequency, @function
IfxScuCcu_getSriFrequency:
.LFB217:
	.loc 1 601 0
	.loc 1 606 0
	movh.a	%a15, 61443
	.loc 1 604 0
	call	IfxScuCcu_getSourceFrequency
.LVL120:
	.loc 1 606 0
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 604 0
	mov	%d15, %d2
.LVL121:
	.loc 1 606 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 633 0
	mov	%d2, 0
.LVL122:
	.loc 1 606 0
	jge.u	%d3, 5, .L122
	movh.a	%a15, hi:.L124
	lea	%a15, [%a15] lo:.L124
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L124:
	.code32
	j	.L123
	.code32
	j	.L125
	.code32
	j	.L126
	.code32
	j	.L127
	.code32
	j	.L128
.L128:
	.loc 1 630 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL123:
.L122:
	.loc 1 638 0
	ret
.LVL124:
.L127:
	.loc 1 627 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL125:
	.loc 1 628 0
	ret
.LVL126:
.L123:
	.loc 1 610 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 612 0
	mov	%d2, 0
	.loc 1 610 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L122
	.loc 1 616 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL127:
	ret
.LVL128:
.L125:
	.loc 1 621 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL129:
	.loc 1 622 0
	ret
.LVL130:
.L126:
	.loc 1 624 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL131:
	.loc 1 625 0
	ret
.LFE217:
	.size	IfxScuCcu_getSriFrequency, .-IfxScuCcu_getSriFrequency
	.align 1
	.global	IfxScuCcu_getCpuFrequency
	.type	IfxScuCcu_getCpuFrequency, @function
IfxScuCcu_getCpuFrequency:
.LFB204:
	.loc 1 274 0
.LVL132:
	.loc 1 274 0
	mov	%d15, %d4
	.loc 1 275 0
	call	IfxScuCcu_getSriFrequency
.LVL133:
	.loc 1 278 0
	jeq	%d15, 1, .L134
	jz	%d15, .L135
	jne	%d15, 2, .L144
	.loc 1 287 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d15, [%a15]0
.LVL134:
.L137:
	.loc 1 295 0
	jz	%d15, .L133
	.loc 1 297 0
	sh	%d15, -6
.LVL135:
	itof	%d15, %d15
	mul.f	%d2, %d2, %d15
.LVL136:
	ret
.LVL137:
.L144:
	.loc 1 291 0
	mov	%d2, 0
.LVL138:
.L133:
	.loc 1 301 0
	ret
.LVL139:
.L135:
	.loc 1 281 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	ld.w	%d15, [%a15]0
.LVL140:
	.loc 1 282 0
	j	.L137
.LVL141:
.L134:
	.loc 1 284 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d15, [%a15]0
.LVL142:
	.loc 1 285 0
	j	.L137
.LFE204:
	.size	IfxScuCcu_getCpuFrequency, .-IfxScuCcu_getCpuFrequency
	.align 1
	.global	IfxScuCcu_getFsi2Frequency
	.type	IfxScuCcu_getFsi2Frequency, @function
IfxScuCcu_getFsi2Frequency:
.LFB205:
	.loc 1 305 0
	.loc 1 307 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL143:
	.loc 1 309 0
	movh	%d3, 48
	and	%d3, %d15
	.loc 1 307 0
	extr.u	%d8, %d15, 20, 2
.LVL144:
	.loc 1 311 0
	mov	%d2, 0
	.loc 1 309 0
	jnz	%d3, .L149
.LVL145:
.L146:
	.loc 1 324 0
	ret
.LVL146:
.L149:
	.loc 1 315 0
	call	IfxScuCcu_getSriFrequency
.LVL147:
	.loc 1 317 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL148:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L146
	.loc 1 319 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL149:
	.loc 1 324 0
	ret
.LFE205:
	.size	IfxScuCcu_getFsi2Frequency, .-IfxScuCcu_getFsi2Frequency
	.align 1
	.global	IfxScuCcu_getFsiFrequency
	.type	IfxScuCcu_getFsiFrequency, @function
IfxScuCcu_getFsiFrequency:
.LFB206:
	.loc 1 328 0
	.loc 1 330 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL150:
	.loc 1 332 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 330 0
	extr.u	%d8, %d15, 24, 2
.LVL151:
	.loc 1 334 0
	mov	%d2, 0
	.loc 1 332 0
	jnz	%d3, .L154
.LVL152:
.L151:
	.loc 1 347 0
	ret
.LVL153:
.L154:
	.loc 1 338 0
	call	IfxScuCcu_getSriFrequency
.LVL154:
	.loc 1 340 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL155:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L151
	.loc 1 342 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL156:
	.loc 1 347 0
	ret
.LFE206:
	.size	IfxScuCcu_getFsiFrequency, .-IfxScuCcu_getFsiFrequency
	.align 1
	.global	IfxScuCcu_init
	.type	IfxScuCcu_init, @function
IfxScuCcu_init:
.LFB218:
	.loc 1 642 0
.LVL157:
	.loc 1 647 0
	ld.w	%d2, [%a4] 80
	movh.a	%a13, hi:IfxScuCcu_xtalFrequency
	.loc 1 642 0
	mov.aa	%a12, %a4
	.loc 1 647 0
	st.w	[%a13] lo:IfxScuCcu_xtalFrequency, %d2
	.loc 1 649 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL158:
	mov	%d10, %d2
.LVL159:
	.loc 1 655 0
	movh.a	%a15, 61443
	.loc 1 650 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL160:
	.loc 1 655 0
	lea	%a15, [%a15] 24880
	.loc 1 654 0
	mov	%d4, %d10
	.loc 1 650 0
	mov	%d8, %d2
.LVL161:
	.loc 1 654 0
	call	IfxScuWdt_clearCpuEndinit
.LVL162:
	.loc 1 655 0
	ld.w	%d12, [%a15]0
	.loc 1 656 0
	ld.w	%d15, [%a15]0
	.loc 1 657 0
	mov	%d4, %d10
	.loc 1 656 0
	or	%d15, %d15, 8
	.loc 1 655 0
	extr.u	%d12, %d12, 3, 1
.LVL163:
	.loc 1 656 0
	st.w	[%a15]0, %d15
	.loc 1 657 0
	call	IfxScuWdt_setCpuEndinit
.LVL164:
	.loc 1 662 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL165:
	.loc 1 664 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L156:
	.loc 1 664 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L156
	.loc 1 670 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 671 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 674 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 678 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L157:
	.loc 1 678 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L157
	.loc 1 684 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 685 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.LVL166:
.LBB71:
.LBB72:
	.loc 1 1022 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24592
	.loc 1 1018 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL167:
	.loc 1 1022 0
	ld.w	%d15, [%a15]0
	.loc 1 1018 0
	mov	%d9, %d2
.LVL168:
	.loc 1 1022 0
	andn	%d15, %d15, ~(-97)
	.loc 1 1033 0
	mov.aa	%a2, %a15
	.loc 1 1022 0
	st.w	[%a15]0, %d15
	.loc 1 1028 0
	ld.w	%d6, [%a13] lo:IfxScuCcu_xtalFrequency
	movh	%d15, 27488
	addi	%d15, %d15, -13717
	mul.u	%e6, %d6, %d15
	ld.w	%d2, [%a15]0
.LVL169:
	sh	%d15, %d7, -20
	add	%d15, -1
	insert	%d15, %d2, %d15, 16, 5
	st.w	[%a15]0, %d15
	.loc 1 1030 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 1033 0
	lea	%a15, 639
.LVL170:
.L158:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L160
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 8, .L201
.L160:
	loop	%a15, .L158
.LVL171:
	.loc 1 1047 0
	movh.a	%a15, 61443
	.loc 1 1046 0
	mov	%d4, %d9
	.loc 1 1047 0
	lea	%a15, [%a15] 24876
	.loc 1 1046 0
	call	IfxScuWdt_clearCpuEndinit
.LVL172:
	.loc 1 1047 0
	ld.w	%d15, [%a15]0
	.loc 1 1049 0
	mov	%d4, %d9
	.loc 1 1047 0
	or	%d15, %d15, 8
	.loc 1 1039 0
	mov	%d9, 1
.LVL173:
	.loc 1 1047 0
	st.w	[%a15]0, %d15
	.loc 1 1048 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1049 0
	call	IfxScuWdt_setCpuEndinit
.LVL174:
.LBE72:
.LBE71:
	.loc 1 689 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL175:
	j	.L170
.LVL176:
.L201:
.LBB75:
.LBB73:
	.loc 1 1047 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1046 0
	mov	%d4, %d9
	call	IfxScuWdt_clearCpuEndinit
.LVL177:
	.loc 1 1047 0
	ld.w	%d15, [%a15]0
	.loc 1 1049 0
	mov	%d4, %d9
	.loc 1 1047 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1048 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1049 0
	call	IfxScuWdt_setCpuEndinit
.LVL178:
.LBE73:
.LBE75:
	.loc 1 689 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL179:
.LBB76:
	.loc 1 701 0
	mov	%d4, %d8
	.loc 1 703 0
	movh.a	%a15, 61443
	.loc 1 701 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL180:
	.loc 1 703 0
	lea	%a15, [%a15] 24596
.L162:
	.loc 1 703 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L162
	.loc 1 709 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 10
	.loc 1 728 0
	movh	%d4, 14418
	.loc 1 709 0
	insert	%d15, %d2, %d15, 0, 7
	.loc 1 728 0
	addi	%d4, %d4, -18665
	.loc 1 709 0
	st.w	[%a15]0, %d15
	.loc 1 713 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 8
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 714 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 9
	insert	%d15, %d2, %d15, 9, 7
	st.w	[%a15]0, %d15
	.loc 1 718 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 64
	st.w	[%a15]0, %d15
	.loc 1 720 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 722 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 723 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 726 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 730 0
	movh.a	%a15, 61443
	.loc 1 728 0
	call	IfxScuCcu_wait
.LVL181:
	.loc 1 730 0
	lea	%a15, [%a15] 24596
.L163:
	.loc 1 730 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L163
	.loc 1 736 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 738 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L164:
	.loc 1 738 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L164
	.loc 1 744 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 747 0
	mov.aa	%a15, %a2
	.loc 1 744 0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a2]0, %d15
.L165:
	.loc 1 747 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a13, 61443
	lea	%a13, [%a13] 24624
	jltz	%d15, .L165
	.loc 1 754 0
	ld.w	%d4, [%a12] 12
	.loc 1 766 0
	movh.a	%a15, 61443
	.loc 1 754 0
	call	IfxScuCcu_wait
.LVL182:
.LBB77:
	.loc 1 758 0
	ld.w	%d2, [%a13]0
	ld.w	%d15, [%a12] 20
	.loc 1 760 0
	ld.w	%d3, [%a12] 16
	.loc 1 758 0
	andn	%d2, %d2, %d15
	.loc 1 760 0
	and	%d15, %d3
	or	%d15, %d2
.LVL183:
	.loc 1 761 0
	insert	%d15, %d15, 1, 28, 2
.LVL184:
.LBE77:
	.loc 1 766 0
	lea	%a15, [%a15] 24628
.LBB78:
	.loc 1 762 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 763 0
	st.w	[%a13]0, %d15
.L166:
.LBE78:
	.loc 1 766 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL185:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	jltz	%d15, .L166
.LBB79:
	.loc 1 775 0
	ld.w	%d15, [%a12] 28
	ld.w	%d2, [%a2]0
	.loc 1 777 0
	ld.w	%d3, [%a12] 24
	.loc 1 775 0
	andn	%d2, %d2, %d15
	.loc 1 777 0
	and	%d15, %d3
	or	%d15, %d2
.LVL186:
	.loc 1 778 0
	insert	%d15, %d15, 1, 28, 2
.LVL187:
.LBE79:
	.loc 1 783 0
	movh.a	%a15, 61443
.LBB80:
	.loc 1 779 0
	insert	%d15, %d15, 1, 30, 1
.LBE80:
	.loc 1 783 0
	lea	%a15, [%a15] 24640
.LBB81:
	.loc 1 780 0
	st.w	[%a2]0, %d15
.L167:
.LBE81:
	.loc 1 783 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL188:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	jltz	%d15, .L167
.LBB82:
	.loc 1 792 0
	ld.w	%d15, [%a12] 36
	ld.w	%d2, [%a2]0
	.loc 1 794 0
	ld.w	%d3, [%a12] 32
	.loc 1 792 0
	andn	%d2, %d2, %d15
	.loc 1 794 0
	and	%d15, %d3
	or	%d15, %d2
.LVL189:
	.loc 1 795 0
	insert	%d15, %d15, 1, 30, 1
.LVL190:
.LBE82:
	.loc 1 799 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
.LBB83:
	.loc 1 796 0
	st.w	[%a2]0, %d15
.L168:
.LBE83:
	.loc 1 799 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL191:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24652
	jltz	%d15, .L168
.LBB84:
	.loc 1 806 0
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a12] 44
	.loc 1 808 0
	ld.w	%d3, [%a12] 40
	.loc 1 806 0
	andn	%d2, %d2, %d15
	.loc 1 808 0
	and	%d15, %d3
	or	%d15, %d2
.LVL192:
	.loc 1 809 0
	insert	%d15, %d15, 1, 30, 1
.LVL193:
.LBE84:
.LBB85:
	.loc 1 815 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	.loc 1 817 0
	ld.w	%d3, [%a12] 48
.LBE85:
.LBB86:
	.loc 1 810 0
	st.w	[%a2]0, %d15
.LBE86:
.LBB87:
	.loc 1 815 0
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 52
.LVL194:
.LBE87:
	.loc 1 840 0
	mov	%d4, %d8
.LBB88:
	.loc 1 815 0
	andn	%d2, %d2, %d15
.LVL195:
	.loc 1 817 0
	and	%d15, %d3
	or	%d15, %d2
.LVL196:
.LBE88:
.LBB89:
	.loc 1 826 0
	ld.w	%d3, [%a12] 56
.LBE89:
	.loc 1 872 0
	movh.a	%a13, 61443
.LBB90:
	.loc 1 818 0
	st.w	[%a15]0, %d15
.LBE90:
.LBB91:
	.loc 1 824 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 60
.LVL197:
.LBE91:
	.loc 1 859 0
	mov	%d9, 0
.LVL198:
.LBB92:
	.loc 1 824 0
	andn	%d2, %d2, %d15
.LVL199:
	.loc 1 826 0
	and	%d15, %d3
	or	%d15, %d2
.LVL200:
.LBE92:
.LBB93:
	.loc 1 835 0
	ld.w	%d3, [%a12] 64
.LBE93:
	.loc 1 872 0
	lea	%a13, [%a13] 24604
.LVL201:
.LBB94:
	.loc 1 827 0
	st.w	[%a15]0, %d15
.LVL202:
.LBE94:
.LBB95:
	.loc 1 833 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 68
.LVL203:
	andn	%d2, %d2, %d15
.LVL204:
	.loc 1 835 0
	and	%d15, %d3
	or	%d15, %d2
.LVL205:
	.loc 1 836 0
	st.w	[%a15]0, %d15
.LVL206:
.LBE95:
.LBB96:
	.loc 1 846 0
	movh.a	%a15, 63488
.LBE96:
	.loc 1 840 0
	call	IfxScuWdt_setSafetyEndinit
.LVL207:
.LBB97:
	.loc 1 846 0
	lea	%a15, [%a15] 8212
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 76
.LVL208:
	.loc 1 850 0
	ld.w	%d3, [%a12] 72
	.loc 1 849 0
	andn	%d2, %d2, %d15
.LVL209:
	.loc 1 850 0
	and	%d15, %d3
	or	%d15, %d2
.LVL210:
	.loc 1 852 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL211:
	.loc 1 854 0
	mov	%d4, %d10
	.loc 1 853 0
	st.w	[%a15]0, %d15
	.loc 1 854 0
	call	IfxScuWdt_setCpuEndinit
.LVL212:
.LBE97:
	.loc 1 859 0
	ld.bu	%d15, [%a12]0
.LVL213:
	.loc 1 865 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	.loc 1 859 0
	jz	%d15, .L173
.LVL214:
.L182:
	.loc 1 862 0
	mov	%d4, %d8
	and	%d11, %d9, 255
.LVL215:
	call	IfxScuWdt_clearSafetyEndinit
.LVL216:
.L171:
	.loc 1 865 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L171
	.loc 1 872 0
	and	%d15, %d9, 255
	ld.a	%a3, [%a12] 4
	mul	%d15, %d15, 12
	ld.w	%d3, [%a13]0
	.loc 1 873 0
	mov	%d4, %d8
	.loc 1 872 0
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d2, [%a2]0
	insert	%d2, %d3, %d2, 0, 7
	st.w	[%a13]0, %d2
	.loc 1 873 0
	call	IfxScuWdt_setSafetyEndinit
.LVL217:
	.loc 1 877 0
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
	ld.a	%a3, [%a2] 8
	jz.a	%a3, .L172
	.loc 1 879 0
	calli	%a3
.LVL218:
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
.L172:
	.loc 1 883 0 discriminator 2
	ld.w	%d4, [%a2] 4
	add	%d9, 1
.LVL219:
	call	IfxScuCcu_wait
.LVL220:
	addi	%d2, %d11, 1
	.loc 1 859 0 discriminator 2
	ld.bu	%d15, [%a12]0
	and	%d2, %d2, 255
	jlt.u	%d2, %d15, .L182
.LVL221:
.L173:
.LBE76:
.LBB98:
.LBB74:
	.loc 1 1017 0
	mov	%d9, 0
.LVL222:
.L170:
.LBE74:
.LBE98:
	.loc 1 889 0
	movh.a	%a15, 61443
	.loc 1 888 0
	mov	%d4, %d8
	.loc 1 889 0
	lea	%a15, [%a15] 24600
	.loc 1 888 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL223:
	.loc 1 889 0
	ld.w	%d15, [%a15]0
	.loc 1 890 0
	mov	%d4, %d8
	.loc 1 889 0
	andn	%d15, %d15, ~(-65)
	.loc 1 896 0
	sh	%d12, 3
.LVL224:
	.loc 1 889 0
	st.w	[%a15]0, %d15
	.loc 1 890 0
	call	IfxScuWdt_setSafetyEndinit
.LVL225:
	.loc 1 895 0
	movh.a	%a15, 61443
	.loc 1 894 0
	mov	%d4, %d10
	.loc 1 895 0
	lea	%a15, [%a15] 24876
	.loc 1 894 0
	call	IfxScuWdt_clearCpuEndinit
.LVL226:
	.loc 1 895 0
	ld.w	%d15, [%a15]0
	.loc 1 897 0
	mov	%d4, %d10
	.loc 1 895 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 896 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	or	%d12, %d15
	st.w	[%a15]0, %d12
	.loc 1 897 0
	call	IfxScuWdt_setCpuEndinit
.LVL227:
	.loc 1 900 0
	mov	%d2, %d9
	ret
.LFE218:
	.size	IfxScuCcu_init, .-IfxScuCcu_init
	.align 1
	.global	IfxScuCcu_initConfig
	.type	IfxScuCcu_initConfig, @function
IfxScuCcu_initConfig:
.LFB219:
	.loc 1 904 0
.LVL228:
	.loc 1 905 0
	movh	%d2, hi:IfxScuCcu_defaultClockConfig
	mov.a	%a2, %d2
	lea	%a15, [%a2] lo:IfxScuCcu_defaultClockConfig
		# #chunks=10, chunksize=8, remains=4
	lea	%a2, 10-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL229:
	ret
.LFE219:
	.size	IfxScuCcu_initConfig, .-IfxScuCcu_initConfig
	.align 1
	.global	IfxScuCcu_initErayPll
	.type	IfxScuCcu_initErayPll, @function
IfxScuCcu_initErayPll:
.LFB220:
	.loc 1 910 0
.LVL230:
	.loc 1 910 0
	mov.aa	%a12, %a4
	.loc 1 915 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL231:
	mov	%d8, %d2
.LVL232:
	.loc 1 916 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL233:
	.loc 1 919 0
	mov	%d4, %d8
	.loc 1 920 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	.loc 1 916 0
	mov	%d9, %d2
.LVL234:
	.loc 1 919 0
	call	IfxScuWdt_clearCpuEndinit
.LVL235:
	.loc 1 920 0
	ld.w	%d2, [%a15]0
	.loc 1 921 0
	ld.w	%d15, [%a15]0
	.loc 1 922 0
	mov	%d4, %d8
	.loc 1 921 0
	or	%d15, %d15, 8
	.loc 1 920 0
	extr.u	%d10, %d2, 3, 1
.LVL236:
	.loc 1 921 0
	st.w	[%a15]0, %d15
	.loc 1 922 0
	call	IfxScuWdt_setCpuEndinit
.LVL237:
	.loc 1 927 0
	movh.a	%a15, 61443
	.loc 1 924 0
	mov	%d4, %d9
	.loc 1 927 0
	lea	%a15, [%a15] 24616
	.loc 1 924 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL238:
	.loc 1 927 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 16, .L204
	.loc 1 927 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L229
.L204:
	.loc 1 930 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 931 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 933 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L206:
	.loc 1 933 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 1, .L206
	.loc 1 937 0 is_stmt 1
	ld.w	%d4, [%a12] 4
	call	IfxScuCcu_wait
.LVL239:
.L205:
	.loc 1 942 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L208
.L207:
	.loc 1 953 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L209:
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L209
	.loc 1 956 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 2
	.loc 1 969 0
	mov	%d4, %d9
	.loc 1 956 0
	insert	%d15, %d2, %d15, 0, 7
	st.w	[%a15]0, %d15
	.loc 1 957 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12]0
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 958 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 1
	insert	%d15, %d2, %d15, 9, 5
	st.w	[%a15]0, %d15
	.loc 1 966 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 967 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 969 0
	call	IfxScuWdt_setSafetyEndinit
.LVL240:
	.loc 1 974 0
	movh.a	%a2, 61443
	movh.a	%a15, 1
	lea	%a2, [%a2] 24612
	lea	%a15, [%a15] -15538
.LVL241:
.L210:
	.loc 1 974 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 2, .L211
	loop	%a15, .L210
.L211:
	.loc 1 985 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	.loc 1 983 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL242:
	.loc 1 985 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 988 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L213:
	.loc 1 988 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L213
	.loc 1 991 0 is_stmt 1
	movh.a	%a15, 61443
	.loc 1 996 0
	mov	%d4, %d9
	.loc 1 991 0
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 996 0
	call	IfxScuWdt_setSafetyEndinit
.LVL243:
	.loc 1 1000 0
	movh.a	%a15, 61443
	.loc 1 999 0
	mov	%d4, %d8
	.loc 1 1000 0
	lea	%a15, [%a15] 24876
	.loc 1 999 0
	call	IfxScuWdt_clearCpuEndinit
.LVL244:
	.loc 1 1000 0
	ld.w	%d15, [%a15]0
	.loc 1 1001 0
	sh	%d2, %d10, 3
	.loc 1 1000 0
	or	%d15, %d15, 8
	.loc 1 1002 0
	mov	%d4, %d8
	.loc 1 1000 0
	st.w	[%a15]0, %d15
	.loc 1 1001 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1002 0
	call	IfxScuWdt_setCpuEndinit
.LVL245:
	.loc 1 1005 0
	mov	%d2, 0
	ret
.L208:
	.loc 1 944 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 4, .L208
	.loc 1 947 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 16, 7
	st.w	[%a15]0, %d15
	.loc 1 950 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	j	.L207
.L229:
	.loc 1 927 0 discriminator 2
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L205
	j	.L204
.LFE220:
	.size	IfxScuCcu_initErayPll, .-IfxScuCcu_initErayPll
	.align 1
	.global	IfxScuCcu_initErayPllConfig
	.type	IfxScuCcu_initErayPllConfig, @function
IfxScuCcu_initErayPllConfig:
.LFB221:
	.loc 1 1009 0
.LVL246:
	.loc 1 1010 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	mov	%d15, 23
	st.b	[%a4] 1, %d15
	mov	%d15, 5
	st.b	[%a4] 2, %d15
	mov	%d15, 0
	st.w	[%a4] 4, %d15
	ret
.LFE221:
	.size	IfxScuCcu_initErayPllConfig, .-IfxScuCcu_initErayPllConfig
	.align 1
	.global	IfxScuCcu_setCpuFrequency
	.type	IfxScuCcu_setCpuFrequency, @function
IfxScuCcu_setCpuFrequency:
.LFB223:
	.loc 1 1056 0
.LVL247:
	.loc 1 1056 0
	mov	%e8, %d4, %d5
	.loc 1 1061 0
	call	IfxScuCcu_getSriFrequency
.LVL248:
	mov	%d15, %d2
.LVL249:
	.loc 1 1063 0
	cmp.f	%d2, %d2, %d8
.LVL250:
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L232
	.loc 1 1069 0
	movh	%d2, 17024
	mul.f	%d8, %d8, %d2
.LVL251:
	div.f	%d8, %d8, %d15
	ftouz	%d8, %d8
.LVL252:
	.loc 1 1072 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL253:
	.loc 1 1075 0
	mov	%d4, %d2
	.loc 1 1072 0
	mov	%d10, %d2
.LVL254:
	.loc 1 1075 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL255:
	.loc 1 1077 0
	jeq	%d9, 1, .L234
	jz	%d9, .L235
	jeq	%d9, 2, .L236
.LVL256:
.L233:
	.loc 1 1092 0
	mov	%d4, %d10
	call	IfxScuWdt_setSafetyEndinit
.LVL257:
	.loc 1 1095 0
	jz	%d8, .L246
	.loc 1 1097 0
	sh	%d8, -6
	itof	%d8, %d8
	mul.f	%d15, %d15, %d8
.LVL258:
.L246:
	.loc 1 1101 0
	mov	%d2, %d15
	ret
.LVL259:
.L232:
	.loc 1 1072 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL260:
	.loc 1 1075 0
	mov	%d4, %d2
	.loc 1 1072 0
	mov	%d10, %d2
.LVL261:
	.loc 1 1075 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL262:
	.loc 1 1077 0
	jeq	%d9, 1, .L240
	jz	%d9, .L239
	jne	%d9, 2, .L257
	.loc 1 1065 0
	mov	%d8, 0
.LVL263:
.L236:
	.loc 1 1086 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	st.w	[%a15]0, %d8
	.loc 1 1087 0
	j	.L233
.LVL264:
.L240:
	.loc 1 1065 0
	mov	%d8, 0
.LVL265:
.L234:
	.loc 1 1083 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	st.w	[%a15]0, %d8
	.loc 1 1084 0
	j	.L233
.LVL266:
.L239:
	.loc 1 1065 0
	mov	%d8, 0
.LVL267:
.L235:
	.loc 1 1080 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	st.w	[%a15]0, %d8
	.loc 1 1081 0
	j	.L233
.LVL268:
.L257:
	.loc 1 1092 0
	mov	%d4, %d10
	call	IfxScuWdt_setSafetyEndinit
.LVL269:
	j	.L246
.LFE223:
	.size	IfxScuCcu_setCpuFrequency, .-IfxScuCcu_setCpuFrequency
	.align 1
	.global	IfxScuCcu_setGtmFrequency
	.type	IfxScuCcu_setGtmFrequency, @function
IfxScuCcu_setGtmFrequency:
.LFB224:
	.loc 1 1105 0
.LVL270:
	.loc 1 1107 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	.loc 1 1105 0
	mov	%d8, %d4
	.loc 1 1107 0
	ld.w	%d15, [%a15]0
.LVL271:
	.loc 1 1109 0
	call	IfxScuCcu_getSourceFrequency
.LVL272:
	.loc 1 1110 0
	div.f	%d2, %d2, %d8
.LVL273:
	ftoiz	%d3, %d2
	itof	%d4, %d3
	sub.f	%d2, %d2, %d4
	movh	%d4, 16128
	cmp.f	%d2, %d2, %d4
	extr.u	%d2, %d2, 2, 1
	add	%d2, %d3
.LVL274:
.LBB99:
.LBB100:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 114 0
	mov	%d3, 1
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d2, %d3
	# 0 "" 2
.LVL275:
#NO_APP
.LBE100:
.LBE99:
	.loc 1 1114 0
	addi	%d3, %d2, -7
	jge.u	%d3, 7, .L262
	.loc 1 1116 0 discriminator 1
	andn	%d2, %d2, ~(-2)
.LVL276:
.L265:
	and	%d9, %d2, 15
.L264:
.LVL277:
	.loc 1 1126 0
	insert	%d15, %d15, %d9, 12, 4
	.loc 1 1124 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL278:
	.loc 1 1127 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1125 0
	mov	%d4, %d2
	.loc 1 1128 0
	movh.a	%a15, 61443
	.loc 1 1124 0
	mov	%d8, %d2
.LVL279:
	.loc 1 1128 0
	lea	%a15, [%a15] 24628
	.loc 1 1125 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL280:
	.loc 1 1130 0
	mov	%d4, %d8
	.loc 1 1128 0
	st.w	[%a15]0, %d15
	.loc 1 1130 0
	call	IfxScuWdt_setSafetyEndinit
.LVL281:
.LBB101:
.LBB102:
	.loc 2 1073 0
	call	IfxScuCcu_getSourceFrequency
.LVL282:
	ld.w	%d15, [%a15]0
.LVL283:
	extr.u	%d15, %d15, 12, 4
	itof	%d15, %d15
.LBE102:
.LBE101:
	.loc 1 1133 0
	div.f	%d2, %d2, %d15
	ret
.LVL284:
.L262:
	.loc 1 1119 0
	eq	%d3, %d2, 14
	mov	%d9, 12
	jnz	%d3, .L264
	j	.L265
.LFE224:
	.size	IfxScuCcu_setGtmFrequency, .-IfxScuCcu_setGtmFrequency
	.align 1
	.global	IfxScuCcu_setPll2ErayFrequency
	.type	IfxScuCcu_setPll2ErayFrequency, @function
IfxScuCcu_setPll2ErayFrequency:
.LFB225:
	.loc 1 1137 0
.LVL285:
	.loc 1 1137 0
	mov	%d8, %d4
	.loc 1 1138 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL286:
	mov	%d15, %d2
.LVL287:
	.loc 1 1139 0
	call	IfxScuCcu_getPllErayVcoFrequency
.LVL288:
	mov	%d9, %d2
.LVL289:
	.loc 1 1141 0
	mov	%d4, %d15
	call	IfxScuWdt_clearSafetyEndinit
.LVL290:
	.loc 1 1139 0
	div.f	%d8, %d9, %d8
.LVL291:
	movh	%d3, 16256
	.loc 1 1142 0
	movh.a	%a15, 61443
	.loc 1 1139 0
	sub.f	%d8, %d8, %d3
	.loc 1 1142 0
	lea	%a15, [%a15] 24620
	ld.w	%d2, [%a15]0
	.loc 1 1139 0
	ftouz	%d8, %d8
.LVL292:
	.loc 1 1143 0
	mov	%d4, %d15
	.loc 1 1142 0
	insert	%d8, %d2, %d8, 8, 4
.LVL293:
	st.w	[%a15]0, %d8
	.loc 1 1143 0
	call	IfxScuWdt_setSafetyEndinit
.LVL294:
.LBB103:
.LBB104:
	.loc 2 1081 0
	call	IfxScuCcu_getPllErayVcoFrequency
.LVL295:
	ld.w	%d15, [%a15]0
.LVL296:
	extr.u	%d15, %d15, 8, 4
.LVL297:
	add	%d15, 1
.LVL298:
	itof	%d15, %d15
.LVL299:
.LBE104:
.LBE103:
	.loc 1 1146 0
	div.f	%d2, %d2, %d15
	ret
.LFE225:
	.size	IfxScuCcu_setPll2ErayFrequency, .-IfxScuCcu_setPll2ErayFrequency
	.align 1
	.global	IfxScuCcu_setPll2Frequency
	.type	IfxScuCcu_setPll2Frequency, @function
IfxScuCcu_setPll2Frequency:
.LFB226:
	.loc 1 1150 0
.LVL300:
	.loc 1 1150 0
	mov	%d8, %d4
	.loc 1 1151 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL301:
	mov	%d15, %d2
.LVL302:
	.loc 1 1152 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL303:
	mov	%d9, %d2
.LVL304:
	.loc 1 1154 0
	mov	%d4, %d15
	call	IfxScuWdt_clearSafetyEndinit
.LVL305:
	.loc 1 1152 0
	div.f	%d8, %d9, %d8
.LVL306:
	movh	%d3, 16256
	.loc 1 1155 0
	movh.a	%a15, 61443
	.loc 1 1152 0
	sub.f	%d8, %d8, %d3
	.loc 1 1155 0
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	.loc 1 1152 0
	ftouz	%d8, %d8
.LVL307:
	.loc 1 1156 0
	mov	%d4, %d15
	.loc 1 1155 0
	insert	%d8, %d2, %d8, 8, 7
.LVL308:
	st.w	[%a15]0, %d8
	.loc 1 1156 0
	call	IfxScuWdt_setSafetyEndinit
.LVL309:
.LBB105:
.LBB106:
	.loc 2 1090 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL310:
	ld.w	%d15, [%a15]0
.LVL311:
	extr.u	%d15, %d15, 8, 7
.LVL312:
	add	%d15, 1
.LVL313:
	itof	%d15, %d15
.LVL314:
.LBE106:
.LBE105:
	.loc 1 1159 0
	div.f	%d2, %d2, %d15
	ret
.LFE226:
	.size	IfxScuCcu_setPll2Frequency, .-IfxScuCcu_setPll2Frequency
	.align 1
	.global	IfxScuCcu_setSpbFrequency
	.type	IfxScuCcu_setSpbFrequency, @function
IfxScuCcu_setSpbFrequency:
.LFB227:
	.loc 1 1163 0
.LVL315:
	.loc 1 1163 0
	mov	%d15, %d4
	.loc 1 1168 0
	call	IfxScuCcu_getSourceFrequency
.LVL316:
	.loc 1 1169 0
	div.f	%d2, %d2, %d15
.LVL317:
.LBB107:
.LBB108:
	.loc 3 114 0
	mov	%d15, 2
.LVL318:
.LBE108:
.LBE107:
	.loc 1 1169 0
	ftouz	%d2, %d2
.LVL319:
.LBB110:
.LBB109:
	.loc 3 114 0
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d2, %d15
	# 0 "" 2
.LVL320:
#NO_APP
.LBE109:
.LBE110:
	.loc 1 1172 0
	add	%d2, %d15, -7
.LVL321:
	jge.u	%d2, 7, .L274
	.loc 1 1174 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL322:
.L278:
	and	%d10, %d15, 15
.L276:
.LVL323:
	.loc 1 1182 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL324:
	mov	%d8, %d2
.LVL325:
	.loc 1 1183 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL326:
	.loc 1 1185 0
	mov	%d4, %d8
	.loc 1 1186 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	.loc 1 1183 0
	mov	%d9, %d2
.LVL327:
	.loc 1 1185 0
	call	IfxScuWdt_clearCpuEndinit
.LVL328:
	.loc 1 1186 0
	ld.w	%d2, [%a15]0
	mov	%d15, 992
	or	%d15, %d2
	.loc 1 1187 0
	mov	%d4, %d8
	.loc 1 1186 0
	st.w	[%a15]0, %d15
	.loc 1 1187 0
	call	IfxScuWdt_setCpuEndinit
.LVL329:
	.loc 1 1189 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL330:
	.loc 1 1190 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	ld.w	%d15, [%a2]0
	.loc 1 1194 0
	mov	%d4, %d9
	.loc 1 1191 0
	insert	%d15, %d15, %d10, 16, 4
.LVL331:
	.loc 1 1192 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1193 0
	st.w	[%a2]0, %d15
	.loc 1 1194 0
	call	IfxScuWdt_setSafetyEndinit
.LVL332:
	.loc 1 1196 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL333:
	.loc 1 1197 0
	ld.w	%d15, [%a15]0
.LVL334:
	.loc 1 1198 0
	mov	%d4, %d8
	.loc 1 1197 0
	insert	%d15, %d15, 0, 5, 5
	st.w	[%a15]0, %d15
	.loc 1 1200 0
	movh.a	%a15, 61443
	.loc 1 1198 0
	call	IfxScuWdt_setCpuEndinit
.LVL335:
	.loc 1 1200 0
	lea	%a15, [%a15] 24624
.L277:
	.loc 1 1200 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L277
	.loc 1 1203 0 is_stmt 1
	j	IfxScuCcu_getSpbFrequency
.LVL336:
.L274:
	.loc 1 1177 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L276
	j	.L278
.LFE227:
	.size	IfxScuCcu_setSpbFrequency, .-IfxScuCcu_setSpbFrequency
	.align 1
	.global	IfxScuCcu_setSriFrequency
	.type	IfxScuCcu_setSriFrequency, @function
IfxScuCcu_setSriFrequency:
.LFB228:
	.loc 1 1208 0
.LVL337:
	.loc 1 1208 0
	mov	%d15, %d4
	.loc 1 1210 0
	call	IfxScuCcu_getSourceFrequency
.LVL338:
	.loc 1 1213 0
	div.f	%d2, %d2, %d15
.LVL339:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL340:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB111:
.LBB112:
	.loc 3 114 0
	mov	%d2, 1
.LBE112:
.LBE111:
	.loc 1 1213 0
	add	%d15, %d3
.LVL341:
.LBB114:
.LBB113:
	.loc 3 114 0
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL342:
#NO_APP
.LBE113:
.LBE114:
	.loc 1 1216 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L288
	.loc 1 1218 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL343:
.L292:
	and	%d9, %d15, 15
.L290:
.LVL344:
	.loc 1 1226 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL345:
	.loc 1 1229 0
	movh.a	%a15, 61443
	.loc 1 1227 0
	mov	%d4, %d2
	.loc 1 1229 0
	lea	%a15, [%a15] 24624
	.loc 1 1226 0
	mov	%d8, %d2
.LVL346:
	.loc 1 1227 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL347:
	.loc 1 1229 0
	ld.w	%d15, [%a15]0
	.loc 1 1234 0
	mov	%d4, %d8
	.loc 1 1230 0
	insert	%d15, %d15, %d9, 8, 4
.LVL348:
	.loc 1 1231 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1232 0
	st.w	[%a15]0, %d15
	.loc 1 1234 0
	call	IfxScuWdt_setSafetyEndinit
.LVL349:
.L291:
	.loc 1 1236 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL350:
	jltz	%d15, .L291
	.loc 1 1239 0
	j	IfxScuCcu_getSriFrequency
.LVL351:
.L288:
	.loc 1 1221 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L290
	j	.L292
.LFE228:
	.size	IfxScuCcu_setSriFrequency, .-IfxScuCcu_setSriFrequency
	.align 1
	.global	IfxScuCcu_switchToBackupClock
	.type	IfxScuCcu_switchToBackupClock, @function
IfxScuCcu_switchToBackupClock:
.LFB229:
	.loc 1 1245 0
.LVL352:
	.loc 1 1250 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L313
	ret
.L313:
	mov.aa	%a12, %a4
	.loc 1 1255 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL353:
	mov	%d8, %d2
.LVL354:
	.loc 1 1256 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL355:
	.loc 1 1259 0
	ld.bu	%d9, [%a12]0
	.loc 1 1272 0
	movh.a	%a14, 61443
	mul	%d15, %d9, 12
	.loc 1 1256 0
	mov	%d10, %d2
.LVL356:
	.loc 1 1272 0
	lea	%a14, [%a14] 24604
	mov.a	%a15, %d15
	lea	%a13, [%a15] -12
	.loc 1 1265 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	.loc 1 1259 0
	jz	%d9, .L305
.LVL357:
.L308:
	.loc 1 1262 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL358:
.L303:
	.loc 1 1265 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L303
	.loc 1 1272 0 discriminator 2
	ld.a	%a2, [%a12] 4
	ld.w	%d3, [%a14]0
	.loc 1 1273 0 discriminator 2
	mov	%d4, %d8
	.loc 1 1272 0 discriminator 2
	add.a	%a2, %a13
	ld.bu	%d15, [%a2]0
	.loc 1 1259 0 discriminator 2
	add	%d9, -1
.LVL359:
	.loc 1 1272 0 discriminator 2
	insert	%d15, %d3, %d15, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 1273 0 discriminator 2
	call	IfxScuWdt_setSafetyEndinit
.LVL360:
	.loc 1 1276 0 discriminator 2
	ld.a	%a2, [%a12] 4
	add.a	%a2, %a13
	ld.w	%d4, [%a2] 4
	lea	%a13, [%a13] -12
	call	IfxScuCcu_wait
.LVL361:
	.loc 1 1259 0 discriminator 2
	jnz	%d9, .L308
.L305:
	.loc 1 1282 0
	mov	%d4, %d10
	.loc 1 1283 0
	movh.a	%a15, 61443
	.loc 1 1282 0
	call	IfxScuWdt_clearCpuEndinit
.LVL362:
	.loc 1 1283 0
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	.loc 1 1284 0
	ld.w	%d15, [%a15]0
	.loc 1 1285 0
	mov	%d4, %d10
	.loc 1 1284 0
	or	%d15, %d15, 8
	.loc 1 1283 0
	extr.u	%d9, %d2, 3, 1
.LVL363:
	.loc 1 1284 0
	st.w	[%a15]0, %d15
	.loc 1 1285 0
	call	IfxScuWdt_setCpuEndinit
.LVL364:
	.loc 1 1290 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL365:
	.loc 1 1292 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L302:
	.loc 1 1292 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L302
	.loc 1 1298 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 1299 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.L306:
	.loc 1 1301 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L306
	.loc 1 1308 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 1 1312 0
	mov	%d4, %d8
	.loc 1 1308 0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1311 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 1312 0
	call	IfxScuWdt_setSafetyEndinit
.LVL366:
	.loc 1 1317 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1316 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL367:
	.loc 1 1317 0
	ld.w	%d15, [%a15]0
	.loc 1 1318 0
	sh	%d2, %d9, 3
	.loc 1 1317 0
	or	%d15, %d15, 8
	.loc 1 1319 0
	mov	%d4, %d10
	.loc 1 1317 0
	st.w	[%a15]0, %d15
	.loc 1 1318 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1319 0
	j	IfxScuWdt_setCpuEndinit
.LVL368:
.LFE229:
	.size	IfxScuCcu_switchToBackupClock, .-IfxScuCcu_switchToBackupClock
	.global	IfxScuCcu_defaultErayPllConfig
.section .srodata,"as",@progbits
	.align 2
	.type	IfxScuCcu_defaultErayPllConfig, @object
	.size	IfxScuCcu_defaultErayPllConfig, 8
IfxScuCcu_defaultErayPllConfig:
	.byte	0
	.byte	23
	.byte	5
	.zero	1
	.word	0
	.global	IfxScuCcu_defaultClockConfig
.section .rodata,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultClockConfig, @object
	.size	IfxScuCcu_defaultClockConfig, 84
IfxScuCcu_defaultClockConfig:
	.byte	3
	.zero	3
	.word	IfxScuCcu_aDefaultPllConfigSteps
	.byte	1
	.byte	59
	.byte	5
	.zero	1
	.word	961656599
	.word	34734354
	.word	54464511
	.word	34873874
	.word	268435455
	.word	2
	.word	15
	.word	1
	.word	15
	.word	0
	.word	63
	.word	0
	.word	63
	.word	0
	.word	63
	.word	5333
	.word	32767
	.word	20000000
.section .data,"aw",@progbits
	.align 2
	.type	IfxScuCcu_xtalFrequency, @object
	.size	IfxScuCcu_xtalFrequency, 4
IfxScuCcu_xtalFrequency:
	.word	20000000
.section .rodata,"a",@progbits
	.align 2
	.type	IfxScuCcu_aDefaultPllConfigSteps, @object
	.size	IfxScuCcu_aDefaultPllConfigSteps, 36
IfxScuCcu_aDefaultPllConfigSteps:
	.byte	4
	.zero	3
	.word	953267991
	.word	0
	.byte	3
	.zero	3
	.word	953267991
	.word	0
	.byte	2
	.zero	3
	.word	953267991
	.word	0
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
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB200
	.uaword	.LFE200-.LFB200
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB201
	.uaword	.LFE201-.LFB201
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB202
	.uaword	.LFE202-.LFB202
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE60:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
	.file 11 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8a13
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.uahalf	0x584
	.uaword	0x1f3
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fBack"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fPll"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.uahalf	0x58b
	.uaword	0x237
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc1"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc0"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x274
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x2a0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x237
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x243
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x174
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0x274
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.string	"uint64"
	.byte	0x6
	.byte	0x25
	.uaword	0x18d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x535
	.uleb128 0x7
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x321
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x57d
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x17d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x550
	.uleb128 0x6
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x5ff
	.uleb128 0x7
	.string	"STM0DIS"
	.byte	0x7
	.byte	0x5a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"STM1DIS"
	.byte	0x7
	.byte	0x5b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.string	"STM2DIS"
	.byte	0x7
	.byte	0x5c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x7
	.byte	0x5e
	.uaword	0x598
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x61
	.uaword	0x70f
	.uleb128 0x7
	.string	"BAUD1DIV"
	.byte	0x7
	.byte	0x63
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"BAUD2DIV"
	.byte	0x7
	.byte	0x64
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x65
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"LPDIV"
	.byte	0x7
	.byte	0x66
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x67
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"FSI2DIV"
	.byte	0x7
	.byte	0x68
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x7
	.byte	0x69
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"FSIDIV"
	.byte	0x7
	.byte	0x6a
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"ADCCLKSEL"
	.byte	0x7
	.byte	0x6b
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"CLKSEL"
	.byte	0x7
	.byte	0x6c
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x6d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x6e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x61b
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x7ff
	.uleb128 0x7
	.string	"CANDIV"
	.byte	0x7
	.byte	0x74
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"ERAYDIV"
	.byte	0x7
	.byte	0x75
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x76
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x77
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"ETHDIV"
	.byte	0x7
	.byte	0x78
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"ASCLINFDIV"
	.byte	0x7
	.byte	0x79
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"ASCLINSDIV"
	.byte	0x7
	.byte	0x7a
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"INSEL"
	.byte	0x7
	.byte	0x7b
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x7c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x7d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x7
	.byte	0x7e
	.uaword	0x72b
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x81
	.uaword	0x878
	.uleb128 0x7
	.string	"BBBDIV"
	.byte	0x7
	.byte	0x83
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0x84
	.uaword	0x17d
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x85
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x86
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x7
	.byte	0x87
	.uaword	0x81b
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8a
	.uaword	0x962
	.uleb128 0x7
	.string	"PLLDIV"
	.byte	0x7
	.byte	0x8c
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"PLLSEL"
	.byte	0x7
	.byte	0x8d
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"PLLERAYDIV"
	.byte	0x7
	.byte	0x8e
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"PLLERAYSEL"
	.byte	0x7
	.byte	0x8f
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x90
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"SRISEL"
	.byte	0x7
	.byte	0x91
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0x92
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0x93
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x94
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x95
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x7
	.byte	0x96
	.uaword	0x894
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x99
	.uaword	0xa44
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x9b
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"SPBSEL"
	.byte	0x7
	.byte	0x9c
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x9d
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"GTMSEL"
	.byte	0x7
	.byte	0x9e
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x9f
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"STMSEL"
	.byte	0x7
	.byte	0xa0
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0xa1
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xa3
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xa4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x7
	.byte	0xa5
	.uaword	0x97e
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa8
	.uaword	0xabd
	.uleb128 0x7
	.string	"MAXDIV"
	.byte	0x7
	.byte	0xaa
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0xab
	.uaword	0x17d
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xac
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xad
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x7
	.byte	0xae
	.uaword	0xa60
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb1
	.uaword	0xb1a
	.uleb128 0x7
	.string	"CPU0DIV"
	.byte	0x7
	.byte	0xb3
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xb4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x7
	.byte	0xb5
	.uaword	0xad9
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON7_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb8
	.uaword	0xb77
	.uleb128 0x7
	.string	"CPU1DIV"
	.byte	0x7
	.byte	0xba
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xbb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON7_Bits"
	.byte	0x7
	.byte	0xbc
	.uaword	0xb36
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON8_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.uaword	0xbd4
	.uleb128 0x7
	.string	"CPU2DIV"
	.byte	0x7
	.byte	0xc1
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xc2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON8_Bits"
	.byte	0x7
	.byte	0xc3
	.uaword	0xb93
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON9_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc6
	.uaword	0xc6e
	.uleb128 0x7
	.string	"ADCDIV"
	.byte	0x7
	.byte	0xc8
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"ADCSEL"
	.byte	0x7
	.byte	0xc9
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x7
	.byte	0xca
	.uaword	0x17d
	.byte	0x4
	.byte	0x15
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xcb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xcc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xcd
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON9_Bits"
	.byte	0x7
	.byte	0xce
	.uaword	0xbf0
	.uleb128 0x6
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd1
	.uaword	0xd37
	.uleb128 0x7
	.string	"CHREV"
	.byte	0x7
	.byte	0xd3
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"CHTEC"
	.byte	0x7
	.byte	0xd4
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"CHID"
	.byte	0x7
	.byte	0xd5
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"EEA"
	.byte	0x7
	.byte	0xd6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"UCODE"
	.byte	0x7
	.byte	0xd7
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"FSIZE"
	.byte	0x7
	.byte	0xd8
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"SP"
	.byte	0x7
	.byte	0xd9
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"SEC"
	.byte	0x7
	.byte	0xda
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.byte	0xdb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x7
	.byte	0xdc
	.uaword	0xc8a
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdf
	.uaword	0xdcc
	.uleb128 0x7
	.string	"PWD"
	.byte	0x7
	.byte	0xe1
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.string	"START"
	.byte	0x7
	.byte	0xe2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.byte	0xe3
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"CAL"
	.byte	0x7
	.byte	0xe4
	.uaword	0x17d
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0xe5
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xe6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSCON_Bits"
	.byte	0x7
	.byte	0xe7
	.uaword	0xd52
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSLIM_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xea
	.uaword	0xe72
	.uleb128 0x7
	.string	"LOWER"
	.byte	0x7
	.byte	0xec
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xed
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"LLU"
	.byte	0x7
	.byte	0xee
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"UPPER"
	.byte	0x7
	.byte	0xef
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.byte	0xf0
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xf1
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"UOF"
	.byte	0x7
	.byte	0xf2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSLIM_Bits"
	.byte	0x7
	.byte	0xf3
	.uaword	0xde7
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf6
	.uaword	0xefb
	.uleb128 0x7
	.string	"RESULT"
	.byte	0x7
	.byte	0xf8
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xf9
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"RDY"
	.byte	0x7
	.byte	0xfa
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"BUSY"
	.byte	0x7
	.byte	0xfb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.byte	0xfc
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSSTAT_Bits"
	.byte	0x7
	.byte	0xfd
	.uaword	0xe8d
	.uleb128 0x9
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x100
	.uaword	0x1056
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x102
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EXIS0"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x104
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"FEN0"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"REN0"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"LDEN0"
	.byte	0x7
	.uahalf	0x107
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"EIEN0"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"INP0"
	.byte	0x7
	.uahalf	0x109
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"EXIS1"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"FEN1"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"REN1"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"LDEN1"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"EIEN1"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"INP1"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x112
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x7
	.uahalf	0x113
	.uaword	0xf17
	.uleb128 0x9
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x116
	.uaword	0x112d
	.uleb128 0xb
	.string	"INTF0"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"INTF1"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"INTF2"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"INTF3"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"INTF4"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"INTF5"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"INTF6"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"INTF7"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x120
	.uaword	0x17d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x1070
	.uleb128 0x9
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x124
	.uaword	0x121f
	.uleb128 0xb
	.string	"POL"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x7
	.uahalf	0x127
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ENON"
	.byte	0x7
	.uahalf	0x128
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"PSEL"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x17d
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EMSF"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"SEMSF"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"EMSFM"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"SEMSFM"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x130
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x7
	.uahalf	0x131
	.uaword	0x1147
	.uleb128 0x9
	.string	"_Ifx_SCU_ESRCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x134
	.uaword	0x128a
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x136
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"EDCON"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x138
	.uaword	0x17d
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESRCFG_Bits"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1239
	.uleb128 0x9
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x12f6
	.uleb128 0xb
	.string	"ARI"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ARC"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x140
	.uaword	0x17d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x12a6
	.uleb128 0x9
	.string	"_Ifx_SCU_EVR13CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x144
	.uaword	0x1390
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x146
	.uaword	0x17d
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"EVR13OFF"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"BPEVR13OFF"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x149
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR13CON_Bits"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x1313
	.uleb128 0x9
	.string	"_Ifx_SCU_EVR33CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x142b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x150
	.uaword	0x17d
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"EVR33OFF"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"BPEVR33OFF"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x153
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR33CON_Bits"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x13ae
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x14c6
	.uleb128 0xb
	.string	"ADC13V"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"ADC33V"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ADCSWDV"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"VAL"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1449
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRDVSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1564
	.uleb128 0xb
	.string	"DVS13TRIM"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x165
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"DVS33TRIM"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x167
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"VAL"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRDVSTAT_Bits"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x14e6
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x16ac
	.uleb128 0xb
	.string	"EVR13OVMOD"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EVR13UVMOD"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x171
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EVR33OVMOD"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x173
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"EVR33UVMOD"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x175
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SWDOVMOD"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x177
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"SWDUVMOD"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x179
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x1583
	.uleb128 0x9
	.string	"_Ifx_SCU_EVROSCCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x178b
	.uleb128 0xb
	.string	"OSCTRIM"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"OSCPTAT"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"OSCANASEL"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"HPBGTRIM"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"HPBGCLKEN"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"OSC3V3"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x187
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x188
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROSCCTRL_Bits"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x16cc
	.uleb128 0x9
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x183f
	.uleb128 0xb
	.string	"EVR13OVVAL"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EVR33OVVAL"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SWDOVVAL"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x191
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x192
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x17ab
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x197
	.uaword	0x194b
	.uleb128 0xb
	.string	"RST13TRIM"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"RST13OFF"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"BPRST13OFF"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"RST33OFF"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"BPRST33OFF"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"RSTSWDOFF"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"BPRSTSWDOFF"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x185d
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a6
	.uaword	0x19e1
	.uleb128 0xb
	.string	"SD5P"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SD5I"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SD5D"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF1_Bits"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x196a
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x1a7c
	.uleb128 0xb
	.string	"SD33P"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SD33I"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SD33D"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x1a02
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x1b1d
	.uleb128 0xb
	.string	"CT5REG0"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT5REG1"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CT5REG2"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF3_Bits"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x1a9d
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x1baa
	.uleb128 0xb
	.string	"CT5REG3"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT5REG4"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x17d
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF4_Bits"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1b3e
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF5_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x1c4e
	.uleb128 0xb
	.string	"CT33REG0"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT33REG1"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CT33REG2"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF5_Bits"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x1bcb
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCOEFF6_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x1cdd
	.uleb128 0xb
	.string	"CT33REG3"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CT33REG4"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x17d
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF6_Bits"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x1c6f
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x1d93
	.uleb128 0xb
	.string	"SDFREQSPRD"
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SDFREQ"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SDSTEP"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"SDSAMPLE"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x1cfe
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x1e41
	.uleb128 0xb
	.string	"DRVP"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SDMINMAXDC"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"DRVN"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SDLUT"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1db3
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1ee0
	.uleb128 0xb
	.string	"SDPWMPRE"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SDPID"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SDVOKLVL"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x1e61
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSDCTRL4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x200
	.uaword	0x1f67
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x202
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SYNCDIV"
	.byte	0x7
	.uahalf	0x203
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x204
	.uaword	0x17d
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x205
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL4_Bits"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x1f00
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x209
	.uaword	0x2082
	.uleb128 0xb
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OV13"
	.byte	0x7
	.uahalf	0x20c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"OV33"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"OVSWD"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"UV13"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"UV33"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"UVSWD"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EXTPASS13"
	.byte	0x7
	.uahalf	0x213
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"EXTPASS33"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"BGPROK"
	.byte	0x7
	.uahalf	0x215
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x216
	.uaword	0x17d
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x1f87
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRTRIM_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x211b
	.uleb128 0xb
	.string	"EVR13TRIM"
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SDVOUTSEL"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x17d
	.byte	0x4
	.byte	0xe
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRTRIM_Bits"
	.byte	0x7
	.uahalf	0x221
	.uaword	0x209f
	.uleb128 0x9
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x224
	.uaword	0x21cc
	.uleb128 0xb
	.string	"EVR13UVVAL"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EVR33UVVAL"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SWDUVVAL"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x229
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x2138
	.uleb128 0x9
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x229d
	.uleb128 0xb
	.string	"EN0"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x232
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x233
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x234
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EN1"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"NSEL"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x238
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"DIV1"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x7
	.uahalf	0x23a
	.uaword	0x21ea
	.uleb128 0x9
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x233b
	.uleb128 0xb
	.string	"STEP"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x240
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"DM"
	.byte	0x7
	.uahalf	0x241
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"RESULT"
	.byte	0x7
	.uahalf	0x242
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x243
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"DISCLK"
	.byte	0x7
	.uahalf	0x244
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x22b9
	.uleb128 0x9
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x248
	.uaword	0x2490
	.uleb128 0xb
	.string	"FS0"
	.byte	0x7
	.uahalf	0x24a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"FS1"
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"FS2"
	.byte	0x7
	.uahalf	0x24c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"FS3"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"FS4"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"FS5"
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"FS6"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"FS7"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x252
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FC0"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"FC1"
	.byte	0x7
	.uahalf	0x254
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"FC2"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"FC3"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"FC4"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"FC5"
	.byte	0x7
	.uahalf	0x258
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"FC6"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"FC7"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x2354
	.uleb128 0x9
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x2501
	.uleb128 0xb
	.string	"MODREV"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MODTYPE"
	.byte	0x7
	.uahalf	0x262
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x263
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x7
	.uahalf	0x264
	.uaword	0x24a9
	.uleb128 0x9
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x267
	.uaword	0x26cc
	.uleb128 0xb
	.string	"IPEN00"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"IPEN01"
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IPEN02"
	.byte	0x7
	.uahalf	0x26b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"IPEN03"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"IPEN04"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IPEN05"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"IPEN06"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"IPEN07"
	.byte	0x7
	.uahalf	0x270
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x271
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"GEEN0"
	.byte	0x7
	.uahalf	0x272
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"IGP0"
	.byte	0x7
	.uahalf	0x273
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"IPEN10"
	.byte	0x7
	.uahalf	0x274
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"IPEN11"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"IPEN12"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"IPEN13"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"IPEN14"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"IPEN15"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"IPEN16"
	.byte	0x7
	.uahalf	0x27a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"IPEN17"
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"GEEN1"
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"IGP1"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x2519
	.uleb128 0x9
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x282
	.uaword	0x272f
	.uleb128 0xb
	.string	"P0"
	.byte	0x7
	.uahalf	0x284
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"P1"
	.byte	0x7
	.uahalf	0x285
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x286
	.uaword	0x17d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x7
	.uahalf	0x287
	.uaword	0x26e6
	.uleb128 0x9
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x28a
	.uaword	0x27b4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PC0"
	.byte	0x7
	.uahalf	0x28d
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"PC1"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x290
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x7
	.uahalf	0x291
	.uaword	0x2747
	.uleb128 0x9
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x294
	.uaword	0x2841
	.uleb128 0xb
	.string	"LBISTREQ"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LBISTREQP"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PATTERNS"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x17d
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x299
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x7
	.uahalf	0x29a
	.uaword	0x27ce
	.uleb128 0x9
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x28e1
	.uleb128 0xb
	.string	"SEED"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x17d
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SPLITSH"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"BODY"
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"LBISTFREQU"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x2861
	.uleb128 0x9
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x2960
	.uleb128 0xb
	.string	"SIGNATURE"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x17d
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x2aa
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LBISTDONE"
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x2901
	.uleb128 0x9
	.string	"_Ifx_SCU_LCLCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x29df
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"LS"
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x17d
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LSEN"
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLCON_Bits"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x2980
	.uleb128 0x9
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x2a4f
	.uleb128 0xb
	.string	"LCLT0"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LCLT1"
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x7
	.uahalf	0x2bd
	.uaword	0x29fb
	.uleb128 0x9
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x2abd
	.uleb128 0xb
	.string	"DEPT"
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"MANUF"
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x17d
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0x2a6c
	.uleb128 0x9
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x2b56
	.uleb128 0xb
	.string	"PS0"
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PS1"
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x17d
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x17d
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x2ad8
	.uleb128 0x9
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x2cde
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PLLLV"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"OSCRES"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"GAINSEL"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"SHBY"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PLLHV"
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"X1D"
	.byte	0x7
	.uahalf	0x2dd
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"X1DEN"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"OSCVAL"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"APREN"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"CAP0EN"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CAP1EN"
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"CAP2EN"
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"CAP3EN"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x2b6f
	.uleb128 0x9
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x2d44
	.uleb128 0xb
	.string	"P0"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"P1"
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x17d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x2cfa
	.uleb128 0x9
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x2e42
	.uleb128 0xb
	.string	"CSEL0"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"CSEL1"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"CSEL2"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x17d
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"OVSTRT"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"OVSTP"
	.byte	0x7
	.uahalf	0x2fa
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"DCINVAL"
	.byte	0x7
	.uahalf	0x2fb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"OVCONF"
	.byte	0x7
	.uahalf	0x2fd
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"POVCONF"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x2d5d
	.uleb128 0x9
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x303
	.uaword	0x2ec6
	.uleb128 0xb
	.string	"OVEN0"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OVEN1"
	.byte	0x7
	.uahalf	0x306
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"OVEN2"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x308
	.uaword	0x17d
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x7
	.uahalf	0x309
	.uaword	0x2e5e
	.uleb128 0x9
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x2f37
	.uleb128 0xb
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x310
	.uaword	0x17d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x7
	.uahalf	0x311
	.uaword	0x2ee5
	.uleb128 0x9
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x314
	.uaword	0x2fbe
	.uleb128 0xb
	.string	"PD0"
	.byte	0x7
	.uahalf	0x316
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"PL0"
	.byte	0x7
	.uahalf	0x317
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PD1"
	.byte	0x7
	.uahalf	0x318
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PL1"
	.byte	0x7
	.uahalf	0x319
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x17d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x7
	.uahalf	0x31b
	.uaword	0x2f52
	.uleb128 0x9
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x308c
	.uleb128 0xb
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x321
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PDR2"
	.byte	0x7
	.uahalf	0x322
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"PDR3"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PDR4"
	.byte	0x7
	.uahalf	0x324
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"PDR5"
	.byte	0x7
	.uahalf	0x325
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"PDR6"
	.byte	0x7
	.uahalf	0x326
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PDR7"
	.byte	0x7
	.uahalf	0x327
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x328
	.uaword	0x17d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x2fd7
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x32c
	.uaword	0x31c5
	.uleb128 0xb
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x32f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"MODEN"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x331
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x332
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x333
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x334
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x335
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x337
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x338
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x339
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x33b
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON0_Bits"
	.byte	0x7
	.uahalf	0x33d
	.uaword	0x30a6
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x340
	.uaword	0x3268
	.uleb128 0xb
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x342
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x343
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x344
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x345
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x346
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x347
	.uaword	0x17d
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON1_Bits"
	.byte	0x7
	.uahalf	0x348
	.uaword	0x31e2
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x34b
	.uaword	0x32c8
	.uleb128 0xb
	.string	"MODCFG"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON2_Bits"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x3285
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x352
	.uaword	0x3406
	.uleb128 0xb
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x354
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x355
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x356
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x357
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x358
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x359
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x360
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x362
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x7
	.uahalf	0x363
	.uaword	0x32e5
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x366
	.uaword	0x34b1
	.uleb128 0xb
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x368
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x369
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x36b
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x17d
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x3427
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x371
	.uaword	0x3579
	.uleb128 0xb
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x373
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"PWDSTAT"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x375
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x376
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x379
	.uaword	0x17d
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x34d2
	.uleb128 0x9
	.string	"_Ifx_SCU_PLLSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x365c
	.uleb128 0xb
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x380
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x381
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x382
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x383
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x384
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x385
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"MODRUN"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x387
	.uaword	0x17d
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLSTAT_Bits"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x359a
	.uleb128 0x9
	.string	"_Ifx_SCU_PMCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x38b
	.uaword	0x36ee
	.uleb128 0xb
	.string	"REQSLP"
	.byte	0x7
	.uahalf	0x38d
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"SMUSLP"
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x38f
	.uaword	0x17d
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PMST"
	.byte	0x7
	.uahalf	0x390
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x391
	.uaword	0x17d
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMCSR_Bits"
	.byte	0x7
	.uahalf	0x392
	.uaword	0x3679
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWCR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x395
	.uaword	0x38f6
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x397
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x398
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x399
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"ESR0DFEN"
	.byte	0x7
	.uahalf	0x39b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"ESR0EDCON"
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"ESR1DFEN"
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"ESR1EDCON"
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"PINADFEN"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"PINAEDCON"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"PINBDFEN"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"PINBEDCON"
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"STBYRAMSEL"
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"TRISTEN"
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"TRISTREQ"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"PWRWKEN"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"DCDCSYNC"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"BLNKFIL"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR0_Bits"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x3709
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b2
	.uaword	0x39df
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CPUIDLSEL"
	.byte	0x7
	.uahalf	0x3b5
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"IRADIS"
	.byte	0x7
	.uahalf	0x3b7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x3b8
	.uaword	0x17d
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"CPUSEL"
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"STBYEVEN"
	.byte	0x7
	.uahalf	0x3ba
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"STBYEV"
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3bc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x7
	.uahalf	0x3bd
	.uaword	0x3913
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3c0
	.uaword	0x3b95
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ESR1WKP"
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"ESR1OVRUN"
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PINAWKP"
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"PINAOVRUN"
	.byte	0x7
	.uahalf	0x3c6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"PINBWKP"
	.byte	0x7
	.uahalf	0x3c7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PINBOVRUN"
	.byte	0x7
	.uahalf	0x3c8
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PWRWKP"
	.byte	0x7
	.uahalf	0x3c9
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x3ca
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"HWCFGEVR"
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"STBYRAM"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"TRIST"
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x3ce
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x3cf
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x3d0
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x3d1
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"PWRWKEN"
	.byte	0x7
	.uahalf	0x3d2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"BLNKFIL"
	.byte	0x7
	.uahalf	0x3d3
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3d4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x3d5
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x7
	.uahalf	0x3d6
	.uaword	0x39fc
	.uleb128 0x9
	.string	"_Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3d9
	.uaword	0x3c9d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3db
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ESR1WKPCLR"
	.byte	0x7
	.uahalf	0x3dc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"ESR1OVRUNCLR"
	.byte	0x7
	.uahalf	0x3dd
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"PINAWKPCLR"
	.byte	0x7
	.uahalf	0x3de
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"PINAOVRUNCLR"
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"PINBWKPCLR"
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PINBOVRUNCLR"
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PWRWKPCLR"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x17d
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x7
	.uahalf	0x3e4
	.uaword	0x3bb3
	.uleb128 0x9
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3e7
	.uaword	0x3d66
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3e9
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"CLRC"
	.byte	0x7
	.uahalf	0x3ea
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x17d
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"CSS0"
	.byte	0x7
	.uahalf	0x3ec
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"CSS1"
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"CSS2"
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x3ef
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"USRINFO"
	.byte	0x7
	.uahalf	0x3f0
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x7
	.uahalf	0x3f1
	.uaword	0x3cbe
	.uleb128 0x9
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3f4
	.uaword	0x3e36
	.uleb128 0xb
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x3f7
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"SMU"
	.byte	0x7
	.uahalf	0x3f9
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SW"
	.byte	0x7
	.uahalf	0x3fa
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"STM0"
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3fc
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x3fe
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x3d83
	.uleb128 0x9
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x402
	.uaword	0x3fce
	.uleb128 0xb
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x404
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x405
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x406
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMU"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"SW"
	.byte	0x7
	.uahalf	0x408
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"STM0"
	.byte	0x7
	.uahalf	0x409
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"STM1"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"STM2"
	.byte	0x7
	.uahalf	0x40b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x40c
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"PORST"
	.byte	0x7
	.uahalf	0x40d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x40e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"CB0"
	.byte	0x7
	.uahalf	0x40f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"CB1"
	.byte	0x7
	.uahalf	0x410
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"CB3"
	.byte	0x7
	.uahalf	0x411
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x412
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x413
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x414
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"SWD"
	.byte	0x7
	.uahalf	0x415
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x416
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"STBYR"
	.byte	0x7
	.uahalf	0x417
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x418
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x7
	.uahalf	0x419
	.uaword	0x3e52
	.uleb128 0x9
	.string	"_Ifx_SCU_SAFECON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x41c
	.uaword	0x402b
	.uleb128 0xb
	.string	"HBT"
	.byte	0x7
	.uahalf	0x41e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x41f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SAFECON_Bits"
	.byte	0x7
	.uahalf	0x420
	.uaword	0x3feb
	.uleb128 0x9
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x423
	.uaword	0x412d
	.uleb128 0xb
	.string	"HWCFG"
	.byte	0x7
	.uahalf	0x425
	.uaword	0x17d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"FTM"
	.byte	0x7
	.uahalf	0x426
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x7
	.uahalf	0x427
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FCBAE"
	.byte	0x7
	.uahalf	0x428
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"LUDIS"
	.byte	0x7
	.uahalf	0x429
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x42a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"TRSTL"
	.byte	0x7
	.uahalf	0x42b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"SPDEN"
	.byte	0x7
	.uahalf	0x42c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x42d
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"RAMINT"
	.byte	0x7
	.uahalf	0x42e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"reserved_25"
	.byte	0x7
	.uahalf	0x42f
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x7
	.uahalf	0x430
	.uaword	0x4048
	.uleb128 0x9
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x433
	.uaword	0x419f
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x435
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"SWRSTREQ"
	.byte	0x7
	.uahalf	0x436
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x437
	.uaword	0x17d
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x7
	.uahalf	0x438
	.uaword	0x4149
	.uleb128 0x9
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x43b
	.uaword	0x4261
	.uleb128 0xb
	.string	"CCTRIG0"
	.byte	0x7
	.uahalf	0x43d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x43e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"RAMINTM"
	.byte	0x7
	.uahalf	0x43f
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"SETLUDIS"
	.byte	0x7
	.uahalf	0x440
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"reserved_5"
	.byte	0x7
	.uahalf	0x441
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"DATM"
	.byte	0x7
	.uahalf	0x442
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x443
	.uaword	0x17d
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x7
	.uahalf	0x444
	.uaword	0x41bd
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x447
	.uaword	0x42ee
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x449
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x44a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x44b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x44c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x44d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x7
	.uahalf	0x44e
	.uaword	0x427d
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPDIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x451
	.uaword	0x437c
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x453
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x454
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x455
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x456
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x457
	.uaword	0x17d
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPDIS_Bits"
	.byte	0x7
	.uahalf	0x458
	.uaword	0x430b
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x45b
	.uaword	0x440a
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x45e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x45f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x460
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x461
	.uaword	0x17d
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x7
	.uahalf	0x462
	.uaword	0x4399
	.uleb128 0x9
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x465
	.uaword	0x4499
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x467
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x7
	.uahalf	0x468
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x469
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x46a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x46b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x7
	.uahalf	0x46c
	.uaword	0x4427
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x46f
	.uaword	0x451e
	.uleb128 0xb
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x471
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x472
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PW"
	.byte	0x7
	.uahalf	0x473
	.uaword	0x17d
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"REL"
	.byte	0x7
	.uahalf	0x474
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x7
	.uahalf	0x475
	.uaword	0x44b7
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x478
	.uaword	0x4602
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x47a
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IR0"
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DR"
	.byte	0x7
	.uahalf	0x47c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x47d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IR1"
	.byte	0x7
	.uahalf	0x47e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"UR"
	.byte	0x7
	.uahalf	0x47f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAR"
	.byte	0x7
	.uahalf	0x480
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCR"
	.byte	0x7
	.uahalf	0x481
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x482
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x483
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x7
	.uahalf	0x484
	.uaword	0x453f
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x487
	.uaword	0x46f0
	.uleb128 0xb
	.string	"AE"
	.byte	0x7
	.uahalf	0x489
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OE"
	.byte	0x7
	.uahalf	0x48a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IS0"
	.byte	0x7
	.uahalf	0x48b
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DS"
	.byte	0x7
	.uahalf	0x48c
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"TO"
	.byte	0x7
	.uahalf	0x48d
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IS1"
	.byte	0x7
	.uahalf	0x48e
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"US"
	.byte	0x7
	.uahalf	0x48f
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAS"
	.byte	0x7
	.uahalf	0x490
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCS"
	.byte	0x7
	.uahalf	0x491
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCT"
	.byte	0x7
	.uahalf	0x492
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"TIM"
	.byte	0x7
	.uahalf	0x493
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x7
	.uahalf	0x494
	.uaword	0x4623
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x497
	.uaword	0x4774
	.uleb128 0xb
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x499
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.uahalf	0x49a
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"PW"
	.byte	0x7
	.uahalf	0x49b
	.uaword	0x17d
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"REL"
	.byte	0x7
	.uahalf	0x49c
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x7
	.uahalf	0x49d
	.uaword	0x470f
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x4a0
	.uaword	0x4867
	.uleb128 0xb
	.string	"CLRIRF"
	.byte	0x7
	.uahalf	0x4a2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x4a3
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IR0"
	.byte	0x7
	.uahalf	0x4a4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DR"
	.byte	0x7
	.uahalf	0x4a5
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x4a6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IR1"
	.byte	0x7
	.uahalf	0x4a7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"UR"
	.byte	0x7
	.uahalf	0x4a8
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAR"
	.byte	0x7
	.uahalf	0x4a9
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCR"
	.byte	0x7
	.uahalf	0x4aa
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x4ab
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x4ac
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x7
	.uahalf	0x4ad
	.uaword	0x4793
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x4b0
	.uaword	0x4951
	.uleb128 0xb
	.string	"AE"
	.byte	0x7
	.uahalf	0x4b2
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"OE"
	.byte	0x7
	.uahalf	0x4b3
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"IS0"
	.byte	0x7
	.uahalf	0x4b4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"DS"
	.byte	0x7
	.uahalf	0x4b5
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"TO"
	.byte	0x7
	.uahalf	0x4b6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"IS1"
	.byte	0x7
	.uahalf	0x4b7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"US"
	.byte	0x7
	.uahalf	0x4b8
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"PAS"
	.byte	0x7
	.uahalf	0x4b9
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"TCS"
	.byte	0x7
	.uahalf	0x4ba
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"TCT"
	.byte	0x7
	.uahalf	0x4bb
	.uaword	0x17d
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"TIM"
	.byte	0x7
	.uahalf	0x4bc
	.uaword	0x17d
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x7
	.uahalf	0x4bd
	.uaword	0x4886
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4c5
	.uaword	0x4996
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4c8
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4ca
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4cc
	.uaword	0x535
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ACCEN0"
	.byte	0x7
	.uahalf	0x4cd
	.uaword	0x496e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4d0
	.uaword	0x49d5
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4d3
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4d5
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4d7
	.uaword	0x57d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ACCEN1"
	.byte	0x7
	.uahalf	0x4d8
	.uaword	0x49ad
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4db
	.uaword	0x4a14
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4de
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4e0
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4e2
	.uaword	0x5ff
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x7
	.uahalf	0x4e3
	.uaword	0x49ec
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4e6
	.uaword	0x4a54
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4e9
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4eb
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4ed
	.uaword	0x70f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x7
	.uahalf	0x4ee
	.uaword	0x4a2c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4f1
	.uaword	0x4a94
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4f4
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x4f6
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x4f8
	.uaword	0x7ff
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x7
	.uahalf	0x4f9
	.uaword	0x4a6c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x4fc
	.uaword	0x4ad4
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x4ff
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x501
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x503
	.uaword	0x878
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x7
	.uahalf	0x504
	.uaword	0x4aac
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x507
	.uaword	0x4b14
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x50a
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x50c
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x50e
	.uaword	0x962
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x7
	.uahalf	0x50f
	.uaword	0x4aec
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x512
	.uaword	0x4b54
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x515
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x517
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x519
	.uaword	0xa44
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x7
	.uahalf	0x51a
	.uaword	0x4b2c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x51d
	.uaword	0x4b94
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x520
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x522
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x524
	.uaword	0xabd
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x7
	.uahalf	0x525
	.uaword	0x4b6c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x528
	.uaword	0x4bd4
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x52b
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x52d
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x52f
	.uaword	0xb1a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x7
	.uahalf	0x530
	.uaword	0x4bac
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x533
	.uaword	0x4c14
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x536
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x538
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x53a
	.uaword	0xb77
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON7"
	.byte	0x7
	.uahalf	0x53b
	.uaword	0x4bec
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x53e
	.uaword	0x4c54
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x541
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x543
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x545
	.uaword	0xbd4
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON8"
	.byte	0x7
	.uahalf	0x546
	.uaword	0x4c2c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x549
	.uaword	0x4c94
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x54c
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x54e
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x550
	.uaword	0xc6e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CCUCON9"
	.byte	0x7
	.uahalf	0x551
	.uaword	0x4c6c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x554
	.uaword	0x4cd4
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x557
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x559
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x55b
	.uaword	0xd37
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_CHIPID"
	.byte	0x7
	.uahalf	0x55c
	.uaword	0x4cac
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x55f
	.uaword	0x4d13
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x562
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x564
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x566
	.uaword	0xdcc
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_DTSCON"
	.byte	0x7
	.uahalf	0x567
	.uaword	0x4ceb
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x56a
	.uaword	0x4d52
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x56d
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x56f
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x571
	.uaword	0xe72
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_DTSLIM"
	.byte	0x7
	.uahalf	0x572
	.uaword	0x4d2a
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x575
	.uaword	0x4d91
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x578
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x57a
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x57c
	.uaword	0xefb
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_DTSSTAT"
	.byte	0x7
	.uahalf	0x57d
	.uaword	0x4d69
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x580
	.uaword	0x4dd1
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x583
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x585
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x587
	.uaword	0x1056
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EICR"
	.byte	0x7
	.uahalf	0x588
	.uaword	0x4da9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x58b
	.uaword	0x4e0e
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x58e
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x590
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x592
	.uaword	0x112d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EIFR"
	.byte	0x7
	.uahalf	0x593
	.uaword	0x4de6
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x596
	.uaword	0x4e4b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x599
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x59b
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x59d
	.uaword	0x121f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EMSR"
	.byte	0x7
	.uahalf	0x59e
	.uaword	0x4e23
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5a1
	.uaword	0x4e88
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5a4
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5a6
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5a8
	.uaword	0x128a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESRCFG"
	.byte	0x7
	.uahalf	0x5a9
	.uaword	0x4e60
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ac
	.uaword	0x4ec7
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5af
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5b1
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5b3
	.uaword	0x12f6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x7
	.uahalf	0x5b4
	.uaword	0x4e9f
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5b7
	.uaword	0x4f07
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5ba
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5bc
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5be
	.uaword	0x1390
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR13CON"
	.byte	0x7
	.uahalf	0x5bf
	.uaword	0x4edf
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5c2
	.uaword	0x4f48
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5c5
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5c7
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5c9
	.uaword	0x142b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVR33CON"
	.byte	0x7
	.uahalf	0x5ca
	.uaword	0x4f20
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5cd
	.uaword	0x4f89
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5d0
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5d2
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5d4
	.uaword	0x14c6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRADCSTAT"
	.byte	0x7
	.uahalf	0x5d5
	.uaword	0x4f61
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5d8
	.uaword	0x4fcc
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5db
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5dd
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5df
	.uaword	0x1564
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRDVSTAT"
	.byte	0x7
	.uahalf	0x5e0
	.uaword	0x4fa4
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5e3
	.uaword	0x500e
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5e6
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5e8
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5ea
	.uaword	0x16ac
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0x7
	.uahalf	0x5eb
	.uaword	0x4fe6
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ee
	.uaword	0x5051
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5f1
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5f3
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x5f5
	.uaword	0x178b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROSCCTRL"
	.byte	0x7
	.uahalf	0x5f6
	.uaword	0x5029
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x5f9
	.uaword	0x5094
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x5fc
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x5fe
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x600
	.uaword	0x183f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVROVMON"
	.byte	0x7
	.uahalf	0x601
	.uaword	0x506c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x604
	.uaword	0x50d5
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x607
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x609
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x60b
	.uaword	0x194b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRRSTCON"
	.byte	0x7
	.uahalf	0x60c
	.uaword	0x50ad
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x60f
	.uaword	0x5117
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x612
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x614
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x616
	.uaword	0x19e1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF1"
	.byte	0x7
	.uahalf	0x617
	.uaword	0x50ef
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x61a
	.uaword	0x515b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x61d
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x61f
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x621
	.uaword	0x1a7c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x622
	.uaword	0x5133
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x625
	.uaword	0x519f
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x628
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x62a
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x62c
	.uaword	0x1b1d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF3"
	.byte	0x7
	.uahalf	0x62d
	.uaword	0x5177
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x630
	.uaword	0x51e3
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x633
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x635
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x637
	.uaword	0x1baa
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF4"
	.byte	0x7
	.uahalf	0x638
	.uaword	0x51bb
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x63b
	.uaword	0x5227
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x63e
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x640
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x642
	.uaword	0x1c4e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF5"
	.byte	0x7
	.uahalf	0x643
	.uaword	0x51ff
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x646
	.uaword	0x526b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x649
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x64b
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x64d
	.uaword	0x1cdd
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCOEFF6"
	.byte	0x7
	.uahalf	0x64e
	.uaword	0x5243
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x651
	.uaword	0x52af
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x654
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x656
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x658
	.uaword	0x1d93
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x659
	.uaword	0x5287
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x65c
	.uaword	0x52f2
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x65f
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x661
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x663
	.uaword	0x1e41
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x664
	.uaword	0x52ca
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x667
	.uaword	0x5335
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x66a
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x66c
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x66e
	.uaword	0x1ee0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x66f
	.uaword	0x530d
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x672
	.uaword	0x5378
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x675
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x677
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x679
	.uaword	0x1f67
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSDCTRL4"
	.byte	0x7
	.uahalf	0x67a
	.uaword	0x5350
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x67d
	.uaword	0x53bb
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x680
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x682
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x684
	.uaword	0x2082
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0x7
	.uahalf	0x685
	.uaword	0x5393
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x688
	.uaword	0x53fb
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x68b
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x68d
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x68f
	.uaword	0x211b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRTRIM"
	.byte	0x7
	.uahalf	0x690
	.uaword	0x53d3
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x693
	.uaword	0x543b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x696
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x698
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x69a
	.uaword	0x21cc
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0x7
	.uahalf	0x69b
	.uaword	0x5413
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x69e
	.uaword	0x547c
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6a1
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6a3
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6a5
	.uaword	0x229d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_EXTCON"
	.byte	0x7
	.uahalf	0x6a6
	.uaword	0x5454
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6a9
	.uaword	0x54bb
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6ac
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6ae
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6b0
	.uaword	0x233b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FDR"
	.byte	0x7
	.uahalf	0x6b1
	.uaword	0x5493
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6b4
	.uaword	0x54f7
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6b7
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6b9
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6bb
	.uaword	0x2490
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_FMR"
	.byte	0x7
	.uahalf	0x6bc
	.uaword	0x54cf
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6bf
	.uaword	0x5533
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6c2
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6c4
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6c6
	.uaword	0x2501
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_ID"
	.byte	0x7
	.uahalf	0x6c7
	.uaword	0x550b
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6ca
	.uaword	0x556e
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6cd
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6cf
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6d1
	.uaword	0x26cc
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IGCR"
	.byte	0x7
	.uahalf	0x6d2
	.uaword	0x5546
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6d5
	.uaword	0x55ab
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6d8
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6da
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6dc
	.uaword	0x272f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IN"
	.byte	0x7
	.uahalf	0x6dd
	.uaword	0x5583
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6e0
	.uaword	0x55e6
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6e3
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6e5
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6e7
	.uaword	0x27b4
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_IOCR"
	.byte	0x7
	.uahalf	0x6e8
	.uaword	0x55be
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6eb
	.uaword	0x5623
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6ee
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6f0
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6f2
	.uaword	0x2841
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x7
	.uahalf	0x6f3
	.uaword	0x55fb
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x6f6
	.uaword	0x5666
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x6f9
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x6fb
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x6fd
	.uaword	0x28e1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x7
	.uahalf	0x6fe
	.uaword	0x563e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x701
	.uaword	0x56a9
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x704
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x706
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x708
	.uaword	0x2960
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x7
	.uahalf	0x709
	.uaword	0x5681
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x70c
	.uaword	0x56ec
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x70f
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x711
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x713
	.uaword	0x29df
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLCON"
	.byte	0x7
	.uahalf	0x714
	.uaword	0x56c4
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x717
	.uaword	0x572b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x71a
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x71c
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x71e
	.uaword	0x2a4f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x7
	.uahalf	0x71f
	.uaword	0x5703
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x722
	.uaword	0x576b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x725
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x727
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x729
	.uaword	0x2abd
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_MANID"
	.byte	0x7
	.uahalf	0x72a
	.uaword	0x5743
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x72d
	.uaword	0x57a9
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x730
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x732
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x734
	.uaword	0x2b56
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OMR"
	.byte	0x7
	.uahalf	0x735
	.uaword	0x5781
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x738
	.uaword	0x57e5
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x73b
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x73d
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x73f
	.uaword	0x2cde
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OSCCON"
	.byte	0x7
	.uahalf	0x740
	.uaword	0x57bd
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x743
	.uaword	0x5824
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x746
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x748
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x74a
	.uaword	0x2d44
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OUT"
	.byte	0x7
	.uahalf	0x74b
	.uaword	0x57fc
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x74e
	.uaword	0x5860
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x751
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x753
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x755
	.uaword	0x2e42
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCCON"
	.byte	0x7
	.uahalf	0x756
	.uaword	0x5838
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x759
	.uaword	0x589f
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x75c
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x75e
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x760
	.uaword	0x2ec6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x7
	.uahalf	0x761
	.uaword	0x5877
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x764
	.uaword	0x58e1
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x767
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x769
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x76b
	.uaword	0x2f37
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDISC"
	.byte	0x7
	.uahalf	0x76c
	.uaword	0x58b9
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x76f
	.uaword	0x591f
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x772
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x774
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x776
	.uaword	0x2fbe
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDR"
	.byte	0x7
	.uahalf	0x777
	.uaword	0x58f7
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x77a
	.uaword	0x595b
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x77d
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x77f
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x781
	.uaword	0x308c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PDRR"
	.byte	0x7
	.uahalf	0x782
	.uaword	0x5933
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x785
	.uaword	0x5998
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x788
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x78a
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x78c
	.uaword	0x31c5
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON0"
	.byte	0x7
	.uahalf	0x78d
	.uaword	0x5970
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x790
	.uaword	0x59d8
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x793
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x795
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x797
	.uaword	0x3268
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON1"
	.byte	0x7
	.uahalf	0x798
	.uaword	0x59b0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x79b
	.uaword	0x5a18
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x79e
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7a0
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7a2
	.uaword	0x32c8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLCON2"
	.byte	0x7
	.uahalf	0x7a3
	.uaword	0x59f0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7a6
	.uaword	0x5a58
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7a9
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7ab
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7ad
	.uaword	0x3406
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON0"
	.byte	0x7
	.uahalf	0x7ae
	.uaword	0x5a30
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7b1
	.uaword	0x5a9c
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7b4
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7b6
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7b8
	.uaword	0x34b1
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYCON1"
	.byte	0x7
	.uahalf	0x7b9
	.uaword	0x5a74
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7bc
	.uaword	0x5ae0
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7bf
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7c1
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7c3
	.uaword	0x3579
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x7c4
	.uaword	0x5ab8
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7c7
	.uaword	0x5b24
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7ca
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7cc
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7ce
	.uaword	0x365c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PLLSTAT"
	.byte	0x7
	.uahalf	0x7cf
	.uaword	0x5afc
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7d2
	.uaword	0x5b64
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7d5
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7d7
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7d9
	.uaword	0x36ee
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMCSR"
	.byte	0x7
	.uahalf	0x7da
	.uaword	0x5b3c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7dd
	.uaword	0x5ba2
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7e0
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7e2
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7e4
	.uaword	0x38f6
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR0"
	.byte	0x7
	.uahalf	0x7e5
	.uaword	0x5b7a
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7e8
	.uaword	0x5be2
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7eb
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7ed
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7ef
	.uaword	0x39df
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x7
	.uahalf	0x7f0
	.uaword	0x5bba
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7f3
	.uaword	0x5c22
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x7f6
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x7f8
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x7fa
	.uaword	0x3b95
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTAT"
	.byte	0x7
	.uahalf	0x7fb
	.uaword	0x5bfa
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x7fe
	.uaword	0x5c63
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x801
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x803
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x805
	.uaword	0x3c9d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x806
	.uaword	0x5c3b
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x809
	.uaword	0x5ca7
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x80c
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x80e
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x810
	.uaword	0x3e36
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON"
	.byte	0x7
	.uahalf	0x811
	.uaword	0x5c7f
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x814
	.uaword	0x5ce6
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x817
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x819
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x81b
	.uaword	0x3d66
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x7
	.uahalf	0x81c
	.uaword	0x5cbe
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x81f
	.uaword	0x5d26
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x822
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x824
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x826
	.uaword	0x3fce
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x7
	.uahalf	0x827
	.uaword	0x5cfe
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x82a
	.uaword	0x5d66
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x82d
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x82f
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x831
	.uaword	0x402b
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SAFECON"
	.byte	0x7
	.uahalf	0x832
	.uaword	0x5d3e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x835
	.uaword	0x5da6
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x838
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x83a
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x83c
	.uaword	0x412d
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_STSTAT"
	.byte	0x7
	.uahalf	0x83d
	.uaword	0x5d7e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x840
	.uaword	0x5de5
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x843
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x845
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x847
	.uaword	0x419f
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x7
	.uahalf	0x848
	.uaword	0x5dbd
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x84b
	.uaword	0x5e26
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x84e
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x850
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x852
	.uaword	0x4261
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_SYSCON"
	.byte	0x7
	.uahalf	0x853
	.uaword	0x5dfe
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x856
	.uaword	0x5e65
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x859
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x85b
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x85d
	.uaword	0x42ee
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x7
	.uahalf	0x85e
	.uaword	0x5e3d
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x861
	.uaword	0x5ea5
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x864
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x866
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x868
	.uaword	0x437c
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPDIS"
	.byte	0x7
	.uahalf	0x869
	.uaword	0x5e7d
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x86c
	.uaword	0x5ee5
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x86f
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x871
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x873
	.uaword	0x440a
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x7
	.uahalf	0x874
	.uaword	0x5ebd
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x877
	.uaword	0x5f25
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x87a
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x87c
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x87e
	.uaword	0x4499
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x7
	.uahalf	0x87f
	.uaword	0x5efd
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x882
	.uaword	0x5f66
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x885
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x887
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x889
	.uaword	0x451e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x7
	.uahalf	0x88a
	.uaword	0x5f3e
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x88d
	.uaword	0x5faa
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x890
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x892
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x894
	.uaword	0x4602
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x7
	.uahalf	0x895
	.uaword	0x5f82
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x898
	.uaword	0x5fee
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x89b
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x89d
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x89f
	.uaword	0x46f0
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x7
	.uahalf	0x8a0
	.uaword	0x5fc6
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x8a3
	.uaword	0x6030
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x8a6
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x8a8
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x8aa
	.uaword	0x4774
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x7
	.uahalf	0x8ab
	.uaword	0x6008
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x8ae
	.uaword	0x6072
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x8b1
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x8b3
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x8b5
	.uaword	0x4867
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x7
	.uahalf	0x8b6
	.uaword	0x604a
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x8b9
	.uaword	0x60b4
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x8bc
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x8be
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x8c0
	.uaword	0x4951
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x7
	.uahalf	0x8c1
	.uaword	0x608c
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x7
	.uahalf	0x8cc
	.uaword	0x610e
	.uleb128 0xf
	.string	"CON0"
	.byte	0x7
	.uahalf	0x8ce
	.uaword	0x5f66
	.byte	0
	.uleb128 0xf
	.string	"CON1"
	.byte	0x7
	.uahalf	0x8cf
	.uaword	0x5faa
	.byte	0x4
	.uleb128 0xf
	.string	"SR"
	.byte	0x7
	.uahalf	0x8d0
	.uaword	0x5fee
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTCPU"
	.byte	0x7
	.uahalf	0x8d1
	.uaword	0x6125
	.uleb128 0x10
	.uaword	0x60cc
	.uleb128 0x9
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x7
	.uahalf	0x8d4
	.uaword	0x616a
	.uleb128 0xf
	.string	"CON0"
	.byte	0x7
	.uahalf	0x8d6
	.uaword	0x6030
	.byte	0
	.uleb128 0xf
	.string	"CON1"
	.byte	0x7
	.uahalf	0x8d7
	.uaword	0x6072
	.byte	0x4
	.uleb128 0xf
	.string	"SR"
	.byte	0x7
	.uahalf	0x8d8
	.uaword	0x60b4
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU_WDTS"
	.byte	0x7
	.uahalf	0x8d9
	.uaword	0x617f
	.uleb128 0x10
	.uaword	0x612a
	.uleb128 0x11
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x7
	.uahalf	0x8e6
	.uaword	0x6921
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x8e8
	.uaword	0x6921
	.byte	0
	.uleb128 0xf
	.string	"ID"
	.byte	0x7
	.uahalf	0x8e9
	.uaword	0x5533
	.byte	0x8
	.uleb128 0xf
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x8ea
	.uaword	0x693d
	.byte	0xc
	.uleb128 0xf
	.string	"OSCCON"
	.byte	0x7
	.uahalf	0x8eb
	.uaword	0x57e5
	.byte	0x10
	.uleb128 0xf
	.string	"PLLSTAT"
	.byte	0x7
	.uahalf	0x8ec
	.uaword	0x5b24
	.byte	0x14
	.uleb128 0xf
	.string	"PLLCON0"
	.byte	0x7
	.uahalf	0x8ed
	.uaword	0x5998
	.byte	0x18
	.uleb128 0xf
	.string	"PLLCON1"
	.byte	0x7
	.uahalf	0x8ee
	.uaword	0x59d8
	.byte	0x1c
	.uleb128 0xf
	.string	"PLLCON2"
	.byte	0x7
	.uahalf	0x8ef
	.uaword	0x5a18
	.byte	0x20
	.uleb128 0xf
	.string	"PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x8f0
	.uaword	0x5ae0
	.byte	0x24
	.uleb128 0xf
	.string	"PLLERAYCON0"
	.byte	0x7
	.uahalf	0x8f1
	.uaword	0x5a58
	.byte	0x28
	.uleb128 0xf
	.string	"PLLERAYCON1"
	.byte	0x7
	.uahalf	0x8f2
	.uaword	0x5a9c
	.byte	0x2c
	.uleb128 0xf
	.string	"CCUCON0"
	.byte	0x7
	.uahalf	0x8f3
	.uaword	0x4a54
	.byte	0x30
	.uleb128 0xf
	.string	"CCUCON1"
	.byte	0x7
	.uahalf	0x8f4
	.uaword	0x4a94
	.byte	0x34
	.uleb128 0xf
	.string	"FDR"
	.byte	0x7
	.uahalf	0x8f5
	.uaword	0x54bb
	.byte	0x38
	.uleb128 0xf
	.string	"EXTCON"
	.byte	0x7
	.uahalf	0x8f6
	.uaword	0x547c
	.byte	0x3c
	.uleb128 0xf
	.string	"CCUCON2"
	.byte	0x7
	.uahalf	0x8f7
	.uaword	0x4ad4
	.byte	0x40
	.uleb128 0xf
	.string	"CCUCON3"
	.byte	0x7
	.uahalf	0x8f8
	.uaword	0x4b14
	.byte	0x44
	.uleb128 0xf
	.string	"CCUCON4"
	.byte	0x7
	.uahalf	0x8f9
	.uaword	0x4b54
	.byte	0x48
	.uleb128 0xf
	.string	"CCUCON5"
	.byte	0x7
	.uahalf	0x8fa
	.uaword	0x4b94
	.byte	0x4c
	.uleb128 0xf
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x8fb
	.uaword	0x5d26
	.byte	0x50
	.uleb128 0xf
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x8fc
	.uaword	0x693d
	.byte	0x54
	.uleb128 0xf
	.string	"RSTCON"
	.byte	0x7
	.uahalf	0x8fd
	.uaword	0x5ca7
	.byte	0x58
	.uleb128 0xf
	.string	"ARSTDIS"
	.byte	0x7
	.uahalf	0x8fe
	.uaword	0x4a14
	.byte	0x5c
	.uleb128 0xf
	.string	"SWRSTCON"
	.byte	0x7
	.uahalf	0x8ff
	.uaword	0x5de5
	.byte	0x60
	.uleb128 0xf
	.string	"RSTCON2"
	.byte	0x7
	.uahalf	0x900
	.uaword	0x5ce6
	.byte	0x64
	.uleb128 0xf
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x901
	.uaword	0x693d
	.byte	0x68
	.uleb128 0xf
	.string	"EVRRSTCON"
	.byte	0x7
	.uahalf	0x902
	.uaword	0x50d5
	.byte	0x6c
	.uleb128 0xf
	.string	"ESRCFG"
	.byte	0x7
	.uahalf	0x903
	.uaword	0x694d
	.byte	0x70
	.uleb128 0xf
	.string	"ESROCFG"
	.byte	0x7
	.uahalf	0x904
	.uaword	0x4ec7
	.byte	0x78
	.uleb128 0xf
	.string	"SYSCON"
	.byte	0x7
	.uahalf	0x905
	.uaword	0x5e26
	.byte	0x7c
	.uleb128 0xf
	.string	"CCUCON6"
	.byte	0x7
	.uahalf	0x906
	.uaword	0x4bd4
	.byte	0x80
	.uleb128 0xf
	.string	"CCUCON7"
	.byte	0x7
	.uahalf	0x907
	.uaword	0x4c14
	.byte	0x84
	.uleb128 0xf
	.string	"CCUCON8"
	.byte	0x7
	.uahalf	0x908
	.uaword	0x4c54
	.byte	0x88
	.uleb128 0xf
	.string	"CCUCON9"
	.byte	0x7
	.uahalf	0x909
	.uaword	0x4c94
	.byte	0x8c
	.uleb128 0xf
	.string	"reserved_90"
	.byte	0x7
	.uahalf	0x90a
	.uaword	0x695d
	.byte	0x90
	.uleb128 0xf
	.string	"PDR"
	.byte	0x7
	.uahalf	0x90b
	.uaword	0x591f
	.byte	0x9c
	.uleb128 0xf
	.string	"IOCR"
	.byte	0x7
	.uahalf	0x90c
	.uaword	0x55e6
	.byte	0xa0
	.uleb128 0xf
	.string	"OUT"
	.byte	0x7
	.uahalf	0x90d
	.uaword	0x5824
	.byte	0xa4
	.uleb128 0xf
	.string	"OMR"
	.byte	0x7
	.uahalf	0x90e
	.uaword	0x57a9
	.byte	0xa8
	.uleb128 0xf
	.string	"IN"
	.byte	0x7
	.uahalf	0x90f
	.uaword	0x55ab
	.byte	0xac
	.uleb128 0xf
	.string	"EVRSTAT"
	.byte	0x7
	.uahalf	0x910
	.uaword	0x53bb
	.byte	0xb0
	.uleb128 0xf
	.string	"EVRDVSTAT"
	.byte	0x7
	.uahalf	0x911
	.uaword	0x4fcc
	.byte	0xb4
	.uleb128 0xf
	.string	"EVR13CON"
	.byte	0x7
	.uahalf	0x912
	.uaword	0x4f07
	.byte	0xb8
	.uleb128 0xf
	.string	"EVR33CON"
	.byte	0x7
	.uahalf	0x913
	.uaword	0x4f48
	.byte	0xbc
	.uleb128 0xf
	.string	"STSTAT"
	.byte	0x7
	.uahalf	0x914
	.uaword	0x5da6
	.byte	0xc0
	.uleb128 0xf
	.string	"reserved_C4"
	.byte	0x7
	.uahalf	0x915
	.uaword	0x693d
	.byte	0xc4
	.uleb128 0xf
	.string	"PMSWCR0"
	.byte	0x7
	.uahalf	0x916
	.uaword	0x5ba2
	.byte	0xc8
	.uleb128 0xf
	.string	"PMSWSTAT"
	.byte	0x7
	.uahalf	0x917
	.uaword	0x5c22
	.byte	0xcc
	.uleb128 0xf
	.string	"PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x918
	.uaword	0x5c63
	.byte	0xd0
	.uleb128 0xf
	.string	"PMCSR"
	.byte	0x7
	.uahalf	0x919
	.uaword	0x696d
	.byte	0xd4
	.uleb128 0xf
	.string	"DTSSTAT"
	.byte	0x7
	.uahalf	0x91a
	.uaword	0x4d91
	.byte	0xe0
	.uleb128 0xf
	.string	"DTSCON"
	.byte	0x7
	.uahalf	0x91b
	.uaword	0x4d13
	.byte	0xe4
	.uleb128 0xf
	.string	"PMSWCR1"
	.byte	0x7
	.uahalf	0x91c
	.uaword	0x5be2
	.byte	0xe8
	.uleb128 0xf
	.string	"reserved_EC"
	.byte	0x7
	.uahalf	0x91d
	.uaword	0x693d
	.byte	0xec
	.uleb128 0xf
	.string	"WDTS"
	.byte	0x7
	.uahalf	0x91e
	.uaword	0x616a
	.byte	0xf0
	.uleb128 0xf
	.string	"EMSR"
	.byte	0x7
	.uahalf	0x91f
	.uaword	0x4e4b
	.byte	0xfc
	.uleb128 0x13
	.string	"WDTCPU"
	.byte	0x7
	.uahalf	0x920
	.uaword	0x698d
	.uahalf	0x100
	.uleb128 0x13
	.string	"TRAPSTAT"
	.byte	0x7
	.uahalf	0x921
	.uaword	0x5f25
	.uahalf	0x124
	.uleb128 0x13
	.string	"TRAPSET"
	.byte	0x7
	.uahalf	0x922
	.uaword	0x5ee5
	.uahalf	0x128
	.uleb128 0x13
	.string	"TRAPCLR"
	.byte	0x7
	.uahalf	0x923
	.uaword	0x5e65
	.uahalf	0x12c
	.uleb128 0x13
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x924
	.uaword	0x5ea5
	.uahalf	0x130
	.uleb128 0x13
	.string	"LCLCON0"
	.byte	0x7
	.uahalf	0x925
	.uaword	0x56ec
	.uahalf	0x134
	.uleb128 0x13
	.string	"LCLCON1"
	.byte	0x7
	.uahalf	0x926
	.uaword	0x56ec
	.uahalf	0x138
	.uleb128 0x13
	.string	"LCLTEST"
	.byte	0x7
	.uahalf	0x927
	.uaword	0x572b
	.uahalf	0x13c
	.uleb128 0x13
	.string	"CHIPID"
	.byte	0x7
	.uahalf	0x928
	.uaword	0x4cd4
	.uahalf	0x140
	.uleb128 0x13
	.string	"MANID"
	.byte	0x7
	.uahalf	0x929
	.uaword	0x576b
	.uahalf	0x144
	.uleb128 0x13
	.string	"reserved_148"
	.byte	0x7
	.uahalf	0x92a
	.uaword	0x6921
	.uahalf	0x148
	.uleb128 0x13
	.string	"SAFECON"
	.byte	0x7
	.uahalf	0x92b
	.uaword	0x5d66
	.uahalf	0x150
	.uleb128 0x13
	.string	"reserved_154"
	.byte	0x7
	.uahalf	0x92c
	.uaword	0x6992
	.uahalf	0x154
	.uleb128 0x13
	.string	"LBISTCTRL0"
	.byte	0x7
	.uahalf	0x92d
	.uaword	0x5623
	.uahalf	0x164
	.uleb128 0x13
	.string	"LBISTCTRL1"
	.byte	0x7
	.uahalf	0x92e
	.uaword	0x5666
	.uahalf	0x168
	.uleb128 0x13
	.string	"LBISTCTRL2"
	.byte	0x7
	.uahalf	0x92f
	.uaword	0x56a9
	.uahalf	0x16c
	.uleb128 0x13
	.string	"reserved_170"
	.byte	0x7
	.uahalf	0x930
	.uaword	0x69a2
	.uahalf	0x170
	.uleb128 0x13
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x931
	.uaword	0x58e1
	.uahalf	0x18c
	.uleb128 0x13
	.string	"reserved_190"
	.byte	0x7
	.uahalf	0x932
	.uaword	0x6921
	.uahalf	0x190
	.uleb128 0x13
	.string	"EVRTRIM"
	.byte	0x7
	.uahalf	0x933
	.uaword	0x53fb
	.uahalf	0x198
	.uleb128 0x13
	.string	"EVRADCSTAT"
	.byte	0x7
	.uahalf	0x934
	.uaword	0x4f89
	.uahalf	0x19c
	.uleb128 0x13
	.string	"EVRUVMON"
	.byte	0x7
	.uahalf	0x935
	.uaword	0x543b
	.uahalf	0x1a0
	.uleb128 0x13
	.string	"EVROVMON"
	.byte	0x7
	.uahalf	0x936
	.uaword	0x5094
	.uahalf	0x1a4
	.uleb128 0x13
	.string	"EVRMONCTRL"
	.byte	0x7
	.uahalf	0x937
	.uaword	0x500e
	.uahalf	0x1a8
	.uleb128 0x13
	.string	"reserved_1AC"
	.byte	0x7
	.uahalf	0x938
	.uaword	0x693d
	.uahalf	0x1ac
	.uleb128 0x13
	.string	"EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x939
	.uaword	0x52af
	.uahalf	0x1b0
	.uleb128 0x13
	.string	"EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x93a
	.uaword	0x52f2
	.uahalf	0x1b4
	.uleb128 0x13
	.string	"EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x93b
	.uaword	0x5335
	.uahalf	0x1b8
	.uleb128 0x13
	.string	"EVRSDCTRL4"
	.byte	0x7
	.uahalf	0x93c
	.uaword	0x5378
	.uahalf	0x1bc
	.uleb128 0x13
	.string	"EVRSDCOEFF1"
	.byte	0x7
	.uahalf	0x93d
	.uaword	0x5117
	.uahalf	0x1c0
	.uleb128 0x13
	.string	"EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x93e
	.uaword	0x515b
	.uahalf	0x1c4
	.uleb128 0x13
	.string	"EVRSDCOEFF3"
	.byte	0x7
	.uahalf	0x93f
	.uaword	0x519f
	.uahalf	0x1c8
	.uleb128 0x13
	.string	"EVRSDCOEFF4"
	.byte	0x7
	.uahalf	0x940
	.uaword	0x51e3
	.uahalf	0x1cc
	.uleb128 0x13
	.string	"EVRSDCOEFF5"
	.byte	0x7
	.uahalf	0x941
	.uaword	0x5227
	.uahalf	0x1d0
	.uleb128 0x13
	.string	"EVRSDCOEFF6"
	.byte	0x7
	.uahalf	0x942
	.uaword	0x526b
	.uahalf	0x1d4
	.uleb128 0x13
	.string	"EVROSCCTRL"
	.byte	0x7
	.uahalf	0x943
	.uaword	0x5051
	.uahalf	0x1d8
	.uleb128 0x13
	.string	"reserved_1DC"
	.byte	0x7
	.uahalf	0x944
	.uaword	0x693d
	.uahalf	0x1dc
	.uleb128 0x13
	.string	"OVCENABLE"
	.byte	0x7
	.uahalf	0x945
	.uaword	0x589f
	.uahalf	0x1e0
	.uleb128 0x13
	.string	"OVCCON"
	.byte	0x7
	.uahalf	0x946
	.uaword	0x5860
	.uahalf	0x1e4
	.uleb128 0x13
	.string	"reserved_1E8"
	.byte	0x7
	.uahalf	0x947
	.uaword	0x69b2
	.uahalf	0x1e8
	.uleb128 0x13
	.string	"EICR"
	.byte	0x7
	.uahalf	0x948
	.uaword	0x69c2
	.uahalf	0x210
	.uleb128 0x13
	.string	"EIFR"
	.byte	0x7
	.uahalf	0x949
	.uaword	0x4e0e
	.uahalf	0x220
	.uleb128 0x13
	.string	"FMR"
	.byte	0x7
	.uahalf	0x94a
	.uaword	0x54f7
	.uahalf	0x224
	.uleb128 0x13
	.string	"PDRR"
	.byte	0x7
	.uahalf	0x94b
	.uaword	0x595b
	.uahalf	0x228
	.uleb128 0x13
	.string	"IGCR"
	.byte	0x7
	.uahalf	0x94c
	.uaword	0x69d2
	.uahalf	0x22c
	.uleb128 0x13
	.string	"reserved_23C"
	.byte	0x7
	.uahalf	0x94d
	.uaword	0x693d
	.uahalf	0x23c
	.uleb128 0x13
	.string	"DTSLIM"
	.byte	0x7
	.uahalf	0x94e
	.uaword	0x4d52
	.uahalf	0x240
	.uleb128 0x13
	.string	"reserved_244"
	.byte	0x7
	.uahalf	0x94f
	.uaword	0x69e2
	.uahalf	0x244
	.uleb128 0x13
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x950
	.uaword	0x49d5
	.uahalf	0x3f8
	.uleb128 0x13
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x951
	.uaword	0x4996
	.uahalf	0x3fc
	.byte	0
	.uleb128 0x14
	.uaword	0x274
	.uaword	0x6931
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x14
	.uaword	0x274
	.uaword	0x694d
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x4e88
	.uaword	0x695d
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.uaword	0x274
	.uaword	0x696d
	.uleb128 0x15
	.uaword	0x6931
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x5b64
	.uaword	0x697d
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.uaword	0x610e
	.uaword	0x698d
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.uaword	0x697d
	.uleb128 0x14
	.uaword	0x274
	.uaword	0x69a2
	.uleb128 0x15
	.uaword	0x6931
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.uaword	0x274
	.uaword	0x69b2
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.uaword	0x274
	.uaword	0x69c2
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.uaword	0x4dd1
	.uaword	0x69d2
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x556e
	.uaword	0x69e2
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x274
	.uaword	0x69f3
	.uleb128 0x16
	.uaword	0x6931
	.uahalf	0x1b3
	.byte	0
	.uleb128 0xc
	.string	"Ifx_SCU"
	.byte	0x7
	.uahalf	0x952
	.uaword	0x6a03
	.uleb128 0x10
	.uaword	0x6184
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.byte	0x54
	.uaword	0x6a70
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxCpu_ResourceCpu"
	.byte	0x8
	.byte	0x59
	.uaword	0x6a08
	.uleb128 0x6
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x6ab9
	.uleb128 0x7
	.string	"STM31_0"
	.byte	0x9
	.byte	0xc2
	.uaword	0x17d
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x9
	.byte	0xc3
	.uaword	0x6a8a
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x6afa
	.uleb128 0xe
	.string	"U"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x6ab9
	.byte	0
	.uleb128 0xc
	.string	"Ifx_STM_TIM0"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x6ad2
	.uleb128 0x6
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xae
	.uaword	0x6c5e
	.uleb128 0x7
	.string	"WSPFLASH"
	.byte	0xa
	.byte	0xb0
	.uaword	0x17d
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.string	"WSECPF"
	.byte	0xa
	.byte	0xb1
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.string	"WSDFLASH"
	.byte	0xa
	.byte	0xb2
	.uaword	0x17d
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"WSECDF"
	.byte	0xa
	.byte	0xb3
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"IDLE"
	.byte	0xa
	.byte	0xb4
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"ESLDIS"
	.byte	0xa
	.byte	0xb5
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.string	"SLEEP"
	.byte	0xa
	.byte	0xb6
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.string	"NSAFECC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.string	"STALL"
	.byte	0xa
	.byte	0xb8
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.string	"RES21"
	.byte	0xa
	.byte	0xb9
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.string	"RES23"
	.byte	0xa
	.byte	0xba
	.uaword	0x17d
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"VOPERM"
	.byte	0xa
	.byte	0xbb
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"SQERM"
	.byte	0xa
	.byte	0xbc
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"PROERM"
	.byte	0xa
	.byte	0xbd
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"reserved_27"
	.byte	0xa
	.byte	0xbe
	.uaword	0x17d
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"PR5V"
	.byte	0xa
	.byte	0xbf
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"EOBM"
	.byte	0xa
	.byte	0xc0
	.uaword	0x17d
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0xa
	.byte	0xc1
	.uaword	0x6b0f
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.uahalf	0x2de
	.uaword	0x6ca1
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x2e1
	.uaword	0x17d
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x2e3
	.uaword	0x1a7
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x2e5
	.uaword	0x6c5e
	.byte	0
	.uleb128 0xc
	.string	"Ifx_FLASH_FCON"
	.byte	0xa
	.uahalf	0x2e6
	.uaword	0x6c79
	.uleb128 0x18
	.byte	0x4
	.uaword	0x69f3
	.uleb128 0x5
	.string	"IfxScuCcu_PllStepsFunctionHook"
	.byte	0x2
	.byte	0x81
	.uaword	0x6ce4
	.uleb128 0x18
	.byte	0x4
	.uaword	0x6cea
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x2c5
	.uaword	0x6d13
	.uleb128 0xf
	.string	"value"
	.byte	0x2
	.uahalf	0x2c7
	.uaword	0x2c4
	.byte	0
	.uleb128 0xf
	.string	"mask"
	.byte	0x2
	.uahalf	0x2c8
	.uaword	0x2c4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_CcuconRegConfig"
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x6cec
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x2ce
	.uaword	0x6d83
	.uleb128 0xf
	.string	"pDivider"
	.byte	0x2
	.uahalf	0x2d0
	.uaword	0x267
	.byte	0
	.uleb128 0xf
	.string	"nDivider"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x267
	.byte	0x1
	.uleb128 0xf
	.string	"k2Initial"
	.byte	0x2
	.uahalf	0x2d2
	.uaword	0x267
	.byte	0x2
	.uleb128 0x12
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2d3
	.uaword	0x2d2
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_InitialStepConfig"
	.byte	0x2
	.uahalf	0x2d4
	.uaword	0x6d35
	.uleb128 0x1a
	.byte	0xc
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x6de4
	.uleb128 0xf
	.string	"k2Step"
	.byte	0x2
	.uahalf	0x2da
	.uaword	0x267
	.byte	0
	.uleb128 0x12
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2db
	.uaword	0x2d2
	.byte	0x4
	.uleb128 0xf
	.string	"hookFunction"
	.byte	0x2
	.uahalf	0x2dc
	.uaword	0x6cbe
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_PllStepsConfig"
	.byte	0x2
	.uahalf	0x2dd
	.uaword	0x6da7
	.uleb128 0x1a
	.byte	0x38
	.byte	0x2
	.uahalf	0x2e5
	.uaword	0x6e7e
	.uleb128 0x12
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x6d13
	.byte	0
	.uleb128 0x12
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x2e8
	.uaword	0x6d13
	.byte	0x8
	.uleb128 0xf
	.string	"ccucon2"
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x6d13
	.byte	0x10
	.uleb128 0xf
	.string	"ccucon5"
	.byte	0x2
	.uahalf	0x2ea
	.uaword	0x6d13
	.byte	0x18
	.uleb128 0xf
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x2eb
	.uaword	0x6d13
	.byte	0x20
	.uleb128 0xf
	.string	"ccucon7"
	.byte	0x2
	.uahalf	0x2ec
	.uaword	0x6d13
	.byte	0x28
	.uleb128 0xf
	.string	"ccucon8"
	.byte	0x2
	.uahalf	0x2ed
	.uaword	0x6d13
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_ClockDistributionConfig"
	.byte	0x2
	.uahalf	0x2ee
	.uaword	0x6e05
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x2f2
	.uaword	0x6ecf
	.uleb128 0xf
	.string	"value"
	.byte	0x2
	.uahalf	0x2f4
	.uaword	0x2c4
	.byte	0
	.uleb128 0xf
	.string	"mask"
	.byte	0x2
	.uahalf	0x2f5
	.uaword	0x2c4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_FlashWaitstateConfig"
	.byte	0x2
	.uahalf	0x2f6
	.uaword	0x6ea8
	.uleb128 0x1a
	.byte	0x10
	.byte	0x2
	.uahalf	0x2fb
	.uaword	0x6f43
	.uleb128 0xf
	.string	"numOfPllDividerSteps"
	.byte	0x2
	.uahalf	0x2fd
	.uaword	0x267
	.byte	0
	.uleb128 0xf
	.string	"pllDividerStep"
	.byte	0x2
	.uahalf	0x2fe
	.uaword	0x6f43
	.byte	0x4
	.uleb128 0x12
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x2ff
	.uaword	0x6d83
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x6de4
	.uleb128 0xc
	.string	"IfxScuCcu_SysPllConfig"
	.byte	0x2
	.uahalf	0x300
	.uaword	0x6ef6
	.uleb128 0x1a
	.byte	0x54
	.byte	0x2
	.uahalf	0x308
	.uaword	0x6fd6
	.uleb128 0xf
	.string	"sysPll"
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x6f49
	.byte	0
	.uleb128 0xf
	.string	"clockDistribution"
	.byte	0x2
	.uahalf	0x30b
	.uaword	0x6e7e
	.byte	0x10
	.uleb128 0xf
	.string	"flashFconWaitStateConfig"
	.byte	0x2
	.uahalf	0x30c
	.uaword	0x6ecf
	.byte	0x48
	.uleb128 0xf
	.string	"xtalFrequency"
	.byte	0x2
	.uahalf	0x30d
	.uaword	0x2c4
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_Config"
	.byte	0x2
	.uahalf	0x30e
	.uaword	0x6f68
	.uleb128 0x1a
	.byte	0x8
	.byte	0x2
	.uahalf	0x312
	.uaword	0x7006
	.uleb128 0x12
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x314
	.uaword	0x6d83
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"IfxScuCcu_ErayPllConfig"
	.byte	0x2
	.uahalf	0x315
	.uaword	0x6fef
	.uleb128 0x1b
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x44e
	.byte	0x1
	.uaword	0x2d2
	.byte	0x3
	.uleb128 0x1c
	.byte	0x1
	.string	"IfxScuCcu_getOscFrequency"
	.byte	0x1
	.uahalf	0x1a6
	.byte	0x1
	.uaword	0x2d2
	.byte	0x1
	.uaword	0x7081
	.uleb128 0x1d
	.string	"freq"
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0x2d2
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"IfxScuCcu_getPllFrequency"
	.byte	0x1
	.uahalf	0x1eb
	.byte	0x1
	.uaword	0x2d2
	.byte	0x1
	.uaword	0x70d4
	.uleb128 0x1d
	.string	"scu"
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x6cb8
	.uleb128 0x1d
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x2d2
	.uleb128 0x1d
	.string	"freq"
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x2d2
	.byte	0
	.uleb128 0x1b
	.string	"IfxScuCcu_getEvrFrequency"
	.byte	0x2
	.uahalf	0x429
	.byte	0x1
	.uaword	0x2d2
	.byte	0x3
	.uleb128 0x1e
	.string	"__maxu"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x2c4
	.byte	0x3
	.uaword	0x712a
	.uleb128 0x1f
	.string	"a"
	.byte	0x3
	.byte	0x6f
	.uaword	0x2c4
	.uleb128 0x1f
	.string	"b"
	.byte	0x3
	.byte	0x6f
	.uaword	0x2c4
	.uleb128 0x20
	.string	"res"
	.byte	0x3
	.byte	0x71
	.uaword	0x2c4
	.byte	0
	.uleb128 0x1b
	.string	"IfxScuCcu_getGtmFrequency"
	.byte	0x2
	.uahalf	0x42f
	.byte	0x1
	.uaword	0x2d2
	.byte	0x3
	.uleb128 0x21
	.string	"IfxScuCcu_getPll2ErayFrequency"
	.byte	0x2
	.uahalf	0x435
	.byte	0x1
	.uaword	0x2d2
	.byte	0x3
	.uaword	0x7196
	.uleb128 0x1d
	.string	"pll2ErayFrequency"
	.byte	0x2
	.uahalf	0x437
	.uaword	0x2d2
	.byte	0
	.uleb128 0x21
	.string	"IfxScuCcu_getPll2Frequency"
	.byte	0x2
	.uahalf	0x43f
	.byte	0x1
	.uaword	0x2d2
	.byte	0x3
	.uaword	0x71d6
	.uleb128 0x1d
	.string	"pll2Frequency"
	.byte	0x2
	.uahalf	0x441
	.uaword	0x2d2
	.byte	0
	.uleb128 0x22
	.uaword	0x704a
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x71f4
	.uleb128 0x23
	.uaword	0x7073
	.uaword	.LLST0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_calculateSysPllDividers"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x2eb
	.uaword	.LFB200
	.uaword	.LFE200
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7413
	.uleb128 0x25
	.string	"cfg"
	.byte	0x1
	.byte	0x5d
	.uaword	0x7413
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.string	"fPll"
	.byte	0x1
	.byte	0x5d
	.uaword	0x2c4
	.uaword	.LLST1
	.uleb128 0x27
	.string	"retVal"
	.byte	0x1
	.byte	0x5f
	.uaword	0x2eb
	.uaword	.LLST2
	.uleb128 0x28
	.string	"deviationAllowed"
	.byte	0x1
	.byte	0x60
	.uaword	0x267
	.byte	0x2
	.uleb128 0x29
	.string	"fOsc"
	.byte	0x1
	.byte	0x61
	.uaword	0x2c4
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2a
	.string	"EXITCALC_LOOP"
	.byte	0x1
	.byte	0xb0
	.uaword	.L10
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2c
	.string	"fPllMax"
	.byte	0x1
	.byte	0x69
	.uaword	0x7419
	.uaword	0xbebc200
	.uleb128 0x2c
	.string	"fRefMax"
	.byte	0x1
	.byte	0x6a
	.uaword	0x7419
	.uaword	0x16e3600
	.uleb128 0x2c
	.string	"fRefMin"
	.byte	0x1
	.byte	0x6b
	.uaword	0x7419
	.uaword	0x7a1200
	.uleb128 0x2c
	.string	"fVcoMin"
	.byte	0x1
	.byte	0x6c
	.uaword	0x7419
	.uaword	0x17d78400
	.uleb128 0x2c
	.string	"fVcoMax"
	.byte	0x1
	.byte	0x6d
	.uaword	0x7419
	.uaword	0x2faf0800
	.uleb128 0x28
	.string	"pMin"
	.byte	0x1
	.byte	0x6e
	.uaword	0x741e
	.byte	0x1
	.uleb128 0x28
	.string	"pMax"
	.byte	0x1
	.byte	0x6f
	.uaword	0x741e
	.byte	0x10
	.uleb128 0x28
	.string	"k2Min"
	.byte	0x1
	.byte	0x70
	.uaword	0x741e
	.byte	0x1
	.uleb128 0x2d
	.string	"k2Max"
	.byte	0x1
	.byte	0x71
	.uaword	0x741e
	.sleb128 -128
	.uleb128 0x28
	.string	"nMin"
	.byte	0x1
	.byte	0x72
	.uaword	0x741e
	.byte	0x1
	.uleb128 0x2d
	.string	"nMax"
	.byte	0x1
	.byte	0x73
	.uaword	0x741e
	.sleb128 -128
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x75
	.uaword	0x2c4
	.uaword	.LLST3
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.byte	0x76
	.uaword	0x2c4
	.uaword	.LLST4
	.uleb128 0x27
	.string	"k2"
	.byte	0x1
	.byte	0x77
	.uaword	0x2c4
	.uaword	.LLST5
	.uleb128 0x29
	.string	"k2Steps"
	.byte	0x1
	.byte	0x78
	.uaword	0x2c4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"bestK2"
	.byte	0x1
	.byte	0x79
	.uaword	0x2c4
	.uaword	.LLST6
	.uleb128 0x27
	.string	"bestN"
	.byte	0x1
	.byte	0x79
	.uaword	0x2c4
	.uaword	.LLST7
	.uleb128 0x27
	.string	"bestP"
	.byte	0x1
	.byte	0x79
	.uaword	0x2c4
	.uaword	.LLST8
	.uleb128 0x27
	.string	"fRef"
	.byte	0x1
	.byte	0x7b
	.uaword	0x30b
	.uaword	.LLST9
	.uleb128 0x27
	.string	"fVco"
	.byte	0x1
	.byte	0x7b
	.uaword	0x30b
	.uaword	.LLST10
	.uleb128 0x27
	.string	"fPllLeastError"
	.byte	0x1
	.byte	0x7c
	.uaword	0x30b
	.uaword	.LLST11
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x27
	.string	"fPllError"
	.byte	0x1
	.byte	0x96
	.uaword	0x30b
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x6fd6
	.uleb128 0x2e
	.uaword	0x2c4
	.uleb128 0x2e
	.uaword	0x267
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0x1
	.uahalf	0x1a0
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x22
	.uaword	0x704a
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x747c
	.uleb128 0x30
	.uaword	0x7073
	.byte	0x4
	.uaword	0x4cbebc20
	.uleb128 0x31
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x71d6
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0x1
	.uahalf	0x1bc
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7511
	.uleb128 0x33
	.string	"scu"
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x6cb8
	.sleb128 -268214272
	.uleb128 0x34
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x2d2
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.string	"freq"
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x2d2
	.uaword	.LLST13
	.uleb128 0x36
	.uaword	0x704a
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1c2
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x23
	.uaword	0x7073
	.uaword	.LLST14
	.uleb128 0x37
	.uaword	.LVL32
	.uaword	0x71d6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getPllErayVcoFrequency"
	.byte	0x1
	.uahalf	0x1d8
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7589
	.uleb128 0x35
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x2d2
	.uaword	.LLST15
	.uleb128 0x36
	.uaword	0x704a
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x1e4
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x23
	.uaword	0x7073
	.uaword	.LLST16
	.uleb128 0x37
	.uaword	.LVL41
	.uaword	0x71d6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x7081
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7600
	.uleb128 0x38
	.uaword	0x70aa
	.sleb128 -268214272
	.uleb128 0x39
	.uaword	0x70b6
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.uaword	0x70c6
	.uaword	.LLST17
	.uleb128 0x3a
	.uaword	0x704a
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x75e4
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x23
	.uaword	0x7073
	.uaword	.LLST18
	.uleb128 0x37
	.uaword	.LVL47
	.uaword	0x71d6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.LBB51
	.uaword	.LBE51
	.uleb128 0x3c
	.uaword	0x70aa
	.uleb128 0x3c
	.uaword	0x70b6
	.uleb128 0x39
	.uaword	0x70c6
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getPllVcoFrequency"
	.byte	0x1
	.uahalf	0x207
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7674
	.uleb128 0x35
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x209
	.uaword	0x2d2
	.uaword	.LLST19
	.uleb128 0x36
	.uaword	0x704a
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x213
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x23
	.uaword	0x7073
	.uaword	.LLST20
	.uleb128 0x37
	.uaword	.LVL56
	.uaword	0x71d6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x1
	.uahalf	0x21a
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76ca
	.uleb128 0x34
	.string	"sourcefreq"
	.byte	0x1
	.uahalf	0x21c
	.uaword	0x2d2
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.uaword	.LVL57
	.byte	0x1
	.uaword	0x7081
	.byte	0
	.uleb128 0x3d
	.string	"IfxScuCcu_wait"
	.byte	0x1
	.uahalf	0x52c
	.byte	0x1
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7747
	.uleb128 0x3e
	.string	"timeSec"
	.byte	0x1
	.uahalf	0x52c
	.uaword	0x2d2
	.uaword	.LLST21
	.uleb128 0x34
	.string	"stmCount"
	.byte	0x1
	.uahalf	0x52e
	.uaword	0x2c4
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.string	"stmCountBegin"
	.byte	0x1
	.uahalf	0x52f
	.uaword	0x2c4
	.byte	0x1
	.byte	0x52
	.uleb128 0x36
	.uaword	0x7026
	.uaword	.LBB56
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x52e
	.uleb128 0x37
	.uaword	.LVL60
	.uaword	0x7674
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_getBbbFrequency"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x77aa
	.uleb128 0x27
	.string	"bbbFrequency"
	.byte	0x1
	.byte	0xea
	.uaword	0x2d2
	.uaword	.LLST22
	.uleb128 0x3f
	.uaword	.LASF41
	.byte	0x1
	.byte	0xeb
	.uaword	0x2d2
	.uaword	.LLST23
	.uleb128 0x37
	.uaword	.LVL62
	.uaword	0x7674
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7810
	.uleb128 0x35
	.string	"maxFrequency"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x2d2
	.uaword	.LLST24
	.uleb128 0x40
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x161
	.uaword	0x2d2
	.uaword	.LLST25
	.uleb128 0x37
	.uaword	.LVL74
	.uaword	0x7674
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_getBaud1Frequency"
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB201
	.uaword	.LFE201
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x786c
	.uleb128 0x3f
	.uaword	.LASF42
	.byte	0x1
	.byte	0xc6
	.uaword	0x2d2
	.uaword	.LLST26
	.uleb128 0x3f
	.uaword	.LASF38
	.byte	0x1
	.byte	0xc7
	.uaword	0x4a54
	.uaword	.LLST27
	.uleb128 0x37
	.uaword	.LVL90
	.uaword	0x77aa
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB202
	.uaword	.LFE202
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x78c8
	.uleb128 0x3f
	.uaword	.LASF42
	.byte	0x1
	.byte	0xd8
	.uaword	0x2d2
	.uaword	.LLST28
	.uleb128 0x3f
	.uaword	.LASF38
	.byte	0x1
	.byte	0xd9
	.uaword	0x4a54
	.uaword	.LLST29
	.uleb128 0x37
	.uaword	.LVL97
	.uaword	0x77aa
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x1
	.uahalf	0x22f
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x792e
	.uleb128 0x35
	.string	"spbFrequency"
	.byte	0x1
	.uahalf	0x231
	.uaword	0x2d2
	.uaword	.LLST30
	.uleb128 0x40
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x232
	.uaword	0x2d2
	.uaword	.LLST31
	.uleb128 0x37
	.uaword	.LVL99
	.uaword	0x7674
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getModuleFrequency"
	.byte	0x1
	.uahalf	0x187
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x79aa
	.uleb128 0x34
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x2d2
	.byte	0x1
	.byte	0x53
	.uleb128 0x35
	.string	"moduleFreq"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x2d2
	.uaword	.LLST32
	.uleb128 0x35
	.string	"scuFdr"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x54bb
	.uaword	.LLST33
	.uleb128 0x37
	.uaword	.LVL112
	.uaword	0x78c8
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getSriFrequency"
	.byte	0x1
	.uahalf	0x258
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a10
	.uleb128 0x35
	.string	"sriFrequency"
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x2d2
	.uaword	.LLST34
	.uleb128 0x40
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x2d2
	.uaword	.LLST35
	.uleb128 0x37
	.uaword	.LVL120
	.uaword	0x7674
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getCpuFrequency"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a7e
	.uleb128 0x3e
	.string	"cpu"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x7a7e
	.uaword	.LLST36
	.uleb128 0x41
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x113
	.uaword	0x2d2
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x2c4
	.uaword	.LLST37
	.uleb128 0x37
	.uaword	.LVL133
	.uaword	0x79aa
	.byte	0
	.uleb128 0x2e
	.uaword	0x6a70
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getFsi2Frequency"
	.byte	0x1
	.uahalf	0x130
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7ae1
	.uleb128 0x40
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x132
	.uaword	0x2d2
	.uaword	.LLST38
	.uleb128 0x40
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x133
	.uaword	0x4a54
	.uaword	.LLST39
	.uleb128 0x37
	.uaword	.LVL147
	.uaword	0x79aa
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getFsiFrequency"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7b3e
	.uleb128 0x40
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x149
	.uaword	0x2d2
	.uaword	.LLST40
	.uleb128 0x40
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x4a54
	.uaword	.LLST41
	.uleb128 0x37
	.uaword	.LVL154
	.uaword	0x79aa
	.byte	0
	.uleb128 0x21
	.string	"IfxScuCcu_isOscillatorStable"
	.byte	0x1
	.uahalf	0x3f6
	.byte	0x1
	.uaword	0x2eb
	.byte	0x1
	.uaword	0x7b9b
	.uleb128 0x1d
	.string	"TimeoutCtr"
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0x2b6
	.uleb128 0x42
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x2eb
	.uleb128 0x1d
	.string	"endinitPw"
	.byte	0x1
	.uahalf	0x3fa
	.uaword	0x292
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"IfxScuCcu_init"
	.byte	0x1
	.uahalf	0x281
	.byte	0x1
	.uaword	0x2eb
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7ee8
	.uleb128 0x3e
	.string	"cfg"
	.byte	0x1
	.uahalf	0x281
	.uaword	0x7ee8
	.uaword	.LLST42
	.uleb128 0x40
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x283
	.uaword	0x267
	.uaword	.LLST43
	.uleb128 0x40
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x284
	.uaword	0x292
	.uaword	.LLST44
	.uleb128 0x40
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x284
	.uaword	0x292
	.uaword	.LLST45
	.uleb128 0x40
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x285
	.uaword	0x2eb
	.uaword	.LLST46
	.uleb128 0x3a
	.uaword	0x7b3e
	.uaword	.LBB71
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x2af
	.uaword	0x7c93
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x23
	.uaword	0x7b69
	.uaword	.LLST47
	.uleb128 0x23
	.uaword	0x7b7c
	.uaword	.LLST48
	.uleb128 0x23
	.uaword	0x7b88
	.uaword	.LLST49
	.uleb128 0x37
	.uaword	.LVL167
	.uaword	0x8911
	.uleb128 0x44
	.uaword	.LVL172
	.uaword	0x893d
	.uaword	0x7c64
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL174
	.uaword	0x8967
	.uleb128 0x44
	.uaword	.LVL177
	.uaword	0x893d
	.uaword	0x7c81
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL178
	.uaword	0x8967
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0x7e25
	.uleb128 0x40
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x2b7
	.uaword	0x267
	.uaword	.LLST50
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0xc8
	.uaword	0x7cca
	.uleb128 0x40
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x4a54
	.uaword	.LLST51
	.byte	0
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0xe0
	.uaword	0x7ce4
	.uleb128 0x40
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x306
	.uaword	0x4a94
	.uaword	.LLST52
	.byte	0
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0x100
	.uaword	0x7d02
	.uleb128 0x35
	.string	"ccucon2"
	.byte	0x1
	.uahalf	0x317
	.uaword	0x4ad4
	.uaword	.LLST53
	.byte	0
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0x118
	.uaword	0x7d20
	.uleb128 0x35
	.string	"ccucon5"
	.byte	0x1
	.uahalf	0x325
	.uaword	0x4b94
	.uaword	.LLST54
	.byte	0
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0x130
	.uaword	0x7d3e
	.uleb128 0x35
	.string	"ccucon6"
	.byte	0x1
	.uahalf	0x32e
	.uaword	0x4bd4
	.uaword	.LLST55
	.byte	0
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0x158
	.uaword	0x7d5c
	.uleb128 0x35
	.string	"ccucon7"
	.byte	0x1
	.uahalf	0x337
	.uaword	0x4c14
	.uaword	.LLST56
	.byte	0
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0x180
	.uaword	0x7d7a
	.uleb128 0x35
	.string	"ccucon8"
	.byte	0x1
	.uahalf	0x340
	.uaword	0x4c54
	.uaword	.LLST57
	.byte	0
	.uleb128 0x48
	.uaword	.Ldebug_ranges0+0x198
	.uaword	0x7db9
	.uleb128 0x35
	.string	"fcon"
	.byte	0x1
	.uahalf	0x34d
	.uaword	0x6ca1
	.uaword	.LLST58
	.uleb128 0x44
	.uaword	.LVL211
	.uaword	0x893d
	.uaword	0x7da8
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL212
	.uaword	0x8967
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL180
	.uaword	0x898f
	.uaword	0x7dcd
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL181
	.uaword	0x76ca
	.uleb128 0x37
	.uaword	.LVL182
	.uaword	0x76ca
	.uleb128 0x44
	.uaword	.LVL207
	.uaword	0x89bc
	.uaword	0x7df3
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL216
	.uaword	0x898f
	.uaword	0x7e07
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL217
	.uaword	0x89bc
	.uaword	0x7e1b
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL220
	.uaword	0x76ca
	.byte	0
	.uleb128 0x37
	.uaword	.LVL158
	.uaword	0x8911
	.uleb128 0x37
	.uaword	.LVL160
	.uaword	0x89e7
	.uleb128 0x44
	.uaword	.LVL162
	.uaword	0x893d
	.uaword	0x7e4b
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL164
	.uaword	0x8967
	.uaword	0x7e5f
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL165
	.uaword	0x898f
	.uaword	0x7e73
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL175
	.uaword	0x89bc
	.uaword	0x7e87
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL179
	.uaword	0x89bc
	.uaword	0x7e9b
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL223
	.uaword	0x898f
	.uaword	0x7eaf
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL225
	.uaword	0x89bc
	.uaword	0x7ec3
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL226
	.uaword	0x893d
	.uaword	0x7ed7
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL227
	.uaword	0x8967
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x7eee
	.uleb128 0x2e
	.uaword	0x6fd6
	.uleb128 0x49
	.byte	0x1
	.string	"IfxScuCcu_initConfig"
	.byte	0x1
	.uahalf	0x387
	.byte	0x1
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7f2e
	.uleb128 0x3e
	.string	"cfg"
	.byte	0x1
	.uahalf	0x387
	.uaword	0x7413
	.uaword	.LLST59
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_initErayPll"
	.byte	0x1
	.uahalf	0x38d
	.byte	0x1
	.uaword	0x2eb
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8079
	.uleb128 0x3e
	.string	"cfg"
	.byte	0x1
	.uahalf	0x38d
	.uaword	0x8079
	.uaword	.LLST60
	.uleb128 0x41
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x38f
	.uaword	0x267
	.byte	0x1
	.byte	0x5a
	.uleb128 0x40
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x390
	.uaword	0x292
	.uaword	.LLST61
	.uleb128 0x40
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x390
	.uaword	0x292
	.uaword	.LLST62
	.uleb128 0x4a
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x391
	.uaword	0x2eb
	.byte	0
	.uleb128 0x35
	.string	"time_out_ctr"
	.byte	0x1
	.uahalf	0x3cc
	.uaword	0x2c4
	.uaword	.LLST63
	.uleb128 0x37
	.uaword	.LVL231
	.uaword	0x8911
	.uleb128 0x37
	.uaword	.LVL233
	.uaword	0x89e7
	.uleb128 0x44
	.uaword	.LVL235
	.uaword	0x893d
	.uaword	0x7fe7
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL237
	.uaword	0x8967
	.uaword	0x7ffb
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL238
	.uaword	0x898f
	.uaword	0x800f
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL239
	.uaword	0x76ca
	.uleb128 0x44
	.uaword	.LVL240
	.uaword	0x89bc
	.uaword	0x802c
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL242
	.uaword	0x898f
	.uaword	0x8040
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL243
	.uaword	0x89bc
	.uaword	0x8054
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL244
	.uaword	0x893d
	.uaword	0x8068
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL245
	.uaword	0x8967
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x807f
	.uleb128 0x2e
	.uaword	0x7006
	.uleb128 0x49
	.byte	0x1
	.string	"IfxScuCcu_initErayPllConfig"
	.byte	0x1
	.uahalf	0x3f0
	.byte	0x1
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x80c4
	.uleb128 0x4b
	.string	"cfg"
	.byte	0x1
	.uahalf	0x3f0
	.uaword	0x80c4
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x7006
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setCpuFrequency"
	.byte	0x1
	.uahalf	0x41f
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x81c0
	.uleb128 0x3e
	.string	"cpu"
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x6a70
	.uaword	.LLST64
	.uleb128 0x3e
	.string	"cpuFreq"
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x2d2
	.uaword	.LLST65
	.uleb128 0x40
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x421
	.uaword	0x292
	.uaword	.LLST66
	.uleb128 0x35
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x422
	.uaword	0x2d2
	.uaword	.LLST67
	.uleb128 0x35
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x423
	.uaword	0x2c4
	.uaword	.LLST68
	.uleb128 0x37
	.uaword	.LVL248
	.uaword	0x79aa
	.uleb128 0x37
	.uaword	.LVL253
	.uaword	0x89e7
	.uleb128 0x44
	.uaword	.LVL255
	.uaword	0x898f
	.uaword	0x817e
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL257
	.uaword	0x89bc
	.uaword	0x8192
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL260
	.uaword	0x89e7
	.uleb128 0x44
	.uaword	.LVL262
	.uaword	0x898f
	.uaword	0x81af
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL269
	.uaword	0x89bc
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setGtmFrequency"
	.byte	0x1
	.uahalf	0x450
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x82d6
	.uleb128 0x3e
	.string	"gtmFreq"
	.byte	0x1
	.uahalf	0x450
	.uaword	0x2d2
	.uaword	.LLST69
	.uleb128 0x40
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x452
	.uaword	0x292
	.uaword	.LLST70
	.uleb128 0x40
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x453
	.uaword	0x4a94
	.uaword	.LLST71
	.uleb128 0x40
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x455
	.uaword	0x2d2
	.uaword	.LLST72
	.uleb128 0x35
	.string	"gtmDiv"
	.byte	0x1
	.uahalf	0x456
	.uaword	0x2c4
	.uaword	.LLST73
	.uleb128 0x4c
	.uaword	0x70f8
	.uaword	.LBB99
	.uaword	.LBE99
	.byte	0x1
	.uahalf	0x457
	.uaword	0x8281
	.uleb128 0x4d
	.uaword	0x7115
	.byte	0x1
	.uleb128 0x4e
	.uaword	0x710c
	.uaword	.LLST74
	.uleb128 0x3b
	.uaword	.LBB100
	.uaword	.LBE100
	.uleb128 0x23
	.uaword	0x711e
	.uaword	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uaword	0x712a
	.uaword	.LBB101
	.uaword	.LBE101
	.byte	0x1
	.uahalf	0x46c
	.uaword	0x829f
	.uleb128 0x37
	.uaword	.LVL282
	.uaword	0x7674
	.byte	0
	.uleb128 0x37
	.uaword	.LVL272
	.uaword	0x7674
	.uleb128 0x37
	.uaword	.LVL278
	.uaword	0x89e7
	.uleb128 0x44
	.uaword	.LVL280
	.uaword	0x898f
	.uaword	0x82c5
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL281
	.uaword	0x89bc
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setPll2ErayFrequency"
	.byte	0x1
	.uahalf	0x470
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x83b8
	.uleb128 0x3e
	.string	"pll2ErayFreq"
	.byte	0x1
	.uahalf	0x470
	.uaword	0x2d2
	.uaword	.LLST76
	.uleb128 0x35
	.string	"password"
	.byte	0x1
	.uahalf	0x472
	.uaword	0x292
	.uaword	.LLST77
	.uleb128 0x35
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x473
	.uaword	0x2c4
	.uaword	.LLST78
	.uleb128 0x4c
	.uaword	0x714e
	.uaword	.LBB103
	.uaword	.LBE103
	.byte	0x1
	.uahalf	0x479
	.uaword	0x8381
	.uleb128 0x3b
	.uaword	.LBB104
	.uaword	.LBE104
	.uleb128 0x23
	.uaword	0x717b
	.uaword	.LLST79
	.uleb128 0x37
	.uaword	.LVL295
	.uaword	0x7511
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL286
	.uaword	0x89e7
	.uleb128 0x37
	.uaword	.LVL288
	.uaword	0x7511
	.uleb128 0x44
	.uaword	.LVL290
	.uaword	0x898f
	.uaword	0x83a7
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL294
	.uaword	0x89bc
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setPll2Frequency"
	.byte	0x1
	.uahalf	0x47d
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x848d
	.uleb128 0x3e
	.string	"pll2Freq"
	.byte	0x1
	.uahalf	0x47d
	.uaword	0x2d2
	.uaword	.LLST80
	.uleb128 0x40
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x47f
	.uaword	0x292
	.uaword	.LLST81
	.uleb128 0x35
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x480
	.uaword	0x2c4
	.uaword	.LLST82
	.uleb128 0x4c
	.uaword	0x7196
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.uahalf	0x486
	.uaword	0x8456
	.uleb128 0x3b
	.uaword	.LBB106
	.uaword	.LBE106
	.uleb128 0x23
	.uaword	0x71bf
	.uaword	.LLST83
	.uleb128 0x37
	.uaword	.LVL310
	.uaword	0x7600
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL301
	.uaword	0x89e7
	.uleb128 0x37
	.uaword	.LVL303
	.uaword	0x7600
	.uleb128 0x44
	.uaword	.LVL305
	.uaword	0x898f
	.uaword	0x847c
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.uaword	.LVL309
	.uaword	0x89bc
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setSpbFrequency"
	.byte	0x1
	.uahalf	0x48a
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8600
	.uleb128 0x3e
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x48a
	.uaword	0x2d2
	.uaword	.LLST84
	.uleb128 0x35
	.string	"l_EndInitPW"
	.byte	0x1
	.uahalf	0x48d
	.uaword	0x292
	.uaword	.LLST85
	.uleb128 0x40
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x48e
	.uaword	0x292
	.uaword	.LLST86
	.uleb128 0x40
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x48f
	.uaword	0x4a54
	.uaword	.LLST87
	.uleb128 0x40
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x490
	.uaword	0x2d2
	.uaword	.LLST88
	.uleb128 0x35
	.string	"spbDiv"
	.byte	0x1
	.uahalf	0x491
	.uaword	0x2c4
	.uaword	.LLST89
	.uleb128 0x3a
	.uaword	0x70f8
	.uaword	.LBB107
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x492
	.uaword	0x8562
	.uleb128 0x4d
	.uaword	0x7115
	.byte	0x2
	.uleb128 0x4e
	.uaword	0x710c
	.uaword	.LLST90
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x1b0
	.uleb128 0x23
	.uaword	0x711e
	.uaword	.LLST91
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL316
	.uaword	0x7674
	.uleb128 0x37
	.uaword	.LVL324
	.uaword	0x8911
	.uleb128 0x37
	.uaword	.LVL326
	.uaword	0x89e7
	.uleb128 0x44
	.uaword	.LVL328
	.uaword	0x893d
	.uaword	0x8591
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL329
	.uaword	0x8967
	.uaword	0x85a5
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL330
	.uaword	0x898f
	.uaword	0x85b9
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL332
	.uaword	0x89bc
	.uaword	0x85cd
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL333
	.uaword	0x893d
	.uaword	0x85e1
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL335
	.uaword	0x8967
	.uaword	0x85f5
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL336
	.byte	0x1
	.uaword	0x78c8
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_setSriFrequency"
	.byte	0x1
	.uahalf	0x4b7
	.byte	0x1
	.uaword	0x2d2
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8717
	.uleb128 0x3e
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x4b7
	.uaword	0x2d2
	.uaword	.LLST92
	.uleb128 0x4f
	.string	"freq"
	.byte	0x1
	.uahalf	0x4b9
	.uaword	0x2d2
	.byte	0x4
	.uaword	0
	.uleb128 0x35
	.string	"source"
	.byte	0x1
	.uahalf	0x4ba
	.uaword	0x2d2
	.uaword	.LLST93
	.uleb128 0x40
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x4bb
	.uaword	0x4a54
	.uaword	.LLST94
	.uleb128 0x40
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x4bc
	.uaword	0x292
	.uaword	.LLST95
	.uleb128 0x35
	.string	"sriDiv"
	.byte	0x1
	.uahalf	0x4bd
	.uaword	0x2c4
	.uaword	.LLST96
	.uleb128 0x3a
	.uaword	0x70f8
	.uaword	.LBB111
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x4be
	.uaword	0x86d2
	.uleb128 0x4d
	.uaword	0x7115
	.byte	0x1
	.uleb128 0x4e
	.uaword	0x710c
	.uaword	.LLST97
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x1c8
	.uleb128 0x23
	.uaword	0x711e
	.uaword	.LLST98
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL338
	.uaword	0x7674
	.uleb128 0x37
	.uaword	.LVL345
	.uaword	0x89e7
	.uleb128 0x44
	.uaword	.LVL347
	.uaword	0x898f
	.uaword	0x86f8
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL349
	.uaword	0x89bc
	.uaword	0x870c
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL351
	.byte	0x1
	.uaword	0x79aa
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"IfxScuCcu_switchToBackupClock"
	.byte	0x1
	.uahalf	0x4dc
	.byte	0x1
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8851
	.uleb128 0x3e
	.string	"cfg"
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0x7ee8
	.uaword	.LLST99
	.uleb128 0x40
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x4de
	.uaword	0x292
	.uaword	.LLST100
	.uleb128 0x40
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x4de
	.uaword	0x292
	.uaword	.LLST101
	.uleb128 0x40
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x4df
	.uaword	0x1a7
	.uaword	.LLST102
	.uleb128 0x41
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x4e0
	.uaword	0x267
	.byte	0x1
	.byte	0x59
	.uleb128 0x37
	.uaword	.LVL353
	.uaword	0x89e7
	.uleb128 0x37
	.uaword	.LVL355
	.uaword	0x8911
	.uleb128 0x44
	.uaword	.LVL358
	.uaword	0x898f
	.uaword	0x87be
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL360
	.uaword	0x89bc
	.uaword	0x87d2
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.uaword	.LVL361
	.uaword	0x76ca
	.uleb128 0x44
	.uaword	.LVL362
	.uaword	0x893d
	.uaword	0x87ef
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL364
	.uaword	0x8967
	.uaword	0x8803
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL365
	.uaword	0x898f
	.uaword	0x8817
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL366
	.uaword	0x89bc
	.uaword	0x882b
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.uaword	.LVL367
	.uaword	0x893d
	.uaword	0x883f
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x50
	.uaword	.LVL368
	.byte	0x1
	.uaword	0x8967
	.uleb128 0x45
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x6de4
	.uaword	0x8861
	.uleb128 0x15
	.uaword	0x6931
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.string	"IfxScuCcu_aDefaultPllConfigSteps"
	.byte	0x1
	.byte	0x3d
	.uaword	0x888f
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_aDefaultPllConfigSteps
	.uleb128 0x2e
	.uaword	0x8851
	.uleb128 0x29
	.string	"IfxScuCcu_xtalFrequency"
	.byte	0x1
	.byte	0x43
	.uaword	0x2c4
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_xtalFrequency
	.uleb128 0x51
	.string	"IfxScuCcu_defaultClockConfig"
	.byte	0x1
	.byte	0x49
	.uaword	0x7eee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultClockConfig
	.uleb128 0x51
	.string	"IfxScuCcu_defaultErayPllConfig"
	.byte	0x1
	.byte	0x54
	.uaword	0x807f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultErayPllConfig
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xb
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x292
	.byte	0x1
	.uleb128 0x53
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xb
	.byte	0xbb
	.byte	0x1
	.byte	0x1
	.uaword	0x8967
	.uleb128 0x54
	.uaword	0x292
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xb
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uaword	0x898f
	.uleb128 0x54
	.uaword	0x292
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0xb
	.byte	0xc7
	.byte	0x1
	.byte	0x1
	.uaword	0x89bc
	.uleb128 0x54
	.uaword	0x292
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0xb
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x89e7
	.uleb128 0x54
	.uaword	0x292
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0xb
	.uahalf	0x166
	.byte	0x1
	.uaword	0x292
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
	.uleb128 0x4
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2-.Ltext0
	.uaword	.LFE231-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE200-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25-.Ltext0
	.uaword	.LFE200-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x79
	.sleb128 1
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x17d
	.byte	0xf7
	.uleb128 0x18d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE211-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60-1-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL61-.Ltext0
	.uaword	.LFE230-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67-.Ltext0
	.uaword	.LVL68-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73-.Ltext0
	.uaword	.LFE203-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL63-.Ltext0
	.uaword	.LVL64-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64-.Ltext0
	.uaword	.LFE203-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77-.Ltext0
	.uaword	.LVL78-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85-.Ltext0
	.uaword	.LFE207-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL79-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL91-.Ltext0
	.uaword	.LFE201-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL87-.Ltext0
	.uaword	.LFE201-.Ltext0
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1c
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL96-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL98-.Ltext0
	.uaword	.LFE202-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL92-.Ltext0
	.uaword	.LVL93-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL93-.Ltext0
	.uaword	.LVL94-.Ltext0
	.uahalf	0xe
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x93
	.uleb128 0x3
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL102-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104-.Ltext0
	.uaword	.LVL105-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106-.Ltext0
	.uaword	.LVL107-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL108-.Ltext0
	.uaword	.LVL109-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110-.Ltext0
	.uaword	.LFE216-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL100-.Ltext0
	.uaword	.LVL101-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101-.Ltext0
	.uaword	.LFE216-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL115-.Ltext0
	.uaword	.LVL116-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117-.Ltext0
	.uaword	.LVL118-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL119-.Ltext0
	.uaword	.LFE208-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL111-.Ltext0
	.uaword	.LVL113-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL113-.Ltext0
	.uaword	.LVL114-.Ltext0
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x16
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL123-.Ltext0
	.uaword	.LVL124-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL125-.Ltext0
	.uaword	.LVL126-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127-.Ltext0
	.uaword	.LVL128-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL129-.Ltext0
	.uaword	.LVL130-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131-.Ltext0
	.uaword	.LFE217-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL121-.Ltext0
	.uaword	.LVL122-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL122-.Ltext0
	.uaword	.LFE217-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL132-.Ltext0
	.uaword	.LVL133-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133-1-.Ltext0
	.uaword	.LVL134-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL134-.Ltext0
	.uaword	.LVL137-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL138-.Ltext0
	.uaword	.LVL139-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL140-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL141-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL142-.Ltext0
	.uaword	.LFE204-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL133-.Ltext0
	.uaword	.LVL134-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL134-.Ltext0
	.uaword	.LVL135-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL137-.Ltext0
	.uaword	.LVL138-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL139-.Ltext0
	.uaword	.LVL140-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL140-.Ltext0
	.uaword	.LVL141-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL141-.Ltext0
	.uaword	.LVL142-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142-.Ltext0
	.uaword	.LFE204-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL145-.Ltext0
	.uaword	.LVL146-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL147-.Ltext0
	.uaword	.LFE205-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL143-.Ltext0
	.uaword	.LVL144-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL144-.Ltext0
	.uaword	.LVL145-.Ltext0
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	.LVL146-.Ltext0
	.uaword	.LVL148-.Ltext0
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL152-.Ltext0
	.uaword	.LVL153-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL154-.Ltext0
	.uaword	.LFE206-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL150-.Ltext0
	.uaword	.LVL151-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL151-.Ltext0
	.uaword	.LVL152-.Ltext0
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	.LVL153-.Ltext0
	.uaword	.LVL155-.Ltext0
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL157-.Ltext0
	.uaword	.LVL158-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL158-1-.Ltext0
	.uaword	.LFE218-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL163-.Ltext0
	.uaword	.LVL224-.Ltext0
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL159-.Ltext0
	.uaword	.LVL160-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL160-1-.Ltext0
	.uaword	.LFE218-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL161-.Ltext0
	.uaword	.LVL162-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL162-1-.Ltext0
	.uaword	.LFE218-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL157-.Ltext0
	.uaword	.LVL174-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL178-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL166-.Ltext0
	.uaword	.LVL170-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x280
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL166-.Ltext0
	.uaword	.LVL171-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL171-.Ltext0
	.uaword	.LVL176-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL222-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL168-.Ltext0
	.uaword	.LVL169-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL169-.Ltext0
	.uaword	.LVL173-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL173-.Ltext0
	.uaword	.LVL174-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL176-.Ltext0
	.uaword	.LVL198-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL212-.Ltext0
	.uaword	.LVL214-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL215-.Ltext0
	.uaword	.LVL219-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL219-.Ltext0
	.uaword	.LVL220-.Ltext0
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL220-.Ltext0
	.uaword	.LVL221-.Ltext0
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL184-.Ltext0
	.uaword	.LVL185-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL187-.Ltext0
	.uaword	.LVL188-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL190-.Ltext0
	.uaword	.LVL191-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL193-.Ltext0
	.uaword	.LVL194-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL194-.Ltext0
	.uaword	.LVL195-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL195-.Ltext0
	.uaword	.LVL196-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL196-.Ltext0
	.uaword	.LVL197-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL197-.Ltext0
	.uaword	.LVL201-.Ltext0
	.uahalf	0x6
	.byte	0x8d
	.sleb128 24704
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL201-.Ltext0
	.uaword	.LVL202-.Ltext0
	.uahalf	0x8
	.byte	0x11
	.sleb128 -268214144
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL197-.Ltext0
	.uaword	.LVL199-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL199-.Ltext0
	.uaword	.LVL200-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL200-.Ltext0
	.uaword	.LVL203-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL206-.Ltext0
	.uahalf	0x8
	.byte	0x11
	.sleb128 -268214140
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL203-.Ltext0
	.uaword	.LVL204-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL204-.Ltext0
	.uaword	.LVL205-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL205-.Ltext0
	.uaword	.LVL208-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL208-.Ltext0
	.uaword	.LVL209-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL209-.Ltext0
	.uaword	.LVL210-.Ltext0
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL210-.Ltext0
	.uaword	.LVL213-.Ltext0
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL228-.Ltext0
	.uaword	.LVL229-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL230-.Ltext0
	.uaword	.LVL231-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL231-1-.Ltext0
	.uaword	.LFE220-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL232-.Ltext0
	.uaword	.LVL233-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL233-1-.Ltext0
	.uaword	.LFE220-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL234-.Ltext0
	.uaword	.LVL235-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL235-1-.Ltext0
	.uaword	.LFE220-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL240-.Ltext0
	.uaword	.LVL241-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc34f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL247-.Ltext0
	.uaword	.LVL248-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL248-1-.Ltext0
	.uaword	.LFE223-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL247-.Ltext0
	.uaword	.LVL248-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL248-1-.Ltext0
	.uaword	.LVL251-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL251-.Ltext0
	.uaword	.LVL259-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x174
	.byte	0x9f
	.uaword	.LVL259-.Ltext0
	.uaword	.LVL263-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL263-.Ltext0
	.uaword	.LVL264-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x174
	.byte	0x9f
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL265-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL265-.Ltext0
	.uaword	.LVL266-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x174
	.byte	0x9f
	.uaword	.LVL266-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL267-.Ltext0
	.uaword	.LVL268-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x174
	.byte	0x9f
	.uaword	.LVL268-.Ltext0
	.uaword	.LFE223-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL254-.Ltext0
	.uaword	.LVL255-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL255-1-.Ltext0
	.uaword	.LVL256-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL261-.Ltext0
	.uaword	.LVL262-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL262-1-.Ltext0
	.uaword	.LVL263-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL265-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL266-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL268-.Ltext0
	.uaword	.LFE223-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL249-.Ltext0
	.uaword	.LVL250-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL250-.Ltext0
	.uaword	.LFE223-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL252-.Ltext0
	.uaword	.LVL256-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL259-.Ltext0
	.uaword	.LVL263-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL264-.Ltext0
	.uaword	.LVL265-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL266-.Ltext0
	.uaword	.LVL267-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL268-.Ltext0
	.uaword	.LFE223-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL270-.Ltext0
	.uaword	.LVL272-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL272-1-.Ltext0
	.uaword	.LVL279-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x9f
	.uaword	.LVL284-.Ltext0
	.uaword	.LFE224-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL279-.Ltext0
	.uaword	.LVL280-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL280-1-.Ltext0
	.uaword	.LVL284-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL271-.Ltext0
	.uaword	.LVL283-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL284-.Ltext0
	.uaword	.LFE224-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL272-.Ltext0
	.uaword	.LVL273-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL274-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL276-.Ltext0
	.uaword	.LVL277-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL284-.Ltext0
	.uaword	.LFE224-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL274-.Ltext0
	.uaword	.LVL275-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL275-.Ltext0
	.uaword	.LVL276-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL284-.Ltext0
	.uaword	.LFE224-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL285-.Ltext0
	.uaword	.LVL286-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL286-1-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL291-.Ltext0
	.uaword	.LFE225-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL287-.Ltext0
	.uaword	.LVL288-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL288-1-.Ltext0
	.uaword	.LVL296-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL289-.Ltext0
	.uaword	.LVL290-1-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x174
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	.LVL290-1-.Ltext0
	.uaword	.LVL291-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x174
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	.LVL291-.Ltext0
	.uaword	.LVL292-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x174
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	.LVL292-.Ltext0
	.uaword	.LVL293-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL293-.Ltext0
	.uaword	.LFE225-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x174
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL297-.Ltext0
	.uaword	.LVL298-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x174
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf7
	.uleb128 0x174
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL298-.Ltext0
	.uaword	.LVL299-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x174
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf7
	.uleb128 0x174
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL300-.Ltext0
	.uaword	.LVL301-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL301-1-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL306-.Ltext0
	.uaword	.LFE226-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL302-.Ltext0
	.uaword	.LVL303-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL303-1-.Ltext0
	.uaword	.LVL311-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL304-.Ltext0
	.uaword	.LVL305-1-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x174
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	.LVL305-1-.Ltext0
	.uaword	.LVL306-.Ltext0
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x174
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	.LVL306-.Ltext0
	.uaword	.LVL307-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x174
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	.LVL307-.Ltext0
	.uaword	.LVL308-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL308-.Ltext0
	.uaword	.LFE226-.Ltext0
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x174
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x174
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x17d
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL312-.Ltext0
	.uaword	.LVL313-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x174
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf7
	.uleb128 0x174
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL313-.Ltext0
	.uaword	.LVL314-.Ltext0
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x174
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf7
	.uleb128 0x174
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL315-.Ltext0
	.uaword	.LVL316-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL316-1-.Ltext0
	.uaword	.LVL318-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL318-.Ltext0
	.uaword	.LFE227-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL325-.Ltext0
	.uaword	.LVL326-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL326-1-.Ltext0
	.uaword	.LVL336-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL327-.Ltext0
	.uaword	.LVL328-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL328-1-.Ltext0
	.uaword	.LVL336-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL331-.Ltext0
	.uaword	.LVL334-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL316-.Ltext0
	.uaword	.LVL317-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL320-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL322-.Ltext0
	.uaword	.LVL323-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL336-.Ltext0
	.uaword	.LFE227-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL319-.Ltext0
	.uaword	.LVL321-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL320-.Ltext0
	.uaword	.LVL322-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL336-.Ltext0
	.uaword	.LFE227-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL337-.Ltext0
	.uaword	.LVL338-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL338-1-.Ltext0
	.uaword	.LVL340-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL340-.Ltext0
	.uaword	.LFE228-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x174
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL338-.Ltext0
	.uaword	.LVL339-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL348-.Ltext0
	.uaword	.LVL350-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL346-.Ltext0
	.uaword	.LVL347-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL347-1-.Ltext0
	.uaword	.LVL351-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL341-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL343-.Ltext0
	.uaword	.LVL344-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE228-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL341-.Ltext0
	.uaword	.LVL342-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL342-.Ltext0
	.uaword	.LVL343-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL351-.Ltext0
	.uaword	.LFE228-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL352-.Ltext0
	.uaword	.LVL353-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL353-1-.Ltext0
	.uaword	.LFE229-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL356-.Ltext0
	.uaword	.LVL357-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL357-.Ltext0
	.uaword	.LFE229-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL354-.Ltext0
	.uaword	.LVL355-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL355-1-.Ltext0
	.uaword	.LFE229-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL356-.Ltext0
	.uaword	.LVL359-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL359-.Ltext0
	.uaword	.LVL361-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL361-.Ltext0
	.uaword	.LVL363-.Ltext0
	.uahalf	0x1
	.byte	0x59
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
	.uaword	.LBB31-.Ltext0
	.uaword	.LBE31-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB29-.Ltext0
	.uaword	.LBE29-.Ltext0
	.uaword	.LBB30-.Ltext0
	.uaword	.LBE30-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB32-.Ltext0
	.uaword	.LBE32-.Ltext0
	.uaword	.LBB35-.Ltext0
	.uaword	.LBE35-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB36-.Ltext0
	.uaword	.LBE36-.Ltext0
	.uaword	.LBB39-.Ltext0
	.uaword	.LBE39-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB46-.Ltext0
	.uaword	.LBE46-.Ltext0
	.uaword	.LBB49-.Ltext0
	.uaword	.LBE49-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB52-.Ltext0
	.uaword	.LBE52-.Ltext0
	.uaword	.LBB55-.Ltext0
	.uaword	.LBE55-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB56-.Ltext0
	.uaword	.LBE56-.Ltext0
	.uaword	.LBB59-.Ltext0
	.uaword	.LBE59-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB71-.Ltext0
	.uaword	.LBE71-.Ltext0
	.uaword	.LBB75-.Ltext0
	.uaword	.LBE75-.Ltext0
	.uaword	.LBB98-.Ltext0
	.uaword	.LBE98-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB77-.Ltext0
	.uaword	.LBE77-.Ltext0
	.uaword	.LBB78-.Ltext0
	.uaword	.LBE78-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB79-.Ltext0
	.uaword	.LBE79-.Ltext0
	.uaword	.LBB80-.Ltext0
	.uaword	.LBE80-.Ltext0
	.uaword	.LBB81-.Ltext0
	.uaword	.LBE81-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB82-.Ltext0
	.uaword	.LBE82-.Ltext0
	.uaword	.LBB83-.Ltext0
	.uaword	.LBE83-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB84-.Ltext0
	.uaword	.LBE84-.Ltext0
	.uaword	.LBB86-.Ltext0
	.uaword	.LBE86-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB85-.Ltext0
	.uaword	.LBE85-.Ltext0
	.uaword	.LBB87-.Ltext0
	.uaword	.LBE87-.Ltext0
	.uaword	.LBB88-.Ltext0
	.uaword	.LBE88-.Ltext0
	.uaword	.LBB90-.Ltext0
	.uaword	.LBE90-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB89-.Ltext0
	.uaword	.LBE89-.Ltext0
	.uaword	.LBB91-.Ltext0
	.uaword	.LBE91-.Ltext0
	.uaword	.LBB92-.Ltext0
	.uaword	.LBE92-.Ltext0
	.uaword	.LBB94-.Ltext0
	.uaword	.LBE94-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB93-.Ltext0
	.uaword	.LBE93-.Ltext0
	.uaword	.LBB95-.Ltext0
	.uaword	.LBE95-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB96-.Ltext0
	.uaword	.LBE96-.Ltext0
	.uaword	.LBB97-.Ltext0
	.uaword	.LBE97-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB107-.Ltext0
	.uaword	.LBE107-.Ltext0
	.uaword	.LBB110-.Ltext0
	.uaword	.LBE110-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB111-.Ltext0
	.uaword	.LBE111-.Ltext0
	.uaword	.LBB114-.Ltext0
	.uaword	.LBE114-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF33:
	.string	"PINBWKEN"
.LASF42:
	.string	"frequency"
.LASF38:
	.string	"ccucon0"
.LASF46:
	.string	"endinitSfty_pw"
.LASF31:
	.string	"ESR1WKEN"
.LASF35:
	.string	"ESR0T"
.LASF10:
	.string	"reserved_10"
.LASF22:
	.string	"reserved_11"
.LASF25:
	.string	"reserved_12"
.LASF37:
	.string	"waitTime"
.LASF20:
	.string	"reserved_14"
.LASF14:
	.string	"reserved_15"
.LASF12:
	.string	"reserved_16"
.LASF24:
	.string	"reserved_17"
.LASF16:
	.string	"reserved_18"
.LASF27:
	.string	"reserved_19"
.LASF32:
	.string	"PINAWKEN"
.LASF39:
	.string	"ccucon1"
.LASF44:
	.string	"smuTrapEnable"
.LASF36:
	.string	"ESR1T"
.LASF26:
	.string	"reserved_21"
.LASF2:
	.string	"reserved_22"
.LASF15:
	.string	"reserved_23"
.LASF4:
	.string	"reserved_24"
.LASF11:
	.string	"reserved_26"
.LASF17:
	.string	"reserved_28"
.LASF21:
	.string	"reserved_29"
.LASF41:
	.string	"sourceFrequency"
.LASF30:
	.string	"OSCDISCDIS"
.LASF49:
	.string	"inputFreq"
.LASF40:
	.string	"pllInitialStep"
.LASF5:
	.string	"SLCK"
.LASF47:
	.string	"pllStepsCount"
.LASF0:
	.string	"reserved_0"
.LASF23:
	.string	"reserved_1"
.LASF9:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_3"
.LASF3:
	.string	"reserved_4"
.LASF6:
	.string	"reserved_6"
.LASF13:
	.string	"reserved_7"
.LASF7:
	.string	"reserved_8"
.LASF18:
	.string	"reserved_9"
.LASF29:
	.string	"CLRFINDIS"
.LASF19:
	.string	"reserved_30"
.LASF8:
	.string	"reserved_31"
.LASF45:
	.string	"endinit_pw"
.LASF28:
	.string	"SETFINDIS"
.LASF34:
	.string	"ESR0TRIST"
.LASF43:
	.string	"status"
.LASF48:
	.string	"l_SEndInitPW"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
