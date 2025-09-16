
_mysleep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	eb00020e 	bl	854 <getpid>
      18:	e1a03000 	mov	r3, r0
      1c:	e1a02003 	mov	r2, r3
      20:	e59f1028 	ldr	r1, [pc, #40]	@ 50 <main+0x50>
      24:	e3a00001 	mov	r0, #1
      28:	eb0002d1 	bl	b74 <printf>
      2c:	e3a00ffa 	mov	r0, #1000	@ 0x3e8
      30:	eb000219 	bl	89c <sleep>
      34:	eb000206 	bl	854 <getpid>
      38:	e1a03000 	mov	r3, r0
      3c:	e1a02003 	mov	r2, r3
      40:	e59f100c 	ldr	r1, [pc, #12]	@ 54 <main+0x54>
      44:	e3a00001 	mov	r0, #1
      48:	eb0002c9 	bl	b74 <printf>
      4c:	eb000170 	bl	614 <exit>
      50:	00001230 	.word	0x00001230
      54:	0000124c 	.word	0x0000124c

00000058 <strcpy>:
      58:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      5c:	e28db000 	add	fp, sp, #0
      60:	e24dd014 	sub	sp, sp, #20
      64:	e50b0010 	str	r0, [fp, #-16]
      68:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      6c:	e51b3010 	ldr	r3, [fp, #-16]
      70:	e50b3008 	str	r3, [fp, #-8]
      74:	e1a00000 	nop			@ (mov r0, r0)
      78:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      7c:	e2823001 	add	r3, r2, #1
      80:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      84:	e51b3010 	ldr	r3, [fp, #-16]
      88:	e2831001 	add	r1, r3, #1
      8c:	e50b1010 	str	r1, [fp, #-16]
      90:	e5d22000 	ldrb	r2, [r2]
      94:	e5c32000 	strb	r2, [r3]
      98:	e5d33000 	ldrb	r3, [r3]
      9c:	e3530000 	cmp	r3, #0
      a0:	1afffff4 	bne	78 <strcpy+0x20>
      a4:	e51b3008 	ldr	r3, [fp, #-8]
      a8:	e1a00003 	mov	r0, r3
      ac:	e28bd000 	add	sp, fp, #0
      b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      b4:	e12fff1e 	bx	lr

000000b8 <strncmp>:
      b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      bc:	e28db000 	add	fp, sp, #0
      c0:	e24dd014 	sub	sp, sp, #20
      c4:	e50b0008 	str	r0, [fp, #-8]
      c8:	e50b100c 	str	r1, [fp, #-12]
      cc:	e50b2010 	str	r2, [fp, #-16]
      d0:	ea000008 	b	f8 <strncmp+0x40>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e2833001 	add	r3, r3, #1
      dc:	e50b3008 	str	r3, [fp, #-8]
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b300c 	str	r3, [fp, #-12]
      ec:	e51b3010 	ldr	r3, [fp, #-16]
      f0:	e2433001 	sub	r3, r3, #1
      f4:	e50b3010 	str	r3, [fp, #-16]
      f8:	e51b3010 	ldr	r3, [fp, #-16]
      fc:	e3530000 	cmp	r3, #0
     100:	da00000d 	ble	13c <strncmp+0x84>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e5d33000 	ldrb	r3, [r3]
     10c:	e3530000 	cmp	r3, #0
     110:	0a000009 	beq	13c <strncmp+0x84>
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e5d33000 	ldrb	r3, [r3]
     11c:	e3530000 	cmp	r3, #0
     120:	0a000005 	beq	13c <strncmp+0x84>
     124:	e51b3008 	ldr	r3, [fp, #-8]
     128:	e5d32000 	ldrb	r2, [r3]
     12c:	e51b300c 	ldr	r3, [fp, #-12]
     130:	e5d33000 	ldrb	r3, [r3]
     134:	e1520003 	cmp	r2, r3
     138:	0affffe5 	beq	d4 <strncmp+0x1c>
     13c:	e51b3010 	ldr	r3, [fp, #-16]
     140:	e3530000 	cmp	r3, #0
     144:	1a000001 	bne	150 <strncmp+0x98>
     148:	e3a03000 	mov	r3, #0
     14c:	ea000005 	b	168 <strncmp+0xb0>
     150:	e51b3008 	ldr	r3, [fp, #-8]
     154:	e5d33000 	ldrb	r3, [r3]
     158:	e1a02003 	mov	r2, r3
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e0423003 	sub	r3, r2, r3
     168:	e1a00003 	mov	r0, r3
     16c:	e28bd000 	add	sp, fp, #0
     170:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     174:	e12fff1e 	bx	lr

00000178 <strcmp>:
     178:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     17c:	e28db000 	add	fp, sp, #0
     180:	e24dd00c 	sub	sp, sp, #12
     184:	e50b0008 	str	r0, [fp, #-8]
     188:	e50b100c 	str	r1, [fp, #-12]
     18c:	ea000005 	b	1a8 <strcmp+0x30>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e2833001 	add	r3, r3, #1
     198:	e50b3008 	str	r3, [fp, #-8]
     19c:	e51b300c 	ldr	r3, [fp, #-12]
     1a0:	e2833001 	add	r3, r3, #1
     1a4:	e50b300c 	str	r3, [fp, #-12]
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e5d33000 	ldrb	r3, [r3]
     1b0:	e3530000 	cmp	r3, #0
     1b4:	0a000005 	beq	1d0 <strcmp+0x58>
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e5d32000 	ldrb	r2, [r3]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e5d33000 	ldrb	r3, [r3]
     1c8:	e1520003 	cmp	r2, r3
     1cc:	0affffef 	beq	190 <strcmp+0x18>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e5d33000 	ldrb	r3, [r3]
     1d8:	e1a02003 	mov	r2, r3
     1dc:	e51b300c 	ldr	r3, [fp, #-12]
     1e0:	e5d33000 	ldrb	r3, [r3]
     1e4:	e0423003 	sub	r3, r2, r3
     1e8:	e1a00003 	mov	r0, r3
     1ec:	e28bd000 	add	sp, fp, #0
     1f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1f4:	e12fff1e 	bx	lr

000001f8 <strlen>:
     1f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1fc:	e28db000 	add	fp, sp, #0
     200:	e24dd014 	sub	sp, sp, #20
     204:	e50b0010 	str	r0, [fp, #-16]
     208:	e3a03000 	mov	r3, #0
     20c:	e50b3008 	str	r3, [fp, #-8]
     210:	ea000002 	b	220 <strlen+0x28>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e51b2010 	ldr	r2, [fp, #-16]
     228:	e0823003 	add	r3, r2, r3
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e3530000 	cmp	r3, #0
     234:	1afffff6 	bne	214 <strlen+0x1c>
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e1a00003 	mov	r0, r3
     240:	e28bd000 	add	sp, fp, #0
     244:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     248:	e12fff1e 	bx	lr

0000024c <memset>:
     24c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     250:	e28db000 	add	fp, sp, #0
     254:	e24dd024 	sub	sp, sp, #36	@ 0x24
     258:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     25c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     260:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     268:	e50b3008 	str	r3, [fp, #-8]
     26c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     270:	e54b300d 	strb	r3, [fp, #-13]
     274:	e55b200d 	ldrb	r2, [fp, #-13]
     278:	e1a03002 	mov	r3, r2
     27c:	e1a03403 	lsl	r3, r3, #8
     280:	e0833002 	add	r3, r3, r2
     284:	e1a03803 	lsl	r3, r3, #16
     288:	e1a02003 	mov	r2, r3
     28c:	e55b300d 	ldrb	r3, [fp, #-13]
     290:	e1a03403 	lsl	r3, r3, #8
     294:	e1822003 	orr	r2, r2, r3
     298:	e55b300d 	ldrb	r3, [fp, #-13]
     29c:	e1823003 	orr	r3, r2, r3
     2a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2a4:	ea000008 	b	2cc <memset+0x80>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e55b200d 	ldrb	r2, [fp, #-13]
     2b0:	e5c32000 	strb	r2, [r3]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e2433001 	sub	r3, r3, #1
     2bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e3530000 	cmp	r3, #0
     2d4:	0a000003 	beq	2e8 <memset+0x9c>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e2033003 	and	r3, r3, #3
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1affffef 	bne	2a8 <memset+0x5c>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e50b300c 	str	r3, [fp, #-12]
     2f0:	ea000008 	b	318 <memset+0xcc>
     2f4:	e51b300c 	ldr	r3, [fp, #-12]
     2f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2fc:	e5832000 	str	r2, [r3]
     300:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     304:	e2433004 	sub	r3, r3, #4
     308:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     30c:	e51b300c 	ldr	r3, [fp, #-12]
     310:	e2833004 	add	r3, r3, #4
     314:	e50b300c 	str	r3, [fp, #-12]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e3530003 	cmp	r3, #3
     320:	8afffff3 	bhi	2f4 <memset+0xa8>
     324:	e51b300c 	ldr	r3, [fp, #-12]
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	ea000008 	b	354 <memset+0x108>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e55b200d 	ldrb	r2, [fp, #-13]
     338:	e5c32000 	strb	r2, [r3]
     33c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     340:	e2433001 	sub	r3, r3, #1
     344:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b3008 	str	r3, [fp, #-8]
     354:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     358:	e3530000 	cmp	r3, #0
     35c:	1afffff3 	bne	330 <memset+0xe4>
     360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     364:	e1a00003 	mov	r0, r3
     368:	e28bd000 	add	sp, fp, #0
     36c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     370:	e12fff1e 	bx	lr

00000374 <strchr>:
     374:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     378:	e28db000 	add	fp, sp, #0
     37c:	e24dd00c 	sub	sp, sp, #12
     380:	e50b0008 	str	r0, [fp, #-8]
     384:	e1a03001 	mov	r3, r1
     388:	e54b3009 	strb	r3, [fp, #-9]
     38c:	ea000009 	b	3b8 <strchr+0x44>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e5d33000 	ldrb	r3, [r3]
     398:	e55b2009 	ldrb	r2, [fp, #-9]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000001 	bne	3ac <strchr+0x38>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	ea000007 	b	3cc <strchr+0x58>
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e5d33000 	ldrb	r3, [r3]
     3c0:	e3530000 	cmp	r3, #0
     3c4:	1afffff1 	bne	390 <strchr+0x1c>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e28bd000 	add	sp, fp, #0
     3d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d8:	e12fff1e 	bx	lr

000003dc <gets>:
     3dc:	e92d4800 	push	{fp, lr}
     3e0:	e28db004 	add	fp, sp, #4
     3e4:	e24dd018 	sub	sp, sp, #24
     3e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3ec:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3f0:	e3a03000 	mov	r3, #0
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	ea000016 	b	458 <gets+0x7c>
     3fc:	e24b300d 	sub	r3, fp, #13
     400:	e3a02001 	mov	r2, #1
     404:	e1a01003 	mov	r1, r3
     408:	e3a00000 	mov	r0, #0
     40c:	eb00009b 	bl	680 <read>
     410:	e50b000c 	str	r0, [fp, #-12]
     414:	e51b300c 	ldr	r3, [fp, #-12]
     418:	e3530000 	cmp	r3, #0
     41c:	da000013 	ble	470 <gets+0x94>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2008 	str	r2, [fp, #-8]
     42c:	e1a02003 	mov	r2, r3
     430:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     434:	e0833002 	add	r3, r3, r2
     438:	e55b200d 	ldrb	r2, [fp, #-13]
     43c:	e5c32000 	strb	r2, [r3]
     440:	e55b300d 	ldrb	r3, [fp, #-13]
     444:	e353000a 	cmp	r3, #10
     448:	0a000009 	beq	474 <gets+0x98>
     44c:	e55b300d 	ldrb	r3, [fp, #-13]
     450:	e353000d 	cmp	r3, #13
     454:	0a000006 	beq	474 <gets+0x98>
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e2833001 	add	r3, r3, #1
     460:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     464:	e1520003 	cmp	r2, r3
     468:	caffffe3 	bgt	3fc <gets+0x20>
     46c:	ea000000 	b	474 <gets+0x98>
     470:	e1a00000 	nop			@ (mov r0, r0)
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     47c:	e0823003 	add	r3, r2, r3
     480:	e3a02000 	mov	r2, #0
     484:	e5c32000 	strb	r2, [r3]
     488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     48c:	e1a00003 	mov	r0, r3
     490:	e24bd004 	sub	sp, fp, #4
     494:	e8bd8800 	pop	{fp, pc}

00000498 <stat>:
     498:	e92d4800 	push	{fp, lr}
     49c:	e28db004 	add	fp, sp, #4
     4a0:	e24dd010 	sub	sp, sp, #16
     4a4:	e50b0010 	str	r0, [fp, #-16]
     4a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4ac:	e3a01000 	mov	r1, #0
     4b0:	e51b0010 	ldr	r0, [fp, #-16]
     4b4:	eb00009e 	bl	734 <open>
     4b8:	e50b0008 	str	r0, [fp, #-8]
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e3530000 	cmp	r3, #0
     4c4:	aa000001 	bge	4d0 <stat+0x38>
     4c8:	e3e03000 	mvn	r3, #0
     4cc:	ea000006 	b	4ec <stat+0x54>
     4d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4d4:	e51b0008 	ldr	r0, [fp, #-8]
     4d8:	eb0000b0 	bl	7a0 <fstat>
     4dc:	e50b000c 	str	r0, [fp, #-12]
     4e0:	e51b0008 	ldr	r0, [fp, #-8]
     4e4:	eb000077 	bl	6c8 <close>
     4e8:	e51b300c 	ldr	r3, [fp, #-12]
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e24bd004 	sub	sp, fp, #4
     4f4:	e8bd8800 	pop	{fp, pc}

000004f8 <atoi>:
     4f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4fc:	e28db000 	add	fp, sp, #0
     500:	e24dd014 	sub	sp, sp, #20
     504:	e50b0010 	str	r0, [fp, #-16]
     508:	e3a03000 	mov	r3, #0
     50c:	e50b3008 	str	r3, [fp, #-8]
     510:	ea00000c 	b	548 <atoi+0x50>
     514:	e51b2008 	ldr	r2, [fp, #-8]
     518:	e1a03002 	mov	r3, r2
     51c:	e1a03103 	lsl	r3, r3, #2
     520:	e0833002 	add	r3, r3, r2
     524:	e1a03083 	lsl	r3, r3, #1
     528:	e1a01003 	mov	r1, r3
     52c:	e51b3010 	ldr	r3, [fp, #-16]
     530:	e2832001 	add	r2, r3, #1
     534:	e50b2010 	str	r2, [fp, #-16]
     538:	e5d33000 	ldrb	r3, [r3]
     53c:	e0813003 	add	r3, r1, r3
     540:	e2433030 	sub	r3, r3, #48	@ 0x30
     544:	e50b3008 	str	r3, [fp, #-8]
     548:	e51b3010 	ldr	r3, [fp, #-16]
     54c:	e5d33000 	ldrb	r3, [r3]
     550:	e353002f 	cmp	r3, #47	@ 0x2f
     554:	9a000003 	bls	568 <atoi+0x70>
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e5d33000 	ldrb	r3, [r3]
     560:	e3530039 	cmp	r3, #57	@ 0x39
     564:	9affffea 	bls	514 <atoi+0x1c>
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e1a00003 	mov	r0, r3
     570:	e28bd000 	add	sp, fp, #0
     574:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     578:	e12fff1e 	bx	lr

0000057c <memmove>:
     57c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     580:	e28db000 	add	fp, sp, #0
     584:	e24dd01c 	sub	sp, sp, #28
     588:	e50b0010 	str	r0, [fp, #-16]
     58c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     590:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     594:	e51b3010 	ldr	r3, [fp, #-16]
     598:	e50b3008 	str	r3, [fp, #-8]
     59c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5a0:	e50b300c 	str	r3, [fp, #-12]
     5a4:	ea000007 	b	5c8 <memmove+0x4c>
     5a8:	e51b200c 	ldr	r2, [fp, #-12]
     5ac:	e2823001 	add	r3, r2, #1
     5b0:	e50b300c 	str	r3, [fp, #-12]
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e2831001 	add	r1, r3, #1
     5bc:	e50b1008 	str	r1, [fp, #-8]
     5c0:	e5d22000 	ldrb	r2, [r2]
     5c4:	e5c32000 	strb	r2, [r3]
     5c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5cc:	e2432001 	sub	r2, r3, #1
     5d0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5d4:	e3530000 	cmp	r3, #0
     5d8:	cafffff2 	bgt	5a8 <memmove+0x2c>
     5dc:	e51b3010 	ldr	r3, [fp, #-16]
     5e0:	e1a00003 	mov	r0, r3
     5e4:	e28bd000 	add	sp, fp, #0
     5e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <fork>:
     5f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00001 	mov	r0, #1
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <exit>:
     614:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00002 	mov	r0, #2
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <wait>:
     638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00003 	mov	r0, #3
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <pipe>:
     65c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00004 	mov	r0, #4
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <read>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00005 	mov	r0, #5
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <write>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00010 	mov	r0, #16
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <close>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00015 	mov	r0, #21
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <kill>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00006 	mov	r0, #6
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <exec>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00007 	mov	r0, #7
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <open>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a0000f 	mov	r0, #15
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <mknod>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00011 	mov	r0, #17
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <unlink>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00012 	mov	r0, #18
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <fstat>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00008 	mov	r0, #8
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <link>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00013 	mov	r0, #19
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <mkdir>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00014 	mov	r0, #20
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <chdir>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00009 	mov	r0, #9
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <dup>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000a 	mov	r0, #10
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <getpid>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a0000b 	mov	r0, #11
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <sbrk>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a0000c 	mov	r0, #12
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <sleep>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a0000d 	mov	r0, #13
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <uptime>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a0000e 	mov	r0, #14
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <ps>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00016 	mov	r0, #22
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <settickets>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a00017 	mov	r0, #23
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <srand>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a00018 	mov	r0, #24
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <getpinfo>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a00019 	mov	r0, #25
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <printpt>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a0001a 	mov	r0, #26
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <pgpte>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a0001b 	mov	r0, #27
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <ugetpid>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a0001c 	mov	r0, #28
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <kpt>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a0001d 	mov	r0, #29
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <putc>:
     a04:	e92d4800 	push	{fp, lr}
     a08:	e28db004 	add	fp, sp, #4
     a0c:	e24dd008 	sub	sp, sp, #8
     a10:	e50b0008 	str	r0, [fp, #-8]
     a14:	e1a03001 	mov	r3, r1
     a18:	e54b3009 	strb	r3, [fp, #-9]
     a1c:	e24b3009 	sub	r3, fp, #9
     a20:	e3a02001 	mov	r2, #1
     a24:	e1a01003 	mov	r1, r3
     a28:	e51b0008 	ldr	r0, [fp, #-8]
     a2c:	ebffff1c 	bl	6a4 <write>
     a30:	e1a00000 	nop			@ (mov r0, r0)
     a34:	e24bd004 	sub	sp, fp, #4
     a38:	e8bd8800 	pop	{fp, pc}

00000a3c <printint>:
     a3c:	e92d4800 	push	{fp, lr}
     a40:	e28db004 	add	fp, sp, #4
     a44:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a48:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a4c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a50:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a54:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a58:	e3a03000 	mov	r3, #0
     a5c:	e50b300c 	str	r3, [fp, #-12]
     a60:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a64:	e3530000 	cmp	r3, #0
     a68:	0a000008 	beq	a90 <printint+0x54>
     a6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a70:	e3530000 	cmp	r3, #0
     a74:	aa000005 	bge	a90 <printint+0x54>
     a78:	e3a03001 	mov	r3, #1
     a7c:	e50b300c 	str	r3, [fp, #-12]
     a80:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a84:	e2633000 	rsb	r3, r3, #0
     a88:	e50b3010 	str	r3, [fp, #-16]
     a8c:	ea000001 	b	a98 <printint+0x5c>
     a90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a94:	e50b3010 	str	r3, [fp, #-16]
     a98:	e3a03000 	mov	r3, #0
     a9c:	e50b3008 	str	r3, [fp, #-8]
     aa0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     aa4:	e51b3010 	ldr	r3, [fp, #-16]
     aa8:	e1a01002 	mov	r1, r2
     aac:	e1a00003 	mov	r0, r3
     ab0:	eb0001d5 	bl	120c <__aeabi_uidivmod>
     ab4:	e1a03001 	mov	r3, r1
     ab8:	e1a01003 	mov	r1, r3
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e2832001 	add	r2, r3, #1
     ac4:	e50b2008 	str	r2, [fp, #-8]
     ac8:	e59f20a0 	ldr	r2, [pc, #160]	@ b70 <printint+0x134>
     acc:	e7d22001 	ldrb	r2, [r2, r1]
     ad0:	e2433004 	sub	r3, r3, #4
     ad4:	e083300b 	add	r3, r3, fp
     ad8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     adc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ae0:	e1a01003 	mov	r1, r3
     ae4:	e51b0010 	ldr	r0, [fp, #-16]
     ae8:	eb00018a 	bl	1118 <__udivsi3>
     aec:	e1a03000 	mov	r3, r0
     af0:	e50b3010 	str	r3, [fp, #-16]
     af4:	e51b3010 	ldr	r3, [fp, #-16]
     af8:	e3530000 	cmp	r3, #0
     afc:	1affffe7 	bne	aa0 <printint+0x64>
     b00:	e51b300c 	ldr	r3, [fp, #-12]
     b04:	e3530000 	cmp	r3, #0
     b08:	0a00000e 	beq	b48 <printint+0x10c>
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e2832001 	add	r2, r3, #1
     b14:	e50b2008 	str	r2, [fp, #-8]
     b18:	e2433004 	sub	r3, r3, #4
     b1c:	e083300b 	add	r3, r3, fp
     b20:	e3a0202d 	mov	r2, #45	@ 0x2d
     b24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b28:	ea000006 	b	b48 <printint+0x10c>
     b2c:	e24b2020 	sub	r2, fp, #32
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e0823003 	add	r3, r2, r3
     b38:	e5d33000 	ldrb	r3, [r3]
     b3c:	e1a01003 	mov	r1, r3
     b40:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b44:	ebffffae 	bl	a04 <putc>
     b48:	e51b3008 	ldr	r3, [fp, #-8]
     b4c:	e2433001 	sub	r3, r3, #1
     b50:	e50b3008 	str	r3, [fp, #-8]
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e3530000 	cmp	r3, #0
     b5c:	aafffff2 	bge	b2c <printint+0xf0>
     b60:	e1a00000 	nop			@ (mov r0, r0)
     b64:	e1a00000 	nop			@ (mov r0, r0)
     b68:	e24bd004 	sub	sp, fp, #4
     b6c:	e8bd8800 	pop	{fp, pc}
     b70:	0000126c 	.word	0x0000126c

00000b74 <printf>:
     b74:	e92d000e 	push	{r1, r2, r3}
     b78:	e92d4800 	push	{fp, lr}
     b7c:	e28db004 	add	fp, sp, #4
     b80:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b84:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b88:	e3a03000 	mov	r3, #0
     b8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b90:	e28b3008 	add	r3, fp, #8
     b94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e3a03000 	mov	r3, #0
     b9c:	e50b3010 	str	r3, [fp, #-16]
     ba0:	ea000074 	b	d78 <printf+0x204>
     ba4:	e59b2004 	ldr	r2, [fp, #4]
     ba8:	e51b3010 	ldr	r3, [fp, #-16]
     bac:	e0823003 	add	r3, r2, r3
     bb0:	e5d33000 	ldrb	r3, [r3]
     bb4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bb8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bbc:	e3530000 	cmp	r3, #0
     bc0:	1a00000b 	bne	bf4 <printf+0x80>
     bc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc8:	e3530025 	cmp	r3, #37	@ 0x25
     bcc:	1a000002 	bne	bdc <printf+0x68>
     bd0:	e3a03025 	mov	r3, #37	@ 0x25
     bd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bd8:	ea000063 	b	d6c <printf+0x1f8>
     bdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be0:	e6ef3073 	uxtb	r3, r3
     be4:	e1a01003 	mov	r1, r3
     be8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bec:	ebffff84 	bl	a04 <putc>
     bf0:	ea00005d 	b	d6c <printf+0x1f8>
     bf4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bf8:	e3530025 	cmp	r3, #37	@ 0x25
     bfc:	1a00005a 	bne	d6c <printf+0x1f8>
     c00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c04:	e3530064 	cmp	r3, #100	@ 0x64
     c08:	1a00000a 	bne	c38 <printf+0xc4>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e1a01003 	mov	r1, r3
     c18:	e3a03001 	mov	r3, #1
     c1c:	e3a0200a 	mov	r2, #10
     c20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c24:	ebffff84 	bl	a3c <printint>
     c28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c2c:	e2833004 	add	r3, r3, #4
     c30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c34:	ea00004a 	b	d64 <printf+0x1f0>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c3c:	e3530078 	cmp	r3, #120	@ 0x78
     c40:	0a000002 	beq	c50 <printf+0xdc>
     c44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c48:	e3530070 	cmp	r3, #112	@ 0x70
     c4c:	1a00000a 	bne	c7c <printf+0x108>
     c50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c54:	e5933000 	ldr	r3, [r3]
     c58:	e1a01003 	mov	r1, r3
     c5c:	e3a03000 	mov	r3, #0
     c60:	e3a02010 	mov	r2, #16
     c64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c68:	ebffff73 	bl	a3c <printint>
     c6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e2833004 	add	r3, r3, #4
     c74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c78:	ea000039 	b	d64 <printf+0x1f0>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c80:	e3530073 	cmp	r3, #115	@ 0x73
     c84:	1a000018 	bne	cec <printf+0x178>
     c88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c8c:	e5933000 	ldr	r3, [r3]
     c90:	e50b300c 	str	r3, [fp, #-12]
     c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c98:	e2833004 	add	r3, r3, #4
     c9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ca0:	e51b300c 	ldr	r3, [fp, #-12]
     ca4:	e3530000 	cmp	r3, #0
     ca8:	1a00000a 	bne	cd8 <printf+0x164>
     cac:	e59f30f4 	ldr	r3, [pc, #244]	@ da8 <printf+0x234>
     cb0:	e50b300c 	str	r3, [fp, #-12]
     cb4:	ea000007 	b	cd8 <printf+0x164>
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e5d33000 	ldrb	r3, [r3]
     cc0:	e1a01003 	mov	r1, r3
     cc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc8:	ebffff4d 	bl	a04 <putc>
     ccc:	e51b300c 	ldr	r3, [fp, #-12]
     cd0:	e2833001 	add	r3, r3, #1
     cd4:	e50b300c 	str	r3, [fp, #-12]
     cd8:	e51b300c 	ldr	r3, [fp, #-12]
     cdc:	e5d33000 	ldrb	r3, [r3]
     ce0:	e3530000 	cmp	r3, #0
     ce4:	1afffff3 	bne	cb8 <printf+0x144>
     ce8:	ea00001d 	b	d64 <printf+0x1f0>
     cec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf0:	e3530063 	cmp	r3, #99	@ 0x63
     cf4:	1a000009 	bne	d20 <printf+0x1ac>
     cf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cfc:	e5933000 	ldr	r3, [r3]
     d00:	e6ef3073 	uxtb	r3, r3
     d04:	e1a01003 	mov	r1, r3
     d08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d0c:	ebffff3c 	bl	a04 <putc>
     d10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d14:	e2833004 	add	r3, r3, #4
     d18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d1c:	ea000010 	b	d64 <printf+0x1f0>
     d20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d24:	e3530025 	cmp	r3, #37	@ 0x25
     d28:	1a000005 	bne	d44 <printf+0x1d0>
     d2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d30:	e6ef3073 	uxtb	r3, r3
     d34:	e1a01003 	mov	r1, r3
     d38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d3c:	ebffff30 	bl	a04 <putc>
     d40:	ea000007 	b	d64 <printf+0x1f0>
     d44:	e3a01025 	mov	r1, #37	@ 0x25
     d48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d4c:	ebffff2c 	bl	a04 <putc>
     d50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d54:	e6ef3073 	uxtb	r3, r3
     d58:	e1a01003 	mov	r1, r3
     d5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d60:	ebffff27 	bl	a04 <putc>
     d64:	e3a03000 	mov	r3, #0
     d68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d6c:	e51b3010 	ldr	r3, [fp, #-16]
     d70:	e2833001 	add	r3, r3, #1
     d74:	e50b3010 	str	r3, [fp, #-16]
     d78:	e59b2004 	ldr	r2, [fp, #4]
     d7c:	e51b3010 	ldr	r3, [fp, #-16]
     d80:	e0823003 	add	r3, r2, r3
     d84:	e5d33000 	ldrb	r3, [r3]
     d88:	e3530000 	cmp	r3, #0
     d8c:	1affff84 	bne	ba4 <printf+0x30>
     d90:	e1a00000 	nop			@ (mov r0, r0)
     d94:	e1a00000 	nop			@ (mov r0, r0)
     d98:	e24bd004 	sub	sp, fp, #4
     d9c:	e8bd4800 	pop	{fp, lr}
     da0:	e28dd00c 	add	sp, sp, #12
     da4:	e12fff1e 	bx	lr
     da8:	00001264 	.word	0x00001264

00000dac <free>:
     dac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     db0:	e28db000 	add	fp, sp, #0
     db4:	e24dd014 	sub	sp, sp, #20
     db8:	e50b0010 	str	r0, [fp, #-16]
     dbc:	e51b3010 	ldr	r3, [fp, #-16]
     dc0:	e2433008 	sub	r3, r3, #8
     dc4:	e50b300c 	str	r3, [fp, #-12]
     dc8:	e59f3154 	ldr	r3, [pc, #340]	@ f24 <free+0x178>
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e50b3008 	str	r3, [fp, #-8]
     dd4:	ea000010 	b	e1c <free+0x70>
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e51b2008 	ldr	r2, [fp, #-8]
     de4:	e1520003 	cmp	r2, r3
     de8:	3a000008 	bcc	e10 <free+0x64>
     dec:	e51b200c 	ldr	r2, [fp, #-12]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e1520003 	cmp	r2, r3
     df8:	8a000010 	bhi	e40 <free+0x94>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e51b200c 	ldr	r2, [fp, #-12]
     e08:	e1520003 	cmp	r2, r3
     e0c:	3a00000b 	bcc	e40 <free+0x94>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5933000 	ldr	r3, [r3]
     e18:	e50b3008 	str	r3, [fp, #-8]
     e1c:	e51b200c 	ldr	r2, [fp, #-12]
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e1520003 	cmp	r2, r3
     e28:	9affffea 	bls	dd8 <free+0x2c>
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e51b200c 	ldr	r2, [fp, #-12]
     e38:	e1520003 	cmp	r2, r3
     e3c:	2affffe5 	bcs	dd8 <free+0x2c>
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5933004 	ldr	r3, [r3, #4]
     e48:	e1a03183 	lsl	r3, r3, #3
     e4c:	e51b200c 	ldr	r2, [fp, #-12]
     e50:	e0822003 	add	r2, r2, r3
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e1520003 	cmp	r2, r3
     e60:	1a00000d 	bne	e9c <free+0xf0>
     e64:	e51b300c 	ldr	r3, [fp, #-12]
     e68:	e5932004 	ldr	r2, [r3, #4]
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e5933000 	ldr	r3, [r3]
     e74:	e5933004 	ldr	r3, [r3, #4]
     e78:	e0822003 	add	r2, r2, r3
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e5832004 	str	r2, [r3, #4]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5933000 	ldr	r3, [r3]
     e8c:	e5932000 	ldr	r2, [r3]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5832000 	str	r2, [r3]
     e98:	ea000003 	b	eac <free+0x100>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5932000 	ldr	r2, [r3]
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e5832000 	str	r2, [r3]
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5933004 	ldr	r3, [r3, #4]
     eb4:	e1a03183 	lsl	r3, r3, #3
     eb8:	e51b2008 	ldr	r2, [fp, #-8]
     ebc:	e0823003 	add	r3, r2, r3
     ec0:	e51b200c 	ldr	r2, [fp, #-12]
     ec4:	e1520003 	cmp	r2, r3
     ec8:	1a00000b 	bne	efc <free+0x150>
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5932004 	ldr	r2, [r3, #4]
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5933004 	ldr	r3, [r3, #4]
     edc:	e0822003 	add	r2, r2, r3
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e5832004 	str	r2, [r3, #4]
     ee8:	e51b300c 	ldr	r3, [fp, #-12]
     eec:	e5932000 	ldr	r2, [r3]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5832000 	str	r2, [r3]
     ef8:	ea000002 	b	f08 <free+0x15c>
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e51b200c 	ldr	r2, [fp, #-12]
     f04:	e5832000 	str	r2, [r3]
     f08:	e59f2014 	ldr	r2, [pc, #20]	@ f24 <free+0x178>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5823000 	str	r3, [r2]
     f14:	e1a00000 	nop			@ (mov r0, r0)
     f18:	e28bd000 	add	sp, fp, #0
     f1c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f20:	e12fff1e 	bx	lr
     f24:	00001288 	.word	0x00001288

00000f28 <morecore>:
     f28:	e92d4800 	push	{fp, lr}
     f2c:	e28db004 	add	fp, sp, #4
     f30:	e24dd010 	sub	sp, sp, #16
     f34:	e50b0010 	str	r0, [fp, #-16]
     f38:	e51b3010 	ldr	r3, [fp, #-16]
     f3c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f40:	2a000001 	bcs	f4c <morecore+0x24>
     f44:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f48:	e50b3010 	str	r3, [fp, #-16]
     f4c:	e51b3010 	ldr	r3, [fp, #-16]
     f50:	e1a03183 	lsl	r3, r3, #3
     f54:	e1a00003 	mov	r0, r3
     f58:	ebfffe46 	bl	878 <sbrk>
     f5c:	e50b0008 	str	r0, [fp, #-8]
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e3730001 	cmn	r3, #1
     f68:	1a000001 	bne	f74 <morecore+0x4c>
     f6c:	e3a03000 	mov	r3, #0
     f70:	ea00000a 	b	fa0 <morecore+0x78>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e50b300c 	str	r3, [fp, #-12]
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e51b2010 	ldr	r2, [fp, #-16]
     f84:	e5832004 	str	r2, [r3, #4]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e2833008 	add	r3, r3, #8
     f90:	e1a00003 	mov	r0, r3
     f94:	ebffff84 	bl	dac <free>
     f98:	e59f300c 	ldr	r3, [pc, #12]	@ fac <morecore+0x84>
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e1a00003 	mov	r0, r3
     fa4:	e24bd004 	sub	sp, fp, #4
     fa8:	e8bd8800 	pop	{fp, pc}
     fac:	00001288 	.word	0x00001288

00000fb0 <malloc>:
     fb0:	e92d4800 	push	{fp, lr}
     fb4:	e28db004 	add	fp, sp, #4
     fb8:	e24dd018 	sub	sp, sp, #24
     fbc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc4:	e2833007 	add	r3, r3, #7
     fc8:	e1a031a3 	lsr	r3, r3, #3
     fcc:	e2833001 	add	r3, r3, #1
     fd0:	e50b3010 	str	r3, [fp, #-16]
     fd4:	e59f3134 	ldr	r3, [pc, #308]	@ 1110 <malloc+0x160>
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e50b300c 	str	r3, [fp, #-12]
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e3530000 	cmp	r3, #0
     fe8:	1a00000b 	bne	101c <malloc+0x6c>
     fec:	e59f3120 	ldr	r3, [pc, #288]	@ 1114 <malloc+0x164>
     ff0:	e50b300c 	str	r3, [fp, #-12]
     ff4:	e59f2114 	ldr	r2, [pc, #276]	@ 1110 <malloc+0x160>
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5823000 	str	r3, [r2]
    1000:	e59f3108 	ldr	r3, [pc, #264]	@ 1110 <malloc+0x160>
    1004:	e5933000 	ldr	r3, [r3]
    1008:	e59f2104 	ldr	r2, [pc, #260]	@ 1114 <malloc+0x164>
    100c:	e5823000 	str	r3, [r2]
    1010:	e59f30fc 	ldr	r3, [pc, #252]	@ 1114 <malloc+0x164>
    1014:	e3a02000 	mov	r2, #0
    1018:	e5832004 	str	r2, [r3, #4]
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5933000 	ldr	r3, [r3]
    1024:	e50b3008 	str	r3, [fp, #-8]
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5933004 	ldr	r3, [r3, #4]
    1030:	e51b2010 	ldr	r2, [fp, #-16]
    1034:	e1520003 	cmp	r2, r3
    1038:	8a00001e 	bhi	10b8 <malloc+0x108>
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5933004 	ldr	r3, [r3, #4]
    1044:	e51b2010 	ldr	r2, [fp, #-16]
    1048:	e1520003 	cmp	r2, r3
    104c:	1a000004 	bne	1064 <malloc+0xb4>
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e5932000 	ldr	r2, [r3]
    1058:	e51b300c 	ldr	r3, [fp, #-12]
    105c:	e5832000 	str	r2, [r3]
    1060:	ea00000e 	b	10a0 <malloc+0xf0>
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5932004 	ldr	r2, [r3, #4]
    106c:	e51b3010 	ldr	r3, [fp, #-16]
    1070:	e0422003 	sub	r2, r2, r3
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5832004 	str	r2, [r3, #4]
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e5933004 	ldr	r3, [r3, #4]
    1084:	e1a03183 	lsl	r3, r3, #3
    1088:	e51b2008 	ldr	r2, [fp, #-8]
    108c:	e0823003 	add	r3, r2, r3
    1090:	e50b3008 	str	r3, [fp, #-8]
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e51b2010 	ldr	r2, [fp, #-16]
    109c:	e5832004 	str	r2, [r3, #4]
    10a0:	e59f2068 	ldr	r2, [pc, #104]	@ 1110 <malloc+0x160>
    10a4:	e51b300c 	ldr	r3, [fp, #-12]
    10a8:	e5823000 	str	r3, [r2]
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e2833008 	add	r3, r3, #8
    10b4:	ea000012 	b	1104 <malloc+0x154>
    10b8:	e59f3050 	ldr	r3, [pc, #80]	@ 1110 <malloc+0x160>
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e51b2008 	ldr	r2, [fp, #-8]
    10c4:	e1520003 	cmp	r2, r3
    10c8:	1a000007 	bne	10ec <malloc+0x13c>
    10cc:	e51b0010 	ldr	r0, [fp, #-16]
    10d0:	ebffff94 	bl	f28 <morecore>
    10d4:	e50b0008 	str	r0, [fp, #-8]
    10d8:	e51b3008 	ldr	r3, [fp, #-8]
    10dc:	e3530000 	cmp	r3, #0
    10e0:	1a000001 	bne	10ec <malloc+0x13c>
    10e4:	e3a03000 	mov	r3, #0
    10e8:	ea000005 	b	1104 <malloc+0x154>
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e50b300c 	str	r3, [fp, #-12]
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e50b3008 	str	r3, [fp, #-8]
    1100:	eaffffc8 	b	1028 <malloc+0x78>
    1104:	e1a00003 	mov	r0, r3
    1108:	e24bd004 	sub	sp, fp, #4
    110c:	e8bd8800 	pop	{fp, pc}
    1110:	00001288 	.word	0x00001288
    1114:	00001280 	.word	0x00001280

00001118 <__udivsi3>:
    1118:	e2512001 	subs	r2, r1, #1
    111c:	012fff1e 	bxeq	lr
    1120:	3a000036 	bcc	1200 <__udivsi3+0xe8>
    1124:	e1500001 	cmp	r0, r1
    1128:	9a000022 	bls	11b8 <__udivsi3+0xa0>
    112c:	e1110002 	tst	r1, r2
    1130:	0a000023 	beq	11c4 <__udivsi3+0xac>
    1134:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1138:	01a01181 	lsleq	r1, r1, #3
    113c:	03a03008 	moveq	r3, #8
    1140:	13a03001 	movne	r3, #1
    1144:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1148:	31510000 	cmpcc	r1, r0
    114c:	31a01201 	lslcc	r1, r1, #4
    1150:	31a03203 	lslcc	r3, r3, #4
    1154:	3afffffa 	bcc	1144 <__udivsi3+0x2c>
    1158:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    115c:	31510000 	cmpcc	r1, r0
    1160:	31a01081 	lslcc	r1, r1, #1
    1164:	31a03083 	lslcc	r3, r3, #1
    1168:	3afffffa 	bcc	1158 <__udivsi3+0x40>
    116c:	e3a02000 	mov	r2, #0
    1170:	e1500001 	cmp	r0, r1
    1174:	20400001 	subcs	r0, r0, r1
    1178:	21822003 	orrcs	r2, r2, r3
    117c:	e15000a1 	cmp	r0, r1, lsr #1
    1180:	204000a1 	subcs	r0, r0, r1, lsr #1
    1184:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1188:	e1500121 	cmp	r0, r1, lsr #2
    118c:	20400121 	subcs	r0, r0, r1, lsr #2
    1190:	21822123 	orrcs	r2, r2, r3, lsr #2
    1194:	e15001a1 	cmp	r0, r1, lsr #3
    1198:	204001a1 	subcs	r0, r0, r1, lsr #3
    119c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11a0:	e3500000 	cmp	r0, #0
    11a4:	11b03223 	lsrsne	r3, r3, #4
    11a8:	11a01221 	lsrne	r1, r1, #4
    11ac:	1affffef 	bne	1170 <__udivsi3+0x58>
    11b0:	e1a00002 	mov	r0, r2
    11b4:	e12fff1e 	bx	lr
    11b8:	03a00001 	moveq	r0, #1
    11bc:	13a00000 	movne	r0, #0
    11c0:	e12fff1e 	bx	lr
    11c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    11c8:	21a01821 	lsrcs	r1, r1, #16
    11cc:	23a02010 	movcs	r2, #16
    11d0:	33a02000 	movcc	r2, #0
    11d4:	e3510c01 	cmp	r1, #256	@ 0x100
    11d8:	21a01421 	lsrcs	r1, r1, #8
    11dc:	22822008 	addcs	r2, r2, #8
    11e0:	e3510010 	cmp	r1, #16
    11e4:	21a01221 	lsrcs	r1, r1, #4
    11e8:	22822004 	addcs	r2, r2, #4
    11ec:	e3510004 	cmp	r1, #4
    11f0:	82822003 	addhi	r2, r2, #3
    11f4:	908220a1 	addls	r2, r2, r1, lsr #1
    11f8:	e1a00230 	lsr	r0, r0, r2
    11fc:	e12fff1e 	bx	lr
    1200:	e3500000 	cmp	r0, #0
    1204:	13e00000 	mvnne	r0, #0
    1208:	ea000007 	b	122c <__aeabi_idiv0>

0000120c <__aeabi_uidivmod>:
    120c:	e3510000 	cmp	r1, #0
    1210:	0afffffa 	beq	1200 <__udivsi3+0xe8>
    1214:	e92d4003 	push	{r0, r1, lr}
    1218:	ebffffbe 	bl	1118 <__udivsi3>
    121c:	e8bd4006 	pop	{r1, r2, lr}
    1220:	e0030092 	mul	r3, r2, r0
    1224:	e0411003 	sub	r1, r1, r3
    1228:	e12fff1e 	bx	lr

0000122c <__aeabi_idiv0>:
    122c:	e12fff1e 	bx	lr
