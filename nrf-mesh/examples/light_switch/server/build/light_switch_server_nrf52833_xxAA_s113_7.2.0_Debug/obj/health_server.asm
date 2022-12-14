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
	.file	"health_server.c"
	.text
.Ltext0:
	.section	.text.get_server_index,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	get_server_index, %function
get_server_index:
.LVL0:
.LFB317:
	.file 1 "C:\\project domotica\\nrf-mesh\\models\\foundation\\health\\src\\health_server.c"
	.loc 1 96 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 97 5 view .LVU1
.LBB23:
	.loc 1 97 10 view .LVU2
	.loc 1 97 19 is_stmt 0 view .LVU3
	movs	r3, #0
	.loc 1 97 5 view .LVU4
	b	.L2
.LVL1:
.L3:
	.loc 1 97 53 is_stmt 1 discriminator 2 view .LVU5
	adds	r3, r3, #1
.LVL2:
.L2:
	.loc 1 97 28 discriminator 1 view .LVU6
	cmp	r3, #2
	bhi	.L6
	.loc 1 99 9 view .LVU7
	.loc 1 99 43 is_stmt 0 view .LVU8
	ldr	r2, .L7
	ldr	r2, [r2, r3, lsl #2]
	.loc 1 99 12 view .LVU9
	cmp	r2, r0
	bne	.L3
	.loc 1 101 13 is_stmt 1 view .LVU10
	.loc 1 101 22 is_stmt 0 view .LVU11
	strh	r3, [r1]	@ movhi
	.loc 1 102 13 is_stmt 1 view .LVU12
	.loc 1 102 20 is_stmt 0 view .LVU13
	movs	r0, #0
.LVL3:
	.loc 1 102 20 view .LVU14
	bx	lr
.LVL4:
.L6:
	.loc 1 102 20 view .LVU15
.LBE23:
	.loc 1 106 12 view .LVU16
	movs	r0, #5
.LVL5:
	.loc 1 107 1 view .LVU17
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
.LFE317:
	.size	get_server_index, .-get_server_index
	.section	.text.health_server_deleter,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	health_server_deleter, %function
health_server_deleter:
.LFB320:
	.loc 1 149 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	str	r0, [sp, #4]
	.loc 1 150 5 view .LVU19
	.loc 1 150 31 is_stmt 0 view .LVU20
	ldrh	r3, [sp, #6]
	.loc 1 150 14 view .LVU21
	sub	r3, r3, #560
	uxth	r3, r3
.LVL6:
	.loc 1 151 5 is_stmt 1 view .LVU22
	.loc 1 151 23 is_stmt 0 view .LVU23
	ldr	r2, .L11
	ldr	r0, [r2, r3, lsl #2]
.LVL7:
	.loc 1 153 5 is_stmt 1 view .LVU24
	.loc 1 153 35 is_stmt 0 view .LVU25
	movs	r1, #0
	strb	r1, [r0, #2]
	.loc 1 154 5 is_stmt 1 view .LVU26
.LVL8:
.LBB24:
.LBI24:
	.file 2 "../../../mesh/core/include/bitfield.h"
	.loc 2 127 20 view .LVU27
.LBB25:
	.loc 2 129 5 view .LVU28
	movs	r2, #32
	adds	r0, r0, #12
.LVL9:
	.loc 2 129 5 is_stmt 0 view .LVU29
	bl	memset
.LVL10:
	.loc 2 129 5 view .LVU30
.LBE25:
.LBE24:
	.loc 1 155 1 view .LVU31
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LVL11:
.L12:
	.loc 1 155 1 view .LVU32
	.align	2
.L11:
	.word	.LANCHOR0
.LFE320:
	.size	health_server_deleter, .-health_server_deleter
	.section	.text.health_server_getter,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	health_server_getter, %function
health_server_getter:
.LVL12:
.LFB319:
	.loc 1 138 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 138 1 is_stmt 0 view .LVU34
	push	{r4, lr}
.LCFI3:
	sub	sp, sp, #8
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 139 5 is_stmt 1 view .LVU35
.LVL13:
	.loc 1 140 5 view .LVU36
	.loc 1 140 31 is_stmt 0 view .LVU37
	ldrh	r3, [sp, #6]
	.loc 1 140 14 view .LVU38
	sub	r3, r3, #560
	uxth	r3, r3
.LVL14:
	.loc 1 141 5 is_stmt 1 view .LVU39
	.loc 1 141 23 is_stmt 0 view .LVU40
	ldr	r2, .L15
	ldr	r2, [r2, r3, lsl #2]
.LVL15:
	.loc 1 143 5 is_stmt 1 view .LVU41
	.loc 1 143 43 is_stmt 0 view .LVU42
	ldrb	r0, [r2, #2]	@ zero_extendqisi2
	.loc 1 143 33 view .LVU43
	mov	r3, r1
.LVL16:
	.loc 1 143 33 view .LVU44
	strb	r0, [r3], #4
	.loc 1 144 5 is_stmt 1 view .LVU45
	ldr	r4, [r2, #12]	@ unaligned
	ldr	lr, [r2, #16]	@ unaligned
	ldr	ip, [r2, #20]	@ unaligned
	ldr	r0, [r2, #24]	@ unaligned
	str	r4, [r1, #4]	@ unaligned
	str	lr, [r3, #4]	@ unaligned
	str	ip, [r3, #8]	@ unaligned
	str	r0, [r3, #12]	@ unaligned
	ldr	r4, [r2, #28]	@ unaligned
	ldr	lr, [r2, #32]	@ unaligned
	ldr	ip, [r2, #36]	@ unaligned
	ldr	r0, [r2, #40]	@ unaligned
	str	r4, [r3, #16]	@ unaligned
	str	lr, [r3, #20]	@ unaligned
	str	ip, [r3, #24]	@ unaligned
	str	r0, [r3, #28]	@ unaligned
	.loc 1 145 1 is_stmt 0 view .LVU46
	add	sp, sp, #8
.LCFI5:
	@ sp needed
	pop	{r4, pc}
.LVL17:
.L16:
	.loc 1 145 1 view .LVU47
	.align	2
.L15:
	.word	.LANCHOR0
.LFE319:
	.size	health_server_getter, .-health_server_getter
	.section	.text.attention_timer_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	attention_timer_add, %function
attention_timer_add:
.LVL18:
.LFB323:
	.loc 1 202 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 202 1 is_stmt 0 view .LVU49
	push	{r4, lr}
.LCFI6:
	mov	r4, r0
	.loc 1 203 5 is_stmt 1 view .LVU50
	bl	bearer_event_critical_section_begin
.LVL19:
	.loc 1 204 5 view .LVU51
	.loc 1 204 5 view .LVU52
	ldr	r3, [r4, #76]
	cbz	r3, .L22
.L18:
	.loc 1 204 5 discriminator 3 view .LVU53
	.loc 1 205 5 discriminator 3 view .LVU54
	.loc 1 205 5 discriminator 3 view .LVU55
	ldrb	r3, [r4, #80]	@ zero_extendqisi2
	cbz	r3, .L23
.L19:
	.loc 1 205 5 discriminator 3 view .LVU56
	.loc 1 207 5 discriminator 3 view .LVU57
	.loc 1 207 44 is_stmt 0 discriminator 3 view .LVU58
	ldr	r2, .L25
	ldr	r3, [r2]
.LVL20:
	.loc 1 209 5 is_stmt 1 discriminator 3 view .LVU59
	.loc 1 209 22 is_stmt 0 discriminator 3 view .LVU60
	str	r3, [r4, #84]
	.loc 1 210 5 is_stmt 1 discriminator 3 view .LVU61
	.loc 1 210 23 is_stmt 0 discriminator 3 view .LVU62
	str	r4, [r2]
	.loc 1 212 5 is_stmt 1 discriminator 3 view .LVU63
	.loc 1 212 8 is_stmt 0 discriminator 3 view .LVU64
	cbz	r3, .L24
.LVL21:
.L20:
	.loc 1 220 5 is_stmt 1 view .LVU65
	bl	bearer_event_critical_section_end
.LVL22:
	.loc 1 221 1 is_stmt 0 view .LVU66
	pop	{r4, pc}
.LVL23:
.L22:
.LBB26:
	.loc 1 204 5 is_stmt 1 discriminator 1 view .LVU67
	.loc 1 204 5 discriminator 1 view .LVU68
	.syntax unified
@ 204 "C:\project domotica\nrf-mesh\models\foundation\health\src\health_server.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL24:
	.loc 1 204 5 discriminator 1 view .LVU69
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL25:
	.loc 1 204 5 is_stmt 0 discriminator 1 view .LVU70
	b	.L18
.L23:
	.loc 1 204 5 discriminator 1 view .LVU71
.LBE26:
.LBB27:
	.loc 1 205 5 is_stmt 1 discriminator 1 view .LVU72
	.loc 1 205 5 discriminator 1 view .LVU73
	.syntax unified
@ 205 "C:\project domotica\nrf-mesh\models\foundation\health\src\health_server.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL26:
	.loc 1 205 5 discriminator 1 view .LVU74
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL27:
	.loc 1 205 5 is_stmt 0 discriminator 1 view .LVU75
	b	.L19
.LVL28:
.L24:
	.loc 1 205 5 discriminator 1 view .LVU76
.LBE27:
	.loc 1 214 9 is_stmt 1 view .LVU77
	ldr	r4, .L25+4
.LVL29:
	.loc 1 214 9 is_stmt 0 view .LVU78
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	.loc 1 215 9 is_stmt 1 view .LVU79
	.loc 1 215 39 is_stmt 0 view .LVU80
	bl	timer_now
.LVL30:
	.loc 1 215 51 view .LVU81
	add	r0, r0, #999424
	add	r0, r0, #576
	.loc 1 215 37 view .LVU82
	str	r0, [r4, #4]
	.loc 1 216 9 is_stmt 1 view .LVU83
	.loc 1 216 36 is_stmt 0 view .LVU84
	ldr	r3, .L25+8
	str	r3, [r4, #12]
	.loc 1 217 9 is_stmt 1 view .LVU85
	.loc 1 217 30 is_stmt 0 view .LVU86
	ldr	r3, .L25+12
	str	r3, [r4, #8]
	.loc 1 218 9 is_stmt 1 view .LVU87
	mov	r0, r4
	bl	timer_sch_schedule
.LVL31:
	b	.L20
.L26:
	.align	2
.L25:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	1000000
	.word	attention_timer_handler
.LFE323:
	.size	attention_timer_add, .-attention_timer_add
	.section	.text.attention_timer_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	attention_timer_set, %function
attention_timer_set:
.LVL32:
.LFB324:
	.loc 1 224 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 224 1 is_stmt 0 view .LVU89
	push	{r3, r4, r5, lr}
.LCFI7:
	.loc 1 226 5 is_stmt 1 view .LVU90
	.loc 1 226 17 is_stmt 0 view .LVU91
	ldr	r3, [r0, #76]
	.loc 1 226 8 view .LVU92
	cbz	r3, .L27
	mov	r4, r0
	mov	r5, r1
.LBB28:
	.loc 1 228 9 is_stmt 1 view .LVU93
	bl	bearer_event_critical_section_begin
.LVL33:
	.loc 1 229 9 view .LVU94
	.loc 1 229 40 is_stmt 0 view .LVU95
	ldrb	r3, [r4, #80]	@ zero_extendqisi2
.LVL34:
	.loc 1 231 9 is_stmt 1 view .LVU96
	.loc 1 231 35 is_stmt 0 view .LVU97
	strb	r5, [r4, #80]
.LVL35:
	.loc 1 232 9 is_stmt 1 view .LVU98
	.loc 1 232 12 is_stmt 0 view .LVU99
	cbnz	r3, .L29
	.loc 1 232 30 discriminator 1 view .LVU100
	cbz	r5, .L29
	.loc 1 234 13 is_stmt 1 view .LVU101
	.loc 1 234 21 is_stmt 0 view .LVU102
	ldr	r3, [r4, #76]
.LVL36:
	.loc 1 234 13 view .LVU103
	movs	r1, #1
	mov	r0, r4
	blx	r3
.LVL37:
	.loc 1 235 13 is_stmt 1 view .LVU104
	mov	r0, r4
	bl	attention_timer_add
.LVL38:
.L29:
	.loc 1 237 9 view .LVU105
	bl	bearer_event_critical_section_end
.LVL39:
.L27:
	.loc 1 237 9 is_stmt 0 view .LVU106
.LBE28:
	.loc 1 239 1 view .LVU107
	pop	{r3, r4, r5, pc}
.LFE324:
	.size	attention_timer_set, .-attention_timer_set
	.section	.text.attention_timer_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	attention_timer_handler, %function
attention_timer_handler:
.LVL40:
.LFB322:
	.loc 1 164 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 164 1 is_stmt 0 view .LVU109
	push	{r3, r4, r5, lr}
.LCFI8:
	.loc 1 165 5 is_stmt 1 view .LVU110
.LVL41:
	.loc 1 166 5 view .LVU111
	.loc 1 166 23 is_stmt 0 view .LVU112
	ldr	r3, .L44
	ldr	r4, [r3]
.LVL42:
	.loc 1 168 5 is_stmt 1 view .LVU113
	.loc 1 165 23 is_stmt 0 view .LVU114
	movs	r5, #0
	.loc 1 168 11 view .LVU115
	b	.L32
.LVL43:
.L42:
	.loc 1 180 17 is_stmt 1 view .LVU116
	.loc 1 180 46 is_stmt 0 view .LVU117
	ldr	r2, [r4, #84]
	.loc 1 180 35 view .LVU118
	ldr	r3, .L44
	str	r2, [r3]
	b	.L36
.L37:
	.loc 1 184 17 is_stmt 1 discriminator 3 view .LVU119
	.loc 1 185 17 discriminator 3 view .LVU120
	.loc 1 185 47 is_stmt 0 discriminator 3 view .LVU121
	ldr	r3, [r4, #84]
	.loc 1 185 36 discriminator 3 view .LVU122
	str	r3, [r5, #84]
.L36:
	.loc 1 188 13 is_stmt 1 view .LVU123
	.loc 1 188 22 is_stmt 0 view .LVU124
	ldr	r3, [r4, #76]
	.loc 1 188 13 view .LVU125
	movs	r1, #0
	mov	r0, r4
	blx	r3
.LVL44:
.L34:
	.loc 1 191 9 is_stmt 1 view .LVU126
	.loc 1 192 9 view .LVU127
	.loc 1 191 20 is_stmt 0 view .LVU128
	mov	r5, r4
	.loc 1 192 19 view .LVU129
	ldr	r4, [r4, #84]
.LVL45:
.L32:
	.loc 1 168 22 is_stmt 1 view .LVU130
	cbz	r4, .L41
	.loc 1 170 9 view .LVU131
	.loc 1 170 22 is_stmt 0 view .LVU132
	ldrb	r3, [r4, #80]	@ zero_extendqisi2
	.loc 1 170 12 view .LVU133
	cbz	r3, .L33
	.loc 1 172 13 is_stmt 1 view .LVU134
	.loc 1 172 39 is_stmt 0 view .LVU135
	subs	r3, r3, #1
	strb	r3, [r4, #80]
.L33:
	.loc 1 176 9 is_stmt 1 view .LVU136
	.loc 1 176 22 is_stmt 0 view .LVU137
	ldrb	r3, [r4, #80]	@ zero_extendqisi2
	.loc 1 176 12 view .LVU138
	cmp	r3, #0
	bne	.L34
	.loc 1 178 13 is_stmt 1 view .LVU139
	.loc 1 178 27 is_stmt 0 view .LVU140
	ldr	r3, .L44
	ldr	r3, [r3]
	.loc 1 178 16 view .LVU141
	cmp	r3, r4
	beq	.L42
	.loc 1 184 17 is_stmt 1 view .LVU142
	.loc 1 184 17 view .LVU143
	cmp	r5, #0
	bne	.L37
.LBB29:
	.loc 1 184 17 discriminator 1 view .LVU144
	.loc 1 184 17 discriminator 1 view .LVU145
	.syntax unified
@ 184 "C:\project domotica\nrf-mesh\models\foundation\health\src\health_server.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL46:
	.loc 1 184 17 discriminator 1 view .LVU146
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL47:
	.loc 1 184 17 is_stmt 0 discriminator 1 view .LVU147
	b	.L37
.L41:
	.loc 1 184 17 discriminator 1 view .LVU148
.LBE29:
	.loc 1 195 5 is_stmt 1 view .LVU149
	.loc 1 195 27 is_stmt 0 view .LVU150
	ldr	r3, .L44
	ldr	r3, [r3]
	.loc 1 195 8 view .LVU151
	cbz	r3, .L43
.L31:
	.loc 1 199 1 view .LVU152
	pop	{r3, r4, r5, pc}
.LVL48:
.L43:
	.loc 1 197 9 is_stmt 1 view .LVU153
	ldr	r0, .L44+4
	bl	timer_sch_abort
.LVL49:
	.loc 1 199 1 is_stmt 0 view .LVU154
	b	.L31
.L45:
	.align	2
.L44:
	.word	.LANCHOR1
	.word	.LANCHOR2
.LFE322:
	.size	attention_timer_handler, .-attention_timer_handler
	.section	.text.send_attention_status,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	send_attention_status, %function
send_attention_status:
.LVL50:
.LFB326:
	.loc 1 289 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 289 1 is_stmt 0 view .LVU156
	push	{r4, r5, lr}
.LCFI9:
	sub	sp, sp, #28
.LCFI10:
	mov	r4, r0
	mov	r5, r1
	.loc 1 290 5 is_stmt 1 view .LVU157
	.loc 1 290 80 is_stmt 0 view .LVU158
	ldrb	r3, [r0, #80]	@ zero_extendqisi2
	.loc 1 290 41 view .LVU159
	strb	r3, [sp, #20]
	.loc 1 291 5 is_stmt 1 view .LVU160
	.loc 1 291 31 is_stmt 0 view .LVU161
	movw	r3, #32775
	strh	r3, [sp, #4]	@ movhi
	movw	r3, #65535
	strh	r3, [sp, #6]	@ movhi
	add	r3, sp, #20
	str	r3, [sp, #8]
	movs	r3, #1
	strh	r3, [sp, #12]	@ movhi
	movs	r3, #0
	strb	r3, [sp, #14]
	movs	r3, #2
	strb	r3, [sp, #15]
	.loc 1 298 25 view .LVU162
	bl	nrf_mesh_unique_token_get
.LVL51:
	.loc 1 291 31 view .LVU163
	str	r0, [sp, #16]
	.loc 1 301 5 is_stmt 1 view .LVU164
	.loc 1 301 12 is_stmt 0 view .LVU165
	add	r2, sp, #4
	mov	r1, r5
	ldrh	r0, [r4]
	bl	access_model_reply
.LVL52:
	.loc 1 302 1 view .LVU166
	add	sp, sp, #28
.LCFI11:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 302 1 view .LVU167
.LFE326:
	.size	send_attention_status, .-send_attention_status
	.section	.text.handle_attention_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handle_attention_set, %function
handle_attention_set:
.LVL53:
.LFB333:
	.loc 1 463 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 463 1 is_stmt 0 view .LVU169
	push	{r3, r4, r5, lr}
.LCFI12:
	.loc 1 464 5 is_stmt 1 view .LVU170
	.loc 1 464 18 is_stmt 0 view .LVU171
	ldrh	r3, [r1, #8]
	.loc 1 464 8 view .LVU172
	cmp	r3, #1
	beq	.L51
.LVL54:
.L48:
	.loc 1 479 1 view .LVU173
	pop	{r3, r4, r5, pc}
.LVL55:
.L51:
	.loc 1 479 1 view .LVU174
	mov	r4, r1
	mov	r5, r2
	.loc 1 469 5 is_stmt 1 view .LVU175
.LVL56:
	.loc 1 470 5 view .LVU176
	.loc 1 470 40 is_stmt 0 view .LVU177
	ldr	r3, [r1, #4]
.LVL57:
	.loc 1 472 5 is_stmt 1 view .LVU178
	ldrb	r1, [r3]	@ zero_extendqisi2
.LVL58:
	.loc 1 472 5 is_stmt 0 view .LVU179
	mov	r0, r2
.LVL59:
	.loc 1 472 5 view .LVU180
	bl	attention_timer_set
.LVL60:
	.loc 1 475 5 is_stmt 1 view .LVU181
	.loc 1 475 26 is_stmt 0 view .LVU182
	ldrh	r2, [r4]
	.loc 1 475 8 view .LVU183
	movw	r3, #32773
	cmp	r2, r3
	bne	.L48
	.loc 1 477 9 is_stmt 1 view .LVU184
	mov	r1, r4
	mov	r0, r5
	bl	send_attention_status
.LVL61:
	b	.L48
.LFE333:
	.size	handle_attention_set, .-handle_attention_set
	.section	.text.handle_attention_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handle_attention_get, %function
handle_attention_get:
.LVL62:
.LFB334:
	.loc 1 482 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 482 1 is_stmt 0 view .LVU186
	push	{r3, lr}
.LCFI13:
	.loc 1 483 5 is_stmt 1 view .LVU187
	.loc 1 483 18 is_stmt 0 view .LVU188
	ldrh	r3, [r1, #8]
	.loc 1 483 8 view .LVU189
	cbz	r3, .L55
.LVL63:
.L52:
	.loc 1 487 1 view .LVU190
	pop	{r3, pc}
.LVL64:
.L55:
	.loc 1 485 9 is_stmt 1 view .LVU191
	mov	r0, r2
.LVL65:
	.loc 1 485 9 is_stmt 0 view .LVU192
	bl	send_attention_status
.LVL66:
	.loc 1 487 1 view .LVU193
	b	.L52
.LFE334:
	.size	handle_attention_get, .-handle_attention_get
	.section	.text.send_period_status,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	send_period_status, %function
send_period_status:
.LVL67:
.LFB327:
	.loc 1 305 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 305 1 is_stmt 0 view .LVU195
	push	{r4, r5, lr}
.LCFI14:
	sub	sp, sp, #28
.LCFI15:
	mov	r4, r0
	mov	r5, r1
	.loc 1 306 5 is_stmt 1 view .LVU196
	.loc 1 306 87 is_stmt 0 view .LVU197
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	.loc 1 306 38 view .LVU198
	strb	r3, [sp, #20]
	.loc 1 307 5 is_stmt 1 view .LVU199
	.loc 1 307 31 is_stmt 0 view .LVU200
	movw	r3, #32823
	strh	r3, [sp, #4]	@ movhi
	movw	r3, #65535
	strh	r3, [sp, #6]	@ movhi
	add	r3, sp, #20
	str	r3, [sp, #8]
	movs	r3, #1
	strh	r3, [sp, #12]	@ movhi
	movs	r3, #0
	strb	r3, [sp, #14]
	movs	r3, #2
	strb	r3, [sp, #15]
	.loc 1 314 25 view .LVU201
	bl	nrf_mesh_unique_token_get
.LVL68:
	.loc 1 307 31 view .LVU202
	str	r0, [sp, #16]
	.loc 1 317 5 is_stmt 1 view .LVU203
	.loc 1 317 12 is_stmt 0 view .LVU204
	add	r2, sp, #4
	mov	r1, r5
	ldrh	r0, [r4]
	bl	access_model_reply
.LVL69:
	.loc 1 318 1 view .LVU205
	add	sp, sp, #28
.LCFI16:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 318 1 view .LVU206
.LFE327:
	.size	send_period_status, .-send_period_status
	.section	.text.handle_period_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handle_period_set, %function
handle_period_set:
.LVL70:
.LFB332:
	.loc 1 424 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 425 5 view .LVU208
	.loc 1 427 5 view .LVU209
	.loc 1 427 18 is_stmt 0 view .LVU210
	ldrh	r3, [r1, #8]
	.loc 1 427 8 view .LVU211
	cmp	r3, #1
	bne	.L64
	.loc 1 424 1 view .LVU212
	push	{r4, r5, r6, lr}
.LCFI17:
	sub	sp, sp, #48
.LCFI18:
	mov	r4, r1
	mov	r5, r2
	.loc 1 432 5 is_stmt 1 view .LVU213
	.loc 1 432 37 is_stmt 0 view .LVU214
	ldr	r6, [r1, #4]
.LVL71:
	.loc 1 433 5 is_stmt 1 view .LVU215
	.loc 1 435 5 view .LVU216
	.loc 1 435 14 is_stmt 0 view .LVU217
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 435 8 view .LVU218
	cmp	r3, #15
	bls	.L67
.LVL72:
.L60:
	.loc 1 456 51 discriminator 1 view .LVU219
	ldrh	r2, [r4]
	.loc 1 456 31 discriminator 1 view .LVU220
	movw	r3, #32821
	cmp	r2, r3
	beq	.L68
.L58:
	.loc 1 460 1 view .LVU221
	add	sp, sp, #48
.LCFI19:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL73:
.L67:
.LCFI20:
.LBB30:
	.loc 1 437 9 is_stmt 1 view .LVU222
	.loc 1 438 9 view .LVU223
	.loc 1 438 18 is_stmt 0 view .LVU224
	add	r1, sp, #6
.LVL74:
	.loc 1 438 18 view .LVU225
	mov	r0, r2
.LVL75:
	.loc 1 438 18 view .LVU226
	bl	get_server_index
.LVL76:
	.loc 1 440 9 is_stmt 1 view .LVU227
	.loc 1 440 12 is_stmt 0 view .LVU228
	mov	r3, r0
	cbz	r0, .L69
.L61:
	.loc 1 440 12 view .LVU229
.LBE30:
	.loc 1 456 5 is_stmt 1 discriminator 1 view .LVU230
	.loc 1 456 8 is_stmt 0 discriminator 1 view .LVU231
	cmp	r3, #0
	bne	.L58
	.loc 1 456 8 discriminator 1 view .LVU232
	b	.L60
.L69:
.LBB32:
.LBB31:
	.loc 1 442 13 is_stmt 1 view .LVU233
	.loc 1 442 36 is_stmt 0 view .LVU234
	ldr	r3, .L70
	ldr	r3, [r3]
	str	r3, [sp, #8]
	.loc 1 443 13 is_stmt 1 view .LVU235
	.loc 1 443 23 is_stmt 0 view .LVU236
	ldrh	r3, [sp, #6]
	add	r3, r3, #560
	strh	r3, [sp, #10]	@ movhi
	.loc 1 445 13 is_stmt 1 view .LVU237
	.loc 1 446 13 view .LVU238
	.loc 1 446 22 is_stmt 0 view .LVU239
	add	r1, sp, #12
	ldr	r0, [sp, #8]
.LVL77:
	.loc 1 446 22 view .LVU240
	bl	mesh_config_entry_get
.LVL78:
	.loc 1 447 13 is_stmt 1 view .LVU241
	.loc 1 447 16 is_stmt 0 view .LVU242
	mov	r3, r0
	cmp	r0, #0
	bne	.L61
	.loc 1 449 17 is_stmt 1 view .LVU243
	.loc 1 449 49 is_stmt 0 view .LVU244
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 449 42 view .LVU245
	strb	r3, [sp, #12]
	.loc 1 450 17 is_stmt 1 view .LVU246
	.loc 1 450 26 is_stmt 0 view .LVU247
	add	r1, sp, #12
	ldr	r0, [sp, #8]
.LVL79:
	.loc 1 450 26 view .LVU248
	bl	mesh_config_entry_set
.LVL80:
	mov	r3, r0
.LVL81:
	.loc 1 450 26 view .LVU249
	b	.L61
.LVL82:
.L68:
	.loc 1 450 26 view .LVU250
.LBE31:
.LBE32:
	.loc 1 458 9 is_stmt 1 view .LVU251
	mov	r1, r4
	mov	r0, r5
	bl	send_period_status
.LVL83:
	b	.L58
.LVL84:
.L64:
.LCFI21:
	.loc 1 458 9 is_stmt 0 view .LVU252
	bx	lr
.L71:
	.align	2
.L70:
	.word	.LANCHOR3
.LFE332:
	.size	handle_period_set, .-handle_period_set
	.section	.text.handle_period_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handle_period_get, %function
handle_period_get:
.LVL85:
.LFB331:
	.loc 1 416 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 416 1 is_stmt 0 view .LVU254
	push	{r3, lr}
.LCFI22:
	.loc 1 417 5 is_stmt 1 view .LVU255
	.loc 1 417 18 is_stmt 0 view .LVU256
	ldrh	r3, [r1, #8]
	.loc 1 417 8 view .LVU257
	cbz	r3, .L75
.LVL86:
.L72:
	.loc 1 421 1 view .LVU258
	pop	{r3, pc}
.LVL87:
.L75:
	.loc 1 419 9 is_stmt 1 view .LVU259
	mov	r0, r2
.LVL88:
	.loc 1 419 9 is_stmt 0 view .LVU260
	bl	send_period_status
.LVL89:
	.loc 1 421 1 view .LVU261
	b	.L72
.LFE331:
	.size	handle_period_get, .-handle_period_get
	.section	.text.send_fault_status,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	send_fault_status, %function
send_fault_status:
.LVL90:
.LFB325:
	.loc 1 243 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 243 1 is_stmt 0 view .LVU263
	push	{r4, r5, r6, lr}
.LCFI23:
	sub	sp, sp, #280
.LCFI24:
	mov	r4, r0
	mov	r5, r2
	.loc 1 244 5 is_stmt 1 view .LVU264
	.loc 1 245 5 view .LVU265
	.loc 1 245 8 is_stmt 0 view .LVU266
	cmp	r1, #4
	beq	.L93
	.loc 1 251 9 is_stmt 1 view .LVU267
	.loc 1 251 23 is_stmt 0 view .LVU268
	add	lr, r0, #12
.LVL91:
.L78:
	.loc 1 254 5 is_stmt 1 view .LVU269
	.loc 1 255 5 view .LVU270
	.loc 1 257 5 view .LVU271
	.loc 1 257 30 is_stmt 0 view .LVU272
	ldrb	r3, [r4, #9]	@ zero_extendqisi2
	.loc 1 257 20 view .LVU273
	strb	r3, [sp, #20]
	.loc 1 258 5 is_stmt 1 view .LVU274
	.loc 1 258 33 is_stmt 0 view .LVU275
	ldrh	r3, [r4, #10]
	.loc 1 258 23 view .LVU276
	strh	r3, [sp, #21]	@ unaligned
	.loc 1 261 5 is_stmt 1 view .LVU277
.LVL92:
	.loc 1 262 5 view .LVU278
.LBB38:
	.loc 1 262 10 view .LVU279
.LBB39:
.LBI39:
	.loc 2 156 24 view .LVU280
.LBB40:
	.loc 2 159 5 view .LVU281
	.loc 2 165 5 view .LVU282
	.loc 2 170 5 view .LVU283
	.loc 2 171 5 view .LVU284
	.loc 2 171 28 is_stmt 0 view .LVU285
	ldr	r3, [lr]
.LVL93:
	.loc 2 172 5 is_stmt 1 view .LVU286
	.loc 2 170 14 is_stmt 0 view .LVU287
	movs	r2, #0
.LVL94:
.L79:
	.loc 2 172 14 is_stmt 1 view .LVU288
	cbnz	r3, .L94
	.loc 2 174 9 view .LVU289
	adds	r2, r2, #1
.LVL95:
	.loc 2 175 9 view .LVU290
	.loc 2 175 12 is_stmt 0 view .LVU291
	cmp	r2, #7
	bhi	.L89
	.loc 2 181 13 is_stmt 1 view .LVU292
	.loc 2 181 15 is_stmt 0 view .LVU293
	ldr	r3, [lr, r2, lsl #2]
.LVL96:
	.loc 2 181 15 view .LVU294
	b	.L79
.LVL97:
.L93:
	.loc 2 181 15 view .LVU295
.LBE40:
.LBE39:
.LBE38:
	.loc 1 247 9 is_stmt 1 view .LVU296
	.loc 1 247 23 is_stmt 0 view .LVU297
	add	lr, r0, #44
.LVL98:
	.loc 1 247 23 view .LVU298
	b	.L78
.LVL99:
.L94:
.LBB49:
.LBB43:
.LBB41:
	.loc 2 184 5 is_stmt 1 view .LVU299
	.loc 2 184 82 is_stmt 0 view .LVU300
	rbit	r3, r3
.LVL100:
	.loc 2 184 82 view .LVU301
	clz	r3, r3
	and	r3, r3, #31
	.loc 2 184 38 view .LVU302
	add	r3, r3, r2, lsl #5
.L80:
.LVL101:
	.loc 2 184 38 view .LVU303
.LBE41:
.LBE43:
.LBE49:
	.loc 1 261 13 view .LVU304
	movs	r2, #0
.LBB50:
	.loc 1 262 5 view .LVU305
	b	.L82
.LVL102:
.L89:
.LBB44:
.LBB42:
	.loc 2 177 20 view .LVU306
	mov	r3, #256
.LVL103:
	.loc 2 177 20 view .LVU307
	b	.L80
.LVL104:
.L96:
	.loc 2 177 20 view .LVU308
.LBE42:
.LBE44:
.LBB45:
.LBB46:
	.loc 2 184 5 is_stmt 1 view .LVU309
	.loc 2 184 82 is_stmt 0 view .LVU310
	rbit	ip, r2
	clz	ip, ip
	and	ip, ip, #31
	.loc 2 184 38 view .LVU311
	add	r3, ip, r3, lsl #5
.LVL105:
	.loc 2 184 38 view .LVU312
	b	.L83
.LVL106:
.L90:
	.loc 2 167 16 view .LVU313
	mov	r3, #256
.LVL107:
.L83:
	.loc 2 167 16 view .LVU314
.LBE46:
.LBE45:
	.loc 1 265 41 view .LVU315
	mov	r2, r6
.LVL108:
.L82:
	.loc 1 262 95 is_stmt 1 discriminator 1 view .LVU316
	cmp	r3, #256
	beq	.L95
	.loc 1 265 9 view .LVU317
	.loc 1 265 41 is_stmt 0 view .LVU318
	adds	r6, r2, #1
	uxtb	r6, r6
.LVL109:
	.loc 1 265 45 view .LVU319
	add	r0, sp, #20
.LVL110:
	.loc 1 265 45 view .LVU320
	add	r2, r2, r0
	strb	r3, [r2, #3]
	.loc 1 263 15 is_stmt 1 view .LVU321
	.loc 1 263 17 is_stmt 0 view .LVU322
	adds	r0, r3, #1
.LVL111:
.LBB48:
.LBI45:
	.loc 2 156 24 is_stmt 1 view .LVU323
.LBB47:
	.loc 2 159 5 view .LVU324
	.loc 2 165 5 view .LVU325
	.loc 2 165 8 is_stmt 0 view .LVU326
	cmp	r0, #255
	bhi	.L90
	.loc 2 170 5 is_stmt 1 view .LVU327
	.loc 2 170 14 is_stmt 0 view .LVU328
	lsrs	r3, r0, #5
.LVL112:
	.loc 2 171 5 is_stmt 1 view .LVU329
	.loc 2 171 28 is_stmt 0 view .LVU330
	ldr	r2, [lr, r3, lsl #2]
	.loc 2 171 36 view .LVU331
	and	r0, r0, #31
.LVL113:
	.loc 2 171 36 view .LVU332
	mov	ip, #1
	lsl	r0, ip, r0
	.loc 2 171 34 view .LVU333
	rsbs	r0, r0, #0
	.loc 2 171 14 view .LVU334
	ands	r2, r2, r0
.LVL114:
	.loc 2 172 5 is_stmt 1 view .LVU335
.L84:
	.loc 2 172 14 view .LVU336
	cmp	r2, #0
	bne	.L96
	.loc 2 174 9 view .LVU337
	adds	r3, r3, #1
.LVL115:
	.loc 2 175 9 view .LVU338
	.loc 2 175 12 is_stmt 0 view .LVU339
	cmp	r3, #7
	bhi	.L91
	.loc 2 181 13 is_stmt 1 view .LVU340
	.loc 2 181 15 is_stmt 0 view .LVU341
	ldr	r2, [lr, r3, lsl #2]
.LVL116:
	.loc 2 181 15 view .LVU342
	b	.L84
.L91:
	.loc 2 177 20 view .LVU343
	mov	r3, #256
.LVL117:
	.loc 2 177 20 view .LVU344
	b	.L83
.LVL118:
.L95:
	.loc 2 177 20 view .LVU345
.LBE47:
.LBE48:
.LBE50:
	.loc 1 268 5 is_stmt 1 view .LVU346
	.loc 1 268 31 is_stmt 0 view .LVU347
	strh	r1, [sp, #4]	@ movhi
	movw	r3, #65535
.LVL119:
	.loc 1 268 31 view .LVU348
	strh	r3, [sp, #6]	@ movhi
	add	r1, sp, #20
.LVL120:
	.loc 1 268 31 view .LVU349
	str	r1, [sp, #8]
	.loc 1 272 32 view .LVU350
	adds	r3, r1, r2
	adds	r3, r3, #3
	.loc 1 272 67 view .LVU351
	subs	r3, r3, r1
	.loc 1 268 31 view .LVU352
	strh	r3, [sp, #12]	@ movhi
	movs	r3, #0
	strb	r3, [sp, #14]
	movs	r3, #2
	strb	r3, [sp, #15]
	.loc 1 275 25 view .LVU353
	bl	nrf_mesh_unique_token_get
.LVL121:
	.loc 1 268 31 view .LVU354
	str	r0, [sp, #16]
	.loc 1 278 5 is_stmt 1 view .LVU355
	.loc 1 278 8 is_stmt 0 view .LVU356
	cbz	r5, .L87
	.loc 1 280 9 is_stmt 1 view .LVU357
	.loc 1 280 16 is_stmt 0 view .LVU358
	add	r2, sp, #4
	mov	r1, r5
	ldrh	r0, [r4]
	bl	access_model_reply
.LVL122:
.L76:
	.loc 1 286 1 view .LVU359
	add	sp, sp, #280
.LCFI25:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL123:
.L87:
.LCFI26:
	.loc 1 284 9 is_stmt 1 view .LVU360
	.loc 1 284 16 is_stmt 0 view .LVU361
	add	r1, sp, #4
	ldrh	r0, [r4]
	bl	access_model_publish
.LVL124:
	.loc 1 286 1 view .LVU362
	b	.L76
.LFE325:
	.size	send_fault_status, .-send_fault_status
	.section	.text.health_publish_timeout_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	health_publish_timeout_handler, %function
health_publish_timeout_handler:
.LVL125:
.LFB321:
	.loc 1 158 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 158 1 is_stmt 0 view .LVU364
	push	{r3, lr}
.LCFI27:
	mov	r0, r1
.LVL126:
	.loc 1 159 5 is_stmt 1 view .LVU365
	.loc 1 160 5 view .LVU366
	movs	r2, #0
	movs	r1, #4
.LVL127:
	.loc 1 160 5 is_stmt 0 view .LVU367
	bl	send_fault_status
.LVL128:
	.loc 1 161 1 view .LVU368
	pop	{r3, pc}
.LFE321:
	.size	health_publish_timeout_handler, .-health_publish_timeout_handler
	.section	.text.handle_fault_test,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handle_fault_test, %function
handle_fault_test:
.LVL129:
.LFB330:
	.loc 1 380 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 381 5 view .LVU370
	.loc 1 381 18 is_stmt 0 view .LVU371
	ldrh	r3, [r1, #8]
	.loc 1 381 8 view .LVU372
	cmp	r3, #3
	bne	.L107
	.loc 1 380 1 view .LVU373
	push	{r4, r5, r6, lr}
.LCFI28:
	mov	r5, r1
	mov	r4, r2
	.loc 1 386 5 is_stmt 1 view .LVU374
.LVL130:
	.loc 1 387 5 view .LVU375
	.loc 1 387 5 view .LVU376
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.L110
.LVL131:
.L101:
	.loc 1 387 5 discriminator 3 view .LVU377
	.loc 1 389 5 discriminator 3 view .LVU378
	.loc 1 389 37 is_stmt 0 discriminator 3 view .LVU379
	ldr	r6, [r5, #4]
.LVL132:
	.loc 1 390 5 is_stmt 1 discriminator 3 view .LVU380
	.loc 1 390 14 is_stmt 0 discriminator 3 view .LVU381
	ldrh	r3, [r6, #1]	@ unaligned
	.loc 1 390 38 discriminator 3 view .LVU382
	ldrh	r1, [r4, #10]
	.loc 1 390 8 discriminator 3 view .LVU383
	cmp	r3, r1
	bne	.L99
.LBB51:
	.loc 1 397 18 view .LVU384
	movs	r3, #0
	b	.L102
.LVL133:
.L110:
	.loc 1 397 18 view .LVU385
.LBE51:
.LBB52:
	.loc 1 387 5 is_stmt 1 discriminator 1 view .LVU386
	.loc 1 387 5 discriminator 1 view .LVU387
	.syntax unified
@ 387 "C:\project domotica\nrf-mesh\models\foundation\health\src\health_server.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL134:
	.loc 1 387 5 discriminator 1 view .LVU388
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL135:
	.loc 1 387 5 is_stmt 0 discriminator 1 view .LVU389
	b	.L101
.LVL136:
.L103:
	.loc 1 387 5 discriminator 1 view .LVU390
.LBE52:
.LBB53:
	.loc 1 397 54 is_stmt 1 discriminator 2 view .LVU391
	adds	r3, r3, #1
.LVL137:
	.loc 1 397 54 is_stmt 0 discriminator 2 view .LVU392
	uxtb	r3, r3
.LVL138:
.L102:
	.loc 1 397 27 is_stmt 1 discriminator 1 view .LVU393
	.loc 1 397 37 is_stmt 0 discriminator 1 view .LVU394
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	.loc 1 397 27 discriminator 1 view .LVU395
	cmp	r2, r3
	bls	.L99
	.loc 1 399 9 is_stmt 1 view .LVU396
	.loc 1 399 21 is_stmt 0 view .LVU397
	ldr	r2, [r4, #4]
	.loc 1 399 34 view .LVU398
	add	ip, r2, r3, lsl #3
	.loc 1 399 37 view .LVU399
	ldrb	r0, [r2, r3, lsl #3]	@ zero_extendqisi2
	.loc 1 399 54 view .LVU400
	ldrb	r2, [r6]	@ zero_extendqisi2
	.loc 1 399 12 view .LVU401
	cmp	r0, r2
	bne	.L103
	.loc 1 401 13 is_stmt 1 view .LVU402
	.loc 1 401 37 is_stmt 0 view .LVU403
	ldr	r3, [ip, #4]
.LVL139:
	.loc 1 401 13 view .LVU404
	mov	r0, r4
	blx	r3
.LVL140:
	.loc 1 402 13 is_stmt 1 view .LVU405
	.loc 1 402 47 is_stmt 0 view .LVU406
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 402 40 view .LVU407
	strb	r3, [r4, #9]
	.loc 1 403 13 is_stmt 1 view .LVU408
.LVL141:
	.loc 1 404 13 view .LVU409
	.loc 1 404 13 is_stmt 0 view .LVU410
.LBE53:
	.loc 1 409 5 is_stmt 1 view .LVU411
	.loc 1 409 40 is_stmt 0 view .LVU412
	ldrh	r2, [r5]
	.loc 1 409 20 view .LVU413
	movw	r3, #32818
	cmp	r2, r3
	beq	.L111
.LVL142:
.L99:
	.loc 1 413 1 view .LVU414
	pop	{r4, r5, r6, pc}
.LVL143:
.L111:
	.loc 1 411 9 is_stmt 1 view .LVU415
	mov	r2, r5
	movs	r1, #5
	mov	r0, r4
	bl	send_fault_status
.LVL144:
	.loc 1 411 9 is_stmt 0 view .LVU416
	b	.L99
.LVL145:
.L107:
.LCFI29:
	.loc 1 411 9 view .LVU417
	bx	lr
.LFE330:
	.size	handle_fault_test, .-handle_fault_test
	.section	.text.handle_fault_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handle_fault_clear, %function
handle_fault_clear:
.LVL146:
.LFB329:
	.loc 1 342 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 343 5 view .LVU419
	.loc 1 343 18 is_stmt 0 view .LVU420
	ldrh	r3, [r1, #8]
	.loc 1 343 8 view .LVU421
	cmp	r3, #2
	bne	.L120
	.loc 1 342 1 view .LVU422
	push	{r4, r5, lr}
.LCFI30:
	sub	sp, sp, #52
.LCFI31:
	mov	r4, r1
	mov	r5, r2
	.loc 1 348 5 is_stmt 1 view .LVU423
.LVL147:
	.loc 1 349 5 view .LVU424
	.loc 1 349 5 view .LVU425
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.L123
.LVL148:
.L114:
	.loc 1 349 5 discriminator 3 view .LVU426
	.loc 1 351 5 discriminator 3 view .LVU427
	.loc 1 351 38 is_stmt 0 discriminator 3 view .LVU428
	ldr	r3, [r4, #4]
.LVL149:
	.loc 1 352 5 is_stmt 1 discriminator 3 view .LVU429
	.loc 1 352 14 is_stmt 0 discriminator 3 view .LVU430
	ldrh	r2, [r3]	@ unaligned
	.loc 1 352 38 discriminator 3 view .LVU431
	ldrh	r3, [r5, #10]
.LVL150:
	.loc 1 352 8 discriminator 3 view .LVU432
	cmp	r2, r3
	beq	.L124
.LVL151:
.L112:
	.loc 1 377 1 view .LVU433
	add	sp, sp, #52
.LCFI32:
	@ sp needed
	pop	{r4, r5, pc}
.LVL152:
.L123:
.LCFI33:
.LBB54:
	.loc 1 349 5 is_stmt 1 discriminator 1 view .LVU434
	.loc 1 349 5 discriminator 1 view .LVU435
	.syntax unified
@ 349 "C:\project domotica\nrf-mesh\models\foundation\health\src\health_server.c" 1
	mov r0, pc
	
@ 0 "" 2
.LVL153:
	.loc 1 349 5 discriminator 1 view .LVU436
	.thumb
	.syntax unified
	bl	mesh_assertion_handler
.LVL154:
	.loc 1 349 5 is_stmt 0 discriminator 1 view .LVU437
	b	.L114
.LVL155:
.L124:
	.loc 1 349 5 discriminator 1 view .LVU438
.LBE54:
	.loc 1 357 5 is_stmt 1 view .LVU439
	.loc 1 358 5 view .LVU440
	.loc 1 358 23 is_stmt 0 view .LVU441
	add	r1, sp, #46
	mov	r0, r5
	bl	get_server_index
.LVL156:
	.loc 1 359 5 is_stmt 1 view .LVU442
	.loc 1 359 8 is_stmt 0 view .LVU443
	mov	r3, r0
	cbz	r0, .L125
.L115:
	.loc 1 373 5 is_stmt 1 view .LVU444
	.loc 1 373 8 is_stmt 0 view .LVU445
	cmp	r3, #0
	bne	.L112
	.loc 1 373 54 discriminator 1 view .LVU446
	ldrh	r2, [r4]
	.loc 1 373 33 discriminator 1 view .LVU447
	movw	r3, #32815
	cmp	r2, r3
	bne	.L112
	.loc 1 375 9 is_stmt 1 view .LVU448
	mov	r2, r4
	movs	r1, #5
	mov	r0, r5
.LVL157:
	.loc 1 375 9 is_stmt 0 view .LVU449
	bl	send_fault_status
.LVL158:
	b	.L112
.LVL159:
.L125:
.LBB55:
	.loc 1 361 9 is_stmt 1 view .LVU450
	.loc 1 361 32 i