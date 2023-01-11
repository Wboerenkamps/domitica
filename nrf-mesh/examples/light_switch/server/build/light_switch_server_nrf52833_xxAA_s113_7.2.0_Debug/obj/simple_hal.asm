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
	.file	"simple_hal.c"
	.text
.Ltext0:
	.section	.text.button_event_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	button_event_handler, %function
button_event_handler:
.LVL0:
.LFB308:
	.file 1 "C:\\project domotica\\nrf-mesh\\examples\\light_switch\\server\\simple_hal.c"
	.loc 1 79 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 79 1 is_stmt 0 view .LVU1
	push	{r4, r5, r6, lr}
.LCFI0:
	mov	r5, r0
	.loc 1 80 5 is_stmt 1 view .LVU2
.LBB15:
	.loc 1 80 10 view .LVU3
.LVL1:
	.loc 1 80 19 is_stmt 0 view .LVU4
	movs	r4, #0
	.loc 1 80 5 view .LVU5
	b	.L2
.LVL2:
.L4:
	.loc 1 86 16 view .LVU6
	ldr	r2, .L9
	cmp	r3, r2
	bhi	.L7
.L3:
	.loc 1 80 59 is_stmt 1 discriminator 2 view .LVU7
	adds	r4, r4, #1
.LVL3:
.L2:
	.loc 1 80 28 discriminator 1 view .LVU8
	cmp	r4, #3
	bhi	.L8
	.loc 1 82 9 view .LVU9
	.loc 1 82 34 is_stmt 0 view .LVU10
	ldr	r3, .L9+4
	ldrb	r3, [r3, r4]	@ zero_extendqisi2
	.loc 1 82 12 view .LVU11
	cmp	r3, r5
	bne	.L3
	.loc 1 86 13 is_stmt 1 view .LVU12
	.loc 1 86 17 is_stmt 0 view .LVU13
	ldr	r3, .L9+8
	ldr	r6, [r3]
	bl	timer_now
.LVL4:
.LBB16:
.LBI16:
	.file 2 "../../../mesh/core/include/timer.h"
	.loc 2 83 27 is_stmt 1 view .LVU14
.LBB17:
	.loc 2 85 5 view .LVU15
	.loc 2 85 8 is_stmt 0 view .LVU16
	subs	r3, r6, r0
	bpl	.L4
	.loc 2 87 9 is_stmt 1 view .LVU17
	.loc 2 87 22 is_stmt 0 view .LVU18
	subs	r3, r0, r6
	b	.L4
.LVL5:
.L7:
	.loc 2 87 22 view .LVU19
.LBE17:
.LBE16:
	.loc 1 88 17 is_stmt 1 view .LVU20
	.loc 1 88 39 is_stmt 0 view .LVU21
	bl	timer_now
.LVL6:
	.loc 1 88 37 view .LVU22
	ldr	r3, .L9+8
	str	r0, [r3]
	.loc 1 89 17 is_stmt 1 view .LVU23
	ldr	r3, .L9+12
	ldr	r3, [r3]
	mov	r0, r4
	blx	r3
.LVL7:
	b	.L3
.L8:
	.loc 1 89 17 is_stmt 0 view .LVU24
.LBE15:
	.loc 1 93 1 view .LVU25
	pop	{r4, r5, r6, pc}
.LVL8:
.L10:
	.loc 1 93 1 view .LVU26
	.align	2
.L9:
	.word	400000
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
.LFE308:
	.size	button_event_handler, .-button_event_handler
	.section	.text.hal_led_pin_get,"ax",%progbits
	.align	1
	.global	hal_led_pin_get
	.syntax unified
	.thumb
	.thumb_func
	.type	hal_led_pin_get, %function
hal_led_pin_get:
.LVL9:
.LFB312:
	.loc 1 145 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 147 5 view .LVU28
.LBB18:
.LBI18:
	.file 3 "C:/nrf-mesh/nRF5_SDK_17.1.0_ddde560/modules/nrfx/hal/nrf_gpio.h"
	.loc 3 696 26 view .LVU29
.LBB19:
	.loc 3 698 5 view .LVU30
.LBB20:
.LBI20:
	.loc 3 490 33 view .LVU31
.LBB21:
	.loc 3 492 5 view .LVU32
	.loc 3 492 52 view .LVU33
	.loc 3 496 5 view .LVU34
	.loc 3 496 8 is_stmt 0 view .LVU35
	cmp	r0, #31
	bls	.L13
	.loc 3 502 9 is_stmt 1 view .LVU36
	.loc 3 502 25 is_stmt 0 view .LVU37
	and	r0, r0, #31
.LVL10:
	.loc 3 503 9 is_stmt 1 view .LVU38
	.loc 3 503 16 is_stmt 0 view .LVU39
	ldr	r3, .L14
.L12:
.LVL11:
	.loc 3 503 16 view .LVU40
.LBE21:
.LBE20:
	.loc 3 700 5 is_stmt 1 view .LVU41
.LBB23:
.LBI23:
	.loc 3 768 26 view .LVU42
.LBB24:
	.loc 3 770 5 view .LVU43
	.loc 3 770 17 is_stmt 0 view .LVU44
	ldr	r3, [r3, #1284]
.LVL12:
	.loc 3 770 17 view .LVU45
.LBE24:
.LBE23:
	.loc 3 700 42 view .LVU46
	lsrs	r3, r3, r0
.LVL13:
	.loc 3 700 42 view .LVU47
.LBE19:
.LBE18:
	.loc 1 147 40 view .LVU48
	tst	r3, #1
	.loc 1 148 1 view .LVU49
	ite	eq
	moveq	r0, #1
	movne	r0, #0
	bx	lr
.LVL14:
.L13:
.LBB27:
.LBB26:
.LBB25:
.LBB22:
	.loc 3 498 16 view .LVU50
	mov	r3, #1342177280
	b	.L12
.L15:
	.align	2
.L14:
	.word	1342178048
.LBE22:
.LBE25:
.LBE26:
.LBE27:
.LFE312:
	.size	hal_led_pin_get, .-hal_led_pin_get
	.section	.text.hal_led_mask_state_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	hal_led_mask_state_get, %function
hal_led_mask_state_get:
.LVL15:
.LFB309:
	.loc 1 96 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 96 1 is_stmt 0 view .LVU52
	push	{r4, r5, r6, lr}
.LCFI1:
	mov	r5, r0
	.loc 1 97 5 is_stmt 1 view .LVU53
.LVL16:
	.loc 1 98 5 view .LVU54
.LBB28:
	.loc 1 98 10 view .LVU55
	.loc 1 98 19 is_stmt 0 view .LVU56
	movs	r4, #0
.LBE28:
	.loc 1 97 14 view .LVU57
	mov	r6, r4
.LBB29:
	.loc 1 98 5 view .LVU58
	b	.L17
.LVL17:
.L18:
	.loc 1 98 55 is_stmt 1 discriminator 2 view .LVU59
	adds	r4, r4, #1
.LVL18:
.L17:
	.loc 1 98 28 discriminator 1 view .LVU60
	cmp	r4, #3
	bhi	.L21
	.loc 1 100 9 view .LVU61
	.loc 1 100 27 is_stmt 0 view .LVU62
	movs	r3, #1
	lsls	r3, r3, r4
	.loc 1 100 12 view .LVU63
	tst	r3, r5
	beq	.L18
	.loc 1 102 13 is_stmt 1 view .LVU64
	.loc 1 102 30 is_stmt 0 view .LVU65
	ldr	r3, .L22
	ldrb	r0, [r3, r4]	@ zero_extendqisi2
	bl	hal_led_pin_get
.LVL19:
	.loc 1 102 62 view .LVU66
	lsls	r0, r0, r4
	.loc 1 102 19 view .LVU67
	orrs	r6, r6, r0
.LVL20:
	.loc 1 102 19 view .LVU68
	b	.L18
.L21:
	.loc 1 102 19 view .LVU69
.LBE29:
	.loc 1 105 5 is_stmt 1 view .LVU70
	.loc 1 106 1 is_stmt 0 view .LVU71
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.LVL21:
.L23:
	.loc 1 106 1 view .LVU72
	.align	2
.L22:
	.word	.LANCHOR3
.LFE309:
	.size	hal_led_mask_state_get, .-hal_led_mask_state_get
	.section	.text.hal_led_pin_set,"ax",%progbits
	.align	1
	.global	hal_led_pin_set
	.syntax unified
	.thumb
	.thumb_func
	.type	hal_led_pin_set, %function
hal_led_pin_set:
.LVL22:
.LFB313:
	.loc 1 151 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 151 1 is_stmt 0 view .LVU74
	push	{r3, lr}
.LCFI2:
	.loc 1 153 5 is_stmt 1 view .LVU75
	.loc 1 153 8 is_stmt 0 view .LVU76
	cbz	r1, .L25
	.loc 1 155 9 is_stmt 1 view .LVU77
	bl	nrfx_gpiote_out_clear
.LVL23:
.L24:
	.loc 1 161 1 is_stmt 0 view .LVU78
	pop	{r3, pc}
.LVL24:
.L25:
	.loc 1 159 9 is_stmt 1 view .LVU79
	bl	nrfx_gpiote_out_set
.LVL25:
	.loc 1 161 1 is_stmt 0 view .LVU80
	b	.L24
.LFE313:
	.size	hal_led_pin_set, .-hal_led_pin_set
	.section	.text.hal_led_mask_toggle,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	hal_led_mask_toggle, %function
hal_led_mask_toggle:
.LVL26:
.LFB310:
	.loc 1 109 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 109 1 is_stmt 0 view .LVU82
	push	{r4, r5, r6, lr}
.LCFI3:
	mov	r5, r0
	.loc 1 110 5 is_stmt 1 view .LVU83
.LBB30:
	.loc 1 110 10 view .LVU84
.LVL27:
	.loc 1 110 19 is_stmt 0 view .LVU85
	movs	r4, #0
	.loc 1 110 5 view .LVU86
	b	.L29
.LVL28:
.L30:
	.loc 1 110 56 is_stmt 1 discriminator 2 view .LVU87
	adds	r4, r4, #1
.LVL29:
.L29:
	.loc 1 110 28 discriminator 1 view .LVU88
	cmp	r4, #3
	bhi	.L33
	.loc 1 112 9 view .LVU89
	.loc 1 112 27 is_stmt 0 view .LVU90
	movs	r3, #1
	lsls	r3, r3, r4
	.loc 1 112 12 view .LVU91
	tst	r3, r5
	beq	.L30
	.loc 1 114 13 is_stmt 1 view .LVU92
	.loc 1 114 40 is_stmt 0 view .LVU93
	ldr	r3, .L34
	ldrb	r6, [r3, r4]	@ zero_extendqisi2
	.loc 1 114 46 view .LVU94
	mov	r0, r6
	bl	hal_led_pin_get
.LVL30:
	.loc 1 114 13 view .LVU95
	eor	r1, r0, #1
	uxtb	r1, r1
	mov	r0, r6
	bl	hal_led_pin_set
.LVL31:
	b	.L30
.L33:
	.loc 1 114 13 view .LVU96
.LBE30:
	.loc 1 117 1 view .LVU97
	pop	{r4, r5, r6, pc}
.LVL32:
.L35:
	.loc 1 117 1 view .LVU98
	.align	2
.L34:
	.word	.LANCHOR3
.LFE310:
	.size	hal_led_mask_toggle, .-hal_led_mask_toggle
	.section	.text.led_timeout_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	led_timeout_handler, %function
led_timeout_handler:
.LVL33:
.LFB311:
	.loc 1 125 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 125 1 is_stmt 0 view .LVU100
	push	{r4, lr}
.LCFI4:
	.loc 1 126 5 is_stmt 1 view .LVU101
.LBB31:
	.loc 1 126 5 view .LVU102
	ldr	r3, .L45
	ldr	r3, [r3]
.LVL34:
	.loc 1 126 5 view .LVU103
	cbz	r3, .L43
.LVL35:
.L37:
	.loc 1 126 5 discriminator 3 view .LVU104
.LBE31:
	.loc 1 126 5 discriminator 3 view .LVU105
	.loc 1 127 5 discriminator 3 view .LVU106
	ldr	r3, .L45+4
	ldr	r0, [r3]
	bl	hal_led_mask_toggle
.LVL36:
	.loc 1 129 5 discriminator 3 view .LVU107
	.loc 1 129 18 is_stmt 0 discriminator 3 view .LVU108
	ldr	r3, .L45
	ldr	r4, [r3]
	subs	r4, r4, #1
	str	r4, [r3]
	.loc 1 130 5 is_stmt 1 discriminator 3 view .LVU109
	.loc 1 130 8 is_stmt 0 discriminator 3 view .LVU110
	cbz	r4, .L44
.L36:
	.loc 1 141 1 view .LVU111
	pop	{r4, pc}
.LVL37:
.L43:
.LBB32:
	.loc 1 126 5 is_stmt 1 discriminator 1 view .LVU112
	.loc 1 126 5 discriminator 1 view .LVU113
	movs	r0, #0
.LVL38:
	.loc 1 126 5 is_stmt 0 discriminator 1 view .LVU114
	bl	app_error_handler_bare
.LVL39:
	.loc 1 126 5 discriminator 1 view .LVU115
	b	.L37
.L44:
.LBE32:
	.loc 1 132 9 is_stmt 1 view .LVU116
	.loc 1 132 16 is_stmt 0 view .LVU117
	ldr	r0, .L45+8
	bl	app_timer_stop
.LVL40:
	.loc 1 133 9 is_stmt 1 view .LVU118
.LBB33:
	.loc 1 133 14 view .LVU119
	.loc 1 133 9 is_stmt 0 view .LVU120
	b	.L39
.LVL41:
.L40:
	.loc 1 133 60 is_stmt 1 discriminator 2 view .LVU121
	adds	r4, r4, #1
.LVL42:
.L39:
	.loc 1 133 32 discriminator 1 view .LVU122
	cmp	r4, #3
	bhi	.L36
	.loc 1 135 13 view .LVU123
	.loc 1 135 35 is_stmt 0 view .LVU124
	movs	r3, #1
	lsls	r3, r3, r4
	.loc 1 135 30 view .LVU125
	ldr	r2, .L45+4
	ldr	r2, [r2]
	.loc 1 135 16 view .LVU126
	tst	r3, r2
	beq	.L40
	.loc 1 137 17 is_stmt 1 view .LVU127
	.loc 1 137 64 is_stmt 0 view .LVU128
	ldr	r3, .L45+12
	ldr	r1, [r3]
	lsrs	r1, r1, r4
	.loc 1 137 70 view .LVU129
	and	r1, r1, #1
	.loc 1 137 17 view .LVU130
	ldr	r3, .L45+16
	ldrb	r0, [r3, r4]	@ zero_extendqisi2
	bl	hal_led_pin_set
.LVL43:
	b	.L40
.L46:
	.align	2
.L45:
	.word	.LANCHOR4
	.word	.LANCHOR5
	.word	.LANCHOR6
	.word	.LANCHOR7
	.word	.LANCHOR3
.LBE33:
.LFE311:
	.size	led_timeout_handler, .-led_timeout_handler
	.section	.text.hal_led_mask_set,"ax",%progbits
	.align	1
	.global	hal_led_mask_set
	.syntax unified
	.thumb
	.thumb_func
	.type	hal_led_mask_set, %function
hal_led_mask_set:
.LVL44:
.LFB314:
	.loc 1 164 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 164 1 is_stmt 0 view .LVU132
	push	{r4, r5, r6, lr}
.LCFI5:
	mov	r5, r0
	mov	r6, r1
	.loc 1 165 5 is_stmt 1 view .LVU133
.LBB34:
	.loc 1 165 10 view .LVU134
.LVL45:
	.loc 1 165 19 is_stmt 0 view .LVU135
	movs	r4, #0
	.loc 1 165 5 view .LVU136
	b	.L48
.LVL46:
.L49:
	.loc 1 165 56 is_stmt 1 discriminator 2 view .LVU137
	adds	r4, r4, #1
.LVL47:
.L48:
	.loc 1 165 28 discriminator 1 view .LVU138
	cmp	r4, #3
	bhi	.L52
	.loc 1 167 9 view .LVU139
	.loc 1 167 27 is_stmt 0 view .LVU140
	movs	r3, #1
	lsls	r3, r3, r4
	.loc 1 167 12 view .LVU141
	tst	r3, r5
	beq	.L49
	.loc 1 169 13 is_stmt 1 view .LVU142
	mov	r1, r6
	ldr	r3, .L53
	ldrb	r0, [r3, r4]	@ zero_extendqisi2
	bl	hal_led_pin_set
.LVL48:
	b	.L49
.L52:
	.loc 1 169 13 is_stmt 0 view .LVU143
.LBE34:
	.loc 1 172 1 view .LVU144
	pop	{r4, r5, r6, pc}
.LVL49:
.L54:
	.loc 1 172 1 view .LVU145
	.align	2
.L53:
	.word	.LANCHOR3
.LFE314:
	.size	hal_led_mask_set, .-hal_led_mask_set
	.global	__aeabi_uldivmod
	.section	.text.hal_led_blink_ms,"ax",%progbits
	.align	1
	.global	hal_led_blink_ms
	.syntax unified
	.thumb
	.thumb_func
	.type	hal_led_blink_ms, %function
hal_led_blink_ms:
.LVL50:
.LFB315:
	.loc 1 175 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 176 5 view .LVU147
	.loc 1 176 8 is_stmt 0 view .LVU148
	cbz	r2, .L58
	.loc 1 175 1 discriminator 1 view .LVU149
	push	{r4, lr}
.LCFI6:
	mov	r4, r1
	mov	r3, r2
	.loc 1 176 26 discriminator 1 view .LVU150
	cmp	r1, #19
	bhi	.L61
.LVL51:
.L55:
	.loc 1 191 1 view .LVU151
	pop	{r4, pc}
.LVL52:
.L61:
	.loc 1 181 5 is_stmt 1 view .LVU152
	.loc 1 181 19 is_stmt 0 view .LVU153
	ldr	r2, .L62
.LVL53:
	.loc 1 181 19 view .LVU154
	str	r0, [r2]
	.loc 1 182 5 is_stmt 1 view .LVU155
	.loc 1 182 33 is_stmt 0 view .LVU156
	lsls	r3, r3, #1
.LVL54:
	.loc 1 182 37 view .LVU157
	subs	r3, r3, #1
	.loc 1 182 19 view .LVU158
	ldr	r2, .L62+4
	str	r3, [r2]
	.loc 1 183 5 is_stmt 1 view .LVU159
	.loc 1 183 20 is_stmt 0 view .LVU160
	bl	hal_led_mask_state_get
.LVL55:
	.loc 1 183 18 view .LVU161
	ldr	r3, .L62+8
	str	r0, [r3]
	.loc 1