	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"nrfx_gpiote.c"
	.text
.Ltext0:
	.section	.text.port_handler_pin_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	port_handler_pin_get, %function
port_handler_pin_get:
.LVL0:
.LFB316:
	.file 1 "C:\\project domotica\\nrf-mesh\\examples\\light_switch\\server\\nrfx_gpiote.c"
	.loc 1 204 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 205 5 view .LVU1
	.loc 1 205 64 is_stmt 0 view .LVU2
	ldr	r3, .L2
	add	r3, r3, r0
	ldrsb	r0, [r3, #90]
.LVL1:
	.loc 1 206 5 is_stmt 1 view .LVU3
	.loc 1 207 1 is_stmt 0 view .LVU4
	and	r0, r0, #63
.LVL2:
	.loc 1 207 1 view .LVU5
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
.LFE316:
	.size	port_handler_pin_get, .-port_handler_pin_get
	.section	.text.port_handler_polarity_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	port_handler_polarity_get, %function
port_handler_polarity_get:
.LVL3:
.LFB317:
	.loc 1 210 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 211 5 view .LVU7
	.loc 1 211 64 is_stmt 0 view .LVU8
	ldr	r3, .L5
	add	r3, r3, r0
	ldrsb	r0, [r3, #90]
.LVL4:
	.loc 1 212 5 is_stmt 1 view .LVU9
	.loc 1 213 1 is_stmt 0 view .LVU10
	ubfx	r0, r0, #6, #2
.LVL5:
	.loc 1 213 1 view .LVU11
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
.LFE317:
	.size	port_handler_polarity_get, .-port_handler_polarity_get
	.section	.text.channel_port_alloc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	channel_port_alloc, %function
channel_port_alloc:
.LVL6:
.LFB318:
	.loc 1 216 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 216 1 is_stmt 0 view .LVU13
	push	{r4, lr}
.LCFI0:
	mov	lr, r0
	.loc 1 217 5 is_stmt 1 view .LVU14
.LVL7:
	.loc 1 218 5 view .LVU15
	.loc 1 220 5 view .LVU16
	.loc 1 220 38 is_stmt 0 view .LVU17
	mov	r4, r2
	cbz	r2, .L14
	movs	r3, #0
.L8:
.LVL8:
	.loc 1 221 5 is_stmt 1 discriminator 4 view .LVU18
	.loc 1 222 33 is_stmt 0 discriminator 4 view .LVU19
	cbz	r4, .L15
	.loc 1 222 33 view .LVU20
	mov	ip, #8
	b	.L10
.LVL9:
.L14:
	.loc 1 220 38 view .LVU21
	movs	r3, #8
	b	.L8
.LVL10:
.L15:
	.loc 1 222 33 view .LVU22
	mov	ip, #12
.LVL11:
	.loc 1 226 5 is_stmt 1 view .LVU23
	.loc 1 226 5 is_stmt 0 view .LVU24
	b	.L10
.LVL12:
.L11:
	.loc 1 226 39 is_stmt 1 discriminator 2 view .LVU25
	adds	r3, r3, #1
.LVL13:
.L10:
	.loc 1 226 27 discriminator 1 view .LVU26
	cmp	r3, ip
	bcs	.L17
	.loc 1 228 9 view .LVU27
	.loc 1 228 26 is_stmt 0 view .LVU28
	ldr	r2, .L18
	ldr	r2, [r2, r3, lsl #2]
	.loc 1 228 12 view .LVU29
	cmp	r2, #-1
	bne	.L11
	.loc 1 230 13 is_stmt 1 view .LVU30
.LVL14:
.LBB302:
.LBI302:
	.loc 1 151 22 view .LVU31
.LBB303:
	.loc 1 156 5 view .LVU32
	.loc 1 156 31 is_stmt 0 view .LVU33
	sxtb	r0, r3
.LVL15:
	.loc 1 156 31 view .LVU34
	ldr	r2, .L18
	add	ip, r2, lr
	strb	r0, [ip, #48]
	.loc 1 157 5 is_stmt 1 view .LVU35
	.loc 1 157 31 is_stmt 0 view .LVU36
	str	r1, [r2, r3, lsl #2]
	.loc 1 158 5 is_stmt 1 view .LVU37
	.loc 1 158 8 is_stmt 0 view .LVU38
	cbnz	r4, .L12
	.loc 1 160 9 is_stmt 1 view .LVU39
	.loc 1 160 44 is_stmt 0 view .LVU40
	subs	r3, r3, #8
.LVL16:
	.loc 1 160 61 view .LVU41
	add	r3, r3, r2
.LVL17:
	.loc 1 160 61 view .LVU42
	strb	lr, [r3, #90]
	b	.L12
.LVL18:
.L17:
	.loc 1 160 61 view .LVU43
.LBE303:
.LBE302:
	.loc 1 217 14 view .LVU44
	mov	r0, #-1
.LVL19:
.L12:
	.loc 1 236 5 is_stmt 1 view .LVU45
	.loc 1 237 1 is_stmt 0 view .LVU46
	pop	{r4, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
.LFE318:
	.size	channel_port_alloc, .-channel_port_alloc
	.section	.text.channel_free,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	channel_free, %function
channel_free:
.LVL20:
.LFB319:
	.loc 1 241 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 242 5 view .LVU48
	.loc 1 242 31 is_stmt 0 view .LVU49
	ldr	r3, .L22
	mov	r2, #-1
	str	r2, [r3, r0, lsl #2]
	.loc 1 243 5 is_stmt 1 view .LVU50
	.loc 1 243 8 is_stmt 0 view .LVU51
	cmp	r0, #7
	bls	.L20
	.loc 1 245 9 is_stmt 1 view .LVU52
	.loc 1 245 44 is_stmt 0 view .LVU53
	subs	r0, r0, #8
.LVL21:
	.loc 1 245 61 view .LVU54
	add	r3, r3, r0
	movs	r2, #255
	strb	r2, [r3, #90]
.L20:
	.loc 1 247 1 view .LVU55
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
.LFE319:
	.size	channel_free, .-channel_free
	.section	.text.latch_pending_read_and_check,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	latch_pending_read_and_check, %function
latch_pending_read_and_check:
.LVL22:
.LFB347:
	.loc 1 717 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 717 1 is_stmt 0 view .LVU57
	sub	sp, sp, #8
.LCFI1:
	mov	ip, r0
	.loc 1 718 5 is_stmt 1 view .LVU58
.LVL23:
.LBB307:
.LBI307:
	.file 2 "C:/nrf-mesh/nRF5_SDK_17.1.0_ddde560/modules/nrfx/hal/nrf_gpio.h"
	.loc 2 822 22 view .LVU59
.LBB308:
	.loc 2 826 5 view .LVU60
	.loc 2 826 21 is_stmt 0 view .LVU61
	ldr	r3, .L33
	ldm	r3, {r0, r1}
.LVL24:
	.loc 2 826 21 view .LVU62
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	.loc 2 827 5 is_stmt 1 view .LVU63
	.loc 2 829 5 view .LVU64
.LVL25:
	.loc 2 829 5 is_stmt 0 view .LVU65
	mov	r0, ip
	.loc 2 829 12 view .LVU66
	movs	r3, #0
	.loc 2 829 5 view .LVU67
	b	.L25
.LVL26:
.L26:
	.loc 2 831 9 is_stmt 1 view .LVU68
	.loc 2 831 29 is_stmt 0 view .LVU69
	add	r2, sp, #8
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2, #-8]
	.loc 2 831 32 view .LVU70
	ldr	r1, [r2, #1312]
	.loc 2 831 18 view .LVU71
	str	r1, [r0], #4
.LVL27:
	.loc 2 834 9 is_stmt 1 view .LVU72
	.loc 2 834 29 is_stmt 0 view .LVU73
	str	r1, [r2, #1312]
	.loc 2 836 9 is_stmt 1 view .LVU74
.LVL28:
	.loc 2 829 54 view .LVU75
	adds	r3, r3, #1
.LVL29:
.L25:
	.loc 2 829 28 view .LVU76
	cmp	r3, #1
	bls	.L26
	.loc 2 829 28 is_stmt 0 view .LVU77
.LBE308:
.LBE307:
.LBB309:
	.loc 1 720 19 view .LVU78
	movs	r3, #0
.LVL30:
.L27:
	.loc 1 720 42 is_stmt 1 discriminator 1 view .LVU79
	cmp	r3, #1
	bhi	.L32
	.loc 1 722 9 view .LVU80
	.loc 1 722 18 is_stmt 0 view .LVU81
	ldr	r2, [ip, r3, lsl #2]
	.loc 1 722 12 view .LVU82
	cbnz	r2, .L30
	.loc 1 720 64 is_stmt 1 discriminator 2 view .LVU83
	adds	r3, r3, #1
.LVL31:
	.loc 1 720 64 is_stmt 0 discriminator 2 view .LVU84
	b	.L27
.L32:
	.loc 1 720 64 discriminator 2 view .LVU85
.LBE309:
	.loc 1 730 12 view .LVU86
	movs	r0, #0
.L28:
	.loc 1 731 1 view .LVU87
	add	sp, sp, #8
.LCFI2:
	@ sp needed
	bx	lr
.L30:
.LCFI3:
.LBB310:
	.loc 1 727 20 view .LVU88
	movs	r0, #1
	b	.L28
.L34:
	.align	2
.L33:
	.word	.LANCHOR1
.LBE310:
.LFE347:
	.size	latch_pending_read_and_check, .-latch_pending_read_and_check
	.section	.text.port_event_handle,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	port_event_handle, %function
port_event_handle:
.LVL32:
.LFB348:
	.loc 1 734 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 734 1 is_stmt 0 view .LVU90
	push	{r4, r5, r6, r7, r8, lr}
.LCFI4:
	mov	r6, r0
	b	.L44
.LVL33:
.L45:
.LBB330:
.LBB331:
.LBB332:
.LBB333:
.LBB334:
.LBB335:
.LBB336:
	.loc 1 734 1 view .LVU91
	mov	lr, r4
	.loc 2 498 16 view .LVU92
	mov	r7, #1342177280
.LVL34:
.L38:
	.loc 2 498 16 view .LVU93
.LBE336:
.LBE335:
	.loc 2 708 5 is_stmt 1 view .LVU94
	.loc 2 708 48 is_stmt 0 view .LVU95
	add	r3, lr, #448
	ldr	r3, [r7, r3, lsl #2]
	.loc 2 708 12 view .LVU96
	ubfx	ip, r3, #16, #2
.LVL35:
	.loc 2 708 12 view .LVU97
.LBE334:
.LBE333:
	.loc 1 750 17 is_stmt 1 view .LVU98
	.loc 1 750 17 view .LVU99
	.loc 1 750 17 view .LVU100
	.loc 1 750 17 view .LVU101
	.loc 1 750 17 view .LVU102
	.loc 1 750 87 view .LVU103
	.loc 1 755 17 view .LVU104
	.loc 1 756 81 is_stmt 0 view .LVU105
	cmp	ip, #2
	beq	.L49
	mov	r8, #2
.L39:
.LVL36:
	.loc 1 758 17 is_stmt 1 view .LVU106
.LBB340:
.LBI340:
	.loc 2 619 22 view .LVU107
.LBB341:
	.loc 2 621 5 view .LVU108
.LBB342:
.LBI342:
	.loc 2 490 33 view .LVU109
.LBB343:
	.loc 2 492 5 view .LVU110
	.loc 2 492 52 view .LVU111
	.loc 2 496 5 view .LVU112
	.loc 2 496 8 is_stmt 0 view .LVU113
	cmp	r4, #31
	bls	.L47
	.loc 2 502 9 is_stmt 1 view .LVU114
	.loc 2 502 25 is_stmt 0 view .LVU115
	and	r3, r4, #31
.LVL37:
	.loc 2 503 9 is_stmt 1 view .LVU116
	.loc 2 503 16 is_stmt 0 view .LVU117
	ldr	r2, .L53
	b	.L40
.LVL38:
.L49:
	.loc 2 503 16 view .LVU118
.LBE343:
.LBE342:
.LBE341:
.LBE340:
	.loc 1 756 81 view .LVU119
	mov	r8, #3
	b	.L39
.LVL39:
.L47:
.LBB347:
.LBB346:
.LBB345:
.LBB344:
	.loc 1 756 81 view .LVU120
	mov	r3, r4
	.loc 2 498 16 view .LVU121
	mov	r2, #1342177280
.LVL40:
.L40:
	.loc 2 498 16 view .LVU122
.LBE344:
.LBE345:
	.loc 2 624 5 is_stmt 1 view .LVU123
	.loc 2 624 30 is_stmt 0 view .LVU124
	add	r3, r3, #448
.LVL41:
	.loc 2 624 30 view .LVU125
	ldr	r0, [r2, r3, lsl #2]
	bic	r0, r0, #196608
	str	r0, [r2, r3, lsl #2]
	.loc 2 625 5 is_stmt 1 view .LVU126
	.loc 2 625 30 is_stmt 0 view .LVU127
	ldr	r0, [r2, r3, lsl #2]
	orr	r0, r0, r8, lsl #16
	str	r0, [r2, r3, lsl #2]
.LVL42:
	.loc 2 625 30 view .LVU128
.LBE346:
.LBE347:
	.loc 1 764 17 is_stmt 1 view .LVU129
.LBB348:
.LBI348:
	.loc 2 848 22 view .LVU130
.LBB349:
	.loc 2 850 5 view .LVU131
	.loc 2 852 5 view .LVU132
	.loc 2 852 21 is_stmt 0 view .LVU133
	movs	r3, #1
	lsl	r3, r3, lr
	.loc 2 852 16 view .LVU134
	str	r3, [r7, #1312]
.LVL43:
	.loc 2 852 16 view .LVU135
.LBE349:
.LBE348:
	.loc 1 768 17 is_stmt 1 view .LVU136
.LBB350:
.LBI350:
	.loc 1 192 24 view .LVU137
.LBB351:
	.loc 1 194 5 view .LVU138
	.loc 1 194 32 is_stmt 0 view .LVU139
	ldr	r3, .L53+4
	adds	r2, r3, r4
.LVL44:
	.loc 1 194 32 view .LVU140
	ldrsb	r2, [r2, #48]
.LVL45:
	.loc 1 194 32 view .LVU141
.LBE351:
.LBE350:
.LBB352:
.LBI352:
	.loc 1 198 43 is_stmt 1 view .LVU142
.LBB353:
	.loc 1 200 5 view .LVU143
	.loc 1 200 25 is_stmt 0 view .LVU144
	ldr	r3, [r3, r2, lsl #2]
.LVL46:
	.loc 1 200 25 view .LVU145
.LBE353:
.LBE352:
	.loc 1 770 17 is_stmt 1 view .LVU146
	.loc 1 770 20 is_stmt 0 view .LVU147
	cbz	r3, .L37
	.loc 1 770 29 discriminator 1 view .LVU148
	cmp	r1, #3
	beq	.L41
	.loc 1 771 63 view .LVU149
	cmp	ip, #2
	beq	.L50
.L42:
	.loc 1 772 99 discriminator 1 view .LVU150
	cmp	ip, #3
	bne	.L37
	.loc 1 773 55 view .LVU151
	cmp	r1, #2
	bne	.L37
	b	.L41
.L50:
	.loc 1 772 56 view .LVU152
	cmp	r1, #1
	bne	.L42
.L41:
	.loc 1 775 21 is_stmt 1 view .LVU153
	mov	r0, r4
	blx	r3
.LVL47:
.L37:
	.loc 1 775 21 is_stmt 0 view .LVU154
.LBE332:
.LBE331:
	.loc 1 736 79 is_stmt 1 discriminator 2 view .LVU155
	adds	r5, r5, #1
.LVL48:
.L36:
	.loc 1 736 32 discriminator 1 view .LVU156
	cmp	r5, #3
	bhi	.L51
.LBB358:
	.loc 1 738 13 view .LVU157
	.loc 1 738 40 is_stmt 0 view .LVU158
	ldr	r3, .L53+4
	add	r3, r3, r5
	ldrsb	r3, [r3, #90]
	.loc 1 738 16 view .LVU159
	cmp	r3, #-1
	beq	.L37
	.loc 1 744 13 is_stmt 1 view .LVU160
	.loc 1 744 37 is_stmt 0 view .LVU161
	mov	r0, r5
	bl	port_handler_pin_get
.LVL49:
	mov	r4, r0
.LVL50:
	.loc 1 745 13 is_stmt 1 view .LVU162
.LBB355:
.LBI355:
	.file 3 "C:/nrf-mesh/nRF5_SDK_17.1.0_ddde560/components/libraries/util/nrf_bitmask.h"
	.loc 3 61 26 view .LVU163
.LBB356:
	.loc 3 63 5 view .LVU164
	.loc 3 64 5 view .LVU165
	.loc 3 64 14 is_stmt 0 view .LVU166
	lsrs	r2, r0, #3
.LVL51:
	.loc 3 65 5 is_stmt 1 view .LVU167
	.loc 3 65 9 is_stmt 0 view .LVU168
	and	r1, r0, #7
.LVL52:
	.loc 3 66 5 is_stmt 1 view .LVU169
	.loc 3 66 15 is_stmt 0 view .LVU170
	movs	r3, #1
	lsls	r3, r3, r1
	.loc 3 66 32 view .LVU171
	ldrb	r2, [r6, r2]	@ zero_extendqisi2
.LVL53:
	.loc 3 66 32 view .LVU172
.LBE356:
.LBE355:
	.loc 1 745 16 view .LVU173
	tst	r3, r2
	beq	.L37
.LBB357:
	.loc 1 747 17 is_stmt 1 view .LVU174
	.loc 1 747 50 is_stmt 0 view .LVU175
	mov	r0, r5
.LVL54:
	.loc 1 747 50 view .LVU176
	bl	port_handler_polarity_get
.LVL55:
	mov	r1, r0
.LVL56:
	.loc 1 748 17 is_stmt 1 view .LVU177
.LBB354:
.LBI333:
	.loc 2 704 38 view .LVU178
.LBB339:
	.loc 2 706 5 view .LVU179
.LBB338:
.LBI335:
	.loc 2 490 33 view .LVU180
.LBB337:
	.loc 2 492 5 view .LVU181
	.loc 2 492 52 view .LVU182
	.loc 2 496 5 view .LVU183
	.loc 2 496 8 is_stmt 0 view .LVU184
	cmp	r4, #31
	bls	.L45
	.loc 2 502 9 is_stmt 1 view .LVU185
	.loc 2 502 25 is_stmt 0 view .LVU186
	and	lr, r4, #31
.LVL57:
	.loc 2 503 9 is_stmt 1 view .LVU187
	.loc 2 503 16 is_stmt 0 view .LVU188
	ldr	r7, .L53
	b	.L38
.LVL58:
.L51:
	.loc 2 503 16 view .LVU189
.LBE337:
.LBE338:
.LBE339:
.LBE354:
.LBE357:
.LBE358:
.LBE330:
	.loc 1 779 14 is_stmt 1 view .LVU190
	mov	r0, r6
	bl	latch_pending_read_and_check
.LVL59:
	cbz	r0, .L52
.LVL60:
.L44:
	.loc 1 735 5 view .LVU191
	.loc 1 736 9 view .LVU192
.LBB359:
	.loc 1 736 14 view .LVU193
	.loc 1 736 23 is_stmt 0 view .LVU194
	movs	r5, #0
	.loc 1 736 9 view .LVU195
	b	.L36
.LVL61:
.L52:
	.loc 1 736 9 view .LVU196
.LBE359:
	.loc 1 780 1 view .LVU197
	pop	{r4, r5, r6, r7, r8, pc}
.LVL62:
.L54:
	.loc 1 780 1 view .LVU198
	.align	2
.L53:
	.word	1342178048
	.word	.LANCHOR0
.LFE348:
	.size	port_event_handle, .-port_event_handle
	.section	.text.nrfx_gpiote_init,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_init
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_init, %function
nrfx_gpiote_init:
.LFB320:
	.loc 1 251 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI5:
	sub	sp, sp, #8
.LCFI6:
	.loc 1 252 5 view .LVU200
	.loc 1 254 5 view .LVU201
	.loc 1 254 13 is_stmt 0 view .LVU202
	ldr	r3, .L67
	ldrb	r4, [r3, #100]	@ zero_extendqisi2
	.loc 1 254 8 view .LVU203
	cmp	r4, #0
	bne	.L63
	.loc 1 265 12 view .LVU204
	mov	r3, r4
	b	.L57
.LVL63:
.L64:
.LBB376:
.LBB377:
	.loc 2 865 18 view .LVU205
	mov	r2, #-1
.LVL64:
	.loc 2 865 18 view .LVU206
	b	.L58
.LVL65:
.L65:
	.loc 2 861 5 view .LVU207
	movs	r2, #0
.LVL66:
.L58:
	.loc 2 886 5 is_stmt 1 view .LVU208
	.loc 2 886 16 is_stmt 0 view .LVU209
	and	r0, r1, #31
.LVL67:
	.loc 2 888 5 is_stmt 1 view .LVU210
	.loc 2 888 41 is_stmt 0 view .LVU211
	lsrs	r2, r2, r0
.LVL68:
	.loc 2 888 41 view .LVU212
.LBE377:
.LBE376:
	.loc 1 267 12 view .LVU213
	tst	r2, #1
	beq	.L59
	.loc 1 269 13 is_stmt 1 view .LVU214
.LVL69:
.LBB379:
.LBI379:
	.loc 1 171 22 view .LVU215
.LBB380:
	.loc 1 173 5 view .LVU216
	.loc 1 173 31 is_stmt 0 view .LVU217
	ldr	r2, .L67
	add	r2, r2, r1
	movs	r1, #255
.LVL70:
	.loc 1 173 31 view .LVU218
	strb	r1, [r2, #48]
.LVL71:
.L59:
	.loc 1 173 31 view .LVU219
.LBE380:
.LBE379:
	.loc 1 265 38 is_stmt 1 discriminator 2 view .LVU220
	adds	r3, r3, #1
.LVL72:
	.loc 1 265 38 is_stmt 0 discriminator 2 view .LVU221
	uxtb	r3, r3
.LVL73:
.L57:
	.loc 1 265 19 is_stmt 1 discriminator 1 view .LVU222
	cmp	r3, #41
	bhi	.L61
	.loc 1 267 9 view .LVU223
	.loc 1 267 13 is_stmt 0 view .LVU224
	mov	r1, r3
.LVL74:
.LBB381:
.LBI376:
	.loc 2 856 22 is_stmt 1 view .LVU225
.LBB378:
	.loc 2 858 5 view .LVU226
	.loc 2 859 5 view .LVU227
	.loc 2 861 5 view .LVU228
	lsrs	r2, r3, #5
.LVL75:
	.loc 2 861 5 is_stmt 0 view .LVU229
	beq	.L64
	cmp	r2, #1
	bne	.L65
	.loc 2 881 18 view .LVU230
	movw	r2, #1023
.LVL76:
	.loc 2 881 18 view .LVU231
	b	.L58
.LVL77:
.L62:
	.loc 2 881 18 view .LVU232
.LBE378:
.LBE381:
	.loc 1 275 9 is_stmt 1 discriminator 3 view .LVU233
	mov	r0, r4
	bl	channel_free
.LVL78:
	.loc 1 273 84 discriminator 3 view .LVU234
	adds	r4, r4, #1
.LVL79:
	.loc 1 273 84 is_stmt 0 discriminator 3 view .LVU235
	uxtb	r4, r4
.LVL80:
.L61:
	.loc 1 273 19 is_stmt 1 discriminator 1 view .LVU236
	cmp	r4, #11
	bls	.L62
	.loc 1 278 5 view .LVU237
	ldr	r3, .L67
	movs	r0, #0
	str	r0, [r3, #94]	@ unaligned
	strh	r0, [r3, #98]	@ movhi
	.loc 1 280 5 view .LVU238
.LVL81:
.LBB382:
.LBI382:
	.file 4 "C:/nrf-mesh/nRF5_SDK_17.1.0_ddde560/integration/nrfx/nrfx_glue.h"
	.loc 4 104 20 view .LVU239
	.loc 4 107 5 view .LVU240
	.loc 4 107 50 view .LVU241
	.loc 4 108 5 view .LVU242
.LBB383:
.LBI383:
	.file 5 "C:/nrf-mesh/nRF5_SDK_17.1.0_ddde560/components/toolchain/cmsis/include/core_cm4.h"
	.loc 5 1809 22 view .LVU243
.LBB384:
	.loc 5 1811 3 view .LVU244
	.loc 5 1813 5 view .LVU245
	.loc 5 1813 46 is_stmt 0 view .LVU246
	ldr	r2, .L67+4
	movs	r1, #192
	strb	r1, [r2, #774]
.LVL82:
	.loc 5 1813 46 view .LVU247
.LBE384:
.LBE383:
.LBE382:
	.loc 1 281 5 is_stmt 1 view .LVU248
.LBB385:
.LBI385:
	.loc 4 117 20 view .LVU249
	.loc 4 119 5 view .LVU250
.LBB386:
.LBI386:
	.loc 5 1679 22 view .LVU251
.LBB387:
	.loc 5 1681 3 view .LVU252
	.loc 5 1683 5 view .LVU253
	.loc 5 1684 5 view .LVU254
	.loc 5 1684 43 is_stmt 0 view .LVU255
	movs	r1, #64
	str	r1, [r2]
	.loc 5 1685 5 is_stmt 1 view .LVU256
.LVL83:
	.loc 5 1685 5 is_stmt 0 view .LVU257
.LBE387:
.LBE386:
.LBE385:
	.loc 1 282 5 is_stmt 1 view .LVU258
.LBB388:
.LBI388:
	.file 6 "C:/nrf-mesh/nRF5_SDK_17.1.0_ddde560/modules/nrfx/hal/nrf_gpiote.h"
	.loc 6 414 22 view .LVU259
.LBB389:
	.loc 6 416 5 view .LVU260
	.loc 6 416 51 is_stmt 0 view .LVU261
	ldr	r2, .L67+8
	str	r0, [r2, #380]
	.loc 6 418 5 is_stmt 1 view .LVU262
	.loc 6 418 31 is_stmt 0 view .LVU263
	ldr	r1, [r2, #380]
	.loc 6 418 23 view .LVU264
	str	r1, [sp, #4]
	.loc 6 419 5 is_stmt 1 view .LVU265
	ldr	r1, [sp, #4]
.LVL84:
	.loc 6 419 5 is_stmt 0 view .LVU266
.LBE389:
.LBE388:
	.loc 1 283 5 is_stmt 1 view .LVU267
.LBB390:
.LBI390:
	.loc 6 428 22 view .LVU268
.LBB391:
	.loc 6 430 5 view .LVU269
	.loc 6 430 26 is_stmt 0 view .LVU270
	mov	r1, #-2147483648
	str	r1, [r2, #772]
.LVL85:
	.loc 6 430 26 view .LVU271
.LBE391:
.LBE390:
	.loc 1 284 5 is_stmt 1 view .LVU272
	.loc 1 284 16 is_stmt 0 view .LVU273
	movs	r2, #1
	strb	r2, [r3, #100]
	.loc 1 286 5 is_stmt 1 view .LVU274
.LVL86:
	.loc 1 287 5 view .LVU275
	.loc 1 287 5 view .LVU276
	.loc 1 287 5 view .LVU277
	.loc 1 287 5 view .LVU278
	.loc 1 287 5 view .LVU279
	.loc 1 287 98 view .LVU280
	.loc 1 288 5 view .LVU281
.L55:
	.loc 1 289 1 is_stmt 0 view .LVU282
	add	sp, sp, #8
.LCFI7:
	@ sp needed
	pop	{r4, pc}
.L63:
.LCFI8:
	.loc 1 260 16 view .LVU283
	movs	r0, #8
	b	.L55
.L68:
	.align	2
.L67:
	.word	.LANCHOR0
	.word	-536813312
	.word	1073766400
.LFE320:
	.size	nrfx_gpiote_init, .-nrfx_gpiote_init
	.section	.text.nrfx_gpiote_is_init,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_is_init
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_is_init, %function
nrfx_gpiote_is_init:
.LFB321:
	.loc 1 293 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 294 5 view .LVU285
	.loc 1 294 17 is_stmt 0 view .LVU286
	ldr	r3, .L70
	ldrb	r0, [r3, #100]	@ zero_extendqisi2
	.loc 1 295 1 view .LVU287
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L71:
	.align	2
.L70:
	.word	.LANCHOR0
.LFE321:
	.size	nrfx_gpiote_is_init, .-nrfx_gpiote_is_init
	.section	.text.nrfx_gpiote_out_init,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_init
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_init, %function
nrfx_gpiote_out_init:
.LVL87:
.LFB323:
	.loc 1 328 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 328 1 is_stmt 0 view .LVU289
	push	{r3, r4, r5, r6, r7, lr}
.LCFI9:
	.loc 1 329 5 is_stmt 1 view .LVU290
	.loc 1 329 49 view .LVU291
	.loc 1 330 5 view .LVU292
	.loc 1 330 58 view .LVU293
	.loc 1 331 5 view .LVU294
	.loc 1 331 26 view .LVU295
	.loc 1 333 5 view .LVU296
.LVL88:
	.loc 1 335 5 view .LVU297
.LBB420:
.LBI420:
	.loc 1 120 22 view .LVU298
.LBB421:
	.loc 1 122 5 view .LVU299
	.loc 1 122 33 is_stmt 0 view .LVU300
	ldr	r3, .L90
	add	r3, r3, r0
	ldrsb	r3, [r3, #48]
.LVL89:
	.loc 1 122 33 view .LVU301
.LBE421:
.LBE420:
	.loc 1 335 8 view .LVU302
	cmp	r3, #-1
	beq	.L87
	.loc 1 337 18 view .LVU303
	movs	r0, #8
.LVL90:
.L72:
	.loc 1 380 1 view .LVU304
	pop	{r3, r4, r5, r6, r7, pc}
.LVL91:
.L87:
	.loc 1 380 1 view .LVU305
	mov	r4, r0
	mov	r5, r1
	.loc 1 341 9 is_stmt 1 view .LVU306
	.loc 1 341 21 is_stmt 0 view .LVU307
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	.loc 1 341 12 view .LVU308
	cbnz	r3, .L88
	.loc 1 359 13 is_stmt 1 view .LVU309
.LVL92:
.LBB422:
.LBI422:
	.loc 1 165 22 view .LVU310
.LBB423:
	.loc 1 167 5 view .LVU311
	.loc 1 167 31 is_stmt 0 view .LVU312
	ldr	r3, .L90
	add	r3, r3, r0
	movs	r2, #254
	strb	r2, [r3, #48]
.LVL93:
	.loc 1 167 31 view .LVU313
.LBE423:
.LBE422:
	.loc 1 362 9 is_stmt 1 view .LVU314
.L75:
	.loc 1 364 13 view .LVU315
	.loc 1 364 25 is_stmt 0 view .LVU316
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	.loc 1 364 16 view .LVU317
	cmp	r3, #1
	beq	.L89
	.loc 1 370 17 is_stmt 1 view .LVU318
.LVL94:
.LBB424:
.LBI424:
	.loc 2 657 22 view .LVU319
.LBB425:
	.loc 2 659 5 view .LVU320
.LBB426:
.LBI426:
	.loc 2 490 33 view .LVU321
.LBB427:
	.loc 2 492 5 view .LVU322
	.loc 2 492 52 view .LVU323
	.loc 2 496 5 view .LVU324
	.loc 2 496 8 is_stmt 0 view .LVU325
	cmp	r4, #31
	bls	.L84
	.loc 2 502 9 is_stmt 1 view .LVU326
	.loc 2 502 25 is_stmt 0 view .LVU327
	and	r1, r4, #31
.LVL95:
	.loc 2 503 9 is_stmt 1 view .LVU328
	.loc 2 503 16 is_stmt 0 view .LVU329
	ldr	r2, .L90+4
	b	.L79
.LVL96:
.L88:
	.loc 2 503 16 view .LVU330
.LBE427:
.LBE426:
.LBE425:
.LBE424:
.LBB433:
	.loc 1 343 13 is_stmt 1 view .LVU331
	.loc 1 343 30 is_stmt 0 view .LVU332
	movs	r2, #1
	movs	r1, #0
.LVL97:
	.loc 1 343 30 view .LVU333
	bl	channel_port_alloc
.LVL98:
	.loc 1 345 13 is_stmt 1 view .LVU334
	.loc 1 345 16 is_stmt 0 view .LVU335
	cmp	r0, #-1
	beq	.L82
	.loc 1 347 17 is_stmt 1 view .LVU336
	.loc 1 349 51 is_stmt 0 view .LVU337
	ldrb	ip, [r5]	@ zero_extendqisi2
	.loc 1 350 51 view .LVU338
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
.LVL99:
.LBB434:
.LBI434:
	.loc 6 517 22 is_stmt 1 view .LVU339
.LBB435:
	.loc 6 521 3 view .LVU340
	.loc 6 521 27 is_stmt 0 view .LVU341
	ldr	r6, .L90+8
	add	r3, r0, #324
	ldr	r2, [r6, r3, lsl #2]
	bic	r2, r2, #1253376
	bic	r2, r2, #7936
	str	r2, [r6, r3, lsl #2]
.LVL100:
	.loc 6 525 3 is_stmt 1 view .LVU342
	.loc 6 525 27 is_stmt 0 view .LVU343
	ldr	r7, [r6, r3, lsl #2]
	.loc 6 525 36 view .LVU344
	lsls	r2, r4, #8
	.loc 6 525 63 view .LVU345
	and	r2, r2, #16128
	.loc 6 526 41 view .LVU346
	lsl	r0, ip, #16
.LVL101:
	.loc 6 526 72 view .LVU347
	and	r0, r0, #196608
	.loc 6 525 93 view .LVU348
	orrs	r2, r2, r0
	.loc 6 527 41 view .LVU349
	lsls	r1, r1, #20
.LVL102:
	.loc 6 527 71 view .LVU350
	and	r1, r1, #1048576
	.loc 6 526 102 view .LVU351
	orrs	r2, r2, r1
	.loc 6 525 27 view .LVU352
	orrs	r7, r7, r2
	str	r7, [r6, r3, lsl #2]
	.loc 6 528 1 view .LVU353
	b	.L75
.LVL103:
.L89:
	.loc 6 528 1 view .LVU354
.LBE435:
.LBE434:
.LBE433:
	.loc 1 366 17 is_stmt 1 view .LVU355
.LBB436:
.LBI436:
	.loc 2 649 22 view .LVU356
.LBB437:
	.loc 2 651 5 view .LVU357
.LBB438:
.LBI438:
	.loc 2 490 33 view .LVU358
.LBB439:
	.loc 2 492 5 view .LVU359
	.loc 2 492 52 view .LVU360
	.loc 2 496 5 view .LVU361
	.loc 2 496 8 is_stmt 0 view .LVU362
	cmp	r4, #31
	bls	.L83
	.loc 2 502 9 is_stmt 1 view .LVU363
	.loc 2 502 25 is_stmt 0 view .LVU364
	and	r1, r4, #31
.LVL104:
	.loc 2 503 9 is_stmt 1 view .LVU365
	.loc 2 503 16 is_stmt 0 view .LVU366
	ldr	r2, .L90+4
.L77:
.LVL105:
	.loc 2 503 16 view .LVU367
.LBE439:
.LBE438:
	.loc 2 653 5 is_stmt 1 view .LVU368
	.loc 2 653 36 is_stmt 0 view .LVU369
	movs	r3, #1
	lsls	r3, r3, r1
.LVL106:
.LBB441:
.LBI441:
	.loc 2 780 22 is_stmt 1 view .LVU370
.LBB442:
	.loc 2 782 5 view .LVU371
	.loc 2 782 19 is_stmt 0 view .LVU372
	str	r3, [r2, #1288]
.LVL107:
	.loc 2 782 19 view .LVU373
.LBE442:
.LBE441:
	.loc 2 654 1 view .LVU374
	b	.L78
.LVL108:
.L83:
.LBB443:
.LBB440:
	.loc 2 654 1 view .LVU375
	mov	r1, r4
	.loc 2 498 16 view .LVU376
	mov	r2, #1342177280
	b	.L77
.LVL109:
.L84:
	.loc 2 498 16 view .LVU377
.LBE440:
.LBE443:
.LBE437:
.LBE436:
.LBB444:
.LBB432:
.LBB429:
.LBB428:
	mov	r1, r4
	mov	r2, #1342177280
.LVL110:
.L79:
	.loc 2 498 16 view .LVU378
.LBE428:
.LBE429:
	.loc 2 661 5 is_stmt 1 view .LVU379
	.loc 2 661 38 is_stmt 0 view .LVU380
	movs	r3, #1
	lsls	r3, r3, r1
.LVL111:
.LBB430:
.LBI430:
	.loc 2 786 22 is_stmt 1 view .LVU381
.LBB431:
	.loc 2 788 5 view .LVU382
	.loc 2 788 19 is_stmt 0 view .LVU383
	str	r3, [r2, #1292]
.LVL112:
.L78:
	.loc 2 788 19 view .LVU384
.LBE431:
.LBE430:
.LBE432:
.LBE444:
	.loc 1 373 13 is_stmt 1 view .LVU385
.LBB445:
.LBI445:
	.loc 2 549 22 view .LVU386
	.loc 2 551 5 view .LVU387
.LBB446:
.LBI446:
	.loc 2 531 22 view .LVU388
.LBB447:
	.loc 2 539 5 view .LVU389
.LBB448:
.LBI448:
	.loc 2 490 33 view .LVU390
.LBB449:
	.loc 2 492 5 view .LVU391
	.loc 2 492 52 view .LVU392
	.loc 2 496 5 view .LVU393
	.loc 2 496 8 is_stmt 0 view .LVU394
	cmp	r4, #31
	bls	.L85
	.loc 2 502 9 is_stmt 1 view .LVU395
	.loc 2 502 25 is_stmt 0 view .LVU396
	and	r3, r4, #31
.LVL113:
	.loc 2 503 9 is_stmt 1 view .LVU397
	.loc 2 503 16 is_stmt 0 view .LVU398
	ldr	r2, .L90+4
.L80:
.LVL114:
	.loc 2 503 16 view .LVU399
.LBE449:
.LBE448:
	.loc 2 541 5 is_stmt 1 view .LVU400
	.loc 2 541 30 is_stmt 0 view .LVU401
	add	r3, r3, #448
.LVL115:
	.loc 2 541 30 view .LVU402
	movs	r1, #3
	str	r1, [r2, r3, lsl #2]
.LVL116:
	.loc 2 541 30 view .LVU403
.LBE447:
.LBE446:
.LBE445:
	.loc 1 374 13 is_stmt 1 view .LVU404
.LBB454:
.LBI454:
	.loc 1 177 22 view .LVU405
.LBB455:
	.loc 1 179 5 view .LVU406
.LBB456:
.LBI456:
	.loc 3 75 22 view .LVU407
.LBB457:
	.loc 3 77 5 view .LVU408
	.loc 3 78 5 view .LVU409
	.loc 3 78 14 is_stmt 0 view .LVU410
	lsr	r1, r4, r1
.LVL117:
	.loc 3 79 5 is_stmt 1 view .LVU411
	.loc 3 79 9 is_stmt 0 view .LVU412
	and	r4, r4, #7
.LVL118:
	.loc 3 80 5 is_stmt 1 view .LVU413
	.loc 3 80 23 is_stmt 0 view .LVU414
	ldr	r0, .L90+12
	.loc 3 80 29 view .LVU415
	movs	r2, #1
.LVL119:
	.loc 3 80 29 view .LVU416
	lsls	r2, r2, r4
	.loc 3 80 23 view .LVU417
	ldrb	r3, [r0, r1]	@ zero_extendqisi2
	orrs	r3, r3, r2
	strb	r3, [r0, r1]
.LVL120:
	.loc 3 80 23 view .LVU418
.LBE457:
.LBE456:
	.loc 1 180 1 view .LVU419
	movs	r0, #0
	b	.L72
.LVL121:
.L85:
	.loc 1 180 1 view .LVU420
.LBE455:
.LBE454:
.LBB458:
.LBB453:
.LBB452:
.LBB451:
.LBB450:
	mov	r3, r4
	.loc 2 498 16 view .LVU421
	mov	r2, #1342177280
	b	.L80
.LVL122:
.L82:
	.loc 2 498 16 view .LVU422
.LBE450:
.LBE451:
.LBE452:
.LBE453:
.LBE458:
.LBB459:
	.loc 1 354 26 view .LVU423
	movs	r0, #4
.LVL123:
	.loc 1 354 26 view .LVU424
.LBE459:
	.loc 1 378 5 is_stmt 1 view .LVU425
	.loc 1 378 5 view .LVU426
	.loc 1 378 5 view .LVU427
	.loc 1 378 5 view .LVU428
	.loc 1 378 5 view .LVU429
	.loc 1 378 98 view .LVU430
	.loc 1 379 5 view .LVU431
	.loc 1 379 12 is_stmt 0 view .LVU432
	b	.L72
.L91:
	.align	2
.L90:
	.word	.LANCHOR0
	.word	1342178048
	.word	1073766400
	.word	.LANCHOR0+94
.LFE323:
	.size	nrfx_gpiote_out_init, .-nrfx_gpiote_out_init
	.section	.text.nrfx_gpiote_out_uninit,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_uninit
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_uninit, %function
nrfx_gpiote_out_uninit:
.LVL124:
.LFB324:
	.loc 1 384 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 384 1 is_stmt 0 view .LVU434
	push	{r3, r4, r5, lr}
.LCFI10:
	mov	r4, r0
	.loc 1 385 5 is_stmt 1 view .LVU435
	.loc 1 385 49 view .LVU436
	.loc 1 386 5 view .LVU437
	.loc 1 386 33 view .LVU438
	.loc 1 388 5 view .LVU439
.LVL125:
.LBB460:
.LBI460:
	.loc 1 132 22 view .LVU440
.LBB461:
	.loc 1 134 5 view .LVU441
	.loc 1 134 33 is_stmt 0 view .LVU442
	ldr	r3, .L99
	add	r3, r3, r0
	ldrsb	r0, [r3, #48]
.LVL126:
	.loc 1 134 44 view .LVU443
	uxtb	r0, r0
.LVL127:
	.loc 1 134 44 view .LVU444
.LBE461:
.LBE460:
	.loc 1 388 8 view .LVU445
	cmp	r0, #7
	bls	.L98
.L93:
	.loc 1 393 5 is_stmt 1 view .LVU446
.LVL128:
.LBB462:
.LBI462:
	.loc 1 171 22 view .LVU447
.LBB463:
	.loc 1 173 5 view .LVU448
	.loc 1 173 31 is_stmt 0 view .LVU449
	ldr	r2, .L99
	adds	r3, r2, r4
	movs	r1, #255
	strb	r1, [r3, #48]
.LVL129:
	.loc 1 173 31 view .LVU450
.LBE463:
.LBE462:
	.loc 1 395 5 is_stmt 1 view .LVU451
.LBB464:
.LBI464:
	.loc 1 187 22 view .LVU452
.LBB465:
	.loc 1 189 5 view .LVU453
.LBB466:
.LBI466:
	.loc 3 61 26 view .LVU454
.LBB467:
	.loc 3 63 5 view .LVU455
	.loc 3 64 5 view .LVU456
	.loc 3 64 14 is_stmt 0 view .LVU457
	lsrs	r1, r4, #3
.LVL130:
	.loc 3 65 5 is_stmt 1 view .LVU458
	.loc 3 65 9 is_stmt 0 view .LVU459
	and	r0, r4, #7
.LVL131:
	.loc 3 66 5 is_stmt 1 view .LVU460
	.loc 3 66 15 is_stmt 0 view .LVU461
	movs	r3, #1
	lsls	r3, r3, r0
	.loc 3 66 32 view .LVU462
	adds	r2, r2, #94
	ldrb	r0, [r2, r1]	@ zero_extendqisi2
.LVL132:
	.loc 3 66 32 view .LVU463
.LBE467:
.LBE466:
.LBE465:
.LBE464:
	.loc 1 395 8 view .LVU464
	tst	r3, r0
	beq	.L92
	.loc 1 397 9 is_stmt 1 view .LVU465
.LVL133:
.LBB468:
.LBI468:
	.loc 2 573 22 view .LVU466
	.loc 2 575 5 view .LVU467
.LBB469:
.LBI469:
	.loc 2 531 22 view .LVU468
.LBB470:
	.loc 2 539 5 view .LVU469
.LBB471:
.LBI471:
	.loc 2 490 33 view .LVU470
.LBB472:
	.loc 2 492 5 view .LVU471
	.loc 2 492 52 view .LVU472
	.loc 2 496 5 view .LVU473
	.loc 2 496 8 is_stmt 0 view .LVU474
	cmp	r4, #31
	bls	.L96
	.loc 2 502 9 is_stmt 1 view .LVU475
.LVL134:
	.loc 2 502 25 is_stmt 0 view .LVU476
	and	r4, r4, #31
.LVL135:
	.loc 2 503 9 is_stmt 1 view .LVU477
	.loc 2 503 16 is_stmt 0 view .LVU478
	ldr	r0, .L99+4
	b	.L95
.LVL136:
.L98:
	.loc 2 503 16 view .LVU479
.LBE472:
.LBE471:
.LBE470:
.LBE469:
.LBE468:
	.loc 1 390 9 is_stmt 1 view .LVU480
	bl	channel_free
.LVL137:
	.loc 1 391 9 view .LVU481
.LBB477:
.LBI477:
	.loc 1 192 24 view .LVU482
.LBB478:
	.loc 1 194 5 view .LVU483
	.loc 1 194 32 is_stmt 0 view .LVU484
	ldr	r3, .L99
	add	r3, r3, r4
	ldrsb	r3, [r3, #48]
.LVL138:
	.loc 1 194 32 view .LVU485
.LBE478:
.LBE477:
.LBB479:
.LBI479:
	.loc 6 536 22 is_stmt 1 view .LVU486
.LBB480:
	.loc 6 538 5 view .LVU487
	.loc 6 538 29 is_stmt 0 view .LVU488
	add	r3, r3, #324
.LVL139:
	.loc 6 538 29 view .LVU489
	ldr	r2, .L99+8
	movs	r1, #0
	str	r1, [r2, r3, lsl #2]
	.loc 6 539 1 view .LVU490
	b	.L93
.LVL140:
.L96:
	.loc 6 539 1 view .LVU491
.LBE480:
.LBE479:
.LBB481:
.LBB476:
.LBB475:
.LBB474:
.LBB473:
	.loc 2 498 16 view .LVU492
	mov	r0, #1342177280
.LVL141:
.L95:
	.loc 2 498 16 view .LVU493
.LBE473:
.LBE474:
	.loc 2 541 5 is_stmt 1 view .LVU494
	.loc 2 541 30 is_stmt 0 view .LVU495
	add	r4, r4, #448
.LVL142:
	.loc 2 541 30 view .LVU496
	movs	r5, #2
	str	r5, [r0, r4, lsl #2]
.LVL143:
	.loc 2 541 30 view .LVU497
.LBE475:
.LBE476:
.LBE481:
	.loc 1 398 9 is_stmt 1 view .LVU498
.LBB482:
.LBI482:
	.loc 1 182 22 view .LVU499
.LBB483:
	.loc 1 184 5 view .LVU500
.LBB484:
.LBI484:
	.loc 3 89 22 view .LVU501
.LBB485:
	.loc 3 91 5 view .LVU502
	.loc 3 92 5 view .LVU503
	.loc 3 93 5 view .LVU504
	.loc 3 94 5 view .LVU505
	.loc 3 94 23 is_stmt 0 view .LVU506
	mvns	r3, r3
	sxtb	r3, r3
	ldrb	r0, [r2, r1]	@ zero_extendqisi2
.LVL144:
	.loc 3 94 23 view .LVU507
	ands	r3, r3, r0
	strb	r3, [r2, r1]
.LVL145:
.L92:
	.loc 3 94 23 view .LVU508
.LBE485:
.LBE484:
.LBE483:
.LBE482:
	.loc 1 400 1 view .LVU509
	pop	{r3, r4, r5, pc}
.L100:
	.align	2
.L99:
	.word	.LANCHOR0
	.word	1342178048
	.word	1073766400
.LFE324:
	.size	nrfx_gpiote_out_uninit, .-nrfx_gpiote_out_uninit
	.section	.text.nrfx_gpiote_out_set,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_set
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_set, %function
nrfx_gpiote_out_set:
.LVL146:
.LFB325:
	.loc 1 404 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 405 5 view .LVU511
	.loc 1 405 49 view .LVU512
	.loc 1 406 5 view .LVU513
	.loc 1 406 33 view .LVU514
	.loc 1 407 5 view .LVU515
	.loc 1 407 40 view .LVU516
	.loc 1 409 5 view .LVU517
.LBB486:
.LBI486:
	.loc 2 649 22 view .LVU518
.LBB487:
	.loc 2 651 5 view .LVU519
.LBB488:
.LBI488:
	.loc 2 490 33 view .LVU520
.LBB489:
	.loc 2 492 5 view .LVU521
	.loc 2 492 52 view .LVU522
	.loc 2 496 5 view .LVU523
	.loc 2 496 8 is_stmt 0 view .LVU524
	cmp	r0, #31
	bls	.L103
	.loc 2 502 9 is_stmt 1 view .LVU525
	.loc 2 502 25 is_stmt 0 view .LVU526
	and	r0, r0, #31
.LVL147:
	.loc 2 503 9 is_stmt 1 view .LVU527
	.loc 2 503 16 is_stmt 0 view .LVU528
	ldr	r2, .L104
.L102:
.LVL148:
	.loc 2 503 16 view .LVU529
.LBE489:
.LBE488:
	.loc 2 653 5 is_stmt 1 view .LVU530
	.loc 2 653 36 is_stmt 0 view .LVU531
	movs	r3, #1
	lsls	r3, r3, r0
.LVL149:
.LBB491:
.LBI491:
	.loc 2 780 22 is_stmt 1 view .LVU532
.LBB492:
	.loc 2 782 5 view .LVU533
	.loc 2 782 19 is_stmt 0 view .LVU534
	str	r3, [r2, #1288]
.LVL150:
	.loc 2 782 19 view .LVU535
.LBE492:
.LBE491:
.LBE487:
.LBE486:
	.loc 1 410 1 view .LVU536
	bx	lr
.LVL151:
.L103:
.LBB495:
.LBB494:
.LBB493:
.LBB490:
	.loc 2 498 16 view .LVU537
	mov	r2, #1342177280
	b	.L102
.L105:
	.align	2
.L104:
	.word	1342178048
.LBE490:
.LBE493:
.LBE494:
.LBE495:
.LFE325:
	.size	nrfx_gpiote_out_set, .-nrfx_gpiote_out_set
	.section	.text.nrfx_gpiote_out_clear,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_clear
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_clear, %function
nrfx_gpiote_out_clear:
.LVL152:
.LFB326:
	.loc 1 414 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 415 5 view .LVU539
	.loc 1 415 49 view .LVU540
	.loc 1 416 5 view .LVU541
	.loc 1 416 33 view .LVU542
	.loc 1 417 5 view .LVU543
	.loc 1 417 40 view .LVU544
	.loc 1 419 5 view .LVU545
.LBB496:
.LBI496:
	.loc 2 657 22 view .LVU546
.LBB497:
	.loc 2 659 5 view .LVU547
.LBB498:
.LBI498:
	.loc 2 490 33 view .LVU548
.LBB499:
	.loc 2 492 5 view .LVU549
	.loc 2 492 52 view .LVU550
	.loc 2 496 5 view .LVU551
	.loc 2 496 8 is_stmt 0 view .LVU552
	cmp	r0, #31
	bls	.L108
	.loc 2 502 9 is_stmt 1 view .LVU553
	.loc 2 502 25 is_stmt 0 view .LVU554
	and	r0, r0, #31
.LVL153:
	.loc 2 503 9 is_stmt 1 view .LVU555
	.loc 2 503 16 is_stmt 0 view .LVU556
	ldr	r2, .L109
.L107:
.LVL154:
	.loc 2 503 16 view .LVU557
.LBE499:
.LBE498:
	.loc 2 661 5 is_stmt 1 view .LVU558
	.loc 2 661 38 is_stmt 0 view .LVU559
	movs	r3, #1
	lsls	r3, r3, r0
.LVL155:
.LBB501:
.LBI501:
	.loc 2 786 22 is_stmt 1 view .LVU560
.LBB502:
	.loc 2 788 5 view .LVU561
	.loc 2 788 19 is_stmt 0 view .LVU562
	str	r3, [r2, #1292]
.LVL156:
	.loc 2 788 19 view .LVU563
.LBE502:
.LBE501:
.LBE497:
.LBE496:
	.loc 1 420 1 view .LVU564
	bx	lr
.LVL157:
.L108:
.LBB505:
.LBB504:
.LBB503:
.LBB500:
	.loc 2 498 16 view .LVU565
	mov	r2, #1342177280
	b	.L107
.L110:
	.align	2
.L109:
	.word	1342178048
.LBE500:
.LBE503:
.LBE504:
.LBE505:
.LFE326:
	.size	nrfx_gpiote_out_clear, .-nrfx_gpiote_out_clear
	.section	.text.nrfx_gpiote_out_toggle,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_toggle
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_toggle, %function
nrfx_gpiote_out_toggle:
.LVL158:
.LFB327:
	.loc 1 424 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 425 5 view .LVU567
	.loc 1 425 49 view .LVU568
	.loc 1 426 5 view .LVU569
	.loc 1 426 33 view .LVU570
	.loc 1 427 5 view .LVU571
	.loc 1 427 40 view .LVU572
	.loc 1 429 5 view .LVU573
.LBB510:
.LBI510:
	.loc 2 665 22 view .LVU574
.LBB511:
	.loc 2 667 5 view .LVU575
.LBB512:
.LBI512:
	.loc 2 490 33 view .LVU576
.LBB513:
	.loc 2 492 5 view .LVU577
	.loc 2 492 52 view .LVU578
	.loc 2 496 5 view .LVU579
	.loc 2 496 8 is_stmt 0 view .LVU580
	cmp	r0, #31
	bls	.L113
	.loc 2 502 9 is_stmt 1 view .LVU581
	.loc 2 502 25 is_stmt 0 view .LVU582
	and	r0, r0, #31
.LVL159:
	.loc 2 503 9 is_stmt 1 view .LVU583
	.loc 2 503 16 is_stmt 0 view .LVU584
	ldr	r1, .L114
.L112:
.LVL160:
	.loc 2 503 16 view .LVU585
.LBE513:
.LBE512:
	.loc 2 668 5 is_stmt 1 view .LVU586
	.loc 2 668 21 is_stmt 0 view .LVU587
	ldr	r3, [r1, #1284]
.LVL161:
	.loc 2 670 5 is_stmt 1 view .LVU588
	.loc 2 670 39 is_stmt 0 view .LVU589
	movs	r2, #1
	lsls	r2, r2, r0
	.loc 2 670 32 view .LVU590
	bic	r0, r2, r3
.LVL162:
	.loc 2 670 17 view .LVU591
	str	r0, [r1, #1288]
	.loc 2 671 5 is_stmt 1 view .LVU592
	.loc 2 671 31 is_stmt 0 view .LVU593
	ands	r3, r3, r2
.LVL163:
	.loc 2 671 17 view .LVU594
	str	r3, [r1, #1292]
	.loc 2 671 17 view .LVU595
.LBE511:
.LBE510:
	.loc 1 430 1 view .LVU596
	bx	lr
.LVL164:
.L113:
.LBB517:
.LBB516:
.LBB515:
.LBB514:
	.loc 2 498 16 view .LVU597
	mov	r1, #1342177280
	b	.L112
.L115:
	.align	2
.L114:
	.word	1342178048
.LBE514:
.LBE515:
.LBE516:
.LBE517:
.LFE327:
	.size	nrfx_gpiote_out_toggle, .-nrfx_gpiote_out_toggle
	.section	.text.nrfx_gpiote_out_task_enable,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_task_enable
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_task_enable, %function
nrfx_gpiote_out_task_enable:
.LVL165:
.LFB328:
	.loc 1 434 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 435 5 view .LVU599
	.loc 1 435 49 view .LVU600
	.loc 1 436 5 view .LVU601
	.loc 1 436 33 view .LVU602
	.loc 1 437 5 view .LVU603
	.loc 1 437 39 view .LVU604
	.loc 1 439 5 view .LVU605
	.loc 1 439 58 is_stmt 0 view .LVU606
	ldr	r3, .L117
	add	r3, r3, r0
	ldrsb	r3, [r3, #48]
.LVL166:
.LBB518:
.LBI518:
	.loc 6 496 22 is_stmt 1 view .LVU607
.LBB519:
	.loc 6 498 5 view .LVU608
	.loc 6 498 47 is_stmt 0 view .LVU609
	ldr	r1, .L117+4
	add	r3, r3, #324
.LVL167:
	.loc 6 498 47 view .LVU610
	ldr	r2, [r1, r3, lsl #2]
	.loc 6 498 14 view .LVU611
	orr	r2, r2, #3
.LVL168:
	.loc 6 509 5 is_stmt 1 view .LVU612
	.loc 6 509 29 is_stmt 0 view .LVU613
	str	r2, [r1, r3, lsl #2]
.LVL169:
	.loc 6 509 29 view .LVU614
.LBE519:
.LBE518:
	.loc 1 440 1 view .LVU615
	bx	lr
.L118:
	.align	2
.L117:
	.word	.LANCHOR0
	.word	1073766400
.LFE328:
	.size	nrfx_gpiote_out_task_enable, .-nrfx_gpiote_out_task_enable
	.section	.text.nrfx_gpiote_out_task_disable,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_task_disable
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_task_disable, %function
nrfx_gpiote_out_task_disable:
.LVL170:
.LFB329:
	.loc 1 444 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 445 5 view .LVU617
	.loc 1 445 49 view .LVU618
	.loc 1 446 5 view .LVU619
	.loc 1 446 33 view .LVU620
	.loc 1 447 5 view .LVU621
	.loc 1 447 39 view .LVU622
	.loc 1 449 5 view .LVU623
	.loc 1 449 59 is_stmt 0 view .LVU624
	ldr	r3, .L120
	add	r3, r3, r0
	ldrsb	r3, [r3, #48]
.LVL171:
.LBB520:
.LBI520:
	.loc 6 512 22 is_stmt 1 view .LVU625
.LBB521:
	.loc 6 514 5 view .LVU626
	.loc 6 514 29 is_stmt 0 view .LVU627
	ldr	r1, .L120+4
	add	r3, r3, #324
.LVL172:
	.loc 6 514 29 view .LVU628
	ldr	r2, [r1, r3, lsl #2]
	bic	r2, r2, #3
	str	r2, [r1, r3, lsl #2]
.LVL173:
	.loc 6 514 29 view .LVU629
.LBE521:
.LBE520:
	.loc 1 450 1 view .LVU630
	bx	lr
.L121:
	.align	2
.L120:
	.word	.LANCHOR0
	.word	1073766400
.LFE329:
	.size	nrfx_gpiote_out_task_disable, .-nrfx_gpiote_out_task_disable
	.section	.text.nrfx_gpiote_out_task_get,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_task_get
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_task_get, %function
nrfx_gpiote_out_task_get:
.LVL174:
.LFB330:
	.loc 1 454 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 455 5 view .LVU632
	.loc 1 455 49 view .LVU633
	.loc 1 456 5 view .LVU634
	.loc 1 456 39 view .LVU635
	.loc 1 458 5 view .LVU636
.LBB522:
.LBI522:
	.loc 1 192 24 view .LVU637
.LBB523:
	.loc 1 194 5 view .LVU638
	.loc 1 194 32 is_stmt 0 view .LVU639
	ldr	r3, .L123
	add	r3, r3, r0
	ldrsb	r0, [r3, #48]
.LVL175:
	.loc 1 194 32 view .LVU640
.LBE523:
.LBE522:
	.loc 1 458 12 view .LVU641
	lsls	r0, r0, #2
	.loc 1 459 1 view .LVU642
	and	r0, r0, #252
	bx	lr
.L124:
	.align	2
.L123:
	.word	.LANCHOR0
.LFE330:
	.size	nrfx_gpiote_out_task_get, .-nrfx_gpiote_out_task_get
	.section	.text.nrfx_gpiote_out_task_addr_get,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_out_task_addr_get
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_out_task_addr_get, %function
nrfx_gpiote_out_task_addr_get:
.LVL176:
.LFB331:
	.loc 1 463 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 463 1 is_stmt 0 view .LVU644
	push	{r3, lr}
.LCFI11:
	.loc 1 464 5 is_stmt 1 view .LVU645
	.loc 1 464 31 is_stmt 0 view .LVU646
	bl	nrfx_gpiote_out_task_get
.LVL177:
	.loc 1 465 5 is_stmt 1 view .LVU647
.LBB524:
.LBI524:
	.loc 6 404 26 view .LVU648
.LBB525:
	.loc 6 406 5 view .LVU649
	.loc 6 406 5 is_stmt 0 view .LVU650
.LBE525:
.LBE524:
	.loc 1 466 1 view .LVU651
	add	r0, r0, #1073741824
.LVL178:
	.loc 1 466 1 view .LVU652
	add	r0, r0, #24576
	pop	{r3, pc}
.LFE331:
	.size	nrfx_gpiote_out_task_addr_get, .-nrfx_gpiote_out_task_addr_get
	.section	.text.nrfx_gpiote_set_task_get,"ax",%progbits
	.align	1
	.global	nrfx_gpiote_set_task_get
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_gpiote_set_task_get, %function
nrfx_gpiote_set_task_get:
.LVL179:
.LFB332:
	.loc 1 471 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 472 5 view .LVU654
	.loc 1 472 49 view .LVU655
	.loc 1 47