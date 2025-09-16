
_ondemandtest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e3a03a01 	mov	r3, #4096	@ 0x1000
      10:	e50b300c 	str	r3, [fp, #-12]
      14:	e3a0300a 	mov	r3, #10
      18:	e50b3010 	str	r3, [fp, #-16]
      1c:	e59f1100 	ldr	r1, [pc, #256]	@ 124 <main+0x124>
      20:	e3a00001 	mov	r0, #1
      24:	eb000308 	bl	c4c <printf>
      28:	e51b3010 	ldr	r3, [fp, #-16]
      2c:	e51b200c 	ldr	r2, [fp, #-12]
      30:	e0030392 	mul	r3, r2, r3
      34:	e1a00003 	mov	r0, r3
      38:	eb000244 	bl	950 <sbrk>
      3c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      40:	e3a03000 	mov	r3, #0
      44:	e50b3008 	str	r3, [fp, #-8]
      48:	ea00000d 	b	84 <main+0x84>
      4c:	e51b3008 	ldr	r3, [fp, #-8]
      50:	e2732000 	rsbs	r2, r3, #0
      54:	e6ef3073 	uxtb	r3, r3
      58:	e6ef2072 	uxtb	r2, r2
      5c:	52623000 	rsbpl	r3, r2, #0
      60:	e51b2008 	ldr	r2, [fp, #-8]
      64:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
      68:	e0812002 	add	r2, r1, r2
      6c:	e6ef3073 	uxtb	r3, r3
      70:	e5c23000 	strb	r3, [r2]
      74:	e51b2008 	ldr	r2, [fp, #-8]
      78:	e51b300c 	ldr	r3, [fp, #-12]
      7c:	e0823003 	add	r3, r2, r3
      80:	e50b3008 	str	r3, [fp, #-8]
      84:	e51b3010 	ldr	r3, [fp, #-16]
      88:	e51b200c 	ldr	r2, [fp, #-12]
      8c:	e0030392 	mul	r3, r2, r3
      90:	e51b2008 	ldr	r2, [fp, #-8]
      94:	e1520003 	cmp	r2, r3
      98:	baffffeb 	blt	4c <main+0x4c>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	ea000014 	b	fc <main+0xfc>
      a8:	e51b3008 	ldr	r3, [fp, #-8]
      ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b0:	e0823003 	add	r3, r2, r3
      b4:	e5d33000 	ldrb	r3, [r3]
      b8:	e1a01003 	mov	r1, r3
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e2732000 	rsbs	r2, r3, #0
      c4:	e6ef3073 	uxtb	r3, r3
      c8:	e6ef2072 	uxtb	r2, r2
      cc:	52623000 	rsbpl	r3, r2, #0
      d0:	e1510003 	cmp	r1, r3
      d4:	0a000004 	beq	ec <main+0xec>
      d8:	e51b2008 	ldr	r2, [fp, #-8]
      dc:	e59f1044 	ldr	r1, [pc, #68]	@ 128 <main+0x128>
      e0:	e3a00001 	mov	r0, #1
      e4:	eb0002d8 	bl	c4c <printf>
      e8:	eb00017f 	bl	6ec <exit>
      ec:	e51b2008 	ldr	r2, [fp, #-8]
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e0823003 	add	r3, r2, r3
      f8:	e50b3008 	str	r3, [fp, #-8]
      fc:	e51b3010 	ldr	r3, [fp, #-16]
     100:	e51b200c 	ldr	r2, [fp, #-12]
     104:	e0030392 	mul	r3, r2, r3
     108:	e51b2008 	ldr	r2, [fp, #-8]
     10c:	e1520003 	cmp	r2, r3
     110:	baffffe4 	blt	a8 <main+0xa8>
     114:	e59f1010 	ldr	r1, [pc, #16]	@ 12c <main+0x12c>
     118:	e3a00001 	mov	r0, #1
     11c:	eb0002ca 	bl	c4c <printf>
     120:	eb000171 	bl	6ec <exit>
     124:	00001308 	.word	0x00001308
     128:	00001328 	.word	0x00001328
     12c:	0000134c 	.word	0x0000134c

00000130 <strcpy>:
     130:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     134:	e28db000 	add	fp, sp, #0
     138:	e24dd014 	sub	sp, sp, #20
     13c:	e50b0010 	str	r0, [fp, #-16]
     140:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     144:	e51b3010 	ldr	r3, [fp, #-16]
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e1a00000 	nop			@ (mov r0, r0)
     150:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     154:	e2823001 	add	r3, r2, #1
     158:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     15c:	e51b3010 	ldr	r3, [fp, #-16]
     160:	e2831001 	add	r1, r3, #1
     164:	e50b1010 	str	r1, [fp, #-16]
     168:	e5d22000 	ldrb	r2, [r2]
     16c:	e5c32000 	strb	r2, [r3]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e3530000 	cmp	r3, #0
     178:	1afffff4 	bne	150 <strcpy+0x20>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e1a00003 	mov	r0, r3
     184:	e28bd000 	add	sp, fp, #0
     188:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     18c:	e12fff1e 	bx	lr

00000190 <strncmp>:
     190:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     194:	e28db000 	add	fp, sp, #0
     198:	e24dd014 	sub	sp, sp, #20
     19c:	e50b0008 	str	r0, [fp, #-8]
     1a0:	e50b100c 	str	r1, [fp, #-12]
     1a4:	e50b2010 	str	r2, [fp, #-16]
     1a8:	ea000008 	b	1d0 <strncmp+0x40>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e2833001 	add	r3, r3, #1
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	e51b300c 	ldr	r3, [fp, #-12]
     1bc:	e2833001 	add	r3, r3, #1
     1c0:	e50b300c 	str	r3, [fp, #-12]
     1c4:	e51b3010 	ldr	r3, [fp, #-16]
     1c8:	e2433001 	sub	r3, r3, #1
     1cc:	e50b3010 	str	r3, [fp, #-16]
     1d0:	e51b3010 	ldr	r3, [fp, #-16]
     1d4:	e3530000 	cmp	r3, #0
     1d8:	da00000d 	ble	214 <strncmp+0x84>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e5d33000 	ldrb	r3, [r3]
     1e4:	e3530000 	cmp	r3, #0
     1e8:	0a000009 	beq	214 <strncmp+0x84>
     1ec:	e51b300c 	ldr	r3, [fp, #-12]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e3530000 	cmp	r3, #0
     1f8:	0a000005 	beq	214 <strncmp+0x84>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e5d32000 	ldrb	r2, [r3]
     204:	e51b300c 	ldr	r3, [fp, #-12]
     208:	e5d33000 	ldrb	r3, [r3]
     20c:	e1520003 	cmp	r2, r3
     210:	0affffe5 	beq	1ac <strncmp+0x1c>
     214:	e51b3010 	ldr	r3, [fp, #-16]
     218:	e3530000 	cmp	r3, #0
     21c:	1a000001 	bne	228 <strncmp+0x98>
     220:	e3a03000 	mov	r3, #0
     224:	ea000005 	b	240 <strncmp+0xb0>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e1a02003 	mov	r2, r3
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e0423003 	sub	r3, r2, r3
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <strcmp>:
     250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd00c 	sub	sp, sp, #12
     25c:	e50b0008 	str	r0, [fp, #-8]
     260:	e50b100c 	str	r1, [fp, #-12]
     264:	ea000005 	b	280 <strcmp+0x30>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e2833001 	add	r3, r3, #1
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	e51b300c 	ldr	r3, [fp, #-12]
     278:	e2833001 	add	r3, r3, #1
     27c:	e50b300c 	str	r3, [fp, #-12]
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	0a000005 	beq	2a8 <strcmp+0x58>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e5d32000 	ldrb	r2, [r3]
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e5d33000 	ldrb	r3, [r3]
     2a0:	e1520003 	cmp	r2, r3
     2a4:	0affffef 	beq	268 <strcmp+0x18>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e5d33000 	ldrb	r3, [r3]
     2b0:	e1a02003 	mov	r2, r3
     2b4:	e51b300c 	ldr	r3, [fp, #-12]
     2b8:	e5d33000 	ldrb	r3, [r3]
     2bc:	e0423003 	sub	r3, r2, r3
     2c0:	e1a00003 	mov	r0, r3
     2c4:	e28bd000 	add	sp, fp, #0
     2c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2cc:	e12fff1e 	bx	lr

000002d0 <strlen>:
     2d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d4:	e28db000 	add	fp, sp, #0
     2d8:	e24dd014 	sub	sp, sp, #20
     2dc:	e50b0010 	str	r0, [fp, #-16]
     2e0:	e3a03000 	mov	r3, #0
     2e4:	e50b3008 	str	r3, [fp, #-8]
     2e8:	ea000002 	b	2f8 <strlen+0x28>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e51b2010 	ldr	r2, [fp, #-16]
     300:	e0823003 	add	r3, r2, r3
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e3530000 	cmp	r3, #0
     30c:	1afffff6 	bne	2ec <strlen+0x1c>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <memset>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     330:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     334:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     338:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     33c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     348:	e54b300d 	strb	r3, [fp, #-13]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e1a03002 	mov	r3, r2
     354:	e1a03403 	lsl	r3, r3, #8
     358:	e0833002 	add	r3, r3, r2
     35c:	e1a03803 	lsl	r3, r3, #16
     360:	e1a02003 	mov	r2, r3
     364:	e55b300d 	ldrb	r3, [fp, #-13]
     368:	e1a03403 	lsl	r3, r3, #8
     36c:	e1822003 	orr	r2, r2, r3
     370:	e55b300d 	ldrb	r3, [fp, #-13]
     374:	e1823003 	orr	r3, r2, r3
     378:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     37c:	ea000008 	b	3a4 <memset+0x80>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e55b200d 	ldrb	r2, [fp, #-13]
     388:	e5c32000 	strb	r2, [r3]
     38c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     390:	e2433001 	sub	r3, r3, #1
     394:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2833001 	add	r3, r3, #1
     3a0:	e50b3008 	str	r3, [fp, #-8]
     3a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a8:	e3530000 	cmp	r3, #0
     3ac:	0a000003 	beq	3c0 <memset+0x9c>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e2033003 	and	r3, r3, #3
     3b8:	e3530000 	cmp	r3, #0
     3bc:	1affffef 	bne	380 <memset+0x5c>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e50b300c 	str	r3, [fp, #-12]
     3c8:	ea000008 	b	3f0 <memset+0xcc>
     3cc:	e51b300c 	ldr	r3, [fp, #-12]
     3d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3d4:	e5832000 	str	r2, [r3]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3dc:	e2433004 	sub	r3, r3, #4
     3e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e51b300c 	ldr	r3, [fp, #-12]
     3e8:	e2833004 	add	r3, r3, #4
     3ec:	e50b300c 	str	r3, [fp, #-12]
     3f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f4:	e3530003 	cmp	r3, #3
     3f8:	8afffff3 	bhi	3cc <memset+0xa8>
     3fc:	e51b300c 	ldr	r3, [fp, #-12]
     400:	e50b3008 	str	r3, [fp, #-8]
     404:	ea000008 	b	42c <memset+0x108>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e55b200d 	ldrb	r2, [fp, #-13]
     410:	e5c32000 	strb	r2, [r3]
     414:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     418:	e2433001 	sub	r3, r3, #1
     41c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2833001 	add	r3, r3, #1
     428:	e50b3008 	str	r3, [fp, #-8]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e3530000 	cmp	r3, #0
     434:	1afffff3 	bne	408 <memset+0xe4>
     438:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     43c:	e1a00003 	mov	r0, r3
     440:	e28bd000 	add	sp, fp, #0
     444:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     448:	e12fff1e 	bx	lr

0000044c <strchr>:
     44c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     450:	e28db000 	add	fp, sp, #0
     454:	e24dd00c 	sub	sp, sp, #12
     458:	e50b0008 	str	r0, [fp, #-8]
     45c:	e1a03001 	mov	r3, r1
     460:	e54b3009 	strb	r3, [fp, #-9]
     464:	ea000009 	b	490 <strchr+0x44>
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e55b2009 	ldrb	r2, [fp, #-9]
     474:	e1520003 	cmp	r2, r3
     478:	1a000001 	bne	484 <strchr+0x38>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	ea000007 	b	4a4 <strchr+0x58>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2833001 	add	r3, r3, #1
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e5d33000 	ldrb	r3, [r3]
     498:	e3530000 	cmp	r3, #0
     49c:	1afffff1 	bne	468 <strchr+0x1c>
     4a0:	e3a03000 	mov	r3, #0
     4a4:	e1a00003 	mov	r0, r3
     4a8:	e28bd000 	add	sp, fp, #0
     4ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b0:	e12fff1e 	bx	lr

000004b4 <gets>:
     4b4:	e92d4800 	push	{fp, lr}
     4b8:	e28db004 	add	fp, sp, #4
     4bc:	e24dd018 	sub	sp, sp, #24
     4c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4c4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4c8:	e3a03000 	mov	r3, #0
     4cc:	e50b3008 	str	r3, [fp, #-8]
     4d0:	ea000016 	b	530 <gets+0x7c>
     4d4:	e24b300d 	sub	r3, fp, #13
     4d8:	e3a02001 	mov	r2, #1
     4dc:	e1a01003 	mov	r1, r3
     4e0:	e3a00000 	mov	r0, #0
     4e4:	eb00009b 	bl	758 <read>
     4e8:	e50b000c 	str	r0, [fp, #-12]
     4ec:	e51b300c 	ldr	r3, [fp, #-12]
     4f0:	e3530000 	cmp	r3, #0
     4f4:	da000013 	ble	548 <gets+0x94>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e2832001 	add	r2, r3, #1
     500:	e50b2008 	str	r2, [fp, #-8]
     504:	e1a02003 	mov	r2, r3
     508:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     50c:	e0833002 	add	r3, r3, r2
     510:	e55b200d 	ldrb	r2, [fp, #-13]
     514:	e5c32000 	strb	r2, [r3]
     518:	e55b300d 	ldrb	r3, [fp, #-13]
     51c:	e353000a 	cmp	r3, #10
     520:	0a000009 	beq	54c <gets+0x98>
     524:	e55b300d 	ldrb	r3, [fp, #-13]
     528:	e353000d 	cmp	r3, #13
     52c:	0a000006 	beq	54c <gets+0x98>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e2833001 	add	r3, r3, #1
     538:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     53c:	e1520003 	cmp	r2, r3
     540:	caffffe3 	bgt	4d4 <gets+0x20>
     544:	ea000000 	b	54c <gets+0x98>
     548:	e1a00000 	nop			@ (mov r0, r0)
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     554:	e0823003 	add	r3, r2, r3
     558:	e3a02000 	mov	r2, #0
     55c:	e5c32000 	strb	r2, [r3]
     560:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     564:	e1a00003 	mov	r0, r3
     568:	e24bd004 	sub	sp, fp, #4
     56c:	e8bd8800 	pop	{fp, pc}

00000570 <stat>:
     570:	e92d4800 	push	{fp, lr}
     574:	e28db004 	add	fp, sp, #4
     578:	e24dd010 	sub	sp, sp, #16
     57c:	e50b0010 	str	r0, [fp, #-16]
     580:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     584:	e3a01000 	mov	r1, #0
     588:	e51b0010 	ldr	r0, [fp, #-16]
     58c:	eb00009e 	bl	80c <open>
     590:	e50b0008 	str	r0, [fp, #-8]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e3530000 	cmp	r3, #0
     59c:	aa000001 	bge	5a8 <stat+0x38>
     5a0:	e3e03000 	mvn	r3, #0
     5a4:	ea000006 	b	5c4 <stat+0x54>
     5a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5ac:	e51b0008 	ldr	r0, [fp, #-8]
     5b0:	eb0000b0 	bl	878 <fstat>
     5b4:	e50b000c 	str	r0, [fp, #-12]
     5b8:	e51b0008 	ldr	r0, [fp, #-8]
     5bc:	eb000077 	bl	7a0 <close>
     5c0:	e51b300c 	ldr	r3, [fp, #-12]
     5c4:	e1a00003 	mov	r0, r3
     5c8:	e24bd004 	sub	sp, fp, #4
     5cc:	e8bd8800 	pop	{fp, pc}

000005d0 <atoi>:
     5d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d4:	e28db000 	add	fp, sp, #0
     5d8:	e24dd014 	sub	sp, sp, #20
     5dc:	e50b0010 	str	r0, [fp, #-16]
     5e0:	e3a03000 	mov	r3, #0
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	ea00000c 	b	620 <atoi+0x50>
     5ec:	e51b2008 	ldr	r2, [fp, #-8]
     5f0:	e1a03002 	mov	r3, r2
     5f4:	e1a03103 	lsl	r3, r3, #2
     5f8:	e0833002 	add	r3, r3, r2
     5fc:	e1a03083 	lsl	r3, r3, #1
     600:	e1a01003 	mov	r1, r3
     604:	e51b3010 	ldr	r3, [fp, #-16]
     608:	e2832001 	add	r2, r3, #1
     60c:	e50b2010 	str	r2, [fp, #-16]
     610:	e5d33000 	ldrb	r3, [r3]
     614:	e0813003 	add	r3, r1, r3
     618:	e2433030 	sub	r3, r3, #48	@ 0x30
     61c:	e50b3008 	str	r3, [fp, #-8]
     620:	e51b3010 	ldr	r3, [fp, #-16]
     624:	e5d33000 	ldrb	r3, [r3]
     628:	e353002f 	cmp	r3, #47	@ 0x2f
     62c:	9a000003 	bls	640 <atoi+0x70>
     630:	e51b3010 	ldr	r3, [fp, #-16]
     634:	e5d33000 	ldrb	r3, [r3]
     638:	e3530039 	cmp	r3, #57	@ 0x39
     63c:	9affffea 	bls	5ec <atoi+0x1c>
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <memmove>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd01c 	sub	sp, sp, #28
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     668:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     678:	e50b300c 	str	r3, [fp, #-12]
     67c:	ea000007 	b	6a0 <memmove+0x4c>
     680:	e51b200c 	ldr	r2, [fp, #-12]
     684:	e2823001 	add	r3, r2, #1
     688:	e50b300c 	str	r3, [fp, #-12]
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2831001 	add	r1, r3, #1
     694:	e50b1008 	str	r1, [fp, #-8]
     698:	e5d22000 	ldrb	r2, [r2]
     69c:	e5c32000 	strb	r2, [r3]
     6a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a4:	e2432001 	sub	r2, r3, #1
     6a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6ac:	e3530000 	cmp	r3, #0
     6b0:	cafffff2 	bgt	680 <memmove+0x2c>
     6b4:	e51b3010 	ldr	r3, [fp, #-16]
     6b8:	e1a00003 	mov	r0, r3
     6bc:	e28bd000 	add	sp, fp, #0
     6c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <fork>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00001 	mov	r0, #1
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <exit>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00002 	mov	r0, #2
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <wait>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00003 	mov	r0, #3
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <pipe>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00004 	mov	r0, #4
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <read>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00005 	mov	r0, #5
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <write>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00010 	mov	r0, #16
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <close>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00015 	mov	r0, #21
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <kill>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a00006 	mov	r0, #6
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <exec>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00007 	mov	r0, #7
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <open>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000f 	mov	r0, #15
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <mknod>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00011 	mov	r0, #17
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <unlink>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00012 	mov	r0, #18
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <fstat>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00008 	mov	r0, #8
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <link>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00013 	mov	r0, #19
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <mkdir>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a00014 	mov	r0, #20
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <chdir>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a00009 	mov	r0, #9
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <dup>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a0000a 	mov	r0, #10
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <getpid>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a0000b 	mov	r0, #11
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <sbrk>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a0000c 	mov	r0, #12
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <sleep>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a0000d 	mov	r0, #13
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <uptime>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a0000e 	mov	r0, #14
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <ps>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a00016 	mov	r0, #22
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <settickets>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a00017 	mov	r0, #23
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <srand>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a00018 	mov	r0, #24
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <getpinfo>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a00019 	mov	r0, #25
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <printpt>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a0001a 	mov	r0, #26
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <pgpte>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a0001b 	mov	r0, #27
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <ugetpid>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a0001c 	mov	r0, #28
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <kpt>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a0001d 	mov	r0, #29
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <putc>:
     adc:	e92d4800 	push	{fp, lr}
     ae0:	e28db004 	add	fp, sp, #4
     ae4:	e24dd008 	sub	sp, sp, #8
     ae8:	e50b0008 	str	r0, [fp, #-8]
     aec:	e1a03001 	mov	r3, r1
     af0:	e54b3009 	strb	r3, [fp, #-9]
     af4:	e24b3009 	sub	r3, fp, #9
     af8:	e3a02001 	mov	r2, #1
     afc:	e1a01003 	mov	r1, r3
     b00:	e51b0008 	ldr	r0, [fp, #-8]
     b04:	ebffff1c 	bl	77c <write>
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	e24bd004 	sub	sp, fp, #4
     b10:	e8bd8800 	pop	{fp, pc}

00000b14 <printint>:
     b14:	e92d4800 	push	{fp, lr}
     b18:	e28db004 	add	fp, sp, #4
     b1c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b20:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b24:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b28:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b2c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b30:	e3a03000 	mov	r3, #0
     b34:	e50b300c 	str	r3, [fp, #-12]
     b38:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b3c:	e3530000 	cmp	r3, #0
     b40:	0a000008 	beq	b68 <printint+0x54>
     b44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b48:	e3530000 	cmp	r3, #0
     b4c:	aa000005 	bge	b68 <printint+0x54>
     b50:	e3a03001 	mov	r3, #1
     b54:	e50b300c 	str	r3, [fp, #-12]
     b58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b5c:	e2633000 	rsb	r3, r3, #0
     b60:	e50b3010 	str	r3, [fp, #-16]
     b64:	ea000001 	b	b70 <printint+0x5c>
     b68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b6c:	e50b3010 	str	r3, [fp, #-16]
     b70:	e3a03000 	mov	r3, #0
     b74:	e50b3008 	str	r3, [fp, #-8]
     b78:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b7c:	e51b3010 	ldr	r3, [fp, #-16]
     b80:	e1a01002 	mov	r1, r2
     b84:	e1a00003 	mov	r0, r3
     b88:	eb0001d5 	bl	12e4 <__aeabi_uidivmod>
     b8c:	e1a03001 	mov	r3, r1
     b90:	e1a01003 	mov	r1, r3
     b94:	e51b3008 	ldr	r3, [fp, #-8]
     b98:	e2832001 	add	r2, r3, #1
     b9c:	e50b2008 	str	r2, [fp, #-8]
     ba0:	e59f20a0 	ldr	r2, [pc, #160]	@ c48 <printint+0x134>
     ba4:	e7d22001 	ldrb	r2, [r2, r1]
     ba8:	e2433004 	sub	r3, r3, #4
     bac:	e083300b 	add	r3, r3, fp
     bb0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bb4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     bb8:	e1a01003 	mov	r1, r3
     bbc:	e51b0010 	ldr	r0, [fp, #-16]
     bc0:	eb00018a 	bl	11f0 <__udivsi3>
     bc4:	e1a03000 	mov	r3, r0
     bc8:	e50b3010 	str	r3, [fp, #-16]
     bcc:	e51b3010 	ldr	r3, [fp, #-16]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	1affffe7 	bne	b78 <printint+0x64>
     bd8:	e51b300c 	ldr	r3, [fp, #-12]
     bdc:	e3530000 	cmp	r3, #0
     be0:	0a00000e 	beq	c20 <printint+0x10c>
     be4:	e51b3008 	ldr	r3, [fp, #-8]
     be8:	e2832001 	add	r2, r3, #1
     bec:	e50b2008 	str	r2, [fp, #-8]
     bf0:	e2433004 	sub	r3, r3, #4
     bf4:	e083300b 	add	r3, r3, fp
     bf8:	e3a0202d 	mov	r2, #45	@ 0x2d
     bfc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c00:	ea000006 	b	c20 <printint+0x10c>
     c04:	e24b2020 	sub	r2, fp, #32
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e0823003 	add	r3, r2, r3
     c10:	e5d33000 	ldrb	r3, [r3]
     c14:	e1a01003 	mov	r1, r3
     c18:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c1c:	ebffffae 	bl	adc <putc>
     c20:	e51b3008 	ldr	r3, [fp, #-8]
     c24:	e2433001 	sub	r3, r3, #1
     c28:	e50b3008 	str	r3, [fp, #-8]
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e3530000 	cmp	r3, #0
     c34:	aafffff2 	bge	c04 <printint+0xf0>
     c38:	e1a00000 	nop			@ (mov r0, r0)
     c3c:	e1a00000 	nop			@ (mov r0, r0)
     c40:	e24bd004 	sub	sp, fp, #4
     c44:	e8bd8800 	pop	{fp, pc}
     c48:	0000136c 	.word	0x0000136c

00000c4c <printf>:
     c4c:	e92d000e 	push	{r1, r2, r3}
     c50:	e92d4800 	push	{fp, lr}
     c54:	e28db004 	add	fp, sp, #4
     c58:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c5c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c60:	e3a03000 	mov	r3, #0
     c64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c68:	e28b3008 	add	r3, fp, #8
     c6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e3a03000 	mov	r3, #0
     c74:	e50b3010 	str	r3, [fp, #-16]
     c78:	ea000074 	b	e50 <printf+0x204>
     c7c:	e59b2004 	ldr	r2, [fp, #4]
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e0823003 	add	r3, r2, r3
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c94:	e3530000 	cmp	r3, #0
     c98:	1a00000b 	bne	ccc <printf+0x80>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e3530025 	cmp	r3, #37	@ 0x25
     ca4:	1a000002 	bne	cb4 <printf+0x68>
     ca8:	e3a03025 	mov	r3, #37	@ 0x25
     cac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cb0:	ea000063 	b	e44 <printf+0x1f8>
     cb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb8:	e6ef3073 	uxtb	r3, r3
     cbc:	e1a01003 	mov	r1, r3
     cc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc4:	ebffff84 	bl	adc <putc>
     cc8:	ea00005d 	b	e44 <printf+0x1f8>
     ccc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cd0:	e3530025 	cmp	r3, #37	@ 0x25
     cd4:	1a00005a 	bne	e44 <printf+0x1f8>
     cd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cdc:	e3530064 	cmp	r3, #100	@ 0x64
     ce0:	1a00000a 	bne	d10 <printf+0xc4>
     ce4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e1a01003 	mov	r1, r3
     cf0:	e3a03001 	mov	r3, #1
     cf4:	e3a0200a 	mov	r2, #10
     cf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cfc:	ebffff84 	bl	b14 <printint>
     d00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d04:	e2833004 	add	r3, r3, #4
     d08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	ea00004a 	b	e3c <printf+0x1f0>
     d10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d14:	e3530078 	cmp	r3, #120	@ 0x78
     d18:	0a000002 	beq	d28 <printf+0xdc>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e3530070 	cmp	r3, #112	@ 0x70
     d24:	1a00000a 	bne	d54 <printf+0x108>
     d28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e1a01003 	mov	r1, r3
     d34:	e3a03000 	mov	r3, #0
     d38:	e3a02010 	mov	r2, #16
     d3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d40:	ebffff73 	bl	b14 <printint>
     d44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d48:	e2833004 	add	r3, r3, #4
     d4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d50:	ea000039 	b	e3c <printf+0x1f0>
     d54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d58:	e3530073 	cmp	r3, #115	@ 0x73
     d5c:	1a000018 	bne	dc4 <printf+0x178>
     d60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d64:	e5933000 	ldr	r3, [r3]
     d68:	e50b300c 	str	r3, [fp, #-12]
     d6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d70:	e2833004 	add	r3, r3, #4
     d74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e3530000 	cmp	r3, #0
     d80:	1a00000a 	bne	db0 <printf+0x164>
     d84:	e59f30f4 	ldr	r3, [pc, #244]	@ e80 <printf+0x234>
     d88:	e50b300c 	str	r3, [fp, #-12]
     d8c:	ea000007 	b	db0 <printf+0x164>
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5d33000 	ldrb	r3, [r3]
     d98:	e1a01003 	mov	r1, r3
     d9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da0:	ebffff4d 	bl	adc <putc>
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e2833001 	add	r3, r3, #1
     dac:	e50b300c 	str	r3, [fp, #-12]
     db0:	e51b300c 	ldr	r3, [fp, #-12]
     db4:	e5d33000 	ldrb	r3, [r3]
     db8:	e3530000 	cmp	r3, #0
     dbc:	1afffff3 	bne	d90 <printf+0x144>
     dc0:	ea00001d 	b	e3c <printf+0x1f0>
     dc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc8:	e3530063 	cmp	r3, #99	@ 0x63
     dcc:	1a000009 	bne	df8 <printf+0x1ac>
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e5933000 	ldr	r3, [r3]
     dd8:	e6ef3073 	uxtb	r3, r3
     ddc:	e1a01003 	mov	r1, r3
     de0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     de4:	ebffff3c 	bl	adc <putc>
     de8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dec:	e2833004 	add	r3, r3, #4
     df0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     df4:	ea000010 	b	e3c <printf+0x1f0>
     df8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dfc:	e3530025 	cmp	r3, #37	@ 0x25
     e00:	1a000005 	bne	e1c <printf+0x1d0>
     e04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e08:	e6ef3073 	uxtb	r3, r3
     e0c:	e1a01003 	mov	r1, r3
     e10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e14:	ebffff30 	bl	adc <putc>
     e18:	ea000007 	b	e3c <printf+0x1f0>
     e1c:	e3a01025 	mov	r1, #37	@ 0x25
     e20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e24:	ebffff2c 	bl	adc <putc>
     e28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e2c:	e6ef3073 	uxtb	r3, r3
     e30:	e1a01003 	mov	r1, r3
     e34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e38:	ebffff27 	bl	adc <putc>
     e3c:	e3a03000 	mov	r3, #0
     e40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e44:	e51b3010 	ldr	r3, [fp, #-16]
     e48:	e2833001 	add	r3, r3, #1
     e4c:	e50b3010 	str	r3, [fp, #-16]
     e50:	e59b2004 	ldr	r2, [fp, #4]
     e54:	e51b3010 	ldr	r3, [fp, #-16]
     e58:	e0823003 	add	r3, r2, r3
     e5c:	e5d33000 	ldrb	r3, [r3]
     e60:	e3530000 	cmp	r3, #0
     e64:	1affff84 	bne	c7c <printf+0x30>
     e68:	e1a00000 	nop			@ (mov r0, r0)
     e6c:	e1a00000 	nop			@ (mov r0, r0)
     e70:	e24bd004 	sub	sp, fp, #4
     e74:	e8bd4800 	pop	{fp, lr}
     e78:	e28dd00c 	add	sp, sp, #12
     e7c:	e12fff1e 	bx	lr
     e80:	00001364 	.word	0x00001364

00000e84 <free>:
     e84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e88:	e28db000 	add	fp, sp, #0
     e8c:	e24dd014 	sub	sp, sp, #20
     e90:	e50b0010 	str	r0, [fp, #-16]
     e94:	e51b3010 	ldr	r3, [fp, #-16]
     e98:	e2433008 	sub	r3, r3, #8
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e59f3154 	ldr	r3, [pc, #340]	@ ffc <free+0x178>
     ea4:	e5933000 	ldr	r3, [r3]
     ea8:	e50b3008 	str	r3, [fp, #-8]
     eac:	ea000010 	b	ef4 <free+0x70>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5933000 	ldr	r3, [r3]
     eb8:	e51b2008 	ldr	r2, [fp, #-8]
     ebc:	e1520003 	cmp	r2, r3
     ec0:	3a000008 	bcc	ee8 <free+0x64>
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e1520003 	cmp	r2, r3
     ed0:	8a000010 	bhi	f18 <free+0x94>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e51b200c 	ldr	r2, [fp, #-12]
     ee0:	e1520003 	cmp	r2, r3
     ee4:	3a00000b 	bcc	f18 <free+0x94>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5933000 	ldr	r3, [r3]
     ef0:	e50b3008 	str	r3, [fp, #-8]
     ef4:	e51b200c 	ldr	r2, [fp, #-12]
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e1520003 	cmp	r2, r3
     f00:	9affffea 	bls	eb0 <free+0x2c>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e51b200c 	ldr	r2, [fp, #-12]
     f10:	e1520003 	cmp	r2, r3
     f14:	2affffe5 	bcs	eb0 <free+0x2c>
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e5933004 	ldr	r3, [r3, #4]
     f20:	e1a03183 	lsl	r3, r3, #3
     f24:	e51b200c 	ldr	r2, [fp, #-12]
     f28:	e0822003 	add	r2, r2, r3
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e1520003 	cmp	r2, r3
     f38:	1a00000d 	bne	f74 <free+0xf0>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5932004 	ldr	r2, [r3, #4]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e5933004 	ldr	r3, [r3, #4]
     f50:	e0822003 	add	r2, r2, r3
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e5832004 	str	r2, [r3, #4]
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5933000 	ldr	r3, [r3]
     f64:	e5932000 	ldr	r2, [r3]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5832000 	str	r2, [r3]
     f70:	ea000003 	b	f84 <free+0x100>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5932000 	ldr	r2, [r3]
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5832000 	str	r2, [r3]
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e5933004 	ldr	r3, [r3, #4]
     f8c:	e1a03183 	lsl	r3, r3, #3
     f90:	e51b2008 	ldr	r2, [fp, #-8]
     f94:	e0823003 	add	r3, r2, r3
     f98:	e51b200c 	ldr	r2, [fp, #-12]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	1a00000b 	bne	fd4 <free+0x150>
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5932004 	ldr	r2, [r3, #4]
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e5933004 	ldr	r3, [r3, #4]
     fb4:	e0822003 	add	r2, r2, r3
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5832004 	str	r2, [r3, #4]
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e5932000 	ldr	r2, [r3]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5832000 	str	r2, [r3]
     fd0:	ea000002 	b	fe0 <free+0x15c>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e51b200c 	ldr	r2, [fp, #-12]
     fdc:	e5832000 	str	r2, [r3]
     fe0:	e59f2014 	ldr	r2, [pc, #20]	@ ffc <free+0x178>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5823000 	str	r3, [r2]
     fec:	e1a00000 	nop			@ (mov r0, r0)
     ff0:	e28bd000 	add	sp, fp, #0
     ff4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ff8:	e12fff1e 	bx	lr
     ffc:	00001388 	.word	0x00001388

00001000 <morecore>:
    1000:	e92d4800 	push	{fp, lr}
    1004:	e28db004 	add	fp, sp, #4
    1008:	e24dd010 	sub	sp, sp, #16
    100c:	e50b0010 	str	r0, [fp, #-16]
    1010:	e51b3010 	ldr	r3, [fp, #-16]
    1014:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1018:	2a000001 	bcs	1024 <morecore+0x24>
    101c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1020:	e50b3010 	str	r3, [fp, #-16]
    1024:	e51b3010 	ldr	r3, [fp, #-16]
    1028:	e1a03183 	lsl	r3, r3, #3
    102c:	e1a00003 	mov	r0, r3
    1030:	ebfffe46 	bl	950 <sbrk>
    1034:	e50b0008 	str	r0, [fp, #-8]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e3730001 	cmn	r3, #1
    1040:	1a000001 	bne	104c <morecore+0x4c>
    1044:	e3a03000 	mov	r3, #0
    1048:	ea00000a 	b	1078 <morecore+0x78>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e50b300c 	str	r3, [fp, #-12]
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e51b2010 	ldr	r2, [fp, #-16]
    105c:	e5832004 	str	r2, [r3, #4]
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e2833008 	add	r3, r3, #8
    1068:	e1a00003 	mov	r0, r3
    106c:	ebffff84 	bl	e84 <free>
    1070:	e59f300c 	ldr	r3, [pc, #12]	@ 1084 <morecore+0x84>
    1074:	e5933000 	ldr	r3, [r3]
    1078:	e1a00003 	mov	r0, r3
    107c:	e24bd004 	sub	sp, fp, #4
    1080:	e8bd8800 	pop	{fp, pc}
    1084:	00001388 	.word	0x00001388

00001088 <malloc>:
    1088:	e92d4800 	push	{fp, lr}
    108c:	e28db004 	add	fp, sp, #4
    1090:	e24dd018 	sub	sp, sp, #24
    1094:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e2833007 	add	r3, r3, #7
    10a0:	e1a031a3 	lsr	r3, r3, #3
    10a4:	e2833001 	add	r3, r3, #1
    10a8:	e50b3010 	str	r3, [fp, #-16]
    10ac:	e59f3134 	ldr	r3, [pc, #308]	@ 11e8 <malloc+0x160>
    10b0:	e5933000 	ldr	r3, [r3]
    10b4:	e50b300c 	str	r3, [fp, #-12]
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e3530000 	cmp	r3, #0
    10c0:	1a00000b 	bne	10f4 <malloc+0x6c>
    10c4:	e59f3120 	ldr	r3, [pc, #288]	@ 11ec <malloc+0x164>
    10c8:	e50b300c 	str	r3, [fp, #-12]
    10cc:	e59f2114 	ldr	r2, [pc, #276]	@ 11e8 <malloc+0x160>
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5823000 	str	r3, [r2]
    10d8:	e59f3108 	ldr	r3, [pc, #264]	@ 11e8 <malloc+0x160>
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e59f2104 	ldr	r2, [pc, #260]	@ 11ec <malloc+0x164>
    10e4:	e5823000 	str	r3, [r2]
    10e8:	e59f30fc 	ldr	r3, [pc, #252]	@ 11ec <malloc+0x164>
    10ec:	e3a02000 	mov	r2, #0
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e50b3008 	str	r3, [fp, #-8]
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e5933004 	ldr	r3, [r3, #4]
    1108:	e51b2010 	ldr	r2, [fp, #-16]
    110c:	e1520003 	cmp	r2, r3
    1110:	8a00001e 	bhi	1190 <malloc+0x108>
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e5933004 	ldr	r3, [r3, #4]
    111c:	e51b2010 	ldr	r2, [fp, #-16]
    1120:	e1520003 	cmp	r2, r3
    1124:	1a000004 	bne	113c <malloc+0xb4>
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e5932000 	ldr	r2, [r3]
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e5832000 	str	r2, [r3]
    1138:	ea00000e 	b	1178 <malloc+0xf0>
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5932004 	ldr	r2, [r3, #4]
    1144:	e51b3010 	ldr	r3, [fp, #-16]
    1148:	e0422003 	sub	r2, r2, r3
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5832004 	str	r2, [r3, #4]
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e5933004 	ldr	r3, [r3, #4]
    115c:	e1a03183 	lsl	r3, r3, #3
    1160:	e51b2008 	ldr	r2, [fp, #-8]
    1164:	e0823003 	add	r3, r2, r3
    1168:	e50b3008 	str	r3, [fp, #-8]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e51b2010 	ldr	r2, [fp, #-16]
    1174:	e5832004 	str	r2, [r3, #4]
    1178:	e59f2068 	ldr	r2, [pc, #104]	@ 11e8 <malloc+0x160>
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5823000 	str	r3, [r2]
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e2833008 	add	r3, r3, #8
    118c:	ea000012 	b	11dc <malloc+0x154>
    1190:	e59f3050 	ldr	r3, [pc, #80]	@ 11e8 <malloc+0x160>
    1194:	e5933000 	ldr	r3, [r3]
    1198:	e51b2008 	ldr	r2, [fp, #-8]
    119c:	e1520003 	cmp	r2, r3
    11a0:	1a000007 	bne	11c4 <malloc+0x13c>
    11a4:	e51b0010 	ldr	r0, [fp, #-16]
    11a8:	ebffff94 	bl	1000 <morecore>
    11ac:	e50b0008 	str	r0, [fp, #-8]
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e3530000 	cmp	r3, #0
    11b8:	1a000001 	bne	11c4 <malloc+0x13c>
    11bc:	e3a03000 	mov	r3, #0
    11c0:	ea000005 	b	11dc <malloc+0x154>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e50b300c 	str	r3, [fp, #-12]
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e50b3008 	str	r3, [fp, #-8]
    11d8:	eaffffc8 	b	1100 <malloc+0x78>
    11dc:	e1a00003 	mov	r0, r3
    11e0:	e24bd004 	sub	sp, fp, #4
    11e4:	e8bd8800 	pop	{fp, pc}
    11e8:	00001388 	.word	0x00001388
    11ec:	00001380 	.word	0x00001380

000011f0 <__udivsi3>:
    11f0:	e2512001 	subs	r2, r1, #1
    11f4:	012fff1e 	bxeq	lr
    11f8:	3a000036 	bcc	12d8 <__udivsi3+0xe8>
    11fc:	e1500001 	cmp	r0, r1
    1200:	9a000022 	bls	1290 <__udivsi3+0xa0>
    1204:	e1110002 	tst	r1, r2
    1208:	0a000023 	beq	129c <__udivsi3+0xac>
    120c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1210:	01a01181 	lsleq	r1, r1, #3
    1214:	03a03008 	moveq	r3, #8
    1218:	13a03001 	movne	r3, #1
    121c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1220:	31510000 	cmpcc	r1, r0
    1224:	31a01201 	lslcc	r1, r1, #4
    1228:	31a03203 	lslcc	r3, r3, #4
    122c:	3afffffa 	bcc	121c <__udivsi3+0x2c>
    1230:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1234:	31510000 	cmpcc	r1, r0
    1238:	31a01081 	lslcc	r1, r1, #1
    123c:	31a03083 	lslcc	r3, r3, #1
    1240:	3afffffa 	bcc	1230 <__udivsi3+0x40>
    1244:	e3a02000 	mov	r2, #0
    1248:	e1500001 	cmp	r0, r1
    124c:	20400001 	subcs	r0, r0, r1
    1250:	21822003 	orrcs	r2, r2, r3
    1254:	e15000a1 	cmp	r0, r1, lsr #1
    1258:	204000a1 	subcs	r0, r0, r1, lsr #1
    125c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1260:	e1500121 	cmp	r0, r1, lsr #2
    1264:	20400121 	subcs	r0, r0, r1, lsr #2
    1268:	21822123 	orrcs	r2, r2, r3, lsr #2
    126c:	e15001a1 	cmp	r0, r1, lsr #3
    1270:	204001a1 	subcs	r0, r0, r1, lsr #3
    1274:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1278:	e3500000 	cmp	r0, #0
    127c:	11b03223 	lsrsne	r3, r3, #4
    1280:	11a01221 	lsrne	r1, r1, #4
    1284:	1affffef 	bne	1248 <__udivsi3+0x58>
    1288:	e1a00002 	mov	r0, r2
    128c:	e12fff1e 	bx	lr
    1290:	03a00001 	moveq	r0, #1
    1294:	13a00000 	movne	r0, #0
    1298:	e12fff1e 	bx	lr
    129c:	e3510801 	cmp	r1, #65536	@ 0x10000
    12a0:	21a01821 	lsrcs	r1, r1, #16
    12a4:	23a02010 	movcs	r2, #16
    12a8:	33a02000 	movcc	r2, #0
    12ac:	e3510c01 	cmp	r1, #256	@ 0x100
    12b0:	21a01421 	lsrcs	r1, r1, #8
    12b4:	22822008 	addcs	r2, r2, #8
    12b8:	e3510010 	cmp	r1, #16
    12bc:	21a01221 	lsrcs	r1, r1, #4
    12c0:	22822004 	addcs	r2, r2, #4
    12c4:	e3510004 	cmp	r1, #4
    12c8:	82822003 	addhi	r2, r2, #3
    12cc:	908220a1 	addls	r2, r2, r1, lsr #1
    12d0:	e1a00230 	lsr	r0, r0, r2
    12d4:	e12fff1e 	bx	lr
    12d8:	e3500000 	cmp	r0, #0
    12dc:	13e00000 	mvnne	r0, #0
    12e0:	ea000007 	b	1304 <__aeabi_idiv0>

000012e4 <__aeabi_uidivmod>:
    12e4:	e3510000 	cmp	r1, #0
    12e8:	0afffffa 	beq	12d8 <__udivsi3+0xe8>
    12ec:	e92d4003 	push	{r0, r1, lr}
    12f0:	ebffffbe 	bl	11f0 <__udivsi3>
    12f4:	e8bd4006 	pop	{r1, r2, lr}
    12f8:	e0030092 	mul	r3, r2, r0
    12fc:	e0411003 	sub	r1, r1, r3
    1300:	e12fff1e 	bx	lr

00001304 <__aeabi_idiv0>:
    1304:	e12fff1e 	bx	lr
