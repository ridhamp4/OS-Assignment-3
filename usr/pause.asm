
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb0002c5 	bl	b44 <printf>
      2c:	eb000190 	bl	674 <exit>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e1a00003 	mov	r0, r3
      40:	eb000144 	bl	558 <atoi>
      44:	e50b0008 	str	r0, [fp, #-8]
      48:	e51b3008 	ldr	r3, [fp, #-8]
      4c:	e3530000 	cmp	r3, #0
      50:	ca000007 	bgt	74 <main+0x74>
      54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      58:	e2833004 	add	r3, r3, #4
      5c:	e5933000 	ldr	r3, [r3]
      60:	e1a02003 	mov	r2, r3
      64:	e59f1044 	ldr	r1, [pc, #68]	@ b0 <main+0xb0>
      68:	e3a00002 	mov	r0, #2
      6c:	eb0002b4 	bl	b44 <printf>
      70:	eb00017f 	bl	674 <exit>
      74:	e51b2008 	ldr	r2, [fp, #-8]
      78:	e1a03002 	mov	r3, r2
      7c:	e1a03103 	lsl	r3, r3, #2
      80:	e0833002 	add	r3, r3, r2
      84:	e1a03083 	lsl	r3, r3, #1
      88:	e1a00003 	mov	r0, r3
      8c:	eb00021a 	bl	8fc <sleep>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	aa000002 	bge	a8 <main+0xa8>
      9c:	e59f1010 	ldr	r1, [pc, #16]	@ b4 <main+0xb4>
      a0:	e3a00002 	mov	r0, #2
      a4:	eb0002a6 	bl	b44 <printf>
      a8:	eb000171 	bl	674 <exit>
      ac:	00001200 	.word	0x00001200
      b0:	00001218 	.word	0x00001218
      b4:	00001234 	.word	0x00001234

000000b8 <strcpy>:
      b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      bc:	e28db000 	add	fp, sp, #0
      c0:	e24dd014 	sub	sp, sp, #20
      c4:	e50b0010 	str	r0, [fp, #-16]
      c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      cc:	e51b3010 	ldr	r3, [fp, #-16]
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e1a00000 	nop			@ (mov r0, r0)
      d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      dc:	e2823001 	add	r3, r2, #1
      e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e4:	e51b3010 	ldr	r3, [fp, #-16]
      e8:	e2831001 	add	r1, r3, #1
      ec:	e50b1010 	str	r1, [fp, #-16]
      f0:	e5d22000 	ldrb	r2, [r2]
      f4:	e5c32000 	strb	r2, [r3]
      f8:	e5d33000 	ldrb	r3, [r3]
      fc:	e3530000 	cmp	r3, #0
     100:	1afffff4 	bne	d8 <strcpy+0x20>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e1a00003 	mov	r0, r3
     10c:	e28bd000 	add	sp, fp, #0
     110:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     114:	e12fff1e 	bx	lr

00000118 <strncmp>:
     118:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     11c:	e28db000 	add	fp, sp, #0
     120:	e24dd014 	sub	sp, sp, #20
     124:	e50b0008 	str	r0, [fp, #-8]
     128:	e50b100c 	str	r1, [fp, #-12]
     12c:	e50b2010 	str	r2, [fp, #-16]
     130:	ea000008 	b	158 <strncmp+0x40>
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e2833001 	add	r3, r3, #1
     13c:	e50b3008 	str	r3, [fp, #-8]
     140:	e51b300c 	ldr	r3, [fp, #-12]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b300c 	str	r3, [fp, #-12]
     14c:	e51b3010 	ldr	r3, [fp, #-16]
     150:	e2433001 	sub	r3, r3, #1
     154:	e50b3010 	str	r3, [fp, #-16]
     158:	e51b3010 	ldr	r3, [fp, #-16]
     15c:	e3530000 	cmp	r3, #0
     160:	da00000d 	ble	19c <strncmp+0x84>
     164:	e51b3008 	ldr	r3, [fp, #-8]
     168:	e5d33000 	ldrb	r3, [r3]
     16c:	e3530000 	cmp	r3, #0
     170:	0a000009 	beq	19c <strncmp+0x84>
     174:	e51b300c 	ldr	r3, [fp, #-12]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	0a000005 	beq	19c <strncmp+0x84>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e5d32000 	ldrb	r2, [r3]
     18c:	e51b300c 	ldr	r3, [fp, #-12]
     190:	e5d33000 	ldrb	r3, [r3]
     194:	e1520003 	cmp	r2, r3
     198:	0affffe5 	beq	134 <strncmp+0x1c>
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1a000001 	bne	1b0 <strncmp+0x98>
     1a8:	e3a03000 	mov	r3, #0
     1ac:	ea000005 	b	1c8 <strncmp+0xb0>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e5d33000 	ldrb	r3, [r3]
     1b8:	e1a02003 	mov	r2, r3
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e0423003 	sub	r3, r2, r3
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <strcmp>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd00c 	sub	sp, sp, #12
     1e4:	e50b0008 	str	r0, [fp, #-8]
     1e8:	e50b100c 	str	r1, [fp, #-12]
     1ec:	ea000005 	b	208 <strcmp+0x30>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e2833001 	add	r3, r3, #1
     1f8:	e50b3008 	str	r3, [fp, #-8]
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e2833001 	add	r3, r3, #1
     204:	e50b300c 	str	r3, [fp, #-12]
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e3530000 	cmp	r3, #0
     214:	0a000005 	beq	230 <strcmp+0x58>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e5d32000 	ldrb	r2, [r3]
     220:	e51b300c 	ldr	r3, [fp, #-12]
     224:	e5d33000 	ldrb	r3, [r3]
     228:	e1520003 	cmp	r2, r3
     22c:	0affffef 	beq	1f0 <strcmp+0x18>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e5d33000 	ldrb	r3, [r3]
     238:	e1a02003 	mov	r2, r3
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e5d33000 	ldrb	r3, [r3]
     244:	e0423003 	sub	r3, r2, r3
     248:	e1a00003 	mov	r0, r3
     24c:	e28bd000 	add	sp, fp, #0
     250:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     254:	e12fff1e 	bx	lr

00000258 <strlen>:
     258:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     25c:	e28db000 	add	fp, sp, #0
     260:	e24dd014 	sub	sp, sp, #20
     264:	e50b0010 	str	r0, [fp, #-16]
     268:	e3a03000 	mov	r3, #0
     26c:	e50b3008 	str	r3, [fp, #-8]
     270:	ea000002 	b	280 <strlen+0x28>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2833001 	add	r3, r3, #1
     27c:	e50b3008 	str	r3, [fp, #-8]
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e51b2010 	ldr	r2, [fp, #-16]
     288:	e0823003 	add	r3, r2, r3
     28c:	e5d33000 	ldrb	r3, [r3]
     290:	e3530000 	cmp	r3, #0
     294:	1afffff6 	bne	274 <strlen+0x1c>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e1a00003 	mov	r0, r3
     2a0:	e28bd000 	add	sp, fp, #0
     2a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a8:	e12fff1e 	bx	lr

000002ac <memset>:
     2ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b0:	e28db000 	add	fp, sp, #0
     2b4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2b8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2bc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2c0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2d0:	e54b300d 	strb	r3, [fp, #-13]
     2d4:	e55b200d 	ldrb	r2, [fp, #-13]
     2d8:	e1a03002 	mov	r3, r2
     2dc:	e1a03403 	lsl	r3, r3, #8
     2e0:	e0833002 	add	r3, r3, r2
     2e4:	e1a03803 	lsl	r3, r3, #16
     2e8:	e1a02003 	mov	r2, r3
     2ec:	e55b300d 	ldrb	r3, [fp, #-13]
     2f0:	e1a03403 	lsl	r3, r3, #8
     2f4:	e1822003 	orr	r2, r2, r3
     2f8:	e55b300d 	ldrb	r3, [fp, #-13]
     2fc:	e1823003 	orr	r3, r2, r3
     300:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     304:	ea000008 	b	32c <memset+0x80>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e55b200d 	ldrb	r2, [fp, #-13]
     310:	e5c32000 	strb	r2, [r3]
     314:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     318:	e2433001 	sub	r3, r3, #1
     31c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e2833001 	add	r3, r3, #1
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     330:	e3530000 	cmp	r3, #0
     334:	0a000003 	beq	348 <memset+0x9c>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e2033003 	and	r3, r3, #3
     340:	e3530000 	cmp	r3, #0
     344:	1affffef 	bne	308 <memset+0x5c>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e50b300c 	str	r3, [fp, #-12]
     350:	ea000008 	b	378 <memset+0xcc>
     354:	e51b300c 	ldr	r3, [fp, #-12]
     358:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     35c:	e5832000 	str	r2, [r3]
     360:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     364:	e2433004 	sub	r3, r3, #4
     368:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e2833004 	add	r3, r3, #4
     374:	e50b300c 	str	r3, [fp, #-12]
     378:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     37c:	e3530003 	cmp	r3, #3
     380:	8afffff3 	bhi	354 <memset+0xa8>
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	ea000008 	b	3b4 <memset+0x108>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e55b200d 	ldrb	r2, [fp, #-13]
     398:	e5c32000 	strb	r2, [r3]
     39c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e2433001 	sub	r3, r3, #1
     3a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e2833001 	add	r3, r3, #1
     3b0:	e50b3008 	str	r3, [fp, #-8]
     3b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b8:	e3530000 	cmp	r3, #0
     3bc:	1afffff3 	bne	390 <memset+0xe4>
     3c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c4:	e1a00003 	mov	r0, r3
     3c8:	e28bd000 	add	sp, fp, #0
     3cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d0:	e12fff1e 	bx	lr

000003d4 <strchr>:
     3d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d8:	e28db000 	add	fp, sp, #0
     3dc:	e24dd00c 	sub	sp, sp, #12
     3e0:	e50b0008 	str	r0, [fp, #-8]
     3e4:	e1a03001 	mov	r3, r1
     3e8:	e54b3009 	strb	r3, [fp, #-9]
     3ec:	ea000009 	b	418 <strchr+0x44>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e5d33000 	ldrb	r3, [r3]
     3f8:	e55b2009 	ldrb	r2, [fp, #-9]
     3fc:	e1520003 	cmp	r2, r3
     400:	1a000001 	bne	40c <strchr+0x38>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	ea000007 	b	42c <strchr+0x58>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e2833001 	add	r3, r3, #1
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e5d33000 	ldrb	r3, [r3]
     420:	e3530000 	cmp	r3, #0
     424:	1afffff1 	bne	3f0 <strchr+0x1c>
     428:	e3a03000 	mov	r3, #0
     42c:	e1a00003 	mov	r0, r3
     430:	e28bd000 	add	sp, fp, #0
     434:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     438:	e12fff1e 	bx	lr

0000043c <gets>:
     43c:	e92d4800 	push	{fp, lr}
     440:	e28db004 	add	fp, sp, #4
     444:	e24dd018 	sub	sp, sp, #24
     448:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     44c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     450:	e3a03000 	mov	r3, #0
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea000016 	b	4b8 <gets+0x7c>
     45c:	e24b300d 	sub	r3, fp, #13
     460:	e3a02001 	mov	r2, #1
     464:	e1a01003 	mov	r1, r3
     468:	e3a00000 	mov	r0, #0
     46c:	eb00009b 	bl	6e0 <read>
     470:	e50b000c 	str	r0, [fp, #-12]
     474:	e51b300c 	ldr	r3, [fp, #-12]
     478:	e3530000 	cmp	r3, #0
     47c:	da000013 	ble	4d0 <gets+0x94>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e2832001 	add	r2, r3, #1
     488:	e50b2008 	str	r2, [fp, #-8]
     48c:	e1a02003 	mov	r2, r3
     490:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     494:	e0833002 	add	r3, r3, r2
     498:	e55b200d 	ldrb	r2, [fp, #-13]
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e55b300d 	ldrb	r3, [fp, #-13]
     4a4:	e353000a 	cmp	r3, #10
     4a8:	0a000009 	beq	4d4 <gets+0x98>
     4ac:	e55b300d 	ldrb	r3, [fp, #-13]
     4b0:	e353000d 	cmp	r3, #13
     4b4:	0a000006 	beq	4d4 <gets+0x98>
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e2833001 	add	r3, r3, #1
     4c0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4c4:	e1520003 	cmp	r2, r3
     4c8:	caffffe3 	bgt	45c <gets+0x20>
     4cc:	ea000000 	b	4d4 <gets+0x98>
     4d0:	e1a00000 	nop			@ (mov r0, r0)
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4dc:	e0823003 	add	r3, r2, r3
     4e0:	e3a02000 	mov	r2, #0
     4e4:	e5c32000 	strb	r2, [r3]
     4e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e24bd004 	sub	sp, fp, #4
     4f4:	e8bd8800 	pop	{fp, pc}

000004f8 <stat>:
     4f8:	e92d4800 	push	{fp, lr}
     4fc:	e28db004 	add	fp, sp, #4
     500:	e24dd010 	sub	sp, sp, #16
     504:	e50b0010 	str	r0, [fp, #-16]
     508:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     50c:	e3a01000 	mov	r1, #0
     510:	e51b0010 	ldr	r0, [fp, #-16]
     514:	eb00009e 	bl	794 <open>
     518:	e50b0008 	str	r0, [fp, #-8]
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e3530000 	cmp	r3, #0
     524:	aa000001 	bge	530 <stat+0x38>
     528:	e3e03000 	mvn	r3, #0
     52c:	ea000006 	b	54c <stat+0x54>
     530:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     534:	e51b0008 	ldr	r0, [fp, #-8]
     538:	eb0000b0 	bl	800 <fstat>
     53c:	e50b000c 	str	r0, [fp, #-12]
     540:	e51b0008 	ldr	r0, [fp, #-8]
     544:	eb000077 	bl	728 <close>
     548:	e51b300c 	ldr	r3, [fp, #-12]
     54c:	e1a00003 	mov	r0, r3
     550:	e24bd004 	sub	sp, fp, #4
     554:	e8bd8800 	pop	{fp, pc}

00000558 <atoi>:
     558:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     55c:	e28db000 	add	fp, sp, #0
     560:	e24dd014 	sub	sp, sp, #20
     564:	e50b0010 	str	r0, [fp, #-16]
     568:	e3a03000 	mov	r3, #0
     56c:	e50b3008 	str	r3, [fp, #-8]
     570:	ea00000c 	b	5a8 <atoi+0x50>
     574:	e51b2008 	ldr	r2, [fp, #-8]
     578:	e1a03002 	mov	r3, r2
     57c:	e1a03103 	lsl	r3, r3, #2
     580:	e0833002 	add	r3, r3, r2
     584:	e1a03083 	lsl	r3, r3, #1
     588:	e1a01003 	mov	r1, r3
     58c:	e51b3010 	ldr	r3, [fp, #-16]
     590:	e2832001 	add	r2, r3, #1
     594:	e50b2010 	str	r2, [fp, #-16]
     598:	e5d33000 	ldrb	r3, [r3]
     59c:	e0813003 	add	r3, r1, r3
     5a0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5a4:	e50b3008 	str	r3, [fp, #-8]
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e5d33000 	ldrb	r3, [r3]
     5b0:	e353002f 	cmp	r3, #47	@ 0x2f
     5b4:	9a000003 	bls	5c8 <atoi+0x70>
     5b8:	e51b3010 	ldr	r3, [fp, #-16]
     5bc:	e5d33000 	ldrb	r3, [r3]
     5c0:	e3530039 	cmp	r3, #57	@ 0x39
     5c4:	9affffea 	bls	574 <atoi+0x1c>
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e1a00003 	mov	r0, r3
     5d0:	e28bd000 	add	sp, fp, #0
     5d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <memmove>:
     5dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e0:	e28db000 	add	fp, sp, #0
     5e4:	e24dd01c 	sub	sp, sp, #28
     5e8:	e50b0010 	str	r0, [fp, #-16]
     5ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f4:	e51b3010 	ldr	r3, [fp, #-16]
     5f8:	e50b3008 	str	r3, [fp, #-8]
     5fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     600:	e50b300c 	str	r3, [fp, #-12]
     604:	ea000007 	b	628 <memmove+0x4c>
     608:	e51b200c 	ldr	r2, [fp, #-12]
     60c:	e2823001 	add	r3, r2, #1
     610:	e50b300c 	str	r3, [fp, #-12]
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e2831001 	add	r1, r3, #1
     61c:	e50b1008 	str	r1, [fp, #-8]
     620:	e5d22000 	ldrb	r2, [r2]
     624:	e5c32000 	strb	r2, [r3]
     628:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     62c:	e2432001 	sub	r2, r3, #1
     630:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     634:	e3530000 	cmp	r3, #0
     638:	cafffff2 	bgt	608 <memmove+0x2c>
     63c:	e51b3010 	ldr	r3, [fp, #-16]
     640:	e1a00003 	mov	r0, r3
     644:	e28bd000 	add	sp, fp, #0
     648:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <fork>:
     650:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     654:	e1a04003 	mov	r4, r3
     658:	e1a03002 	mov	r3, r2
     65c:	e1a02001 	mov	r2, r1
     660:	e1a01000 	mov	r1, r0
     664:	e3a00001 	mov	r0, #1
     668:	ef000000 	svc	0x00000000
     66c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <exit>:
     674:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     678:	e1a04003 	mov	r4, r3
     67c:	e1a03002 	mov	r3, r2
     680:	e1a02001 	mov	r2, r1
     684:	e1a01000 	mov	r1, r0
     688:	e3a00002 	mov	r0, #2
     68c:	ef000000 	svc	0x00000000
     690:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <wait>:
     698:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     69c:	e1a04003 	mov	r4, r3
     6a0:	e1a03002 	mov	r3, r2
     6a4:	e1a02001 	mov	r2, r1
     6a8:	e1a01000 	mov	r1, r0
     6ac:	e3a00003 	mov	r0, #3
     6b0:	ef000000 	svc	0x00000000
     6b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <pipe>:
     6bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c0:	e1a04003 	mov	r4, r3
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a02001 	mov	r2, r1
     6cc:	e1a01000 	mov	r1, r0
     6d0:	e3a00004 	mov	r0, #4
     6d4:	ef000000 	svc	0x00000000
     6d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <read>:
     6e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e4:	e1a04003 	mov	r4, r3
     6e8:	e1a03002 	mov	r3, r2
     6ec:	e1a02001 	mov	r2, r1
     6f0:	e1a01000 	mov	r1, r0
     6f4:	e3a00005 	mov	r0, #5
     6f8:	ef000000 	svc	0x00000000
     6fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <write>:
     704:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     708:	e1a04003 	mov	r4, r3
     70c:	e1a03002 	mov	r3, r2
     710:	e1a02001 	mov	r2, r1
     714:	e1a01000 	mov	r1, r0
     718:	e3a00010 	mov	r0, #16
     71c:	ef000000 	svc	0x00000000
     720:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <close>:
     728:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a00015 	mov	r0, #21
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <kill>:
     74c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a00006 	mov	r0, #6
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <exec>:
     770:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00007 	mov	r0, #7
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <open>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a0000f 	mov	r0, #15
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <mknod>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00011 	mov	r0, #17
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <unlink>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00012 	mov	r0, #18
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <fstat>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00008 	mov	r0, #8
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <link>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a00013 	mov	r0, #19
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <mkdir>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00014 	mov	r0, #20
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <chdir>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a00009 	mov	r0, #9
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <dup>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a0000a 	mov	r0, #10
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <getpid>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a0000b 	mov	r0, #11
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <sbrk>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a0000c 	mov	r0, #12
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <sleep>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a0000d 	mov	r0, #13
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <uptime>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a0000e 	mov	r0, #14
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <ps>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00016 	mov	r0, #22
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <settickets>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00017 	mov	r0, #23
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <srand>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00018 	mov	r0, #24
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <getpinfo>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00019 	mov	r0, #25
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <putc>:
     9d4:	e92d4800 	push	{fp, lr}
     9d8:	e28db004 	add	fp, sp, #4
     9dc:	e24dd008 	sub	sp, sp, #8
     9e0:	e50b0008 	str	r0, [fp, #-8]
     9e4:	e1a03001 	mov	r3, r1
     9e8:	e54b3009 	strb	r3, [fp, #-9]
     9ec:	e24b3009 	sub	r3, fp, #9
     9f0:	e3a02001 	mov	r2, #1
     9f4:	e1a01003 	mov	r1, r3
     9f8:	e51b0008 	ldr	r0, [fp, #-8]
     9fc:	ebffff40 	bl	704 <write>
     a00:	e1a00000 	nop			@ (mov r0, r0)
     a04:	e24bd004 	sub	sp, fp, #4
     a08:	e8bd8800 	pop	{fp, pc}

00000a0c <printint>:
     a0c:	e92d4800 	push	{fp, lr}
     a10:	e28db004 	add	fp, sp, #4
     a14:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a18:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a1c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a20:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a24:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a28:	e3a03000 	mov	r3, #0
     a2c:	e50b300c 	str	r3, [fp, #-12]
     a30:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a34:	e3530000 	cmp	r3, #0
     a38:	0a000008 	beq	a60 <printint+0x54>
     a3c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a40:	e3530000 	cmp	r3, #0
     a44:	aa000005 	bge	a60 <printint+0x54>
     a48:	e3a03001 	mov	r3, #1
     a4c:	e50b300c 	str	r3, [fp, #-12]
     a50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a54:	e2633000 	rsb	r3, r3, #0
     a58:	e50b3010 	str	r3, [fp, #-16]
     a5c:	ea000001 	b	a68 <printint+0x5c>
     a60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a64:	e50b3010 	str	r3, [fp, #-16]
     a68:	e3a03000 	mov	r3, #0
     a6c:	e50b3008 	str	r3, [fp, #-8]
     a70:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a74:	e51b3010 	ldr	r3, [fp, #-16]
     a78:	e1a01002 	mov	r1, r2
     a7c:	e1a00003 	mov	r0, r3
     a80:	eb0001d5 	bl	11dc <__aeabi_uidivmod>
     a84:	e1a03001 	mov	r3, r1
     a88:	e1a01003 	mov	r1, r3
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e2832001 	add	r2, r3, #1
     a94:	e50b2008 	str	r2, [fp, #-8]
     a98:	e59f20a0 	ldr	r2, [pc, #160]	@ b40 <printint+0x134>
     a9c:	e7d22001 	ldrb	r2, [r2, r1]
     aa0:	e2433004 	sub	r3, r3, #4
     aa4:	e083300b 	add	r3, r3, fp
     aa8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aac:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ab0:	e1a01003 	mov	r1, r3
     ab4:	e51b0010 	ldr	r0, [fp, #-16]
     ab8:	eb00018a 	bl	10e8 <__udivsi3>
     abc:	e1a03000 	mov	r3, r0
     ac0:	e50b3010 	str	r3, [fp, #-16]
     ac4:	e51b3010 	ldr	r3, [fp, #-16]
     ac8:	e3530000 	cmp	r3, #0
     acc:	1affffe7 	bne	a70 <printint+0x64>
     ad0:	e51b300c 	ldr	r3, [fp, #-12]
     ad4:	e3530000 	cmp	r3, #0
     ad8:	0a00000e 	beq	b18 <printint+0x10c>
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e2832001 	add	r2, r3, #1
     ae4:	e50b2008 	str	r2, [fp, #-8]
     ae8:	e2433004 	sub	r3, r3, #4
     aec:	e083300b 	add	r3, r3, fp
     af0:	e3a0202d 	mov	r2, #45	@ 0x2d
     af4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     af8:	ea000006 	b	b18 <printint+0x10c>
     afc:	e24b2020 	sub	r2, fp, #32
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e0823003 	add	r3, r2, r3
     b08:	e5d33000 	ldrb	r3, [r3]
     b0c:	e1a01003 	mov	r1, r3
     b10:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b14:	ebffffae 	bl	9d4 <putc>
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e2433001 	sub	r3, r3, #1
     b20:	e50b3008 	str	r3, [fp, #-8]
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e3530000 	cmp	r3, #0
     b2c:	aafffff2 	bge	afc <printint+0xf0>
     b30:	e1a00000 	nop			@ (mov r0, r0)
     b34:	e1a00000 	nop			@ (mov r0, r0)
     b38:	e24bd004 	sub	sp, fp, #4
     b3c:	e8bd8800 	pop	{fp, pc}
     b40:	00001254 	.word	0x00001254

00000b44 <printf>:
     b44:	e92d000e 	push	{r1, r2, r3}
     b48:	e92d4800 	push	{fp, lr}
     b4c:	e28db004 	add	fp, sp, #4
     b50:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b54:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b58:	e3a03000 	mov	r3, #0
     b5c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b60:	e28b3008 	add	r3, fp, #8
     b64:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b68:	e3a03000 	mov	r3, #0
     b6c:	e50b3010 	str	r3, [fp, #-16]
     b70:	ea000074 	b	d48 <printf+0x204>
     b74:	e59b2004 	ldr	r2, [fp, #4]
     b78:	e51b3010 	ldr	r3, [fp, #-16]
     b7c:	e0823003 	add	r3, r2, r3
     b80:	e5d33000 	ldrb	r3, [r3]
     b84:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b8c:	e3530000 	cmp	r3, #0
     b90:	1a00000b 	bne	bc4 <printf+0x80>
     b94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b98:	e3530025 	cmp	r3, #37	@ 0x25
     b9c:	1a000002 	bne	bac <printf+0x68>
     ba0:	e3a03025 	mov	r3, #37	@ 0x25
     ba4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ba8:	ea000063 	b	d3c <printf+0x1f8>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e6ef3073 	uxtb	r3, r3
     bb4:	e1a01003 	mov	r1, r3
     bb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bbc:	ebffff84 	bl	9d4 <putc>
     bc0:	ea00005d 	b	d3c <printf+0x1f8>
     bc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bc8:	e3530025 	cmp	r3, #37	@ 0x25
     bcc:	1a00005a 	bne	d3c <printf+0x1f8>
     bd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd4:	e3530064 	cmp	r3, #100	@ 0x64
     bd8:	1a00000a 	bne	c08 <printf+0xc4>
     bdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be0:	e5933000 	ldr	r3, [r3]
     be4:	e1a01003 	mov	r1, r3
     be8:	e3a03001 	mov	r3, #1
     bec:	e3a0200a 	mov	r2, #10
     bf0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf4:	ebffff84 	bl	a0c <printint>
     bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bfc:	e2833004 	add	r3, r3, #4
     c00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c04:	ea00004a 	b	d34 <printf+0x1f0>
     c08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c0c:	e3530078 	cmp	r3, #120	@ 0x78
     c10:	0a000002 	beq	c20 <printf+0xdc>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e3530070 	cmp	r3, #112	@ 0x70
     c1c:	1a00000a 	bne	c4c <printf+0x108>
     c20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c24:	e5933000 	ldr	r3, [r3]
     c28:	e1a01003 	mov	r1, r3
     c2c:	e3a03000 	mov	r3, #0
     c30:	e3a02010 	mov	r2, #16
     c34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c38:	ebffff73 	bl	a0c <printint>
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c40:	e2833004 	add	r3, r3, #4
     c44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c48:	ea000039 	b	d34 <printf+0x1f0>
     c4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c50:	e3530073 	cmp	r3, #115	@ 0x73
     c54:	1a000018 	bne	cbc <printf+0x178>
     c58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c5c:	e5933000 	ldr	r3, [r3]
     c60:	e50b300c 	str	r3, [fp, #-12]
     c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c68:	e2833004 	add	r3, r3, #4
     c6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e51b300c 	ldr	r3, [fp, #-12]
     c74:	e3530000 	cmp	r3, #0
     c78:	1a00000a 	bne	ca8 <printf+0x164>
     c7c:	e59f30f4 	ldr	r3, [pc, #244]	@ d78 <printf+0x234>
     c80:	e50b300c 	str	r3, [fp, #-12]
     c84:	ea000007 	b	ca8 <printf+0x164>
     c88:	e51b300c 	ldr	r3, [fp, #-12]
     c8c:	e5d33000 	ldrb	r3, [r3]
     c90:	e1a01003 	mov	r1, r3
     c94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c98:	ebffff4d 	bl	9d4 <putc>
     c9c:	e51b300c 	ldr	r3, [fp, #-12]
     ca0:	e2833001 	add	r3, r3, #1
     ca4:	e50b300c 	str	r3, [fp, #-12]
     ca8:	e51b300c 	ldr	r3, [fp, #-12]
     cac:	e5d33000 	ldrb	r3, [r3]
     cb0:	e3530000 	cmp	r3, #0
     cb4:	1afffff3 	bne	c88 <printf+0x144>
     cb8:	ea00001d 	b	d34 <printf+0x1f0>
     cbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc0:	e3530063 	cmp	r3, #99	@ 0x63
     cc4:	1a000009 	bne	cf0 <printf+0x1ac>
     cc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e6ef3073 	uxtb	r3, r3
     cd4:	e1a01003 	mov	r1, r3
     cd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cdc:	ebffff3c 	bl	9d4 <putc>
     ce0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce4:	e2833004 	add	r3, r3, #4
     ce8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cec:	ea000010 	b	d34 <printf+0x1f0>
     cf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf4:	e3530025 	cmp	r3, #37	@ 0x25
     cf8:	1a000005 	bne	d14 <printf+0x1d0>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e6ef3073 	uxtb	r3, r3
     d04:	e1a01003 	mov	r1, r3
     d08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d0c:	ebffff30 	bl	9d4 <putc>
     d10:	ea000007 	b	d34 <printf+0x1f0>
     d14:	e3a01025 	mov	r1, #37	@ 0x25
     d18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d1c:	ebffff2c 	bl	9d4 <putc>
     d20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d24:	e6ef3073 	uxtb	r3, r3
     d28:	e1a01003 	mov	r1, r3
     d2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d30:	ebffff27 	bl	9d4 <putc>
     d34:	e3a03000 	mov	r3, #0
     d38:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d3c:	e51b3010 	ldr	r3, [fp, #-16]
     d40:	e2833001 	add	r3, r3, #1
     d44:	e50b3010 	str	r3, [fp, #-16]
     d48:	e59b2004 	ldr	r2, [fp, #4]
     d4c:	e51b3010 	ldr	r3, [fp, #-16]
     d50:	e0823003 	add	r3, r2, r3
     d54:	e5d33000 	ldrb	r3, [r3]
     d58:	e3530000 	cmp	r3, #0
     d5c:	1affff84 	bne	b74 <printf+0x30>
     d60:	e1a00000 	nop			@ (mov r0, r0)
     d64:	e1a00000 	nop			@ (mov r0, r0)
     d68:	e24bd004 	sub	sp, fp, #4
     d6c:	e8bd4800 	pop	{fp, lr}
     d70:	e28dd00c 	add	sp, sp, #12
     d74:	e12fff1e 	bx	lr
     d78:	0000124c 	.word	0x0000124c

00000d7c <free>:
     d7c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d80:	e28db000 	add	fp, sp, #0
     d84:	e24dd014 	sub	sp, sp, #20
     d88:	e50b0010 	str	r0, [fp, #-16]
     d8c:	e51b3010 	ldr	r3, [fp, #-16]
     d90:	e2433008 	sub	r3, r3, #8
     d94:	e50b300c 	str	r3, [fp, #-12]
     d98:	e59f3154 	ldr	r3, [pc, #340]	@ ef4 <free+0x178>
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e50b3008 	str	r3, [fp, #-8]
     da4:	ea000010 	b	dec <free+0x70>
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e51b2008 	ldr	r2, [fp, #-8]
     db4:	e1520003 	cmp	r2, r3
     db8:	3a000008 	bcc	de0 <free+0x64>
     dbc:	e51b200c 	ldr	r2, [fp, #-12]
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	8a000010 	bhi	e10 <free+0x94>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5933000 	ldr	r3, [r3]
     dd4:	e51b200c 	ldr	r2, [fp, #-12]
     dd8:	e1520003 	cmp	r2, r3
     ddc:	3a00000b 	bcc	e10 <free+0x94>
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5933000 	ldr	r3, [r3]
     de8:	e50b3008 	str	r3, [fp, #-8]
     dec:	e51b200c 	ldr	r2, [fp, #-12]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e1520003 	cmp	r2, r3
     df8:	9affffea 	bls	da8 <free+0x2c>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e51b200c 	ldr	r2, [fp, #-12]
     e08:	e1520003 	cmp	r2, r3
     e0c:	2affffe5 	bcs	da8 <free+0x2c>
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5933004 	ldr	r3, [r3, #4]
     e18:	e1a03183 	lsl	r3, r3, #3
     e1c:	e51b200c 	ldr	r2, [fp, #-12]
     e20:	e0822003 	add	r2, r2, r3
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e5933000 	ldr	r3, [r3]
     e2c:	e1520003 	cmp	r2, r3
     e30:	1a00000d 	bne	e6c <free+0xf0>
     e34:	e51b300c 	ldr	r3, [fp, #-12]
     e38:	e5932004 	ldr	r2, [r3, #4]
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e5933004 	ldr	r3, [r3, #4]
     e48:	e0822003 	add	r2, r2, r3
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e5832004 	str	r2, [r3, #4]
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e5932000 	ldr	r2, [r3]
     e60:	e51b300c 	ldr	r3, [fp, #-12]
     e64:	e5832000 	str	r2, [r3]
     e68:	ea000003 	b	e7c <free+0x100>
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e5932000 	ldr	r2, [r3]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5832000 	str	r2, [r3]
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5933004 	ldr	r3, [r3, #4]
     e84:	e1a03183 	lsl	r3, r3, #3
     e88:	e51b2008 	ldr	r2, [fp, #-8]
     e8c:	e0823003 	add	r3, r2, r3
     e90:	e51b200c 	ldr	r2, [fp, #-12]
     e94:	e1520003 	cmp	r2, r3
     e98:	1a00000b 	bne	ecc <free+0x150>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5932004 	ldr	r2, [r3, #4]
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e5933004 	ldr	r3, [r3, #4]
     eac:	e0822003 	add	r2, r2, r3
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5832004 	str	r2, [r3, #4]
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e5932000 	ldr	r2, [r3]
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e5832000 	str	r2, [r3]
     ec8:	ea000002 	b	ed8 <free+0x15c>
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e51b200c 	ldr	r2, [fp, #-12]
     ed4:	e5832000 	str	r2, [r3]
     ed8:	e59f2014 	ldr	r2, [pc, #20]	@ ef4 <free+0x178>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5823000 	str	r3, [r2]
     ee4:	e1a00000 	nop			@ (mov r0, r0)
     ee8:	e28bd000 	add	sp, fp, #0
     eec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ef0:	e12fff1e 	bx	lr
     ef4:	00001270 	.word	0x00001270

00000ef8 <morecore>:
     ef8:	e92d4800 	push	{fp, lr}
     efc:	e28db004 	add	fp, sp, #4
     f00:	e24dd010 	sub	sp, sp, #16
     f04:	e50b0010 	str	r0, [fp, #-16]
     f08:	e51b3010 	ldr	r3, [fp, #-16]
     f0c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f10:	2a000001 	bcs	f1c <morecore+0x24>
     f14:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f18:	e50b3010 	str	r3, [fp, #-16]
     f1c:	e51b3010 	ldr	r3, [fp, #-16]
     f20:	e1a03183 	lsl	r3, r3, #3
     f24:	e1a00003 	mov	r0, r3
     f28:	ebfffe6a 	bl	8d8 <sbrk>
     f2c:	e50b0008 	str	r0, [fp, #-8]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e3730001 	cmn	r3, #1
     f38:	1a000001 	bne	f44 <morecore+0x4c>
     f3c:	e3a03000 	mov	r3, #0
     f40:	ea00000a 	b	f70 <morecore+0x78>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e50b300c 	str	r3, [fp, #-12]
     f4c:	e51b300c 	ldr	r3, [fp, #-12]
     f50:	e51b2010 	ldr	r2, [fp, #-16]
     f54:	e5832004 	str	r2, [r3, #4]
     f58:	e51b300c 	ldr	r3, [fp, #-12]
     f5c:	e2833008 	add	r3, r3, #8
     f60:	e1a00003 	mov	r0, r3
     f64:	ebffff84 	bl	d7c <free>
     f68:	e59f300c 	ldr	r3, [pc, #12]	@ f7c <morecore+0x84>
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e1a00003 	mov	r0, r3
     f74:	e24bd004 	sub	sp, fp, #4
     f78:	e8bd8800 	pop	{fp, pc}
     f7c:	00001270 	.word	0x00001270

00000f80 <malloc>:
     f80:	e92d4800 	push	{fp, lr}
     f84:	e28db004 	add	fp, sp, #4
     f88:	e24dd018 	sub	sp, sp, #24
     f8c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f94:	e2833007 	add	r3, r3, #7
     f98:	e1a031a3 	lsr	r3, r3, #3
     f9c:	e2833001 	add	r3, r3, #1
     fa0:	e50b3010 	str	r3, [fp, #-16]
     fa4:	e59f3134 	ldr	r3, [pc, #308]	@ 10e0 <malloc+0x160>
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e50b300c 	str	r3, [fp, #-12]
     fb0:	e51b300c 	ldr	r3, [fp, #-12]
     fb4:	e3530000 	cmp	r3, #0
     fb8:	1a00000b 	bne	fec <malloc+0x6c>
     fbc:	e59f3120 	ldr	r3, [pc, #288]	@ 10e4 <malloc+0x164>
     fc0:	e50b300c 	str	r3, [fp, #-12]
     fc4:	e59f2114 	ldr	r2, [pc, #276]	@ 10e0 <malloc+0x160>
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5823000 	str	r3, [r2]
     fd0:	e59f3108 	ldr	r3, [pc, #264]	@ 10e0 <malloc+0x160>
     fd4:	e5933000 	ldr	r3, [r3]
     fd8:	e59f2104 	ldr	r2, [pc, #260]	@ 10e4 <malloc+0x164>
     fdc:	e5823000 	str	r3, [r2]
     fe0:	e59f30fc 	ldr	r3, [pc, #252]	@ 10e4 <malloc+0x164>
     fe4:	e3a02000 	mov	r2, #0
     fe8:	e5832004 	str	r2, [r3, #4]
     fec:	e51b300c 	ldr	r3, [fp, #-12]
     ff0:	e5933000 	ldr	r3, [r3]
     ff4:	e50b3008 	str	r3, [fp, #-8]
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e5933004 	ldr	r3, [r3, #4]
    1000:	e51b2010 	ldr	r2, [fp, #-16]
    1004:	e1520003 	cmp	r2, r3
    1008:	8a00001e 	bhi	1088 <malloc+0x108>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5933004 	ldr	r3, [r3, #4]
    1014:	e51b2010 	ldr	r2, [fp, #-16]
    1018:	e1520003 	cmp	r2, r3
    101c:	1a000004 	bne	1034 <malloc+0xb4>
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5932000 	ldr	r2, [r3]
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e5832000 	str	r2, [r3]
    1030:	ea00000e 	b	1070 <malloc+0xf0>
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e5932004 	ldr	r2, [r3, #4]
    103c:	e51b3010 	ldr	r3, [fp, #-16]
    1040:	e0422003 	sub	r2, r2, r3
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5832004 	str	r2, [r3, #4]
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5933004 	ldr	r3, [r3, #4]
    1054:	e1a03183 	lsl	r3, r3, #3
    1058:	e51b2008 	ldr	r2, [fp, #-8]
    105c:	e0823003 	add	r3, r2, r3
    1060:	e50b3008 	str	r3, [fp, #-8]
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e51b2010 	ldr	r2, [fp, #-16]
    106c:	e5832004 	str	r2, [r3, #4]
    1070:	e59f2068 	ldr	r2, [pc, #104]	@ 10e0 <malloc+0x160>
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e5823000 	str	r3, [r2]
    107c:	e51b3008 	ldr	r3, [fp, #-8]
    1080:	e2833008 	add	r3, r3, #8
    1084:	ea000012 	b	10d4 <malloc+0x154>
    1088:	e59f3050 	ldr	r3, [pc, #80]	@ 10e0 <malloc+0x160>
    108c:	e5933000 	ldr	r3, [r3]
    1090:	e51b2008 	ldr	r2, [fp, #-8]
    1094:	e1520003 	cmp	r2, r3
    1098:	1a000007 	bne	10bc <malloc+0x13c>
    109c:	e51b0010 	ldr	r0, [fp, #-16]
    10a0:	ebffff94 	bl	ef8 <morecore>
    10a4:	e50b0008 	str	r0, [fp, #-8]
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e3530000 	cmp	r3, #0
    10b0:	1a000001 	bne	10bc <malloc+0x13c>
    10b4:	e3a03000 	mov	r3, #0
    10b8:	ea000005 	b	10d4 <malloc+0x154>
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e50b300c 	str	r3, [fp, #-12]
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5933000 	ldr	r3, [r3]
    10cc:	e50b3008 	str	r3, [fp, #-8]
    10d0:	eaffffc8 	b	ff8 <malloc+0x78>
    10d4:	e1a00003 	mov	r0, r3
    10d8:	e24bd004 	sub	sp, fp, #4
    10dc:	e8bd8800 	pop	{fp, pc}
    10e0:	00001270 	.word	0x00001270
    10e4:	00001268 	.word	0x00001268

000010e8 <__udivsi3>:
    10e8:	e2512001 	subs	r2, r1, #1
    10ec:	012fff1e 	bxeq	lr
    10f0:	3a000036 	bcc	11d0 <__udivsi3+0xe8>
    10f4:	e1500001 	cmp	r0, r1
    10f8:	9a000022 	bls	1188 <__udivsi3+0xa0>
    10fc:	e1110002 	tst	r1, r2
    1100:	0a000023 	beq	1194 <__udivsi3+0xac>
    1104:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1108:	01a01181 	lsleq	r1, r1, #3
    110c:	03a03008 	moveq	r3, #8
    1110:	13a03001 	movne	r3, #1
    1114:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1118:	31510000 	cmpcc	r1, r0
    111c:	31a01201 	lslcc	r1, r1, #4
    1120:	31a03203 	lslcc	r3, r3, #4
    1124:	3afffffa 	bcc	1114 <__udivsi3+0x2c>
    1128:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    112c:	31510000 	cmpcc	r1, r0
    1130:	31a01081 	lslcc	r1, r1, #1
    1134:	31a03083 	lslcc	r3, r3, #1
    1138:	3afffffa 	bcc	1128 <__udivsi3+0x40>
    113c:	e3a02000 	mov	r2, #0
    1140:	e1500001 	cmp	r0, r1
    1144:	20400001 	subcs	r0, r0, r1
    1148:	21822003 	orrcs	r2, r2, r3
    114c:	e15000a1 	cmp	r0, r1, lsr #1
    1150:	204000a1 	subcs	r0, r0, r1, lsr #1
    1154:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1158:	e1500121 	cmp	r0, r1, lsr #2
    115c:	20400121 	subcs	r0, r0, r1, lsr #2
    1160:	21822123 	orrcs	r2, r2, r3, lsr #2
    1164:	e15001a1 	cmp	r0, r1, lsr #3
    1168:	204001a1 	subcs	r0, r0, r1, lsr #3
    116c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1170:	e3500000 	cmp	r0, #0
    1174:	11b03223 	lsrsne	r3, r3, #4
    1178:	11a01221 	lsrne	r1, r1, #4
    117c:	1affffef 	bne	1140 <__udivsi3+0x58>
    1180:	e1a00002 	mov	r0, r2
    1184:	e12fff1e 	bx	lr
    1188:	03a00001 	moveq	r0, #1
    118c:	13a00000 	movne	r0, #0
    1190:	e12fff1e 	bx	lr
    1194:	e3510801 	cmp	r1, #65536	@ 0x10000
    1198:	21a01821 	lsrcs	r1, r1, #16
    119c:	23a02010 	movcs	r2, #16
    11a0:	33a02000 	movcc	r2, #0
    11a4:	e3510c01 	cmp	r1, #256	@ 0x100
    11a8:	21a01421 	lsrcs	r1, r1, #8
    11ac:	22822008 	addcs	r2, r2, #8
    11b0:	e3510010 	cmp	r1, #16
    11b4:	21a01221 	lsrcs	r1, r1, #4
    11b8:	22822004 	addcs	r2, r2, #4
    11bc:	e3510004 	cmp	r1, #4
    11c0:	82822003 	addhi	r2, r2, #3
    11c4:	908220a1 	addls	r2, r2, r1, lsr #1
    11c8:	e1a00230 	lsr	r0, r0, r2
    11cc:	e12fff1e 	bx	lr
    11d0:	e3500000 	cmp	r0, #0
    11d4:	13e00000 	mvnne	r0, #0
    11d8:	ea000007 	b	11fc <__aeabi_idiv0>

000011dc <__aeabi_uidivmod>:
    11dc:	e3510000 	cmp	r1, #0
    11e0:	0afffffa 	beq	11d0 <__udivsi3+0xe8>
    11e4:	e92d4003 	push	{r0, r1, lr}
    11e8:	ebffffbe 	bl	10e8 <__udivsi3>
    11ec:	e8bd4006 	pop	{r1, r2, lr}
    11f0:	e0030092 	mul	r3, r2, r0
    11f4:	e0411003 	sub	r1, r1, r3
    11f8:	e12fff1e 	bx	lr

000011fc <__aeabi_idiv0>:
    11fc:	e12fff1e 	bx	lr
