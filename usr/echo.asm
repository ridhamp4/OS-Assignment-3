
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
      60:	eb0002d1 	bl	bac <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb000171 	bl	64c <exit>
      84:	00001268 	.word	0x00001268
      88:	0000126c 	.word	0x0000126c
      8c:	00001270 	.word	0x00001270

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

000009ac <printpt>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a0001a 	mov	r0, #26
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <pgpte>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a0001b 	mov	r0, #27
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <ugetpid>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a0001c 	mov	r0, #28
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <kpt>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a0001d 	mov	r0, #29
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <putc>:
     a3c:	e92d4800 	push	{fp, lr}
     a40:	e28db004 	add	fp, sp, #4
     a44:	e24dd008 	sub	sp, sp, #8
     a48:	e50b0008 	str	r0, [fp, #-8]
     a4c:	e1a03001 	mov	r3, r1
     a50:	e54b3009 	strb	r3, [fp, #-9]
     a54:	e24b3009 	sub	r3, fp, #9
     a58:	e3a02001 	mov	r2, #1
     a5c:	e1a01003 	mov	r1, r3
     a60:	e51b0008 	ldr	r0, [fp, #-8]
     a64:	ebffff1c 	bl	6dc <write>
     a68:	e1a00000 	nop			@ (mov r0, r0)
     a6c:	e24bd004 	sub	sp, fp, #4
     a70:	e8bd8800 	pop	{fp, pc}

00000a74 <printint>:
     a74:	e92d4800 	push	{fp, lr}
     a78:	e28db004 	add	fp, sp, #4
     a7c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a80:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a84:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a88:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a8c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a90:	e3a03000 	mov	r3, #0
     a94:	e50b300c 	str	r3, [fp, #-12]
     a98:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a9c:	e3530000 	cmp	r3, #0
     aa0:	0a000008 	beq	ac8 <printint+0x54>
     aa4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     aa8:	e3530000 	cmp	r3, #0
     aac:	aa000005 	bge	ac8 <printint+0x54>
     ab0:	e3a03001 	mov	r3, #1
     ab4:	e50b300c 	str	r3, [fp, #-12]
     ab8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     abc:	e2633000 	rsb	r3, r3, #0
     ac0:	e50b3010 	str	r3, [fp, #-16]
     ac4:	ea000001 	b	ad0 <printint+0x5c>
     ac8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     acc:	e50b3010 	str	r3, [fp, #-16]
     ad0:	e3a03000 	mov	r3, #0
     ad4:	e50b3008 	str	r3, [fp, #-8]
     ad8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     adc:	e51b3010 	ldr	r3, [fp, #-16]
     ae0:	e1a01002 	mov	r1, r2
     ae4:	e1a00003 	mov	r0, r3
     ae8:	eb0001d5 	bl	1244 <__aeabi_uidivmod>
     aec:	e1a03001 	mov	r3, r1
     af0:	e1a01003 	mov	r1, r3
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e2832001 	add	r2, r3, #1
     afc:	e50b2008 	str	r2, [fp, #-8]
     b00:	e59f20a0 	ldr	r2, [pc, #160]	@ ba8 <printint+0x134>
     b04:	e7d22001 	ldrb	r2, [r2, r1]
     b08:	e2433004 	sub	r3, r3, #4
     b0c:	e083300b 	add	r3, r3, fp
     b10:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b14:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b18:	e1a01003 	mov	r1, r3
     b1c:	e51b0010 	ldr	r0, [fp, #-16]
     b20:	eb00018a 	bl	1150 <__udivsi3>
     b24:	e1a03000 	mov	r3, r0
     b28:	e50b3010 	str	r3, [fp, #-16]
     b2c:	e51b3010 	ldr	r3, [fp, #-16]
     b30:	e3530000 	cmp	r3, #0
     b34:	1affffe7 	bne	ad8 <printint+0x64>
     b38:	e51b300c 	ldr	r3, [fp, #-12]
     b3c:	e3530000 	cmp	r3, #0
     b40:	0a00000e 	beq	b80 <printint+0x10c>
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e2832001 	add	r2, r3, #1
     b4c:	e50b2008 	str	r2, [fp, #-8]
     b50:	e2433004 	sub	r3, r3, #4
     b54:	e083300b 	add	r3, r3, fp
     b58:	e3a0202d 	mov	r2, #45	@ 0x2d
     b5c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b60:	ea000006 	b	b80 <printint+0x10c>
     b64:	e24b2020 	sub	r2, fp, #32
     b68:	e51b3008 	ldr	r3, [fp, #-8]
     b6c:	e0823003 	add	r3, r2, r3
     b70:	e5d33000 	ldrb	r3, [r3]
     b74:	e1a01003 	mov	r1, r3
     b78:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b7c:	ebffffae 	bl	a3c <putc>
     b80:	e51b3008 	ldr	r3, [fp, #-8]
     b84:	e2433001 	sub	r3, r3, #1
     b88:	e50b3008 	str	r3, [fp, #-8]
     b8c:	e51b3008 	ldr	r3, [fp, #-8]
     b90:	e3530000 	cmp	r3, #0
     b94:	aafffff2 	bge	b64 <printint+0xf0>
     b98:	e1a00000 	nop			@ (mov r0, r0)
     b9c:	e1a00000 	nop			@ (mov r0, r0)
     ba0:	e24bd004 	sub	sp, fp, #4
     ba4:	e8bd8800 	pop	{fp, pc}
     ba8:	00001280 	.word	0x00001280

00000bac <printf>:
     bac:	e92d000e 	push	{r1, r2, r3}
     bb0:	e92d4800 	push	{fp, lr}
     bb4:	e28db004 	add	fp, sp, #4
     bb8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     bbc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     bc0:	e3a03000 	mov	r3, #0
     bc4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bc8:	e28b3008 	add	r3, fp, #8
     bcc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bd0:	e3a03000 	mov	r3, #0
     bd4:	e50b3010 	str	r3, [fp, #-16]
     bd8:	ea000074 	b	db0 <printf+0x204>
     bdc:	e59b2004 	ldr	r2, [fp, #4]
     be0:	e51b3010 	ldr	r3, [fp, #-16]
     be4:	e0823003 	add	r3, r2, r3
     be8:	e5d33000 	ldrb	r3, [r3]
     bec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bf4:	e3530000 	cmp	r3, #0
     bf8:	1a00000b 	bne	c2c <printf+0x80>
     bfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c00:	e3530025 	cmp	r3, #37	@ 0x25
     c04:	1a000002 	bne	c14 <printf+0x68>
     c08:	e3a03025 	mov	r3, #37	@ 0x25
     c0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c10:	ea000063 	b	da4 <printf+0x1f8>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e6ef3073 	uxtb	r3, r3
     c1c:	e1a01003 	mov	r1, r3
     c20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c24:	ebffff84 	bl	a3c <putc>
     c28:	ea00005d 	b	da4 <printf+0x1f8>
     c2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c30:	e3530025 	cmp	r3, #37	@ 0x25
     c34:	1a00005a 	bne	da4 <printf+0x1f8>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c3c:	e3530064 	cmp	r3, #100	@ 0x64
     c40:	1a00000a 	bne	c70 <printf+0xc4>
     c44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e1a01003 	mov	r1, r3
     c50:	e3a03001 	mov	r3, #1
     c54:	e3a0200a 	mov	r2, #10
     c58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c5c:	ebffff84 	bl	a74 <printint>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e2833004 	add	r3, r3, #4
     c68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c6c:	ea00004a 	b	d9c <printf+0x1f0>
     c70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c74:	e3530078 	cmp	r3, #120	@ 0x78
     c78:	0a000002 	beq	c88 <printf+0xdc>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c80:	e3530070 	cmp	r3, #112	@ 0x70
     c84:	1a00000a 	bne	cb4 <printf+0x108>
     c88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c8c:	e5933000 	ldr	r3, [r3]
     c90:	e1a01003 	mov	r1, r3
     c94:	e3a03000 	mov	r3, #0
     c98:	e3a02010 	mov	r2, #16
     c9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca0:	ebffff73 	bl	a74 <printint>
     ca4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca8:	e2833004 	add	r3, r3, #4
     cac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cb0:	ea000039 	b	d9c <printf+0x1f0>
     cb4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb8:	e3530073 	cmp	r3, #115	@ 0x73
     cbc:	1a000018 	bne	d24 <printf+0x178>
     cc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e50b300c 	str	r3, [fp, #-12]
     ccc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	e2833004 	add	r3, r3, #4
     cd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cd8:	e51b300c 	ldr	r3, [fp, #-12]
     cdc:	e3530000 	cmp	r3, #0
     ce0:	1a00000a 	bne	d10 <printf+0x164>
     ce4:	e59f30f4 	ldr	r3, [pc, #244]	@ de0 <printf+0x234>
     ce8:	e50b300c 	str	r3, [fp, #-12]
     cec:	ea000007 	b	d10 <printf+0x164>
     cf0:	e51b300c 	ldr	r3, [fp, #-12]
     cf4:	e5d33000 	ldrb	r3, [r3]
     cf8:	e1a01003 	mov	r1, r3
     cfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d00:	ebffff4d 	bl	a3c <putc>
     d04:	e51b300c 	ldr	r3, [fp, #-12]
     d08:	e2833001 	add	r3, r3, #1
     d0c:	e50b300c 	str	r3, [fp, #-12]
     d10:	e51b300c 	ldr	r3, [fp, #-12]
     d14:	e5d33000 	ldrb	r3, [r3]
     d18:	e3530000 	cmp	r3, #0
     d1c:	1afffff3 	bne	cf0 <printf+0x144>
     d20:	ea00001d 	b	d9c <printf+0x1f0>
     d24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d28:	e3530063 	cmp	r3, #99	@ 0x63
     d2c:	1a000009 	bne	d58 <printf+0x1ac>
     d30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e6ef3073 	uxtb	r3, r3
     d3c:	e1a01003 	mov	r1, r3
     d40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d44:	ebffff3c 	bl	a3c <putc>
     d48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d4c:	e2833004 	add	r3, r3, #4
     d50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d54:	ea000010 	b	d9c <printf+0x1f0>
     d58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d5c:	e3530025 	cmp	r3, #37	@ 0x25
     d60:	1a000005 	bne	d7c <printf+0x1d0>
     d64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d68:	e6ef3073 	uxtb	r3, r3
     d6c:	e1a01003 	mov	r1, r3
     d70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d74:	ebffff30 	bl	a3c <putc>
     d78:	ea000007 	b	d9c <printf+0x1f0>
     d7c:	e3a01025 	mov	r1, #37	@ 0x25
     d80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d84:	ebffff2c 	bl	a3c <putc>
     d88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d8c:	e6ef3073 	uxtb	r3, r3
     d90:	e1a01003 	mov	r1, r3
     d94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d98:	ebffff27 	bl	a3c <putc>
     d9c:	e3a03000 	mov	r3, #0
     da0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     da4:	e51b3010 	ldr	r3, [fp, #-16]
     da8:	e2833001 	add	r3, r3, #1
     dac:	e50b3010 	str	r3, [fp, #-16]
     db0:	e59b2004 	ldr	r2, [fp, #4]
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e0823003 	add	r3, r2, r3
     dbc:	e5d33000 	ldrb	r3, [r3]
     dc0:	e3530000 	cmp	r3, #0
     dc4:	1affff84 	bne	bdc <printf+0x30>
     dc8:	e1a00000 	nop			@ (mov r0, r0)
     dcc:	e1a00000 	nop			@ (mov r0, r0)
     dd0:	e24bd004 	sub	sp, fp, #4
     dd4:	e8bd4800 	pop	{fp, lr}
     dd8:	e28dd00c 	add	sp, sp, #12
     ddc:	e12fff1e 	bx	lr
     de0:	00001278 	.word	0x00001278

00000de4 <free>:
     de4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     de8:	e28db000 	add	fp, sp, #0
     dec:	e24dd014 	sub	sp, sp, #20
     df0:	e50b0010 	str	r0, [fp, #-16]
     df4:	e51b3010 	ldr	r3, [fp, #-16]
     df8:	e2433008 	sub	r3, r3, #8
     dfc:	e50b300c 	str	r3, [fp, #-12]
     e00:	e59f3154 	ldr	r3, [pc, #340]	@ f5c <free+0x178>
     e04:	e5933000 	ldr	r3, [r3]
     e08:	e50b3008 	str	r3, [fp, #-8]
     e0c:	ea000010 	b	e54 <free+0x70>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5933000 	ldr	r3, [r3]
     e18:	e51b2008 	ldr	r2, [fp, #-8]
     e1c:	e1520003 	cmp	r2, r3
     e20:	3a000008 	bcc	e48 <free+0x64>
     e24:	e51b200c 	ldr	r2, [fp, #-12]
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e1520003 	cmp	r2, r3
     e30:	8a000010 	bhi	e78 <free+0x94>
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e51b200c 	ldr	r2, [fp, #-12]
     e40:	e1520003 	cmp	r2, r3
     e44:	3a00000b 	bcc	e78 <free+0x94>
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e5933000 	ldr	r3, [r3]
     e50:	e50b3008 	str	r3, [fp, #-8]
     e54:	e51b200c 	ldr	r2, [fp, #-12]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e1520003 	cmp	r2, r3
     e60:	9affffea 	bls	e10 <free+0x2c>
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e51b200c 	ldr	r2, [fp, #-12]
     e70:	e1520003 	cmp	r2, r3
     e74:	2affffe5 	bcs	e10 <free+0x2c>
     e78:	e51b300c 	ldr	r3, [fp, #-12]
     e7c:	e5933004 	ldr	r3, [r3, #4]
     e80:	e1a03183 	lsl	r3, r3, #3
     e84:	e51b200c 	ldr	r2, [fp, #-12]
     e88:	e0822003 	add	r2, r2, r3
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933000 	ldr	r3, [r3]
     e94:	e1520003 	cmp	r2, r3
     e98:	1a00000d 	bne	ed4 <free+0xf0>
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e5932004 	ldr	r2, [r3, #4]
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e5933004 	ldr	r3, [r3, #4]
     eb0:	e0822003 	add	r2, r2, r3
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5832004 	str	r2, [r3, #4]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e5932000 	ldr	r2, [r3]
     ec8:	e51b300c 	ldr	r3, [fp, #-12]
     ecc:	e5832000 	str	r2, [r3]
     ed0:	ea000003 	b	ee4 <free+0x100>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5932000 	ldr	r2, [r3]
     edc:	e51b300c 	ldr	r3, [fp, #-12]
     ee0:	e5832000 	str	r2, [r3]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933004 	ldr	r3, [r3, #4]
     eec:	e1a03183 	lsl	r3, r3, #3
     ef0:	e51b2008 	ldr	r2, [fp, #-8]
     ef4:	e0823003 	add	r3, r2, r3
     ef8:	e51b200c 	ldr	r2, [fp, #-12]
     efc:	e1520003 	cmp	r2, r3
     f00:	1a00000b 	bne	f34 <free+0x150>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5932004 	ldr	r2, [r3, #4]
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5933004 	ldr	r3, [r3, #4]
     f14:	e0822003 	add	r2, r2, r3
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5832004 	str	r2, [r3, #4]
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5932000 	ldr	r2, [r3]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5832000 	str	r2, [r3]
     f30:	ea000002 	b	f40 <free+0x15c>
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e51b200c 	ldr	r2, [fp, #-12]
     f3c:	e5832000 	str	r2, [r3]
     f40:	e59f2014 	ldr	r2, [pc, #20]	@ f5c <free+0x178>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5823000 	str	r3, [r2]
     f4c:	e1a00000 	nop			@ (mov r0, r0)
     f50:	e28bd000 	add	sp, fp, #0
     f54:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f58:	e12fff1e 	bx	lr
     f5c:	0000129c 	.word	0x0000129c

00000f60 <morecore>:
     f60:	e92d4800 	push	{fp, lr}
     f64:	e28db004 	add	fp, sp, #4
     f68:	e24dd010 	sub	sp, sp, #16
     f6c:	e50b0010 	str	r0, [fp, #-16]
     f70:	e51b3010 	ldr	r3, [fp, #-16]
     f74:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f78:	2a000001 	bcs	f84 <morecore+0x24>
     f7c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f80:	e50b3010 	str	r3, [fp, #-16]
     f84:	e51b3010 	ldr	r3, [fp, #-16]
     f88:	e1a03183 	lsl	r3, r3, #3
     f8c:	e1a00003 	mov	r0, r3
     f90:	ebfffe46 	bl	8b0 <sbrk>
     f94:	e50b0008 	str	r0, [fp, #-8]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e3730001 	cmn	r3, #1
     fa0:	1a000001 	bne	fac <morecore+0x4c>
     fa4:	e3a03000 	mov	r3, #0
     fa8:	ea00000a 	b	fd8 <morecore+0x78>
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e50b300c 	str	r3, [fp, #-12]
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e51b2010 	ldr	r2, [fp, #-16]
     fbc:	e5832004 	str	r2, [r3, #4]
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e2833008 	add	r3, r3, #8
     fc8:	e1a00003 	mov	r0, r3
     fcc:	ebffff84 	bl	de4 <free>
     fd0:	e59f300c 	ldr	r3, [pc, #12]	@ fe4 <morecore+0x84>
     fd4:	e5933000 	ldr	r3, [r3]
     fd8:	e1a00003 	mov	r0, r3
     fdc:	e24bd004 	sub	sp, fp, #4
     fe0:	e8bd8800 	pop	{fp, pc}
     fe4:	0000129c 	.word	0x0000129c

00000fe8 <malloc>:
     fe8:	e92d4800 	push	{fp, lr}
     fec:	e28db004 	add	fp, sp, #4
     ff0:	e24dd018 	sub	sp, sp, #24
     ff4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ff8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ffc:	e2833007 	add	r3, r3, #7
    1000:	e1a031a3 	lsr	r3, r3, #3
    1004:	e2833001 	add	r3, r3, #1
    1008:	e50b3010 	str	r3, [fp, #-16]
    100c:	e59f3134 	ldr	r3, [pc, #308]	@ 1148 <malloc+0x160>
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e50b300c 	str	r3, [fp, #-12]
    1018:	e51b300c 	ldr	r3, [fp, #-12]
    101c:	e3530000 	cmp	r3, #0
    1020:	1a00000b 	bne	1054 <malloc+0x6c>
    1024:	e59f3120 	ldr	r3, [pc, #288]	@ 114c <malloc+0x164>
    1028:	e50b300c 	str	r3, [fp, #-12]
    102c:	e59f2114 	ldr	r2, [pc, #276]	@ 1148 <malloc+0x160>
    1030:	e51b300c 	ldr	r3, [fp, #-12]
    1034:	e5823000 	str	r3, [r2]
    1038:	e59f3108 	ldr	r3, [pc, #264]	@ 1148 <malloc+0x160>
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e59f2104 	ldr	r2, [pc, #260]	@ 114c <malloc+0x164>
    1044:	e5823000 	str	r3, [r2]
    1048:	e59f30fc 	ldr	r3, [pc, #252]	@ 114c <malloc+0x164>
    104c:	e3a02000 	mov	r2, #0
    1050:	e5832004 	str	r2, [r3, #4]
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e5933000 	ldr	r3, [r3]
    105c:	e50b3008 	str	r3, [fp, #-8]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933004 	ldr	r3, [r3, #4]
    1068:	e51b2010 	ldr	r2, [fp, #-16]
    106c:	e1520003 	cmp	r2, r3
    1070:	8a00001e 	bhi	10f0 <malloc+0x108>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5933004 	ldr	r3, [r3, #4]
    107c:	e51b2010 	ldr	r2, [fp, #-16]
    1080:	e1520003 	cmp	r2, r3
    1084:	1a000004 	bne	109c <malloc+0xb4>
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e5932000 	ldr	r2, [r3]
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5832000 	str	r2, [r3]
    1098:	ea00000e 	b	10d8 <malloc+0xf0>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e5932004 	ldr	r2, [r3, #4]
    10a4:	e51b3010 	ldr	r3, [fp, #-16]
    10a8:	e0422003 	sub	r2, r2, r3
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e5832004 	str	r2, [r3, #4]
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e5933004 	ldr	r3, [r3, #4]
    10bc:	e1a03183 	lsl	r3, r3, #3
    10c0:	e51b2008 	ldr	r2, [fp, #-8]
    10c4:	e0823003 	add	r3, r2, r3
    10c8:	e50b3008 	str	r3, [fp, #-8]
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e51b2010 	ldr	r2, [fp, #-16]
    10d4:	e5832004 	str	r2, [r3, #4]
    10d8:	e59f2068 	ldr	r2, [pc, #104]	@ 1148 <malloc+0x160>
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e5823000 	str	r3, [r2]
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e2833008 	add	r3, r3, #8
    10ec:	ea000012 	b	113c <malloc+0x154>
    10f0:	e59f3050 	ldr	r3, [pc, #80]	@ 1148 <malloc+0x160>
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e51b2008 	ldr	r2, [fp, #-8]
    10fc:	e1520003 	cmp	r2, r3
    1100:	1a000007 	bne	1124 <malloc+0x13c>
    1104:	e51b0010 	ldr	r0, [fp, #-16]
    1108:	ebffff94 	bl	f60 <morecore>
    110c:	e50b0008 	str	r0, [fp, #-8]
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e3530000 	cmp	r3, #0
    1118:	1a000001 	bne	1124 <malloc+0x13c>
    111c:	e3a03000 	mov	r3, #0
    1120:	ea000005 	b	113c <malloc+0x154>
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e5933000 	ldr	r3, [r3]
    1134:	e50b3008 	str	r3, [fp, #-8]
    1138:	eaffffc8 	b	1060 <malloc+0x78>
    113c:	e1a00003 	mov	r0, r3
    1140:	e24bd004 	sub	sp, fp, #4
    1144:	e8bd8800 	pop	{fp, pc}
    1148:	0000129c 	.word	0x0000129c
    114c:	00001294 	.word	0x00001294

00001150 <__udivsi3>:
    1150:	e2512001 	subs	r2, r1, #1
    1154:	012fff1e 	bxeq	lr
    1158:	3a000036 	bcc	1238 <__udivsi3+0xe8>
    115c:	e1500001 	cmp	r0, r1
    1160:	9a000022 	bls	11f0 <__udivsi3+0xa0>
    1164:	e1110002 	tst	r1, r2
    1168:	0a000023 	beq	11fc <__udivsi3+0xac>
    116c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1170:	01a01181 	lsleq	r1, r1, #3
    1174:	03a03008 	moveq	r3, #8
    1178:	13a03001 	movne	r3, #1
    117c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1180:	31510000 	cmpcc	r1, r0
    1184:	31a01201 	lslcc	r1, r1, #4
    1188:	31a03203 	lslcc	r3, r3, #4
    118c:	3afffffa 	bcc	117c <__udivsi3+0x2c>
    1190:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1194:	31510000 	cmpcc	r1, r0
    1198:	31a01081 	lslcc	r1, r1, #1
    119c:	31a03083 	lslcc	r3, r3, #1
    11a0:	3afffffa 	bcc	1190 <__udivsi3+0x40>
    11a4:	e3a02000 	mov	r2, #0
    11a8:	e1500001 	cmp	r0, r1
    11ac:	20400001 	subcs	r0, r0, r1
    11b0:	21822003 	orrcs	r2, r2, r3
    11b4:	e15000a1 	cmp	r0, r1, lsr #1
    11b8:	204000a1 	subcs	r0, r0, r1, lsr #1
    11bc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    11c0:	e1500121 	cmp	r0, r1, lsr #2
    11c4:	20400121 	subcs	r0, r0, r1, lsr #2
    11c8:	21822123 	orrcs	r2, r2, r3, lsr #2
    11cc:	e15001a1 	cmp	r0, r1, lsr #3
    11d0:	204001a1 	subcs	r0, r0, r1, lsr #3
    11d4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11d8:	e3500000 	cmp	r0, #0
    11dc:	11b03223 	lsrsne	r3, r3, #4
    11e0:	11a01221 	lsrne	r1, r1, #4
    11e4:	1affffef 	bne	11a8 <__udivsi3+0x58>
    11e8:	e1a00002 	mov	r0, r2
    11ec:	e12fff1e 	bx	lr
    11f0:	03a00001 	moveq	r0, #1
    11f4:	13a00000 	movne	r0, #0
    11f8:	e12fff1e 	bx	lr
    11fc:	e3510801 	cmp	r1, #65536	@ 0x10000
    1200:	21a01821 	lsrcs	r1, r1, #16
    1204:	23a02010 	movcs	r2, #16
    1208:	33a02000 	movcc	r2, #0
    120c:	e3510c01 	cmp	r1, #256	@ 0x100
    1210:	21a01421 	lsrcs	r1, r1, #8
    1214:	22822008 	addcs	r2, r2, #8
    1218:	e3510010 	cmp	r1, #16
    121c:	21a01221 	lsrcs	r1, r1, #4
    1220:	22822004 	addcs	r2, r2, #4
    1224:	e3510004 	cmp	r1, #4
    1228:	82822003 	addhi	r2, r2, #3
    122c:	908220a1 	addls	r2, r2, r1, lsr #1
    1230:	e1a00230 	lsr	r0, r0, r2
    1234:	e12fff1e 	bx	lr
    1238:	e3500000 	cmp	r0, #0
    123c:	13e00000 	mvnne	r0, #0
    1240:	ea000007 	b	1264 <__aeabi_idiv0>

00001244 <__aeabi_uidivmod>:
    1244:	e3510000 	cmp	r1, #0
    1248:	0afffffa 	beq	1238 <__udivsi3+0xe8>
    124c:	e92d4003 	push	{r0, r1, lr}
    1250:	ebffffbe 	bl	1150 <__udivsi3>
    1254:	e8bd4006 	pop	{r1, r2, lr}
    1258:	e0030092 	mul	r3, r2, r0
    125c:	e0411003 	sub	r1, r1, r3
    1260:	e12fff1e 	bx	lr

00001264 <__aeabi_idiv0>:
    1264:	e12fff1e 	bx	lr
