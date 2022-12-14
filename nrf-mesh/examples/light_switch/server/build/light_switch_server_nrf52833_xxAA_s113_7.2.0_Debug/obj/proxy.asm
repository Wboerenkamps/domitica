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
	.file	"proxy.c"
	.text
.Ltext0:
	.section	.text.config_packet_buffer_len,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	config_packet_buffer_len, %function
config_packet_buffer_len:
.LVL0:
.LFB425:
	.file 1 "C:\\project domotica\\nrf-mesh\\mesh\\gatt\\src\\proxy.c"
	.loc 1 407 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 408 5 view .LVU1
	.loc 1 409 1 is_stmt 0 view .LVU2
	adds	r0, r0, #17
.LVL1:
	.loc 1 409 1 view .LVU3
	bx	lr
.LFE425:
	.size	config_packet_buffer_len, .-config_packet_buffer_len
	.section	.text.proxy_delete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	proxy_delete, %function
proxy_delete:
.LFB458:
	.loc 1 1116 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI0:
	str	r0, [sp, #4]
	.loc 1 1117 5 view .LVU5
	.loc 1 1117 15 is_stmt 0 view .LVU6
	ldr	r3, .L4
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 1119 5 is_stmt 1 view .LVU7
	.loc 1 1124 1 is_stmt 0 view .LVU8
	add	sp, sp, #8
.LCFI1:
	@ sp needed
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
.LFE458:
	.size	proxy_delete, .-proxy_delete
	.section	.text.beacon_cycle_trigger,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	beacon_cycle_trigger, %function
beacon_cycle_trigger:
.LVL2:
.LFB419:
	.loc 1 309 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 309 1 is_stmt 0 view .LVU10
	push	{r3, lr}
.LCFI2:
	mov	r1, r0
	.loc 1 310 5 is_stmt 1 view .LVU11
	.loc 1 310 41 is_stmt 0 view .LVU12
	movs	r0, #0
.LVL3:
	.loc 1 310 41 view .LVU13
	str	r0, [r1, #72]
	.loc 1 311 5 is_stmt 1 view .LVU14
	add	r2, r1, #69
	adds	r1, r1, #72
.LVL4:
	.loc 1 311 5 is_stmt 0 view .LVU15
	bl	nrf_mesh_beacon_info_next_get
.LVL5:
	.loc 1 312 1 view .LVU16
	pop	{r3, pc}
.LFE419:
	.size	beacon_cycle_trigger, .-beacon_cycle_trigger
	.section	.text.adv_net_iterate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	adv_net_iterate, %function
adv_net_iterate:
.LFB436:
	.loc 1 760 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI3:
	sub	sp, sp, #8
.LCFI4:
	.loc 1 761 5 view .LVU18
	.loc 1 762 5 view .LVU19
	ldr	r4, .L12
	add	r2, sp, #7
	add	r1, r4, #28
	movs	r0, #0
	bl	nrf_mesh_beacon_info_next_get
.LVL6:
	.loc 1 763 5 view .LVU20
	.loc 1 763 22 is_stmt 0 view .LVU21
	ldr	r3, [r4, #28]
	.loc 1 763 8 view .LVU22
	cbz	r3, .L11
.L8:
	.loc 1 769 1 view .LVU23
	add	sp, sp, #8
.LCFI5:
	@ sp needed
	pop	{r4, pc}
.L11:
.LCFI6:
	.loc 1 766 9 is_stmt 1 view .LVU24
	add	r2, sp, #7
	add	r1, r4, #28
	movs	r0, #0
	bl	nrf_mesh_beacon_info_next_get
.LVL7:
	.loc 1 767 9 view .LVU25
	.loc 1 767 9 view .LVU26
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L8
.LBB79:
	.loc 1 767 9 discriminator 1 view .LVU27
	.loc 1 767 9 discriminator 1 view .LVU28
	.syntax unified
@ 767 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL8:
	.loc 1 767 9 discriminator 1 view .LVU29
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL9:
	.loc 1 767 9 is_stmt 0 discriminator 1 view .LVU30
.LBE79:
	.loc 1 767 9 is_stmt 1 discriminator 1 view .LVU31
	.loc 1 769 1 is_stmt 0 discriminator 1 view .LVU32
	b	.L8
.L13:
	.align	2
.L12:
	.word	.LANCHOR1
.LFE436:
	.size	adv_net_iterate, .-adv_net_iterate
	.section	.text.packet_alloc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	packet_alloc, %function
packet_alloc:
.LVL10:
.LFB415:
	.loc 1 258 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 258 1 is_stmt 0 view .LVU34
	push	{r4, r5, r6, r7, r8, lr}
.LCFI7:
	mov	r5, r0
	mov	r6, r1
	mov	r7, r2
	mov	r8, r3
	.loc 1 259 5 is_stmt 1 view .LVU35
	.loc 1 259 5 view .LVU36
	ldr	r3, [r0, #76]
.LVL11:
	.loc 1 259 5 is_stmt 0 view .LVU37
	cbz	r3, .L15
.LBB80:
	.loc 1 259 5 is_stmt 1 discriminator 1 view .LVU38
	.loc 1 259 5 discriminator 1 view .LVU39
	.syntax unified
@ 259 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL12:
	.loc 1 259 5 discriminator 1 view .LVU40
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL13:
.L15:
	.loc 1 259 5 is_stmt 0 discriminator 1 view .LVU41
.LBE80:
	.loc 1 259 5 is_stmt 1 discriminator 3 view .LVU42
	.loc 1 260 5 discriminator 3 view .LVU43
.LBB81:
.LBI81:
	.loc 1 171 24 discriminator 3 view .LVU44
.LBB82:
	.loc 1 173 5 discriminator 3 view .LVU45
	.loc 1 173 26 is_stmt 0 discriminator 3 view .LVU46
	ldr	r4, .L19
	sub	ip, r5, r4
	asr	ip, ip, #2
	ldr	r3, .L19+4
	mul	ip, r3, ip
.LVL14:
	.loc 1 173 26 discriminator 3 view .LVU47
.LBE82:
.LBE81:
	.loc 1 260 36 discriminator 3 view .LVU48
	mov	r3, r8
	uxth	r2, r7
	mov	r1, r6
	uxth	r0, ip
	bl	mesh_gatt_packet_alloc
.LVL15:
	.loc 1 260 34 discriminator 3 view .LVU49
	str	r0, [r5, #76]
	.loc 1 264 5 is_stmt 1 discriminator 3 view .LVU50
	.loc 1 264 56 is_stmt 0 discriminator 3 view .LVU51
	cbz	r0, .L17
	.loc 1 264 56 view .LVU52
	movs	r0, #0
.L14:
	.loc 1 265 1 view .LVU53
	pop	{r4, r5, r6, r7, r8, pc}
.LVL16:
.L17:
	.loc 1 264 56 view .LVU54
	movs	r0, #4
	b	.L14
.L20:
	.align	2
.L19:
	.word	.LANCHOR2
	.word	-373475417
.LFE415:
	.size	packet_alloc, .-packet_alloc
	.section	.text.packet_send,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	packet_send, %function
packet_send:
.LVL17:
.LFB416:
	.loc 1 268 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 268 1 is_stmt 0 view .LVU56
	push	{r3, r4, r5, lr}
.LCFI8:
	mov	r5, r0
	.loc 1 269 5 is_stmt 1 view .LVU57
	.loc 1 269 5 view .LVU58
	ldr	r3, [r0, #76]
	cbz	r3, .L25
.LVL18:
.L22:
	.loc 1 269 5 discriminator 3 view .LVU59
	.loc 1 271 5 discriminator 3 view .LVU60
.LBB83:
.LBI83:
	.loc 1 171 24 discriminator 3 view .LVU61
.LBB84:
	.loc 1 173 5 discriminator 3 view .LVU62
	.loc 1 173 26 is_stmt 0 discriminator 3 view .LVU63
	ldr	r4, .L27
	subs	r4, r5, r4
	asrs	r4, r4, #2
	ldr	r3, .L27+4
	mul	r4, r3, r4
	uxth	r4, r4
.LVL19:
	.loc 1 173 26 discriminator 3 view .LVU64
.LBE84:
.LBE83:
	.loc 1 271 8 discriminator 3 view .LVU65
	ldr	r1, [r5, #76]
	mov	r0, r4
	bl	mesh_gatt_packet_send
.LVL20:
	.loc 1 271 7 discriminator 3 view .LVU66
	cbnz	r0, .L26
.L23:
	.loc 1 275 5 is_stmt 1 view .LVU67
	.loc 1 275 34 is_stmt 0 view .LVU68
	movs	r3, #0
	str	r3, [r5, #76]
	.loc 1 276 1 view .LVU69
	pop	{r3, r4, r5, pc}
.LVL21:
.L25:
.LBB85:
	.loc 1 269 5 is_stmt 1 discriminator 1 view .LVU70
	.loc 1 269 5 discriminator 1 view .LVU71
	.syntax unified
@ 269 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL22:
	.loc 1 269 5 discriminator 1 view .LVU72
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL23:
	.loc 1 269 5 is_stmt 0 discriminator 1 view .LVU73
	b	.L22
.L26:
	.loc 1 269 5 discriminator 1 view .LVU74
.LBE85:
	.loc 1 273 9 is_stmt 1 view .LVU75
	ldr	r1, [r5, #76]
	mov	r0, r4
	bl	mesh_gatt_packet_discard
.LVL24:
	b	.L23
.L28:
	.align	2
.L27:
	.word	.LANCHOR2
	.word	-373475417
.LFE416:
	.size	packet_send, .-packet_send
	.section	.text.beacon_packet_send,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	beacon_packet_send, %function
beacon_packet_send:
.LVL25:
.LFB418:
	.loc 1 290 1 view -0
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 290 1 is_stmt 0 view .LVU77
	push	{r4, r5, r6, r7, r8, lr}
.LCFI9:
	sub	sp, sp, #8
.LCFI10:
	mov	r4, r0
	mov	r8, r1
	mov	r5, r2
	mov	r6, r3
	.loc 1 291 5 is_stmt 1 view .LVU78
	.loc 1 291 9 is_stmt 0 view .LVU79
	movs	r3, #0
.LVL26:
	.loc 1 291 9 view .LVU80
	movs	r2, #22
.LVL27:
	.loc 1 291 9 view .LVU81
	movs	r1, #1
.LVL28:
	.loc 1 291 9 view .LVU82
	bl	packet_alloc
.LVL29:
	.loc 1 291 8 view .LVU83
	cbz	r0, .L34
	.loc 1 304 16 view .LVU84
	movs	r7, #4
.L29:
	.loc 1 306 1 view .LVU85
	mov	r0, r7
	add	sp, sp, #8
.LCFI11:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL30:
.L34:
.LCFI12:
	.loc 1 306 1 view .LVU86
	mov	r7, r0
	.loc 1 294 9 is_stmt 1 view .LVU87
	.loc 1 294 9 view .LVU88
	ldr	r3, [r4, #76]
	str	r3, [sp]
	ldrb	r3, [sp, #32]	@ zero_extendqisi2
	mov	r2, r6
	mov	r1, r5
	mov	r0, r8
	bl	net_beacon_build
.LVL31:
	cbnz	r0, .L35
.L31:
	.loc 1 294 9 discriminator 3 view .LVU89
	.loc 1 299 9 discriminator 3 view .LVU90
	mov	r0, r4
	bl	packet_send
.LVL32:
	.loc 1 300 9 discriminator 3 view .LVU91
	.loc 1 300 16 is_stmt 0 discriminator 3 view .LVU92
	b	.L29
.L35:
.LBB86:
	.loc 1 294 9 is_stmt 1 discriminator 1 view .LVU93
	.loc 1 294 9 discriminator 1 view .LVU94
	.syntax unified
@ 294 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL33:
	.loc 1 294 9 discriminator 1 view .LVU95
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL34:
	.loc 1 294 9 is_stmt 0 discriminator 1 view .LVU96
	b	.L31
.LBE86:
.LFE418:
	.size	beacon_packet_send, .-beacon_packet_send
	.section	.text.beacon_packet_send_to_all,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	beacon_packet_send_to_all, %function
beacon_packet_send_to_all:
.LVL35:
.LFB421:
	.loc 1 333 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 333 1 is_stmt 0 view .LVU98
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
.LCFI13:
	sub	sp, sp, #8
.LCFI14:
	mov	r9, r0
	mov	r8, r1
	mov	r7, r2
	mov	r10, r3
	.loc 1 334 5 is_stmt 1 view .LVU99
.LVL36:
	.loc 1 335 5 view .LVU100
.LBB87:
	.loc 1 335 10 view .LVU101
	.loc 1 335 19 is_stmt 0 view .LVU102
	movs	r4, #0
.LBE87:
	.loc 1 334 14 view .LVU103
	mov	r6, r4
.LVL37:
.L37:
.LBB88:
	.loc 1 335 28 is_stmt 1 discriminator 1 view .LVU104
	cbz	r4, .L39
.LBE88:
	.loc 1 349 5 view .LVU105
	.loc 1 350 1 is_stmt 0 view .LVU106
	mov	r0, r6
	add	sp, sp, #8
.LCFI15:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL38:
.L39:
.LCFI16:
.LBB89:
	.loc 1 337 9 is_stmt 1 view .LVU107
	.loc 1 337 29 is_stmt 0 view .LVU108
	ldr	r5, .L43
	movs	r3, #92
	mla	ip, r3, r4, r5
	ldrb	r3, [ip, #68]	@ zero_extendqisi2
	.loc 1 337 12 view .LVU109
	cbnz	r3, .L42
.LVL39:
.L38:
	.loc 1 335 62 is_stmt 1 discriminator 2 view .LVU110
	adds	r4, r4, #1
.LVL40:
	.loc 1 335 62 is_stmt 0 discriminator 2 view .LVU111
	b	.L37
.L42:
	.loc 1 339 13 is_stmt 1 view .LVU112
	.loc 1 339 17 is_stmt 0 view .LVU113
	str	r10, [sp]
	mov	r3, r7
	mov	r2, r8
	mov	r1, r9
	mov	r0, ip
	bl	beacon_packet_send
.LVL41:
	.loc 1 339 16 view .LVU114
	cmp	r0, #0
	beq	.L38
	.loc 1 345 24 view .LVU115
	movs	r6, #4
.LVL42:
	.loc 1 345 24 view .LVU116
	b	.L38
.L44:
	.align	2
.L43:
	.word	.LANCHOR2
.LBE89:
.LFE421:
	.size	beacon_packet_send_to_all, .-beacon_packet_send_to_all
	.section	.text.send_beacon_on_key_refresh,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	send_beacon_on_key_refresh, %function
send_beacon_on_key_refresh:
.LFB423:
	.loc 1 367 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI17:
	sub	sp, sp, #12
.LCFI18:
	.loc 1 368 5 view .LVU118
	.loc 1 368 36 is_stmt 0 view .LVU119
	movs	r3, #0
	str	r3, [sp, #4]
	.loc 1 369 5 is_stmt 1 view .LVU120
	.loc 1 371 5 view .LVU121
	add	r2, sp, #3
	add	r1, sp, #4
	ldr	r3, .L51
	ldr	r0, [r3]
	bl	nrf_mesh_beacon_info_next_get
.LVL43:
	.loc 1 373 5 view .LVU122
	.loc 1 373 5 view .LVU123
	ldr	r3, [sp, #4]
	cbz	r3, .L50
.L46:
	.loc 1 373 5 discriminator 3 view .LVU124
	.loc 1 374 5 discriminator 3 view .LVU125
	.loc 1 374 31 is_stmt 0 discriminator 3 view .LVU126
	ldr	r3, .L51
	movs	r2, #0
	str	r2, [r3]
	.loc 1 376 5 is_stmt 1 discriminator 3 view .LVU127
	.loc 1 376 12 is_stmt 0 discriminator 3 view .LVU128
	ldr	r4, [sp, #4]
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
.LVL44:
.LBB90:
.LBI90:
	.file 2 "../../../mesh/core/api/nrf_mesh_utils.h"
	.loc 2 94 48 is_stmt 1 discriminator 3 view .LVU129
.LBB91:
	.loc 2 96 5 discriminator 3 view .LVU130
	.loc 2 96 8 is_stmt 0 discriminator 3 view .LVU131
	cbz	r4, .L47
	.loc 2 98 9 is_stmt 1 view .LVU132
	.loc 2 99 57 is_stmt 0 view .LVU133
	cbnz	r3, .L48
	adds	r4, r4, #8
.LVL45:
.L47:
	.loc 2 99 57 view .LVU134
.LBE91:
.LBE90:
	.loc 1 376 12 view .LVU135
	bl	net_state_beacon_iv_index_get
.LVL46:
	mov	r5, r0
	bl	net_state_iv_update_get
.LVL47:
	mov	r2, r0
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
.LVL48:
.LBB93:
.LBI93:
	.file 3 "../../../mesh/core/include/net_beacon.h"
	.loc 3 122 20 is_stmt 1 view .LVU136
.LBB94:
	.loc 3 124 5 view .LVU137
	.loc 3 124 5 is_stmt 0 view .LVU138
.LBE94:
.LBE93:
	.loc 1 376 12 view .LVU139
	cmp	r3, #2
	ite	ne
	movne	r3, #0
	moveq	r3, #1
	mov	r1, r5
	mov	r0, r4
	bl	beacon_packet_send_to_all
.LVL49:
	.loc 1 380 5 is_stmt 1 view .LVU140
	.loc 1 381 1 is_stmt 0 view .LVU141
	movs	r0, #1
	add	sp, sp, #12
.LCFI19:
	@ sp needed
	pop	{r4, r5, pc}
.L50:
.LCFI20:
.LBB95:
	.loc 1 373 5 is_stmt 1 discriminator 1 view .LVU142
	.loc 1 373 5 discriminator 1 view .LVU143
	.syntax unified
@ 373 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL50:
	.loc 1 373 5 discriminator 1 view .LVU144
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL51:
	.loc 1 373 5 is_stmt 0 discriminator 1 view .LVU145
	b	.L46
.LVL52:
.L48:
	.loc 1 373 5 discriminator 1 view .LVU146
.LBE95:
.LBB96:
.LBB92:
	.loc 2 99 57 view .LVU147
	adds	r4, r4, #48
.LVL53:
	.loc 2 99 57 view .LVU148
	b	.L47
.L52:
	.align	2
.L51:
	.word	.LANCHOR3
.LBE92:
.LBE96:
.LFE423:
	.size	send_beacon_on_key_refresh, .-send_beacon_on_key_refresh
	.section	.text.beacon_cycle_send,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	beacon_cycle_send, %function
beacon_cycle_send:
.LVL54:
.LFB420:
	.loc 1 315 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 315 1 is_stmt 0 view .LVU150
	push	{r4, r5, r6, lr}
.LCFI21:
	sub	sp, sp, #8
.LCFI22:
	mov	r4, r0
	.loc 1 316 5 is_stmt 1 view .LVU151
	.loc 1 316 11 is_stmt 0 view .LVU152
	b	.L54
.LVL55:
.L56:
.LBB97:
.LBB98:
	.loc 2 99 57 view .LVU153
	adds	r5, r5, #48
.LVL56:
.L57:
	.loc 2 99 57 view .LVU154
.LBE98:
.LBE97:
	.loc 1 317 13 view .LVU155
	bl	net_state_beacon_iv_index_get
.LVL57:
	mov	r6, r0
	bl	net_state_iv_update_get
.LVL58:
	mov	r3, r0
	.loc 1 321 44 view .LVU156
	ldrb	r2, [r4, #69]	@ zero_extendqisi2
	.loc 1 317 13 view .LVU157
	subs	r2, r2, #0
	it	ne
	movne	r2, #1
	str	r2, [sp]
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	beacon_packet_send
.LVL59:
	.loc 1 316 48 view .LVU158
	cbnz	r0, .L53
	.loc 1 323 9 is_stmt 1 view .LVU159
	add	r2, r4, #69
	add	r1, r4, #72
	movs	r0, #0
	bl	nrf_mesh_beacon_info_next_get
.LVL60:
.L54:
	.loc 1 316 48 view .LVU160
	.loc 1 316 24 is_stmt 0 view .LVU161
	ldr	r5, [r4, #72]
	.loc 1 316 48 view .LVU162
	cbz	r5, .L53
	.loc 1 317 13 discriminator 1 view .LVU163
	ldrb	r3, [r4, #69]	@ zero_extendqisi2
.LVL61:
.LBB100:
.LBI97:
	.loc 2 94 48 is_stmt 1 discriminator 1 view .LVU164
.LBB99:
	.loc 2 96 5 discriminator 1 view .LVU165
	.loc 2 98 9 discriminator 1 view .LVU166
	.loc 2 99 57 is_stmt 0 discriminator 1 view .LVU167
	cmp	r3, #0
	bne	.L56
	.loc 2 99 57 view .LVU168
	adds	r5, r5, #8
.LVL62:
	.loc 2 99 57 view .LVU169
	b	.L57
.LVL63:
.L53:
	.loc 2 99 57 view .LVU170
.LBE99:
.LBE100:
	.loc 1 327 1 view .LVU171
	add	sp, sp, #8
.LCFI23:
	@ sp needed
	pop	{r4, r5, r6, pc}
	.loc 1 327 1 view .LVU172
.LFE420:
	.size	beacon_cycle_send, .-beacon_cycle_send
	.section	.text.send_beacon_on_iv_update,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	send_beacon_on_iv_update, %function
send_beacon_on_iv_update:
.LFB422:
	.loc 1 353 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
.LCFI24:
	.loc 1 354 5 view .LVU174
.LBB101:
	.loc 1 354 10 view .LVU175
.LVL64:
	.loc 1 354 19 is_stmt 0 view .LVU176
	movs	r4, #0
.LVL65:
.L61:
	.loc 1 354 28 is_stmt 1 discriminator 1 view .LVU177
	cbz	r4, .L63
.LBE101:
	.loc 1 363 5 view .LVU178
	.loc 1 364 1 is_stmt 0 view .LVU179
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.LVL66:
.L63:
.LBB102:
	.loc 1 356 9 is_stmt 1 view .LVU180
	.loc 1 356 29 is_stmt 0 view .LVU181
	ldr	r3, .L66
	movs	r2, #92
	mla	r3, r2, r4, r3
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	.loc 1 356 12 view .LVU182
	cbnz	r3, .L65
.L62:
	.loc 1 354 62 is_stmt 1 discriminator 2 view .LVU183
	adds	r4, r4, #1
.LVL67:
	.loc 1 354 62 is_stmt 0 discriminator 2 view .LVU184
	b	.L61
.L65:
	.loc 1 358 13 is_stmt 1 view .LVU185
	ldr	r5, .L66
	mla	r5, r2, r4, r5
	mov	r0, r5
	bl	beacon_cycle_trigger
.LVL68:
	.loc 1 359 13 view .LVU186
	mov	r0, r5
	bl	beacon_cycle_send
.LVL69:
	b	.L62
.L67:
	.align	2
.L66:
	.word	.LANCHOR2
.LBE102:
.LFE422:
	.size	send_beacon_on_iv_update, .-send_beacon_on_iv_update
	.section	.text.packet_discard,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	packet_discard, %function
packet_discard:
.LVL70:
.LFB417:
	.loc 1 279 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 279 1 is_stmt 0 view .LVU188
	push	{r4, lr}
.LCFI25:
	mov	r4, r0
	.loc 1 280 5 is_stmt 1 view .LVU189
	.loc 1 280 5 view .LVU190
	ldr	r3, [r0, #76]
	cbz	r3, .L71
.LVL71:
.L69:
	.loc 1 280 5 discriminator 3 view .LVU191
	.loc 1 281 5 discriminator 3 view .LVU192
.LBB103:
.LBI103:
	.loc 1 171 24 discriminator 3 view .LVU193
.LBB104:
	.loc 1 173 5 discriminator 3 view .LVU194
	.loc 1 173 26 is_stmt 0 discriminator 3 view .LVU195
	ldr	r3, .L72
	subs	r3, r4, r3
	asrs	r3, r3, #2
	ldr	r2, .L72+4
	mul	r3, r2, r3
.LVL72:
	.loc 1 173 26 discriminator 3 view .LVU196
.LBE104:
.LBE103:
	.loc 1 281 5 discriminator 3 view .LVU197
	ldr	r1, [r4, #76]
	uxth	r0, r3
	bl	mesh_gatt_packet_discard
.LVL73:
	.loc 1 282 5 is_stmt 1 discriminator 3 view .LVU198
	.loc 1 282 34 is_stmt 0 discriminator 3 view .LVU199
	movs	r3, #0
	str	r3, [r4, #76]
	.loc 1 283 1 discriminator 3 view .LVU200
	pop	{r4, pc}
.LVL74:
.L71:
.LBB105:
	.loc 1 280 5 is_stmt 1 discriminator 1 view .LVU201
	.loc 1 280 5 discriminator 1 view .LVU202
	.syntax unified
@ 280 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL75:
	.loc 1 280 5 discriminator 1 view .LVU203
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL76:
	.loc 1 280 5 is_stmt 0 discriminator 1 view .LVU204
	b	.L69
.L73:
	.align	2
.L72:
	.word	.LANCHOR2
	.word	-373475417
.LBE105:
.LFE417:
	.size	packet_discard, .-packet_discard
	.section	.text.core_tx_packet_discard_cb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	core_tx_packet_discard_cb, %function
core_tx_packet_discard_cb:
.LVL77:
.LFB442:
	.loc 1 864 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 864 1 is_stmt 0 view .LVU206
	push	{r4, lr}
.LCFI26:
	.loc 1 865 5 is_stmt 1 view .LVU207
	.loc 1 865 5 view .LVU208
	mov	r4, r0
	cbz	r0, .L77
.LVL78:
.L75:
	.loc 1 865 5 discriminator 3 view .LVU209
	.loc 1 866 5 discriminator 3 view .LVU210
	.loc 1 867 5 discriminator 3 view .LVU211
	sub	r0, r4, #80
.LVL79:
	.loc 1 867 5 is_stmt 0 discriminator 3 view .LVU212
	bl	packet_discard
.LVL80:
	.loc 1 868 1 discriminator 3 view .LVU213
	pop	{r4, pc}
.LVL81:
.L77:
.LBB106:
	.loc 1 865 5 is_stmt 1 discriminator 1 view .LVU214
	.loc 1 865 5 discriminator 1 view .LVU215
	.syntax unified
@ 865 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL82:
	.loc 1 865 5 discriminator 1 view .LVU216
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL83:
	.loc 1 865 5 is_stmt 0 discriminator 1 view .LVU217
	b	.L75
.LBE106:
.LFE442:
	.size	core_tx_packet_discard_cb, .-core_tx_packet_discard_cb
	.section	.text.core_tx_packet_send_cb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	core_tx_packet_send_cb, %function
core_tx_packet_send_cb:
.LVL84:
.LFB441:
	.loc 1 854 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 854 1 is_stmt 0 view .LVU219
	push	{r3, r4, r5, r6, r7, lr}
.LCFI27:
	mov	r4, r1
	mov	r6, r2
	.loc 1 855 5 is_stmt 1 view .LVU220
	.loc 1 855 5 view .LVU221
	mov	r5, r0
	cbz	r0, .L79
	.loc 1 855 5 is_stmt 0 discriminator 2 view .LVU222
	cbz	r1, .L79
.LVL85:
.L80:
	.loc 1 855 5 is_stmt 1 discriminator 5 view .LVU223
	.loc 1 856 5 discriminator 5 view .LVU224
	.loc 1 856 26 is_stmt 0 discriminator 5 view .LVU225
	sub	r7, r5, #80
.LVL86:
	.loc 1 857 5 is_stmt 1 discriminator 5 view .LVU226
	.loc 1 857 5 discriminator 5 view .LVU227
	ldr	r3, [r5, #-4]
	cbz	r3, .L83
.L81:
	.loc 1 857 5 discriminator 3 view .LVU228
	.loc 1 859 5 discriminator 3 view .LVU229
	mov	r2, r6
	mov	r1, r4
	ldr	r0, [r5, #-4]
	bl	memcpy
.LVL87:
	.loc 1 860 5 discriminator 3 view .LVU230
	mov	r0, r7
	bl	packet_send
.LVL88:
	.loc 1 861 1 is_stmt 0 discriminator 3 view .LVU231
	pop	{r3, r4, r5, r6, r7, pc}
.LVL89:
.L79:
.LBB107:
	.loc 1 855 5 is_stmt 1 discriminator 3 view .LVU232
	.loc 1 855 5 discriminator 3 view .LVU233
	.syntax unified
@ 855 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL90:
	.loc 1 855 5 discriminator 3 view .LVU234
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL91:
	.loc 1 855 5 is_stmt 0 discriminator 3 view .LVU235
	b	.L80
.LVL92:
.L83:
	.loc 1 855 5 discriminator 3 view .LVU236
.LBE107:
.LBB108:
	.loc 1 857 5 is_stmt 1 discriminator 1 view .LVU237
	.loc 1 857 5 discriminator 1 view .LVU238
	.syntax unified
@ 857 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL93:
	.loc 1 857 5 discriminator 1 view .LVU239
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL94:
	.loc 1 857 5 is_stmt 0 discriminator 1 view .LVU240
	b	.L81
.LBE108:
.LFE441:
	.size	core_tx_packet_send_cb, .-core_tx_packet_send_cb
	.section	.text.core_tx_packet_alloc_cb,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	core_tx_packet_alloc_cb, %function
core_tx_packet_alloc_cb:
.LVL95:
.LFB440:
	.loc 1 837 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 837 1 is_stmt 0 view .LVU242
	push	{r4, r5, r6, lr}
.LCFI28:
	mov	r4, r1
	.loc 1 838 5 is_stmt 1 view .LVU243
	.loc 1 838 5 view .LVU244
	mov	r5, r0
	cbz	r0, .L85
	.loc 1 838 5 is_stmt 0 discriminator 2 view .LVU245
	cbz	r1, .L85
.LVL96:
.L86:
	.loc 1 838 5 is_stmt 1 discriminator 5 view .LVU246
	.loc 1 839 5 discriminator 5 view .LVU247
	.loc 1 839 26 is_stmt 0 discriminator 5 view .LVU248
	sub	r6, r5, #80
.LVL97:
	.loc 1 841 5 is_stmt 1 discriminator 5 view .LVU249
	.loc 1 841 21 is_stmt 0 discriminator 5 view .LVU250
	ldrb	r3, [r5, #-12]	@ zero_extendqisi2
	.loc 1 841 8 discriminator 5 view .LVU251
	cbnz	r3, .L92
.L87:
	.loc 1 849 9 is_stmt 1 view .LVU252
	.loc 1 849 16 is_stmt 0 view .LVU253
	movs	r0, #1
.L89:
	.loc 1 851 1 view .LVU254
	pop	{r4, r5, r6, pc}
.LVL98:
.L85:
.LBB109:
	.loc 1 838 5 is_stmt 1 discriminator 3 view .LVU255
	.loc 1 838 5 discriminator 3 view .LVU256
	.syntax unified
@ 838 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL99:
	.loc 1 838 5 discriminator 3 view .LVU257
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL100:
	.loc 1 838 5 is_stmt 0 discriminator 3 view .LVU258
	b	.L86
.LVL101:
.L92:
	.loc 1 838 5 discriminator 3 view .LVU259
.LBE109:
	.loc 1 841 87 discriminator 1 view .LVU260
	ldr	r3, [r4, #8]
	.loc 1 841 36 discriminator 1 view .LVU261
	ldrh	r1, [r3, #2]
	mov	r0, r6
	bl	proxy_filter_accept
.LVL102:
	.loc 1 841 33 discriminator 1 view .LVU262
	cmp	r0, #0
	beq	.L87
.LBB110:
	.loc 1 843 9 is_stmt 1 view .LVU263
	.loc 1 843 27 is_stmt 0 view .LVU264
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #4]
	movs	r1, #0
	mov	r0, r6
	bl	packet_alloc
.LVL103:
	.loc 1 845 9 is_stmt 1 view .LVU265
	.loc 1 845 65 is_stmt 0 view .LVU266
	cmp	r0, #0
	beq	.L89
	movs	r0, #2
.LVL104:
	.loc 1 845 65 view .LVU267
	b	.L89
.LBE110:
.LFE440:
	.size	core_tx_packet_alloc_cb, .-core_tx_packet_alloc_cb
	.section	.text.adv_data_network_id_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	adv_data_network_id_set, %function
adv_data_network_id_set:
.LVL105:
.LFB412:
	.loc 1 210 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 210 1 is_stmt 0 view .LVU269
	push	{lr}
.LCFI29:
	sub	sp, sp, #28
.LCFI30:
	.loc 1 211 5 is_stmt 1 view .LVU270
	.loc 1 212 5 view .LVU271
	.loc 1 212 23 is_stmt 0 view .LVU272
	movs	r3, #0
	strb	r3, [sp, #4]
	.loc 1 213 5 is_stmt 1 view .LVU273
	ldr	r2, [r0]	@ unaligned
	ldr	r3, [r0, #4]	@ unaligned
	str	r2, [sp, #5]	@ unaligned
	str	r3, [sp, #9]	@ unaligned
	.loc 1 215 5 view .LVU274
.LVL106:
	.loc 1 217 5 view .LVU275
	movs	r2, #9
	add	r1, sp, #4
	movw	r0, #6184
.LVL107:
	.loc 1 217 5 is_stmt 0 view .LVU276
	bl	mesh_adv_data_set
.LVL108:
	.loc 1 218 1 view .LVU277
	add	sp, sp, #28
.LCFI31:
	@ sp needed
	ldr	pc, [sp], #4
.LFE412:
	.size	adv_data_network_id_set, .-adv_data_network_id_set
	.section	.text.adv_data_node_id_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	adv_data_node_id_set, %function
adv_data_node_id_set:
.LVL109:
.LFB413:
	.loc 1 221 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 221 1 is_stmt 0 view .LVU279
	push	{r4, r5, lr}
.LCFI32:
	sub	sp, sp, #60
.LCFI33:
	mov	r5, r0
	mov	r4, r1
	.loc 1 223 5 is_stmt 1 view .LVU280
	.loc 1 224 5 view .LVU281
	movs	r3, #0
	str	r3, [sp, #40]
	strh	r3, [sp, #44]	@ movhi
	.loc 1 225 5 view .LVU282
	movs	r1, #8
.LVL110:
	.loc 1 225 5 is_stmt 0 view .LVU283
	add	r0, sp, #46
.LVL111:
	.loc 1 225 5 view .LVU284
	bl	rand_hw_rng_get
.LVL112:
	.loc 1 226 5 is_stmt 1 view .LVU285
	.loc 1 226 30 is_stmt 0 view .LVU286
	lsrs	r3, r4, #8
	orr	r3, r3, r4, lsl #8
	.loc 1 226 28 view .LVU287
	strh	r3, [sp, #54]	@ movhi
	.loc 1 228 5 is_stmt 1 view .LVU288
	.loc 1 229 5 view .LVU289
	add	r2, sp, #24
	add	r1, sp, #40
	mov	r0, r5
	bl	enc_aes_encrypt
.LVL113:
	.loc 1 231 5 view .LVU290
	.loc 1 232 5 view .LVU291
	.loc 1 232 23 is_stmt 0 view .LVU292
	movs	r3, #1
	strb	r3, [sp, #4]
	.loc 1 234 5 is_stmt 1 view .LVU293
	add	r3, sp, #32
	ldmia	r3!, {r0, r1}
	str	r0, [sp, #5]	@ unaligned
	str	r1, [sp, #9]	@ unaligned
	.loc 1 237 5 view .LVU294
	ldr	r2, [sp, #46]	@ unaligned
	ldr	r3, [sp, #50]	@ unaligned
	str	r2, [sp, #13]	@ unaligned
	str	r3, [sp, #17]	@ unaligned
	.loc 1 239 5 view .LVU295
.LVL114:
	.loc 1 242 5 view .LVU296
	movs	r2, #17
	add	r1, sp, #4
	movw	r0, #6184
	bl	mesh_adv_data_set
.LVL115:
	.loc 1 243 1 is_stmt 0 view .LVU297
	add	sp, sp, #60
.LCFI34:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 243 1 view .LVU298
.LFE413:
	.size	adv_data_node_id_set, .-adv_data_node_id_set
	.section	.text.adv_data_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	adv_data_set, %function
adv_data_set:
.LFB437:
	.loc 1 772 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI35:
	sub	sp, sp, #8
.LCFI36:
	.loc 1 773 5 view .LVU300
	.loc 1 774 9 is_stmt 0 view .LVU301
	ldr	r3, .L105
	ldr	r4, [r3, #28]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
.LVL116:
.LBB111:
.LBI111:
	.loc 2 94 48 is_stmt 1 view .LVU302
.LBB112:
	.loc 2 96 5 view .LVU303
	.loc 2 96 8 is_stmt 0 view .LVU304
	cbz	r4, .L98
	.loc 2 98 9 is_stmt 1 view .LVU305
	.loc 2 99 57 is_stmt 0 view .LVU306
	cbnz	r3, .L99
	adds	r4, r4, #8
.LVL117:
.L98:
	.loc 2 99 57 view .LVU307
.LBE112:
.LBE111:
	.loc 1 775 5 is_stmt 1 view .LVU308
	.loc 1 775 22 is_stmt 0 view .LVU309
	ldr	r3, .L105
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 1 775 8 view .LVU310
	cbz	r3, .L103
	.loc 1 779 10 is_stmt 1 view .LVU311
	.loc 1 779 13 is_stmt 0 view .LVU312
	cmp	r3, #1
	beq	.L104
.L97:
	.loc 1 787 1 view .LVU313
	add	sp, sp, #8
.LCFI37:
	@ sp needed
	pop	{r4, pc}
.LVL118:
.L99:
.LCFI38:
.LBB114:
.LBB113:
	.loc 2 99 57 view .LVU314
	adds	r4, r4, #48
.LVL119:
	.loc 2 99 57 view .LVU315
	b	.L98
.LVL120:
.L103:
	.loc 2 99 57 view .LVU316
.LBE113:
.LBE114:
	.loc 1 777 9 is_stmt 1 view .LVU317
	add	r0, r4, #16
	bl	adv_data_network_id_set
.LVL121:
	b	.L97
.L104:
.LBB115:
	.loc 1 781 9 view .LVU318
	.loc 1 782 9 view .LVU319
	.loc 1 783 9 view .LVU320
	add	r1, sp, #6
	add	r0, sp, #4
	bl	nrf_mesh_unicast_address_get
.LVL122:
	.loc 1 785 9 view .LVU321
	ldrh	r1, [sp, #4]
	add	r0, r4, #24
	bl	adv_data_node_id_set
.LVL123:
.LBE115:
	.loc 1 787 1 is_stmt 0 view .LVU322
	b	.L97
.L106:
	.align	2
.L105:
	.word	.LANCHOR1
.LFE437:
	.size	adv_data_set, .-adv_data_set
	.section	.text.adv_timer_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	adv_timer_handler, %function
adv_timer_handler:
.LVL124:
.LFB438:
	.loc 1 790 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 790 1 is_stmt 0 view .LVU324
	push	{r3, lr}
.LCFI39:
	.loc 1 791 5 is_stmt 1 view .LVU325
	bl	adv_net_iterate
.LVL125:
	.loc 1 792 5 view .LVU326
	bl	adv_data_set
.LVL126:
	.loc 1 793 1 is_stmt 0 view .LVU327
	pop	{r3, pc}
.LFE438:
	.size	adv_timer_handler, .-adv_timer_handler
	.section	.text.mesh_evt_handle,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mesh_evt_handle, %function
mesh_evt_handle:
.LVL127:
.LFB435:
	.loc 1 728 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 728 1 is_stmt 0 view .LVU329
	push	{r4, lr}
.LCFI40:
	mov	r4, r0
	.loc 1 733 5 is_stmt 1 view .LVU330
	.loc 1 733 14 is_stmt 0 view .LVU331
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 733 8 view .LVU332
	cmp	r3, #4
	beq	.L115
	.loc 1 747 10 is_stmt 1 view .LVU333
	.loc 1 747 13 is_stmt 0 view .LVU334
	cmp	r3, #3
	beq	.L116
	.loc 1 753 10 is_stmt 1 view .LVU335
	.loc 1 753 13 is_stmt 0 view .LVU336
	cmp	r3, #2
	beq	.L117
.LVL128:
.L109:
	.loc 1 757 1 view .LVU337
	pop	{r4, pc}
.LVL129:
.L115:
	.loc 1 735 9 is_stmt 1 view .LVU338
	.loc 1 735 37 is_stmt 0 view .LVU339
	ldr	r3, [r0, #12]
	.loc 1 735 51 view .LVU340
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 735 12 view .LVU341
	cmp	r3, #1
	beq	.L109
	.loc 1 736 14 discriminator 1 view .LVU342
	ldr	r1, [r0, #16]
	ldr	r0, .L119
.LVL130:
	.loc 1 736 14 discriminator 1 view .LVU343
	bl	cache_has_elem
.LVL131:
	.loc 1 735 87 discriminator 1 view .LVU344
	cmp	r0, #0
	bne	.L109
	.loc 1 738 13 is_stmt 1 view .LVU345
	.loc 1 738 17 is_stmt 0 view .LVU346
	ldrb	r3, [r4, #25]	@ zero_extendqisi2
	ldrb	r2, [r4, #24]	@ zero_extendqisi2
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #8]
	bl	beacon_packet_send_to_all
.LVL132:
	.loc 1 738 16 view .LVU347
	cmp	r0, #0
	bne	.L109
	.loc 1 743 17 is_stmt 1 view .LVU348
	ldr	r1, [r4, #16]
	ldr	r0, .L119
	bl	cache_put
.LVL133:
	b	.L109
.LVL134:
.L116:
	.loc 1 749 9 view .LVU349
	.loc 1 749 9 view .LVU350
	ldr	r3, [r0, #8]
	cbz	r3, .L118
.LVL135:
.L113:
	.loc 1 749 9 discriminator 3 view .LVU351
	.loc 1 750 9 discriminator 3 view .LVU352
	.loc 1 750 62 is_stmt 0 discriminator 3 view .LVU353
	ldr	r2, [r4, #8]
	.loc 1 750 35 discriminator 3 view .LVU354
	ldr	r3, .L119+4
	str	r2, [r3]
	.loc 1 751 9 is_stmt 1 discriminator 3 view .LVU355
	ldr	r3, .L119+8
	ldr	r0, [r3]
	bl	bearer_event_flag_set
.LVL136:
	b	.L109
.LVL137:
.L118:
.LBB116:
	.loc 1 749 9 discriminator 1 view .LVU356
	.loc 1 749 9 discriminator 1 view .LVU357
	.syntax unified
@ 749 "C:\project domotica\nrf-mesh\mesh\gatt\src\proxy.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL138:
	.loc 1 749 9 discriminator 1 view .LVU358
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL139:
	.loc 1 749 9 is_stmt 0 discriminator 1 view .LVU359
	b	.L113
.LVL140:
.L117:
	.loc 1 749 9 discriminator 1 view .LVU360
.LBE116:
	.loc 1 755 9 is_stmt 1 view .LVU361
	ldr	r3, .L119+12
	ldr	r0, [r3]
.LVL141:
	.loc 1 755 9 is_stmt 0 view .LVU362
	bl	bearer_event_flag_set
.LVL142:
	.loc 1 757 1 view .LVU363
	b	.L109
.L120:
	.align	2
.L119:
	.word	.LANCHOR4
	.word	.LANCHOR3
	.word	.LANCHOR5
	.word	.LANCHOR6
.LFE435:
	.size	mesh_evt_handle, .-mesh_evt_handle
	.section	.text.on_adv_end,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	on_adv_end, %function
on_adv_end:
.LFB414:
	.loc 1 249 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI41:
	.loc 1 250 5 view .LVU365
	ldr	r4, .L123
	adds	r0, r4, #4
	bl	timer_sch_abort
.LVL143:
	.loc 1 251 5 view .LVU366
	.loc 1 251 27 is_stmt 0 view .LVU367
	movs	r3, #0
	strb	r3, [r4]
	.loc 1 252 1 view .LVU368
	pop	{r4, pc}
.L124:
	.align	2
.L123:
	.word	.LANCHOR1
.LFE414:
	.size	on_adv_end, .-on_adv_end
	.section	.text.connection_reset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	connection_reset, %function
connection_reset:
.LVL144:
.LFB409:
	.loc 1 177 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 177 1 is_stmt 0 view .LVU370
	push	{r4, lr}
.LCFI42:
	mov	r4, r0
	.loc 1 178 5 is_stmt 1 view .LVU371
	bl	proxy_filter_clear
.LVL145:
	.loc 1 179 5 view .LVU372
	.loc 1 179 41 is_stmt 0 view .LVU373
	movs	r3, #0
	str	r3, [r4, #72]
	.loc 1 180 1 view .LVU374
	pop	{r4, pc}
	.loc 1 180 1 view .LVU375
.LFE409:
	.size	connection_reset, .-connection_reset
	.section	.text.config_packet_alloc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	config_packet_alloc, %function
config_packet_alloc:
.LVL146:
.LFB426:
	.loc 1 412 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 412 1 is_stmt 0 view .LVU377
	push	{r4, lr}
.LCFI43:
	mov	r4, r0
	.loc 1 413 5 is_stmt 1 view .LVU378
	.loc 1 413 9 is_stmt 0 view .LVU379
	mov	r0, r1
.LVL147:
	.loc 1 413 9 view .LVU380
	bl	config_packet_buffer_len
.LVL148:
	.loc 1 413 9 view .LVU381
	mov	r2, r0
	movs	r3, #0
	movs	r1, #2
	mov	r0, r4
	bl	packet_alloc
.LVL149:
	.loc 1 413 8 view .LVU382
	cbz	r0, .L131
	.loc 1 422 12 view .LVU383
	movs	r0, #0
.L127:
	.loc 1 423 1 view .LVU384
	pop	{r4, pc}
.LVL150:
.L131:
	.loc 1 418 9 is_stmt 1 view .LVU385
	.loc 1 418 39 is_stmt 0 view .LVU386
	ldr	r0, [r4, #76]
	bl	net_packet_payload_get
.LVL151:
	.loc 1 418 16 view .LVU387
	b	.L127
.LFE426:
	.size	config_packet_alloc, .-config_packet_alloc
	.section	.text.config_packet_decrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	config_packet_decrypt, %function
config_packet_decrypt:
.LVL152:
.LFB424:
	.loc 1 387 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 387 1 is_stmt 0 view .LVU389
	push	{r4, lr}
.LCFI44:
	sub	sp, sp, #8
.LCFI45:
	mov	r4, r0
	mov	ip, r1
	mov	r1, r2
.LVL153:
	.loc 1 388 5 is_stmt 1 view .LVU390
	.loc 1 388 23 is_stmt 0 view .LVU391
	movs	r2, #1
.LVL154:
	.loc 1 388 23 view .LVU392
	str	r2, [sp]
	mov	r2, ip
	bl	net_packet_decrypt
.LVL155:
	.loc 1 394 5 is_stmt 1 view .LVU393
	.loc 1 394 8 is_stmt 0 view .LVU394
	cbnz	r0, .L135
	.loc 1 397 9 is_stmt 1 view .LVU395
	.loc 1 397 27 is_stmt 0 view .LVU396
	ldrb	r3, [r4, #11]	@ zero_extendqisi2
	.loc 1 397 68 view .LVU397
	cbz	r3, .L136
	.loc 1 397 57 discriminator 1 view .LVU398
	ldrb	r3, [r4, #10]	@ zero_extendqisi2
	.loc 1 397 44 discriminator 1 view .LVU399
	cbnz	r3, .L137
	.loc 1 398 32 discriminator 3 view .LVU400
	ldrh	r3, [r4, #2]
	.loc 1 397 68 discriminator 3 view .LVU401
	cbnz	r3, .L133
	.loc 1 397 68 view .LVU402
	movs	r0, #1
.LVL156:
	.loc 1 397 68 view .LVU403
	b	.L133
.LVL157:
.L136:
	.loc 1 397 68 view .LVU404
	movs	r0, #0
.LVL158:
	.loc 1 397 68 view .LVU405
	b	.L133
.LVL159:
.L137:
	.loc 1 397 68 view .LVU406
	movs	r0, #0
.LVL160:
	.loc 1 397 68 view .LVU407
	b	.L133
.LVL161:
.L135:
	.loc 1 402 16 view .LVU408
	movs	r0, #0
.LVL162:
.L133:
	.loc 1 404 1 view .LVU409
	add	sp, sp, #8
.LCFI46:
	@ sp needed
	pop	{r4, pc}
	.loc 1 404 1 view .LVU410
.LFE424:
	.size	config_packet_decrypt, .-config_packet_decrypt
	.section	.text.config_packet_in_filter_type_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	config_packet_in_filter_type_set, %function
config_packet_in_filter_type_set:
.LVL163:
.LFB429:
	.loc 1 481 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 482 5 view .LVU412
	.loc 1 482 8 is_stmt 0 view .LVU413
	cmp	r2, #1
	beq	.L147
	.loc 1 489 16 view .LVU414
	movs	r0, #9
.LVL164:
	.loc 1 491 1 view .LVU415
	bx	lr
.LVL165:
.L147:
	.loc 1 481 1 view .LVU416
	push	{r3, lr}
.LCFI47:
	.loc 1 484 9 is_stmt 1 view .LVU417
	.loc 1 484 16 is_stmt 0 view .LVU418
	ldrb	r1, [r1]	@ zero_extendqisi2
.LVL166:
	.loc 1 484 16 view .LVU419
	bl	proxy_filter_typ