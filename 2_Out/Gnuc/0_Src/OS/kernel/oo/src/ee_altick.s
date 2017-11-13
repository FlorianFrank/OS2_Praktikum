	.file	"ee_altick.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	EE_oo_alarm_insert
	.type	EE_oo_alarm_insert, @function
EE_oo_alarm_insert:
.LFB92:
	.file 1 "0_Src/OS/kernel/oo/src/ee_altick.c"
	.loc 1 64 0
.LVL0:
	.loc 1 72 0
	movh.a	%a15, hi:EE_alarm_ROM
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:EE_alarm_ROM
	madd	%d2, %d15, %d4, 24
	mov.a	%a15, %d2
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:EE_counter_RAM
	lea	%a15, [%a15] lo:EE_counter_RAM
	addsc.a	%a15, %a15, %d15, 3
	ld.w	%d15, [%a15] 4
.LVL1:
	.loc 1 74 0
	jeq	%d15, -1, .L14
	.loc 1 77 0
	movh	%d7, hi:EE_alarm_RAM
	addi	%d7, %d7, lo:EE_alarm_RAM
	mov.a	%a3, %d7
	sh	%d3, %d15, 4
	addsc.a	%a2, %a3, %d3, 0
	mov	%d6, %d15
	ld.w	%d2, [%a2] 8
	jge.u	%d5, %d2, .L12
	.loc 1 79 0
	sub	%d2, %d5
	.loc 1 78 0
	st.w	[%a15] 4, %d4
	.loc 1 79 0
	st.w	[%a2] 8, %d2
	.loc 1 98 0
	madd	%d2, %d7, %d4, 16
	mov.a	%a15, %d2
	st.w	[%a15] 8, %d5
	.loc 1 99 0
	st.w	[%a15] 12, %d15
	ret
.LVL2:
.L16:
	.loc 1 89 0 discriminator 1
	sh	%d3, %d15, 4
	addsc.a	%a15, %a3, %d3, 0
	ld.w	%d2, [%a15] 8
	.loc 1 88 0 discriminator 1
	jlt.u	%d5, %d2, .L15
	mov	%d6, %d15
.LVL3:
.L12:
	.loc 1 87 0
	mov.a	%a2, %d7
	.loc 1 85 0
	sub	%d5, %d2
.LVL4:
	.loc 1 87 0
	addsc.a	%a15, %a2, %d3, 0
.LVL5:
	ld.w	%d15, [%a15] 12
	.loc 1 89 0
	jne	%d15, -1, .L16
	.loc 1 95 0
	madd	%d2, %d7, %d6, 16
	mov.a	%a15, %d2
.LVL6:
	st.w	[%a15] 12, %d4
.L17:
	.loc 1 98 0
	madd	%d2, %d7, %d4, 16
	mov.a	%a15, %d2
	st.w	[%a15] 8, %d5
	.loc 1 99 0
	st.w	[%a15] 12, %d15
	ret
.L15:
	.loc 1 93 0
	sub	%d2, %d5
	st.w	[%a15] 8, %d2
	.loc 1 95 0
	madd	%d2, %d7, %d6, 16
	mov.a	%a15, %d2
	st.w	[%a15] 12, %d4
	j	.L17
.LVL7:
.L14:
	movh	%d7, hi:EE_alarm_RAM
	addi	%d7, %d7, lo:EE_alarm_RAM
	.loc 1 98 0
	madd	%d2, %d7, %d4, 16
	.loc 1 76 0
	st.w	[%a15] 4, %d4
	.loc 1 98 0
	mov.a	%a15, %d2
	st.w	[%a15] 8, %d5
	.loc 1 99 0
	st.w	[%a15] 12, %d15
	ret
.LFE92:
	.size	EE_oo_alarm_insert, .-EE_oo_alarm_insert
	.align 1
	.global	EE_oo_IncrementCounterImplementation
	.type	EE_oo_IncrementCounterImplementation, @function
EE_oo_IncrementCounterImplementation:
.LFB95:
	.loc 1 219 0
.LVL8:
	.loc 1 229 0
	movh.a	%a2, hi:EE_counter_ROM
	.loc 1 222 0
	movh.a	%a4, hi:EE_counter_RAM
	.loc 1 229 0
	mov.d	%d6, %a2
	.loc 1 222 0
	lea	%a4, [%a4] lo:EE_counter_RAM
	sh	%d5, %d4, 3
	addsc.a	%a15, %a4, %d5, 0
	.loc 1 229 0
	addi	%d3, %d6, lo:EE_counter_ROM
	madd	%d6, %d3, %d4, 12
	.loc 1 227 0
	ld.w	%d2, [%a15]0
	.loc 1 222 0
	ld.w	%d15, [%a15] 4
.LVL9:
	.loc 1 227 0
	add	%d2, 1
	.loc 1 229 0
	mov.a	%a2, %d6
	.loc 1 228 0
	ld.w	%d3, [%a2]0
	.loc 1 227 0
	st.w	[%a15]0, %d2
	.loc 1 228 0
	jge.u	%d3, %d2, .L19
	.loc 1 231 0
	mov	%d2, 0
	st.w	[%a15]0, %d2
.L19:
	.loc 1 239 0
	jeq	%d15, -1, .L18
	.loc 1 242 0
	movh	%d8, hi:EE_alarm_RAM
	addi	%d8, %d8, lo:EE_alarm_RAM
	mov.a	%a2, %d8
	sh	%d9, %d15, 4
	addsc.a	%a15, %a2, %d9, 0
	ld.w	%d2, [%a15] 8
	jnz	%d2, .L22
	mov	%d2, %d15
.LBB165:
	.loc 1 251 0
	mov	%d4, %d8
.LVL10:
	j	.L24
.LVL11:
.L58:
	.loc 1 253 0 discriminator 1
	madd	%d6, %d4, %d2, 16
	mov.a	%a2, %d6
	ld.w	%d3, [%a2] 8
	lea	%a15, [%a2] 8
	.loc 1 252 0 discriminator 1
	jnz	%d3, .L57
.LVL12:
.L24:
	.loc 1 251 0
	madd	%d3, %d8, %d2, 16
	mov.a	%a2, %d3
	ld.w	%d2, [%a2] 12
.LVL13:
	lea	%a3, [%a2] 12
	.loc 1 253 0
	jne	%d2, -1, .L58
	.loc 1 259 0
	addsc.a	%a4, %a4, %d5, 0
	.loc 1 256 0
	st.w	[%a3]0, %d2
	.loc 1 259 0
	st.w	[%a4] 4, %d2
.LVL14:
.L39:
	movh.a	%a12, hi:EE_alarm_ROM
	movh.a	%a13, hi:.L28
.LBB166:
.LBB167:
	.loc 1 181 0
	movh	%d13, hi:EE_th_is_extended
	.loc 1 189 0
	movh	%d12, hi:EE_th_status
	.loc 1 197 0
	movh	%d14, hi:EE_th_event_active
	lea	%a12, [%a12] lo:EE_alarm_ROM
	lea	%a13, [%a13] lo:.L28
	.loc 1 181 0
	addi	%d13, %d13, lo:EE_th_is_extended
	.loc 1 189 0
	addi	%d12, %d12, lo:EE_th_status
	.loc 1 197 0
	addi	%d14, %d14, lo:EE_th_event_active
.L37:
.LBE167:
.LBE166:
	.loc 1 269 0
	mul	%d2, %d15, 24
	addsc.a	%a15, %a12, %d2, 0
	ld.bu	%d3, [%a15] 4
	jge.u	%d3, 4, .L26
	addsc.a	%a15, %a13, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L28:
	.code32
	j	.L27
	.code32
	j	.L29
	.code32
	j	.L30
	.code32
	j	.L31
.LVL15:
.L18:
	ret
.L22:
.LBE165:
	.loc 1 315 0
	add	%d2, -1
	st.w	[%a15] 8, %d2
	ret
.LVL16:
.L30:
.LBB182:
	.loc 1 284 0
	addsc.a	%a15, %a12, %d2, 0
	ld.w	%d4, [%a15] 20
	call	EE_oo_IncrementCounterImplementation
.LVL17:
.L26:
	.loc 1 302 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d9, 0
	.loc 1 305 0
	ld.w	%d5, [%a15] 4
	.loc 1 302 0
	ld.w	%d9, [%a15] 12
.LVL18:
	.loc 1 305 0
	jnz	%d5, .L59
.L35:
	.loc 1 310 0
	st.w	[%a15]0, %d5
	.loc 1 312 0
	jeq	%d9, -1, .L60
.L41:
	mov	%d15, %d9
.LVL19:
	sh	%d9, 4
.LVL20:
	j	.L37
.L29:
	.loc 1 277 0
	addsc.a	%a15, %a12, %d2, 0
	ld.a	%a15, [%a15] 16
	calli	%a15
.LVL21:
	.loc 1 302 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d9, 0
	.loc 1 305 0
	ld.w	%d5, [%a15] 4
	.loc 1 302 0
	ld.w	%d9, [%a15] 12
.LVL22:
	.loc 1 305 0
	jz	%d5, .L35
.L59:
	.loc 1 307 0
	mov	%d4, %d15
	add	%d5, -1
	call	EE_oo_alarm_insert
.LVL23:
	.loc 1 312 0
	jne	%d9, -1, .L41
.L60:
	ret
.LVL24:
.L31:
.LBB170:
.LBB168:
	.loc 1 157 0
	addsc.a	%a15, %a12, %d2, 0
	ld.w	%d4, [%a15] 8
.LVL25:
	.loc 1 158 0
	ld.w	%d2, [%a15] 12
.LVL26:
	.loc 1 174 0
	jge.u	%d4, 14, .L26
	.loc 1 181 0
	mov.a	%a2, %d13
	sh	%d3, %d4, 2
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d5, [%a15]0
	jz	%d5, .L26
	.loc 1 189 0
	mov.a	%a3, %d12
	addsc.a	%a15, %a3, %d3, 0
	ld.w	%d5, [%a15]0
	jeq	%d5, 3, .L26
	.loc 1 197 0
	mov.a	%a3, %d14
	mov	%d10, %d2
	mov	%d11, %d2
	addsc.a	%a2, %a3, %d3, 0
	ldmst	[%a2]0, %e10
	.loc 1 207 0
	movh.a	%a2, hi:EE_th_event_waitmask
	lea	%a2, [%a2] lo:EE_th_event_waitmask
	addsc.a	%a2, %a2, %d3, 0
	ld.w	%d3, [%a2]0
	and	%d2, %d3
.LVL27:
	eq	%d3, %d5, 1
	and.ne	%d3, %d2, 0
	jz	%d3, .L26
	.loc 1 211 0
	mov	%d2, 2
	st.w	[%a15]0, %d2
.LVL28:
.L55:
	.loc 1 213 0
	call	EE_rq_insert
.LVL29:
	j	.L26
.L27:
.LVL30:
.LBE168:
.LBE170:
.LBB171:
.LBB172:
	.loc 1 109 0
	addsc.a	%a15, %a12, %d2, 0
	ld.w	%d4, [%a15] 8
.LVL31:
	.loc 1 124 0
	jge.u	%d4, 14, .L26
	.loc 1 133 0
	movh.a	%a15, hi:EE_th_rnact
	sh	%d2, %d4, 2
	lea	%a15, [%a15] lo:EE_th_rnact
	addsc.a	%a15, %a15, %d2, 0
	ld.w	%d3, [%a15]0
	jz	%d3, .L26
	.loc 1 140 0
	add	%d3, -1
.LBB173:
.LBB174:
	.file 2 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
	.loc 2 318 0
	mov.a	%a2, %d12
.LBE174:
.LBE173:
	.loc 1 140 0
	st.w	[%a15]0, %d3
.LVL32:
.LBB180:
.LBB179:
	.loc 2 318 0
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15]0
	jne	%d3, 3, .L55
	.loc 2 319 0
	mov	%d3, 2
.LBB175:
.LBB176:
	.loc 2 277 0
	mov.a	%a3, %d14
.LBE176:
.LBE175:
	.loc 2 319 0
	st.w	[%a15]0, %d3
.LVL33:
.LBB178:
.LBB177:
	.loc 2 277 0
	addsc.a	%a15, %a3, %d2, 0
	mov	%d2, 0
	st.w	[%a15]0, %d2
.LBE177:
.LBE178:
.LBE179:
.LBE180:
.LBE172:
.LBE171:
.LBB181:
.LBB169:
	.loc 1 213 0
	call	EE_rq_insert
.LVL34:
	j	.L26
.LVL35:
.L57:
.LBE169:
.LBE181:
	.loc 1 256 0
	mov	%d3, -1
	.loc 1 259 0
	addsc.a	%a4, %a4, %d5, 0
	.loc 1 256 0
	st.w	[%a3]0, %d3
	.loc 1 259 0
	st.w	[%a4] 4, %d2
	.loc 1 263 0
	ld.w	%d2, [%a15]0
.LVL36:
	add	%d2, -1
	st.w	[%a15]0, %d2
.LVL37:
	j	.L39
.LBE182:
.LFE95:
	.size	EE_oo_IncrementCounterImplementation, .-EE_oo_IncrementCounterImplementation
	.align 1
	.global	EE_oo_IncrementCounterHardware
	.type	EE_oo_IncrementCounterHardware, @function
EE_oo_IncrementCounterHardware:
.LFB96:
	.loc 1 330 0
.LVL38:
.LBB183:
.LBB184:
.LBB185:
.LBB186:
.LBB187:
.LBB188:
.LBB189:
.LBB190:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL39:
#NO_APP
.LBE190:
.LBE189:
.LBE188:
.LBE187:
.LBB191:
.LBB192:
.LBB193:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE193:
.LBE192:
.LBE191:
.LBE186:
.LBE185:
.LBE184:
.LBE183:
.LBB194:
.LBB195:
	.file 4 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
	.loc 4 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE195:
.LBE194:
	.loc 1 336 0
	ld.w	%d2, [%a15] lo:EE_IRQ_nesting_level
	jnz	%d2, .L62
.LVL40:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
.LBB200:
.LBB201:
.LBB202:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE202:
.LBE201:
.LBB203:
.LBB204:
.LBB205:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE205:
.LBE204:
.LBE203:
.LBE200:
.LBE199:
.LBE198:
.LBE197:
.LBE196:
	.loc 1 342 0
	mov	%d2, 5
	ret
.LVL41:
.L62:
	.loc 1 355 0
	call	EE_oo_IncrementCounterImplementation
.LVL42:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
.LBB212:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE212:
.LBE211:
.LBB213:
.LBB214:
.LBB215:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE215:
.LBE214:
.LBE213:
.LBE210:
.LBE209:
.LBE208:
.LBE207:
.LBE206:
	.loc 1 358 0
	mov	%d2, 0
	.loc 1 359 0
	ret
.LFE96:
	.size	EE_oo_IncrementCounterHardware, .-EE_oo_IncrementCounterHardware
	.align 1
	.global	EE_oo_IncrementCounter
	.type	EE_oo_IncrementCounter, @function
EE_oo_IncrementCounter:
.LFB97:
	.loc 1 367 0
.LVL43:
.LBB251:
.LBB252:
	.loc 2 162 0
	movh.a	%a15, hi:EE_oo_IRQ_disable_count
.LBE252:
.LBE251:
	.loc 1 381 0
	ld.w	%d3, [%a15] lo:EE_oo_IRQ_disable_count
	.loc 1 394 0
	mov	%d2, 13
	.loc 1 381 0
	jz	%d3, .L79
.L65:
	.loc 1 435 0
	ret
.L79:
	.loc 1 414 0
	mov	%d2, 3
	.loc 1 402 0
	jnz	%d4, .L65
.LVL44:
.LBB253:
.LBB254:
.LBB255:
.LBB256:
.LBB257:
.LBB258:
.LBB259:
.LBB260:
	.loc 3 114 0
#APP
	# 114 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mfcr %d15, LO:65068
	# 0 "" 2
.LVL45:
#NO_APP
.LBE260:
.LBE259:
.LBE258:
.LBE257:
.LBB261:
.LBB262:
.LBB263:
	.loc 3 166 0
#APP
	# 166 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBE263:
.LBE262:
.LBE261:
.LBE256:
.LBE255:
.LBE254:
.LBE253:
.LBB264:
.LBB265:
	.loc 4 61 0
	movh.a	%a15, hi:EE_IRQ_nesting_level
.LBE265:
.LBE264:
	.loc 1 422 0
	call	EE_oo_IncrementCounterImplementation
.LVL46:
	.loc 1 427 0
	ld.w	%d2, [%a15] lo:EE_IRQ_nesting_level
	jz	%d2, .L80
.L67:
.LVL47:
.LBB266:
.LBB267:
.LBB268:
.LBB269:
.LBB270:
.LBB271:
.LBB272:
	.loc 3 137 0
#APP
	# 137 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	mtcr LO:65068, %d15
	# 0 "" 2
#NO_APP
.LBE272:
.LBE271:
.LBB273:
.LBB274:
.LBB275:
	.loc 3 184 0
#APP
	# 184 "c:\hightec\toolchains\tricore\v4.9.1.0-infineon-1.1\tricore\include\machine\intrinsics.h" 1
	isync
	# 0 "" 2
#NO_APP
.LBE275:
.LBE274:
.LBE273:
.LBE270:
.LBE269:
.LBE268:
.LBE267:
.LBE266:
	.loc 1 434 0
	mov	%d2, 0
	.loc 1 435 0
	ret
.LVL48:
.L80:
.LBB276:
.LBB277:
.LBB278:
.LBB279:
	.file 5 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
	.loc 5 69 0
	movh.a	%a15, hi:EE_stkfirst
	ld.w	%d8, [%a15] lo:EE_stkfirst
.LBE279:
.LBE278:
	.loc 2 349 0
	call	EE_rq_queryfirst
.LVL49:
	.loc 2 351 0
	jeq	%d2, -1, .L67
	.loc 2 354 0
	movh.a	%a2, hi:EE_th_ready_prio
	sh	%d2, 2
.LVL50:
	lea	%a2, [%a2] lo:EE_th_ready_prio
	addsc.a	%a2, %a2, %d2, 0
	movh.a	%a15, hi:EE_sys_ceiling
	ld.w	%d3, [%a15] lo:EE_sys_ceiling
	ld.w	%d4, [%a2]0
	jge.u	%d3, %d4, .L67
	movh.a	%a3, hi:EE_th_status
	lea	%a3, [%a3] lo:EE_th_status
	.loc 2 355 0
	jeq	%d8, -1, .L69
	.loc 2 358 0
	mov	%d4, 2
	addsc.a	%a2, %a3, %d8, 2
	st.w	[%a2]0, %d4
.L69:
	.loc 2 365 0
	movh.a	%a2, hi:EE_th_dispatch_prio
	lea	%a2, [%a2] lo:EE_th_dispatch_prio
	addsc.a	%a2, %a2, %d2, 0
	.loc 2 367 0
	mov	%d8, 0
	.loc 2 365 0
	ld.w	%d4, [%a2]0
	or	%d3, %d4
	st.w	[%a15] lo:EE_sys_ceiling, %d3
	.loc 2 367 0
	addsc.a	%a15, %a3, %d2, 0
	st.w	[%a15]0, %d8
.LBB280:
.LBB281:
	.loc 2 288 0
	movh.a	%a15, hi:EE_th_waswaiting
	.loc 2 287 0
	call	EE_rq2stk_exchange
.LVL51:
	.loc 2 288 0
	lea	%a15, [%a15] lo:EE_th_waswaiting
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d3, [%a15]0
	jz	%d3, .L70
.LBB282:
.LBB283:
	.file 6 "./0_Src/OS/cpu/common/inc/ee_context.h"
	.loc 6 201 0
	insert	%d4, %d2, 15, 31, 1
.LBE283:
.LBE282:
	.loc 2 290 0
	st.w	[%a15]0, %d8
.LVL52:
.LBB285:
.LBB284:
	.loc 6 201 0
	call	EE_std_change_context
.LVL53:
	j	.L67
.LVL54:
.L70:
.LBE284:
.LBE285:
.LBB286:
.LBB287:
	.loc 6 214 0
	mov	%d4, %d2
	call	EE_std_change_context
.LVL55:
	j	.L67
.LBE287:
.LBE286:
.LBE281:
.LBE280:
.LBE277:
.LBE276:
.LFE97:
	.size	EE_oo_IncrementCounter, .-EE_oo_IncrementCounter
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
	.uaword	.LFB92
	.uaword	.LFE92-.LFB92
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB95
	.uaword	.LFE95-.LFB95
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB96
	.uaword	.LFE96-.LFB96
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB97
	.uaword	.LFE97-.LFB97
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 7 "./0_Src/OS/cpu/common/inc/ee_types.h"
	.file 8 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
	.file 9 "./0_Src/OS/kernel/oo/inc/ee_common.h"
	.file 10 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
	.file 11 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x145e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2017-01-30 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/OS/kernel/oo/src/ee_altick.c"
	.string	"C:\\\\betriebssys\\\\BaseFramework_TC26xB"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"EE_UINT8"
	.byte	0x7
	.byte	0x38
	.uaword	0x16d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"EE_INT32"
	.byte	0x7
	.byte	0x4b
	.uaword	0x1d0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"EE_UINT32"
	.byte	0x7
	.byte	0x4c
	.uaword	0x1e8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1fe
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x3
	.string	"EE_VOID_CALLBACK"
	.byte	0x7
	.byte	0x66
	.uaword	0x1f8
	.uleb128 0x3
	.string	"EE_UREG"
	.byte	0x8
	.byte	0x7b
	.uaword	0x1d7
	.uleb128 0x3
	.string	"EE_SREG"
	.byte	0x8
	.byte	0x7c
	.uaword	0x1c0
	.uleb128 0x3
	.string	"EE_FREG"
	.byte	0x8
	.byte	0x7d
	.uaword	0x1d7
	.uleb128 0x3
	.string	"EE_TID"
	.byte	0x8
	.byte	0x80
	.uaword	0x1c0
	.uleb128 0x3
	.string	"EE_UTID"
	.byte	0x8
	.byte	0x83
	.uaword	0x1d7
	.uleb128 0x6
	.byte	0x4
	.byte	0x8
	.uahalf	0x134
	.uaword	0x3b8
	.uleb128 0x7
	.string	"CCPN"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x218
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.string	"bit8_"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"bit9_"
	.byte	0x8
	.uahalf	0x137
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.string	"bit10_"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.string	"bit11_"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.string	"bit12_"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.string	"bit13_"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.string	"bit14_"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.string	"IE"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"PIPN"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x218
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.string	"bit24_"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"bit25_"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"bit26_"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"bit27_"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"bit28_"
	.byte	0x8
	.uahalf	0x143
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"bit29_"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.string	"bit30_"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.string	"bit31_"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x218
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x8
	.uahalf	0x133
	.uaword	0x3db
	.uleb128 0x9
	.string	"bits"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x262
	.uleb128 0x9
	.string	"reg"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x218
	.byte	0
	.uleb128 0xa
	.string	"EE_ICR"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x3b8
	.uleb128 0x6
	.byte	0xc
	.byte	0x9
	.uahalf	0x161
	.uaword	0x435
	.uleb128 0xb
	.string	"maxallowedvalue"
	.byte	0x9
	.uahalf	0x162
	.uaword	0x218
	.byte	0
	.uleb128 0xb
	.string	"ticksperbase"
	.byte	0x9
	.uahalf	0x163
	.uaword	0x218
	.byte	0x4
	.uleb128 0xb
	.string	"mincycle"
	.byte	0x9
	.uahalf	0x164
	.uaword	0x218
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_counter_ROM_type"
	.byte	0x9
	.uahalf	0x165
	.uaword	0x3ea
	.uleb128 0x6
	.byte	0x8
	.byte	0x9
	.uahalf	0x168
	.uaword	0x47c
	.uleb128 0xb
	.string	"value"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x218
	.byte	0
	.uleb128 0xb
	.string	"first"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x227
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_counter_RAM_type"
	.byte	0x9
	.uahalf	0x16b
	.uaword	0x454
	.uleb128 0x6
	.byte	0x18
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x4f8
	.uleb128 0xb
	.string	"c"
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x227
	.byte	0
	.uleb128 0xb
	.string	"action"
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x17e
	.byte	0x4
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x181
	.uaword	0x245
	.byte	0x8
	.uleb128 0xb
	.string	"Mask"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x218
	.byte	0xc
	.uleb128 0xb
	.string	"f"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x200
	.byte	0x10
	.uleb128 0xb
	.string	"inccount"
	.byte	0x9
	.uahalf	0x187
	.uaword	0x227
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_alarm_ROM_type"
	.byte	0x9
	.uahalf	0x188
	.uaword	0x49b
	.uleb128 0x6
	.byte	0x10
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x559
	.uleb128 0xb
	.string	"used"
	.byte	0x9
	.uahalf	0x18c
	.uaword	0x218
	.byte	0
	.uleb128 0xb
	.string	"cycle"
	.byte	0x9
	.uahalf	0x18d
	.uaword	0x218
	.byte	0x4
	.uleb128 0xb
	.string	"delta"
	.byte	0x9
	.uahalf	0x18e
	.uaword	0x218
	.byte	0x8
	.uleb128 0xb
	.string	"next"
	.byte	0x9
	.uahalf	0x18f
	.uaword	0x227
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"EE_oo_alarm_RAM_type"
	.byte	0x9
	.uahalf	0x190
	.uaword	0x515
	.uleb128 0xa
	.string	"StatusType"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x16d
	.uleb128 0xa
	.string	"TaskType"
	.byte	0x9
	.uahalf	0x2bb
	.uaword	0x245
	.uleb128 0xa
	.string	"EventMaskType"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0x218
	.uleb128 0xa
	.string	"TickType"
	.byte	0x9
	.uahalf	0x320
	.uaword	0x218
	.uleb128 0xa
	.string	"AlarmType"
	.byte	0x9
	.uahalf	0x337
	.uaword	0x227
	.uleb128 0xa
	.string	"CounterType"
	.byte	0x9
	.uahalf	0x33a
	.uaword	0x227
	.uleb128 0xd
	.string	"_isync"
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.string	"_mfcr"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x1e8
	.byte	0x3
	.uaword	0x61f
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x3
	.byte	0x6f
	.uaword	0x61f
	.uleb128 0x10
	.string	"__res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1e8
	.byte	0
	.uleb128 0x11
	.uaword	0x1e8
	.uleb128 0x12
	.string	"_mtcr"
	.byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x3
	.uaword	0x64c
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x3
	.byte	0x87
	.uaword	0x61f
	.uleb128 0x13
	.string	"__val"
	.byte	0x3
	.byte	0x87
	.uaword	0x61f
	.byte	0
	.uleb128 0x14
	.string	"EE_tc_isync"
	.byte	0x8
	.uahalf	0x21c
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"_disable"
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.string	"EE_tc_set_ICR"
	.byte	0x8
	.uahalf	0x242
	.byte	0x1
	.byte	0x3
	.uaword	0x691
	.uleb128 0x16
	.string	"icr"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x3db
	.byte	0
	.uleb128 0x17
	.string	"EE_tc_get_ICR"
	.byte	0x8
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x3db
	.byte	0x3
	.uaword	0x6ba
	.uleb128 0x18
	.string	"icr"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x3db
	.byte	0
	.uleb128 0x14
	.string	"EE_tc_disableIRQ"
	.byte	0x8
	.uahalf	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.string	"EE_tc_resumeIRQ"
	.byte	0x8
	.uahalf	0x37d
	.byte	0x1
	.byte	0x3
	.uaword	0x706
	.uleb128 0x16
	.string	"flags"
	.byte	0x8
	.uahalf	0x37d
	.uaword	0x236
	.uleb128 0x18
	.string	"icr"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x3db
	.byte	0
	.uleb128 0x17
	.string	"EE_tc_suspendIRQ"
	.byte	0x8
	.uahalf	0x384
	.byte	0x1
	.uaword	0x236
	.byte	0x3
	.uaword	0x732
	.uleb128 0x18
	.string	"icr"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x3db
	.byte	0
	.uleb128 0x19
	.string	"EE_hal_suspendIRQ"
	.byte	0x8
	.uahalf	0x3f2
	.byte	0x1
	.uaword	0x236
	.byte	0x3
	.uleb128 0x15
	.string	"EE_hal_resumeIRQ"
	.byte	0x8
	.uahalf	0x3ed
	.byte	0x1
	.byte	0x3
	.uaword	0x778
	.uleb128 0x16
	.string	"flags"
	.byte	0x8
	.uahalf	0x3ed
	.uaword	0x236
	.byte	0
	.uleb128 0x12
	.string	"EE_hal_stkchange"
	.byte	0x6
	.byte	0xc6
	.byte	0x1
	.byte	0x3
	.uaword	0x7a9
	.uleb128 0x13
	.string	"tid"
	.byte	0x6
	.byte	0xc6
	.uaword	0x245
	.uleb128 0x10
	.string	"tmp"
	.byte	0x6
	.byte	0xc8
	.uaword	0x253
	.byte	0
	.uleb128 0x15
	.string	"EE_oo_reset_th_event_active"
	.byte	0x2
	.uahalf	0x113
	.byte	0x1
	.byte	0x3
	.uaword	0x7dc
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x113
	.uaword	0x589
	.byte	0
	.uleb128 0x1b
	.string	"EE_stk_queryfirst"
	.byte	0x5
	.byte	0x43
	.byte	0x1
	.uaword	0x245
	.byte	0x3
	.uleb128 0x15
	.string	"EE_oo_run_next_task"
	.byte	0x2
	.uahalf	0x11b
	.byte	0x1
	.byte	0x3
	.uaword	0x822
	.uleb128 0x18
	.string	"tmp"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x589
	.byte	0
	.uleb128 0x15
	.string	"EE_oo_set_th_status_ready"
	.byte	0x2
	.uahalf	0x13c
	.byte	0x1
	.byte	0x3
	.uaword	0x853
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x13c
	.uaword	0x589
	.byte	0
	.uleb128 0x12
	.string	"EE_handle_alarm_action_task"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x1
	.uaword	0x89a
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.byte	0x66
	.uaword	0x5d3
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x1
	.byte	0x67
	.uaword	0x5c1
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6b
	.uaword	0x589
	.byte	0
	.uleb128 0x12
	.string	"EE_handle_alarm_action_event"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.uaword	0x8ee
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x1
	.byte	0x95
	.uaword	0x5d3
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x1
	.byte	0x96
	.uaword	0x5c1
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9a
	.uaword	0x589
	.uleb128 0x10
	.string	"Mask"
	.byte	0x1
	.byte	0x9b
	.uaword	0x59a
	.byte	0
	.uleb128 0x1b
	.string	"EE_hal_begin_nested_primitive"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.uaword	0x236
	.byte	0x3
	.uleb128 0x1b
	.string	"EE_hal_get_IRQ_nesting_level"
	.byte	0x4
	.byte	0x3b
	.byte	0x1
	.uaword	0x218
	.byte	0x3
	.uleb128 0x12
	.string	"EE_hal_end_nested_primitive"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.byte	0x3
	.uaword	0x96e
	.uleb128 0x13
	.string	"flags"
	.byte	0xa
	.byte	0x73
	.uaword	0x236
	.byte	0
	.uleb128 0xe
	.string	"EE_oo_check_disableint_error"
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.uaword	0x227
	.byte	0x3
	.uaword	0x9ac
	.uleb128 0x10
	.string	"error_check"
	.byte	0x2
	.byte	0x96
	.uaword	0x227
	.byte	0
	.uleb128 0x15
	.string	"EE_oo_preemption_point"
	.byte	0x2
	.uahalf	0x157
	.byte	0x1
	.byte	0x3
	.uaword	0x9e5
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x159
	.uaword	0x245
	.uleb128 0x18
	.string	"rq"
	.byte	0x2
	.uahalf	0x159
	.uaword	0x245
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"EE_oo_alarm_insert"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB92
	.uaword	.LFE92
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa51
	.uleb128 0x1f
	.string	"AlarmID"
	.byte	0x1
	.byte	0x3f
	.uaword	0x5c1
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"increment"
	.byte	0x1
	.byte	0x3f
	.uaword	0x5b0
	.uaword	.LLST0
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.byte	0x41
	.uaword	0x5c1
	.uaword	.LLST1
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.byte	0x41
	.uaword	0x5c1
	.uaword	.LLST2
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"EE_oo_IncrementCounterImplementation"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	.LFB95
	.uaword	.LFE95
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbcb
	.uleb128 0x22
	.uaword	.LASF2
	.byte	0x1
	.byte	0xda
	.uaword	0x5d3
	.uaword	.LLST3
	.uleb128 0x23
	.string	"to_fire"
	.byte	0x1
	.byte	0xde
	.uaword	0x5c1
	.uaword	.LLST4
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.byte	0xf4
	.uaword	0x5c1
	.uaword	.LLST5
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.byte	0xf6
	.uaword	0x5c1
	.uaword	.LLST6
	.uleb128 0x25
	.uaword	0x89a
	.uaword	.LBB166
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x122
	.uaword	0xb2f
	.uleb128 0x26
	.uaword	0x8c0
	.uaword	.LLST7
	.uleb128 0x26
	.uaword	0x8cb
	.uaword	.LLST8
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x27
	.uaword	0x8d6
	.uaword	.LLST9
	.uleb128 0x27
	.uaword	0x8e1
	.uaword	.LLST10
	.uleb128 0x28
	.uaword	.LVL29
	.uaword	0x13e6
	.uleb128 0x29
	.uaword	.LVL34
	.uaword	0x13e6
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x853
	.uaword	.LBB171
	.uaword	.LBE171
	.byte	0x1
	.uahalf	0x111
	.uaword	0xb9c
	.uleb128 0x26
	.uaword	0x878
	.uaword	.LLST11
	.uleb128 0x26
	.uaword	0x883
	.uaword	.LLST12
	.uleb128 0x2c
	.uaword	.LBB172
	.uaword	.LBE172
	.uleb128 0x27
	.uaword	0x88e
	.uaword	.LLST13
	.uleb128 0x2d
	.uaword	0x822
	.uaword	.LBB173
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x8e
	.uleb128 0x26
	.uaword	0x846
	.uaword	.LLST14
	.uleb128 0x2e
	.uaword	0x7a9
	.uaword	.LBB175
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x2
	.uahalf	0x140
	.uleb128 0x26
	.uaword	0x7cf
	.uaword	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL17
	.uaword	0xa51
	.uaword	0xbb1
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8f
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.uaword	.LVL21
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x29
	.uaword	.LVL23
	.uaword	0x9e5
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"EE_oo_IncrementCounterHardware"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.uaword	0x576
	.uaword	.LFB96
	.uaword	.LFE96
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe47
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x149
	.uaword	0x5d3
	.uaword	.LLST16
	.uleb128 0x18
	.string	"flag"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x236
	.uleb128 0x2b
	.uaword	0x8ee
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x1
	.uahalf	0x14d
	.uaword	0xcd3
	.uleb128 0x33
	.uaword	0x732
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0xa
	.byte	0x6e
	.uleb128 0x34
	.uaword	0x706
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x2c
	.uaword	.LBB186
	.uaword	.LBE186
	.uleb128 0x35
	.uaword	0x725
	.uleb128 0x2b
	.uaword	0x691
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x8
	.uahalf	0x386
	.uaword	0xcae
	.uleb128 0x2c
	.uaword	.LBB188
	.uaword	.LBE188
	.uleb128 0x35
	.uaword	0x6ad
	.uleb128 0x34
	.uaword	0x5f3
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x36
	.uaword	0x606
	.uahalf	0xfe2c
	.uleb128 0x2c
	.uaword	.LBB190
	.uaword	.LBE190
	.uleb128 0x37
	.uaword	0x611
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x6ba
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x38
	.uaword	0x65e
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x915
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x1
	.uahalf	0x150
	.uleb128 0x2b
	.uaword	0x93b
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.uahalf	0x154
	.uaword	0xd91
	.uleb128 0x39
	.uaword	0x960
	.uleb128 0x33
	.uaword	0x74e
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0xa
	.byte	0x75
	.uleb128 0x39
	.uaword	0x769
	.uleb128 0x34
	.uaword	0x6d1
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x39
	.uaword	0x6eb
	.uleb128 0x2c
	.uaword	.LBB199
	.uaword	.LBE199
	.uleb128 0x35
	.uaword	0x6f9
	.uleb128 0x34
	.uaword	0x66c
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x39
	.uaword	0x684
	.uleb128 0x2b
	.uaword	0x624
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x8
	.uahalf	0x244
	.uaword	0xd6b
	.uleb128 0x39
	.uaword	0x63e
	.uleb128 0x26
	.uaword	0x633
	.uaword	.LLST17
	.byte	0
	.uleb128 0x34
	.uaword	0x64c
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x38
	.uaword	0x5e7
	.uaword	.LBB204
	.uaword	.LBE204
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x93b
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x1
	.uahalf	0x164
	.uaword	0xe3d
	.uleb128 0x39
	.uaword	0x960
	.uleb128 0x33
	.uaword	0x74e
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0xa
	.byte	0x75
	.uleb128 0x39
	.uaword	0x769
	.uleb128 0x34
	.uaword	0x6d1
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x39
	.uaword	0x6eb
	.uleb128 0x2c
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x35
	.uaword	0x6f9
	.uleb128 0x34
	.uaword	0x66c
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x39
	.uaword	0x684
	.uleb128 0x2b
	.uaword	0x624
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x8
	.uahalf	0x244
	.uaword	0xe17
	.uleb128 0x39
	.uaword	0x63e
	.uleb128 0x36
	.uaword	0x633
	.uahalf	0xfe2c
	.byte	0
	.uleb128 0x34
	.uaword	0x64c
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x38
	.uaword	0x5e7
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL42
	.uaword	0xa51
	.byte	0
	.uleb128 0x12
	.string	"EE_hal_ready2stacked"
	.byte	0x6
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.uaword	0xe71
	.uleb128 0x13
	.string	"tid"
	.byte	0x6
	.byte	0xd4
	.uaword	0x245
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"EE_oo_IncrementCounter"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	0x576
	.uaword	.LFB97
	.uaword	.LFE97
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1141
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x5d3
	.uaword	.LLST18
	.uleb128 0x18
	.string	"flag"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x236
	.uleb128 0x2b
	.uaword	0x96e
	.uaword	.LBB251
	.uaword	.LBE251
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xee2
	.uleb128 0x2c
	.uaword	.LBB252
	.uaword	.LBE252
	.uleb128 0x35
	.uaword	0x998
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x8ee
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0xf95
	.uleb128 0x33
	.uaword	0x732
	.uaword	.LBB254
	.uaword	.LBE254
	.byte	0xa
	.byte	0x6e
	.uleb128 0x34
	.uaword	0x706
	.uaword	.LBB255
	.uaword	.LBE255
	.byte	0x8
	.uahalf	0x3f4
	.uleb128 0x2c
	.uaword	.LBB256
	.uaword	.LBE256
	.uleb128 0x35
	.uaword	0x725
	.uleb128 0x2b
	.uaword	0x691
	.uaword	.LBB257
	.uaword	.LBE257
	.byte	0x8
	.uahalf	0x386
	.uaword	0xf70
	.uleb128 0x2c
	.uaword	.LBB258
	.uaword	.LBE258
	.uleb128 0x35
	.uaword	0x6ad
	.uleb128 0x34
	.uaword	0x5f3
	.uaword	.LBB259
	.uaword	.LBE259
	.byte	0x8
	.uahalf	0x23e
	.uleb128 0x36
	.uaword	0x606
	.uahalf	0xfe2c
	.uleb128 0x2c
	.uaword	.LBB260
	.uaword	.LBE260
	.uleb128 0x37
	.uaword	0x611
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x6ba
	.uaword	.LBB261
	.uaword	.LBE261
	.byte	0x8
	.uahalf	0x387
	.uleb128 0x38
	.uaword	0x65e
	.uaword	.LBB262
	.uaword	.LBE262
	.byte	0x8
	.uahalf	0x253
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x915
	.uaword	.LBB264
	.uaword	.LBE264
	.byte	0x1
	.uahalf	0x1ab
	.uleb128 0x2b
	.uaword	0x93b
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x1
	.uahalf	0x1af
	.uaword	0x1063
	.uleb128 0x26
	.uaword	0x960
	.uaword	.LLST19
	.uleb128 0x33
	.uaword	0x74e
	.uaword	.LBB267
	.uaword	.LBE267
	.byte	0xa
	.byte	0x75
	.uleb128 0x26
	.uaword	0x769
	.uaword	.LLST19
	.uleb128 0x34
	.uaword	0x6d1
	.uaword	.LBB268
	.uaword	.LBE268
	.byte	0x8
	.uahalf	0x3ef
	.uleb128 0x26
	.uaword	0x6eb
	.uaword	.LLST19
	.uleb128 0x2c
	.uaword	.LBB269
	.uaword	.LBE269
	.uleb128 0x35
	.uaword	0x6f9
	.uleb128 0x34
	.uaword	0x66c
	.uaword	.LBB270
	.uaword	.LBE270
	.byte	0x8
	.uahalf	0x381
	.uleb128 0x39
	.uaword	0x684
	.uleb128 0x2b
	.uaword	0x624
	.uaword	.LBB271
	.uaword	.LBE271
	.byte	0x8
	.uahalf	0x244
	.uaword	0x103d
	.uleb128 0x26
	.uaword	0x63e
	.uaword	.LLST19
	.uleb128 0x26
	.uaword	0x633
	.uaword	.LLST23
	.byte	0
	.uleb128 0x34
	.uaword	0x64c
	.uaword	.LBB273
	.uaword	.LBE273
	.byte	0x8
	.uahalf	0x248
	.uleb128 0x38
	.uaword	0x5e7
	.uaword	.LBB274
	.uaword	.LBE274
	.byte	0x8
	.uahalf	0x21e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x9ac
	.uaword	.LBB276
	.uaword	.LBE276
	.byte	0x1
	.uahalf	0x1ad
	.uaword	0x1137
	.uleb128 0x2c
	.uaword	.LBB277
	.uaword	.LBE277
	.uleb128 0x35
	.uaword	0x9cd
	.uleb128 0x27
	.uaword	0x9d9
	.uaword	.LLST24
	.uleb128 0x38
	.uaword	0x7dc
	.uaword	.LBB278
	.uaword	.LBE278
	.byte	0x2
	.uahalf	0x15c
	.uleb128 0x2b
	.uaword	0x7f7
	.uaword	.LBB280
	.uaword	.LBE280
	.byte	0x2
	.uahalf	0x176
	.uaword	0x112c
	.uleb128 0x2c
	.uaword	.LBB281
	.uaword	.LBE281
	.uleb128 0x27
	.uaword	0x815
	.uaword	.LLST25
	.uleb128 0x25
	.uaword	0x778
	.uaword	.LBB282
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x2
	.uahalf	0x123
	.uaword	0x10fa
	.uleb128 0x26
	.uaword	0x792
	.uaword	.LLST26
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x27
	.uaword	0x79d
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	.LVL53
	.uaword	0x1403
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xe47
	.uaword	.LBB286
	.uaword	.LBE286
	.byte	0x2
	.uahalf	0x126
	.uaword	0x1121
	.uleb128 0x26
	.uaword	0xe65
	.uaword	.LLST28
	.uleb128 0x28
	.uaword	.LVL55
	.uaword	0x1403
	.byte	0
	.uleb128 0x28
	.uaword	.LVL51
	.uaword	0x1429
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL49
	.uaword	0x1446
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL46
	.uaword	0xa51
	.byte	0
	.uleb128 0x3a
	.uaword	0x218
	.uaword	0x114c
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3c
	.string	"EE_std_thread_tos"
	.byte	0xb
	.byte	0x5d
	.uaword	0x1167
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1141
	.uleb128 0x3c
	.string	"EE_IRQ_nesting_level"
	.byte	0x4
	.byte	0x39
	.uaword	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_tc_active_tos"
	.byte	0xa
	.byte	0xbe
	.uaword	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_std_endcycle_next_tid"
	.byte	0x6
	.byte	0x41
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_th_status"
	.byte	0x9
	.byte	0xa6
	.uaword	0x1141
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x245
	.uaword	0x11e7
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3c
	.string	"EE_th_next"
	.byte	0x9
	.byte	0xae
	.uaword	0x11dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_th_ready_prio"
	.byte	0x9
	.byte	0xb1
	.uaword	0x1215
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1141
	.uleb128 0x3c
	.string	"EE_th_dispatch_prio"
	.byte	0x9
	.byte	0xb2
	.uaword	0x1237
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1141
	.uleb128 0x3c
	.string	"EE_th_rnact"
	.byte	0x9
	.byte	0xba
	.uaword	0x1141
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_stkfirst"
	.byte	0x9
	.byte	0xc7
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_sys_ceiling"
	.byte	0x9
	.byte	0xca
	.uaword	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"EE_th_event_active"
	.byte	0x9
	.uahalf	0x111
	.uaword	0x1141
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"EE_th_event_waitmask"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x1141
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"EE_th_waswaiting"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x1141
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"EE_th_is_extended"
	.byte	0x9
	.uahalf	0x123
	.uaword	0x1141
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x435
	.uaword	0x12fc
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3d
	.string	"EE_counter_ROM"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x1315
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x12f1
	.uleb128 0x3a
	.uaword	0x47c
	.uaword	0x1325
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3d
	.string	"EE_counter_RAM"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x131a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.uaword	0x4f8
	.uaword	0x1349
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3d
	.string	"EE_alarm_ROM"
	.byte	0x9
	.uahalf	0x1a4
	.uaword	0x1360
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x133e
	.uleb128 0x3a
	.uaword	0x559
	.uaword	0x1370
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3d
	.string	"EE_alarm_RAM"
	.byte	0x9
	.uahalf	0x1aa
	.uaword	0x1365
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_oo_IRQ_disable_count"
	.byte	0x5
	.byte	0x33
	.uaword	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_oo_IRQ_suspend_status"
	.byte	0x5
	.byte	0x3a
	.uaword	0x236
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"EE_ApplicationMode"
	.byte	0x5
	.byte	0x3d
	.uaword	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.byte	0x1
	.string	"EE_rq_insert"
	.byte	0x2
	.byte	0xcf
	.byte	0x1
	.byte	0x1
	.uaword	0x1403
	.uleb128 0x3f
	.uaword	0x245
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"EE_std_change_context"
	.byte	0x6
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uaword	0x1429
	.uleb128 0x3f
	.uaword	0x245
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"EE_rq2stk_exchange"
	.byte	0x2
	.byte	0xd4
	.byte	0x1
	.uaword	0x245
	.byte	0x1
	.uleb128 0x40
	.byte	0x1
	.string	"EE_rq_queryfirst"
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.uaword	0x245
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE92-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
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
	.uaword	.LVL15-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-.Ltext0
	.uaword	.LFE95-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL24-.Ltext0
	.uaword	.LFE95-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL42-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42-1-.Ltext0
	.uaword	.LFE96-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL46-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL46-1-.Ltext0
	.uaword	.LFE97-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xfe2c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL53-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LBB165-.Ltext0
	.uaword	.LBE165-.Ltext0
	.uaword	.LBB182-.Ltext0
	.uaword	.LBE182-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB166-.Ltext0
	.uaword	.LBE166-.Ltext0
	.uaword	.LBB170-.Ltext0
	.uaword	.LBE170-.Ltext0
	.uaword	.LBB181-.Ltext0
	.uaword	.LBE181-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB173-.Ltext0
	.uaword	.LBE173-.Ltext0
	.uaword	.LBB180-.Ltext0
	.uaword	.LBE180-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB175-.Ltext0
	.uaword	.LBE175-.Ltext0
	.uaword	.LBB178-.Ltext0
	.uaword	.LBE178-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB282-.Ltext0
	.uaword	.LBE282-.Ltext0
	.uaword	.LBB285-.Ltext0
	.uaword	.LBE285-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"CounterID"
.LASF0:
	.string	"TaskID"
.LASF4:
	.string	"previous"
.LASF3:
	.string	"current"
.LASF1:
	.string	"__regaddr"
	.extern	EE_std_change_context,STT_FUNC,0
	.extern	EE_rq2stk_exchange,STT_FUNC,0
	.extern	EE_th_waswaiting,STT_OBJECT,-1
	.extern	EE_th_dispatch_prio,STT_OBJECT,-1
	.extern	EE_sys_ceiling,STT_OBJECT,4
	.extern	EE_th_ready_prio,STT_OBJECT,-1
	.extern	EE_rq_queryfirst,STT_FUNC,0
	.extern	EE_stkfirst,STT_OBJECT,4
	.extern	EE_oo_IRQ_disable_count,STT_OBJECT,4
	.extern	EE_IRQ_nesting_level,STT_OBJECT,4
	.extern	EE_th_rnact,STT_OBJECT,-1
	.extern	EE_rq_insert,STT_FUNC,0
	.extern	EE_th_event_waitmask,STT_OBJECT,-1
	.extern	EE_th_event_active,STT_OBJECT,-1
	.extern	EE_th_status,STT_OBJECT,-1
	.extern	EE_th_is_extended,STT_OBJECT,-1
	.extern	EE_counter_ROM,STT_OBJECT,-1
	.extern	EE_alarm_RAM,STT_OBJECT,-1
	.extern	EE_counter_RAM,STT_OBJECT,-1
	.extern	EE_alarm_ROM,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-1.1-fbb5ca1) 4.9.4 build on 2017-01-30"
