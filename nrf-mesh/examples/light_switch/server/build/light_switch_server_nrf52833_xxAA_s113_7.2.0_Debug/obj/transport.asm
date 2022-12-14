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
	.file	"transport.c"
	.text
.Ltext0:
	.section	.text.sar_rx_session_is_canceled,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_rx_session_is_canceled, %function
sar_rx_session_is_canceled:
.LVL0:
.LFB412:
	.file 1 "C:\\project domotica\\nrf-mesh\\mesh\\core\\src\\transport.c"
	.loc 1 338 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 339 5 view .LVU1
.LBB117:
	.loc 1 339 10 view .LVU2
	.loc 1 339 19 is_stmt 0 view .LVU3
	movs	r1, #0
.LVL1:
	.loc 1 339 28 is_stmt 1 view .LVU4
	cmp	r1, #7
	bhi	.L11
.LBE117:
	.loc 1 338 1 is_stmt 0 view .LVU5
	push	{r4, r5}
.LCFI0:
	b	.L5
.L3:
.LBB118:
	.loc 1 339 76 is_stmt 1 discriminator 2 view .LVU6
	adds	r1, r1, #1
.LVL2:
	.loc 1 339 28 discriminator 2 view .LVU7
	cmp	r1, #7
	bhi	.L12
.L5:
	.loc 1 341 9 view .LVU8
	.loc 1 341 55 is_stmt 0 view .LVU9
	lsl	ip, r1, #4
	ldr	r4, .L13
	ldrh	ip, [r4, ip]
	.loc 1 341 12 view .LVU10
	cmp	ip, r0
	bne	.L3
	.loc 1 342 62 view .LVU11
	add	r4, r4, r1, lsl #4
	ldr	r5, [r4, #8]
	ldr	r4, [r4, #12]
	.loc 1 342 13 view .LVU12
	cmp	r4, r3
	it	eq
	cmpeq	r5, r2
	bne	.L3
	.loc 1 344 20 view .LVU13
	movs	r0, #1
.LVL3:
	.loc 1 344 20 view .LVU14
	b	.L4
.LVL4:
.L12:
	.loc 1 344 20 view .LVU15
.LBE118:
	.loc 1 347 12 view .LVU16
	movs	r0, #0
.LVL5:
.L4:
	.loc 1 348 1 view .LVU17
	pop	{r4, r5}
.LCFI1:
	bx	lr
.LVL6:
.L11:
	.loc 1 347 12 view .LVU18
	movs	r0, #0
.LVL7:
	.loc 1 348 1 view .LVU19
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
.LFE412:
	.size	sar_rx_session_is_canceled, .-sar_rx_session_is_canceled
	.section	.text.sar_rx_session_cancel,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_rx_session_cancel, %function
sar_rx_session_cancel:
.LVL8:
.LFB413:
	.loc 1 351 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 351 1 is_stmt 0 view .LVU21
	push	{r4, r5}
.LCFI2:
	.loc 1 352 5 is_stmt 1 view .LVU22
	.loc 1 352 24 is_stmt 0 view .LVU23
	ldr	r3, [r0, #28]
	ldr	r4, [r0, #24]
	ldrh	r2, [r0, #6]
.LVL9:
.LBB119:
.LBI119:
	.file 2 "../../../mesh/core/include/transport_internal.h"
	.loc 2 133 24 is_stmt 1 view .LVU24
.LBB120:
	.loc 2 135 5 view .LVU25
	.loc 2 135 33 is_stmt 0 view .LVU26
	lsrs	r1, r3, #8
	lsls	r3, r3, #24
.LVL10:
.LBB121:
.LBI121:
	.loc 2 103 24 is_stmt 1 view .LVU27
.LBB122:
	.loc 2 105 5 view .LVU28
	.loc 2 105 26 is_stmt 0 view .LVU29
	ubfx	ip, r4, #0, #13
	.loc 2 105 8 view .LVU30
	cmp	ip, r2
	bcs	.L16
	.loc 2 107 9 is_stmt 1 view .LVU31
	.loc 2 107 34 is_stmt 0 view .LVU32
	sub	r2, r2, ip
	add	r2, r2, r4
	.loc 2 107 96 view .LVU33
	sub	r2, r2, #8192
.L17:
.LVL11:
	.loc 2 107 96 view .LVU34
.LBE122:
.LBE121:
	.loc 2 136 13 view .LVU35
	adds	r2, r3, r2
	adc	r1, r1, #0
.LVL12:
	.loc 2 136 13 view .LVU36
.LBE120:
.LBE119:
	.loc 1 356 5 is_stmt 1 view .LVU37
	.loc 1 357 80 is_stmt 0 view .LVU38
	ldr	r4, .L19
	ldr	r3, [r4]
	adds	r5, r3, #1
	str	r5, [r4]
	.loc 1 357 83 view .LVU39
	and	r3, r3, #7
.LVL13:
	.loc 1 359 5 is_stmt 1 view .LVU40
	.loc 1 359 54 is_stmt 0 view .LVU41
	ldrh	ip, [r0, #20]
	.loc 1 359 29 view .LVU42
	ldr	r0, .L19+4
.LVL14:
	.loc 1 359 29 view .LVU43
	lsls	r4, r3, #4
	add	r3, r0, r3, lsl #4
.LVL15:
	.loc 1 359 29 view .LVU44
	strh	ip, [r0, r4]	@ movhi
	.loc 1 360 5 is_stmt 1 view .LVU45
	.loc 1 360 33 is_stmt 0 view .LVU46
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	.loc 1 361 1 view .LVU47
	pop	{r4, r5}
.LCFI3:
.LVL16:
	.loc 1 361 1 view .LVU48
	bx	lr
.LVL17:
.L16:
.LCFI4:
.LBB126:
.LBB125:
.LBB124:
.LBB123:
	.loc 2 111 9 is_stmt 1 view .LVU49
	.loc 2 111 34 is_stmt 0 view .LVU50
	sub	r2, r2, ip
	add	r2, r2, r4
	b	.L17
.L20:
	.align	2
.L19:
	.word	.LANCHOR1
	.word	.LANCHOR0
.LBE123:
.LBE124:
.LBE125:
.LBE126:
.LFE413:
	.size	sar_rx_session_cancel, .-sar_rx_session_cancel
	.section	.text.trs_packet_header_build,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	trs_packet_header_build, %function
trs_packet_header_build:
.LVL18:
.LFB421:
	.loc 1 549 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 550 5 view .LVU52
	.loc 1 550 24 is_stmt 0 view .LVU53
	ldrb	r3, [r0, #23]	@ zero_extendqisi2
	.loc 1 550 8 view .LVU54
	cbz	r3, .L22
	.loc 1 552 9 is_stmt 1 view .LVU55
	.loc 1 552 78 is_stmt 0 view .LVU56
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
.LVL19:
.LBB143:
.LBI143:
	.file 3 "../../../mesh/core/include/packet_mesh.h"
	.loc 3 1314 20 is_stmt 1 view .LVU57
.LBB144:
	.loc 3 1316 5 view .LVU58
	.loc 3 1316 55 is_stmt 0 view .LVU59
	ldrb	r3, [r1]	@ zero_extendqisi2
	and	r3, r3, #128
	strb	r3, [r1]
.LVL20:
	.loc 3 1317 5 is_stmt 1 view .LVU60
	.loc 3 1317 63 is_stmt 0 view .LVU61
	and	r2, r2, #127
.LVL21:
	.loc 3 1317 55 view .LVU62
	orrs	r3, r3, r2
	strb	r3, [r1]
.LVL22:
.L23:
	.loc 3 1317 55 view .LVU63
.LBE144:
.LBE143:
	.loc 1 560 5 is_stmt 1 view .LVU64
	.loc 1 560 56 is_stmt 0 view .LVU65
	ldrb	r2, [r0]	@ zero_extendqisi2
.LVL23:
.LBB145:
.LBI145:
	.loc 3 1290 20 is_stmt 1 view .LVU66
.LBB146:
	.loc 3 1292 5 view .LVU67
	.loc 3 1292 51 is_stmt 0 view .LVU68
	ldrb	r3, [r1]	@ zero_extendqisi2
	and	r3, r3, #127
	strb	r3, [r1]
.LVL24:
	.loc 3 1293 5 is_stmt 1 view .LVU69
	.loc 3 1293 51 is_stmt 0 view .LVU70
	orr	r3, r3, r2, lsl #7
	strb	r3, [r1]
.LVL25:
	.loc 3 1293 51 view .LVU71
.LBE146:
.LBE145:
	.loc 1 562 5 is_stmt 1 view .LVU72
	.loc 1 562 19 is_stmt 0 view .LVU73
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 562 8 view .LVU74
	cbnz	r3, .L25
.L21:
	.loc 1 569 1 view .LVU75
	bx	lr
.L22:
	.loc 1 556 9 is_stmt 1 view .LVU76
	.loc 1 556 73 is_stmt 0 view .LVU77
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
.LVL26:
.LBB147:
.LBI147:
	.loc 3 1242 20 is_stmt 1 view .LVU78
.LBB148:
	.loc 3 1244 5 view .LVU79
	.loc 3 1244 51 is_stmt 0 view .LVU80
	ldrb	r3, [r1]	@ zero_extendqisi2
	and	r3, r3, #191
	strb	r3, [r1]
.LVL27:
	.loc 3 1245 5 is_stmt 1 view .LVU81
	.loc 3 1245 59 is_stmt 0 view .LVU82
	lsls	r2, r2, #6
.LVL28:
	.loc 3 1245 65 view .LVU83
	and	r2, r2, #64
	.loc 3 1245 51 view .LVU84
	orrs	r3, r3, r2
	strb	r3, [r1]
.LVL29:
	.loc 3 1245 51 view .LVU85
.LBE148:
.LBE147:
	.loc 1 557 9 is_stmt 1 view .LVU86
	.loc 1 557 73 is_stmt 0 view .LVU87
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
.LVL30:
.LBB149:
.LBI149:
	.loc 3 1266 20 is_stmt 1 view .LVU88
.LBB150:
	.loc 3 1268 5 view .LVU89
	.loc 3 1268 51 is_stmt 0 view .LVU90
	and	r3, r3, #192
	strb	r3, [r1]
.LVL31:
	.loc 3 1269 5 is_stmt 1 view .LVU91
	.loc 3 1269 59 is_stmt 0 view .LVU92
	and	r2, r2, #63
.LVL32:
	.loc 3 1269 51 view .LVU93
	orrs	r3, r3, r2
	strb	r3, [r1]
	.loc 3 1270 1 view .LVU94
	b	.L23
.LVL33:
.L25:
	.loc 3 1270 1 view .LVU95
.LBE150:
.LBE149:
	.loc 1 564 9 is_stmt 1 view .LVU96
	.loc 1 564 59 is_stmt 0 view .LVU97
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	.loc 1 564 9 view .LVU98
	cmp	r2, #8
	ite	ne
	movne	r2, #0
	moveq	r2, #1
.LVL34:
.LBB151:
.LBI151:
	.loc 3 1338 20 is_stmt 1 view .LVU99
.LBB152:
	.loc 3 1340 5 view .LVU100
	.loc 3 1340 50 is_stmt 0 view .LVU101
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	and	r3, r3, #127
	strb	r3, [r1, #1]
	.loc 3 1341 5 is_stmt 1 view .LVU102
	.loc 3 1341 50 is_stmt 0 view .LVU103
	orr	r3, r3, r2, lsl #7
	strb	r3, [r1, #1]
.LVL35:
	.loc 3 1341 50 view .LVU104
.LBE152:
.LBE151:
	.loc 1 565 9 is_stmt 1 view .LVU105
	.loc 1 565 75 is_stmt 0 view .LVU106
	ldrh	r2, [r0, #6]
.LVL36:
.LBB153:
.LBI153:
	.loc 3 1363 20 is_stmt 1 view .LVU107
.LBB154:
	.loc 3 1365 5 view .LVU108
	.loc 3 1365 53 is_stmt 0 view .LVU109
	uxtb	r3, r3
	and	r3, r3, #128
	strb	r3, [r1, #1]
	.loc 3 1366 5 is_stmt 1 view .LVU110
	.loc 3 1366 67 is_stmt 0 view .LVU111
	ubfx	ip, r2, #6, #7
	.loc 3 1366 53 view .LVU112
	orr	r3, r3, ip
	strb	r3, [r1, #1]
	.loc 3 1367 5 is_stmt 1 view .LVU113
	.loc 3 1367 53 is_stmt 0 view .LVU114
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	and	r3, r3, #3
	strb	r3, [r1, #2]
	.loc 3 1368 5 is_stmt 1 view .LVU115
	.loc 3 1368 53 is_stmt 0 view .LVU116
	orr	r3, r3, r2, lsl #2
	strb	r3, [r1, #2]
.LVL37:
	.loc 3 1368 53 view .LVU117
.LBE154:
.LBE153:
	.loc 1 566 9 is_stmt 1 view .LVU118
	.loc 1 566 72 is_stmt 0 view .LVU119
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
.LVL38:
.LBB155:
.LBI155:
	.loc 3 1390 20 is_stmt 1 view .LVU120
.LBB156:
	.loc 3 1392 5 view .LVU121
	.loc 3 1392 50 is_stmt 0 view .LVU122
	uxtb	r3, r3
	and	r3, r3, #252
	strb	r3, [r1, #2]
	.loc 3 1393 5 is_stmt 1 view .LVU123
	.loc 3 1393 64 is_stmt 0 view .LVU124
	ubfx	ip, r2, #3, #2
	.loc 3 1393 50 view .LVU125
	orr	r3, r3, ip
	strb	r3, [r1, #2]
	.loc 3 1394 5 is_stmt 1 view .LVU126
	.loc 3 1394 50 is_stmt 0 view .LVU127
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	and	r3, r3, #31
	strb	r3, [r1, #3]
	.loc 3 1395 5 is_stmt 1 view .LVU128
	.loc 3 1395 50 is_stmt 0 view .LVU129
	orr	r3, r3, r2, lsl #5
	strb	r3, [r1, #3]
.LVL39:
	.loc 3 1395 50 view .LVU130
.LBE156:
.LBE155:
	.loc 1 567 9 is_stmt 1 view .LVU131
	.loc 1 567 72 is_stmt 0 view .LVU132
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
.LVL40:
.LBB157:
.LBI157:
	.loc 3 1416 20 is_stmt 1 view .LVU133
.LBB158:
	.loc 3 1418 5 view .LVU134
	.loc 3 1418 49 is_stmt 0 view .LVU135
	uxtb	r3, r3
	and	r3, r3, #224
	strb	r3, [r1, #3]
.LVL41:
	.loc 3 1419 5 is_stmt 1 view .LVU136
	.loc 3 1419 57 is_stmt 0 view .LVU137
	and	r2, r2, #31
	.loc 3 1419 49 view .LVU138
	orrs	r3, r3, r2
	strb	r3, [r1, #3]
.LVL42:
	.loc 3 1419 49 view .LVU139
.LBE158:
.LBE157:
	.loc 1 569 1 view .LVU140
	b	.L21
.LFE421:
	.size	trs_packet_header_build, .-trs_packet_header_build
	.section	.text.sar_active_tx_ctx_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_active_tx_ctx_get, %function
sar_active_tx_ctx_get:
.LVL43:
.LFB426:
	.loc 1 695 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 696 5 view .LVU142
.LBB159:
	.loc 1 696 10 view .LVU143
	.loc 1 696 19 is_stmt 0 view .LVU144
	movs	r3, #0
	.loc 1 696 5 view .LVU145
	b	.L27
.LVL44:
.L28:
	.loc 1 696 59 is_stmt 1 discriminator 2 view .LVU146
	adds	r3, r3, #1
.LVL45:
.L27:
	.loc 1 696 28 discriminator 1 view .LVU147
	cmp	r3, #3
	bhi	.L32
	.loc 1 698 9 view .LVU148
	.loc 1 698 42 is_stmt 0 view .LVU149
	rsb	ip, r3, r3, lsl #3
	ldr	r2, .L33
	add	r2, r2, ip, lsl #4
	ldrb	r2, [r2, #72]	@ zero_extendqisi2
	.loc 1 698 12 view .LVU150
	cmp	r2, #1
	bne	.L28
	.loc 1 699 47 discriminator 1 view .LVU151
	ldr	r2, .L33
	add	r2, r2, ip, lsl #4
	ldrh	ip, [r2, #20]
	.loc 1 699 74 discriminator 1 view .LVU152
	ldrh	r2, [r0, #14]
	.loc 1 698 78 discriminator 1 view .LVU153
	cmp	ip, r2
	bne	.L28
	.loc 1 700 56 view .LVU154
	rsb	ip, r3, r3, lsl #3
	ldr	r2, .L33
	add	r2, r2, ip, lsl #4
	ldrh	r2, [r2, #6]
	.loc 1 699 81 view .LVU155
	cmp	r2, r1
	bne	.L28
	.loc 1 701 53 view .LVU156
	ldr	r2, .L33
	add	r2, r2, ip, lsl #4
	ldrh	r2, [r2, #88]
	.loc 1 700 78 view .LVU157
	cbz	r2, .L29
	.loc 1 702 80 view .LVU158
	ldrh	ip, [r0, #20]
	.loc 1 701 90 view .LVU159
	cmp	r2, ip
	bne	.L28
.L29:
	.loc 1 704 13 is_stmt 1 view .LVU160
	.loc 1 704 20 is_stmt 0 view .LVU161
	rsb	r3, r3, r3, lsl #3
.LVL46:
	.loc 1 704 20 view .LVU162
	ldr	r0, .L33
.LVL47:
	.loc 1 704 20 view .LVU163
	add	r0, r0, r3, lsl #4
	bx	lr
.LVL48:
.L32:
	.loc 1 704 20 view .LVU164
.LBE159:
	.loc 1 708 12 view .LVU165
	movs	r0, #0
.LVL49:
	.loc 1 709 1 view .LVU166
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR2
.LFE426:
	.size	sar_active_tx_ctx_get, .-sar_active_tx_ctx_get
	.section	.text.sar_active_rx_ctx_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_active_rx_ctx_get, %function
sar_active_rx_ctx_get:
.LVL50:
.LFB427:
	.loc 1 712 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 713 5 view .LVU168
.LBB160:
	.loc 1 713 10 view .LVU169
	.loc 1 713 19 is_stmt 0 view .LVU170
	movs	r3, #0
	.loc 1 713 5 view .LVU171
	b	.L36
.LVL51:
.L37:
	.loc 1 713 59 is_stmt 1 discriminator 2 view .LVU172
	adds	r3, r3, #1
.LVL52:
.L36:
	.loc 1 713 28 discriminator 1 view .LVU173
	cmp	r3, #3
	bhi	.L40
	.loc 1 715 9 view .LVU174
	.loc 1 715 42 is_stmt 0 view .LVU175
	rsb	r1, r3, r3, lsl #3
	ldr	r2, .L41
	add	r2, r2, r1, lsl #4
	ldrb	r2, [r2, #72]	@ zero_extendqisi2
	.loc 1 715 12 view .LVU176
	cmp	r2, #2
	bne	.L37
	.loc 1 716 47 discriminator 1 view .LVU177
	ldr	r2, .L41
	add	r2, r2, r1, lsl #4
	ldrh	r1, [r2, #20]
	.loc 1 716 70 discriminator 1 view .LVU178
	ldrh	r2, [r0, #20]
	.loc 1 715 78 discriminator 1 view .LVU179
	cmp	r1, r2
	bne	.L37
	.loc 1 718 13 is_stmt 1 view .LVU180
	.loc 1 718 20 is_stmt 0 view .LVU181
	rsb	r3, r3, r3, lsl #3
.LVL53:
	.loc 1 718 20 view .LVU182
	ldr	r0, .L41
.LVL54:
	.loc 1 718 20 view .LVU183
	add	r0, r0, r3, lsl #4
	bx	lr
.LVL55:
.L40:
	.loc 1 718 20 view .LVU184
.LBE160:
	.loc 1 721 12 view .LVU185
	movs	r0, #0
.LVL56:
	.loc 1 722 1 view .LVU186
	bx	lr
.L42:
	.align	2
.L41:
	.word	.LANCHOR2
.LFE427:
	.size	sar_active_rx_ctx_get, .-sar_active_rx_ctx_get
	.section	.text.mic_size_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mic_size_get, %function
mic_size_get:
.LVL57:
.LFB434:
	.loc 1 1091 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1092 5 view .LVU188
	.loc 1 1093 47 is_stmt 0 view .LVU189
	cbnz	r0, .L45
	movs	r0, #4
.LVL58:
	.loc 1 1093 47 view .LVU190
	bx	lr
.LVL59:
.L45:
	.loc 1 1093 47 view .LVU191
	movs	r0, #8
.LVL60:
	.loc 1 1095 1 view .LVU192
	bx	lr
.LFE434:
	.size	mic_size_get, .-mic_size_get
	.section	.text.transport_metadata_from_control_tx_params,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_metadata_from_control_tx_params, %function
transport_metadata_from_control_tx_params:
.LVL61:
.LFB436:
	.loc 1 1164 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1164 1 is_stmt 0 view .LVU194
	push	{lr}
.LCFI5:
	mov	r3, r0
	mov	ip, r1
	.loc 1 1165 5 is_stmt 1 view .LVU195
	.loc 1 1165 50 is_stmt 0 view .LVU196
	ldrb	r1, [r1]	@ zero_extendqisi2
.LVL62:
	.loc 1 1165 37 view .LVU197
	strb	r1, [r0, #3]
	.loc 1 1166 5 is_stmt 1 view .LVU198
	.loc 1 1166 37 is_stmt 0 view .LVU199
	movs	r1, #0
	str	r1, [r0, #36]
	.loc 1 1167 5 is_stmt 1 view .LVU200
	.loc 1 1167 42 is_stmt 0 view .LVU201
	ldr	r1, [ip, #8]
	.loc 1 1167 99 view .LVU202
	cmp	r1, #11
	bhi	.L49
	.loc 1 1168 41 discriminator 2 view .LVU203
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	.loc 1 1167 99 discriminator 2 view .LVU204
	cbz	r1, .L50
	.loc 1 1167 99 view .LVU205
	movs	r1, #1
	b	.L47
.L49:
	movs	r1, #1
.L47:
	.loc 1 1167 27 discriminator 6 view .LVU206
	strb	r1, [r3]
	.loc 1 1169 5 is_stmt 1 discriminator 6 view .LVU207
	.loc 1 1169 26 is_stmt 0 discriminator 6 view .LVU208
	movs	r0, #0
.LVL63:
	.loc 1 1169 26 discriminator 6 view .LVU209
	strb	r0, [r3, #2]
	.loc 1 1171 5 is_stmt 1 discriminator 6 view .LVU210
	.loc 1 1171 8 is_stmt 0 discriminator 6 view .LVU211
	cbz	r1, .L48
.LBB161:
	.loc 1 1173 9 is_stmt 1 view .LVU212
	.loc 1 1174 26 is_stmt 0 view .LVU213
	ldr	r1, [ip, #8]
	.loc 1 1174 80 view .LVU214
	adds	r1, r1, #7
	.loc 1 1173 18 view .LVU215
	lsrs	r1, r1, #3
.LVL64:
	.loc 1 1176 9 is_stmt 1 view .LVU216
	.loc 1 1176 62 is_stmt 0 view .LVU217
	subs	r1, r1, #1
.LVL65:
	.loc 1 1176 47 view .LVU218
	strb	r1, [r3, #9]
	.loc 1 1177 9 is_stmt 1 view .LVU219
	.loc 1 1177 49 is_stmt 0 view .LVU220
	strb	r0, [r3, #8]
.LVL66:
.L48:
	.loc 1 1177 49 view .LVU221
.LBE161:
	.loc 1 1180 5 is_stmt 1 view .LVU222
	.loc 1 1180 41 is_stmt 0 view .LVU223
	movs	r1, #1
	strb	r1, [r3, #23]
	.loc 1 1181 5 is_stmt 1 view .LVU224
	.loc 1 1181 41 is_stmt 0 view .LVU225
	add	lr, r3, #12
	add	r1, ip, #16
	ldm	r1, {r0, r1}
	stm	lr, {r0, r1}
	.loc 1 1182 5 is_stmt 1 view .LVU226
	.loc 1 1182 54 is_stmt 0 view .LVU227
	ldrh	r1, [ip, #14]
	.loc 1 1182 41 view .LVU228
	strh	r1, [r3, #20]	@ movhi
	.loc 1 1183 5 is_stmt 1 view .LVU229
	.loc 1 1183 54 is_stmt 0 view .LVU230
	ldr	r1, [ip, #24]
	.loc 1 1183 41 view .LVU231
	str	r1, [r3, #32]
	.loc 1 1184 5 is_stmt 1 view .LVU232
	.loc 1 1184 54 is_stmt 0 view .LVU233
	ldrb	r1, [ip, #28]	@ zero_extendqisi2
	.loc 1 1184 41 view .LVU234
	strb	r1, [r3, #22]
	.loc 1 1185 5 is_stmt 1 view .LVU235
	.loc 1 1185 54 is_stmt 0 view .LVU236
	ldr	r1, [ip, #32]
	.loc 1 1185 41 view .LVU237
	str	r1, [r3, #44]
	.loc 1 1187 5 is_stmt 1 view .LVU238
	.loc 1 1187 23 is_stmt 0 view .LVU239
	str	r2, [r3, #40]
	.loc 1 1202 1 view .LVU240
	ldr	pc, [sp], #4
.LVL67:
.L50:
	.loc 1 1167 99 view .LVU241
	movs	r1, #0
	b	.L47
.LFE436:
	.size	transport_metadata_from_control_tx_params, .-transport_metadata_from_control_tx_params
	.section	.text.control_packet_callback_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	control_packet_callback_get, %function
control_packet_callback_get:
.LVL68:
.LFB449:
	.loc 1 1705 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1706 5 view .LVU243
.LBB162:
	.loc 1 1706 10 view .LVU244
	.loc 1 1706 19 is_stmt 0 view .LVU245
	movs	r1, #0
.LVL69:
.L53:
	.loc 1 1706 42 is_stmt 1 discriminator 1 view .LVU246
	ldr	r3, .L61
	ldr	r3, [r3]
	cmp	r3, r1
	bls	.L59
.LBB163:
.LBB164:
	.loc 1 1709 23 is_stmt 0 view .LVU247
	movs	r3, #0
	b	.L57
.LVL70:
.L54:
	.loc 1 1709 73 is_stmt 1 discriminator 2 view .LVU248
	adds	r3, r3, #1
.LVL71:
.L57:
	.loc 1 1709 44 discriminator 1 view .LVU249
	.loc 1 1709 56 is_stmt 0 discriminator 1 view .LVU250
	ldr	r2, .L61+4
	add	r2, r2, r1, lsl #3
	ldr	r2, [r2, #4]
	.loc 1 1709 44 discriminator 1 view .LVU251
	cmp	r2, r3
	bls	.L60
.LBB165:
	.loc 1 1711 13 is_stmt 1 view .LVU252
	.loc 1 1711 79 is_stmt 0 view .LVU253
	ldr	r2, .L61+4
	ldr	r2, [r2, r1, lsl #3]
	.loc 1 1711 56 view .LVU254
	add	ip, r2, r3, lsl #3
.LVL72:
	.loc 1 1712 13 is_stmt 1 view .LVU255
	.loc 1 1712 26 is_stmt 0 view .LVU256
	ldrb	r2, [r2, r3, lsl #3]	@ zero_extendqisi2
	.loc 1 1712 16 view .LVU257
	cmp	r2, r0
	bne	.L54
	.loc 1 1714 17 is_stmt 1 view .LVU258
	.loc 1 1714 33 is_stmt 0 view .LVU259
	ldr	r0, [ip, #4]
.LVL73:
	.loc 1 1714 33 view .LVU260
	bx	lr
.LVL74:
.L60:
	.loc 1 1714 33 view .LVU261
.LBE165:
.LBE164:
.LBE163:
	.loc 1 1706 77 is_stmt 1 discriminator 2 view .LVU262
	adds	r1, r1, #1
.LVL75:
	.loc 1 1706 77 is_stmt 0 discriminator 2 view .LVU263
	b	.L53
.LVL76:
.L59:
	.loc 1 1706 77 discriminator 2 view .LVU264
.LBE162:
	.loc 1 1718 12 view .LVU265
	movs	r0, #0
.LVL77:
	.loc 1 1719 1 view .LVU266
	bx	lr
.L62:
	.align	2
.L61:
	.word	.LANCHOR4
	.word	.LANCHOR3
.LFE449:
	.size	control_packet_callback_get, .-control_packet_callback_get
	.section	.text.m_send_replay_cache_full_event,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	m_send_replay_cache_full_event, %function
m_send_replay_cache_full_event:
.LVL78:
.LFB407:
	.loc 1 278 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 278 1 is_stmt 0 view .LVU268
	push	{r4, r5, r6, lr}
.LCFI6:
	sub	sp, sp, #48
.LCFI7:
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	.loc 1 279 5 is_stmt 1 view .LVU269
	.loc 1 279 20 is_stmt 0 view .LVU270
	movs	r2, #44
.LVL79:
	.loc 1 279 20 view .LVU271
	movs	r1, #0
.LVL80:
	.loc 1 279 20 view .LVU272
	add	r0, sp, #4
.LVL81:
	.loc 1 279 20 view .LVU273
	bl	memset
.LVL82:
	movs	r3, #15
	strb	r3, [sp, #4]
	strh	r6, [sp, #8]	@ movhi
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	bfi	r3, r5, #0, #1
	strb	r3, [sp, #10]
	strb	r4, [sp, #11]
	.loc 1 286 5 is_stmt 1 view .LVU274
	add	r0, sp, #4
	bl	event_handle
.LVL83:
	.loc 1 287 1 is_stmt 0 view .LVU275
	add	sp, sp, #48
.LCFI8:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LFE407:
	.size	m_send_replay_cache_full_event, .-m_send_replay_cache_full_event
	.section	.text.m_send_sar_cancel_event,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	m_send_sar_cancel_event, %function
m_send_sar_cancel_event:
.LVL84:
.LFB409:
	.loc 1 317 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 317 1 is_stmt 0 view .LVU277
	push	{r4, r5, lr}
.LCFI9:
	sub	sp, sp, #52
.LCFI10:
	mov	r5, r0
	mov	r4, r1
	.loc 1 318 5 is_stmt 1 view .LVU278
	.loc 1 318 20 is_stmt 0 view .LVU279
	movs	r2, #44
	movs	r1, #0
.LVL85:
	.loc 1 318 20 view .LVU280
	add	r0, sp, #4
.LVL86:
	.loc 1 318 20 view .LVU281
	bl	memset
.LVL87:
	movs	r3, #16
	strb	r3, [sp, #4]
	str	r5, [sp, #8]
	strb	r4, [sp, #12]
	.loc 1 324 5 is_stmt 1 view .LVU282
	add	r0, sp, #4
	bl	event_handle
.LVL88:
	.loc 1 325 1 is_stmt 0 view .LVU283
	add	sp, sp, #52
.LCFI11:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 325 1 view .LVU284
.LFE409:
	.size	m_send_sar_cancel_event, .-m_send_sar_cancel_event
	.section	.text.tx_complete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	tx_complete, %function
tx_complete:
.LVL89:
.LFB456:
	.loc 1 1859 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1859 1 is_stmt 0 view .LVU286
	push	{lr}
.LCFI12:
	sub	sp, sp, #52
.LCFI13:
	.loc 1 1860 5 is_stmt 1 view .LVU287
	.loc 1 1860 8 is_stmt 0 view .LVU288
	cbnz	r0, .L68
	.loc 1 1860 41 discriminator 1 view .LVU289
	cmn	r3, #2
	bne	.L70
.LVL90:
.L68:
	.loc 1 1869 5 is_stmt 1 view .LVU290
	ldr	r3, .L71
	ldr	r0, [r3]
	bl	bearer_event_flag_set
.LVL91:
	.loc 1 1870 1 is_stmt 0 view .LVU291
	add	sp, sp, #52
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.LVL92:
.L70:
.LCFI15:
.LBB166:
	.loc 1 1863 9 is_stmt 1 view .LVU292
	.loc 1 1864 9 view .LVU293
	.loc 1 1864 18 is_stmt 0 view .LVU294
	movs	r1, #1
.LVL93:
	.loc 1 1864 18 view .LVU295
	strb	r1, [sp, #4]
	.loc 1 1865 9 is_stmt 1 view .LVU296
	.loc 1 1865 38 is_stmt 0 view .LVU297
	str	r3, [sp, #8]
	.loc 1 1866 9 is_stmt 1 view .LVU298
	.loc 1 1866 42 is_stmt 0 view .LVU299
	str	r2, [sp, #12]
	.loc 1 1867 9 is_stmt 1 view .LVU300
	add	r0, sp, #4
.LVL94:
	.loc 1 1867 9 is_stmt 0 view .LVU301
	bl	event_handle
.LVL95:
	.loc 1 1867 9 view .LVU302
	b	.L68
.L72:
	.align	2
.L71:
	.word	.LANCHOR5
.LBE166:
.LFE456:
	.size	tx_complete, .-tx_complete
	.section	.text.transport_metadata_build,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_metadata_build, %function
transport_metadata_build:
.LVL96:
.LFB447:
	.loc 1 1577 1 is_stmt 1 view -0
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1577 1 is_stmt 0 view .LVU304
	push	{r4, r5, r6, lr}
.LCFI16:
	ldr	r4, [sp, #16]
	.loc 1 1579 5 is_stmt 1 view .LVU305
	.loc 1 1579 8 is_stmt 0 view .LVU306
	cmp	r1, #0
	beq	.L82
	mov	r5, r3
	mov	lr, r1
	.loc 1 1584 5 is_stmt 1 view .LVU307
	ldr	ip, [r2]	@ unaligned
	ldr	r1, [r2, #4]	@ unaligned
.LVL97:
	.loc 1 1584 5 is_stmt 0 view .LVU308
	ldr	r6, [r2, #8]	@ unaligned
	ldr	r3, [r2, #12]	@ unaligned
.LVL98:
	.loc 1 1584 5 view .LVU309
	str	ip, [r4, #12]	@ unaligned
	str	r1, [r4, #16]	@ unaligned
	str	r6, [r4, #20]	@ unaligned
	str	r3, [r4, #24]	@ unaligned
	ldr	ip, [r2, #16]	@ unaligned
	ldr	r1, [r2, #20]	@ unaligned
	str	ip, [r4, #28]	@ unaligned
	str	r1, [r4, #32]	@ unaligned
	.loc 1 1585 5 is_stmt 1 view .LVU310
	.loc 1 1585 31 is_stmt 0 view .LVU311
	movs	r3, #0
	strb	r3, [r4, #1]
	.loc 1 1586 5 is_stmt 1 view .LVU312
.LVL99:
.LBB167:
.LBI167:
	.loc 3 1279 23 view .LVU313
.LBB168:
	.loc 3 1281 5 view .LVU314
	.loc 3 1281 95 is_stmt 0 view .LVU315
	ldrb	r2, [r0]	@ zero_extendqisi2
.LVL100:
	.loc 3 1281 95 view .LVU316
	lsrs	r2, r2, #7
.LVL101:
	.loc 3 1281 95 view .LVU317
.LBE168:
.LBE167:
	.loc 1 1586 31 view .LVU318
	strb	r2, [r4]
	.loc 1 1589 5 is_stmt 1 view .LVU319
	.loc 1 1589 84 is_stmt 0 view .LVU320
	cbz	r2, .L83
	movs	r3, #4
.L75:
.LVL102:
	.loc 1 1590 5 is_stmt 1 discriminator 4 view .LVU321
	.loc 1 1590 8 is_stmt 0 discriminator 4 view .LVU322
	cmp	r3, lr
	bhi	.L84
	.loc 1 1595 5 is_stmt 1 view .LVU323
	.loc 1 1595 28 is_stmt 0 view .LVU324
	ldrb	r1, [r4, #23]	@ zero_extendqisi2
	.loc 1 1595 8 view .LVU325
	cbz	r1, .L76
	.loc 1 1597 9 is_stmt 1 view .LVU326
.LVL103:
.LBB169:
.LBI169:
	.loc 3 1303 23 view .LVU327
.LBB170:
	.loc 3 1305 5 view .LVU328
	.loc 3 1305 23 is_stmt 0 view .LVU329
	ldrb	r3, [r0]	@ zero_extendqisi2
.LVL104:
	.loc 3 1305 63 view .LVU330
	and	r3, r3, #127
.LVL105:
	.loc 3 1305 63 view .LVU331
.LBE170:
.LBE169:
	.loc 1 1597 45 view .LVU332
	strb	r3, [r4, #3]
	.loc 1 1598 9 is_stmt 1 view .LVU333
	.loc 1 1598 34 is_stmt 0 view .LVU334
	movs	r3, #0
	strb	r3, [r4, #2]
.L77:
	.loc 1 1619 5 is_stmt 1 view .LVU335
	.loc 1 1619 8 is_stmt 0 view .LVU336
	cbz	r2, .L80
	.loc 1 1621 9 is_stmt 1 view .LVU337
.LVL106:
.LBB171:
.LBI171:
	.loc 3 1351 24 view .LVU338
.LBB172:
	.loc 3 1353 5 view .LVU339
	.loc 3 1353 25 is_stmt 0 view .LVU340
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	.loc 3 1353 100 view .LVU341
	lsls	r3, r3, #6
	and	r3, r3, #8128
	.loc 3 1354 25 view .LVU342
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	.loc 3 1353 106 view .LVU343
	orr	r3, r3, r2, lsr #2
.LVL107:
	.loc 3 1353 106 view .LVU344
.LBE172:
.LBE171:
	.loc 1 1621 53 view .LVU345
	strh	r3, [r4, #6]	@ movhi
	.loc 1 1622 9 is_stmt 1 view .LVU346
.LVL108:
.LBB173:
.LBI173:
	.loc 3 1378 23 view .LVU347
.LBB174:
	.loc 3 1380 5 view .LVU348
	.loc 3 1380 25 is_stmt 0 view .LVU349
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	.loc 3 1380 94 view .LVU350
	lsls	r3, r3, #3
	and	r3, r3, #24
	.loc 3 1381 25 view .LVU351
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	.loc 3 1380 100 view .LVU352
	orr	r3, r3, r2, lsr #5
.LVL109:
	.loc 3 1380 100 view .LVU353
.LBE174:
.LBE173:
	.loc 1 1622 53 view .LVU354
	strb	r3, [r4, #8]
	.loc 1 1623 9 is_stmt 1 view .LVU355
.LVL110:
.LBB175:
.LBI175:
	.loc 3 1405 23 view .LVU356
.LBB176:
	.loc 3 1407 5 view .LVU357
	.loc 3 1407 23 is_stmt 0 view .LVU358
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	.loc 3 1407 57 view .LVU359
	and	r3, r3, #31
.LVL111:
	.loc 3 1407 57 view .LVU360
.LBE176:
.LBE175:
	.loc 1 1623 53 view .LVU361
	strb	r3, [r4, #9]
.L80:
	.loc 1 1626 5 is_stmt 1 view .LVU362
	.loc 1 1626 41 is_stmt 0 view .LVU363
	movs	r3, #0
	str	r3, [r4, #36]
	.loc 1 1629 5 is_stmt 1 view .LVU364
	.loc 1 1635 5 view .LVU365
	.loc 1 1635 5 view .LVU366
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L88
.LVL112:
.L81:
	.loc 1 1635 5 discriminator 3 view .LVU367
	.loc 1 1636 5 discriminator 3 view .LVU368
	.loc 1 1636 78 is_stmt 0 discriminator 3 view .LVU369
	ldrb	r2, [r5]	@ zero_extendqisi2
	.loc 1 1636 64 discriminator 3 view .LVU370
	ldr	r3, .L90
	ldr	r3, [r3, r2, lsl #2]
	.loc 1 1636 40 discriminator 3 view .LVU371
	str	r3, [r4, #44]
	.loc 1 1638 5 is_stmt 1 discriminator 3 view .LVU372
	.loc 1 1638 12 is_stmt 0 discriminator 3 view .LVU373
	movs	r0, #0
.LVL113:
.L73:
	.loc 1 1639 1 view .LVU374
	pop	{r4, r5, r6, pc}
.LVL114:
.L83:
	.loc 1 1589 84 view .LVU375
	movs	r3, #1
	b	.L75
.LVL115:
.L76:
	.loc 1 1602 9 is_stmt 1 view .LVU376
.LBB177:
.LBI177:
	.loc 3 1231 23 view .LVU377
.LBB178:
	.loc 3 1233 5 view .LVU378
	.loc 3 1233 24 is_stmt 0 view .LVU379
	ldrb	r1, [r0]	@ zero_extendqisi2
	.loc 3 1233 95 view .LVU380
	ubfx	r1, r1, #6, #1
.LVL116:
	.loc 3 1233 95 view .LVU381
.LBE178:
.LBE177:
	.loc 1 1602 51 view .LVU382
	strb	r1, [r4, #3]
	.loc 1 1603 9 is_stmt 1 view .LVU383
.LVL117:
.LBB179:
.LBI179:
	.loc 3 1255 23 view .LVU384
.LBB180:
	.loc 3 1257 5 view .LVU385
	.loc 3 1257 23 is_stmt 0 view .LVU386
	ldrb	r1, [r0]	@ zero_extendqisi2
	.loc 3 1257 59 view .LVU387
	and	r1, r1, #63
.LVL118:
	.loc 3 1257 59 view .LVU388
.LBE180:
.LBE179:
	.loc 1 1603 48 view .LVU389
	strb	r1, [r4, #4]
	.loc 1 1604 9 is_stmt 1 view .LVU390
	.loc 1 1604 12 is_stmt 0 view .LVU391
	cbz	r2, .L78
	.loc 1 1606 13 is_stmt 1 view .LVU392
.LVL119:
.LBB181:
.LBI181:
	.loc 3 1327 23 view .LVU393
.LBB182:
	.loc 3 1329 5 view .LVU394
	.loc 3 1329 5 is_stmt 0 view .LVU395
.LBE182:
.LBE181:
	.loc 1 1606 38 view .LVU396
	ldrsb	r3, [r0, #1]
.LVL120:
	.loc 1 1606 38 view .LVU397
	cmp	r3, #0
	blt	.L89
	movs	r3, #4
.L79:
	.loc 1 1606 38 discriminator 4 view .LVU398
	strb	r3, [r4, #2]
	b	.L77
.L89:
	.loc 1 1606 38 view .LVU399
	movs	r3, #8
	b	.L79
.LVL121:
.L78:
	.loc 1 1610 13 is_stmt 1 view .LVU400
	.loc 1 1610 38 is_stmt 0 view .LVU401
	movs	r1, #4
	strb	r1, [r4, #2]
	.loc 1 1612 13 is_stmt 1 view .LVU402
	.loc 1 1612 38 is_stmt 0 view .LVU403
	add	r3, r3, r1
.LVL122:
	.loc 1 1612 16 view .LVU404
	cmp	r3, lr
	bls	.L77
	.loc 1 1614 24 view .LVU405
	movs	r0, #9
.LVL123:
	.loc 1 1614 24 view .LVU406
	b	.L73
.LVL124:
.L88:
.LBB183:
	.loc 1 1635 5 is_stmt 1 discriminator 1 view .LVU407
	.loc 1 1635 5 discriminator 1 view .LVU408
	.syntax unified
@ 1635 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL125:
	.loc 1 1635 5 discriminator 1 view .LVU409
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL126:
	.loc 1 1635 5 is_stmt 0 discriminator 1 view .LVU410
	b	.L81
.LVL127:
.L82:
	.loc 1 1635 5 discriminator 1 view .LVU411
.LBE183:
	.loc 1 1581 16 view .LVU412
	movs	r0, #9
.LVL128:
	.loc 1 1581 16 view .LVU413
	b	.L73
.LVL129:
.L84:
	.loc 1 1592 16 view .LVU414
	movs	r0, #9
.LVL130:
	.loc 1 1592 16 view .LVU415
	b	.L73
.L91:
	.align	2
.L90:
	.word	.LANCHOR6
.LFE447:
	.size	transport_metadata_build, .-transport_metadata_build
	.section	.text.upper_trs_packet_alloc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	upper_trs_packet_alloc, %function
upper_trs_packet_alloc:
.LVL131:
.LFB422:
	.loc 1 575 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 575 1 is_stmt 0 view .LVU417
	push	{r4, r5, r6, lr}
.LCFI17:
	mov	r4, r1
	mov	r5, r3
	.loc 1 576 5 is_stmt 1 view .LVU418
	.loc 1 576 38 is_stmt 0 view .LVU419
	ldrb	r3, [r0]	@ zero_extendqisi2
.LVL132:
	.loc 1 577 59 view .LVU420
	cbz	r3, .L95
	movs	r6, #4
.L93:
.LVL133:
	.loc 1 579 5 is_stmt 1 view .LVU421
	.loc 1 579 51 is_stmt 0 view .LVU422
	add	r2, r2, r6
.LVL134:
	.loc 1 579 38 view .LVU423
	str	r2, [r4, #8]
	.loc 1 580 5 is_stmt 1 view .LVU424
	.loc 1 580 39 is_stmt 0 view .LVU425
	add	r3, r0, #12
	.loc 1 580 37 view .LVU426
	str	r3, [r4]
	.loc 1 581 5 is_stmt 1 view .LVU427
	.loc 1 581 44 is_stmt 0 view .LVU428
	ldr	r3, [r0, #40]
	.loc 1 581 32 view .LVU429
	str	r3, [r4, #4]
	.loc 1 582 5 is_stmt 1 view .LVU430
	.loc 1 582 54 is_stmt 0 view .LVU431
	ldr	r3, [r0, #44]
	.loc 1 582 42 view .LVU432
	str	r3, [r4, #12]
	.loc 1 583 5 is_stmt 1 view .LVU433
	.loc 1 583 31 is_stmt 0 view .LVU434
	movs	r3, #0
	strb	r3, [r4, #16]
	.loc 1 585 5 is_stmt 1 view .LVU435
	.loc 1 585 23 is_stmt 0 view .LVU436
	mov	r0, r4
.LVL135:
	.loc 1 585 23 view .LVU437
	bl	network_packet_alloc
.LVL136:
	.loc 1 586 5 is_stmt 1 view .LVU438
	.loc 1 586 8 is_stmt 0 view .LVU439
	cbnz	r0, .L92
	.loc 1 588 9 is_stmt 1 view .LVU440
	.loc 1 588 43 is_stmt 0 view .LVU441
	ldr	r3, [r4, #20]
	.loc 1 588 33 view .LVU442
	add	r3, r3, r6
	.loc 1 588 31 view .LVU443
	str	r3, [r5]
	.loc 1 590 5 is_stmt 1 view .LVU444
.L92:
	.loc 1 591 1 is_stmt 0 view .LVU445
	pop	{r4, r5, r6, pc}
.LVL137:
.L95:
	.loc 1 577 59 view .LVU446
	movs	r6, #1
	b	.L93
.LFE422:
	.size	upper_trs_packet_alloc, .-upper_trs_packet_alloc
	.section	.text.upper_trs_packet_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	upper_trs_packet_encrypt, %function
upper_trs_packet_encrypt:
.LVL138:
.LFB433:
	.loc 1 1055 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1055 1 is_stmt 0 view .LVU448
	push	{r4, r5, r6, r7, r8, lr}
.LCFI18:
	sub	sp, sp, #56
.LCFI19:
	mov	r5, r1
	mov	r6, r2
	mov	r4, r3
	.loc 1 1056 5 is_stmt 1 view .LVU449
	.loc 1 1056 5 view .LVU450
	mov	r8, r0
	cmp	r0, #0
	beq	.L107
.LVL139:
.L98:
	.loc 1 1056 5 discriminator 3 view .LVU451
	.loc 1 1057 5 discriminator 3 view .LVU452
	.loc 1 1057 5 discriminator 3 view .LVU453
	cmp	r5, #0
	beq	.L108
.L99:
	.loc 1 1057 5 discriminator 3 view .LVU454
	.loc 1 1058 5 discriminator 3 view .LVU455
	.loc 1 1058 5 discriminator 3 view .LVU456
	cmp	r4, #0
	beq	.L109
.L100:
	.loc 1 1058 5 discriminator 3 view .LVU457
	.loc 1 1060 5 discriminator 3 view .LVU458
	.loc 1 1061 5 discriminator 3 view .LVU459
	.loc 1 1061 32 is_stmt 0 discriminator 3 view .LVU460
	ldr	r3, [r4, #36]
	.loc 1 1061 22 discriminator 3 view .LVU461
	adds	r3, r3, #2
	.loc 1 1061 20 discriminator 3 view .LVU462
	str	r3, [sp, #20]
	.loc 1 1063 5 is_stmt 1 discriminator 3 view .LVU463
	.loc 1 1064 5 discriminator 3 view .LVU464
	add	r0, r4, #12
	.loc 1 1065 48 is_stmt 0 discriminator 3 view .LVU465
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	.loc 1 1064 5 discriminator 3 view .LVU466
	cmp	r3, #0
	beq	.L105
	.loc 1 1064 5 view .LVU467
	movs	r1, #1
.L101:
	.loc 1 1066 35 view .LVU468
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	.loc 1 1064 5 view .LVU469
	add	r7, sp, #4
	mov	r3, r7
	cmp	r2, #8
	ite	ne
	movne	r2, #0
	moveq	r2, #1
	bl	enc_nonce_generate
.LVL140:
	.loc 1 1069 5 is_stmt 1 view .LVU470
	.loc 1 1069 22 is_stmt 0 view .LVU471
	str	r7, [sp, #24]
	.loc 1 1070 5 is_stmt 1 view .LVU472
	.loc 1 1070 22 is_stmt 0 view .LVU473
	str	r8, [sp, #28]
	.loc 1 1071 5 is_stmt 1 view .LVU474
	.loc 1 1071 22 is_stmt 0 view .LVU475
	uxth	r2, r6
	strh	r2, [sp, #32]	@ movhi
	.loc 1 1072 5 is_stmt 1 view .LVU476
	.loc 1 1072 22 is_stmt 0 view .LVU477
	str	r5, [sp, #44]
	.loc 1 1073 5 is_stmt 1 view .LVU478
	.loc 1 1073 51 is_stmt 0 view .LVU479
	add	r5, r5, r2
.LVL141:
	.loc 1 1073 22 view .LVU480
	str	r5, [sp, #48]
	.loc 1 1074 5 is_stmt 1 view .LVU481
	.loc 1 1074 34 is_stmt 0 view .LVU482
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	.loc 1 1074 22 view .LVU483
	strb	r3, [sp, #52]
	.loc 1 1076 5 is_stmt 1 view .LVU484
	.loc 1 1076 28 is_stmt 0 view .LVU485
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	.loc 1 1076 8 view .LVU486
	cmp	r3, #2
	beq	.L110
	.loc 1 1084 9 is_stmt 1 view .LVU487
	.loc 1 1084 24 is_stmt 0 view .LVU488
	movs	r3, #0
	strh	r3, [sp, #40]	@ movhi
.LVL142:
.L104:
	.loc 1 1087 5 is_stmt 1 view .LVU489
	add	r0, sp, #20
	bl	enc_aes_ccm_encrypt
.LVL143:
	.loc 1 1088 1 is_stmt 0 view .LVU490
	add	sp, sp, #56
.LCFI20:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL144:
.L107:
.LCFI21:
.LBB184:
	.loc 1 1056 5 is_stmt 1 discriminator 1 view .LVU491
	.loc 1 1056 5 discriminator 1 view .LVU492
	.syntax unified
@ 1056 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL145:
	.loc 1 1056 5 discriminator 1 view .LVU493
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL146:
	.loc 1 1056 5 is_stmt 0 discriminator 1 view .LVU494
	b	.L98
.L108:
	.loc 1 1056 5 discriminator 1 view .LVU495
.LBE184:
.LBB185:
	.loc 1 1057 5 is_stmt 1 discriminator 1 view .LVU496
	.loc 1 1057 5 discriminator 1 view .LVU497
	.syntax unified
@ 1057 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL147:
	.loc 1 1057 5 discriminator 1 view .LVU498
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL148:
	.loc 1 1057 5 is_stmt 0 discriminator 1 view .LVU499
	b	.L99
.L109:
	.loc 1 1057 5 discriminator 1 view .LVU500
.LBE185:
.LBB186:
	.loc 1 1058 5 is_stmt 1 discriminator 1 view .LVU501
	.loc 1 1058 5 discriminator 1 view .LVU502
	.syntax unified
@ 1058 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL149:
	.loc 1 1058 5 discriminator 1 view .LVU503
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL150:
	.loc 1 1058 5 is_stmt 0 discriminator 1 view .LVU504
	b	.L100
.L105:
	.loc 1 1058 5 discriminator 1 view .LVU505
.LBE186:
	.loc 1 1064 5 view .LVU506
	movs	r1, #2
	b	.L101
.LVL151:
.L110:
	.loc 1 1078 9 is_stmt 1 view .LVU507
	.loc 1 1078 9 view .LVU508
	ldr	r3, [r4, #16]
	cbz	r3, .L111
.LVL152:
.L103:
	.loc 1 1078 9 discriminator 3 view .LVU509
	.loc 1 1079 9 discriminator 3 view .LVU510
	.loc 1 1079 45 is_stmt 0 discriminator 3 view .LVU511
	ldr	r3, [r4, #16]
	.loc 1 1079 24 discriminator 3 view .LVU512
	str	r3, [sp, #36]
	.loc 1 1080 9 is_stmt 1 discriminator 3 view .LVU513
	.loc 1 1080 24 is_stmt 0 discriminator 3 view .LVU514
	movs	r3, #16
	strh	r3, [sp, #40]	@ movhi
	b	.L104
.LVL153:
.L111:
.LBB187:
	.loc 1 1078 9 is_stmt 1 discriminator 1 view .LVU515
	.loc 1 1078 9 discriminator 1 view .LVU516
	.syntax unified
@ 1078 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL154:
	.loc 1 1078 9 discriminator 1 view .LVU517
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL155:
	.loc 1 1078 9 is_stmt 0 discriminator 1 view .LVU518
	b	.L103
.LBE187:
.LFE433:
	.size	upper_trs_packet_encrypt, .-upper_trs_packet_encrypt
	.section	.text.sar_segment_send,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_segment_send, %function
sar_segment_send:
.LVL156:
.LFB438:
	.loc 1 1238 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1238 1 is_stmt 0 view .LVU520
	push	{r4, r5, r6, r7, r8, lr}
.LCFI22:
	sub	sp, sp, #32
.LCFI23:
	mov	r4, r0
	mov	r5, r1
	.loc 1 1239 5 is_stmt 1 view .LVU521
	.loc 1 1239 28 is_stmt 0 view .LVU522
	ldrb	r3, [r0, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L119
	movs	r6, #8
.L113:
.LVL157:
	.loc 1 1240 5 is_stmt 1 discriminator 4 view .LVU523
	.loc 1 1240 14 is_stmt 0 discriminator 4 view .LVU524
	mul	r8, r5, r6
.LVL158:
	.loc 1 1243 5 is_stmt 1 discriminator 4 view .LVU525
	.loc 1 1243 58 is_stmt 0 discriminator 4 view .LVU526
	ldrb	r3, [r4, #9]	@ zero_extendqisi2
	.loc 1 1243 8 discriminator 4 view .LVU527
	cmp	r3, r5
	beq	.L121
.L114:
	.loc 1 1248 5 is_stmt 1 view .LVU528
	.loc 1 1248 53 is_stmt 0 view .LVU529
	strb	r5, [r4, #8]
	.loc 1 1249 5 is_stmt 1 view .LVU530
	.loc 1 1250 5 view .LVU531
	.loc 1 1251 5 view .LVU532
	.loc 1 1251 23 is_stmt 0 view .LVU533
	add	r3, sp, #4
	mov	r2, r6
	add	r1, sp, #8
.LVL159:
	.loc 1 1251 23 view .LVU534
	mov	r0, r4
.LVL160:
	.loc 1 1251 23 view .LVU535
	bl	upper_trs_packet_alloc
.LVL161:
	.loc 1 1255 5 is_stmt 1 view .LVU536
	.loc 1 1255 8 is_stmt 0 view .LVU537
	mov	r7, r0
	cbnz	r0, .L112
	.loc 1 1257 9 is_stmt 1 view .LVU538
	.loc 1 1257 12 is_stmt 0 view .LVU539
	cbnz	r5, .L116
	.loc 1 1257 64 discriminator 1 view .LVU540
	ldrb	r3, [r4, #83]	@ zero_extendqisi2
	.loc 1 1257 32 discriminator 1 view .LVU541
	cbnz	r3, .L116
	.loc 1 1259 13 is_stmt 1 view .LVU542
	.loc 1 1260 50 is_stmt 0 view .LVU543
	ldr	r3, [r4, #24]
	.loc 1 1260 67 view .LVU544
	ubfx	r3, r3, #0, #13
	.loc 1 1259 55 view .LVU545
	strh	r3, [r4, #6]	@ movhi
	.loc 1 1261 13 is_stmt 1 view .LVU546
	.loc 1 1261 57 is_stmt 0 view .LVU547
	movs	r3, #1
	strb	r3, [r4, #83]
.L116:
	.loc 1 1265 9 is_stmt 1 view .LVU548
	.loc 1 1265 37 is_stmt 0 view .LVU549
	ldrb	r3, [r4, #23]	@ zero_extendqisi2
	.loc 1 1265 12 view .LVU550
	cbnz	r3, .L117
	.loc 1 1265 85 discriminator 1 view .LVU551
	ldrb	r3, [r4, #82]	@ zero_extendqisi2
	.loc 1 1265 53 discriminator 1 view .LVU552
	cbnz	r3, .L117
	.loc 1 1267 13 is_stmt 1 view .LVU553
	.loc 1 1267 13 view .LVU554
	cbnz	r5, .L122
.LVL162:
.L118:
	.loc 1 1267 13 discriminator 3 view .LVU555
	.loc 1 1269 13 discriminator 3 view .LVU556
	.loc 1 1269 47 is_stmt 0 discriminator 3 view .LVU557
	ldr	r0, [r4, #108]
	.loc 1 1271 56 discriminator 3 view .LVU558
	ldrh	r1, [r4, #74]
	.loc 1 1271 85 discriminator 3 view .LVU559
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	.loc 1 1269 13 discriminator 3 view .LVU560
	mov	r3, r4
	subs	r2, r1, r2
	mov	r1, r0
	bl	upper_trs_packet_encrypt
.LVL163:
	.loc 1 1273 13 is_stmt 1 discriminator 3 view .LVU561
	.loc 1 1273 60 is_stmt 0 discriminator 3 view .LVU562
	movs	r3, #1
	strb	r3, [r4, #82]
.L117:
	.loc 1 1276 9 is_stmt 1 view .LVU563
	ldr	r1, [sp, #28]
	mov	r0, r4
	bl	trs_packet_header_build
.LVL164:
	.loc 1 1277 9 view .LVU564
	.loc 1 1277 45 is_stmt 0 view .LVU565
	ldr	r1, [r4, #108]
	.loc 1 1277 9 view .LVU566
	mov	r2, r6
	add	r1, r1, r8
	ldr	r0, [sp, #4]
	bl	memcpy
.LVL165:
	.loc 1 1278 9 is_stmt 1 view .LVU567
	add	r0, sp, #8
	bl	network_packet_send
.LVL166:
	.loc 1 1281 5 view .LVU568
.L112:
	.loc 1 1282 1 is_stmt 0 view .LVU569
	mov	r0, r7
	add	sp, sp, #32
.LCFI24:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL167:
.L119:
.LCFI25:
	.loc 1 1239 28 view .LVU570
	movs	r6, #12
	b	.L113
.LVL168:
.L121:
	.loc 1 1245 9 is_stmt 1 view .LVU571
	.loc 1 1245 41 is_stmt 0 view .LVU572
	ldrh	r6, [r4, #74]
.LVL169:
	.loc 1 1245 21 view .LVU573
	sub	r6, r6, r8
.LVL170:
	.loc 1 1245 21 view .LVU574
	b	.L114
.LVL171:
.L122:
.LBB188:
	.loc 1 1267 13 is_stmt 1 discriminator 1 view .LVU575
	.loc 1 1267 13 discriminator 1 view .LVU576
	.syntax unified
@ 1267 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL172:
	.loc 1 1267 13 discriminator 1 view .LVU577
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL173:
	.loc 1 1267 13 is_stmt 0 discriminator 1 view .LVU578
	b	.L118
.LBE188:
.LFE438:
	.size	sar_segment_send, .-sar_segment_send
	.section	.text.trs_sar_packet_out,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	trs_sar_packet_out, %function
trs_sar_packet_out:
.LVL174:
.LFB439:
	.loc 1 1296 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1296 1 is_stmt 0 view .LVU580
	push	{r4, r5, r6, lr}
.LCFI26:
	mov	r5, r0
	.loc 1 1297 5 is_stmt 1 view .LVU581
.LVL175:
	.loc 1 1299 5 view .LVU582
	.loc 1 1299 8 is_stmt 0 view .LVU583
	mov	r6, r1
	cbz	r1, .L124
	.loc 1 1301 9 is_stmt 1 view .LVU584
	.loc 1 1301 26 is_stmt 0 view .LVU585
	movs	r3, #0
	str	r3, [r1]
.L124:
	.loc 1 1305 5 is_stmt 1 view .LVU586
.LBB189:
	.loc 1 1305 10 view .LVU587
	.loc 1 1305 18 is_stmt 0 view .LVU588
	ldrb	r4, [r5, #80]	@ zero_extendqisi2
.LVL176:
	.loc 1 1305 18 view .LVU589
.LBE189:
	.loc 1 1297 14 view .LVU590
	movs	r1, #0
.LVL177:
.LBB190:
	.loc 1 1305 5 view .LVU591
	b	.L125
.LVL178:
.L128:
	.loc 1 1321 17 is_stmt 1 view .LVU592
	.loc 1 1321 62 is_stmt 0 view .LVU593
	adds	r3, r4, #1
	.loc 1 1321 58 view .LVU594
	strb	r3, [r5, #80]
.LVL179:
.L126:
	.loc 1 1307 10 is_stmt 1 view .LVU595
	adds	r4, r4, #1
.LVL180:
	.loc 1 1307 10 is_stmt 0 view .LVU596
	uxtb	r4, r4
.LVL181:
.L125:
	.loc 1 1306 12 is_stmt 1 view .LVU597
	.loc 1 1306 47 is_stmt 0 view .LVU598
	ldrb	r3, [r5, #9]	@ zero_extendqisi2
	.loc 1 1306 12 view .LVU599
	cmp	r3, r4
	bcc	.L123
	.loc 1 1309 9 is_stmt 1 view .LVU600
	.loc 1 1309 32 is_stmt 0 view .LVU601
	ldr	r2, [r5, #76]
	.loc 1 1309 49 view .LVU602
	movs	r3, #1
	lsls	r3, r3, r4
	.loc 1 1309 12 view .LVU603
	tst	r2, r3
	bne	.L126
	.loc 1 1312 13 is_stmt 1 view .LVU604
	.loc 1 1312 22 is_stmt 0 view .LVU605
	mov	r1, r4
.LVL182:
	.loc 1 1312 22 view .LVU606
	mov	r0, r5
	bl	sar_segment_send
.LVL183:
	.loc 1 1313 13 is_stmt 1 view .LVU607
	.loc 1 1313 16 is_stmt 0 view .LVU608
	mov	r1, r0
	cbnz	r0, .L123
	.loc 1 1315 17 is_stmt 1 view .LVU609
	.loc 1 1315 20 is_stmt 0 view .LVU610
	cmp	r6, #0
	beq	.L128
	.loc 1 1317 21 is_stmt 1 view .LVU611
	.loc 1 1317 40 is_stmt 0 view .LVU612
	ldr	r3, [r6]
	.loc 1 1317 57 view .LVU613
	adds	r3, r3, #1
	.loc 1 1317 38 view .LVU614
	str	r3, [r6]
	b	.L128
.LVL184:
.L123:
	.loc 1 1317 38 view .LVU615
.LBE190:
	.loc 1 1331 1 view .LVU616
	mov	r0, r1
	pop	{r4, r5, r6, pc}
	.loc 1 1331 1 view .LVU617
.LFE439:
	.size	trs_sar_packet_out, .-trs_sar_packet_out
	.section	.text.unsegmented_packet_tx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	unsegmented_packet_tx, %function
unsegmented_packet_tx:
.LVL185:
.LFB437:
	.loc 1 1207 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1207 1 is_stmt 0 view .LVU619
	push	{r4, r5, r6, r7, lr}
.LCFI27:
	sub	sp, sp, #36
.LCFI28:
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	.loc 1 1208 5 is_stmt 1 view .LVU620
	.loc 1 1208 33 is_stmt 0 view .LVU621
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	.loc 1 1208 21 view .LVU622
	adds	r2, r3, r2
.LVL186:
	.loc 1 1208 46 view .LVU623
	ldrb	r3, [r0, #23]	@ zero_extendqisi2
	cbz	r3, .L136
	movs	r3, #11
.L132:
	.loc 1 1208 8 discriminator 4 view .LVU624
	cmp	r2, r3
	bhi	.L137
	.loc 1 1212 5 is_stmt 1 view .LVU625
	.loc 1 1214 5 view .LVU626
	.loc 1 1215 5 view .LVU627
	.loc 1 1215 23 is_stmt 0 view .LVU628
	add	r3, sp, #4
	add	r1, sp, #8
.LVL187:
	.loc 1 1215 23 view .LVU629
	mov	r0, r4
.LVL188:
	.loc 1 1215 23 view .LVU630
	bl	upper_trs_packet_alloc
.LVL189:
	.loc 1 1219 5 is_stmt 1 view .LVU631
	.loc 1 1219 8 is_stmt 0 view .LVU632
	mov	r7, r0
	cbz	r0, .L139
.LVL190:
.L131:
	.loc 1 1235 1 view .LVU633
	mov	r0, r7
	add	sp, sp, #36
.LCFI29:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL191:
.L136:
.LCFI30:
	.loc 1 1208 46 view .LVU634
	movs	r3, #15
	b	.L132
.LVL192:
.L139:
	.loc 1 1221 9 is_stmt 1 view .LVU635
	ldr	r1, [sp, #28]
	mov	r0, r4
.LVL193:
	.loc 1 1221 9 is_stmt 0 view .LVU636
	bl	trs_packet_header_build
.LVL194:
	.loc 1 1223 9 is_stmt 1 view .LVU637
	.loc 1 1223 28 is_stmt 0 view .LVU638
	ldrb	r3, [r4, #23]	@ zero_extendqisi2
	.loc 1 1223 12 view .LVU639
	cbz	r3, .L134
	.loc 1 1225 13 is_stmt 1 view .LVU640
	mov	r2, r5
	mov	r1, r6
	ldr	r0, [sp, #4]
	bl	memcpy
.LVL195:
.L135:
	.loc 1 1232 9 view .LVU641
	add	r0, sp, #8
	bl	network_packet_send
.LVL196:
	b	.L131
.L134:
	.loc 1 1229 13 view .LVU642
	mov	r3, r4
	mov	r2, r5
	ldr	r1, [sp, #4]
	mov	r0, r6
	bl	upper_trs_packet_encrypt
.LVL197:
	b	.L135
.LVL198:
.L137:
	.loc 1 1210 16 is_stmt 0 view .LVU643
	movs	r7, #9
	b	.L131
.LFE437:
	.size	unsegmented_packet_tx, .-unsegmented_packet_tx
	.section	.text.tx_retry_timer_reset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	tx_retry_timer_reset, %function
tx_retry_timer_reset:
.LVL199:
.LFB420:
	.loc 1 531 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 531 1 is_stmt 0 view .LVU645
	push	{r4, lr}
.LCFI31:
	mov	r4, r0
	.loc 1 532 5 is_stmt 1 view .LVU646
	.loc 1 532 5 view .LVU647
	ldrb	r3, [r0, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L145
.LVL200:
.L141:
	.loc 1 532 5 discriminator 3 view .LVU648
	.loc 1 534 5 discriminator 3 view .LVU649
	.loc 1 534 29 is_stmt 0 discriminator 3 view .LVU650
	bl	timer_now
.LVL201:
	.loc 1 538 5 is_stmt 1 discriminator 3 view .LVU651
	.loc 1 538 50 is_stmt 0 discriminator 3 view .LVU652
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	.loc 1 539 76 discriminator 3 view .LVU653
	cmp	r3, #1
	beq	.L146
.LVL202:
.LBB191:
.LBI191:
	.loc 1 332 24 is_stmt 1 view .LVU654
.LBB192:
	.loc 1 334 5 view .LVU655
	.loc 1 334 24 is_stmt 0 view .LVU656
	ldr	r3, .L147
	ldr	r1, [r3, #12]
.LVL203:
.L143:
	.loc 1 334 24 view .LVU657
.LBE192:
.LBE191:
	.loc 1 545 5 is_stmt 1 discriminator 2 view .LVU658
	add	r1, r1, r0
.LVL204:
	.loc 1 545 5 is_stmt 0 discriminator 2 view .LVU659
	add	r0, r4, #48
	bl	timer_sch_reschedule
.LVL205:
	.loc 1 546 1 discriminator 2 view .LVU660
	pop	{r4, pc}
.LVL206:
.L145:
.LBB193:
	.loc 1 532 5 is_stmt 1 discriminator 1 view .LVU661
	.loc 1 532 5 discriminator 1 view .LVU662
	.syntax unified
@ 532 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL207:
	.loc 1 532 5 discriminator 1 view .LVU663
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL208:
	.loc 1 532 5 is_stmt 0 discriminator 1 view .LVU664
	b	.L141
.LVL209:
.L146:
	.loc 1 532 5 discriminator 1 view .LVU665
.LBE193:
	.loc 1 539 22 discriminator 1 view .LVU666
	ldrb	r2, [r4, #22]	@ zero_extendqisi2
.LVL210:
.LBB194:
.LBI194:
	.loc 1 332 24 is_stmt 1 discriminator 1 view .LVU667
.LBB195:
	.loc 1 334 5 discriminator 1 view .LVU668
	.loc 1 334 24 is_stmt 0 discriminator 1 view .LVU669
	ldr	r3, .L147
	ldr	r1, [r3, #12]
	.loc 1 334 61 discriminator 1 view .LVU670
	ldr	r3, [r3, #16]
	.loc 1 334 47 discriminator 1 view .LVU671
	mla	r1, r3, r2, r1
.LVL211:
	.loc 1 334 47 discriminator 1 view .LVU672
.LBE195:
.LBE194:
	b	.L143
.L148:
	.align	2
.L147:
	.word	.LANCHOR7
.LFE420:
	.size	tx_retry_timer_reset, .-tx_retry_timer_reset
	.section	.text.trs_sar_tx_process,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	trs_sar_tx_process, %function
trs_sar_tx_process:
.LFB441:
	.loc 1 1394 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI32:
	sub	sp, sp, #12
.LCFI33:
	.loc 1 1396 5 view .LVU674
.LBB196:
	.loc 1 1396 10 view .LVU675
.LVL212:
	.loc 1 1396 19 is_stmt 0 view .LVU676
	movs	r4, #0
	.loc 1 1396 5 view .LVU677
	b	.L150
.LVL213:
.L152:
.LBB197:
	.loc 1 1406 17 is_stmt 1 view .LVU678
	mov	r0, r5
.LVL214:
	.loc 1 1406 17 is_stmt 0 view .LVU679
	bl	tx_retry_timer_reset
.LVL215:
.L151:
	.loc 1 1406 17 view .LVU680
.LBE197:
	.loc 1 1396 58 is_stmt 1 discriminator 2 view .LVU681
	adds	r4, r4, #1
.LVL216:
.L150:
	.loc 1 1396 28 discriminator 1 view .LVU682
	cmp	r4, #3
	bhi	.L156
	.loc 1 1398 9 view .LVU683
	.loc 1 1398 42 is_stmt 0 view .LVU684
	rsb	r2, r4, r4, lsl #3
	ldr	r3, .L157
	add	r3, r3, r2, lsl #4
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	.loc 1 1398 12 view .LVU685
	cmp	r3, #1
	bne	.L151
.LBB198:
	.loc 1 1400 13 is_stmt 1 view .LVU686
	.loc 1 1400 22 is_stmt 0 view .LVU687
	movs	r3, #0
	str	r3, [sp, #4]
	.loc 1 1401 13 is_stmt 1 view .LVU688
	.loc 1 1401 31 is_stmt 0 view .LVU689
	ldr	r5, .L157
	add	r5, r5, r2, lsl #4
	add	r1, sp, #4
	mov	r0, r5
	bl	trs_sar_packet_out
.LVL217:
	.loc 1 1404 13 is_stmt 1 view .LVU690
	.loc 1 1404 16 is_stmt 0 view .LVU691
	cmp	r0, #4
	beq	.L152
	.loc 1 1404 61 discriminator 1 view .LVU692
	ldr	r3, [sp, #4]
	.loc 1 1404 44 discriminator 1 view .LVU693
	cmp	r3, #0
	beq	.L151
	b	.L152
.LVL218:
.L156:
	.loc 1 1404 44 discriminator 1 view .LVU694
.LBE198:
.LBE196:
	.loc 1 1410 1 view .LVU695
	add	sp, sp, #12
.LCFI34:
	@ sp needed
	pop	{r4, r5, pc}
.LVL219:
.L158:
	.loc 1 1410 1 view .LVU696
	.align	2
.L157:
	.word	.LANCHOR2
.LFE441:
	.size	trs_sar_tx_process, .-trs_sar_tx_process
	.section	.text.rx_incomplete_timer_reset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	rx_incomplete_timer_reset, %function
rx_incomplete_timer_reset:
.LVL220:
.LFB419:
	.loc 1 524 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 524 1 is_stmt 0 view .LVU698
	push	{r3, r4, r5, lr}
.LCFI35:
	mov	r4, r0
	.loc 1 525 5 is_stmt 1 view .LVU699
	.loc 1 525 5 view .LVU700
	ldrb	r3, [r0, #72]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L162
.LVL221:
.L160:
	.loc 1 525 5 discriminator 3 view .LVU701
	.loc 1 526 5 discriminator 3 view .LVU702
	.loc 1 526 14 is_stmt 0 discriminator 3 view .LVU703
	ldr	r3, .L163
	ldr	r5, [r3]
.LVL222:
	.loc 1 527 5 is_stmt 1 discriminator 3 view .LVU704
	.loc 1 527 51 is_stmt 0 discriminator 3 view .LVU705
	bl	timer_now
.LVL223:
	.loc 1 527 5 discriminator 3 view .LVU706
	adds	r1, r0, r5
	add	r0, r4, #48
	bl	timer_sch_reschedule
.LVL224:
	.loc 1 528 1 discriminator 3 view .LVU707
	pop	{r3, r4, r5, pc}
.LVL225:
.L162:
.LBB199:
	.loc 1 525 5 is_stmt 1 discriminator 1 view .LVU708
	.loc 1 525 5 discriminator 1 view .LVU709
	.syntax unified
@ 525 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL226:
	.loc 1 525 5 discriminator 1 view .LVU710
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL227:
	.loc 1 525 5 is_stmt 0 discriminator 1 view .LVU711
	b	.L160
.L164:
	.align	2
.L163:
	.word	.LANCHOR7
.LBE199:
.LFE419:
	.size	rx_incomplete_timer_reset, .-rx_incomplete_timer_reset
	.section	.text.ack_timer_reset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ack_timer_reset, %function
ack_timer_reset:
.LVL228:
.LFB418:
	.loc 1 516 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 516 1 is_stmt 0 view .LVU713
	push	{r3, r4, r5, lr}
.LCFI36:
	mov	r4, r0
	.loc 1 517 5 is_stmt 1 view .LVU714
	.loc 1 517 5 view .LVU715
	ldrb	r3, [r0, #72]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L168
.LVL229:
.L166:
	.loc 1 517 5 discriminator 3 view .LVU716
	.loc 1 518 5 discriminator 3 view .LVU717
	.loc 1 518 22 is_stmt 0 discriminator 3 view .LVU718
	ldr	r3, .L169
	ldrb	r2, [r3, #21]	@ zero_extendqisi2
.LVL230:
.LBB200:
.LBI200:
	.loc 1 327 24 is_stmt 1 discriminator 3 view .LVU719
.LBB201:
	.loc 1 329 5 discriminator 3 view .LVU720
	.loc 1 329 24 is_stmt 0 discriminator 3 view .LVU721
	ldr	r5, [r3, #4]
	.loc 1 329 59 discriminator 3 view .LVU722
	ldr	r3, [r3, #8]
	.loc 1 329 45 discriminator 3 view .LVU723
	mla	r5, r3, r2, r5
.LVL231:
	.loc 1 329 45 discriminator 3 view .LVU724
.LBE201:
.LBE200:
	.loc 1 519 5 is_stmt 1 discriminator 3 view .LVU725
	.loc 1 519 67 is_stmt 0 discriminator 3 view .LVU726
	bl	timer_now
.LVL232:
	.loc 1 519 5 discriminator 3 view .LVU727
	adds	r1, r0, r5
	add	r0, r4, #80
	bl	timer_sch_reschedule
.LVL233:
	.loc 1 520 5 is_stmt 1 discriminator 3 view .LVU728
	.loc 1 520 44 is_stmt 0 discriminator 3 view .LVU729
	movs	r3, #1
	strb	r3, [r4, #104]
	.loc 1 521 1 discriminator 3 view .LVU730
	pop	{r3, r4, r5, pc}
.LVL234:
.L168:
.LBB202:
	.loc 1 517 5 is_stmt 1 discriminator 1 view .LVU731
	.loc 1 517 5 discriminator 1 view .LVU732
	.syntax unified
@ 517 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL235:
	.loc 1 517 5 discriminator 1 view .LVU733
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL236:
	.loc 1 517 5 is_stmt 0 discriminator 1 view .LVU734
	b	.L166
.L170:
	.align	2
.L169:
	.word	.LANCHOR7
.LBE202:
.LFE418:
	.size	ack_timer_reset, .-ack_timer_reset
	.section	.text.transport_metadata_validate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_metadata_validate, %function
transport_metadata_validate:
.LVL237:
.LFB446:
	.loc 1 1529 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1529 1 is_stmt 0 view .LVU736
	push	{r4, lr}
.LCFI37:
	mov	r4, r0
	.loc 1 1530 5 is_stmt 1 view .LVU737
	.loc 1 1530 9 is_stmt 0 view .LVU738
	ldrh	r0, [r0, #20]
.LVL238:
	.loc 1 1530 9 view .LVU739
	bl	nrf_mesh_address_type_get
.LVL239:
	.loc 1 1530 8 view .LVU740
	cmp	r0, #1
	bne	.L175
	.loc 1 1531 32 discriminator 1 view .LVU741
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	.loc 1 1530 93 discriminator 1 view .LVU742
	cbz	r3, .L176
	.loc 1 1536 5 is_stmt 1 view .LVU743
	.loc 1 1536 33 is_stmt 0 view .LVU744
	ldrsb	r2, [r4, #22]
	.loc 1 1536 8 view .LVU745
	cmp	r2, #0
	blt	.L177
	.loc 1 1541 5 is_stmt 1 view .LVU746
	.loc 1 1541 28 is_stmt 0 view .LVU747
	ldrb	r2, [r4, #23]	@ zero_extendqisi2
	.loc 1 1541 8 view .LVU748
	cbz	r2, .L173
	.loc 1 1544 9 is_stmt 1 view .LVU749
	.loc 1 1544 12 is_stmt 0 view .LVU750
	cmp	r3, #2
	beq	.L178
	.loc 1 1549 9 is_stmt 1 view .LVU751
	.loc 1 1549 59 is_stmt 0 view .LVU752
	ldrsb	r3, [r4, #3]
	.loc 1 1549 12 view .LVU753
	cmp	r3, #0
	blt	.L179
	.loc 1 1550 27 discriminator 1 view .LVU754
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	.loc 1 1549 97 discriminator 1 view .LVU755
	cbnz	r3, .L180
	.loc 1 1569 12 view .LVU756
	movs	r0, #0
	b	.L171
.L173:
	.loc 1 1558 9 is_stmt 1 view .LVU757
	.loc 1 1558 41 is_stmt 0 view .LVU758
	ldrb	r2, [r4, #3]	@ zero_extendqisi2
	.loc 1 1558 12 view .LVU759
	cbnz	r2, .L174
	.loc 1 1558 56 discriminator 1 view .LVU760
	cmp	r3, #1
	bne	.L181
.L174:
	.loc 1 1563 9 is_stmt 1 view .LVU761
	.loc 1 1563 28 is_stmt 0 view .LVU762
	ldrb	r3, [r4]	@ zero_extendqisi2
	.loc 1 1563 12 view .LVU763
	cbnz	r3, .L182
	.loc 1 1563 57 discriminator 1 view .LVU764
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	.loc 1 1563 40 discriminator 1 view .LVU765
	cmp	r3, #4
	bne	.L183
	.loc 1 1569 12 view .LVU766
	movs	r0, #0
	b	.L171
.L175:
	.loc 1 1533 16 view .LVU767
	movs	r0, #16
.L171:
	.loc 1 1570 1 view .LVU768
	pop	{r4, pc}
.LVL240:
.L176:
	.loc 1 1533 16 view .LVU769
	movs	r0, #16
	b	.L171
.L177:
	.loc 1 1538 16 view .LVU770
	movs	r0, #7
	b	.L171
.L178:
	.loc 1 1546 20 view .LVU771
	movs	r0, #16
	b	.L171
.L179:
	.loc 1 1552 20 view .LVU772
	movs	r0, #7
	b	.L171
.L180:
	movs	r0, #7
	b	.L171
.L181:
	.loc 1 1560 20 view .LVU773
	movs	r0, #7
	b	.L171
.L182:
	.loc 1 1569 12 view .LVU774
	movs	r0, #0
	b	.L171
.L183:
	.loc 1 1565 20 view .LVU775
	movs	r0, #7
	b	.L171
.LFE446:
	.size	transport_metadata_validate, .-transport_metadata_validate
	.section	.text.replay_list_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	replay_list_add, %function
replay_list_add:
.LVL241:
.LFB408:
	.loc 1 290 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 290 1 is_stmt 0 view .LVU777
	push	{r3, r4, r5, lr}
.LCFI38:
	mov	r4, r0
	.loc 1 291 5 is_stmt 1 view .LVU778
	.loc 1 293 5 view .LVU779
	.loc 1 293 19 is_stmt 0 view .LVU780
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 293 8 view .LVU781
	cbz	r3, .L186
	.loc 1 295 9 is_stmt 1 view .LVU782
	.loc 1 295 18 is_stmt 0 view .LVU783
	ldrh	r3, [r0, #6]
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #24]
	ldrh	r0, [r0, #20]
.LVL242:
	.loc 1 295 18 view .LVU784
	bl	replay_cache_seqauth_add
.LVL243:
	mov	r5, r0
.LVL244:
.L187:
	.loc 1 307 5 is_stmt 1 view .LVU785
	.loc 1 307 8 is_stmt 0 view .LVU786
	cbnz	r5, .L190
.LVL245:
.L185:
	.loc 1 314 1 view .LVU787
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.LVL246:
.L186:
	.loc 1 302 9 is_stmt 1 view .LVU788
	.loc 1 302 18 is_stmt 0 view .LVU789
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #24]
	ldrh	r0, [r0, #20]
.LVL247:
	.loc 1 302 18 view .LVU790
	bl	replay_cache_add
.LVL248:
	mov	r5, r0
.LVL249:
	.loc 1 302 18 view .LVU791
	b	.L187
.L190:
	.loc 1 309 9 is_stmt 1 view .LVU792
	.loc 1 310 64 is_stmt 0 view .LVU793
	ldr	r1, [r4, #28]
	.loc 1 309 9 view .LVU794
	movs	r2, #0
	and	r1, r1, #1
	ldrh	r0, [r4, #20]
.LVL250:
	.loc 1 309 9 view .LVU795
	bl	m_send_replay_cache_full_event
.LVL251:
	.loc 1 313 5 is_stmt 1 view .LVU796
	.loc 1 313 12 is_stmt 0 view .LVU797
	b	.L185
.LFE408:
	.size	replay_list_add, .-replay_list_add
	.section	.text.sar_ctx_alloc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_ctx_alloc, %function
sar_ctx_alloc:
.LVL252:
.LFB414:
	.loc 1 375 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 375 1 is_stmt 0 view .LVU799
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
.LCFI39:
	mov	r8, r0
	mov	r6, r1
	mov	r7, r2
	.loc 1 376 5 is_stmt 1 view .LVU800
	.loc 1 376 5 view .LVU801
	subs	r3, r1, #1
	uxtb	r3, r3
	cmp	r3, #1
	bhi	.L204
.LVL253:
.L192:
	.loc 1 376 5 discriminator 3 view .LVU802
	.loc 1 378 5 discriminator 3 view .LVU803
	.loc 1 378 5 discriminator 3 view .LVU804
	cmp	r7, #384
	bhi	.L205
.L193:
	.loc 1 378 5 discriminator 3 view .LVU805
	.loc 1 380 5 discriminator 3 view .LVU806
.LVL254:
	.loc 1 381 5 discriminator 3 view .LVU807
	.loc 1 389 5 discriminator 3 view .LVU808
	.loc 1 381 14 is_stmt 0 discriminator 3 view .LVU809
	movs	r4, #0
.LVL255:
.L194:
	.loc 1 389 14 is_stmt 1 discriminator 1 view .LVU810
	cmp	r4, #3
	bhi	.L206
	.loc 1 391 9 view .LVU811
	.loc 1 391 42 is_stmt 0 view .LVU812
	rsb	r2, r4, r4, lsl #3
	ldr	r3, .L209
	add	r3, r3, r2, lsl #4
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	.loc 1 391 12 view .LVU813
	cbz	r3, .L207
	.loc 1 389 44 is_stmt 1 view .LVU814
	adds	r4, r4, #1
.LVL256:
	.loc 1 389 44 is_stmt 0 view .LVU815
	b	.L194
.LVL257:
.L204:
.LBB203:
	.loc 1 376 5 is_stmt 1 discriminator 1 view .LVU816
	.loc 1 376 5 discriminator 1 view .LVU817
	.syntax unified
@ 376 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL258:
	.loc 1 376 5 discriminator 1 view .LVU818
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL259:
	.loc 1 376 5 is_stmt 0 discriminator 1 view .LVU819
	b	.L192
.L205:
	.loc 1 376 5 discriminator 1 view .LVU820
.LBE203:
.LBB204:
	.loc 1 378 5 is_stmt 1 discriminator 1 view .LVU821
	.loc 1 378 5 discriminator 1 view .LVU822
	.syntax unified
@ 378 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL260:
	.loc 1 378 5 discriminator 1 view .LVU823
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL261:
	.loc 1 378 5 is_stmt 0 discriminator 1 view .LVU824
	b	.L193
.LVL262:
.L207:
	.loc 1 378 5 discriminator 1 view .LVU825
.LBE204:
	.loc 1 393 13 is_stmt 1 view .LVU826
	.loc 1 393 23 is_stmt 0 view .LVU827
	ldr	r9, .L209
	add	r5, r9, r2, lsl #4
.LVL263:
	.loc 1 402 17 is_stmt 1 view .LVU828
	.loc 1 402 38 is_stmt 0 view .LVU829
	mov	r0, r7
	bl	mesh_mem_alloc
.LVL264:
	.loc 1 402 36 view .LVU830
	str	r0, [r5, #108]
	.loc 1 404 13 is_stmt 1 view .LVU831
	b	.L196
.LVL265:
.L206:
	.loc 1 380 21 is_stmt 0 view .LVU832
	movs	r5, #0
.LVL266:
.L196:
	.loc 1 408 5 is_stmt 1 view .LVU833
	.loc 1 408 8 is_stmt 0 view .LVU834
	cbz	r5, .L191
	.loc 1 408 39 discriminator 1 view .LVU835
	ldr	r3, [r5, #108]
	.loc 1 408 27 discriminator 1 view .LVU836
	cmp	r3, #0
	beq	.L202
	.loc 1 413 5 is_stmt 1 view .LVU837
	mov	r3, r8
	mov	r4, r5
.LVL267:
	.loc 1 413 5 is_stmt 0 view .LVU838
	add	lr, r8, #48
.L199:
	.loc 1 413 5 view .LVU839
	ldr	ip, [r3]	@ unaligned
	ldr	r0, [r3, #4]	@ unaligned
	ldr	r1, [r3, #8]	@ unaligned
	ldr	r2, [r3, #12]	@ unaligned
	str	ip, [r4]	@ unaligned
	str	r0, [r4, #4]	@ unaligned
	str	r1, [r4, #8]	@ unaligned
	str	r2, [r4, #12]	@ unaligned
	adds	r3, r3, #16
	adds	r4, r4, #16
	cmp	r3, lr
	bne	.L199
	.loc 1 414 5 is_stmt 1 view .LVU840
	.loc 1 414 34 is_stmt 0 view .LVU841
	movs	r3, #0
	str	r3, [r5, #76]
	.loc 1 415 5 is_stmt 1 view .LVU842
	.loc 1 415 31 is_stmt 0 view .LVU843
	strh	r7, [r5, #74]	@ movhi
	.loc 1 417 5 is_stmt 1 view .LVU844
	.loc 1 417 8 is_stmt 0 view .LVU845
	cmp	r6, #1
	beq	.L208
	.loc 1 434 9 is_stmt 1 view .LVU846
	.loc 1 434 35 is_stmt 0 view .LVU847
	mvn	r3, #1
	str	r3, [r5, #40]
	.loc 1 435 9 is_stmt 1 view .LVU848
	.loc 1 435 48 is_stmt 0 view .LVU849
	movs	r3, #0
	strb	r3, [r5, #104]
	.loc 1 436 9 is_stmt 1 view .LVU850
	.loc 1 436 51 is_stmt 0 view .LVU851
	ldr	r3, .L209+4
	str	r3, [r5, #88]
	.loc 1 437 9 is_stmt 1 view .LVU852
	.loc 1 437 58 is_stmt 0 view .LVU853
	str	r5, [r5, #96]
	.loc 1 438 9 is_stmt 1 view .LVU854
	.loc 1 438 35 is_stmt 0 view .LVU855
	ldr	r3, .L209+8
	str	r3, [r5, #56]
	.loc 1 439 9 is_stmt 1 view .LVU856
	.loc 1 439 42 is_stmt 0 view .LVU857
	str	r5, [r5, #64]
.L201:
	.loc 1 442 5 is_stmt 1 view .LVU858
	movs	r0, #1
	bl	net_state_iv_index_lock
.LVL268:
	.loc 1 443 5 view .LVU859
	.loc 1 443 37 is_stmt 0 view .LVU860
	strb	r6, [r5, #72]
	.loc 1 444 5 is_stmt 1 view .LVU861
.LVL269:
.L191:
	.loc 1 445 1 is_stmt 0 view .LVU862
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL270:
.L208:
	.loc 1 419 9 is_stmt 1 view .LVU863
	.loc 1 419 60 is_stmt 0 view .LVU864
	ldr	r3, .L209+12
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	.loc 1 419 46 view .LVU865
	strb	r3, [r5, #81]
	.loc 1 420 9 is_stmt 1 view .LVU866
	.loc 1 420 56 is_stmt 0 view .LVU867
	movs	r3, #0
	strb	r3, [r5, #82]
	.loc 1 421 9 is_stmt 1 view .LVU868
	.loc 1 421 53 is_stmt 0 view .LVU869
	strb	r3, [r5, #83]
	.loc 1 422 9 is_stmt 1 view .LVU870
	.loc 1 422 50 is_stmt 0 view .LVU871
	strb	r3, [r5, #80]
	.loc 1 426 9 is_stmt 1 view .LVU872
	.loc 1 426 56 is_stmt 0 view .LVU873
	ldr	r2, [r8, #40]
	.loc 1 426 44 view .LVU874
	str	r2, [r5, #84]
	.loc 1 427 9 is_stmt 1 view .LVU875
	.loc 1 427 46 is_stmt 0 view .LVU876
	strh	r3, [r5, #88]	@ movhi
	.loc 1 428 9 is_stmt 1 view .LVU877
	.loc 1 428 35 is_stmt 0 view .LVU878
	mvn	r3, #1
	str	r3, [r5, #40]
	.loc 1 429 9 is_stmt 1 view .LVU879
	.loc 1 429 35 is_stmt 0 view .LVU880
	ldr	r3, .L209+16
	str	r3, [r5, #56]
	.loc 1 430 9 is_stmt 1 view .LVU881
	.loc 1 430 42 is_stmt 0 view .LVU882
	str	r5, [r5, #64]
	b	.L201
.LVL271:
.L202:
	.loc 1 410 16 view .LVU883
	mov	r5, r3
.LVL272:
	.loc 1 410 16 view .LVU884
	b	.L191
.L210:
	.align	2
.L209:
	.word	.LANCHOR2
	.word	ack_timeout
	.word	abort_timeout
	.word	.LANCHOR7
	.word	retry_timeout
.LFE414:
	.size	sar_ctx_alloc, .-sar_ctx_alloc
	.section	.rodata.test_transport_decrypt.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"C:\\project domotica\\nrf-mesh\\mesh\\core\\src\\tr"
	.ascii	"ansport.c\000"
	.align	2
.LC1:
	.ascii	"Message decrypted\012\000"
	.section	.text.test_transport_decrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	test_transport_decrypt, %function
test_transport_decrypt:
.LVL273:
.LFB432:
	.loc 1 1037 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1037 1 is_stmt 0 view .LVU886
	push	{lr}
.LCFI40:
	sub	sp, sp, #20
.LCFI41:
	.loc 1 1038 5 is_stmt 1 view .LVU887
	.loc 1 1038 10 is_stmt 0 view .LVU888
	movs	r2, #0
	strb	r2, [sp, #15]
	.loc 1 1039 5 is_stmt 1 view .LVU889
	.loc 1 1039 8 is_stmt 0 view .LVU890
	cbz	r0, .L212
	mov	r3, r1
	mov	r2, r0
	.loc 1 1041 9 is_stmt 1 view .LVU891
	.loc 1 1041 29 is_stmt 0 view .LVU892
	adds	r2, r2, #2
	.loc 1 1041 27 view .LVU893
	str	r2, [r1]
	.loc 1 1042 9 is_stmt 1 view .LVU894
	add	r1, sp, #15
.LVL274:
	.loc 1 1042 9 is_stmt 0 view .LVU895
	mov	r0, r3
.LVL275:
	.loc 1 1042 9 view .LVU896
	bl	enc_aes_ccm_decrypt
.LVL276:
	.loc 1 1043 9 is_stmt 1 view .LVU897
	.loc 1 1043 13 is_stmt 0 view .LVU898
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 1043 12 view .LVU899
	cbz	r3, .L212
	.loc 1 1045 13 is_stmt 1 view .LVU900
	.loc 1 1045 13 view .LVU901
	ldr	r3, .L215
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L212
	.loc 1 1045 13 is_stmt 0 discriminator 1 view .LVU902
	ldr	r3, .L215+4
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L214
.L212:
	.loc 1 1045 13 is_stmt 1 discriminator 5 view .LVU903
	.loc 1 1045 76 discriminator 5 view .LVU904
	.loc 1 1048 5 discriminator 5 view .LVU905
	.loc 1 1049 1 is_stmt 0 discriminator 5 view .LVU906
	ldrb	r0, [sp, #15]	@ zero_extendqisi2
	add	sp, sp, #20
.LCFI42:
	@ sp needed
	ldr	pc, [sp], #4
.L214:
.LCFI43:
	.loc 1 1045 13 is_stmt 1 discriminator 3 view .LVU907
.LBB205:
.LBI205:
	.file 4 "../../../mesh/core/include/log.h"
	.loc 4 198 24 discriminator 3 view .LVU908
.LBB206:
	.loc 4 209 5 discriminator 3 view .LVU909
	.loc 4 209 20 is_stmt 0 discriminator 3 view .LVU910
	ldr	r3, .L215+8
	ldr	r3, [r3, #1284]
.LBE206:
.LBE205:
	.loc 1 1045 13 discriminator 3 view .LVU911
	ldr	r2, .L215+12
	str	r2, [sp]
	movw	r2, #1045
	ldr	r1, .L215+16
	movs	r0, #4
	bl	log_printf
.LVL277:
	b	.L212
.L216:
	.align	2
.L215:
	.word	g_log_dbg_msk
	.word	g_log_dbg_lvl
	.word	1073811456
	.word	.LC1
	.word	.LC0+43
.LFE432:
	.size	test_transport_decrypt, .-test_transport_decrypt
	.section	.text.upper_trs_packet_decrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	upper_trs_packet_decrypt, %function
upper_trs_packet_decrypt:
.LVL278:
.LFB445:
	.loc 1 1443 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1443 1 is_stmt 0 view .LVU913
	push	{r4, r5, r6, r7, r8, r9, lr}
.LCFI44:
	sub	sp, sp, #68
.LCFI45:
	mov	r5, r0
	mov	r6, r1
	mov	r4, r2
	mov	r7, r3
	.loc 1 1445 5 is_stmt 1 view .LVU914
	.loc 1 1445 14 is_stmt 0 view .LVU915
	ldr	r8, [r0, #24]
.LVL279:
	.loc 1 1446 5 is_stmt 1 view .LVU916
	.loc 1 1446 19 is_stmt 0 view .LVU917
	ldrb	r3, [r0]	@ zero_extendqisi2
.LVL280:
	.loc 1 1446 8 view .LVU918
	cbz	r3, .L218
	.loc 1 1448 9 is_stmt 1 view .LVU919
	.loc 1 1449 17 is_stmt 0 view .LVU920
	ldrh	r3, [r0, #6]
.LVL281:
.LBB207:
.LBI207:
	.loc 2 103 24 is_stmt 1 view .LVU921
.LBB208:
	.loc 2 105 5 view .LVU922
	.loc 2 105 26 is_stmt 0 view .LVU923
	ubfx	r2, r8, #0, #13
.LVL282:
	.loc 2 105 8 view .LVU924
	cmp	r2, r3
	bcs	.L219
	.loc 2 107 9 is_stmt 1 view .LVU925
	.loc 2 107 34 is_stmt 0 view .LVU926
	subs	r3, r3, r2
	add	r3, r3, r8
	.loc 2 107 96 view .LVU927
	sub	r3, r3, #8192
.L220:
.LVL283:
	.loc 2 107 96 view .LVU928
.LBE208:
.LBE207:
	.loc 1 1448 50 view .LVU929
	str	r3, [r5, #24]
.L218:
	.loc 1 1453 5 is_stmt 1 view .LVU930
	.loc 1 1454 5 view .LVU931
	.loc 1 1454 24 is_stmt 0 view .LVU932
	add	r0, r5, #12
.LVL284:
	.loc 1 1455 49 view .LVU933
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	.loc 1 1454 5 view .LVU934
	cbz	r3, .L234
	movs	r1, #1
.LVL285:
.L221:
	.loc 1 1456 35 view .LVU935
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	.loc 1 1454 5 view .LVU936
	add	r9, sp, #48
	mov	r3, r9
	cmp	r2, #8
	ite	ne
	movne	r2, #0
	moveq	r2, #1
	bl	enc_nonce_generate
.LVL286:
	.loc 1 1459 5 is_stmt 1 view .LVU937
	.loc 1 1459 46 is_stmt 0 view .LVU938
	str	r8, [r5, #24]
	.loc 1 1461 5 is_stmt 1 view .LVU939
	.loc 1 1462 5 view .LVU940
	.loc 1 1462 22 is_stmt 0 view .LVU941
	str	r9, [sp, #16]
	.loc 1 1463 5 is_stmt 1 view .LVU942
	.loc 1 1463 22 is_stmt 0 view .LVU943
	str	r6, [sp, #20]
	.loc 1 1464 5 is_stmt 1 view .LVU944
	.loc 1 1464 58 is_stmt 0 view .LVU945
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	.loc 1 1464 46 view .LVU946
	subs	r2, r4, r3
	uxth	r2, r2
	.loc 1 1464 22 view .LVU947
	strh	r2, [sp, #24]	@ movhi
	.loc 1 1465 5 is_stmt 1 view .LVU948
	.loc 1 1465 49 is_stmt 0 view .LVU949
	add	r6, r6, r2
.LVL287:
	.loc 1 1465 22 view .LVU950
	str	r6, [sp, #40]
	.loc 1 1466 5 is_stmt 1 view .LVU951
	.loc 1 1466 22 is_stmt 0 view .LVU952
	str	r7, [sp, #36]
	.loc 1 1467 5 is_stmt 1 view .LVU953
	.loc 1 1467 22 is_stmt 0 view .LVU954
	strb	r3, [sp, #44]
	.loc 1 1468 5 is_stmt 1 view .LVU955
	.loc 1 1468 20 is_stmt 0 view .LVU956
	movs	r3, #0
	strh	r3, [sp, #32]	@ movhi
	.loc 1 1470 5 is_stmt 1 view .LVU957
	.loc 1 1470 32 is_stmt 0 view .LVU958
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	.loc 1 1470 8 view .LVU959
	cmp	r3, #0
	beq	.L222
.LVL288:
.L230:
	.loc 1 1472 9 is_stmt 1 view .LVU960
.LBB210:
	.loc 1 1473 13 view .LVU961
	.loc 1 1473 36 is_stmt 0 view .LVU962
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	.loc 1 1473 16 view .LVU963
	cmp	r3, #2
	beq	.L238
.L223:
	.loc 1 1480 13 is_stmt 1 view .LVU964
	.loc 1 1480 45 is_stmt 0 view .LVU965
	movs	r3, #0
	str	r3, [r5, #36]
	.loc 1 1481 13 is_stmt 1 view .LVU966
	.loc 1 1481 51 is_stmt 0 view .LVU967
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	b	.L229
.LVL289:
.L219:
	.loc 1 1481 51 view .LVU968
.LBE210:
.LBB213:
.LBB209:
	.loc 2 111 9 is_stmt 1 view .LVU969
	.loc 2 111 34 is_stmt 0 view .LVU970
	subs	r3, r3, r2
	add	r3, r3, r8
	b	.L220
.LVL290:
.L234:
	.loc 2 111 34 view .LVU971
.LBE209:
.LBE213:
	.loc 1 1454 5 view .LVU972
	movs	r1, #2
.LVL291:
	.loc 1 1454 5 view .LVU973
	b	.L221
.LVL292:
.L238:
.LBB214:
	.loc 1 1475 17 is_stmt 1 view .LVU974
	.loc 1 1475 32 is_stmt 0 view .LVU975
	movs	r3, #16
	strh	r3, [sp, #32]	@ movhi
	.loc 1 1476 17 is_stmt 1 view .LVU976
	.loc 1 1476 51 is_stmt 0 view .LVU977
	ldr	r3, [r5, #16]
	.loc 1 1476 30 view .LVU978
	str	r3, [sp, #28]
	b	.L223
.LVL293:
.L240:
.LBB211:
	.loc 1 1491 25 is_stmt 1 view .LVU979
	.loc 1 1491 67 is_stmt 0 view .LVU980
	add	r3, sp, #64
	add	r4, r3, r4, lsl #2
.LVL294:
	.loc 1 1491 67 view .LVU981
	ldr	r3, [r4, #-60]
	.loc 1 1491 57 view .LVU982
	str	r3, [r5, #36]
	.loc 1 1492 25 is_stmt 1 view .LVU983
	.loc 1 1492 32 is_stmt 0 view .LVU984
	movs	r0, #0
.L217:
	.loc 1 1492 32 view .LVU985
.LBE211:
.LBE214:
	.loc 1 1519 1 view .LVU986
	add	sp, sp, #68
.LCFI46:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL295:
.L227:
.LCFI47:
.LBB215:
	.loc 1 1495 34 is_stmt 1 view .LVU987
	.loc 1 1495 30 is_stmt 0 view .LVU988
	ldr	r3, [sp, #4]
	.loc 1 1495 34 view .LVU989
	cbz	r3, .L239
.LVL296:
.L229:
	.loc 1 1482 13 is_stmt 1 view .LVU990
	.loc 1 1483 17 view .LVU991
	add	r3, sp, #8
	add	r2, sp, #4
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldr	r0, [r5, #32]
	bl	nrf_mesh_app_secmat_next_get
.LVL297:
	.loc 1 1487 17 view .LVU992
.LBB212:
	.loc 1 1487 22 view .LVU993
	.loc 1 1487 31 is_stmt 0 view .LVU994
	movs	r4, #0
.LVL298:
.L224:
	.loc 1 1487 63 is_stmt 1 discriminator 1 view .LVU995
	cmp	r4, #1
	bhi	.L227
	.loc 1 1487 74 is_stmt 0 discriminator 3 view .LVU996
	add	r3, sp, #64
	add	r3, r3, r4, lsl #2
	ldr	r0, [r3, #-60]
	.loc 1 1487 63 discriminator 3 view .LVU997
	cmp	r0, #0
	beq	.L227
	.loc 1 1489 21 is_stmt 1 view .LVU998
	.loc 1 1489 25 is_stmt 0 view .LVU999
	add	r1, sp, #12
	bl	test_transport_decrypt
.LVL299:
	.loc 1 1489 24 view .LVU1000
	cmp	r0, #0
	bne	.L240
	.loc 1 1487 88 is_stmt 1 discriminator 2 view .LVU1001
	adds	r4, r4, #1
.LVL300:
	.loc 1 1487 88 is_stmt 0 discriminator 2 view .LVU1002
	b	.L224
.L239:
	.loc 1 1487 88 discriminator 2 view .LVU1003
.LBE212:
.LBE215:
	.loc 1 1496 76 is_stmt 1 view .LVU1004
	.loc 1 1496 37 is_stmt 0 view .LVU1005
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	.loc 1 1496 76 view .LVU1006
	cmp	r3, #2
	bne	.L235
	.loc 1 1497 18 discriminator 1 view .LVU1007
	add	r1, r5, #12
	ldrh	r0, [r5, #14]
	bl	nrf_mesh_rx_address_get
.LVL301:
	.loc 1 1496 76 discriminator 1 view .LVU1008
	cmp	r0, #0
	bne	.L230
	.loc 1 1518 12 view .LVU1009
	movs	r0, #5
	b	.L217
.LVL302:
.L222:
	.loc 1 1499 10 is_stmt 1 view .LVU1010
	.loc 1 1499 33 is_stmt 0 view .LVU1011
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	.loc 1 1499 13 view .LVU1012
	cmp	r3, #1
	beq	.L241
	.loc 1 1518 12 view .LVU1013
	movs	r0, #5
	b	.L217
.L241:
.LBB216:
	.loc 1 1503 9 is_stmt 1 view .LVU1014
	.loc 1 1504 32 is_stmt 0 view .LVU1015
	ldrh	r3, [r5, #14]
	.loc 1 1503 24 view .LVU1016
	strh	r3, [sp, #4]	@ movhi
	.loc 1 1505 28 view .LVU1017
	ldrh	r3, [r5, #20]
	.loc 1 1503 24 view .LVU1018
	strh	r3, [sp, #6]	@ movhi
	.loc 1 1507 9 is_stmt 1 view .LVU1019
.LBB217:
	.loc 1 1507 14 view .LVU1020
.LVL303:
	.loc 1 1507 23 is_stmt 0 view .LVU1021
	movs	r4, #0
.LVL304:
.L231:
	.loc 1 1507 32 is_stmt 1 discriminator 1 view .LVU1022
	cmp	r4, #1
	bhi	.L242
	.loc 1 1509 13 view .LVU1023
	.loc 1 1509 45 is_stmt 0 view .LVU1024
	mov	r1, r5
	movs	r3, #0
	str	r3, [r1, #36]!
	.loc 1 1510 13 is_stmt 1 view .LVU1025
	add	r3, sp, #64
	add	r3, r3, r4, lsl #1
	ldrh	r0, [r3, #-60]
	bl	nrf_mesh_devkey_secmat_get
.LVL305:
	.loc 1 1511 13 view .LVU1026
	.loc 1 1511 17 is_stmt 0 view .LVU1027
	add	r1, sp, #12
	ldr	r0, [r5, #36]
	bl	test_transport_decrypt
.LVL306:
	.loc 1 1511 16 view .LVU1028
	cbnz	r0, .L243
	.loc 1 1507 60 is_stmt 1 discriminator 2 view .LVU1029
	adds	r4, r4, #1
.LVL307:
	.loc 1 1507 60 is_stmt 0 discriminator 2 view .LVU1030
	b	.L231
.L243:
	.loc 1 1513 17 is_stmt 1 view .LVU1031
	.loc 1 1513 24 is_stmt 0 view .LVU1032
	movs	r0, #0
	b	.L217
.L242:
	.loc 1 1513 24 view .LVU1033
.LBE217:
.LBE216:
	.loc 1 1518 12 view .LVU1034
	movs	r0, #5
.LBB218:
	b	.L217
.LVL308:
.L235:
	.loc 1 1518 12 view .LVU1035
.LBE218:
	movs	r0, #5
	b	.L217
.LFE445:
	.size	upper_trs_packet_decrypt, .-upper_trs_packet_decrypt
	.section	.rodata.upper_transport_access_packet_in.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"Could not decrypt transport layer data.\012\000"
	.section	.text.upper_transport_access_packet_in,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	upper_transport_access_packet_in, %function
upper_transport_access_packet_in:
.LVL309:
.LFB451:
	.loc 1 1763 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1763 1 is_stmt 0 view .LVU1037
	push	{r4, r5, r6, lr}
.LCFI48:
	sub	sp, sp, #448
.LCFI49:
	mov	r6, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 1764 5 is_stmt 1 view .LVU1038
	.loc 1 1766 5 view .LVU1039
	.loc 1 1766 23 is_stmt 0 view .LVU1040
	add	r3, sp, #64
.LVL310:
	.loc 1 1766 23 view .LVU1041
	mov	r2, r1
.LVL311:
	.loc 1 1766 23 view .LVU1042
	mov	r1, r0
.LVL312:
	.loc 1 1766 23 view .LVU1043
	mov	r0, r4
.LVL313:
	.loc 1 1766 23 view .LVU1044
	bl	upper_trs_packet_decrypt
.LVL314:
	.loc 1 1767 5 is_stmt 1 view .LVU1045
	.loc 1 1767 8 is_stmt 0 view .LVU1046
	cbz	r0, .L248
	.loc 1 1795 9 is_stmt 1 view .LVU1047
	.loc 1 1795 9 view .LVU1048
	ldr	r3, .L250
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L244
	.loc 1 1795 9 is_stmt 0 discriminator 1 view .LVU1049
	ldr	r3, .L250+4
	ldr	r3, [r3]
	cmp	r3, #5
	bgt	.L249
.LVL315:
.L244:
	.loc 1 1803 1 view .LVU1050
	add	sp, sp, #448
.LCFI50:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL316:
.L248:
.LCFI51:
	.loc 1 1770 9 is_stmt 1 view .LVU1051
	.loc 1 1770 13 is_stmt 0 view .LVU1052
	mov	r0, r4
.LVL317:
	.loc 1 1770 13 view .LVU1053
	bl	replay_list_add
.LVL318:
	.loc 1 1770 12 view .LVU1054
	cmp	r0, #0
	bne	.L244
.LBB219:
	.loc 1 1775 56 is_stmt 1 view .LVU1055
	.loc 1 1777 13 view .LVU1056
	.loc 1 1777 32 is_stmt 0 view .LVU1057
	add	r3, sp, #12
	movs	r2, #1
	strb	r2, [sp, #12]
	.loc 1 1778 69 view .LVU1058
	ldrh	r2, [r4, #20]
	.loc 1 1777 32 view .LVU1059
	strh	r2, [sp, #14]	@ movhi
	movs	r2, #0
	str	r2, [sp, #16]
	.loc 1 1780 13 is_stmt 1 view .LVU1060
	.loc 1 1781 13 view .LVU1061
	.loc 1 1781 27 is_stmt 0 view .LVU1062
	strb	r2, [sp, #20]
	.loc 1 1782 13 is_stmt 1 view .LVU1063
	.loc 1 1782 46 is_stmt 0 view .LVU1064
	add	r2, sp, #64
	str	r2, [sp, #24]
	.loc 1 1783 13 is_stmt 1 view .LVU1065
	.loc 1 1783 79 is_stmt 0 view .LVU1066
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	.loc 1 1783 67 view .LVU1067
	subs	r1, r6, r2
	.loc 1 1783 44 view .LVU1068
	strh	r1, [sp, #28]	@ movhi
	.loc 1 1784 13 is_stmt 1 view .LVU1069
	.loc 1 1784 41 is_stmt 0 view .LVU1070
	add	r2, sp, #32
	ldm	r3, {r0, r1}
	stm	r2, {r0, r1}
	.loc 1 1785 13 is_stmt 1 view .LVU1071
	.loc 1 1785 41 is_stmt 0 view .LVU1072
	add	r3, sp, #40
	add	r2, r4, #12
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	.loc 1 1786 13 is_stmt 1 view .LVU1073
	.loc 1 1786 58 is_stmt 0 view .LVU1074
	ldrb	r3, [r4, #22]	@ zero_extendqisi2
	.loc 1 1786 41 view .LVU1075
	strb	r3, [sp, #56]
	.loc 1 1787 13 is_stmt 1 view .LVU1076
	.loc 1 1787 67 is_stmt 0 view .LVU1077
	ldr	r3, [r4, #32]
	.loc 1 1787 50 view .LVU1078
	str	r3, [sp, #48]
	.loc 1 1788 13 is_stmt 1 view .LVU1079
	.loc 1 1788 62 is_stmt 0 view .LVU1080
	ldr	r3, [r4, #36]
	.loc 1 1788 50 view .LVU1081
	str	r3, [sp, #52]
	.loc 1 1789 13 is_stmt 1 view .LVU1082
	.loc 1 1789 48 is_stmt 0 view .LVU1083
	str	r5, [sp, #60]
	.loc 1 1790 13 is_stmt 1 view .LVU1084
	add	r0, sp, #20
	bl	event_handle
.LVL319:
	b	.L244
.LVL320:
.L249:
	.loc 1 1790 13 is_stmt 0 view .LVU1085
.LBE219:
	.loc 1 1795 9 is_stmt 1 discriminator 3 view .LVU1086
.LBB220:
.LBI220:
	.loc 4 198 24 discriminator 3 view .LVU1087
.LBB221:
	.loc 4 209 5 discriminator 3 view .LVU1088
	.loc 4 209 20 is_stmt 0 discriminator 3 view .LVU1089
	ldr	r3, .L250+8
	ldr	r3, [r3, #1284]
.LBE221:
.LBE220:
	.loc 1 1795 9 discriminator 3 view .LVU1090
	ldr	r2, .L250+12
	str	r2, [sp]
	movw	r2, #1795
	ldr	r1, .L250+16
	movs	r0, #6
.LVL321:
	.loc 1 1795 9 discriminator 3 view .LVU1091
	bl	log_printf
.LVL322:
	.loc 1 1795 9 is_stmt 1 discriminator 3 view .LVU1092
	.loc 1 1795 94 discriminator 3 view .LVU1093
	.loc 1 1801 52 discriminator 3 view .LVU1094
	.loc 1 1803 1 is_stmt 0 discriminator 3 view .LVU1095
	b	.L244
.L251:
	.align	2
.L250:
	.word	g_log_dbg_msk
	.word	g_log_dbg_lvl
	.word	1073811456
	.word	.LC2
	.word	.LC0+43
.LFE451:
	.size	upper_transport_access_packet_in, .-upper_transport_access_packet_in
	.section	.text.sar_ctx_free,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_ctx_free, %function
sar_ctx_free:
.LVL323:
.LFB415:
	.loc 1 448 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 448 1 is_stmt 0 view .LVU1097
	push	{r4, lr}
.LCFI52:
	mov	r4, r0
	.loc 1 453 9 is_stmt 1 view .LVU1098
	ldr	r0, [r0, #108]
.LVL324:
	.loc 1 453 9 is_stmt 0 view .LVU1099
	bl	mesh_mem_free
.LVL325:
	.loc 1 458 5 is_stmt 1 view .LVU1100
	add	r0, r4, #48
	bl	timer_sch_abort
.LVL326:
	.loc 1 460 5 view .LVU1101
	.loc 1 460 27 is_stmt 0 view .LVU1102
	ldrb	r3, [r4, #72]	@ zero_extendqisi2
	.loc 1 460 8 view .LVU1103
	cmp	r3, #2
	beq	.L255
.L253:
	.loc 1 465 5 is_stmt 1 view .LVU1104
	movs	r2, #112
	movs	r1, #0
	mov	r0, r4
	bl	memset
.LVL327:
	.loc 1 466 5 view .LVU1105
	.loc 1 468 5 view .LVU1106
	movs	r0, #0
	bl	net_state_iv_index_lock
.LVL328:
	.loc 1 469 1 is_stmt 0 view .LVU1107
	pop	{r4, pc}
.LVL329:
.L255:
	.loc 1 462 9 is_stmt 1 view .LVU1108
	add	r0, r4, #80
	bl	timer_sch_abort
.LVL330:
	b	.L253
.LFE415:
	.size	sar_ctx_free, .-sar_ctx_free
	.section	.text.sar_ctx_tx_complete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_ctx_tx_complete, %function
sar_ctx_tx_complete:
.LVL331:
.LFB417:
	.loc 1 504 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 504 1 is_stmt 0 view .LVU1110
	push	{r4, lr}
.LCFI53:
	sub	sp, sp, #48
.LCFI54:
	mov	r4, r0
	.loc 1 505 5 is_stmt 1 view .LVU1111
	.loc 1 505 5 view .LVU1112
	ldrb	r3, [r0, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L259
.LVL332:
.L257:
	.loc 1 505 5 discriminator 3 view .LVU1113
	.loc 1 506 5 discriminator 3 view .LVU1114
	.loc 1 507 5 discriminator 3 view .LVU1115
	.loc 1 507 14 is_stmt 0 discriminator 3 view .LVU1116
	movs	r3, #1
	strb	r3, [sp, #4]
	.loc 1 508 5 is_stmt 1 discriminator 3 view .LVU1117
	.loc 1 508 64 is_stmt 0 discriminator 3 view .LVU1118
	ldr	r3, [r4, #84]
	.loc 1 508 34 discriminator 3 view .LVU1119
	str	r3, [sp, #8]
	.loc 1 509 5 is_stmt 1 discriminator 3 view .LVU1120
	.loc 1 509 40 is_stmt 0 discriminator 3 view .LVU1121
	bl	timer_now
.LVL333:
	.loc 1 509 38 discriminator 3 view .LVU1122
	str	r0, [sp, #12]
	.loc 1 510 5 is_stmt 1 discriminator 3 view .LVU1123
	add	r0, sp, #4
	bl	event_handle
.LVL334:
	.loc 1 511 5 discriminator 3 view .LVU1124
	mov	r0, r4
	bl	sar_ctx_free
.LVL335:
	.loc 1 512 66 discriminator 3 view .LVU1125
	.loc 1 513 1 is_stmt 0 discriminator 3 view .LVU1126
	add	sp, sp, #48
.LCFI55:
	@ sp needed
	pop	{r4, pc}
.LVL336:
.L259:
.LCFI56:
.LBB222:
	.loc 1 505 5 is_stmt 1 discriminator 1 view .LVU1127
	.loc 1 505 5 discriminator 1 view .LVU1128
	.syntax unified
@ 505 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL337:
	.loc 1 505 5 discriminator 1 view .LVU1129
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL338:
	.loc 1 505 5 is_stmt 0 discriminator 1 view .LVU1130
	b	.L257
.LBE222:
.LFE417:
	.size	sar_ctx_tx_complete, .-sar_ctx_tx_complete
	.section	.rodata.sar_ctx_cancel.str1.4,"aMS",%progbits,1
	.align	2
.LC3:
	.ascii	"Dropped SAR session %u, reason %u\012\000"
	.section	.text.sar_ctx_cancel,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_ctx_cancel, %function
sar_ctx_cancel:
.LVL339:
.LFB416:
	.loc 1 472 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 472 1 is_stmt 0 view .LVU1132
	push	{r4, r5, lr}
.LCFI57:
	sub	sp, sp, #20
.LCFI58:
	mov	r5, r1
	.loc 1 473 5 is_stmt 1 view .LVU1133
	.loc 1 473 5 view .LVU1134
	mov	r4, r0
	cbz	r0, .L265
.LVL340:
.L261:
	.loc 1 473 5 discriminator 3 view .LVU1135
	.loc 1 475 5 discriminator 3 view .LVU1136
	.loc 1 477 5 discriminator 3 view .LVU1137
	.loc 1 478 88 discriminator 3 view .LVU1138
	.loc 1 491 5 discriminator 3 view .LVU1139
	.loc 1 491 27 is_stmt 0 discriminator 3 view .LVU1140
	ldrb	r3, [r4, #72]	@ zero_extendqisi2
	.loc 1 491 8 discriminator 3 view .LVU1141
	cmp	r3, #2
	beq	.L266
.L262:
	.loc 1 496 5 is_stmt 1 view .LVU1142
	mov	r1, r5
	ldr	r0, [r4, #84]
	bl	m_send_sar_cancel_event
.LVL341:
	.loc 1 497 5 view .LVU1143
	mov	r0, r4
	bl	sar_ctx_free
.LVL342:
	.loc 1 499 5 view .LVU1144
	.loc 1 499 5 view .LVU1145
	ldr	r3, .L268
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L260
	.loc 1 499 5 is_stmt 0 discriminator 1 view .LVU1146
	ldr	r3, .L268+4
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L267
.L260:
	.loc 1 501 1 view .LVU1147
	add	sp, sp, #20
.LCFI59:
	@ sp needed
	pop	{r4, r5, pc}
.LVL343:
.L265:
.LCFI60:
.LBB223:
	.loc 1 473 5 is_stmt 1 discriminator 1 view .LVU1148
	.loc 1 473 5 discriminator 1 view .LVU1149
	.syntax unified
@ 473 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL344:
	.loc 1 473 5 discriminator 1 view .LVU1150
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL345:
	.loc 1 473 5 is_stmt 0 discriminator 1 view .LVU1151
	b	.L261
.L266:
	.loc 1 473 5 discriminator 1 view .LVU1152
.LBE223:
	.loc 1 493 9 is_stmt 1 view .LVU1153
	mov	r0, r4
	bl	sar_rx_session_cancel
.LVL346:
	b	.L262
.L267:
	.loc 1 499 5 discriminator 3 view .LVU1154
.LBB224:
.LBI224:
	.loc 4 198 24 discriminator 3 view .LVU1155
.LBB225:
	.loc 4 209 5 discriminator 3 view .LVU1156
	.loc 4 209 20 is_stmt 0 discriminator 3 view .LVU1157
	ldr	r3, .L268+8
	ldr	r3, [r3, #1284]
.LBE225:
.LBE224:
	.loc 1 499 5 discriminator 3 view .LVU1158
	ldrb	r2, [r4, #72]	@ zero_extendqisi2
	str	r5, [sp, #8]
	str	r2, [sp, #4]
	ldr	r2, .L268+12
	str	r2, [sp]
	movw	r2, #499
	ldr	r1, .L268+16
	movs	r0, #4
	bl	log_printf
.LVL347:
	.loc 1 499 5 is_stmt 1 discriminator 3 view .LVU1159
	.loc 1 500 51 discriminator 3 view .LVU1160
	.loc 1 501 1 is_stmt 0 discriminator 3 view .LVU1161
	b	.L260
.L269:
	.align	2
.L268:
	.word	g_log_dbg_msk
	.word	g_log_dbg_lvl
	.word	1073811456
	.word	.LC3
	.word	.LC0+43
.LFE416:
	.size	sar_ctx_cancel, .-sar_ctx_cancel
	.section	.text.abort_timeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	abort_timeout, %function
abort_timeout:
.LVL348:
.LFB455:
	.loc 1 1853 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1853 1 is_stmt 0 view .LVU1163
	push	{r3, lr}
.LCFI61:
	mov	r0, r1
.LVL349:
	.loc 1 1854 5 is_stmt 1 view .LVU1164
	.loc 1 1855 5 view .LVU1165
	movs	r1, #0
.LVL350:
	.loc 1 1855 5 is_stmt 0 view .LVU1166
	bl	sar_ctx_cancel
.LVL351:
	.loc 1 1856 1 view .LVU1167
	pop	{r3, pc}
.LFE455:
	.size	abort_timeout, .-abort_timeout
	.section	.text.sar_tx_session_end,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_tx_session_end, %function
sar_tx_session_end:
.LVL352:
.LFB424:
	.loc 1 665 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 665 1 is_stmt 0 view .LVU1169
	push	{r3, lr}
.LCFI62:
	.loc 1 667 5 is_stmt 1 view .LVU1170
	.loc 1 667 36 is_stmt 0 view .LVU1171
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	.loc 1 667 8 view .LVU1172
	cmp	r3, #1
	beq	.L276
	.loc 1 675 9 is_stmt 1 view .LVU1173
	bl	sar_ctx_tx_complete
.LVL353:
.L272:
	.loc 1 677 1 is_stmt 0 view .LVU1174
	pop	{r3, pc}
.LVL354:
.L276:
	.loc 1 669 9 is_stmt 1 view .LVU1175
	movs	r1, #1
	bl	sar_ctx_cancel
.LVL355:
	.loc 1 669 9 is_stmt 0 view .LVU1176
	b	.L272
.LFE424:
	.size	sar_tx_session_end, .-sar_tx_session_end
	.section	.text.sar_tx_session_continue,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_tx_session_continue, %function
sar_tx_session_continue:
.LVL356:
.LFB425:
	.loc 1 680 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 680 1 is_stmt 0 view .LVU1178
	push	{r3, lr}
.LCFI63:
	.loc 1 681 5 is_stmt 1 view .LVU1179
	.loc 1 681 37 is_stmt 0 view .LVU1180
	ldrb	r3, [r0, #81]	@ zero_extendqisi2
	.loc 1 681 8 view .LVU1181
	cbz	r3, .L278
	.loc 1 683 9 is_stmt 1 view .LVU1182
	.loc 1 683 45 is_stmt 0 view .LVU1183
	subs	r3, r3, #1
	strb	r3, [r0, #81]
	.loc 1 684 9 is_stmt 1 view .LVU1184
	.loc 1 684 50 is_stmt 0 view .LVU1185
	movs	r3, #0
	strb	r3, [r0, #80]
	.loc 1 686 9 is_stmt 1 view .LVU1186
	ldr	r3, .L281
	ldr	r0, [r3]
.LVL357:
	.loc 1 686 9 is_stmt 0 view .LVU1187
	bl	bearer_event_flag_set
.LVL358:
.L277:
	.loc 1 692 1 view .LVU1188
	pop	{r3, pc}
.LVL359:
.L278:
	.loc 1 690 9 is_stmt 1 view .LVU1189
	bl	sar_tx_session_end
.LVL360:
	.loc 1 692 1 is_stmt 0 view .LVU1190
	b	.L277
.L282:
	.align	2
.L281:
	.word	.LANCHOR5
.LFE425:
	.size	sar_tx_session_continue, .-sar_tx_session_continue
	.section	.text.retry_timeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	retry_timeout, %function
retry_timeout:
.LVL361:
.LFB454:
	.loc 1 1835 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1835 1 is_stmt 0 view .LVU1192
	push	{r4, lr}
.LCFI64:
	mov	r4, r1
	.loc 1 1836 5 is_stmt 1 view .LVU1193
.LVL362:
	.loc 1 1837 5 view .LVU1194
	.loc 1 1837 5 view .LVU1195
	ldrb	r3, [r1, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L286
.LVL363:
.L284:
	.loc 1 1837 5 discriminator 3 view .LVU1196
	.loc 1 1848 9 discriminator 3 view .LVU1197
	mov	r0, r4
	bl	sar_tx_session_continue
.LVL364:
	.loc 1 1850 1 is_stmt 0 discriminator 3 view .LVU1198
	pop	{r4, pc}
.LVL365:
.L286:
.LBB226:
	.loc 1 1837 5 is_stmt 1 discriminator 1 view .LVU1199
	.loc 1 1837 5 discriminator 1 view .LVU1200
	.syntax unified
@ 1837 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL366:
	.loc 1 1837 5 discriminator 1 view .LVU1201
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL367:
	.loc 1 1837 5 is_stmt 0 discriminator 1 view .LVU1202
	b	.L284
.LBE226:
.LFE454:
	.size	retry_timeout, .-retry_timeout
	.section	.rodata.segmented_packet_tx.str1.4,"aMS",%progbits,1
	.align	2
.LC4:
	.ascii	"TX:SAR packet\000"
	.align	2
.LC5:
	.ascii	"%s: %s\012\000"
	.section	.text.segmented_packet_tx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	segmented_packet_tx, %function
segmented_packet_tx:
.LVL368:
.LFB440:
	.loc 1 1336 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1336 1 is_stmt 0 view .LVU1204
	push	{r4, r5, r6, lr}
.LCFI65:
	sub	sp, sp, #280
.LCFI66:
	mov	r6, r1
	mov	r5, r2
	.loc 1 1337 5 is_stmt 1 view .LVU1205
	.loc 1 1337 54 is_stmt 0 view .LVU1206
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
.LVL369:
	.loc 1 1337 14 view .LVU1207
	add	r2, r2, r5
.LVL370:
	.loc 1 1338 5 is_stmt 1 view .LVU1208
	.loc 1 1338 25 is_stmt 0 view .LVU1209
	ldrb	r3, [r0, #23]	@ zero_extendqisi2
	cbz	r3, .L299
	mov	r3, #256
.L288:
	.loc 1 1338 8 discriminator 4 view .LVU1210
	cmp	r3, r2
	bcc	.L300
.LBB227:
	.loc 1 1346 19 view .LVU1211
	movs	r3, #0
	b	.L290
.L299:
	.loc 1 1346 19 view .LVU1212
.LBE227:
	.loc 1 1338 25 view .LVU1213
	mov	r3, #384
	b	.L288
.LVL371:
.L291:
.LBB228:
	.loc 1 1346 58 is_stmt 1 discriminator 2 view .LVU1214
	adds	r3, r3, #1
.LVL372:
.L290:
	.loc 1 1346 28 discriminator 1 view .LVU1215
	cmp	r3, #3
	bhi	.L304
	.loc 1 1348 9 view .LVU1216
	.loc 1 1348 42 is_stmt 0 view .LVU1217
	rsb	ip, r3, r3, lsl #3
	ldr	r4, .L306
	add	ip, r4, ip, lsl #4
	ldrb	r1, [ip, #72]	@ zero_extendqisi2
	.loc 1 1348 12 view .LVU1218
	cmp	r1, #1
	bne	.L291
	.loc 1 1349 47 discriminator 1 view .LVU1219
	ldrh	r4, [ip, #20]
	.loc 1 1349 70 discriminator 1 view .LVU1220
	ldrh	r1, [r0, #20]
	.loc 1 1348 78 discriminator 1 view .LVU1221
	cmp	r4, r1
	bne	.L291
	.loc 1 1350 51 view .LVU1222
	ldrh	r4, [ip, #14]
	.loc 1 1350 80 view .LVU1223
	ldrh	r1, [r0, #14]
	.loc 1 1349 75 view .LVU1224
	cmp	r4, r1
	bne	.L291
	.loc 1 1352 20 view .LVU1225
	movs	r5, #8
.LVL373:
	.loc 1 1352 20 view .LVU1226
	b	.L287
.LVL374:
.L304:
	.loc 1 1352 20 view .LVU1227
.LBE228:
	.loc 1 1356 5 is_stmt 1 view .LVU1228
	.loc 1 1356 33 is_stmt 0 view .LVU1229
	movs	r1, #1
	bl	sar_ctx_alloc
.LVL375:
	.loc 1 1357 5 is_stmt 1 view .LVU1230
	.loc 1 1357 8 is_stmt 0 view .LVU1231
	mov	r4, r0
	cmp	r0, #0
	beq	.L302
	.loc 1 1362 5 is_stmt 1 view .LVU1232
	mov	r2, r5
	mov	r1, r6
	ldr	r0, [r0, #108]
.LVL376:
	.loc 1 1362 5 is_stmt 0 view .LVU1233
	bl	memcpy
.LVL377:
	.loc 1 1364 5 is_stmt 1 view .LVU1234
	.loc 1 1364 14 is_stmt 0 view .LVU1235
	movs	r3, #0
	str	r3, [sp, #276]
	.loc 1 1365 5 is_stmt 1 view .LVU1236
	.loc 1 1365 23 is_stmt 0 view .LVU1237
	add	r1, sp, #276
	mov	r0, r4
	bl	trs_sar_packet_out
.LVL378:
	.loc 1 1366 5 is_stmt 1 view .LVU1238
	.loc 1 1366 8 is_stmt 0 view .LVU1239
	mov	r5, r0
.LVL379:
	.loc 1 1366 8 view .LVU1240
	cbz	r0, .L293
	.loc 1 1366 31 discriminator 1 view .LVU1241
	cmp	r0, #4
	bne	.L294
.L293:
	.loc 1 1371 9 is_stmt 1 view .LVU1242
	.loc 1 1371 27 is_stmt 0 view .LVU1243
	ldr	r3, [sp, #276]
	.loc 1 1371 12 view .LVU1244
	cbnz	r3, .L305
.LVL380:
.L295:
	.loc 1 1376 9 is_stmt 1 view .LVU1245
	ldr	r3, .L306+4
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L296
	.loc 1 1376 9 is_stmt 0 discriminator 1 view .LVU1246
	ldr	r3, .L306+8
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L296
.LBB229:
	.loc 1 1376 9 is_stmt 1 discriminator 2 view .LVU1247
	ldrh	ip, [r4, #74]
.LVL381:
	.loc 1 1376 9 discriminator 2 view .LVU1248
	cmp	ip, #128
	it	cs
	movcs	ip, #128
.LVL382:
	.loc 1 1376 9 discriminator 2 view .LVU1249
	.loc 1 1376 9 discriminator 2 view .LVU1250
.LBB230:
	.loc 1 1376 9 discriminator 2 view .LVU1251
	.loc 1 1376 9 is_stmt 0 discriminator 2 view .LVU1252
	movs	r3, #0
	b	.L297
.LVL383:
.L305:
	.loc 1 1376 9 discriminator 2 view .LVU1253
.LBE230:
.LBE229:
	.loc 1 1373 13 is_stmt 1 view .LVU1254
	mov	r0, r4
.LVL384:
	.loc 1 1373 13 is_stmt 0 view .LVU1255
	bl	tx_retry_timer_reset
.LVL385:
	b	.L295
.LVL386:
.L298:
.LBB235:
.LBB232:
.LBB231:
	.loc 1 1376 9 is_stmt 1 discriminator 5 view .LVU1256
	.loc 1 1376 9 discriminator 5 view .LVU1257
	ldr	r2, [r4, #108]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
.LVL387:
	.loc 1 1376 9 discriminator 5 view .LVU1258
	ldr	r1, .L306+12
	ldr	r5, [r1]
	lsrs	r0, r2, #4
	lsls	r1, r3, #1
	ldrb	r6, [r5, r0]	@ zero_extendqisi2
	add	r0, sp, #16
	strb	r6, [r0, r3, lsl #1]
	.loc 1 1376 9 discriminator 5 view .LVU1259
	and	r2, r2, #15
.LVL388:
	.loc 1 1376 9 is_stmt 0 discriminator 5 view .LVU1260
	adds	r1, r1, #1
	ldrb	r2, [r5, r2]	@ zero_extendqisi2
	strb	r2, [r0, r1]
.LBE231:
	.loc 1 1376 9 is_stmt 1 discriminator 5 view .LVU1261
	adds	r3, r3, #1
.LVL389:
.L297:
	.loc 1 1376 9 discriminator 3 view .LVU1262
	cmp	r3, ip
	bcc	.L298
.LBE232:
	.loc 1 1376 9 discriminator 6 view .LVU1263
	add	r2, sp, #16
	movs	r3, #0
.LVL390:
	.loc 1 1376 9 is_stmt 0 discriminator 6 view .LVU1264
	strb	r3, [r2, ip, lsl #1]
	.loc 1 1376 9 is_stmt 1 discriminator 6 view .LVU1265
.LBB233:
.LBI233:
	.loc 4 198 24 discriminator 6 view .LVU1266
.LBB234:
	.loc 4 209 5 discriminator 6 view .LVU1267
	.loc 4 209 20 is_stmt 0 discriminator 6 view .LVU1268
	add	r3, r3, #1073741824
	add	r3, r3, #69632
	ldr	r3, [r3, #1284]
.LBE234:
.LBE233:
	.loc 1 1376 9 discriminator 6 view .LVU1269
	str	r2, [sp, #8]
	ldr	r2, .L306+16
	str	r2, [sp, #4]
	ldr	r2, .L306+20
	str	r2, [sp]
	mov	r2, #1376
	ldr	r1, .L306+24
	movs	r0, #4
	bl	log_printf
.LVL391:
.L296:
	.loc 1 1376 9 discriminator 6 view .LVU1270
.LBE235:
	.loc 1 1380 44 is_stmt 1 view .LVU1271
	.loc 1 1382 9 view .LVU1272
	.loc 1 1382 16 is_stmt 0 view .LVU1273
	movs	r5, #0
.LVL392:
.L287:
	.loc 1 1389 1 view .LVU1274
	mov	r0, r5
	add	sp, sp, #280
.LCFI67:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL393:
.L294:
.LCFI68:
	.loc 1 1386 9 is_stmt 1 view .LVU1275
	mov	r0, r4
.LVL394:
	.loc 1 1386 9 is_stmt 0 view .LVU1276
	bl	sar_ctx_free
.LVL395:
	.loc 1 1387 9 is_stmt 1 view .LVU1277
	.loc 1 1387 16 is_stmt 0 view .LVU1278
	b	.L287
.LVL396:
.L300:
	.loc 1 1340 16 view .LVU1279
	movs	r5, #9
.LVL397:
	.loc 1 1340 16 view .LVU1280
	b	.L287
.LVL398:
.L302:
	.loc 1 1359 16 view .LVU1281
	movs	r5, #4
.LVL399:
	.loc 1 1359 16 view .LVU1282
	b	.L287
.L307:
	.align	2
.L306:
	.word	.LANCHOR2
	.word	g_log_dbg_msk
	.word	g_log_dbg_lvl
	.word	g_log_hex_digits
	.word	.LC4
	.word	.LC5
	.word	.LC0+43
.LFE440:
	.size	segmented_packet_tx, .-segmented_packet_tx
	.section	.text.upper_transport_tx,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	upper_transport_tx, %function
upper_transport_tx:
.LVL400:
.LFB457:
	.loc 1 1873 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1873 1 is_stmt 0 view .LVU1284
	push	{r4, r5, r6, lr}
.LCFI69:
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	.loc 1 1874 5 is_stmt 1 view .LVU1285
	.loc 1 1874 23 is_stmt 0 view .LVU1286
	bl	transport_metadata_validate
.LVL401:
	.loc 1 1875 5 is_stmt 1 view .LVU1287
	.loc 1 1875 8 is_stmt 0 view .LVU1288
	cbnz	r0, .L308
	.loc 1 1880 5 is_stmt 1 view .LVU1289
	.loc 1 1880 19 is_stmt 0 view .LVU1290
	ldrb	r3, [r4]	@ zero_extendqisi2
	.loc 1 1880 8 view .LVU1291
	cbz	r3, .L310
	.loc 1 1885 9 is_stmt 1 view .LVU1292
	.loc 1 1885 16 is_stmt 0 view .LVU1293
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	segmented_packet_tx
.LVL402:
.L308:
	.loc 1 1891 1 view .LVU1294
	pop	{r4, r5, r6, pc}
.LVL403:
.L310:
	.loc 1 1889 9 is_stmt 1 view .LVU1295
	.loc 1 1889 16 is_stmt 0 view .LVU1296
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	unsegmented_packet_tx
.LVL404:
	b	.L308
.LFE457:
	.size	upper_transport_tx, .-upper_transport_tx
	.section	.text.transport_metadata_from_tx_params,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_metadata_from_tx_params, %function
transport_metadata_from_tx_params:
.LVL405:
.LFB435:
	.loc 1 1099 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1099 1 is_stmt 0 view .LVU1298
	push	{r3, r4, r5, lr}
.LCFI70:
	mov	r4, r0
	mov	r5, r1
	.loc 1 1100 5 is_stmt 1 view .LVU1299
	.loc 1 1100 72 is_stmt 0 view .LVU1300
	ldr	r3, [r1, #28]
	.loc 1 1100 78 view .LVU1301
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 1 1100 40 view .LVU1302
	strb	r3, [r0, #4]
	.loc 1 1101 5 is_stmt 1 view .LVU1303
	.loc 1 1101 77 is_stmt 0 view .LVU1304
	ldr	r3, [r1, #28]
	.loc 1 1101 83 view .LVU1305
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1101 5 view .LVU1306
	eor	r3, r3, #1
	.loc 1 1101 43 view .LVU1307
	strb	r3, [r0, #3]
	.loc 1 1102 5 is_stmt 1 view .LVU1308
	.loc 1 1102 69 is_stmt 0 view .LVU1309
	ldr	r3, [r1, #28]
	.loc 1 1102 37 view .LVU1310
	str	r3, [r0, #36]
	.loc 1 1109 5 is_stmt 1 view .LVU1311
	.loc 1 1109 42 is_stmt 0 view .LVU1312
	ldrh	r3, [r1, #20]
	.loc 1 1110 59 view .LVU1313
	cmp	r3, #11
	bhi	.L319
	.loc 1 1110 41 discriminator 2 view .LVU1314
	ldrb	r3, [r1, #11]	@ zero_extendqisi2
	.loc 1 1109 88 discriminator 2 view .LVU1315
	cmp	r3, #0
	bne	.L320
	.loc 1 1111 41 discriminator 3 view .LVU1316
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	.loc 1 1110 59 discriminator 3 view .LVU1317
	cmp	r3, #1
	beq	.L313
	.loc 1 1110 59 view .LVU1318
	movs	r3, #0
	b	.L313
.L319:
	movs	r3, #1
.L313:
	.loc 1 1109 27 discriminator 6 view .LVU1319
	strb	r3, [r4]
	.loc 1 1113 5 is_stmt 1 discriminator 6 view .LVU1320
	.loc 1 1113 8 is_stmt 0 discriminator 6 view .LVU1321
	cmp	r3, #0
	beq	.L314
.LBB236:
	.loc 1 1115 9 is_stmt 1 view .LVU1322
	.loc 1 1116 38 is_stmt 0 view .LVU1323
	ldrb	r0, [r5, #12]	@ zero_extendqisi2
.LVL406:
	.loc 1 1116 13 view .LVU1324
	cmp	r0, #2
	beq	.L324
.L315:
	.loc 1 1116 13 discriminator 4 view .LVU1325
	bl	mic_size_get
.LVL407:
	.loc 1 1115 30 discriminator 4 view .LVU1326
	strb	r0, [r4, #2]
	.loc 1 1120 9 is_stmt 1 discriminator 4 view .LVU1327
	.loc 1 1120 46 is_stmt 0 discriminator 4 view .LVU1328
	ldrh	r3, [r5, #20]
	.loc 1 1120 57 discriminator 4 view .LVU1329
	add	r3, r3, r0
	.loc 1 1121 75 discriminator 4 view .LVU1330
	adds	r3, r3, #11
	.loc 1 1121 80 discriminator 4 view .LVU1331
	ldr	r2, .L325
	smull	r2, r3, r2, r3
	asrs	r3, r3, #1
.LVL408:
	.loc 1 1123 9 is_stmt 1 discriminator 4 view .LVU1332
	.loc 1 1123 62 is_stmt 0 discriminator 4 view .LVU1333
	subs	r3, r3, #1
.LVL409:
	.loc 1 1123 47 discriminator 4 view .LVU1334
	strb	r3, [r4, #9]
	.loc 1 1124 9 is_stmt 1 discriminator 4 view .LVU1335
	.loc 1 1124 49 is_stmt 0 discriminator 4 view .LVU1336
	movs	r3, #0
.LVL410:
	.loc 1 1124 49 discriminator 4 view .LVU1337
	strb	r3, [r4, #8]
.L316:
	.loc 1 1124 49 discriminator 4 view .LVU1338
.LBE236:
	.loc 1 1131 5 is_stmt 1 view .LVU1339
	.loc 1 1131 36 is_stmt 0 view .LVU1340
	movs	r3, #0
	strb	r3, [r4, #23]
	.loc 1 1132 5 is_stmt 1 view .LVU1341
	.loc 1 1132 25 is_stmt 0 view .LVU1342
	add	r3, r4, #12
	ldm	r5, {r0, r1}
	stm	r3, {r0, r1}
	.loc 1 1133 5 is_stmt 1 view .LVU1343
	.loc 1 1133 73 is_stmt 0 view .LVU1344
	ldr	r3, [r5, #24]
	.loc 1 1133 41 view .LVU1345
	str	r3, [r4, #32]
	.loc 1 1134 5 is_stmt 1 view .LVU1346
	.loc 1 1134 38 is_stmt 0 view .LVU1347
	ldrh	r3, [r5, #8]
	.loc 1 1134 25 view .LVU1348
	strh	r3, [r4, #20]	@ movhi
	.loc 1 1135 5 is_stmt 1 view .LVU1349
	.loc 1 1135 38 is_stmt 0 view .LVU1350
	ldrb	r3, [r5, #10]	@ zero_extendqisi2
	.loc 1 1135 25 view .LVU1351
	strb	r3, [r4, #22]
	.loc 1 1136 5 is_stmt 1 view .LVU1352
	.loc 1 1136 36 is_stmt 0 view .LVU1353
	ldr	r3, [r5, #32]
	.loc 1 1136 23 view .LVU1354
	str	r3, [r4, #40]
	.loc 1 1137 5 is_stmt 1 view .LVU1355
	.loc 1 1137 36 is_stmt 0 view .LVU1356
	movs	r3, #223
	str	r3, [r4, #44]
	.loc 1 1139 5 is_stmt 1 view .LVU1357
	.loc 1 1139 9 is_stmt 0 view .LVU1358
	mov	r0, r5
	bl	nrf_mesh_is_address_rx
.LVL411:
	.loc 1 1139 8 view .LVU1359
	cbz	r0, .L312
	.loc 1 1141 9 is_stmt 1 view .LVU1360
	.loc 1 1141 59 is_stmt 0 view .LVU1361
	ldrb	r3, [r5]	@ zero_extendqisi2
	.loc 1 1142 47 view .LVU1362
	cmp	r3, #1
	beq	.L322
	movs	r3, #255
.L318:
	.loc 1 1141 40 view .LVU1363
	str	r3, [r4, #44]
.L312:
	.loc 1 1158 1 view .LVU1364
	pop	{r3, r4, r5, pc}
.LVL412:
.L320:
	.loc 1 1110 59 view .LVU1365
	movs	r3, #1
	b	.L313
.LVL413:
.L324:
.LBB237:
	.loc 1 1116 13 discriminator 1 view .LVU1366
	ldr	r3, .L325+4
	ldrb	r0, [r3, #22]	@ zero_extendqisi2
	b	.L315
.LVL414:
.L314:
	.loc 1 1116 13 discriminator 1 view .LVU1367
.LBE237:
	.loc 1 1128 9 is_stmt 1 view .LVU1368
	.loc 1 1128 30 is_stmt 0 view .LVU1369
	movs	r3, #4
	strb	r3, [r4, #2]
	b	.L316
.LVL415:
.L322:
	.loc 1 1142 47 view .LVU1370
	movs	r3, #32
	b	.L318
.L326:
	.align	2
.L325:
	.word	715827883
	.word	.LANCHOR7
.LFE435:
	.size	transport_metadata_from_tx_params, .-transport_metadata_from_tx_params
	.section	.rodata.segack_packet_in.str1.4,"aMS",%progbits,1
	.align	2
.LC6:
	.ascii	"Could not find active session for ACK packet\012\000"
	.align	2
.LC7:
	.ascii	"Got ACK packet from unexpected device (expected %04"
	.ascii	"x, got %04x)\012\000"
	.section	.text.segack_packet_in,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	segack_packet_in, %function
segack_packet_in:
.LVL416:
.LFB448:
	.loc 1 1645 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1646 5 view .LVU1372
	.loc 1 1646 8 is_stmt 0 view .LVU1373
	cmp	r1, #6
	bne	.L336
	.loc 1 1645 1 view .LVU1374
	push	{r4, r5, r6, r7, lr}
.LCFI71:
	sub	sp, sp, #20
.LCFI72:
	mov	r5, r2
	.loc 1 1650 5 is_stmt 1 view .LVU1375
.LVL417:
.LBB249:
.LBI249:
	.loc 3 1175 24 view .LVU1376
.LBB250:
	.loc 3 1177 5 view .LVU1377
	.loc 3 1177 25 is_stmt 0 view .LVU1378
	ldrb	ip, [r0]	@ zero_extendqisi2
	.loc 3 1177 122 view .LVU1379
	lsl	r2, ip, #6
.LVL418:
	.loc 3 1177 122 view .LVU1380
	and	r2, r2, #8128
	.loc 3 1178 25 view .LVU1381
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
.LVL419:
	.loc 3 1178 25 view .LVU1382
.LBE250:
.LBE249:
	.loc 1 1651 5 is_stmt 1 view .LVU1383
.LBB251:
.LBI251:
	.loc 3 1202 24 view .LVU1384
.LBB252:
	.loc 3 1204 5 view .LVU1385
	.loc 3 1204 24 is_stmt 0 view .LVU1386
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	.loc 3 1205 24 view .LVU1387
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
.LVL420:
	.loc 3 1205 75 view .LVU1388
	lsls	r3, r3, #16
	.loc 3 1204 82 view .LVU1389
	orr	r3, r3, r4, lsl #24
	.loc 3 1206 24 view .LVU1390
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	.loc 3 1205 82 view .LVU1391
	orr	r3, r3, r4, lsl #8
	.loc 3 1207 23 view .LVU1392
	ldrb	r0, [r0, #5]	@ zero_extendqisi2
.LVL421:
	.loc 3 1206 81 view .LVU1393
	orr	r4, r3, r0
.LVL422:
	.loc 3 1206 81 view .LVU1394
.LBE252:
.LBE251:
	.loc 1 1652 5 is_stmt 1 view .LVU1395
	.loc 1 1652 5 is_stmt 0 view .LVU1396
	sxtb	r6, ip
.LVL423:
	.loc 1 1654 5 is_stmt 1 view .LVU1397
	.loc 1 1654 33 is_stmt 0 view .LVU1398
	orr	r1, r2, r1, lsr #2
.LVL424:
	.loc 1 1654 33 view .LVU1399
	mov	r0, r5
	bl	sar_active_tx_ctx_get
.LVL425:
	.loc 1 1655 5 is_stmt 1 view .LVU1400
	.loc 1 1655 8 is_stmt 0 view .LVU1401
	mov	r7, r0
	cbz	r0, .L339
	.loc 1 1659 10 is_stmt 1 view .LVU1402
	.loc 1 1659 13 is_stmt 0 view .LVU1403
	cmp	r6, #0
	blt	.L330
	.loc 1 1659 49 discriminator 1 view .LVU1404
	ldrh	r2, [r0, #14]
	.loc 1 1659 74 discriminator 1 view .LVU1405
	ldrh	r1, [r5, #20]
	.loc 1 1659 19 discriminator 1 view .LVU1406
	cmp	r2, r1
	beq	.L330
	.loc 1 1661 9 is_stmt 1 view .LVU1407
	.loc 1 1661 9 view .LVU1408
	ldr	r3, .L343
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L327
	.loc 1 1661 9 is_stmt 0 discriminator 1 view .LVU1409
	ldr	r3, .L343+4
	ldr	r3, [r3]
	cmp	r3, #1
	ble	.L327
	.loc 1 1661 9 is_stmt 1 discriminator 3 view .LVU1410
.LBB253:
.LBI253:
	.loc 4 198 24 discriminator 3 view .LVU1411
.LBB254:
	.loc 4 209 5 discriminator 3 view .LVU1412
	.loc 4 209 20 is_stmt 0 discriminator 3 view .LVU1413
	ldr	r3, .L343+8
	ldr	r3, [r3, #1284]
.LBE254:
.LBE253:
	.loc 1 1661 9 discriminator 3 view .LVU1414
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r2, .L343+12
	str	r2, [sp]
	movw	r2, #1661
	ldr	r1, .L343+16
	movs	r0, #2
.LVL426:
	.loc 1 1661 9 discriminator 3 view .LVU1415
	bl	log_printf
.LVL427:
	b	.L327
.LVL428:
.L339:
	.loc 1 1657 9 is_stmt 1 view .LVU1416
	.loc 1 1657 9 view .LVU1417
	ldr	r3, .L343
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L327
	.loc 1 1657 9 is_stmt 0 discriminator 1 view .LVU1418
	ldr	r3, .L343+4
	ldr	r3, [r3]
	cmp	r3, #1
	ble	.L327
	.loc 1 1657 9 is_stmt 1 discriminator 3 view .LVU1419
.LBB255:
.LBI255:
	.loc 4 198 24 discriminator 3 view .LVU1420
.LBB256:
	.loc 4 209 5 discriminator 3 view .LVU1421
	.loc 4 209 20 is_stmt 0 discriminator 3 view .LVU1422
	ldr	r3, .L343+8
	ldr	r3, [r3, #1284]
.LBE256:
.LBE255:
	.loc 1 1657 9 discriminator 3 view .LVU1423
	ldr	r2, .L343+20
	str	r2, [sp]
	movw	r2, #1657
	ldr	r1, .L343+16
	movs	r0, #2
.LVL429:
	.loc 1 1657 9 discriminator 3 view .LVU1424
	bl	log_printf
.LVL430:
	b	.L327
.LVL431:
.L330:
	.loc 1 1669 127 is_stmt 1 view .LVU1425
	.loc 1 1671 9 view .LVU1426
	.loc 1 1671 12 is_stmt 0 view .LVU1427
	cmp	r6, #0
	blt	.L340
.L331:
	.loc 1 1678 9 is_stmt 1 view .LVU1428
	.loc 1 1678 38 is_stmt 0 view .LVU1429
	ldr	r5, [r7, #76]
.LVL432:
	.loc 1 1678 38 view .LVU1430
	orrs	r5, r5, r4
	str	r5, [r7, #76]
	.loc 1 1680 9 is_stmt 1 view .LVU1431
	.loc 1 1680 12 is_stmt 0 view .LVU1432
	cbnz	r4, .L332
	.loc 1 1682 13 is_stmt 1 view .LVU1433
	movs	r1, #3
	mov	r0, r7
.LVL433:
	.loc 1 1682 13 is_stmt 0 view .LVU1434
	bl	sar_ctx_cancel
.LVL434:
.L327:
	.loc 1 1702 1 view .LVU1435
	add	sp, sp, #20
.LCFI73:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL435:
.L340:
.LCFI74:
	.loc 1 1675 13 is_stmt 1 view .LVU1436
	.loc 1 1675 67 is_stmt 0 view .LVU1437
	ldrh	r3, [r5, #20]
	.loc 1 1675 50 view .LVU1438
	strh	r3, [r7, #88]	@ movhi
	b	.L331
.LVL436:
.L332:
	.loc 1 1684 14 is_stmt 1 view .LVU1439
.LBB257:
.LBI257:
	.loc 1 267 24 view .LVU1440
.LBB258:
	.loc 1 269 5 view .LVU1441
	.loc 1 269 5 view .LVU1442
	ldrb	r3, [r7]	@ zero_extendqisi2
	cbz	r3, .L341
.LVL437:
.L333:
	.loc 1 269 5 view .LVU1443
	.loc 1 270 5 view .LVU1444
	.loc 1 270 45 is_stmt 0 view .LVU1445
	ldrb	r2, [r7, #9]	@ zero_extendqisi2
	.loc 1 270 59 view .LVU1446
	adds	r2, r2, #1
	.loc 1 270 17 view .LVU1447
	movs	r3, #1
	lsls	r3, r3, r2
	.loc 1 270 65 view .LVU1448
	subs	r3, r3, #1
.LVL438:
	.loc 1 270 65 view .LVU1449
.LBE258:
.LBE257:
	.loc 1 1684 17 view .LVU1450
	cmp	r5, r3
	beq	.L342
	.loc 1 1695 14 is_stmt 1 view .LVU1451
	.loc 1 1695 55 is_stmt 0 view .LVU1452
	movs	r1, #0
	strb	r1, [r7, #80]
	.loc 1 1698 14 is_stmt 1 view .LVU1453
	.loc 1 1698 21 is_stmt 0 view .LVU1454
	mov	r0, r7
	bl	trs_sar_packet_out
.LVL439:
	.loc 1 1699 14 is_stmt 1 view .LVU1455
	mov	r0, r7
	bl	tx_retry_timer_reset
.LVL440:
	b	.L327
.LVL441:
.L341:
.LBB261:
.LBB260:
.LBB259:
	.loc 1 269 5 view .LVU1456
	.loc 1 269 5 view .LVU1457
	.syntax unified
@ 269 "C:\project domotica\nrf-mesh\mesh\core\src\transport.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL442:
	.loc 1 269 5 view .LVU1458
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL443:
	.loc 1 269 5 is_stmt 0 view .LVU1459
	b	.L333
.LVL444:
.L342:
	.loc 1 269 5 view .LVU1460
.LBE259:
.LBE260:
.LBE261:
	.loc 1 1687 13 is_stmt 1 view .LVU1461
	mov	r0, r7
	bl	sar_ctx_tx_complete
.LVL445:
	b	.L327
.LVL446:
.L336:
.LCFI75:
	.loc 1 1687 13 is_stmt 0 view .LVU1462
	bx	lr
.L344:
	.align	2
.L343:
	.word	g_log_dbg_msk
	.word	g_log_dbg_lvl
	.word	1073811456
	.word	.LC7
	.word	.LC0+43
	.word	.LC6
.LFE448:
	.size	segack_packet_in, .-segack_packet_in
	.section	.text.transport_control_packet_in,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_control_packet_in, %function
transport_control_packet_in:
.LVL447:
.LFB450:
	.loc 1 1725 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1725 1 is_stmt 0 view .LVU1464
	push	{r4, r5, r6, r7, r8, r9, lr}
.LCFI76:
	sub	sp, sp, #44
.LCFI77:
	mov	r7, r0
	mov	r6, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 1727 5 is_stmt 1 view .LVU1465
	.loc 1 1727 9 is_stmt 0 view .LVU1466
	mov	r0, r2
.LVL448:
	.loc 1 1727 9 view .LVU1467
	bl	replay_list_add
.LVL449:
	.loc 1 1727 8 view .LVU1468
	cbnz	r0, .L345
	.loc 1 1729 9 is_stmt 1 view .LVU1469
	.loc 1 1729 41 is_stmt 0 view .LVU1470
	ldrb	r8, [r4, #3]	@ zero_extendqisi2
	.loc 1 1729 9 view .LVU1471
	cmp	r8, #0
	bne	.L347
	.loc 1 1733 17 is_stmt 1 view .LVU1472
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r7
	bl	segack_packet_in
.LVL450:
	.loc 1 1734 17 view .LVU1473
.L345:
	.loc 1 1757 1 is_stmt 0 view .LVU1474
	add	sp, sp, #44
.LCFI78:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL451:
.L347:
.LCFI79:
.LBB262:
	.loc 1 1738 17 is_stmt 1 view .LVU1475
	.loc 1 1738 64 is_stmt 0 view .LVU1476
	mov	r0, r8
	bl	control_packet_callback_get
.LVL452:
	.loc 1 1739 17 is_stmt 1 view .LVU1477
	.loc 1 1739 20 is_stmt 0 view .LVU1478
	mov	r9, r0
	cmp	r0, #0
	beq	.L345
.LBB263:
	.loc 1 1741 21 is_stmt 1 view .LVU1479
	.loc 1 1742 21 view .LVU1480
	.loc 1 1742 52 is_stmt 0 view .LVU1481
	strb	r8, [sp, #4]
	.loc 1 1743 21 is_stmt 1 view .LVU1482
	.loc 1 1743 69 is_stmt 0 view .LVU1483
	ldr	r3, [r4, #32]
	.loc 1 1743 52 view .LVU1484
	str	r3, [sp, #28]
	.loc 1 1744 21 is_stmt 1 view .LVU1485
	.loc 1 1744 69 is_stmt 0 view .LVU1486
	ldrh	r3, [r4, #20]
	.loc 1 1744 52 view .LVU1487
	strh	r3, [sp, #18]	@ movhi
	.loc 1 1745 21 is_stmt 1 view .LVU1488
	.loc 1 1745 52 is_stmt 0 view .LVU1489
	add	r3, sp, #20
	add	r2, r4, #12
	ldm	r2, {r0, r1}
.LVL453:
	.loc 1 1745 52 view .LVU1490
	stm	r3, {r0, r1}
	.loc 1 1746 21 is_stmt 1 view .LVU1491
	.loc 1 1746 69 is_stmt 0 view .LVU1492
	ldrb	r3, [r4, #22]	@ zero_extendqisi2
	.loc 1 1746 52 view .LVU1493
	strb	r3, [sp, #32]
	.loc 1 1747 21 is_stmt 1 view .LVU1494
	.loc 1 1747 52 is_stmt 0 view .LVU1495
	str	r7, [sp, #8]
	.loc 1 1748 21 is_stmt 1 view .LVU1496
	.loc 1 1748 52 is_stmt 0 view .LVU1497
	str	r6, [sp, #12]
	.loc 1 1749 21 is_stmt 1 view .LVU1498
	.loc 1 1749 64 is_stmt 0 view .LVU1499
	ldrb	r3, [r4]	@ zero_extendqisi2
	.loc 1 1749 52 view .LVU1500
	strb	r3, [sp, #16]
	.loc 1 1750 21 is_stmt 1 view .LVU1501
	.loc 1 1750 64 is_stmt 0 view .LVU1502
	ldr	r3, [r4, #44]
	.loc 1 1750 52 view .LVU1503
	str	r3, [sp, #36]
	.loc 1 1751 21 is_stmt 1 view .LVU1504
	mov	r1, r5
	add	r0, sp, #4
	blx	r9
.LVL454:
.LBE263:
.LBE262:
	.loc 1 1757 1 is_stmt 0 view .LVU1505
	b	.L345
.LFE450:
	.size	transport_control_packet_in, .-transport_control_packet_in
	.section	.text.upper_transport_packet_in,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	upper_transport_packet_in, %function
upper_transport_packet_in:
.LVL455:
.LFB452:
	.loc 1 1809 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1810 5 view .LVU1507
	.loc 1 1810 19 is_stmt 0 view .LVU1508
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	.loc 1 1810 8 view .LVU1509
	tst	ip, #1
	beq	.L353
	.loc 1 1809 1 view .LVU1510
	push	{r4, lr}
.LCFI80:
	.loc 1 1812 9 is_stmt 1 view .LVU1511
	.loc 1 1812 28 is_stmt 0 view .LVU1512
	ldrb	r4, [r2, #23]	@ zero_extendqisi2
	.loc 1 1812 12 view .LVU1513
	cbz	r4, .L351
	.loc 1 1814 13 is_stmt 1 view .LVU1514
	bl	transport_control_packet_in
.LVL456:
.L349:
	.loc 1 1824 1 is_stmt 0 view .LVU1515
	pop	{r4, pc}
.LVL457:
.L351:
	.loc 1 1821 13 is_stmt 1 view .LVU1516
	bl	upper_transport_access_packet_in
.LVL458:
	.loc 1 1824 1 is_stmt 0 view .LVU1517
	b	.L349
.LVL459:
.L353:
.LCFI81:
	.loc 1 1824 1 view .LVU1518
	bx	lr
.LFE452:
	.size	upper_transport_packet_in, .-upper_transport_packet_in
	.section	.text.trs_unseg_packet_in,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	trs_unseg_packet_in, %function
trs_unseg_packet_in:
.LVL460:
.LFB431:
	.loc 1 1021 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1021 1 is_stmt 0 view .LVU1520
	push	{r3, lr}
.LCFI82:
	.loc 1 1030 5 is_stmt 1 view .LVU1521
.LVL461:
.LBB264:
.LBI264:
	.loc 3 309 31 view .LVU1522
.LBB265:
	.loc 3 311 5 view .LVU1523
	.loc 3 311 5 is_stmt 0 view .LVU1524
.LBE265:
.LBE264:
	.loc 1 1030 5 view .LVU1525
	subs	r1, r1, #1
.LVL462:
	.loc 1 1030 5 view .LVU1526
	adds	r0, r0, #1
.LVL463:
	.loc 1 1030 5 view .LVU1527
	bl	upper_transport_packet_in
.LVL464:
	.loc 1 1034 1 view .LVU1528
	pop	{r3, pc}
.LFE431:
	.size	trs_unseg_packet_in, .-trs_unseg_packet_in
	.section	.text.transport_init,"ax",%progbits
	.align	1
	.global	transport_init
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_init, %function
transport_init:
.LFB458:
	.loc 1 1897 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI83:
	.loc 1 1898 5 view .LVU1530
	mov	r2, #448
	movs	r1, #0
	ldr	r0, .L360
	bl	memset
.LVL465:
	.loc 1 1900 5 view .LVU1531
	bl	replay_cache_init
.LVL466:
	.loc 1 1902 5 view .LVU1532
	.loc 1 1902 43 is_stmt 0 view .LVU1533
	movs	r4, #0
	ldr	r3, .L360+4
	str	r4, [r3]
	.loc 1 1903 5 is_stmt 1 view .LVU1534
	movs	r2, #128
	mov	r1, r4
	ldr	r0, .L360+8
	bl	memset
.LVL467:
	.loc 1 1905 5 view .LVU1535
	.loc 1 1905 44 is_stmt 0 view .LVU1536
	ldr	r3, .L360+12
	ldr	r2, .L360+16
	str	r2, [r3]
	.loc 1 1906 5 is_stmt 1 view .LVU1537
	.loc 1 1906 44 is_stmt 0 view .LVU1538
	ldr	r2, .L360+20
	str	r2, [r3, #4]
	.loc 1 1907 5 is_stmt 1 view .LVU1539
	.loc 1 1907 44 is_stmt 0 view .LVU1540
	movw	r2, #50000
	str	r2, [r3, #8]
	.loc 1 1908 5 is_stmt 1 view .LVU1541
	.loc 1 1908 44 is_stmt 0 view .LVU1542
	ldr	r1, .L360+24
	str	r1, [r3, #12]
	.loc 1 1909 5 is_stmt 1 view .LVU1543
	.loc 1 1909 44 is_stmt 0 view .LVU1544
	str	r2, [r3, #16]
	.loc 1 1910 5 is_stmt 1 view .LVU1545
	.loc 1 1910 44 is_stmt 0 view .LVU1546
	movs	r2, #4
	strb	r2, [r3, #20]
	.loc 1 1911 5 is_stmt 1 view .LVU1547
	.loc 1 1911 44 is_stmt 0 view .LVU1548
	strb	r4, [r3, #22]
	.loc 1 1912 5 is_stmt 1 view .LVU1549
	.loc 1 1912 44 is_stmt 0 view .LVU1550
	movs	r2, #8
	strb	r2, [r3, #21]
	.loc 1 1913 5 is_stmt 1 view .LVU1551
	.loc 1 1913 26 is_stmt 0 view .LVU1552
	ldr	r0, .L360+28
	bl	bearer_event_flag_add
.LVL468:
	.loc 1 1913 24 view .LVU1553
	ldr	r3, .L360+32
	str	r0, [r3]
	.loc 1 1914 5 is_stmt 1 view .LVU1554
	.loc 1 1914 37 is_stmt 0 view .LVU1555
	ldr	r3, .L360+36
	str	r4, [r3]
	.loc 1 1916 5 is_stmt 1 view .LVU1556
	ldr	r0, .L360+40
	bl	core_tx_complete_cb_set
.LVL469:
	.loc 1 1922 1 is_stmt 0 view .LVU1557
	pop	{r4, pc}
.L361:
	.align	2
.L360:
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LANCHOR7
	.word	10000000
	.word	150000
	.word	500000
	.word	transport_sar_process
	.word	.LANCHOR5
	.word	.LANCHOR4
	.word	tx_complete
.LFE458:
	.size	transport_init, .-transport_init
	.section	.text.transport_enable,"ax",%progbits
	.align	1
	.global	transport_enable
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_enable, %function
transport_enable:
.LFB459:
	.loc 1 1925 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI84:
	.loc 1 1926 5 view .LVU1559
	bl	replay_cache_enable
.LVL470:
	.loc 1 1927 1 is_stmt 0 view .LVU1560
	pop	{r3, pc}
.LFE459:
	.size	transport_enable, .-transport_enable
	.section	.text.transport_tx,"ax",%progbits
	.align	1
	.global	transport_tx
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_tx, %function
transport_tx:
.LVL471:
.LFB461:
	.loc 1 2026 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2027 5 view .LVU1562
	.loc 1 2027 8 is_stmt 0 view .LVU1563
	cbz	r0, .L366
	.loc 1 2026 1 discriminator 1 view .LVU1564
	push	{r4, lr}
.LCFI85:
	sub	sp, sp, #48
.LCFI86:
	mov	r4, r0
	.loc 1 2028 17 discriminator 1 view .LVU1565
	ldr	r3, [r0, #16]
	.loc 1 2027 26 discriminator 1 view .LVU1566
	cbz	r3, .L367
	.loc 1 2029 36 view .LVU1567
	ldr	r3, [r0, #28]
	.loc 1 2028 34 view .LVU1568
	cbz	r3, .L368
	.loc 1 2030 36 view .LVU1569
	ldr	r3, [r0, #24]
	.loc 1 2029 51 view .LVU1570
	cbz	r3, .L369
	.loc 1 2035 5 is_stmt 1 view .LVU1571
	.loc 1 2036 5 view .LVU1572
	mov	r1, r0
.LVL472:
	.loc 1 2036 5 is_stmt 0 view .LVU1573
	mov	r0, sp
.LVL473:
	.loc 1 2036 5 view .LVU1574
	bl	transport_metadata_from_tx_params
.LVL474:
	.loc 1 2038 5 is_stmt 1 view .LVU1575
	.loc 1 2038 12 is_stmt 0 view .LVU1576
	ldrh	r2, [r4, #20]
	ldr	r1, [r4, #16]
	mov	r0, sp
	bl	upper_transport_tx
.LVL475:
.L364:
	.loc 1 2039 1 view .LVU1577
	add	sp, sp, #48
.LCFI87:
	@ sp needed
	pop	{r4, pc}
.LVL476:
.L366:
.LCFI88:
	.loc 1 2032 16 view .LVU1578
	movs	r0, #14
.LVL477:
	.loc 1 2039 1 view .LVU1579
	bx	lr
.LVL478:
.L367:
.LCFI89:
	.loc 1 2032 16 view .LVU1580
	movs	r0, #14
.LVL479:
	.loc 1 2032 16 view .LVU1581
	b	.L364
.LVL480:
.L368:
	.loc 1 2032 16 view .LVU1582
	movs	r0, #14
.LVL481:
	.loc 1 2032 16 view .LVU1583
	b	.L364
.LVL482:
.L369:
	.loc 1 2032 16 view .LVU1584
	movs	r0, #14
.LVL483:
	.loc 1 2032 16 view .LVU1585
	b	.L364
.LFE461:
	.size	transport_tx, .-transport_tx
	.section	.rodata.transport_control_tx.str1.4,"aMS",%progbits,1
	.align	2
.LC8:
	.ascii	"TX: control opcode: 0x%02x secmat: 0x%08x\012\000"
	.section	.text.transport_control_tx,"ax",%progbits
	.align	1
	.global	transport_control_tx
	.syntax unified
	.thumb
	.thumb_func
	.type	transport_control_tx, %function
transport_control_tx:
.LVL484:
.LFB462:
	.loc 1 2042 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 2043 5 view .LVU1587
	.loc 1 2043 8 is_stmt 0 view .LVU1588
	cbz	r0, .L377
	.loc 1 2042 1 discriminator 1 view .LVU1589
	push	{r4, lr}
.LCFI90:
	sub	sp, sp, #64
.LCFI91:
	mov	r2, r1
	mov	r4, r0
	.loc 1 2044 17 discriminator 1 view .LVU1590
	ldr	r3, [r0, #4]
	.loc 1 2043 26 discriminator 1 view .LVU1591
	cbz	r3, .L378
	.loc 1 2045 17 view .LVU1592
	ldr	r3, [r0, #24]
	.loc 1 2044 34 view .LVU1593
	cbz	r3, .L379
	.loc 1 2050 5 is_stmt 1 view .LVU1594
	.loc 1 2051 5 view .LVU1595
	mov	r1, r0
.LVL485:
	.loc 1 2051 5 is_stmt 0 view .LVU1596
	add	r0, sp, #16
.LVL486:
	.loc 1 2051 5 view .LVU1597
	bl	transport_metadata_from_control_tx_params
.LVL487:
	.loc 1 2053 5 is_stmt 1 view .LVU1598
	.loc 1 2053 5 view .LVU1599
	ldr	r3, .L385
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L376
	.loc 1 2053 5 is_stmt 0 discriminator 1 view .LVU1600
	ldr	r3, .L385+4
	ldr	r3, [r3]
	cmp	r3, #6
	bgt	.L384
.L376:
	.loc 1 2053 5 is_stmt 1 discriminator 5 view .LVU1601
	.loc 1 2054 52 discriminator 5 view .LVU1602
	.loc 1 2056 5 discriminator 5 view .LVU1603
	.loc 1 2056 12 is_stmt 0 discriminator 5 view .LVU1604
	ldr	r2, [r4, #8]
	ldr	r1, [r4, #4]
	add	r0, sp, #16
	bl	upper_transport_tx
.LVL488:
.L374:
	.loc 1 2057 1 view .LVU1605
	add	sp, sp, #64
.LCFI92:
	@ sp needed
	pop	{r4, pc}
.LVL489:
.L384:
.LCFI93:
	.loc 1 2053 5 is_stmt 1 discriminator 3 view .LVU1606
.LBB266:
.LBI266:
	.loc 4 198 24 discriminator 3 view .LVU1607
.LBB267:
	.loc 4 209 5 discriminator 3 view .LVU1608
	.loc 4 209 20 is_stmt 0 discriminator 3 view .LVU1609
	ldr	r3, .L385+8
	ldr	r3, [r3, #1284]
.LBE267:
.LBE266:
	.loc 1 2053 5 discriminator 3 view .LVU1610
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r1, [r4, #24]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r2, .L385+12
	str	r2, [sp]
	movw	r2, #2053
	ldr	r1, .L385+16
	movs	r0, #7
	bl	log_printf
.LVL490:
	b	.L376
.LVL491:
.L377:
.LCFI94:
	.loc 1 2047 16 view .LVU1611
	movs	r0, #14
.LVL492:
	.loc 1 2057 1 view .LVU1612
	bx	lr
.LVL493:
.L378:
.LCFI95:
	.loc 1 2047 16 view .LVU1613
	movs	r0, #14
.LVL494:
	.loc 1 2047 16 view .LVU1614
	b	.L374
.LVL495:
.L379:
	.loc 1 2047 16 view .LVU1615
	movs	r0, #14
.LVL496:
	.loc 1 2047 16 view .LVU1616
	b	.L374
.L386:
	.align	2
.L385:
	.word	g_log_dbg_msk
	.word	g_log_dbg_lvl
	.word	1073811456
	.word	.LC8
	.word	.LC0+43
.LFE462:
	.size	transport_control_tx, .-transport_control_tx
	.section	.rodata.sar_ack_send.str1.4,"aMS",%progbits,1
	.align	2
.LC9:
	.ascii	"Sending ACK...\012\000"
	.section	.text.sar_ack_send,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sar_ack_send, %function
sar_ack_send:
.LVL497:
.LFB423:
	.loc 1 606 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 608 5 view .LVU1618
	.loc 1 609 5 view .LVU1619
	.loc 1 609 28 is_stmt 0 view .LVU1620
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	.loc 1 609 8 view .LVU1621
	cmp	r3, #1
	beq	.L399
	.loc 1 608 14 view .LVU1622
	movs	r0, #0
.LVL498:
	.loc 1 661 5 is_stmt 1 view .LVU1623
	.loc 1 662 1 is_stmt 0 view .LVU1624
	bx	lr
.LVL499:
.L399:
	.loc 1 606 1 view .LVU1625
	push	{r4, r5, lr}
.LCFI96:
	sub	sp, sp, #68
.LCFI97:
	mov	r4, r0
	mov	r5, r1
.LBB278:
	.loc 1 611 9 is_stmt 1 view .LVU1626
	.loc 1 611 9 view .LVU1627
	ldr	r3, .L402
	ldr	r3, [r3]
	tst	r3, #4
	beq	.L389
	.loc 1 611 9 is_stmt 0 discriminator 1 view .LVU1628
	ldr	r3, .L402+4
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L400
.LVL500:
.L389:
	.loc 1 611 9 is_stmt 1 discriminator 5 view .LVU1629
	.loc 1 611 69 discriminator 5 view .LVU1630
	.loc 1 613 9 discriminator 5 view .LVU1631
	.loc 1 614 9 discriminator 5 view .LVU1632
	add	r1, sp, #16
	movs	r3, #0
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #23]	@ unaligned
	.loc 1 615 9 discriminator 5 view .LVU1633
	.loc 1 615 92 is_stmt 0 discriminator 5 view .LVU1634
	ldrh	r0, [r4, #6]
.LVL501:
.LBB279:
.LBI279:
	.loc 3 1187 20 is_stmt 1 discriminator 5 view .LVU1635
.LBB280:
	.loc 3 1189 5 discriminator 5 view .LVU1636
	.loc 3 1189 64 is_stmt 0 discriminator 5 view .LVU1637
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	and	r2, r2, #128
	strb	r2, [sp, #16]
	.loc 3 1190 5 is_stmt 1 discriminator 5 view .LVU1638
	.loc 3 1190 78 is_stmt 0 discriminator 5 view .LVU1639
	ubfx	ip, r0, #6, #7
	.loc 3 1190 64 discriminator 5 view .LVU1640
	orr	r2, r2, ip
	strb	r2, [sp, #16]
	.loc 3 1191 5 is_stmt 1 discriminator 5 view .LVU1641
	.loc 3 1191 64 is_stmt 0 discriminator 5 view .LVU1642
	ldrb	r2, [sp, #17]	@ zero_extendqisi2
	and	r2, r2, #3
	strb	r2, [sp, #17]
	.loc 3 1192 5 is_stmt 1 discriminator 5 view .LVU1643
	.loc 3 1192 64 is_stmt 0 discriminator 5 view .LVU1644
	orr	r2, r2, r0, lsl #2
	strb	r2, [sp, #17]
.LVL502:
	.loc 3 1192 64 discriminator 5 view .LVU1645
.LBE280:
.LBE279:
	.loc 1 616 9 is_stmt 1 discriminator 5 view .LVU1646
.LBB281:
.LBI281:
	.loc 3 1216 20 discriminator 5 view .LVU1647
.LBB282:
	.loc 3 1218 5 discriminator 5 view .LVU1648
	.loc 3 1218 80 is_stmt 0 discriminator 5 view .LVU1649
	lsrs	r2, r5, #24
	.loc 3 1218 66 discriminator 5 view .LVU1650
	strb	r2, [sp, #18]
	.loc 3 1219 5 is_stmt 1 discriminator 5 view .LVU1651
	.loc 3 1219 73 is_stmt 0 discriminator 5 view .LVU1652
	lsrs	r2, r5, #16
	.loc 3 1219 66 discriminator 5 view .LVU1653
	strb	r2, [sp, #19]
	.loc 3 1220 5 is_stmt 1 discriminator 5 view .LVU1654
	.loc 3 1220 73 is_stmt 0 discriminator 5 view .LVU1655
	lsrs	r2, r5, #8
	.loc 3 1220 66 discriminator 5 view .LVU1656
	strb	r2, [sp, #20]
	.loc 3 1221 5 is_stmt 1 discriminator 5 view .LVU1657
	.loc 3 1221 66 is_stmt 0 discriminator 5 view .LVU1658
	strb	r5, [sp, #21]
.LVL503:
	.loc 3 1221 66 discriminator 5 view .LVU1659
.LBE282:
.LBE281:
	.loc 1 617 9 is_stmt 1 discriminator 5 view .LVU1660
	.loc 1 617 75 is_stmt 0 discriminator 5 view .LVU1661
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	.loc 1 617 9 discriminator 5 view .LVU1662
	cmp	r2, #2
	ite	eq
	moveq	r0, #1
	movne	r0, r3
.LVL504:
.LBB283:
.LBI283:
	.loc 3 1162 20 is_stmt 1 discriminator 5 view .LVU1663
.LBB284:
	.loc 3 1164 5 discriminator 5 view .LVU1664
	.loc 3 1164 59 is_stmt 0 discriminator 5 view .LVU1665
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	and	r2, r2, #127
	strb	r2, [sp, #16]
	.loc 3 1165 5 is_stmt 1 discriminator 5 view .LVU1666
	.loc 3 1165 59 is_stmt 0 discriminator 5 view .LVU1667
	orr	r2, r2, r0, lsl #7
	strb	r2, [sp, #16]
.LVL505:
	.loc 3 1165 59 discriminator 5 view .LVU1668
.LBE284:
.LBE283:
	.loc 1 619 9 is_stmt 1 discriminator 5 view .LVU1669
	.loc 1 620 9 discriminator 5 view .LVU1670
	.loc 1 620 43 is_stmt 0 discriminator 5 view .LVU1671
	mov	r2, #6
	str	r2, [sp, #36]
	.loc 1 621 9 is_stmt 1 discriminator 5 view .LVU1672
	.loc 1 621 43 is_stmt 0 discriminator 5 view .LVU1673
	mov	r2, #1
	strb	r2, [sp, #44]
	.loc 1 622 9 is_stmt 1 discriminator 5 view .LVU1674
	.loc 1 622 60 is_stmt 0 discriminator 5 view .LVU1675
	ldrh	r2, [r4, #20]
	.loc 1 622 43 discriminator 5 view .LVU1676
	strh	r2, [sp, #46]	@ movhi
	.loc 1 623 9 is_stmt 1 discriminator 5 view .LVU1677
	.loc 1 623 43 is_stmt 0 discriminator 5 view .LVU1678
	str	r3, [sp, #48]
	.loc 1 624 9 is_stmt 1 discriminator 5 view .LVU1679
	.loc 1 624 43 is_stmt 0 discriminator 5 view .LVU1680
	strb	r3, [sp, #28]
	.loc 1 625 9 is_stmt 1 discriminator 5 view .LVU1681
	.loc 1 625 43 is_stmt 0 discriminator 5 view .LVU1682
	str	r1, [sp, #32]
	.loc 1 626 9 is_stmt 1 discriminator 5 view .LVU1683
	.loc 1 626 60 is_stmt 0 discriminator 5 view .LVU1684
	ldr	r2, [r4, #32]
	.loc 1 626 43 discriminator 5 view .LVU1685
	str	r2, [sp, #52]
	.loc 1 627 9 is_stmt 1 discriminator 5 view .LVU1686
	.loc 1 627 43 is_stmt 0 discriminator 5 view .LVU1687
	strb	r3, [sp, #40]
	.loc 1 628 9 is_stmt 1 discriminator 5 view .LVU1688
	.loc 1 628 55 is_stmt 0 discriminator 5 view .LVU1689
	ldr	r3, [r4, #44]
	.loc 1 628 43 discriminator 5 view .LVU1690
	str	r3, [sp, #60]
	.loc 1 630 9 is_stmt 1 discriminator 5 view .LVU1691
	.loc 1 630 12 is_stmt 0 discriminator 5 view .LVU1692
	beq	.L401
	.loc 1 641 13 is_stmt 1 view .LVU1693
	.loc 1 641 53 is_stmt 0 view .LVU1694
	ldrh	r3, [r4, #14]
	.loc 1 641 32 view .LVU1695
	strh	r3, [sp, #42]	@ movhi
.L391:
	.loc 1 644 9 is_stmt 1 view .LVU1696
	.loc 1 644 28 is_stmt 0 view .LVU1697
	ldrb	r3, [r4, #22]	@ zero_extendqisi2
	.loc 1 644 12 view .LVU1698
	cbnz	r3, .L392
	.loc 1 647 13 is_stmt 1 view .LVU1699
	.loc 1 647 32 is_stmt 0 view .LVU1700
	strb	r3, [sp, #56]
.L393:
	.loc 1 654 9 is_stmt 1 view .LVU1701
	.loc 1 654 18 is_stmt 0 view .LVU1702
	mvn	r1, #1
	add	r0, sp, #28
	bl	transport_control_tx
.LVL506:
	.loc 1 656 9 is_stmt 1 view .LVU1703
	.loc 1 658 117 view .LVU1704
.LBE278:
	.loc 1 662 1 is_stmt 0 view .LVU1705
	add	sp, sp, #68
.LCFI98:
	@ sp needed
	pop	{r4, r5, pc}
.LVL507:
.L400:
.LCFI99:
.LBB288:
	.loc 1 611 9 is_stmt 1 discriminator 3 view .LVU1706
.LBB285:
.LBI285:
	.loc 4 198 24 discriminator 3 view .LVU1707
.LBB286:
	.loc 4 209 5 discriminator 3 view .LVU1708
	.loc 4 209 20 is_stmt 0 discriminator 3 view .LVU1709
	ldr	r3, .L402+8
	ldr	r3, [r3, #1284]
.LBE286:
.LBE285:
	.loc 1 611 9 discriminator 3 view .LVU1710
	ldr	r2, .L402+12
	str	r2, [sp]
	movw	r2, #611
	ldr	r1, .L402+16
.LVL508:
	.loc 1 611 9 discriminator 3 view .LVU1711
	movs	r0, #4
.LVL509:
	.loc 1 611 9 discriminator 3 view .LVU1712
	bl	log_printf
.LVL510:
	b	.L389
.L401:
.LBB287:
	.loc 1 632 13 is_stmt 1 view .LVU1713
	.loc 1 633 13 view .LVU1714
	.loc 1 635 13 view .LVU1715
	add	r1, sp, #14
	add	r0, sp, #12
	bl	nrf_mesh_unicast_address_get
.LVL511:
	.loc 1 637 13 view .LVU1716
	.loc 1 637 32 is_stmt 0 view .LVU1717
	ldrh	r3, [sp, #12]
	strh	r3, [sp, #42]	@ movhi
.LBE287:
	b	.L391
.L392:
	.loc 1 651 13 is_stmt 1 view .LVU1718
	.loc 1 651 46 is_stmt 0 view .LVU1719
	ldr	r3, .L402+20
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	.loc 1 651 32 view .LVU1720
	strb	r3, [s