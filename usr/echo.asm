
_echo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e3a03001 	mov	r3, #1
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000013 	b	70 <main+0x70>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e1a03103 	lsl	r3, r3, #2
      28:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      2c:	e0823003 	add	r3, r2, r3
      30:	e5931000 	ldr	r1, [r3]
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e2833001 	add	r3, r3, #1
      3c:	e51b2010 	ldr	r2, [fp, #-16]
      40:	e1520003 	cmp	r2, r3
      44:	da000001 	ble	50 <main+0x50>
      48:	e59f3034 	ldr	r3, [pc, #52]	@ 84 <main+0x84>
      4c:	ea000000 	b	54 <main+0x54>
      50:	e59f3030 	ldr	r3, [pc, #48]	@ 88 <main+0x88>
      54:	e1a02001 	mov	r2, r1
      58:	e59f102c 	ldr	r1, [pc, #44]	@ 8c <main+0x8c>
      5c:	e3a00001 	mov	r0, #1
      60:	eb0002ad 	bl	b1c <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb000171 	bl	64c <exit>
      84:	000011d8 	.word	0x000011d8
      88:	000011dc 	.word	0x000011dc
      8c:	000011e0 	.word	0x000011e0

00000090 <strcpy>:
      90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e1a00000 	nop			@ (mov r0, r0)
      b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b4:	e2823001 	add	r3, r2, #1
      b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      bc:	e51b3010 	ldr	r3, [fp, #-16]
      c0:	e2831001 	add	r1, r3, #1
      c4:	e50b1010 	str	r1, [fp, #-16]
      c8:	e5d22000 	ldrb	r2, [r2]
      cc:	e5c32000 	strb	r2, [r3]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e3530000 	cmp	r3, #0
      d8:	1afffff4 	bne	b0 <strcpy+0x20>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	e28bd000 	add	sp, fp, #0
      e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      ec:	e12fff1e 	bx	lr

000000f0 <strncmp>:
      f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f4:	e28db000 	add	fp, sp, #0
      f8:	e24dd014 	sub	sp, sp, #20
      fc:	e50b0008 	str	r0, [fp, #-8]
     100:	e50b100c 	str	r1, [fp, #-12]
     104:	e50b2010 	str	r2, [fp, #-16]
     108:	ea000008 	b	130 <strncmp+0x40>
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b3008 	str	r3, [fp, #-8]
     118:	e51b300c 	ldr	r3, [fp, #-12]
     11c:	e2833001 	add	r3, r3, #1
     120:	e50b300c 	str	r3, [fp, #-12]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2433001 	sub	r3, r3, #1
     12c:	e50b3010 	str	r3, [fp, #-16]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e3530000 	cmp	r3, #0
     138:	da00000d 	ble	174 <strncmp+0x84>
     13c:	e51b3008 	ldr	r3, [fp, #-8]
     140:	e5d33000 	ldrb	r3, [r3]
     144:	e3530000 	cmp	r3, #0
     148:	0a000009 	beq	174 <strncmp+0x84>
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e3530000 	cmp	r3, #0
     158:	0a000005 	beq	174 <strncmp+0x84>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e5d32000 	ldrb	r2, [r3]
     164:	e51b300c 	ldr	r3, [fp, #-12]
     168:	e5d33000 	ldrb	r3, [r3]
     16c:	e1520003 	cmp	r2, r3
     170:	0affffe5 	beq	10c <strncmp+0x1c>
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530000 	cmp	r3, #0
     17c:	1a000001 	bne	188 <strncmp+0x98>
     180:	e3a03000 	mov	r3, #0
     184:	ea000005 	b	1a0 <strncmp+0xb0>
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e1a02003 	mov	r2, r3
     194:	e51b300c 	ldr	r3, [fp, #-12]
     198:	e5d33000 	ldrb	r3, [r3]
     19c:	e0423003 	sub	r3, r2, r3
     1a0:	e1a00003 	mov	r0, r3
     1a4:	e28bd000 	add	sp, fp, #0
     1a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1ac:	e12fff1e 	bx	lr

000001b0 <strcmp>:
     1b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b4:	e28db000 	add	fp, sp, #0
     1b8:	e24dd00c 	sub	sp, sp, #12
     1bc:	e50b0008 	str	r0, [fp, #-8]
     1c0:	e50b100c 	str	r1, [fp, #-12]
     1c4:	ea000005 	b	1e0 <strcmp+0x30>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e2833001 	add	r3, r3, #1
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	e51b300c 	ldr	r3, [fp, #-12]
     1d8:	e2833001 	add	r3, r3, #1
     1dc:	e50b300c 	str	r3, [fp, #-12]
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e5d33000 	ldrb	r3, [r3]
     1e8:	e3530000 	cmp	r3, #0
     1ec:	0a000005 	beq	208 <strcmp+0x58>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d32000 	ldrb	r2, [r3]
     1f8:	e51b300c 	ldr	r3, [fp, #-12]
     1fc:	e5d33000 	ldrb	r3, [r3]
     200:	e1520003 	cmp	r2, r3
     204:	0affffef 	beq	1c8 <strcmp+0x18>
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e1a02003 	mov	r2, r3
     214:	e51b300c 	ldr	r3, [fp, #-12]
     218:	e5d33000 	ldrb	r3, [r3]
     21c:	e0423003 	sub	r3, r2, r3
     220:	e1a00003 	mov	r0, r3
     224:	e28bd000 	add	sp, fp, #0
     228:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     22c:	e12fff1e 	bx	lr

00000230 <strlen>:
     230:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     234:	e28db000 	add	fp, sp, #0
     238:	e24dd014 	sub	sp, sp, #20
     23c:	e50b0010 	str	r0, [fp, #-16]
     240:	e3a03000 	mov	r3, #0
     244:	e50b3008 	str	r3, [fp, #-8]
     248:	ea000002 	b	258 <strlen+0x28>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2833001 	add	r3, r3, #1
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e51b2010 	ldr	r2, [fp, #-16]
     260:	e0823003 	add	r3, r2, r3
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e3530000 	cmp	r3, #0
     26c:	1afffff6 	bne	24c <strlen+0x1c>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e1a00003 	mov	r0, r3
     278:	e28bd000 	add	sp, fp, #0
     27c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     280:	e12fff1e 	bx	lr

00000284 <memset>:
     284:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     288:	e28db000 	add	fp, sp, #0
     28c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     290:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     294:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     298:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     29c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2a0:	e50b3008 	str	r3, [fp, #-8]
     2a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2a8:	e54b300d 	strb	r3, [fp, #-13]
     2ac:	e55b200d 	ldrb	r2, [fp, #-13]
     2b0:	e1a03002 	mov	r3, r2
     2b4:	e1a03403 	lsl	r3, r3, #8
     2b8:	e0833002 	add	r3, r3, r2
     2bc:	e1a03803 	lsl	r3, r3, #16
     2c0:	e1a02003 	mov	r2, r3
     2c4:	e55b300d 	ldrb	r3, [fp, #-13]
     2c8:	e1a03403 	lsl	r3, r3, #8
     2cc:	e1822003 	orr	r2, r2, r3
     2d0:	e55b300d 	ldrb	r3, [fp, #-13]
     2d4:	e1823003 	orr	r3, r2, r3
     2d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2dc:	ea000008 	b	304 <memset+0x80>
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e55b200d 	ldrb	r2, [fp, #-13]
     2e8:	e5c32000 	strb	r2, [r3]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e2433001 	sub	r3, r3, #1
     2f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e2833001 	add	r3, r3, #1
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     308:	e3530000 	cmp	r3, #0
     30c:	0a000003 	beq	320 <memset+0x9c>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2033003 	and	r3, r3, #3
     318:	e3530000 	cmp	r3, #0
     31c:	1affffef 	bne	2e0 <memset+0x5c>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e50b300c 	str	r3, [fp, #-12]
     328:	ea000008 	b	350 <memset+0xcc>
     32c:	e51b300c 	ldr	r3, [fp, #-12]
     330:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     334:	e5832000 	str	r2, [r3]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e2433004 	sub	r3, r3, #4
     340:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     344:	e51b300c 	ldr	r3, [fp, #-12]
     348:	e2833004 	add	r3, r3, #4
     34c:	e50b300c 	str	r3, [fp, #-12]
     350:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     354:	e3530003 	cmp	r3, #3
     358:	8afffff3 	bhi	32c <memset+0xa8>
     35c:	e51b300c 	ldr	r3, [fp, #-12]
     360:	e50b3008 	str	r3, [fp, #-8]
     364:	ea000008 	b	38c <memset+0x108>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e55b200d 	ldrb	r2, [fp, #-13]
     370:	e5c32000 	strb	r2, [r3]
     374:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     378:	e2433001 	sub	r3, r3, #1
     37c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     390:	e3530000 	cmp	r3, #0
     394:	1afffff3 	bne	368 <memset+0xe4>
     398:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     39c:	e1a00003 	mov	r0, r3
     3a0:	e28bd000 	add	sp, fp, #0
     3a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a8:	e12fff1e 	bx	lr

000003ac <strchr>:
     3ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3b0:	e28db000 	add	fp, sp, #0
     3b4:	e24dd00c 	sub	sp, sp, #12
     3b8:	e50b0008 	str	r0, [fp, #-8]
     3bc:	e1a03001 	mov	r3, r1
     3c0:	e54b3009 	strb	r3, [fp, #-9]
     3c4:	ea000009 	b	3f0 <strchr+0x44>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e5d33000 	ldrb	r3, [r3]
     3d0:	e55b2009 	ldrb	r2, [fp, #-9]
     3d4:	e1520003 	cmp	r2, r3
     3d8:	1a000001 	bne	3e4 <strchr+0x38>
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	ea000007 	b	404 <strchr+0x58>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2833001 	add	r3, r3, #1
     3ec:	e50b3008 	str	r3, [fp, #-8]
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e5d33000 	ldrb	r3, [r3]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	1afffff1 	bne	3c8 <strchr+0x1c>
     400:	e3a03000 	mov	r3, #0
     404:	e1a00003 	mov	r0, r3
     408:	e28bd000 	add	sp, fp, #0
     40c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     410:	e12fff1e 	bx	lr

00000414 <gets>:
     414:	e92d4800 	push	{fp, lr}
     418:	e28db004 	add	fp, sp, #4
     41c:	e24dd018 	sub	sp, sp, #24
     420:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     424:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     428:	e3a03000 	mov	r3, #0
     42c:	e50b3008 	str	r3, [fp, #-8]
     430:	ea000016 	b	490 <gets+0x7c>
     434:	e24b300d 	sub	r3, fp, #13
     438:	e3a02001 	mov	r2, #1
     43c:	e1a01003 	mov	r1, r3
     440:	e3a00000 	mov	r0, #0
     444:	eb00009b 	bl	6b8 <read>
     448:	e50b000c 	str	r0, [fp, #-12]
     44c:	e51b300c 	ldr	r3, [fp, #-12]
     450:	e3530000 	cmp	r3, #0
     454:	da000013 	ble	4a8 <gets+0x94>
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e2832001 	add	r2, r3, #1
     460:	e50b2008 	str	r2, [fp, #-8]
     464:	e1a02003 	mov	r2, r3
     468:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     46c:	e0833002 	add	r3, r3, r2
     470:	e55b200d 	ldrb	r2, [fp, #-13]
     474:	e5c32000 	strb	r2, [r3]
     478:	e55b300d 	ldrb	r3, [fp, #-13]
     47c:	e353000a 	cmp	r3, #10
     480:	0a000009 	beq	4ac <gets+0x98>
     484:	e55b300d 	ldrb	r3, [fp, #-13]
     488:	e353000d 	cmp	r3, #13
     48c:	0a000006 	beq	4ac <gets+0x98>
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e2833001 	add	r3, r3, #1
     498:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     49c:	e1520003 	cmp	r2, r3
     4a0:	caffffe3 	bgt	434 <gets+0x20>
     4a4:	ea000000 	b	4ac <gets+0x98>
     4a8:	e1a00000 	nop			@ (mov r0, r0)
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4b4:	e0823003 	add	r3, r2, r3
     4b8:	e3a02000 	mov	r2, #0
     4bc:	e5c32000 	strb	r2, [r3]
     4c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4c4:	e1a00003 	mov	r0, r3
     4c8:	e24bd004 	sub	sp, fp, #4
     4cc:	e8bd8800 	pop	{fp, pc}

000004d0 <stat>:
     4d0:	e92d4800 	push	{fp, lr}
     4d4:	e28db004 	add	fp, sp, #4
     4d8:	e24dd010 	sub	sp, sp, #16
     4dc:	e50b0010 	str	r0, [fp, #-16]
     4e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4e4:	e3a01000 	mov	r1, #0
     4e8:	e51b0010 	ldr	r0, [fp, #-16]
     4ec:	eb00009e 	bl	76c <open>
     4f0:	e50b0008 	str	r0, [fp, #-8]
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e3530000 	cmp	r3, #0
     4fc:	aa000001 	bge	508 <stat+0x38>
     500:	e3e03000 	mvn	r3, #0
     504:	ea000006 	b	524 <stat+0x54>
     508:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     50c:	e51b0008 	ldr	r0, [fp, #-8]
     510:	eb0000b0 	bl	7d8 <fstat>
     514:	e50b000c 	str	r0, [fp, #-12]
     518:	e51b0008 	ldr	r0, [fp, #-8]
     51c:	eb000077 	bl	700 <close>
     520:	e51b300c 	ldr	r3, [fp, #-12]
     524:	e1a00003 	mov	r0, r3
     528:	e24bd004 	sub	sp, fp, #4
     52c:	e8bd8800 	pop	{fp, pc}

00000530 <atoi>:
     530:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     534:	e28db000 	add	fp, sp, #0
     538:	e24dd014 	sub	sp, sp, #20
     53c:	e50b0010 	str	r0, [fp, #-16]
     540:	e3a03000 	mov	r3, #0
     544:	e50b3008 	str	r3, [fp, #-8]
     548:	ea00000c 	b	580 <atoi+0x50>
     54c:	e51b2008 	ldr	r2, [fp, #-8]
     550:	e1a03002 	mov	r3, r2
     554:	e1a03103 	lsl	r3, r3, #2
     558:	e0833002 	add	r3, r3, r2
     55c:	e1a03083 	lsl	r3, r3, #1
     560:	e1a01003 	mov	r1, r3
     564:	e51b3010 	ldr	r3, [fp, #-16]
     568:	e2832001 	add	r2, r3, #1
     56c:	e50b2010 	str	r2, [fp, #-16]
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e0813003 	add	r3, r1, r3
     578:	e2433030 	sub	r3, r3, #48	@ 0x30
     57c:	e50b3008 	str	r3, [fp, #-8]
     580:	e51b3010 	ldr	r3, [fp, #-16]
     584:	e5d33000 	ldrb	r3, [r3]
     588:	e353002f 	cmp	r3, #47	@ 0x2f
     58c:	9a000003 	bls	5a0 <atoi+0x70>
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e5d33000 	ldrb	r3, [r3]
     598:	e3530039 	cmp	r3, #57	@ 0x39
     59c:	9affffea 	bls	54c <atoi+0x1c>
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <memmove>:
     5b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b8:	e28db000 	add	fp, sp, #0
     5bc:	e24dd01c 	sub	sp, sp, #28
     5c0:	e50b0010 	str	r0, [fp, #-16]
     5c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5c8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e50b3008 	str	r3, [fp, #-8]
     5d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5d8:	e50b300c 	str	r3, [fp, #-12]
     5dc:	ea000007 	b	600 <memmove+0x4c>
     5e0:	e51b200c 	ldr	r2, [fp, #-12]
     5e4:	e2823001 	add	r3, r2, #1
     5e8:	e50b300c 	str	r3, [fp, #-12]
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e2831001 	add	r1, r3, #1
     5f4:	e50b1008 	str	r1, [fp, #-8]
     5f8:	e5d22000 	ldrb	r2, [r2]
     5fc:	e5c32000 	strb	r2, [r3]
     600:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     604:	e2432001 	sub	r2, r3, #1
     608:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     60c:	e3530000 	cmp	r3, #0
     610:	cafffff2 	bgt	5e0 <memmove+0x2c>
     614:	e51b3010 	ldr	r3, [fp, #-16]
     618:	e1a00003 	mov	r0, r3
     61c:	e28bd000 	add	sp, fp, #0
     620:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <fork>:
     628:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     62c:	e1a04003 	mov	r4, r3
     630:	e1a03002 	mov	r3, r2
     634:	e1a02001 	mov	r2, r1
     638:	e1a01000 	mov	r1, r0
     63c:	e3a00001 	mov	r0, #1
     640:	ef000000 	svc	0x00000000
     644:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <exit>:
     64c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     650:	e1a04003 	mov	r4, r3
     654:	e1a03002 	mov	r3, r2
     658:	e1a02001 	mov	r2, r1
     65c:	e1a01000 	mov	r1, r0
     660:	e3a00002 	mov	r0, #2
     664:	ef000000 	svc	0x00000000
     668:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     66c:	e12fff1e 	bx	lr

00000670 <wait>:
     670:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     674:	e1a04003 	mov	r4, r3
     678:	e1a03002 	mov	r3, r2
     67c:	e1a02001 	mov	r2, r1
     680:	e1a01000 	mov	r1, r0
     684:	e3a00003 	mov	r0, #3
     688:	ef000000 	svc	0x00000000
     68c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <pipe>:
     694:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     698:	e1a04003 	mov	r4, r3
     69c:	e1a03002 	mov	r3, r2
     6a0:	e1a02001 	mov	r2, r1
     6a4:	e1a01000 	mov	r1, r0
     6a8:	e3a00004 	mov	r0, #4
     6ac:	ef000000 	svc	0x00000000
     6b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <read>:
     6b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6bc:	e1a04003 	mov	r4, r3
     6c0:	e1a03002 	mov	r3, r2
     6c4:	e1a02001 	mov	r2, r1
     6c8:	e1a01000 	mov	r1, r0
     6cc:	e3a00005 	mov	r0, #5
     6d0:	ef000000 	svc	0x00000000
     6d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <write>:
     6dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e0:	e1a04003 	mov	r4, r3
     6e4:	e1a03002 	mov	r3, r2
     6e8:	e1a02001 	mov	r2, r1
     6ec:	e1a01000 	mov	r1, r0
     6f0:	e3a00010 	mov	r0, #16
     6f4:	ef000000 	svc	0x00000000
     6f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6fc:	e12fff1e 	bx	lr

00000700 <close>:
     700:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     704:	e1a04003 	mov	r4, r3
     708:	e1a03002 	mov	r3, r2
     70c:	e1a02001 	mov	r2, r1
     710:	e1a01000 	mov	r1, r0
     714:	e3a00015 	mov	r0, #21
     718:	ef000000 	svc	0x00000000
     71c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <kill>:
     724:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     728:	e1a04003 	mov	r4, r3
     72c:	e1a03002 	mov	r3, r2
     730:	e1a02001 	mov	r2, r1
     734:	e1a01000 	mov	r1, r0
     738:	e3a00006 	mov	r0, #6
     73c:	ef000000 	svc	0x00000000
     740:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     744:	e12fff1e 	bx	lr

00000748 <exec>:
     748:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     74c:	e1a04003 	mov	r4, r3
     750:	e1a03002 	mov	r3, r2
     754:	e1a02001 	mov	r2, r1
     758:	e1a01000 	mov	r1, r0
     75c:	e3a00007 	mov	r0, #7
     760:	ef000000 	svc	0x00000000
     764:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <open>:
     76c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     770:	e1a04003 	mov	r4, r3
     774:	e1a03002 	mov	r3, r2
     778:	e1a02001 	mov	r2, r1
     77c:	e1a01000 	mov	r1, r0
     780:	e3a0000f 	mov	r0, #15
     784:	ef000000 	svc	0x00000000
     788:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     78c:	e12fff1e 	bx	lr

00000790 <mknod>:
     790:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     794:	e1a04003 	mov	r4, r3
     798:	e1a03002 	mov	r3, r2
     79c:	e1a02001 	mov	r2, r1
     7a0:	e1a01000 	mov	r1, r0
     7a4:	e3a00011 	mov	r0, #17
     7a8:	ef000000 	svc	0x00000000
     7ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b0:	e12fff1e 	bx	lr

000007b4 <unlink>:
     7b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b8:	e1a04003 	mov	r4, r3
     7bc:	e1a03002 	mov	r3, r2
     7c0:	e1a02001 	mov	r2, r1
     7c4:	e1a01000 	mov	r1, r0
     7c8:	e3a00012 	mov	r0, #18
     7cc:	ef000000 	svc	0x00000000
     7d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d4:	e12fff1e 	bx	lr

000007d8 <fstat>:
     7d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7dc:	e1a04003 	mov	r4, r3
     7e0:	e1a03002 	mov	r3, r2
     7e4:	e1a02001 	mov	r2, r1
     7e8:	e1a01000 	mov	r1, r0
     7ec:	e3a00008 	mov	r0, #8
     7f0:	ef000000 	svc	0x00000000
     7f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <link>:
     7fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     800:	e1a04003 	mov	r4, r3
     804:	e1a03002 	mov	r3, r2
     808:	e1a02001 	mov	r2, r1
     80c:	e1a01000 	mov	r1, r0
     810:	e3a00013 	mov	r0, #19
     814:	ef000000 	svc	0x00000000
     818:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <mkdir>:
     820:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     824:	e1a04003 	mov	r4, r3
     828:	e1a03002 	mov	r3, r2
     82c:	e1a02001 	mov	r2, r1
     830:	e1a01000 	mov	r1, r0
     834:	e3a00014 	mov	r0, #20
     838:	ef000000 	svc	0x00000000
     83c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     840:	e12fff1e 	bx	lr

00000844 <chdir>:
     844:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     848:	e1a04003 	mov	r4, r3
     84c:	e1a03002 	mov	r3, r2
     850:	e1a02001 	mov	r2, r1
     854:	e1a01000 	mov	r1, r0
     858:	e3a00009 	mov	r0, #9
     85c:	ef000000 	svc	0x00000000
     860:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     864:	e12fff1e 	bx	lr

00000868 <dup>:
     868:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     86c:	e1a04003 	mov	r4, r3
     870:	e1a03002 	mov	r3, r2
     874:	e1a02001 	mov	r2, r1
     878:	e1a01000 	mov	r1, r0
     87c:	e3a0000a 	mov	r0, #10
     880:	ef000000 	svc	0x00000000
     884:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <getpid>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a0000b 	mov	r0, #11
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <sbrk>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a0000c 	mov	r0, #12
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <sleep>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a0000d 	mov	r0, #13
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <uptime>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a0000e 	mov	r0, #14
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <ps>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00016 	mov	r0, #22
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <settickets>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00017 	mov	r0, #23
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <srand>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00018 	mov	r0, #24
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <getpinfo>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00019 	mov	r0, #25
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <putc>:
     9ac:	e92d4800 	push	{fp, lr}
     9b0:	e28db004 	add	fp, sp, #4
     9b4:	e24dd008 	sub	sp, sp, #8
     9b8:	e50b0008 	str	r0, [fp, #-8]
     9bc:	e1a03001 	mov	r3, r1
     9c0:	e54b3009 	strb	r3, [fp, #-9]
     9c4:	e24b3009 	sub	r3, fp, #9
     9c8:	e3a02001 	mov	r2, #1
     9cc:	e1a01003 	mov	r1, r3
     9d0:	e51b0008 	ldr	r0, [fp, #-8]
     9d4:	ebffff40 	bl	6dc <write>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}

000009e4 <printint>:
     9e4:	e92d4800 	push	{fp, lr}
     9e8:	e28db004 	add	fp, sp, #4
     9ec:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9f0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9f4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9f8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9fc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a00:	e3a03000 	mov	r3, #0
     a04:	e50b300c 	str	r3, [fp, #-12]
     a08:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a0c:	e3530000 	cmp	r3, #0
     a10:	0a000008 	beq	a38 <printint+0x54>
     a14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a18:	e3530000 	cmp	r3, #0
     a1c:	aa000005 	bge	a38 <printint+0x54>
     a20:	e3a03001 	mov	r3, #1
     a24:	e50b300c 	str	r3, [fp, #-12]
     a28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a2c:	e2633000 	rsb	r3, r3, #0
     a30:	e50b3010 	str	r3, [fp, #-16]
     a34:	ea000001 	b	a40 <printint+0x5c>
     a38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a3c:	e50b3010 	str	r3, [fp, #-16]
     a40:	e3a03000 	mov	r3, #0
     a44:	e50b3008 	str	r3, [fp, #-8]
     a48:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a4c:	e51b3010 	ldr	r3, [fp, #-16]
     a50:	e1a01002 	mov	r1, r2
     a54:	e1a00003 	mov	r0, r3
     a58:	eb0001d5 	bl	11b4 <__aeabi_uidivmod>
     a5c:	e1a03001 	mov	r3, r1
     a60:	e1a01003 	mov	r1, r3
     a64:	e51b3008 	ldr	r3, [fp, #-8]
     a68:	e2832001 	add	r2, r3, #1
     a6c:	e50b2008 	str	r2, [fp, #-8]
     a70:	e59f20a0 	ldr	r2, [pc, #160]	@ b18 <printint+0x134>
     a74:	e7d22001 	ldrb	r2, [r2, r1]
     a78:	e2433004 	sub	r3, r3, #4
     a7c:	e083300b 	add	r3, r3, fp
     a80:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a84:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a88:	e1a01003 	mov	r1, r3
     a8c:	e51b0010 	ldr	r0, [fp, #-16]
     a90:	eb00018a 	bl	10c0 <__udivsi3>
     a94:	e1a03000 	mov	r3, r0
     a98:	e50b3010 	str	r3, [fp, #-16]
     a9c:	e51b3010 	ldr	r3, [fp, #-16]
     aa0:	e3530000 	cmp	r3, #0
     aa4:	1affffe7 	bne	a48 <printint+0x64>
     aa8:	e51b300c 	ldr	r3, [fp, #-12]
     aac:	e3530000 	cmp	r3, #0
     ab0:	0a00000e 	beq	af0 <printint+0x10c>
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e2832001 	add	r2, r3, #1
     abc:	e50b2008 	str	r2, [fp, #-8]
     ac0:	e2433004 	sub	r3, r3, #4
     ac4:	e083300b 	add	r3, r3, fp
     ac8:	e3a0202d 	mov	r2, #45	@ 0x2d
     acc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ad0:	ea000006 	b	af0 <printint+0x10c>
     ad4:	e24b2020 	sub	r2, fp, #32
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e0823003 	add	r3, r2, r3
     ae0:	e5d33000 	ldrb	r3, [r3]
     ae4:	e1a01003 	mov	r1, r3
     ae8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     aec:	ebffffae 	bl	9ac <putc>
     af0:	e51b3008 	ldr	r3, [fp, #-8]
     af4:	e2433001 	sub	r3, r3, #1
     af8:	e50b3008 	str	r3, [fp, #-8]
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e3530000 	cmp	r3, #0
     b04:	aafffff2 	bge	ad4 <printint+0xf0>
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	e1a00000 	nop			@ (mov r0, r0)
     b10:	e24bd004 	sub	sp, fp, #4
     b14:	e8bd8800 	pop	{fp, pc}
     b18:	000011f0 	.word	0x000011f0

00000b1c <printf>:
     b1c:	e92d000e 	push	{r1, r2, r3}
     b20:	e92d4800 	push	{fp, lr}
     b24:	e28db004 	add	fp, sp, #4
     b28:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b2c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b30:	e3a03000 	mov	r3, #0
     b34:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b38:	e28b3008 	add	r3, fp, #8
     b3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b40:	e3a03000 	mov	r3, #0
     b44:	e50b3010 	str	r3, [fp, #-16]
     b48:	ea000074 	b	d20 <printf+0x204>
     b4c:	e59b2004 	ldr	r2, [fp, #4]
     b50:	e51b3010 	ldr	r3, [fp, #-16]
     b54:	e0823003 	add	r3, r2, r3
     b58:	e5d33000 	ldrb	r3, [r3]
     b5c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b64:	e3530000 	cmp	r3, #0
     b68:	1a00000b 	bne	b9c <printf+0x80>
     b6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b70:	e3530025 	cmp	r3, #37	@ 0x25
     b74:	1a000002 	bne	b84 <printf+0x68>
     b78:	e3a03025 	mov	r3, #37	@ 0x25
     b7c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b80:	ea000063 	b	d14 <printf+0x1f8>
     b84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b88:	e6ef3073 	uxtb	r3, r3
     b8c:	e1a01003 	mov	r1, r3
     b90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b94:	ebffff84 	bl	9ac <putc>
     b98:	ea00005d 	b	d14 <printf+0x1f8>
     b9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ba0:	e3530025 	cmp	r3, #37	@ 0x25
     ba4:	1a00005a 	bne	d14 <printf+0x1f8>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e3530064 	cmp	r3, #100	@ 0x64
     bb0:	1a00000a 	bne	be0 <printf+0xc4>
     bb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb8:	e5933000 	ldr	r3, [r3]
     bbc:	e1a01003 	mov	r1, r3
     bc0:	e3a03001 	mov	r3, #1
     bc4:	e3a0200a 	mov	r2, #10
     bc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bcc:	ebffff84 	bl	9e4 <printint>
     bd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd4:	e2833004 	add	r3, r3, #4
     bd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	ea00004a 	b	d0c <printf+0x1f0>
     be0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be4:	e3530078 	cmp	r3, #120	@ 0x78
     be8:	0a000002 	beq	bf8 <printf+0xdc>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e3530070 	cmp	r3, #112	@ 0x70
     bf4:	1a00000a 	bne	c24 <printf+0x108>
     bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bfc:	e5933000 	ldr	r3, [r3]
     c00:	e1a01003 	mov	r1, r3
     c04:	e3a03000 	mov	r3, #0
     c08:	e3a02010 	mov	r2, #16
     c0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c10:	ebffff73 	bl	9e4 <printint>
     c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c18:	e2833004 	add	r3, r3, #4
     c1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c20:	ea000039 	b	d0c <printf+0x1f0>
     c24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c28:	e3530073 	cmp	r3, #115	@ 0x73
     c2c:	1a000018 	bne	c94 <printf+0x178>
     c30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c34:	e5933000 	ldr	r3, [r3]
     c38:	e50b300c 	str	r3, [fp, #-12]
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c40:	e2833004 	add	r3, r3, #4
     c44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c48:	e51b300c 	ldr	r3, [fp, #-12]
     c4c:	e3530000 	cmp	r3, #0
     c50:	1a00000a 	bne	c80 <printf+0x164>
     c54:	e59f30f4 	ldr	r3, [pc, #244]	@ d50 <printf+0x234>
     c58:	e50b300c 	str	r3, [fp, #-12]
     c5c:	ea000007 	b	c80 <printf+0x164>
     c60:	e51b300c 	ldr	r3, [fp, #-12]
     c64:	e5d33000 	ldrb	r3, [r3]
     c68:	e1a01003 	mov	r1, r3
     c6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c70:	ebffff4d 	bl	9ac <putc>
     c74:	e51b300c 	ldr	r3, [fp, #-12]
     c78:	e2833001 	add	r3, r3, #1
     c7c:	e50b300c 	str	r3, [fp, #-12]
     c80:	e51b300c 	ldr	r3, [fp, #-12]
     c84:	e5d33000 	ldrb	r3, [r3]
     c88:	e3530000 	cmp	r3, #0
     c8c:	1afffff3 	bne	c60 <printf+0x144>
     c90:	ea00001d 	b	d0c <printf+0x1f0>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e3530063 	cmp	r3, #99	@ 0x63
     c9c:	1a000009 	bne	cc8 <printf+0x1ac>
     ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e6ef3073 	uxtb	r3, r3
     cac:	e1a01003 	mov	r1, r3
     cb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb4:	ebffff3c 	bl	9ac <putc>
     cb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cbc:	e2833004 	add	r3, r3, #4
     cc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cc4:	ea000010 	b	d0c <printf+0x1f0>
     cc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ccc:	e3530025 	cmp	r3, #37	@ 0x25
     cd0:	1a000005 	bne	cec <printf+0x1d0>
     cd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd8:	e6ef3073 	uxtb	r3, r3
     cdc:	e1a01003 	mov	r1, r3
     ce0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce4:	ebffff30 	bl	9ac <putc>
     ce8:	ea000007 	b	d0c <printf+0x1f0>
     cec:	e3a01025 	mov	r1, #37	@ 0x25
     cf0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf4:	ebffff2c 	bl	9ac <putc>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e6ef3073 	uxtb	r3, r3
     d00:	e1a01003 	mov	r1, r3
     d04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d08:	ebffff27 	bl	9ac <putc>
     d0c:	e3a03000 	mov	r3, #0
     d10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d14:	e51b3010 	ldr	r3, [fp, #-16]
     d18:	e2833001 	add	r3, r3, #1
     d1c:	e50b3010 	str	r3, [fp, #-16]
     d20:	e59b2004 	ldr	r2, [fp, #4]
     d24:	e51b3010 	ldr	r3, [fp, #-16]
     d28:	e0823003 	add	r3, r2, r3
     d2c:	e5d33000 	ldrb	r3, [r3]
     d30:	e3530000 	cmp	r3, #0
     d34:	1affff84 	bne	b4c <printf+0x30>
     d38:	e1a00000 	nop			@ (mov r0, r0)
     d3c:	e1a00000 	nop			@ (mov r0, r0)
     d40:	e24bd004 	sub	sp, fp, #4
     d44:	e8bd4800 	pop	{fp, lr}
     d48:	e28dd00c 	add	sp, sp, #12
     d4c:	e12fff1e 	bx	lr
     d50:	000011e8 	.word	0x000011e8

00000d54 <free>:
     d54:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d58:	e28db000 	add	fp, sp, #0
     d5c:	e24dd014 	sub	sp, sp, #20
     d60:	e50b0010 	str	r0, [fp, #-16]
     d64:	e51b3010 	ldr	r3, [fp, #-16]
     d68:	e2433008 	sub	r3, r3, #8
     d6c:	e50b300c 	str	r3, [fp, #-12]
     d70:	e59f3154 	ldr	r3, [pc, #340]	@ ecc <free+0x178>
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e50b3008 	str	r3, [fp, #-8]
     d7c:	ea000010 	b	dc4 <free+0x70>
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933000 	ldr	r3, [r3]
     d88:	e51b2008 	ldr	r2, [fp, #-8]
     d8c:	e1520003 	cmp	r2, r3
     d90:	3a000008 	bcc	db8 <free+0x64>
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e1520003 	cmp	r2, r3
     da0:	8a000010 	bhi	de8 <free+0x94>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5933000 	ldr	r3, [r3]
     dac:	e51b200c 	ldr	r2, [fp, #-12]
     db0:	e1520003 	cmp	r2, r3
     db4:	3a00000b 	bcc	de8 <free+0x94>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e50b3008 	str	r3, [fp, #-8]
     dc4:	e51b200c 	ldr	r2, [fp, #-12]
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e1520003 	cmp	r2, r3
     dd0:	9affffea 	bls	d80 <free+0x2c>
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e51b200c 	ldr	r2, [fp, #-12]
     de0:	e1520003 	cmp	r2, r3
     de4:	2affffe5 	bcs	d80 <free+0x2c>
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5933004 	ldr	r3, [r3, #4]
     df0:	e1a03183 	lsl	r3, r3, #3
     df4:	e51b200c 	ldr	r2, [fp, #-12]
     df8:	e0822003 	add	r2, r2, r3
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e5933000 	ldr	r3, [r3]
     e04:	e1520003 	cmp	r2, r3
     e08:	1a00000d 	bne	e44 <free+0xf0>
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5932004 	ldr	r2, [r3, #4]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933000 	ldr	r3, [r3]
     e1c:	e5933004 	ldr	r3, [r3, #4]
     e20:	e0822003 	add	r2, r2, r3
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5832004 	str	r2, [r3, #4]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e5932000 	ldr	r2, [r3]
     e38:	e51b300c 	ldr	r3, [fp, #-12]
     e3c:	e5832000 	str	r2, [r3]
     e40:	ea000003 	b	e54 <free+0x100>
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e5932000 	ldr	r2, [r3]
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e5832000 	str	r2, [r3]
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933004 	ldr	r3, [r3, #4]
     e5c:	e1a03183 	lsl	r3, r3, #3
     e60:	e51b2008 	ldr	r2, [fp, #-8]
     e64:	e0823003 	add	r3, r2, r3
     e68:	e51b200c 	ldr	r2, [fp, #-12]
     e6c:	e1520003 	cmp	r2, r3
     e70:	1a00000b 	bne	ea4 <free+0x150>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5932004 	ldr	r2, [r3, #4]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e5933004 	ldr	r3, [r3, #4]
     e84:	e0822003 	add	r2, r2, r3
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5832004 	str	r2, [r3, #4]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5932000 	ldr	r2, [r3]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5832000 	str	r2, [r3]
     ea0:	ea000002 	b	eb0 <free+0x15c>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e51b200c 	ldr	r2, [fp, #-12]
     eac:	e5832000 	str	r2, [r3]
     eb0:	e59f2014 	ldr	r2, [pc, #20]	@ ecc <free+0x178>
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5823000 	str	r3, [r2]
     ebc:	e1a00000 	nop			@ (mov r0, r0)
     ec0:	e28bd000 	add	sp, fp, #0
     ec4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ec8:	e12fff1e 	bx	lr
     ecc:	0000120c 	.word	0x0000120c

00000ed0 <morecore>:
     ed0:	e92d4800 	push	{fp, lr}
     ed4:	e28db004 	add	fp, sp, #4
     ed8:	e24dd010 	sub	sp, sp, #16
     edc:	e50b0010 	str	r0, [fp, #-16]
     ee0:	e51b3010 	ldr	r3, [fp, #-16]
     ee4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ee8:	2a000001 	bcs	ef4 <morecore+0x24>
     eec:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ef0:	e50b3010 	str	r3, [fp, #-16]
     ef4:	e51b3010 	ldr	r3, [fp, #-16]
     ef8:	e1a03183 	lsl	r3, r3, #3
     efc:	e1a00003 	mov	r0, r3
     f00:	ebfffe6a 	bl	8b0 <sbrk>
     f04:	e50b0008 	str	r0, [fp, #-8]
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e3730001 	cmn	r3, #1
     f10:	1a000001 	bne	f1c <morecore+0x4c>
     f14:	e3a03000 	mov	r3, #0
     f18:	ea00000a 	b	f48 <morecore+0x78>
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e51b2010 	ldr	r2, [fp, #-16]
     f2c:	e5832004 	str	r2, [r3, #4]
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e2833008 	add	r3, r3, #8
     f38:	e1a00003 	mov	r0, r3
     f3c:	ebffff84 	bl	d54 <free>
     f40:	e59f300c 	ldr	r3, [pc, #12]	@ f54 <morecore+0x84>
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e1a00003 	mov	r0, r3
     f4c:	e24bd004 	sub	sp, fp, #4
     f50:	e8bd8800 	pop	{fp, pc}
     f54:	0000120c 	.word	0x0000120c

00000f58 <malloc>:
     f58:	e92d4800 	push	{fp, lr}
     f5c:	e28db004 	add	fp, sp, #4
     f60:	e24dd018 	sub	sp, sp, #24
     f64:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f6c:	e2833007 	add	r3, r3, #7
     f70:	e1a031a3 	lsr	r3, r3, #3
     f74:	e2833001 	add	r3, r3, #1
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	e59f3134 	ldr	r3, [pc, #308]	@ 10b8 <malloc+0x160>
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e50b300c 	str	r3, [fp, #-12]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e3530000 	cmp	r3, #0
     f90:	1a00000b 	bne	fc4 <malloc+0x6c>
     f94:	e59f3120 	ldr	r3, [pc, #288]	@ 10bc <malloc+0x164>
     f98:	e50b300c 	str	r3, [fp, #-12]
     f9c:	e59f2114 	ldr	r2, [pc, #276]	@ 10b8 <malloc+0x160>
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e5823000 	str	r3, [r2]
     fa8:	e59f3108 	ldr	r3, [pc, #264]	@ 10b8 <malloc+0x160>
     fac:	e5933000 	ldr	r3, [r3]
     fb0:	e59f2104 	ldr	r2, [pc, #260]	@ 10bc <malloc+0x164>
     fb4:	e5823000 	str	r3, [r2]
     fb8:	e59f30fc 	ldr	r3, [pc, #252]	@ 10bc <malloc+0x164>
     fbc:	e3a02000 	mov	r2, #0
     fc0:	e5832004 	str	r2, [r3, #4]
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e50b3008 	str	r3, [fp, #-8]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5933004 	ldr	r3, [r3, #4]
     fd8:	e51b2010 	ldr	r2, [fp, #-16]
     fdc:	e1520003 	cmp	r2, r3
     fe0:	8a00001e 	bhi	1060 <malloc+0x108>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933004 	ldr	r3, [r3, #4]
     fec:	e51b2010 	ldr	r2, [fp, #-16]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	1a000004 	bne	100c <malloc+0xb4>
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e5932000 	ldr	r2, [r3]
    1000:	e51b300c 	ldr	r3, [fp, #-12]
    1004:	e5832000 	str	r2, [r3]
    1008:	ea00000e 	b	1048 <malloc+0xf0>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5932004 	ldr	r2, [r3, #4]
    1014:	e51b3010 	ldr	r3, [fp, #-16]
    1018:	e0422003 	sub	r2, r2, r3
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5832004 	str	r2, [r3, #4]
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5933004 	ldr	r3, [r3, #4]
    102c:	e1a03183 	lsl	r3, r3, #3
    1030:	e51b2008 	ldr	r2, [fp, #-8]
    1034:	e0823003 	add	r3, r2, r3
    1038:	e50b3008 	str	r3, [fp, #-8]
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e51b2010 	ldr	r2, [fp, #-16]
    1044:	e5832004 	str	r2, [r3, #4]
    1048:	e59f2068 	ldr	r2, [pc, #104]	@ 10b8 <malloc+0x160>
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5823000 	str	r3, [r2]
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e2833008 	add	r3, r3, #8
    105c:	ea000012 	b	10ac <malloc+0x154>
    1060:	e59f3050 	ldr	r3, [pc, #80]	@ 10b8 <malloc+0x160>
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e51b2008 	ldr	r2, [fp, #-8]
    106c:	e1520003 	cmp	r2, r3
    1070:	1a000007 	bne	1094 <malloc+0x13c>
    1074:	e51b0010 	ldr	r0, [fp, #-16]
    1078:	ebffff94 	bl	ed0 <morecore>
    107c:	e50b0008 	str	r0, [fp, #-8]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e3530000 	cmp	r3, #0
    1088:	1a000001 	bne	1094 <malloc+0x13c>
    108c:	e3a03000 	mov	r3, #0
    1090:	ea000005 	b	10ac <malloc+0x154>
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e50b300c 	str	r3, [fp, #-12]
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e5933000 	ldr	r3, [r3]
    10a4:	e50b3008 	str	r3, [fp, #-8]
    10a8:	eaffffc8 	b	fd0 <malloc+0x78>
    10ac:	e1a00003 	mov	r0, r3
    10b0:	e24bd004 	sub	sp, fp, #4
    10b4:	e8bd8800 	pop	{fp, pc}
    10b8:	0000120c 	.word	0x0000120c
    10bc:	00001204 	.word	0x00001204

000010c0 <__udivsi3>:
    10c0:	e2512001 	subs	r2, r1, #1
    10c4:	012fff1e 	bxeq	lr
    10c8:	3a000036 	bcc	11a8 <__udivsi3+0xe8>
    10cc:	e1500001 	cmp	r0, r1
    10d0:	9a000022 	bls	1160 <__udivsi3+0xa0>
    10d4:	e1110002 	tst	r1, r2
    10d8:	0a000023 	beq	116c <__udivsi3+0xac>
    10dc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10e0:	01a01181 	lsleq	r1, r1, #3
    10e4:	03a03008 	moveq	r3, #8
    10e8:	13a03001 	movne	r3, #1
    10ec:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10f0:	31510000 	cmpcc	r1, r0
    10f4:	31a01201 	lslcc	r1, r1, #4
    10f8:	31a03203 	lslcc	r3, r3, #4
    10fc:	3afffffa 	bcc	10ec <__udivsi3+0x2c>
    1100:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1104:	31510000 	cmpcc	r1, r0
    1108:	31a01081 	lslcc	r1, r1, #1
    110c:	31a03083 	lslcc	r3, r3, #1
    1110:	3afffffa 	bcc	1100 <__udivsi3+0x40>
    1114:	e3a02000 	mov	r2, #0
    1118:	e1500001 	cmp	r0, r1
    111c:	20400001 	subcs	r0, r0, r1
    1120:	21822003 	orrcs	r2, r2, r3
    1124:	e15000a1 	cmp	r0, r1, lsr #1
    1128:	204000a1 	subcs	r0, r0, r1, lsr #1
    112c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1130:	e1500121 	cmp	r0, r1, lsr #2
    1134:	20400121 	subcs	r0, r0, r1, lsr #2
    1138:	21822123 	orrcs	r2, r2, r3, lsr #2
    113c:	e15001a1 	cmp	r0, r1, lsr #3
    1140:	204001a1 	subcs	r0, r0, r1, lsr #3
    1144:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1148:	e3500000 	cmp	r0, #0
    114c:	11b03223 	lsrsne	r3, r3, #4
    1150:	11a01221 	lsrne	r1, r1, #4
    1154:	1affffef 	bne	1118 <__udivsi3+0x58>
    1158:	e1a00002 	mov	r0, r2
    115c:	e12fff1e 	bx	lr
    1160:	03a00001 	moveq	r0, #1
    1164:	13a00000 	movne	r0, #0
    1168:	e12fff1e 	bx	lr
    116c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1170:	21a01821 	lsrcs	r1, r1, #16
    1174:	23a02010 	movcs	r2, #16
    1178:	33a02000 	movcc	r2, #0
    117c:	e3510c01 	cmp	r1, #256	@ 0x100
    1180:	21a01421 	lsrcs	r1, r1, #8
    1184:	22822008 	addcs	r2, r2, #8
    1188:	e3510010 	cmp	r1, #16
    118c:	21a01221 	lsrcs	r1, r1, #4
    1190:	22822004 	addcs	r2, r2, #4
    1194:	e3510004 	cmp	r1, #4
    1198:	82822003 	addhi	r2, r2, #3
    119c:	908220a1 	addls	r2, r2, r1, lsr #1
    11a0:	e1a00230 	lsr	r0, r0, r2
    11a4:	e12fff1e 	bx	lr
    11a8:	e3500000 	cmp	r0, #0
    11ac:	13e00000 	mvnne	r0, #0
    11b0:	ea000007 	b	11d4 <__aeabi_idiv0>

000011b4 <__aeabi_uidivmod>:
    11b4:	e3510000 	cmp	r1, #0
    11b8:	0afffffa 	beq	11a8 <__udivsi3+0xe8>
    11bc:	e92d4003 	push	{r0, r1, lr}
    11c0:	ebffffbe 	bl	10c0 <__udivsi3>
    11c4:	e8bd4006 	pop	{r1, r2, lr}
    11c8:	e0030092 	mul	r3, r2, r0
    11cc:	e0411003 	sub	r1, r1, r3
    11d0:	e12fff1e 	bx	lr

000011d4 <__aeabi_idiv0>:
    11d4:	e12fff1e 	bx	lr
