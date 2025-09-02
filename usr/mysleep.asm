
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
      28:	eb0002ad 	bl	ae4 <printf>
      2c:	e3a00ffa 	mov	r0, #1000	@ 0x3e8
      30:	eb000219 	bl	89c <sleep>
      34:	eb000206 	bl	854 <getpid>
      38:	e1a03000 	mov	r3, r0
      3c:	e1a02003 	mov	r2, r3
      40:	e59f100c 	ldr	r1, [pc, #12]	@ 54 <main+0x54>
      44:	e3a00001 	mov	r0, #1
      48:	eb0002a5 	bl	ae4 <printf>
      4c:	eb000170 	bl	614 <exit>
      50:	000011a0 	.word	0x000011a0
      54:	000011bc 	.word	0x000011bc

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

00000974 <putc>:
     974:	e92d4800 	push	{fp, lr}
     978:	e28db004 	add	fp, sp, #4
     97c:	e24dd008 	sub	sp, sp, #8
     980:	e50b0008 	str	r0, [fp, #-8]
     984:	e1a03001 	mov	r3, r1
     988:	e54b3009 	strb	r3, [fp, #-9]
     98c:	e24b3009 	sub	r3, fp, #9
     990:	e3a02001 	mov	r2, #1
     994:	e1a01003 	mov	r1, r3
     998:	e51b0008 	ldr	r0, [fp, #-8]
     99c:	ebffff40 	bl	6a4 <write>
     9a0:	e1a00000 	nop			@ (mov r0, r0)
     9a4:	e24bd004 	sub	sp, fp, #4
     9a8:	e8bd8800 	pop	{fp, pc}

000009ac <printint>:
     9ac:	e92d4800 	push	{fp, lr}
     9b0:	e28db004 	add	fp, sp, #4
     9b4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9b8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9bc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9c0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9c4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9c8:	e3a03000 	mov	r3, #0
     9cc:	e50b300c 	str	r3, [fp, #-12]
     9d0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9d4:	e3530000 	cmp	r3, #0
     9d8:	0a000008 	beq	a00 <printint+0x54>
     9dc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9e0:	e3530000 	cmp	r3, #0
     9e4:	aa000005 	bge	a00 <printint+0x54>
     9e8:	e3a03001 	mov	r3, #1
     9ec:	e50b300c 	str	r3, [fp, #-12]
     9f0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9f4:	e2633000 	rsb	r3, r3, #0
     9f8:	e50b3010 	str	r3, [fp, #-16]
     9fc:	ea000001 	b	a08 <printint+0x5c>
     a00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a04:	e50b3010 	str	r3, [fp, #-16]
     a08:	e3a03000 	mov	r3, #0
     a0c:	e50b3008 	str	r3, [fp, #-8]
     a10:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a14:	e51b3010 	ldr	r3, [fp, #-16]
     a18:	e1a01002 	mov	r1, r2
     a1c:	e1a00003 	mov	r0, r3
     a20:	eb0001d5 	bl	117c <__aeabi_uidivmod>
     a24:	e1a03001 	mov	r3, r1
     a28:	e1a01003 	mov	r1, r3
     a2c:	e51b3008 	ldr	r3, [fp, #-8]
     a30:	e2832001 	add	r2, r3, #1
     a34:	e50b2008 	str	r2, [fp, #-8]
     a38:	e59f20a0 	ldr	r2, [pc, #160]	@ ae0 <printint+0x134>
     a3c:	e7d22001 	ldrb	r2, [r2, r1]
     a40:	e2433004 	sub	r3, r3, #4
     a44:	e083300b 	add	r3, r3, fp
     a48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a4c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a50:	e1a01003 	mov	r1, r3
     a54:	e51b0010 	ldr	r0, [fp, #-16]
     a58:	eb00018a 	bl	1088 <__udivsi3>
     a5c:	e1a03000 	mov	r3, r0
     a60:	e50b3010 	str	r3, [fp, #-16]
     a64:	e51b3010 	ldr	r3, [fp, #-16]
     a68:	e3530000 	cmp	r3, #0
     a6c:	1affffe7 	bne	a10 <printint+0x64>
     a70:	e51b300c 	ldr	r3, [fp, #-12]
     a74:	e3530000 	cmp	r3, #0
     a78:	0a00000e 	beq	ab8 <printint+0x10c>
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e2832001 	add	r2, r3, #1
     a84:	e50b2008 	str	r2, [fp, #-8]
     a88:	e2433004 	sub	r3, r3, #4
     a8c:	e083300b 	add	r3, r3, fp
     a90:	e3a0202d 	mov	r2, #45	@ 0x2d
     a94:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a98:	ea000006 	b	ab8 <printint+0x10c>
     a9c:	e24b2020 	sub	r2, fp, #32
     aa0:	e51b3008 	ldr	r3, [fp, #-8]
     aa4:	e0823003 	add	r3, r2, r3
     aa8:	e5d33000 	ldrb	r3, [r3]
     aac:	e1a01003 	mov	r1, r3
     ab0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ab4:	ebffffae 	bl	974 <putc>
     ab8:	e51b3008 	ldr	r3, [fp, #-8]
     abc:	e2433001 	sub	r3, r3, #1
     ac0:	e50b3008 	str	r3, [fp, #-8]
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e3530000 	cmp	r3, #0
     acc:	aafffff2 	bge	a9c <printint+0xf0>
     ad0:	e1a00000 	nop			@ (mov r0, r0)
     ad4:	e1a00000 	nop			@ (mov r0, r0)
     ad8:	e24bd004 	sub	sp, fp, #4
     adc:	e8bd8800 	pop	{fp, pc}
     ae0:	000011dc 	.word	0x000011dc

00000ae4 <printf>:
     ae4:	e92d000e 	push	{r1, r2, r3}
     ae8:	e92d4800 	push	{fp, lr}
     aec:	e28db004 	add	fp, sp, #4
     af0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     af4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     af8:	e3a03000 	mov	r3, #0
     afc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b00:	e28b3008 	add	r3, fp, #8
     b04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b08:	e3a03000 	mov	r3, #0
     b0c:	e50b3010 	str	r3, [fp, #-16]
     b10:	ea000074 	b	ce8 <printf+0x204>
     b14:	e59b2004 	ldr	r2, [fp, #4]
     b18:	e51b3010 	ldr	r3, [fp, #-16]
     b1c:	e0823003 	add	r3, r2, r3
     b20:	e5d33000 	ldrb	r3, [r3]
     b24:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b28:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b2c:	e3530000 	cmp	r3, #0
     b30:	1a00000b 	bne	b64 <printf+0x80>
     b34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b38:	e3530025 	cmp	r3, #37	@ 0x25
     b3c:	1a000002 	bne	b4c <printf+0x68>
     b40:	e3a03025 	mov	r3, #37	@ 0x25
     b44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b48:	ea000063 	b	cdc <printf+0x1f8>
     b4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b50:	e6ef3073 	uxtb	r3, r3
     b54:	e1a01003 	mov	r1, r3
     b58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b5c:	ebffff84 	bl	974 <putc>
     b60:	ea00005d 	b	cdc <printf+0x1f8>
     b64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b68:	e3530025 	cmp	r3, #37	@ 0x25
     b6c:	1a00005a 	bne	cdc <printf+0x1f8>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b74:	e3530064 	cmp	r3, #100	@ 0x64
     b78:	1a00000a 	bne	ba8 <printf+0xc4>
     b7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b80:	e5933000 	ldr	r3, [r3]
     b84:	e1a01003 	mov	r1, r3
     b88:	e3a03001 	mov	r3, #1
     b8c:	e3a0200a 	mov	r2, #10
     b90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b94:	ebffff84 	bl	9ac <printint>
     b98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	e2833004 	add	r3, r3, #4
     ba0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba4:	ea00004a 	b	cd4 <printf+0x1f0>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e3530078 	cmp	r3, #120	@ 0x78
     bb0:	0a000002 	beq	bc0 <printf+0xdc>
     bb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb8:	e3530070 	cmp	r3, #112	@ 0x70
     bbc:	1a00000a 	bne	bec <printf+0x108>
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	e5933000 	ldr	r3, [r3]
     bc8:	e1a01003 	mov	r1, r3
     bcc:	e3a03000 	mov	r3, #0
     bd0:	e3a02010 	mov	r2, #16
     bd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd8:	ebffff73 	bl	9ac <printint>
     bdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be0:	e2833004 	add	r3, r3, #4
     be4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be8:	ea000039 	b	cd4 <printf+0x1f0>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e3530073 	cmp	r3, #115	@ 0x73
     bf4:	1a000018 	bne	c5c <printf+0x178>
     bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bfc:	e5933000 	ldr	r3, [r3]
     c00:	e50b300c 	str	r3, [fp, #-12]
     c04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c08:	e2833004 	add	r3, r3, #4
     c0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e51b300c 	ldr	r3, [fp, #-12]
     c14:	e3530000 	cmp	r3, #0
     c18:	1a00000a 	bne	c48 <printf+0x164>
     c1c:	e59f30f4 	ldr	r3, [pc, #244]	@ d18 <printf+0x234>
     c20:	e50b300c 	str	r3, [fp, #-12]
     c24:	ea000007 	b	c48 <printf+0x164>
     c28:	e51b300c 	ldr	r3, [fp, #-12]
     c2c:	e5d33000 	ldrb	r3, [r3]
     c30:	e1a01003 	mov	r1, r3
     c34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c38:	ebffff4d 	bl	974 <putc>
     c3c:	e51b300c 	ldr	r3, [fp, #-12]
     c40:	e2833001 	add	r3, r3, #1
     c44:	e50b300c 	str	r3, [fp, #-12]
     c48:	e51b300c 	ldr	r3, [fp, #-12]
     c4c:	e5d33000 	ldrb	r3, [r3]
     c50:	e3530000 	cmp	r3, #0
     c54:	1afffff3 	bne	c28 <printf+0x144>
     c58:	ea00001d 	b	cd4 <printf+0x1f0>
     c5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c60:	e3530063 	cmp	r3, #99	@ 0x63
     c64:	1a000009 	bne	c90 <printf+0x1ac>
     c68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c6c:	e5933000 	ldr	r3, [r3]
     c70:	e6ef3073 	uxtb	r3, r3
     c74:	e1a01003 	mov	r1, r3
     c78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c7c:	ebffff3c 	bl	974 <putc>
     c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c84:	e2833004 	add	r3, r3, #4
     c88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c8c:	ea000010 	b	cd4 <printf+0x1f0>
     c90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c94:	e3530025 	cmp	r3, #37	@ 0x25
     c98:	1a000005 	bne	cb4 <printf+0x1d0>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e6ef3073 	uxtb	r3, r3
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cac:	ebffff30 	bl	974 <putc>
     cb0:	ea000007 	b	cd4 <printf+0x1f0>
     cb4:	e3a01025 	mov	r1, #37	@ 0x25
     cb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cbc:	ebffff2c 	bl	974 <putc>
     cc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc4:	e6ef3073 	uxtb	r3, r3
     cc8:	e1a01003 	mov	r1, r3
     ccc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd0:	ebffff27 	bl	974 <putc>
     cd4:	e3a03000 	mov	r3, #0
     cd8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cdc:	e51b3010 	ldr	r3, [fp, #-16]
     ce0:	e2833001 	add	r3, r3, #1
     ce4:	e50b3010 	str	r3, [fp, #-16]
     ce8:	e59b2004 	ldr	r2, [fp, #4]
     cec:	e51b3010 	ldr	r3, [fp, #-16]
     cf0:	e0823003 	add	r3, r2, r3
     cf4:	e5d33000 	ldrb	r3, [r3]
     cf8:	e3530000 	cmp	r3, #0
     cfc:	1affff84 	bne	b14 <printf+0x30>
     d00:	e1a00000 	nop			@ (mov r0, r0)
     d04:	e1a00000 	nop			@ (mov r0, r0)
     d08:	e24bd004 	sub	sp, fp, #4
     d0c:	e8bd4800 	pop	{fp, lr}
     d10:	e28dd00c 	add	sp, sp, #12
     d14:	e12fff1e 	bx	lr
     d18:	000011d4 	.word	0x000011d4

00000d1c <free>:
     d1c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d20:	e28db000 	add	fp, sp, #0
     d24:	e24dd014 	sub	sp, sp, #20
     d28:	e50b0010 	str	r0, [fp, #-16]
     d2c:	e51b3010 	ldr	r3, [fp, #-16]
     d30:	e2433008 	sub	r3, r3, #8
     d34:	e50b300c 	str	r3, [fp, #-12]
     d38:	e59f3154 	ldr	r3, [pc, #340]	@ e94 <free+0x178>
     d3c:	e5933000 	ldr	r3, [r3]
     d40:	e50b3008 	str	r3, [fp, #-8]
     d44:	ea000010 	b	d8c <free+0x70>
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e51b2008 	ldr	r2, [fp, #-8]
     d54:	e1520003 	cmp	r2, r3
     d58:	3a000008 	bcc	d80 <free+0x64>
     d5c:	e51b200c 	ldr	r2, [fp, #-12]
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e1520003 	cmp	r2, r3
     d68:	8a000010 	bhi	db0 <free+0x94>
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5933000 	ldr	r3, [r3]
     d74:	e51b200c 	ldr	r2, [fp, #-12]
     d78:	e1520003 	cmp	r2, r3
     d7c:	3a00000b 	bcc	db0 <free+0x94>
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933000 	ldr	r3, [r3]
     d88:	e50b3008 	str	r3, [fp, #-8]
     d8c:	e51b200c 	ldr	r2, [fp, #-12]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e1520003 	cmp	r2, r3
     d98:	9affffea 	bls	d48 <free+0x2c>
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5933000 	ldr	r3, [r3]
     da4:	e51b200c 	ldr	r2, [fp, #-12]
     da8:	e1520003 	cmp	r2, r3
     dac:	2affffe5 	bcs	d48 <free+0x2c>
     db0:	e51b300c 	ldr	r3, [fp, #-12]
     db4:	e5933004 	ldr	r3, [r3, #4]
     db8:	e1a03183 	lsl	r3, r3, #3
     dbc:	e51b200c 	ldr	r2, [fp, #-12]
     dc0:	e0822003 	add	r2, r2, r3
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e1520003 	cmp	r2, r3
     dd0:	1a00000d 	bne	e0c <free+0xf0>
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e5932004 	ldr	r2, [r3, #4]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e5933004 	ldr	r3, [r3, #4]
     de8:	e0822003 	add	r2, r2, r3
     dec:	e51b300c 	ldr	r3, [fp, #-12]
     df0:	e5832004 	str	r2, [r3, #4]
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e5932000 	ldr	r2, [r3]
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e5832000 	str	r2, [r3]
     e08:	ea000003 	b	e1c <free+0x100>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5932000 	ldr	r2, [r3]
     e14:	e51b300c 	ldr	r3, [fp, #-12]
     e18:	e5832000 	str	r2, [r3]
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5933004 	ldr	r3, [r3, #4]
     e24:	e1a03183 	lsl	r3, r3, #3
     e28:	e51b2008 	ldr	r2, [fp, #-8]
     e2c:	e0823003 	add	r3, r2, r3
     e30:	e51b200c 	ldr	r2, [fp, #-12]
     e34:	e1520003 	cmp	r2, r3
     e38:	1a00000b 	bne	e6c <free+0x150>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5932004 	ldr	r2, [r3, #4]
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e5933004 	ldr	r3, [r3, #4]
     e4c:	e0822003 	add	r2, r2, r3
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5832004 	str	r2, [r3, #4]
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e5932000 	ldr	r2, [r3]
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5832000 	str	r2, [r3]
     e68:	ea000002 	b	e78 <free+0x15c>
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e51b200c 	ldr	r2, [fp, #-12]
     e74:	e5832000 	str	r2, [r3]
     e78:	e59f2014 	ldr	r2, [pc, #20]	@ e94 <free+0x178>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5823000 	str	r3, [r2]
     e84:	e1a00000 	nop			@ (mov r0, r0)
     e88:	e28bd000 	add	sp, fp, #0
     e8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e90:	e12fff1e 	bx	lr
     e94:	000011f8 	.word	0x000011f8

00000e98 <morecore>:
     e98:	e92d4800 	push	{fp, lr}
     e9c:	e28db004 	add	fp, sp, #4
     ea0:	e24dd010 	sub	sp, sp, #16
     ea4:	e50b0010 	str	r0, [fp, #-16]
     ea8:	e51b3010 	ldr	r3, [fp, #-16]
     eac:	e3530a01 	cmp	r3, #4096	@ 0x1000
     eb0:	2a000001 	bcs	ebc <morecore+0x24>
     eb4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     eb8:	e50b3010 	str	r3, [fp, #-16]
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e1a03183 	lsl	r3, r3, #3
     ec4:	e1a00003 	mov	r0, r3
     ec8:	ebfffe6a 	bl	878 <sbrk>
     ecc:	e50b0008 	str	r0, [fp, #-8]
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e3730001 	cmn	r3, #1
     ed8:	1a000001 	bne	ee4 <morecore+0x4c>
     edc:	e3a03000 	mov	r3, #0
     ee0:	ea00000a 	b	f10 <morecore+0x78>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e51b300c 	ldr	r3, [fp, #-12]
     ef0:	e51b2010 	ldr	r2, [fp, #-16]
     ef4:	e5832004 	str	r2, [r3, #4]
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e2833008 	add	r3, r3, #8
     f00:	e1a00003 	mov	r0, r3
     f04:	ebffff84 	bl	d1c <free>
     f08:	e59f300c 	ldr	r3, [pc, #12]	@ f1c <morecore+0x84>
     f0c:	e5933000 	ldr	r3, [r3]
     f10:	e1a00003 	mov	r0, r3
     f14:	e24bd004 	sub	sp, fp, #4
     f18:	e8bd8800 	pop	{fp, pc}
     f1c:	000011f8 	.word	0x000011f8

00000f20 <malloc>:
     f20:	e92d4800 	push	{fp, lr}
     f24:	e28db004 	add	fp, sp, #4
     f28:	e24dd018 	sub	sp, sp, #24
     f2c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f34:	e2833007 	add	r3, r3, #7
     f38:	e1a031a3 	lsr	r3, r3, #3
     f3c:	e2833001 	add	r3, r3, #1
     f40:	e50b3010 	str	r3, [fp, #-16]
     f44:	e59f3134 	ldr	r3, [pc, #308]	@ 1080 <malloc+0x160>
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e50b300c 	str	r3, [fp, #-12]
     f50:	e51b300c 	ldr	r3, [fp, #-12]
     f54:	e3530000 	cmp	r3, #0
     f58:	1a00000b 	bne	f8c <malloc+0x6c>
     f5c:	e59f3120 	ldr	r3, [pc, #288]	@ 1084 <malloc+0x164>
     f60:	e50b300c 	str	r3, [fp, #-12]
     f64:	e59f2114 	ldr	r2, [pc, #276]	@ 1080 <malloc+0x160>
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5823000 	str	r3, [r2]
     f70:	e59f3108 	ldr	r3, [pc, #264]	@ 1080 <malloc+0x160>
     f74:	e5933000 	ldr	r3, [r3]
     f78:	e59f2104 	ldr	r2, [pc, #260]	@ 1084 <malloc+0x164>
     f7c:	e5823000 	str	r3, [r2]
     f80:	e59f30fc 	ldr	r3, [pc, #252]	@ 1084 <malloc+0x164>
     f84:	e3a02000 	mov	r2, #0
     f88:	e5832004 	str	r2, [r3, #4]
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e5933000 	ldr	r3, [r3]
     f94:	e50b3008 	str	r3, [fp, #-8]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5933004 	ldr	r3, [r3, #4]
     fa0:	e51b2010 	ldr	r2, [fp, #-16]
     fa4:	e1520003 	cmp	r2, r3
     fa8:	8a00001e 	bhi	1028 <malloc+0x108>
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5933004 	ldr	r3, [r3, #4]
     fb4:	e51b2010 	ldr	r2, [fp, #-16]
     fb8:	e1520003 	cmp	r2, r3
     fbc:	1a000004 	bne	fd4 <malloc+0xb4>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5932000 	ldr	r2, [r3]
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5832000 	str	r2, [r3]
     fd0:	ea00000e 	b	1010 <malloc+0xf0>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5932004 	ldr	r2, [r3, #4]
     fdc:	e51b3010 	ldr	r3, [fp, #-16]
     fe0:	e0422003 	sub	r2, r2, r3
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5832004 	str	r2, [r3, #4]
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5933004 	ldr	r3, [r3, #4]
     ff4:	e1a03183 	lsl	r3, r3, #3
     ff8:	e51b2008 	ldr	r2, [fp, #-8]
     ffc:	e0823003 	add	r3, r2, r3
    1000:	e50b3008 	str	r3, [fp, #-8]
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e51b2010 	ldr	r2, [fp, #-16]
    100c:	e5832004 	str	r2, [r3, #4]
    1010:	e59f2068 	ldr	r2, [pc, #104]	@ 1080 <malloc+0x160>
    1014:	e51b300c 	ldr	r3, [fp, #-12]
    1018:	e5823000 	str	r3, [r2]
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e2833008 	add	r3, r3, #8
    1024:	ea000012 	b	1074 <malloc+0x154>
    1028:	e59f3050 	ldr	r3, [pc, #80]	@ 1080 <malloc+0x160>
    102c:	e5933000 	ldr	r3, [r3]
    1030:	e51b2008 	ldr	r2, [fp, #-8]
    1034:	e1520003 	cmp	r2, r3
    1038:	1a000007 	bne	105c <malloc+0x13c>
    103c:	e51b0010 	ldr	r0, [fp, #-16]
    1040:	ebffff94 	bl	e98 <morecore>
    1044:	e50b0008 	str	r0, [fp, #-8]
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e3530000 	cmp	r3, #0
    1050:	1a000001 	bne	105c <malloc+0x13c>
    1054:	e3a03000 	mov	r3, #0
    1058:	ea000005 	b	1074 <malloc+0x154>
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e50b300c 	str	r3, [fp, #-12]
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e5933000 	ldr	r3, [r3]
    106c:	e50b3008 	str	r3, [fp, #-8]
    1070:	eaffffc8 	b	f98 <malloc+0x78>
    1074:	e1a00003 	mov	r0, r3
    1078:	e24bd004 	sub	sp, fp, #4
    107c:	e8bd8800 	pop	{fp, pc}
    1080:	000011f8 	.word	0x000011f8
    1084:	000011f0 	.word	0x000011f0

00001088 <__udivsi3>:
    1088:	e2512001 	subs	r2, r1, #1
    108c:	012fff1e 	bxeq	lr
    1090:	3a000036 	bcc	1170 <__udivsi3+0xe8>
    1094:	e1500001 	cmp	r0, r1
    1098:	9a000022 	bls	1128 <__udivsi3+0xa0>
    109c:	e1110002 	tst	r1, r2
    10a0:	0a000023 	beq	1134 <__udivsi3+0xac>
    10a4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10a8:	01a01181 	lsleq	r1, r1, #3
    10ac:	03a03008 	moveq	r3, #8
    10b0:	13a03001 	movne	r3, #1
    10b4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10b8:	31510000 	cmpcc	r1, r0
    10bc:	31a01201 	lslcc	r1, r1, #4
    10c0:	31a03203 	lslcc	r3, r3, #4
    10c4:	3afffffa 	bcc	10b4 <__udivsi3+0x2c>
    10c8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10cc:	31510000 	cmpcc	r1, r0
    10d0:	31a01081 	lslcc	r1, r1, #1
    10d4:	31a03083 	lslcc	r3, r3, #1
    10d8:	3afffffa 	bcc	10c8 <__udivsi3+0x40>
    10dc:	e3a02000 	mov	r2, #0
    10e0:	e1500001 	cmp	r0, r1
    10e4:	20400001 	subcs	r0, r0, r1
    10e8:	21822003 	orrcs	r2, r2, r3
    10ec:	e15000a1 	cmp	r0, r1, lsr #1
    10f0:	204000a1 	subcs	r0, r0, r1, lsr #1
    10f4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10f8:	e1500121 	cmp	r0, r1, lsr #2
    10fc:	20400121 	subcs	r0, r0, r1, lsr #2
    1100:	21822123 	orrcs	r2, r2, r3, lsr #2
    1104:	e15001a1 	cmp	r0, r1, lsr #3
    1108:	204001a1 	subcs	r0, r0, r1, lsr #3
    110c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1110:	e3500000 	cmp	r0, #0
    1114:	11b03223 	lsrsne	r3, r3, #4
    1118:	11a01221 	lsrne	r1, r1, #4
    111c:	1affffef 	bne	10e0 <__udivsi3+0x58>
    1120:	e1a00002 	mov	r0, r2
    1124:	e12fff1e 	bx	lr
    1128:	03a00001 	moveq	r0, #1
    112c:	13a00000 	movne	r0, #0
    1130:	e12fff1e 	bx	lr
    1134:	e3510801 	cmp	r1, #65536	@ 0x10000
    1138:	21a01821 	lsrcs	r1, r1, #16
    113c:	23a02010 	movcs	r2, #16
    1140:	33a02000 	movcc	r2, #0
    1144:	e3510c01 	cmp	r1, #256	@ 0x100
    1148:	21a01421 	lsrcs	r1, r1, #8
    114c:	22822008 	addcs	r2, r2, #8
    1150:	e3510010 	cmp	r1, #16
    1154:	21a01221 	lsrcs	r1, r1, #4
    1158:	22822004 	addcs	r2, r2, #4
    115c:	e3510004 	cmp	r1, #4
    1160:	82822003 	addhi	r2, r2, #3
    1164:	908220a1 	addls	r2, r2, r1, lsr #1
    1168:	e1a00230 	lsr	r0, r0, r2
    116c:	e12fff1e 	bx	lr
    1170:	e3500000 	cmp	r0, #0
    1174:	13e00000 	mvnne	r0, #0
    1178:	ea000007 	b	119c <__aeabi_idiv0>

0000117c <__aeabi_uidivmod>:
    117c:	e3510000 	cmp	r1, #0
    1180:	0afffffa 	beq	1170 <__udivsi3+0xe8>
    1184:	e92d4003 	push	{r0, r1, lr}
    1188:	ebffffbe 	bl	1088 <__udivsi3>
    118c:	e8bd4006 	pop	{r1, r2, lr}
    1190:	e0030092 	mul	r3, r2, r0
    1194:	e0411003 	sub	r1, r1, r3
    1198:	e12fff1e 	bx	lr

0000119c <__aeabi_idiv0>:
    119c:	e12fff1e 	bx	lr
