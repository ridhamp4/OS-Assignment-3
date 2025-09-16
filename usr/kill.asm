
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb0002dd 	bl	ba4 <printf>
      2c:	eb000184 	bl	644 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000133 	bl	528 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb0001ad 	bl	71c <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb00016f 	bl	644 <exit>
      84:	00001260 	.word	0x00001260

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strncmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd014 	sub	sp, sp, #20
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	e50b2010 	str	r2, [fp, #-16]
     100:	ea000008 	b	128 <strncmp+0x40>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e2833001 	add	r3, r3, #1
     10c:	e50b3008 	str	r3, [fp, #-8]
     110:	e51b300c 	ldr	r3, [fp, #-12]
     114:	e2833001 	add	r3, r3, #1
     118:	e50b300c 	str	r3, [fp, #-12]
     11c:	e51b3010 	ldr	r3, [fp, #-16]
     120:	e2433001 	sub	r3, r3, #1
     124:	e50b3010 	str	r3, [fp, #-16]
     128:	e51b3010 	ldr	r3, [fp, #-16]
     12c:	e3530000 	cmp	r3, #0
     130:	da00000d 	ble	16c <strncmp+0x84>
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	0a000009 	beq	16c <strncmp+0x84>
     144:	e51b300c 	ldr	r3, [fp, #-12]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strncmp+0x84>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffe5 	beq	104 <strncmp+0x1c>
     16c:	e51b3010 	ldr	r3, [fp, #-16]
     170:	e3530000 	cmp	r3, #0
     174:	1a000001 	bne	180 <strncmp+0x98>
     178:	e3a03000 	mov	r3, #0
     17c:	ea000005 	b	198 <strncmp+0xb0>
     180:	e51b3008 	ldr	r3, [fp, #-8]
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e1a02003 	mov	r2, r3
     18c:	e51b300c 	ldr	r3, [fp, #-12]
     190:	e5d33000 	ldrb	r3, [r3]
     194:	e0423003 	sub	r3, r2, r3
     198:	e1a00003 	mov	r0, r3
     19c:	e28bd000 	add	sp, fp, #0
     1a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a4:	e12fff1e 	bx	lr

000001a8 <strcmp>:
     1a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ac:	e28db000 	add	fp, sp, #0
     1b0:	e24dd00c 	sub	sp, sp, #12
     1b4:	e50b0008 	str	r0, [fp, #-8]
     1b8:	e50b100c 	str	r1, [fp, #-12]
     1bc:	ea000005 	b	1d8 <strcmp+0x30>
     1c0:	e51b3008 	ldr	r3, [fp, #-8]
     1c4:	e2833001 	add	r3, r3, #1
     1c8:	e50b3008 	str	r3, [fp, #-8]
     1cc:	e51b300c 	ldr	r3, [fp, #-12]
     1d0:	e2833001 	add	r3, r3, #1
     1d4:	e50b300c 	str	r3, [fp, #-12]
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e5d33000 	ldrb	r3, [r3]
     1e0:	e3530000 	cmp	r3, #0
     1e4:	0a000005 	beq	200 <strcmp+0x58>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e5d32000 	ldrb	r2, [r3]
     1f0:	e51b300c 	ldr	r3, [fp, #-12]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1520003 	cmp	r2, r3
     1fc:	0affffef 	beq	1c0 <strcmp+0x18>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e5d33000 	ldrb	r3, [r3]
     208:	e1a02003 	mov	r2, r3
     20c:	e51b300c 	ldr	r3, [fp, #-12]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e0423003 	sub	r3, r2, r3
     218:	e1a00003 	mov	r0, r3
     21c:	e28bd000 	add	sp, fp, #0
     220:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     224:	e12fff1e 	bx	lr

00000228 <strlen>:
     228:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     22c:	e28db000 	add	fp, sp, #0
     230:	e24dd014 	sub	sp, sp, #20
     234:	e50b0010 	str	r0, [fp, #-16]
     238:	e3a03000 	mov	r3, #0
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	ea000002 	b	250 <strlen+0x28>
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e2833001 	add	r3, r3, #1
     24c:	e50b3008 	str	r3, [fp, #-8]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e51b2010 	ldr	r2, [fp, #-16]
     258:	e0823003 	add	r3, r2, r3
     25c:	e5d33000 	ldrb	r3, [r3]
     260:	e3530000 	cmp	r3, #0
     264:	1afffff6 	bne	244 <strlen+0x1c>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e1a00003 	mov	r0, r3
     270:	e28bd000 	add	sp, fp, #0
     274:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     278:	e12fff1e 	bx	lr

0000027c <memset>:
     27c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     280:	e28db000 	add	fp, sp, #0
     284:	e24dd024 	sub	sp, sp, #36	@ 0x24
     288:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     28c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     290:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     294:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2a0:	e54b300d 	strb	r3, [fp, #-13]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e1a03002 	mov	r3, r2
     2ac:	e1a03403 	lsl	r3, r3, #8
     2b0:	e0833002 	add	r3, r3, r2
     2b4:	e1a03803 	lsl	r3, r3, #16
     2b8:	e1a02003 	mov	r2, r3
     2bc:	e55b300d 	ldrb	r3, [fp, #-13]
     2c0:	e1a03403 	lsl	r3, r3, #8
     2c4:	e1822003 	orr	r2, r2, r3
     2c8:	e55b300d 	ldrb	r3, [fp, #-13]
     2cc:	e1823003 	orr	r3, r2, r3
     2d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2d4:	ea000008 	b	2fc <memset+0x80>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e55b200d 	ldrb	r2, [fp, #-13]
     2e0:	e5c32000 	strb	r2, [r3]
     2e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e8:	e2433001 	sub	r3, r3, #1
     2ec:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e50b3008 	str	r3, [fp, #-8]
     2fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     300:	e3530000 	cmp	r3, #0
     304:	0a000003 	beq	318 <memset+0x9c>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e2033003 	and	r3, r3, #3
     310:	e3530000 	cmp	r3, #0
     314:	1affffef 	bne	2d8 <memset+0x5c>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e50b300c 	str	r3, [fp, #-12]
     320:	ea000008 	b	348 <memset+0xcc>
     324:	e51b300c 	ldr	r3, [fp, #-12]
     328:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     32c:	e5832000 	str	r2, [r3]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e2433004 	sub	r3, r3, #4
     338:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e51b300c 	ldr	r3, [fp, #-12]
     340:	e2833004 	add	r3, r3, #4
     344:	e50b300c 	str	r3, [fp, #-12]
     348:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     34c:	e3530003 	cmp	r3, #3
     350:	8afffff3 	bhi	324 <memset+0xa8>
     354:	e51b300c 	ldr	r3, [fp, #-12]
     358:	e50b3008 	str	r3, [fp, #-8]
     35c:	ea000008 	b	384 <memset+0x108>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e55b200d 	ldrb	r2, [fp, #-13]
     368:	e5c32000 	strb	r2, [r3]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e2433001 	sub	r3, r3, #1
     374:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2833001 	add	r3, r3, #1
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     388:	e3530000 	cmp	r3, #0
     38c:	1afffff3 	bne	360 <memset+0xe4>
     390:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     394:	e1a00003 	mov	r0, r3
     398:	e28bd000 	add	sp, fp, #0
     39c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a0:	e12fff1e 	bx	lr

000003a4 <strchr>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd00c 	sub	sp, sp, #12
     3b0:	e50b0008 	str	r0, [fp, #-8]
     3b4:	e1a03001 	mov	r3, r1
     3b8:	e54b3009 	strb	r3, [fp, #-9]
     3bc:	ea000009 	b	3e8 <strchr+0x44>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e5d33000 	ldrb	r3, [r3]
     3c8:	e55b2009 	ldrb	r2, [fp, #-9]
     3cc:	e1520003 	cmp	r2, r3
     3d0:	1a000001 	bne	3dc <strchr+0x38>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	ea000007 	b	3fc <strchr+0x58>
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e2833001 	add	r3, r3, #1
     3e4:	e50b3008 	str	r3, [fp, #-8]
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e5d33000 	ldrb	r3, [r3]
     3f0:	e3530000 	cmp	r3, #0
     3f4:	1afffff1 	bne	3c0 <strchr+0x1c>
     3f8:	e3a03000 	mov	r3, #0
     3fc:	e1a00003 	mov	r0, r3
     400:	e28bd000 	add	sp, fp, #0
     404:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     408:	e12fff1e 	bx	lr

0000040c <gets>:
     40c:	e92d4800 	push	{fp, lr}
     410:	e28db004 	add	fp, sp, #4
     414:	e24dd018 	sub	sp, sp, #24
     418:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     41c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     420:	e3a03000 	mov	r3, #0
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	ea000016 	b	488 <gets+0x7c>
     42c:	e24b300d 	sub	r3, fp, #13
     430:	e3a02001 	mov	r2, #1
     434:	e1a01003 	mov	r1, r3
     438:	e3a00000 	mov	r0, #0
     43c:	eb00009b 	bl	6b0 <read>
     440:	e50b000c 	str	r0, [fp, #-12]
     444:	e51b300c 	ldr	r3, [fp, #-12]
     448:	e3530000 	cmp	r3, #0
     44c:	da000013 	ble	4a0 <gets+0x94>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e2832001 	add	r2, r3, #1
     458:	e50b2008 	str	r2, [fp, #-8]
     45c:	e1a02003 	mov	r2, r3
     460:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     464:	e0833002 	add	r3, r3, r2
     468:	e55b200d 	ldrb	r2, [fp, #-13]
     46c:	e5c32000 	strb	r2, [r3]
     470:	e55b300d 	ldrb	r3, [fp, #-13]
     474:	e353000a 	cmp	r3, #10
     478:	0a000009 	beq	4a4 <gets+0x98>
     47c:	e55b300d 	ldrb	r3, [fp, #-13]
     480:	e353000d 	cmp	r3, #13
     484:	0a000006 	beq	4a4 <gets+0x98>
     488:	e51b3008 	ldr	r3, [fp, #-8]
     48c:	e2833001 	add	r3, r3, #1
     490:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     494:	e1520003 	cmp	r2, r3
     498:	caffffe3 	bgt	42c <gets+0x20>
     49c:	ea000000 	b	4a4 <gets+0x98>
     4a0:	e1a00000 	nop			@ (mov r0, r0)
     4a4:	e51b3008 	ldr	r3, [fp, #-8]
     4a8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4ac:	e0823003 	add	r3, r2, r3
     4b0:	e3a02000 	mov	r2, #0
     4b4:	e5c32000 	strb	r2, [r3]
     4b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4bc:	e1a00003 	mov	r0, r3
     4c0:	e24bd004 	sub	sp, fp, #4
     4c4:	e8bd8800 	pop	{fp, pc}

000004c8 <stat>:
     4c8:	e92d4800 	push	{fp, lr}
     4cc:	e28db004 	add	fp, sp, #4
     4d0:	e24dd010 	sub	sp, sp, #16
     4d4:	e50b0010 	str	r0, [fp, #-16]
     4d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4dc:	e3a01000 	mov	r1, #0
     4e0:	e51b0010 	ldr	r0, [fp, #-16]
     4e4:	eb00009e 	bl	764 <open>
     4e8:	e50b0008 	str	r0, [fp, #-8]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e3530000 	cmp	r3, #0
     4f4:	aa000001 	bge	500 <stat+0x38>
     4f8:	e3e03000 	mvn	r3, #0
     4fc:	ea000006 	b	51c <stat+0x54>
     500:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     504:	e51b0008 	ldr	r0, [fp, #-8]
     508:	eb0000b0 	bl	7d0 <fstat>
     50c:	e50b000c 	str	r0, [fp, #-12]
     510:	e51b0008 	ldr	r0, [fp, #-8]
     514:	eb000077 	bl	6f8 <close>
     518:	e51b300c 	ldr	r3, [fp, #-12]
     51c:	e1a00003 	mov	r0, r3
     520:	e24bd004 	sub	sp, fp, #4
     524:	e8bd8800 	pop	{fp, pc}

00000528 <atoi>:
     528:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     52c:	e28db000 	add	fp, sp, #0
     530:	e24dd014 	sub	sp, sp, #20
     534:	e50b0010 	str	r0, [fp, #-16]
     538:	e3a03000 	mov	r3, #0
     53c:	e50b3008 	str	r3, [fp, #-8]
     540:	ea00000c 	b	578 <atoi+0x50>
     544:	e51b2008 	ldr	r2, [fp, #-8]
     548:	e1a03002 	mov	r3, r2
     54c:	e1a03103 	lsl	r3, r3, #2
     550:	e0833002 	add	r3, r3, r2
     554:	e1a03083 	lsl	r3, r3, #1
     558:	e1a01003 	mov	r1, r3
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e2832001 	add	r2, r3, #1
     564:	e50b2010 	str	r2, [fp, #-16]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e0813003 	add	r3, r1, r3
     570:	e2433030 	sub	r3, r3, #48	@ 0x30
     574:	e50b3008 	str	r3, [fp, #-8]
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e5d33000 	ldrb	r3, [r3]
     580:	e353002f 	cmp	r3, #47	@ 0x2f
     584:	9a000003 	bls	598 <atoi+0x70>
     588:	e51b3010 	ldr	r3, [fp, #-16]
     58c:	e5d33000 	ldrb	r3, [r3]
     590:	e3530039 	cmp	r3, #57	@ 0x39
     594:	9affffea 	bls	544 <atoi+0x1c>
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e1a00003 	mov	r0, r3
     5a0:	e28bd000 	add	sp, fp, #0
     5a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <memmove>:
     5ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b0:	e28db000 	add	fp, sp, #0
     5b4:	e24dd01c 	sub	sp, sp, #28
     5b8:	e50b0010 	str	r0, [fp, #-16]
     5bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5c4:	e51b3010 	ldr	r3, [fp, #-16]
     5c8:	e50b3008 	str	r3, [fp, #-8]
     5cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5d0:	e50b300c 	str	r3, [fp, #-12]
     5d4:	ea000007 	b	5f8 <memmove+0x4c>
     5d8:	e51b200c 	ldr	r2, [fp, #-12]
     5dc:	e2823001 	add	r3, r2, #1
     5e0:	e50b300c 	str	r3, [fp, #-12]
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e2831001 	add	r1, r3, #1
     5ec:	e50b1008 	str	r1, [fp, #-8]
     5f0:	e5d22000 	ldrb	r2, [r2]
     5f4:	e5c32000 	strb	r2, [r3]
     5f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5fc:	e2432001 	sub	r2, r3, #1
     600:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     604:	e3530000 	cmp	r3, #0
     608:	cafffff2 	bgt	5d8 <memmove+0x2c>
     60c:	e51b3010 	ldr	r3, [fp, #-16]
     610:	e1a00003 	mov	r0, r3
     614:	e28bd000 	add	sp, fp, #0
     618:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <fork>:
     620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     624:	e1a04003 	mov	r4, r3
     628:	e1a03002 	mov	r3, r2
     62c:	e1a02001 	mov	r2, r1
     630:	e1a01000 	mov	r1, r0
     634:	e3a00001 	mov	r0, #1
     638:	ef000000 	svc	0x00000000
     63c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <exit>:
     644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a00002 	mov	r0, #2
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <wait>:
     668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a00003 	mov	r0, #3
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <pipe>:
     68c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a00004 	mov	r0, #4
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <read>:
     6b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00005 	mov	r0, #5
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <write>:
     6d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a00010 	mov	r0, #16
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <close>:
     6f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a00015 	mov	r0, #21
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <kill>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00006 	mov	r0, #6
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <exec>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00007 	mov	r0, #7
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <open>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a0000f 	mov	r0, #15
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <mknod>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00011 	mov	r0, #17
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <unlink>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00012 	mov	r0, #18
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <fstat>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00008 	mov	r0, #8
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <link>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00013 	mov	r0, #19
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <mkdir>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00014 	mov	r0, #20
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <chdir>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00009 	mov	r0, #9
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <dup>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a0000a 	mov	r0, #10
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <getpid>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a0000b 	mov	r0, #11
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <sbrk>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a0000c 	mov	r0, #12
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <sleep>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a0000d 	mov	r0, #13
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <uptime>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a0000e 	mov	r0, #14
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <ps>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00016 	mov	r0, #22
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <settickets>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00017 	mov	r0, #23
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <srand>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00018 	mov	r0, #24
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <getpinfo>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00019 	mov	r0, #25
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <printpt>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a0001a 	mov	r0, #26
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <pgpte>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a0001b 	mov	r0, #27
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <ugetpid>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a0001c 	mov	r0, #28
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <kpt>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a0001d 	mov	r0, #29
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <putc>:
     a34:	e92d4800 	push	{fp, lr}
     a38:	e28db004 	add	fp, sp, #4
     a3c:	e24dd008 	sub	sp, sp, #8
     a40:	e50b0008 	str	r0, [fp, #-8]
     a44:	e1a03001 	mov	r3, r1
     a48:	e54b3009 	strb	r3, [fp, #-9]
     a4c:	e24b3009 	sub	r3, fp, #9
     a50:	e3a02001 	mov	r2, #1
     a54:	e1a01003 	mov	r1, r3
     a58:	e51b0008 	ldr	r0, [fp, #-8]
     a5c:	ebffff1c 	bl	6d4 <write>
     a60:	e1a00000 	nop			@ (mov r0, r0)
     a64:	e24bd004 	sub	sp, fp, #4
     a68:	e8bd8800 	pop	{fp, pc}

00000a6c <printint>:
     a6c:	e92d4800 	push	{fp, lr}
     a70:	e28db004 	add	fp, sp, #4
     a74:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a78:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a7c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a80:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a84:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a88:	e3a03000 	mov	r3, #0
     a8c:	e50b300c 	str	r3, [fp, #-12]
     a90:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a94:	e3530000 	cmp	r3, #0
     a98:	0a000008 	beq	ac0 <printint+0x54>
     a9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     aa0:	e3530000 	cmp	r3, #0
     aa4:	aa000005 	bge	ac0 <printint+0x54>
     aa8:	e3a03001 	mov	r3, #1
     aac:	e50b300c 	str	r3, [fp, #-12]
     ab0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ab4:	e2633000 	rsb	r3, r3, #0
     ab8:	e50b3010 	str	r3, [fp, #-16]
     abc:	ea000001 	b	ac8 <printint+0x5c>
     ac0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ac4:	e50b3010 	str	r3, [fp, #-16]
     ac8:	e3a03000 	mov	r3, #0
     acc:	e50b3008 	str	r3, [fp, #-8]
     ad0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ad4:	e51b3010 	ldr	r3, [fp, #-16]
     ad8:	e1a01002 	mov	r1, r2
     adc:	e1a00003 	mov	r0, r3
     ae0:	eb0001d5 	bl	123c <__aeabi_uidivmod>
     ae4:	e1a03001 	mov	r3, r1
     ae8:	e1a01003 	mov	r1, r3
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e2832001 	add	r2, r3, #1
     af4:	e50b2008 	str	r2, [fp, #-8]
     af8:	e59f20a0 	ldr	r2, [pc, #160]	@ ba0 <printint+0x134>
     afc:	e7d22001 	ldrb	r2, [r2, r1]
     b00:	e2433004 	sub	r3, r3, #4
     b04:	e083300b 	add	r3, r3, fp
     b08:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b0c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b10:	e1a01003 	mov	r1, r3
     b14:	e51b0010 	ldr	r0, [fp, #-16]
     b18:	eb00018a 	bl	1148 <__udivsi3>
     b1c:	e1a03000 	mov	r3, r0
     b20:	e50b3010 	str	r3, [fp, #-16]
     b24:	e51b3010 	ldr	r3, [fp, #-16]
     b28:	e3530000 	cmp	r3, #0
     b2c:	1affffe7 	bne	ad0 <printint+0x64>
     b30:	e51b300c 	ldr	r3, [fp, #-12]
     b34:	e3530000 	cmp	r3, #0
     b38:	0a00000e 	beq	b78 <printint+0x10c>
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e2832001 	add	r2, r3, #1
     b44:	e50b2008 	str	r2, [fp, #-8]
     b48:	e2433004 	sub	r3, r3, #4
     b4c:	e083300b 	add	r3, r3, fp
     b50:	e3a0202d 	mov	r2, #45	@ 0x2d
     b54:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b58:	ea000006 	b	b78 <printint+0x10c>
     b5c:	e24b2020 	sub	r2, fp, #32
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e0823003 	add	r3, r2, r3
     b68:	e5d33000 	ldrb	r3, [r3]
     b6c:	e1a01003 	mov	r1, r3
     b70:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b74:	ebffffae 	bl	a34 <putc>
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e2433001 	sub	r3, r3, #1
     b80:	e50b3008 	str	r3, [fp, #-8]
     b84:	e51b3008 	ldr	r3, [fp, #-8]
     b88:	e3530000 	cmp	r3, #0
     b8c:	aafffff2 	bge	b5c <printint+0xf0>
     b90:	e1a00000 	nop			@ (mov r0, r0)
     b94:	e1a00000 	nop			@ (mov r0, r0)
     b98:	e24bd004 	sub	sp, fp, #4
     b9c:	e8bd8800 	pop	{fp, pc}
     ba0:	0000127c 	.word	0x0000127c

00000ba4 <printf>:
     ba4:	e92d000e 	push	{r1, r2, r3}
     ba8:	e92d4800 	push	{fp, lr}
     bac:	e28db004 	add	fp, sp, #4
     bb0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     bb4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     bb8:	e3a03000 	mov	r3, #0
     bbc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bc0:	e28b3008 	add	r3, fp, #8
     bc4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc8:	e3a03000 	mov	r3, #0
     bcc:	e50b3010 	str	r3, [fp, #-16]
     bd0:	ea000074 	b	da8 <printf+0x204>
     bd4:	e59b2004 	ldr	r2, [fp, #4]
     bd8:	e51b3010 	ldr	r3, [fp, #-16]
     bdc:	e0823003 	add	r3, r2, r3
     be0:	e5d33000 	ldrb	r3, [r3]
     be4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bec:	e3530000 	cmp	r3, #0
     bf0:	1a00000b 	bne	c24 <printf+0x80>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf8:	e3530025 	cmp	r3, #37	@ 0x25
     bfc:	1a000002 	bne	c0c <printf+0x68>
     c00:	e3a03025 	mov	r3, #37	@ 0x25
     c04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c08:	ea000063 	b	d9c <printf+0x1f8>
     c0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c10:	e6ef3073 	uxtb	r3, r3
     c14:	e1a01003 	mov	r1, r3
     c18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c1c:	ebffff84 	bl	a34 <putc>
     c20:	ea00005d 	b	d9c <printf+0x1f8>
     c24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c28:	e3530025 	cmp	r3, #37	@ 0x25
     c2c:	1a00005a 	bne	d9c <printf+0x1f8>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c34:	e3530064 	cmp	r3, #100	@ 0x64
     c38:	1a00000a 	bne	c68 <printf+0xc4>
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c40:	e5933000 	ldr	r3, [r3]
     c44:	e1a01003 	mov	r1, r3
     c48:	e3a03001 	mov	r3, #1
     c4c:	e3a0200a 	mov	r2, #10
     c50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c54:	ebffff84 	bl	a6c <printint>
     c58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c5c:	e2833004 	add	r3, r3, #4
     c60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c64:	ea00004a 	b	d94 <printf+0x1f0>
     c68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c6c:	e3530078 	cmp	r3, #120	@ 0x78
     c70:	0a000002 	beq	c80 <printf+0xdc>
     c74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c78:	e3530070 	cmp	r3, #112	@ 0x70
     c7c:	1a00000a 	bne	cac <printf+0x108>
     c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c84:	e5933000 	ldr	r3, [r3]
     c88:	e1a01003 	mov	r1, r3
     c8c:	e3a03000 	mov	r3, #0
     c90:	e3a02010 	mov	r2, #16
     c94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c98:	ebffff73 	bl	a6c <printint>
     c9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca0:	e2833004 	add	r3, r3, #4
     ca4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ca8:	ea000039 	b	d94 <printf+0x1f0>
     cac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb0:	e3530073 	cmp	r3, #115	@ 0x73
     cb4:	1a000018 	bne	d1c <printf+0x178>
     cb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cbc:	e5933000 	ldr	r3, [r3]
     cc0:	e50b300c 	str	r3, [fp, #-12]
     cc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc8:	e2833004 	add	r3, r3, #4
     ccc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	e51b300c 	ldr	r3, [fp, #-12]
     cd4:	e3530000 	cmp	r3, #0
     cd8:	1a00000a 	bne	d08 <printf+0x164>
     cdc:	e59f30f4 	ldr	r3, [pc, #244]	@ dd8 <printf+0x234>
     ce0:	e50b300c 	str	r3, [fp, #-12]
     ce4:	ea000007 	b	d08 <printf+0x164>
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e5d33000 	ldrb	r3, [r3]
     cf0:	e1a01003 	mov	r1, r3
     cf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf8:	ebffff4d 	bl	a34 <putc>
     cfc:	e51b300c 	ldr	r3, [fp, #-12]
     d00:	e2833001 	add	r3, r3, #1
     d04:	e50b300c 	str	r3, [fp, #-12]
     d08:	e51b300c 	ldr	r3, [fp, #-12]
     d0c:	e5d33000 	ldrb	r3, [r3]
     d10:	e3530000 	cmp	r3, #0
     d14:	1afffff3 	bne	ce8 <printf+0x144>
     d18:	ea00001d 	b	d94 <printf+0x1f0>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e3530063 	cmp	r3, #99	@ 0x63
     d24:	1a000009 	bne	d50 <printf+0x1ac>
     d28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e6ef3073 	uxtb	r3, r3
     d34:	e1a01003 	mov	r1, r3
     d38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d3c:	ebffff3c 	bl	a34 <putc>
     d40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d44:	e2833004 	add	r3, r3, #4
     d48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d4c:	ea000010 	b	d94 <printf+0x1f0>
     d50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d54:	e3530025 	cmp	r3, #37	@ 0x25
     d58:	1a000005 	bne	d74 <printf+0x1d0>
     d5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d60:	e6ef3073 	uxtb	r3, r3
     d64:	e1a01003 	mov	r1, r3
     d68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d6c:	ebffff30 	bl	a34 <putc>
     d70:	ea000007 	b	d94 <printf+0x1f0>
     d74:	e3a01025 	mov	r1, #37	@ 0x25
     d78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d7c:	ebffff2c 	bl	a34 <putc>
     d80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d84:	e6ef3073 	uxtb	r3, r3
     d88:	e1a01003 	mov	r1, r3
     d8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d90:	ebffff27 	bl	a34 <putc>
     d94:	e3a03000 	mov	r3, #0
     d98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d9c:	e51b3010 	ldr	r3, [fp, #-16]
     da0:	e2833001 	add	r3, r3, #1
     da4:	e50b3010 	str	r3, [fp, #-16]
     da8:	e59b2004 	ldr	r2, [fp, #4]
     dac:	e51b3010 	ldr	r3, [fp, #-16]
     db0:	e0823003 	add	r3, r2, r3
     db4:	e5d33000 	ldrb	r3, [r3]
     db8:	e3530000 	cmp	r3, #0
     dbc:	1affff84 	bne	bd4 <printf+0x30>
     dc0:	e1a00000 	nop			@ (mov r0, r0)
     dc4:	e1a00000 	nop			@ (mov r0, r0)
     dc8:	e24bd004 	sub	sp, fp, #4
     dcc:	e8bd4800 	pop	{fp, lr}
     dd0:	e28dd00c 	add	sp, sp, #12
     dd4:	e12fff1e 	bx	lr
     dd8:	00001274 	.word	0x00001274

00000ddc <free>:
     ddc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     de0:	e28db000 	add	fp, sp, #0
     de4:	e24dd014 	sub	sp, sp, #20
     de8:	e50b0010 	str	r0, [fp, #-16]
     dec:	e51b3010 	ldr	r3, [fp, #-16]
     df0:	e2433008 	sub	r3, r3, #8
     df4:	e50b300c 	str	r3, [fp, #-12]
     df8:	e59f3154 	ldr	r3, [pc, #340]	@ f54 <free+0x178>
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e50b3008 	str	r3, [fp, #-8]
     e04:	ea000010 	b	e4c <free+0x70>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e51b2008 	ldr	r2, [fp, #-8]
     e14:	e1520003 	cmp	r2, r3
     e18:	3a000008 	bcc	e40 <free+0x64>
     e1c:	e51b200c 	ldr	r2, [fp, #-12]
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e1520003 	cmp	r2, r3
     e28:	8a000010 	bhi	e70 <free+0x94>
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e51b200c 	ldr	r2, [fp, #-12]
     e38:	e1520003 	cmp	r2, r3
     e3c:	3a00000b 	bcc	e70 <free+0x94>
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e50b3008 	str	r3, [fp, #-8]
     e4c:	e51b200c 	ldr	r2, [fp, #-12]
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e1520003 	cmp	r2, r3
     e58:	9affffea 	bls	e08 <free+0x2c>
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e51b200c 	ldr	r2, [fp, #-12]
     e68:	e1520003 	cmp	r2, r3
     e6c:	2affffe5 	bcs	e08 <free+0x2c>
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5933004 	ldr	r3, [r3, #4]
     e78:	e1a03183 	lsl	r3, r3, #3
     e7c:	e51b200c 	ldr	r2, [fp, #-12]
     e80:	e0822003 	add	r2, r2, r3
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5933000 	ldr	r3, [r3]
     e8c:	e1520003 	cmp	r2, r3
     e90:	1a00000d 	bne	ecc <free+0xf0>
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e5932004 	ldr	r2, [r3, #4]
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e5933004 	ldr	r3, [r3, #4]
     ea8:	e0822003 	add	r2, r2, r3
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e5832004 	str	r2, [r3, #4]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5933000 	ldr	r3, [r3]
     ebc:	e5932000 	ldr	r2, [r3]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5832000 	str	r2, [r3]
     ec8:	ea000003 	b	edc <free+0x100>
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5932000 	ldr	r2, [r3]
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5832000 	str	r2, [r3]
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5933004 	ldr	r3, [r3, #4]
     ee4:	e1a03183 	lsl	r3, r3, #3
     ee8:	e51b2008 	ldr	r2, [fp, #-8]
     eec:	e0823003 	add	r3, r2, r3
     ef0:	e51b200c 	ldr	r2, [fp, #-12]
     ef4:	e1520003 	cmp	r2, r3
     ef8:	1a00000b 	bne	f2c <free+0x150>
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5932004 	ldr	r2, [r3, #4]
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e5933004 	ldr	r3, [r3, #4]
     f0c:	e0822003 	add	r2, r2, r3
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5832004 	str	r2, [r3, #4]
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e5932000 	ldr	r2, [r3]
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5832000 	str	r2, [r3]
     f28:	ea000002 	b	f38 <free+0x15c>
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e51b200c 	ldr	r2, [fp, #-12]
     f34:	e5832000 	str	r2, [r3]
     f38:	e59f2014 	ldr	r2, [pc, #20]	@ f54 <free+0x178>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5823000 	str	r3, [r2]
     f44:	e1a00000 	nop			@ (mov r0, r0)
     f48:	e28bd000 	add	sp, fp, #0
     f4c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f50:	e12fff1e 	bx	lr
     f54:	00001298 	.word	0x00001298

00000f58 <morecore>:
     f58:	e92d4800 	push	{fp, lr}
     f5c:	e28db004 	add	fp, sp, #4
     f60:	e24dd010 	sub	sp, sp, #16
     f64:	e50b0010 	str	r0, [fp, #-16]
     f68:	e51b3010 	ldr	r3, [fp, #-16]
     f6c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f70:	2a000001 	bcs	f7c <morecore+0x24>
     f74:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	e51b3010 	ldr	r3, [fp, #-16]
     f80:	e1a03183 	lsl	r3, r3, #3
     f84:	e1a00003 	mov	r0, r3
     f88:	ebfffe46 	bl	8a8 <sbrk>
     f8c:	e50b0008 	str	r0, [fp, #-8]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e3730001 	cmn	r3, #1
     f98:	1a000001 	bne	fa4 <morecore+0x4c>
     f9c:	e3a03000 	mov	r3, #0
     fa0:	ea00000a 	b	fd0 <morecore+0x78>
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e50b300c 	str	r3, [fp, #-12]
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e51b2010 	ldr	r2, [fp, #-16]
     fb4:	e5832004 	str	r2, [r3, #4]
     fb8:	e51b300c 	ldr	r3, [fp, #-12]
     fbc:	e2833008 	add	r3, r3, #8
     fc0:	e1a00003 	mov	r0, r3
     fc4:	ebffff84 	bl	ddc <free>
     fc8:	e59f300c 	ldr	r3, [pc, #12]	@ fdc <morecore+0x84>
     fcc:	e5933000 	ldr	r3, [r3]
     fd0:	e1a00003 	mov	r0, r3
     fd4:	e24bd004 	sub	sp, fp, #4
     fd8:	e8bd8800 	pop	{fp, pc}
     fdc:	00001298 	.word	0x00001298

00000fe0 <malloc>:
     fe0:	e92d4800 	push	{fp, lr}
     fe4:	e28db004 	add	fp, sp, #4
     fe8:	e24dd018 	sub	sp, sp, #24
     fec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ff0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ff4:	e2833007 	add	r3, r3, #7
     ff8:	e1a031a3 	lsr	r3, r3, #3
     ffc:	e2833001 	add	r3, r3, #1
    1000:	e50b3010 	str	r3, [fp, #-16]
    1004:	e59f3134 	ldr	r3, [pc, #308]	@ 1140 <malloc+0x160>
    1008:	e5933000 	ldr	r3, [r3]
    100c:	e50b300c 	str	r3, [fp, #-12]
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e3530000 	cmp	r3, #0
    1018:	1a00000b 	bne	104c <malloc+0x6c>
    101c:	e59f3120 	ldr	r3, [pc, #288]	@ 1144 <malloc+0x164>
    1020:	e50b300c 	str	r3, [fp, #-12]
    1024:	e59f2114 	ldr	r2, [pc, #276]	@ 1140 <malloc+0x160>
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e5823000 	str	r3, [r2]
    1030:	e59f3108 	ldr	r3, [pc, #264]	@ 1140 <malloc+0x160>
    1034:	e5933000 	ldr	r3, [r3]
    1038:	e59f2104 	ldr	r2, [pc, #260]	@ 1144 <malloc+0x164>
    103c:	e5823000 	str	r3, [r2]
    1040:	e59f30fc 	ldr	r3, [pc, #252]	@ 1144 <malloc+0x164>
    1044:	e3a02000 	mov	r2, #0
    1048:	e5832004 	str	r2, [r3, #4]
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5933000 	ldr	r3, [r3]
    1054:	e50b3008 	str	r3, [fp, #-8]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e5933004 	ldr	r3, [r3, #4]
    1060:	e51b2010 	ldr	r2, [fp, #-16]
    1064:	e1520003 	cmp	r2, r3
    1068:	8a00001e 	bhi	10e8 <malloc+0x108>
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e5933004 	ldr	r3, [r3, #4]
    1074:	e51b2010 	ldr	r2, [fp, #-16]
    1078:	e1520003 	cmp	r2, r3
    107c:	1a000004 	bne	1094 <malloc+0xb4>
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5932000 	ldr	r2, [r3]
    1088:	e51b300c 	ldr	r3, [fp, #-12]
    108c:	e5832000 	str	r2, [r3]
    1090:	ea00000e 	b	10d0 <malloc+0xf0>
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e5932004 	ldr	r2, [r3, #4]
    109c:	e51b3010 	ldr	r3, [fp, #-16]
    10a0:	e0422003 	sub	r2, r2, r3
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5832004 	str	r2, [r3, #4]
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e5933004 	ldr	r3, [r3, #4]
    10b4:	e1a03183 	lsl	r3, r3, #3
    10b8:	e51b2008 	ldr	r2, [fp, #-8]
    10bc:	e0823003 	add	r3, r2, r3
    10c0:	e50b3008 	str	r3, [fp, #-8]
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e51b2010 	ldr	r2, [fp, #-16]
    10cc:	e5832004 	str	r2, [r3, #4]
    10d0:	e59f2068 	ldr	r2, [pc, #104]	@ 1140 <malloc+0x160>
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e5823000 	str	r3, [r2]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e2833008 	add	r3, r3, #8
    10e4:	ea000012 	b	1134 <malloc+0x154>
    10e8:	e59f3050 	ldr	r3, [pc, #80]	@ 1140 <malloc+0x160>
    10ec:	e5933000 	ldr	r3, [r3]
    10f0:	e51b2008 	ldr	r2, [fp, #-8]
    10f4:	e1520003 	cmp	r2, r3
    10f8:	1a000007 	bne	111c <malloc+0x13c>
    10fc:	e51b0010 	ldr	r0, [fp, #-16]
    1100:	ebffff94 	bl	f58 <morecore>
    1104:	e50b0008 	str	r0, [fp, #-8]
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e3530000 	cmp	r3, #0
    1110:	1a000001 	bne	111c <malloc+0x13c>
    1114:	e3a03000 	mov	r3, #0
    1118:	ea000005 	b	1134 <malloc+0x154>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e50b300c 	str	r3, [fp, #-12]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5933000 	ldr	r3, [r3]
    112c:	e50b3008 	str	r3, [fp, #-8]
    1130:	eaffffc8 	b	1058 <malloc+0x78>
    1134:	e1a00003 	mov	r0, r3
    1138:	e24bd004 	sub	sp, fp, #4
    113c:	e8bd8800 	pop	{fp, pc}
    1140:	00001298 	.word	0x00001298
    1144:	00001290 	.word	0x00001290

00001148 <__udivsi3>:
    1148:	e2512001 	subs	r2, r1, #1
    114c:	012fff1e 	bxeq	lr
    1150:	3a000036 	bcc	1230 <__udivsi3+0xe8>
    1154:	e1500001 	cmp	r0, r1
    1158:	9a000022 	bls	11e8 <__udivsi3+0xa0>
    115c:	e1110002 	tst	r1, r2
    1160:	0a000023 	beq	11f4 <__udivsi3+0xac>
    1164:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1168:	01a01181 	lsleq	r1, r1, #3
    116c:	03a03008 	moveq	r3, #8
    1170:	13a03001 	movne	r3, #1
    1174:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1178:	31510000 	cmpcc	r1, r0
    117c:	31a01201 	lslcc	r1, r1, #4
    1180:	31a03203 	lslcc	r3, r3, #4
    1184:	3afffffa 	bcc	1174 <__udivsi3+0x2c>
    1188:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    118c:	31510000 	cmpcc	r1, r0
    1190:	31a01081 	lslcc	r1, r1, #1
    1194:	31a03083 	lslcc	r3, r3, #1
    1198:	3afffffa 	bcc	1188 <__udivsi3+0x40>
    119c:	e3a02000 	mov	r2, #0
    11a0:	e1500001 	cmp	r0, r1
    11a4:	20400001 	subcs	r0, r0, r1
    11a8:	21822003 	orrcs	r2, r2, r3
    11ac:	e15000a1 	cmp	r0, r1, lsr #1
    11b0:	204000a1 	subcs	r0, r0, r1, lsr #1
    11b4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    11b8:	e1500121 	cmp	r0, r1, lsr #2
    11bc:	20400121 	subcs	r0, r0, r1, lsr #2
    11c0:	21822123 	orrcs	r2, r2, r3, lsr #2
    11c4:	e15001a1 	cmp	r0, r1, lsr #3
    11c8:	204001a1 	subcs	r0, r0, r1, lsr #3
    11cc:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11d0:	e3500000 	cmp	r0, #0
    11d4:	11b03223 	lsrsne	r3, r3, #4
    11d8:	11a01221 	lsrne	r1, r1, #4
    11dc:	1affffef 	bne	11a0 <__udivsi3+0x58>
    11e0:	e1a00002 	mov	r0, r2
    11e4:	e12fff1e 	bx	lr
    11e8:	03a00001 	moveq	r0, #1
    11ec:	13a00000 	movne	r0, #0
    11f0:	e12fff1e 	bx	lr
    11f4:	e3510801 	cmp	r1, #65536	@ 0x10000
    11f8:	21a01821 	lsrcs	r1, r1, #16
    11fc:	23a02010 	movcs	r2, #16
    1200:	33a02000 	movcc	r2, #0
    1204:	e3510c01 	cmp	r1, #256	@ 0x100
    1208:	21a01421 	lsrcs	r1, r1, #8
    120c:	22822008 	addcs	r2, r2, #8
    1210:	e3510010 	cmp	r1, #16
    1214:	21a01221 	lsrcs	r1, r1, #4
    1218:	22822004 	addcs	r2, r2, #4
    121c:	e3510004 	cmp	r1, #4
    1220:	82822003 	addhi	r2, r2, #3
    1224:	908220a1 	addls	r2, r2, r1, lsr #1
    1228:	e1a00230 	lsr	r0, r0, r2
    122c:	e12fff1e 	bx	lr
    1230:	e3500000 	cmp	r0, #0
    1234:	13e00000 	mvnne	r0, #0
    1238:	ea000007 	b	125c <__aeabi_idiv0>

0000123c <__aeabi_uidivmod>:
    123c:	e3510000 	cmp	r1, #0
    1240:	0afffffa 	beq	1230 <__udivsi3+0xe8>
    1244:	e92d4003 	push	{r0, r1, lr}
    1248:	ebffffbe 	bl	1148 <__udivsi3>
    124c:	e8bd4006 	pop	{r1, r2, lr}
    1250:	e0030092 	mul	r3, r2, r0
    1254:	e0411003 	sub	r1, r1, r3
    1258:	e12fff1e 	bx	lr

0000125c <__aeabi_idiv0>:
    125c:	e12fff1e 	bx	lr
