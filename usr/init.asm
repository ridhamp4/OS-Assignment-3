
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb0001ee 	bl	7d4 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb0001f0 	bl	7f8 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb0001e4 	bl	7d4 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb000221 	bl	8d0 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb00021f 	bl	8d0 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002ed 	bl	c14 <printf>
      5c:	eb00018b 	bl	690 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb0002e5 	bl	c14 <printf>
      7c:	eb00018c 	bl	6b4 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb0001c5 	bl	7b0 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb0002db 	bl	c14 <printf>
      a4:	eb000182 	bl	6b4 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0002d7 	bl	c14 <printf>
      b4:	eb000187 	bl	6d8 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	000012d4 	.word	0x000012d4
      e0:	000012dc 	.word	0x000012dc
      e4:	000012f0 	.word	0x000012f0
      e8:	00001330 	.word	0x00001330
      ec:	000012d0 	.word	0x000012d0
      f0:	00001304 	.word	0x00001304
      f4:	0000131c 	.word	0x0000131c

000000f8 <strcpy>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     11c:	e2823001 	add	r3, r2, #1
     120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2831001 	add	r1, r3, #1
     12c:	e50b1010 	str	r1, [fp, #-16]
     130:	e5d22000 	ldrb	r2, [r2]
     134:	e5c32000 	strb	r2, [r3]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff4 	bne	118 <strcpy+0x20>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <strncmp>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd014 	sub	sp, sp, #20
     164:	e50b0008 	str	r0, [fp, #-8]
     168:	e50b100c 	str	r1, [fp, #-12]
     16c:	e50b2010 	str	r2, [fp, #-16]
     170:	ea000008 	b	198 <strncmp+0x40>
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e2833001 	add	r3, r3, #1
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	e51b300c 	ldr	r3, [fp, #-12]
     184:	e2833001 	add	r3, r3, #1
     188:	e50b300c 	str	r3, [fp, #-12]
     18c:	e51b3010 	ldr	r3, [fp, #-16]
     190:	e2433001 	sub	r3, r3, #1
     194:	e50b3010 	str	r3, [fp, #-16]
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e3530000 	cmp	r3, #0
     1a0:	da00000d 	ble	1dc <strncmp+0x84>
     1a4:	e51b3008 	ldr	r3, [fp, #-8]
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e3530000 	cmp	r3, #0
     1b0:	0a000009 	beq	1dc <strncmp+0x84>
     1b4:	e51b300c 	ldr	r3, [fp, #-12]
     1b8:	e5d33000 	ldrb	r3, [r3]
     1bc:	e3530000 	cmp	r3, #0
     1c0:	0a000005 	beq	1dc <strncmp+0x84>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e5d32000 	ldrb	r2, [r3]
     1cc:	e51b300c 	ldr	r3, [fp, #-12]
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e1520003 	cmp	r2, r3
     1d8:	0affffe5 	beq	174 <strncmp+0x1c>
     1dc:	e51b3010 	ldr	r3, [fp, #-16]
     1e0:	e3530000 	cmp	r3, #0
     1e4:	1a000001 	bne	1f0 <strncmp+0x98>
     1e8:	e3a03000 	mov	r3, #0
     1ec:	ea000005 	b	208 <strncmp+0xb0>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e0423003 	sub	r3, r2, r3
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strcmp>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd00c 	sub	sp, sp, #12
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e50b100c 	str	r1, [fp, #-12]
     22c:	ea000005 	b	248 <strcmp+0x30>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e2833001 	add	r3, r3, #1
     244:	e50b300c 	str	r3, [fp, #-12]
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	0a000005 	beq	270 <strcmp+0x58>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e5d32000 	ldrb	r2, [r3]
     260:	e51b300c 	ldr	r3, [fp, #-12]
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e1520003 	cmp	r2, r3
     26c:	0affffef 	beq	230 <strcmp+0x18>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e5d33000 	ldrb	r3, [r3]
     278:	e1a02003 	mov	r2, r3
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e5d33000 	ldrb	r3, [r3]
     284:	e0423003 	sub	r3, r2, r3
     288:	e1a00003 	mov	r0, r3
     28c:	e28bd000 	add	sp, fp, #0
     290:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     294:	e12fff1e 	bx	lr

00000298 <strlen>:
     298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     29c:	e28db000 	add	fp, sp, #0
     2a0:	e24dd014 	sub	sp, sp, #20
     2a4:	e50b0010 	str	r0, [fp, #-16]
     2a8:	e3a03000 	mov	r3, #0
     2ac:	e50b3008 	str	r3, [fp, #-8]
     2b0:	ea000002 	b	2c0 <strlen+0x28>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e51b2010 	ldr	r2, [fp, #-16]
     2c8:	e0823003 	add	r3, r2, r3
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff6 	bne	2b4 <strlen+0x1c>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <memset>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     300:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     310:	e54b300d 	strb	r3, [fp, #-13]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e1a03002 	mov	r3, r2
     31c:	e1a03403 	lsl	r3, r3, #8
     320:	e0833002 	add	r3, r3, r2
     324:	e1a03803 	lsl	r3, r3, #16
     328:	e1a02003 	mov	r2, r3
     32c:	e55b300d 	ldrb	r3, [fp, #-13]
     330:	e1a03403 	lsl	r3, r3, #8
     334:	e1822003 	orr	r2, r2, r3
     338:	e55b300d 	ldrb	r3, [fp, #-13]
     33c:	e1823003 	orr	r3, r2, r3
     340:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     344:	ea000008 	b	36c <memset+0x80>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e5c32000 	strb	r2, [r3]
     354:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     358:	e2433001 	sub	r3, r3, #1
     35c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e2833001 	add	r3, r3, #1
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e3530000 	cmp	r3, #0
     374:	0a000003 	beq	388 <memset+0x9c>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2033003 	and	r3, r3, #3
     380:	e3530000 	cmp	r3, #0
     384:	1affffef 	bne	348 <memset+0x5c>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e50b300c 	str	r3, [fp, #-12]
     390:	ea000008 	b	3b8 <memset+0xcc>
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     39c:	e5832000 	str	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433004 	sub	r3, r3, #4
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833004 	add	r3, r3, #4
     3b4:	e50b300c 	str	r3, [fp, #-12]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530003 	cmp	r3, #3
     3c0:	8afffff3 	bhi	394 <memset+0xa8>
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	ea000008 	b	3f4 <memset+0x108>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e2433001 	sub	r3, r3, #1
     3e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2833001 	add	r3, r3, #1
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e3530000 	cmp	r3, #0
     3fc:	1afffff3 	bne	3d0 <memset+0xe4>
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e28bd000 	add	sp, fp, #0
     40c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     410:	e12fff1e 	bx	lr

00000414 <strchr>:
     414:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     418:	e28db000 	add	fp, sp, #0
     41c:	e24dd00c 	sub	sp, sp, #12
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e1a03001 	mov	r3, r1
     428:	e54b3009 	strb	r3, [fp, #-9]
     42c:	ea000009 	b	458 <strchr+0x44>
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e5d33000 	ldrb	r3, [r3]
     438:	e55b2009 	ldrb	r2, [fp, #-9]
     43c:	e1520003 	cmp	r2, r3
     440:	1a000001 	bne	44c <strchr+0x38>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	ea000007 	b	46c <strchr+0x58>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2833001 	add	r3, r3, #1
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e3530000 	cmp	r3, #0
     464:	1afffff1 	bne	430 <strchr+0x1c>
     468:	e3a03000 	mov	r3, #0
     46c:	e1a00003 	mov	r0, r3
     470:	e28bd000 	add	sp, fp, #0
     474:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     478:	e12fff1e 	bx	lr

0000047c <gets>:
     47c:	e92d4800 	push	{fp, lr}
     480:	e28db004 	add	fp, sp, #4
     484:	e24dd018 	sub	sp, sp, #24
     488:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     48c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     490:	e3a03000 	mov	r3, #0
     494:	e50b3008 	str	r3, [fp, #-8]
     498:	ea000016 	b	4f8 <gets+0x7c>
     49c:	e24b300d 	sub	r3, fp, #13
     4a0:	e3a02001 	mov	r2, #1
     4a4:	e1a01003 	mov	r1, r3
     4a8:	e3a00000 	mov	r0, #0
     4ac:	eb00009b 	bl	720 <read>
     4b0:	e50b000c 	str	r0, [fp, #-12]
     4b4:	e51b300c 	ldr	r3, [fp, #-12]
     4b8:	e3530000 	cmp	r3, #0
     4bc:	da000013 	ble	510 <gets+0x94>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2832001 	add	r2, r3, #1
     4c8:	e50b2008 	str	r2, [fp, #-8]
     4cc:	e1a02003 	mov	r2, r3
     4d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d4:	e0833002 	add	r3, r3, r2
     4d8:	e55b200d 	ldrb	r2, [fp, #-13]
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e55b300d 	ldrb	r3, [fp, #-13]
     4e4:	e353000a 	cmp	r3, #10
     4e8:	0a000009 	beq	514 <gets+0x98>
     4ec:	e55b300d 	ldrb	r3, [fp, #-13]
     4f0:	e353000d 	cmp	r3, #13
     4f4:	0a000006 	beq	514 <gets+0x98>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e2833001 	add	r3, r3, #1
     500:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     504:	e1520003 	cmp	r2, r3
     508:	caffffe3 	bgt	49c <gets+0x20>
     50c:	ea000000 	b	514 <gets+0x98>
     510:	e1a00000 	nop			@ (mov r0, r0)
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     51c:	e0823003 	add	r3, r2, r3
     520:	e3a02000 	mov	r2, #0
     524:	e5c32000 	strb	r2, [r3]
     528:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     52c:	e1a00003 	mov	r0, r3
     530:	e24bd004 	sub	sp, fp, #4
     534:	e8bd8800 	pop	{fp, pc}

00000538 <stat>:
     538:	e92d4800 	push	{fp, lr}
     53c:	e28db004 	add	fp, sp, #4
     540:	e24dd010 	sub	sp, sp, #16
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e3a01000 	mov	r1, #0
     550:	e51b0010 	ldr	r0, [fp, #-16]
     554:	eb00009e 	bl	7d4 <open>
     558:	e50b0008 	str	r0, [fp, #-8]
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e3530000 	cmp	r3, #0
     564:	aa000001 	bge	570 <stat+0x38>
     568:	e3e03000 	mvn	r3, #0
     56c:	ea000006 	b	58c <stat+0x54>
     570:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     574:	e51b0008 	ldr	r0, [fp, #-8]
     578:	eb0000b0 	bl	840 <fstat>
     57c:	e50b000c 	str	r0, [fp, #-12]
     580:	e51b0008 	ldr	r0, [fp, #-8]
     584:	eb000077 	bl	768 <close>
     588:	e51b300c 	ldr	r3, [fp, #-12]
     58c:	e1a00003 	mov	r0, r3
     590:	e24bd004 	sub	sp, fp, #4
     594:	e8bd8800 	pop	{fp, pc}

00000598 <atoi>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd014 	sub	sp, sp, #20
     5a4:	e50b0010 	str	r0, [fp, #-16]
     5a8:	e3a03000 	mov	r3, #0
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	ea00000c 	b	5e8 <atoi+0x50>
     5b4:	e51b2008 	ldr	r2, [fp, #-8]
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a03103 	lsl	r3, r3, #2
     5c0:	e0833002 	add	r3, r3, r2
     5c4:	e1a03083 	lsl	r3, r3, #1
     5c8:	e1a01003 	mov	r1, r3
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e2832001 	add	r2, r3, #1
     5d4:	e50b2010 	str	r2, [fp, #-16]
     5d8:	e5d33000 	ldrb	r3, [r3]
     5dc:	e0813003 	add	r3, r1, r3
     5e0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	e51b3010 	ldr	r3, [fp, #-16]
     5ec:	e5d33000 	ldrb	r3, [r3]
     5f0:	e353002f 	cmp	r3, #47	@ 0x2f
     5f4:	9a000003 	bls	608 <atoi+0x70>
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e5d33000 	ldrb	r3, [r3]
     600:	e3530039 	cmp	r3, #57	@ 0x39
     604:	9affffea 	bls	5b4 <atoi+0x1c>
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e1a00003 	mov	r0, r3
     610:	e28bd000 	add	sp, fp, #0
     614:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <memmove>:
     61c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     620:	e28db000 	add	fp, sp, #0
     624:	e24dd01c 	sub	sp, sp, #28
     628:	e50b0010 	str	r0, [fp, #-16]
     62c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     630:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     634:	e51b3010 	ldr	r3, [fp, #-16]
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     640:	e50b300c 	str	r3, [fp, #-12]
     644:	ea000007 	b	668 <memmove+0x4c>
     648:	e51b200c 	ldr	r2, [fp, #-12]
     64c:	e2823001 	add	r3, r2, #1
     650:	e50b300c 	str	r3, [fp, #-12]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e2831001 	add	r1, r3, #1
     65c:	e50b1008 	str	r1, [fp, #-8]
     660:	e5d22000 	ldrb	r2, [r2]
     664:	e5c32000 	strb	r2, [r3]
     668:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     66c:	e2432001 	sub	r2, r3, #1
     670:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     674:	e3530000 	cmp	r3, #0
     678:	cafffff2 	bgt	648 <memmove+0x2c>
     67c:	e51b3010 	ldr	r3, [fp, #-16]
     680:	e1a00003 	mov	r0, r3
     684:	e28bd000 	add	sp, fp, #0
     688:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <fork>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00001 	mov	r0, #1
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <exit>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00002 	mov	r0, #2
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <wait>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00003 	mov	r0, #3
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <pipe>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00004 	mov	r0, #4
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <read>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00005 	mov	r0, #5
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <write>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00010 	mov	r0, #16
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <close>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00015 	mov	r0, #21
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <kill>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00006 	mov	r0, #6
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <exec>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a00007 	mov	r0, #7
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <open>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a0000f 	mov	r0, #15
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <mknod>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00011 	mov	r0, #17
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <unlink>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00012 	mov	r0, #18
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <fstat>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00008 	mov	r0, #8
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <link>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00013 	mov	r0, #19
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <mkdir>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00014 	mov	r0, #20
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <chdir>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a00009 	mov	r0, #9
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <dup>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a0000a 	mov	r0, #10
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <getpid>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a0000b 	mov	r0, #11
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <sbrk>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a0000c 	mov	r0, #12
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <sleep>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a0000d 	mov	r0, #13
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <uptime>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a0000e 	mov	r0, #14
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <ps>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00016 	mov	r0, #22
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <settickets>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00017 	mov	r0, #23
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <srand>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00018 	mov	r0, #24
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <getpinfo>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00019 	mov	r0, #25
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <printpt>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a0001a 	mov	r0, #26
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <pgpte>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a0001b 	mov	r0, #27
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <ugetpid>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a0001c 	mov	r0, #28
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <kpt>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a0001d 	mov	r0, #29
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <putc>:
     aa4:	e92d4800 	push	{fp, lr}
     aa8:	e28db004 	add	fp, sp, #4
     aac:	e24dd008 	sub	sp, sp, #8
     ab0:	e50b0008 	str	r0, [fp, #-8]
     ab4:	e1a03001 	mov	r3, r1
     ab8:	e54b3009 	strb	r3, [fp, #-9]
     abc:	e24b3009 	sub	r3, fp, #9
     ac0:	e3a02001 	mov	r2, #1
     ac4:	e1a01003 	mov	r1, r3
     ac8:	e51b0008 	ldr	r0, [fp, #-8]
     acc:	ebffff1c 	bl	744 <write>
     ad0:	e1a00000 	nop			@ (mov r0, r0)
     ad4:	e24bd004 	sub	sp, fp, #4
     ad8:	e8bd8800 	pop	{fp, pc}

00000adc <printint>:
     adc:	e92d4800 	push	{fp, lr}
     ae0:	e28db004 	add	fp, sp, #4
     ae4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ae8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     aec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     af0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     af4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     af8:	e3a03000 	mov	r3, #0
     afc:	e50b300c 	str	r3, [fp, #-12]
     b00:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b04:	e3530000 	cmp	r3, #0
     b08:	0a000008 	beq	b30 <printint+0x54>
     b0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b10:	e3530000 	cmp	r3, #0
     b14:	aa000005 	bge	b30 <printint+0x54>
     b18:	e3a03001 	mov	r3, #1
     b1c:	e50b300c 	str	r3, [fp, #-12]
     b20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b24:	e2633000 	rsb	r3, r3, #0
     b28:	e50b3010 	str	r3, [fp, #-16]
     b2c:	ea000001 	b	b38 <printint+0x5c>
     b30:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b34:	e50b3010 	str	r3, [fp, #-16]
     b38:	e3a03000 	mov	r3, #0
     b3c:	e50b3008 	str	r3, [fp, #-8]
     b40:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b44:	e51b3010 	ldr	r3, [fp, #-16]
     b48:	e1a01002 	mov	r1, r2
     b4c:	e1a00003 	mov	r0, r3
     b50:	eb0001d5 	bl	12ac <__aeabi_uidivmod>
     b54:	e1a03001 	mov	r3, r1
     b58:	e1a01003 	mov	r1, r3
     b5c:	e51b3008 	ldr	r3, [fp, #-8]
     b60:	e2832001 	add	r2, r3, #1
     b64:	e50b2008 	str	r2, [fp, #-8]
     b68:	e59f20a0 	ldr	r2, [pc, #160]	@ c10 <printint+0x134>
     b6c:	e7d22001 	ldrb	r2, [r2, r1]
     b70:	e2433004 	sub	r3, r3, #4
     b74:	e083300b 	add	r3, r3, fp
     b78:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b7c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b80:	e1a01003 	mov	r1, r3
     b84:	e51b0010 	ldr	r0, [fp, #-16]
     b88:	eb00018a 	bl	11b8 <__udivsi3>
     b8c:	e1a03000 	mov	r3, r0
     b90:	e50b3010 	str	r3, [fp, #-16]
     b94:	e51b3010 	ldr	r3, [fp, #-16]
     b98:	e3530000 	cmp	r3, #0
     b9c:	1affffe7 	bne	b40 <printint+0x64>
     ba0:	e51b300c 	ldr	r3, [fp, #-12]
     ba4:	e3530000 	cmp	r3, #0
     ba8:	0a00000e 	beq	be8 <printint+0x10c>
     bac:	e51b3008 	ldr	r3, [fp, #-8]
     bb0:	e2832001 	add	r2, r3, #1
     bb4:	e50b2008 	str	r2, [fp, #-8]
     bb8:	e2433004 	sub	r3, r3, #4
     bbc:	e083300b 	add	r3, r3, fp
     bc0:	e3a0202d 	mov	r2, #45	@ 0x2d
     bc4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bc8:	ea000006 	b	be8 <printint+0x10c>
     bcc:	e24b2020 	sub	r2, fp, #32
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e0823003 	add	r3, r2, r3
     bd8:	e5d33000 	ldrb	r3, [r3]
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     be4:	ebffffae 	bl	aa4 <putc>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e2433001 	sub	r3, r3, #1
     bf0:	e50b3008 	str	r3, [fp, #-8]
     bf4:	e51b3008 	ldr	r3, [fp, #-8]
     bf8:	e3530000 	cmp	r3, #0
     bfc:	aafffff2 	bge	bcc <printint+0xf0>
     c00:	e1a00000 	nop			@ (mov r0, r0)
     c04:	e1a00000 	nop			@ (mov r0, r0)
     c08:	e24bd004 	sub	sp, fp, #4
     c0c:	e8bd8800 	pop	{fp, pc}
     c10:	00001338 	.word	0x00001338

00000c14 <printf>:
     c14:	e92d000e 	push	{r1, r2, r3}
     c18:	e92d4800 	push	{fp, lr}
     c1c:	e28db004 	add	fp, sp, #4
     c20:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c24:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c28:	e3a03000 	mov	r3, #0
     c2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c30:	e28b3008 	add	r3, fp, #8
     c34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e3a03000 	mov	r3, #0
     c3c:	e50b3010 	str	r3, [fp, #-16]
     c40:	ea000074 	b	e18 <printf+0x204>
     c44:	e59b2004 	ldr	r2, [fp, #4]
     c48:	e51b3010 	ldr	r3, [fp, #-16]
     c4c:	e0823003 	add	r3, r2, r3
     c50:	e5d33000 	ldrb	r3, [r3]
     c54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c5c:	e3530000 	cmp	r3, #0
     c60:	1a00000b 	bne	c94 <printf+0x80>
     c64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c68:	e3530025 	cmp	r3, #37	@ 0x25
     c6c:	1a000002 	bne	c7c <printf+0x68>
     c70:	e3a03025 	mov	r3, #37	@ 0x25
     c74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c78:	ea000063 	b	e0c <printf+0x1f8>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c80:	e6ef3073 	uxtb	r3, r3
     c84:	e1a01003 	mov	r1, r3
     c88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c8c:	ebffff84 	bl	aa4 <putc>
     c90:	ea00005d 	b	e0c <printf+0x1f8>
     c94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c98:	e3530025 	cmp	r3, #37	@ 0x25
     c9c:	1a00005a 	bne	e0c <printf+0x1f8>
     ca0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca4:	e3530064 	cmp	r3, #100	@ 0x64
     ca8:	1a00000a 	bne	cd8 <printf+0xc4>
     cac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cb0:	e5933000 	ldr	r3, [r3]
     cb4:	e1a01003 	mov	r1, r3
     cb8:	e3a03001 	mov	r3, #1
     cbc:	e3a0200a 	mov	r2, #10
     cc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc4:	ebffff84 	bl	adc <printint>
     cc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ccc:	e2833004 	add	r3, r3, #4
     cd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cd4:	ea00004a 	b	e04 <printf+0x1f0>
     cd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cdc:	e3530078 	cmp	r3, #120	@ 0x78
     ce0:	0a000002 	beq	cf0 <printf+0xdc>
     ce4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce8:	e3530070 	cmp	r3, #112	@ 0x70
     cec:	1a00000a 	bne	d1c <printf+0x108>
     cf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e1a01003 	mov	r1, r3
     cfc:	e3a03000 	mov	r3, #0
     d00:	e3a02010 	mov	r2, #16
     d04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d08:	ebffff73 	bl	adc <printint>
     d0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d10:	e2833004 	add	r3, r3, #4
     d14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d18:	ea000039 	b	e04 <printf+0x1f0>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e3530073 	cmp	r3, #115	@ 0x73
     d24:	1a000018 	bne	d8c <printf+0x178>
     d28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e50b300c 	str	r3, [fp, #-12]
     d34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d38:	e2833004 	add	r3, r3, #4
     d3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e3530000 	cmp	r3, #0
     d48:	1a00000a 	bne	d78 <printf+0x164>
     d4c:	e59f30f4 	ldr	r3, [pc, #244]	@ e48 <printf+0x234>
     d50:	e50b300c 	str	r3, [fp, #-12]
     d54:	ea000007 	b	d78 <printf+0x164>
     d58:	e51b300c 	ldr	r3, [fp, #-12]
     d5c:	e5d33000 	ldrb	r3, [r3]
     d60:	e1a01003 	mov	r1, r3
     d64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d68:	ebffff4d 	bl	aa4 <putc>
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e2833001 	add	r3, r3, #1
     d74:	e50b300c 	str	r3, [fp, #-12]
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5d33000 	ldrb	r3, [r3]
     d80:	e3530000 	cmp	r3, #0
     d84:	1afffff3 	bne	d58 <printf+0x144>
     d88:	ea00001d 	b	e04 <printf+0x1f0>
     d8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d90:	e3530063 	cmp	r3, #99	@ 0x63
     d94:	1a000009 	bne	dc0 <printf+0x1ac>
     d98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e6ef3073 	uxtb	r3, r3
     da4:	e1a01003 	mov	r1, r3
     da8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dac:	ebffff3c 	bl	aa4 <putc>
     db0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db4:	e2833004 	add	r3, r3, #4
     db8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dbc:	ea000010 	b	e04 <printf+0x1f0>
     dc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc4:	e3530025 	cmp	r3, #37	@ 0x25
     dc8:	1a000005 	bne	de4 <printf+0x1d0>
     dcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dd0:	e6ef3073 	uxtb	r3, r3
     dd4:	e1a01003 	mov	r1, r3
     dd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ddc:	ebffff30 	bl	aa4 <putc>
     de0:	ea000007 	b	e04 <printf+0x1f0>
     de4:	e3a01025 	mov	r1, #37	@ 0x25
     de8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dec:	ebffff2c 	bl	aa4 <putc>
     df0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df4:	e6ef3073 	uxtb	r3, r3
     df8:	e1a01003 	mov	r1, r3
     dfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e00:	ebffff27 	bl	aa4 <putc>
     e04:	e3a03000 	mov	r3, #0
     e08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e0c:	e51b3010 	ldr	r3, [fp, #-16]
     e10:	e2833001 	add	r3, r3, #1
     e14:	e50b3010 	str	r3, [fp, #-16]
     e18:	e59b2004 	ldr	r2, [fp, #4]
     e1c:	e51b3010 	ldr	r3, [fp, #-16]
     e20:	e0823003 	add	r3, r2, r3
     e24:	e5d33000 	ldrb	r3, [r3]
     e28:	e3530000 	cmp	r3, #0
     e2c:	1affff84 	bne	c44 <printf+0x30>
     e30:	e1a00000 	nop			@ (mov r0, r0)
     e34:	e1a00000 	nop			@ (mov r0, r0)
     e38:	e24bd004 	sub	sp, fp, #4
     e3c:	e8bd4800 	pop	{fp, lr}
     e40:	e28dd00c 	add	sp, sp, #12
     e44:	e12fff1e 	bx	lr
     e48:	00001328 	.word	0x00001328

00000e4c <free>:
     e4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e50:	e28db000 	add	fp, sp, #0
     e54:	e24dd014 	sub	sp, sp, #20
     e58:	e50b0010 	str	r0, [fp, #-16]
     e5c:	e51b3010 	ldr	r3, [fp, #-16]
     e60:	e2433008 	sub	r3, r3, #8
     e64:	e50b300c 	str	r3, [fp, #-12]
     e68:	e59f3154 	ldr	r3, [pc, #340]	@ fc4 <free+0x178>
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e50b3008 	str	r3, [fp, #-8]
     e74:	ea000010 	b	ebc <free+0x70>
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5933000 	ldr	r3, [r3]
     e80:	e51b2008 	ldr	r2, [fp, #-8]
     e84:	e1520003 	cmp	r2, r3
     e88:	3a000008 	bcc	eb0 <free+0x64>
     e8c:	e51b200c 	ldr	r2, [fp, #-12]
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e1520003 	cmp	r2, r3
     e98:	8a000010 	bhi	ee0 <free+0x94>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e51b200c 	ldr	r2, [fp, #-12]
     ea8:	e1520003 	cmp	r2, r3
     eac:	3a00000b 	bcc	ee0 <free+0x94>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e50b3008 	str	r3, [fp, #-8]
     ebc:	e51b200c 	ldr	r2, [fp, #-12]
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e1520003 	cmp	r2, r3
     ec8:	9affffea 	bls	e78 <free+0x2c>
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5933000 	ldr	r3, [r3]
     ed4:	e51b200c 	ldr	r2, [fp, #-12]
     ed8:	e1520003 	cmp	r2, r3
     edc:	2affffe5 	bcs	e78 <free+0x2c>
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5933004 	ldr	r3, [r3, #4]
     ee8:	e1a03183 	lsl	r3, r3, #3
     eec:	e51b200c 	ldr	r2, [fp, #-12]
     ef0:	e0822003 	add	r2, r2, r3
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5933000 	ldr	r3, [r3]
     efc:	e1520003 	cmp	r2, r3
     f00:	1a00000d 	bne	f3c <free+0xf0>
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e5932004 	ldr	r2, [r3, #4]
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e5933004 	ldr	r3, [r3, #4]
     f18:	e0822003 	add	r2, r2, r3
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5832004 	str	r2, [r3, #4]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e5932000 	ldr	r2, [r3]
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e5832000 	str	r2, [r3]
     f38:	ea000003 	b	f4c <free+0x100>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5932000 	ldr	r2, [r3]
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e5832000 	str	r2, [r3]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933004 	ldr	r3, [r3, #4]
     f54:	e1a03183 	lsl	r3, r3, #3
     f58:	e51b2008 	ldr	r2, [fp, #-8]
     f5c:	e0823003 	add	r3, r2, r3
     f60:	e51b200c 	ldr	r2, [fp, #-12]
     f64:	e1520003 	cmp	r2, r3
     f68:	1a00000b 	bne	f9c <free+0x150>
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5932004 	ldr	r2, [r3, #4]
     f74:	e51b300c 	ldr	r3, [fp, #-12]
     f78:	e5933004 	ldr	r3, [r3, #4]
     f7c:	e0822003 	add	r2, r2, r3
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5832004 	str	r2, [r3, #4]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5932000 	ldr	r2, [r3]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5832000 	str	r2, [r3]
     f98:	ea000002 	b	fa8 <free+0x15c>
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e51b200c 	ldr	r2, [fp, #-12]
     fa4:	e5832000 	str	r2, [r3]
     fa8:	e59f2014 	ldr	r2, [pc, #20]	@ fc4 <free+0x178>
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5823000 	str	r3, [r2]
     fb4:	e1a00000 	nop			@ (mov r0, r0)
     fb8:	e28bd000 	add	sp, fp, #0
     fbc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fc0:	e12fff1e 	bx	lr
     fc4:	00001354 	.word	0x00001354

00000fc8 <morecore>:
     fc8:	e92d4800 	push	{fp, lr}
     fcc:	e28db004 	add	fp, sp, #4
     fd0:	e24dd010 	sub	sp, sp, #16
     fd4:	e50b0010 	str	r0, [fp, #-16]
     fd8:	e51b3010 	ldr	r3, [fp, #-16]
     fdc:	e3530a01 	cmp	r3, #4096	@ 0x1000
     fe0:	2a000001 	bcs	fec <morecore+0x24>
     fe4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     fe8:	e50b3010 	str	r3, [fp, #-16]
     fec:	e51b3010 	ldr	r3, [fp, #-16]
     ff0:	e1a03183 	lsl	r3, r3, #3
     ff4:	e1a00003 	mov	r0, r3
     ff8:	ebfffe46 	bl	918 <sbrk>
     ffc:	e50b0008 	str	r0, [fp, #-8]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e3730001 	cmn	r3, #1
    1008:	1a000001 	bne	1014 <morecore+0x4c>
    100c:	e3a03000 	mov	r3, #0
    1010:	ea00000a 	b	1040 <morecore+0x78>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e50b300c 	str	r3, [fp, #-12]
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e51b2010 	ldr	r2, [fp, #-16]
    1024:	e5832004 	str	r2, [r3, #4]
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e2833008 	add	r3, r3, #8
    1030:	e1a00003 	mov	r0, r3
    1034:	ebffff84 	bl	e4c <free>
    1038:	e59f300c 	ldr	r3, [pc, #12]	@ 104c <morecore+0x84>
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e1a00003 	mov	r0, r3
    1044:	e24bd004 	sub	sp, fp, #4
    1048:	e8bd8800 	pop	{fp, pc}
    104c:	00001354 	.word	0x00001354

00001050 <malloc>:
    1050:	e92d4800 	push	{fp, lr}
    1054:	e28db004 	add	fp, sp, #4
    1058:	e24dd018 	sub	sp, sp, #24
    105c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1060:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1064:	e2833007 	add	r3, r3, #7
    1068:	e1a031a3 	lsr	r3, r3, #3
    106c:	e2833001 	add	r3, r3, #1
    1070:	e50b3010 	str	r3, [fp, #-16]
    1074:	e59f3134 	ldr	r3, [pc, #308]	@ 11b0 <malloc+0x160>
    1078:	e5933000 	ldr	r3, [r3]
    107c:	e50b300c 	str	r3, [fp, #-12]
    1080:	e51b300c 	ldr	r3, [fp, #-12]
    1084:	e3530000 	cmp	r3, #0
    1088:	1a00000b 	bne	10bc <malloc+0x6c>
    108c:	e59f3120 	ldr	r3, [pc, #288]	@ 11b4 <malloc+0x164>
    1090:	e50b300c 	str	r3, [fp, #-12]
    1094:	e59f2114 	ldr	r2, [pc, #276]	@ 11b0 <malloc+0x160>
    1098:	e51b300c 	ldr	r3, [fp, #-12]
    109c:	e5823000 	str	r3, [r2]
    10a0:	e59f3108 	ldr	r3, [pc, #264]	@ 11b0 <malloc+0x160>
    10a4:	e5933000 	ldr	r3, [r3]
    10a8:	e59f2104 	ldr	r2, [pc, #260]	@ 11b4 <malloc+0x164>
    10ac:	e5823000 	str	r3, [r2]
    10b0:	e59f30fc 	ldr	r3, [pc, #252]	@ 11b4 <malloc+0x164>
    10b4:	e3a02000 	mov	r2, #0
    10b8:	e5832004 	str	r2, [r3, #4]
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e50b3008 	str	r3, [fp, #-8]
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5933004 	ldr	r3, [r3, #4]
    10d0:	e51b2010 	ldr	r2, [fp, #-16]
    10d4:	e1520003 	cmp	r2, r3
    10d8:	8a00001e 	bhi	1158 <malloc+0x108>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5933004 	ldr	r3, [r3, #4]
    10e4:	e51b2010 	ldr	r2, [fp, #-16]
    10e8:	e1520003 	cmp	r2, r3
    10ec:	1a000004 	bne	1104 <malloc+0xb4>
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e5932000 	ldr	r2, [r3]
    10f8:	e51b300c 	ldr	r3, [fp, #-12]
    10fc:	e5832000 	str	r2, [r3]
    1100:	ea00000e 	b	1140 <malloc+0xf0>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5932004 	ldr	r2, [r3, #4]
    110c:	e51b3010 	ldr	r3, [fp, #-16]
    1110:	e0422003 	sub	r2, r2, r3
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e5832004 	str	r2, [r3, #4]
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5933004 	ldr	r3, [r3, #4]
    1124:	e1a03183 	lsl	r3, r3, #3
    1128:	e51b2008 	ldr	r2, [fp, #-8]
    112c:	e0823003 	add	r3, r2, r3
    1130:	e50b3008 	str	r3, [fp, #-8]
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e51b2010 	ldr	r2, [fp, #-16]
    113c:	e5832004 	str	r2, [r3, #4]
    1140:	e59f2068 	ldr	r2, [pc, #104]	@ 11b0 <malloc+0x160>
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e5823000 	str	r3, [r2]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e2833008 	add	r3, r3, #8
    1154:	ea000012 	b	11a4 <malloc+0x154>
    1158:	e59f3050 	ldr	r3, [pc, #80]	@ 11b0 <malloc+0x160>
    115c:	e5933000 	ldr	r3, [r3]
    1160:	e51b2008 	ldr	r2, [fp, #-8]
    1164:	e1520003 	cmp	r2, r3
    1168:	1a000007 	bne	118c <malloc+0x13c>
    116c:	e51b0010 	ldr	r0, [fp, #-16]
    1170:	ebffff94 	bl	fc8 <morecore>
    1174:	e50b0008 	str	r0, [fp, #-8]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e3530000 	cmp	r3, #0
    1180:	1a000001 	bne	118c <malloc+0x13c>
    1184:	e3a03000 	mov	r3, #0
    1188:	ea000005 	b	11a4 <malloc+0x154>
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e50b300c 	str	r3, [fp, #-12]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e5933000 	ldr	r3, [r3]
    119c:	e50b3008 	str	r3, [fp, #-8]
    11a0:	eaffffc8 	b	10c8 <malloc+0x78>
    11a4:	e1a00003 	mov	r0, r3
    11a8:	e24bd004 	sub	sp, fp, #4
    11ac:	e8bd8800 	pop	{fp, pc}
    11b0:	00001354 	.word	0x00001354
    11b4:	0000134c 	.word	0x0000134c

000011b8 <__udivsi3>:
    11b8:	e2512001 	subs	r2, r1, #1
    11bc:	012fff1e 	bxeq	lr
    11c0:	3a000036 	bcc	12a0 <__udivsi3+0xe8>
    11c4:	e1500001 	cmp	r0, r1
    11c8:	9a000022 	bls	1258 <__udivsi3+0xa0>
    11cc:	e1110002 	tst	r1, r2
    11d0:	0a000023 	beq	1264 <__udivsi3+0xac>
    11d4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11d8:	01a01181 	lsleq	r1, r1, #3
    11dc:	03a03008 	moveq	r3, #8
    11e0:	13a03001 	movne	r3, #1
    11e4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    11e8:	31510000 	cmpcc	r1, r0
    11ec:	31a01201 	lslcc	r1, r1, #4
    11f0:	31a03203 	lslcc	r3, r3, #4
    11f4:	3afffffa 	bcc	11e4 <__udivsi3+0x2c>
    11f8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11fc:	31510000 	cmpcc	r1, r0
    1200:	31a01081 	lslcc	r1, r1, #1
    1204:	31a03083 	lslcc	r3, r3, #1
    1208:	3afffffa 	bcc	11f8 <__udivsi3+0x40>
    120c:	e3a02000 	mov	r2, #0
    1210:	e1500001 	cmp	r0, r1
    1214:	20400001 	subcs	r0, r0, r1
    1218:	21822003 	orrcs	r2, r2, r3
    121c:	e15000a1 	cmp	r0, r1, lsr #1
    1220:	204000a1 	subcs	r0, r0, r1, lsr #1
    1224:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1228:	e1500121 	cmp	r0, r1, lsr #2
    122c:	20400121 	subcs	r0, r0, r1, lsr #2
    1230:	21822123 	orrcs	r2, r2, r3, lsr #2
    1234:	e15001a1 	cmp	r0, r1, lsr #3
    1238:	204001a1 	subcs	r0, r0, r1, lsr #3
    123c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1240:	e3500000 	cmp	r0, #0
    1244:	11b03223 	lsrsne	r3, r3, #4
    1248:	11a01221 	lsrne	r1, r1, #4
    124c:	1affffef 	bne	1210 <__udivsi3+0x58>
    1250:	e1a00002 	mov	r0, r2
    1254:	e12fff1e 	bx	lr
    1258:	03a00001 	moveq	r0, #1
    125c:	13a00000 	movne	r0, #0
    1260:	e12fff1e 	bx	lr
    1264:	e3510801 	cmp	r1, #65536	@ 0x10000
    1268:	21a01821 	lsrcs	r1, r1, #16
    126c:	23a02010 	movcs	r2, #16
    1270:	33a02000 	movcc	r2, #0
    1274:	e3510c01 	cmp	r1, #256	@ 0x100
    1278:	21a01421 	lsrcs	r1, r1, #8
    127c:	22822008 	addcs	r2, r2, #8
    1280:	e3510010 	cmp	r1, #16
    1284:	21a01221 	lsrcs	r1, r1, #4
    1288:	22822004 	addcs	r2, r2, #4
    128c:	e3510004 	cmp	r1, #4
    1290:	82822003 	addhi	r2, r2, #3
    1294:	908220a1 	addls	r2, r2, r1, lsr #1
    1298:	e1a00230 	lsr	r0, r0, r2
    129c:	e12fff1e 	bx	lr
    12a0:	e3500000 	cmp	r0, #0
    12a4:	13e00000 	mvnne	r0, #0
    12a8:	ea000007 	b	12cc <__aeabi_idiv0>

000012ac <__aeabi_uidivmod>:
    12ac:	e3510000 	cmp	r1, #0
    12b0:	0afffffa 	beq	12a0 <__udivsi3+0xe8>
    12b4:	e92d4003 	push	{r0, r1, lr}
    12b8:	ebffffbe 	bl	11b8 <__udivsi3>
    12bc:	e8bd4006 	pop	{r1, r2, lr}
    12c0:	e0030092 	mul	r3, r2, r0
    12c4:	e0411003 	sub	r1, r1, r3
    12c8:	e12fff1e 	bx	lr

000012cc <__aeabi_idiv0>:
    12cc:	e12fff1e 	bx	lr
