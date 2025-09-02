
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
      28:	eb0002b9 	bl	b14 <printf>
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
      84:	000011d0 	.word	0x000011d0

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

000009a4 <putc>:
     9a4:	e92d4800 	push	{fp, lr}
     9a8:	e28db004 	add	fp, sp, #4
     9ac:	e24dd008 	sub	sp, sp, #8
     9b0:	e50b0008 	str	r0, [fp, #-8]
     9b4:	e1a03001 	mov	r3, r1
     9b8:	e54b3009 	strb	r3, [fp, #-9]
     9bc:	e24b3009 	sub	r3, fp, #9
     9c0:	e3a02001 	mov	r2, #1
     9c4:	e1a01003 	mov	r1, r3
     9c8:	e51b0008 	ldr	r0, [fp, #-8]
     9cc:	ebffff40 	bl	6d4 <write>
     9d0:	e1a00000 	nop			@ (mov r0, r0)
     9d4:	e24bd004 	sub	sp, fp, #4
     9d8:	e8bd8800 	pop	{fp, pc}

000009dc <printint>:
     9dc:	e92d4800 	push	{fp, lr}
     9e0:	e28db004 	add	fp, sp, #4
     9e4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9e8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9ec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9f0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9f4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9f8:	e3a03000 	mov	r3, #0
     9fc:	e50b300c 	str	r3, [fp, #-12]
     a00:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a04:	e3530000 	cmp	r3, #0
     a08:	0a000008 	beq	a30 <printint+0x54>
     a0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a10:	e3530000 	cmp	r3, #0
     a14:	aa000005 	bge	a30 <printint+0x54>
     a18:	e3a03001 	mov	r3, #1
     a1c:	e50b300c 	str	r3, [fp, #-12]
     a20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a24:	e2633000 	rsb	r3, r3, #0
     a28:	e50b3010 	str	r3, [fp, #-16]
     a2c:	ea000001 	b	a38 <printint+0x5c>
     a30:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a34:	e50b3010 	str	r3, [fp, #-16]
     a38:	e3a03000 	mov	r3, #0
     a3c:	e50b3008 	str	r3, [fp, #-8]
     a40:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a44:	e51b3010 	ldr	r3, [fp, #-16]
     a48:	e1a01002 	mov	r1, r2
     a4c:	e1a00003 	mov	r0, r3
     a50:	eb0001d5 	bl	11ac <__aeabi_uidivmod>
     a54:	e1a03001 	mov	r3, r1
     a58:	e1a01003 	mov	r1, r3
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e2832001 	add	r2, r3, #1
     a64:	e50b2008 	str	r2, [fp, #-8]
     a68:	e59f20a0 	ldr	r2, [pc, #160]	@ b10 <printint+0x134>
     a6c:	e7d22001 	ldrb	r2, [r2, r1]
     a70:	e2433004 	sub	r3, r3, #4
     a74:	e083300b 	add	r3, r3, fp
     a78:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a7c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a80:	e1a01003 	mov	r1, r3
     a84:	e51b0010 	ldr	r0, [fp, #-16]
     a88:	eb00018a 	bl	10b8 <__udivsi3>
     a8c:	e1a03000 	mov	r3, r0
     a90:	e50b3010 	str	r3, [fp, #-16]
     a94:	e51b3010 	ldr	r3, [fp, #-16]
     a98:	e3530000 	cmp	r3, #0
     a9c:	1affffe7 	bne	a40 <printint+0x64>
     aa0:	e51b300c 	ldr	r3, [fp, #-12]
     aa4:	e3530000 	cmp	r3, #0
     aa8:	0a00000e 	beq	ae8 <printint+0x10c>
     aac:	e51b3008 	ldr	r3, [fp, #-8]
     ab0:	e2832001 	add	r2, r3, #1
     ab4:	e50b2008 	str	r2, [fp, #-8]
     ab8:	e2433004 	sub	r3, r3, #4
     abc:	e083300b 	add	r3, r3, fp
     ac0:	e3a0202d 	mov	r2, #45	@ 0x2d
     ac4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ac8:	ea000006 	b	ae8 <printint+0x10c>
     acc:	e24b2020 	sub	r2, fp, #32
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e0823003 	add	r3, r2, r3
     ad8:	e5d33000 	ldrb	r3, [r3]
     adc:	e1a01003 	mov	r1, r3
     ae0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ae4:	ebffffae 	bl	9a4 <putc>
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e2433001 	sub	r3, r3, #1
     af0:	e50b3008 	str	r3, [fp, #-8]
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e3530000 	cmp	r3, #0
     afc:	aafffff2 	bge	acc <printint+0xf0>
     b00:	e1a00000 	nop			@ (mov r0, r0)
     b04:	e1a00000 	nop			@ (mov r0, r0)
     b08:	e24bd004 	sub	sp, fp, #4
     b0c:	e8bd8800 	pop	{fp, pc}
     b10:	000011ec 	.word	0x000011ec

00000b14 <printf>:
     b14:	e92d000e 	push	{r1, r2, r3}
     b18:	e92d4800 	push	{fp, lr}
     b1c:	e28db004 	add	fp, sp, #4
     b20:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b24:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b28:	e3a03000 	mov	r3, #0
     b2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b30:	e28b3008 	add	r3, fp, #8
     b34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b38:	e3a03000 	mov	r3, #0
     b3c:	e50b3010 	str	r3, [fp, #-16]
     b40:	ea000074 	b	d18 <printf+0x204>
     b44:	e59b2004 	ldr	r2, [fp, #4]
     b48:	e51b3010 	ldr	r3, [fp, #-16]
     b4c:	e0823003 	add	r3, r2, r3
     b50:	e5d33000 	ldrb	r3, [r3]
     b54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b5c:	e3530000 	cmp	r3, #0
     b60:	1a00000b 	bne	b94 <printf+0x80>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b68:	e3530025 	cmp	r3, #37	@ 0x25
     b6c:	1a000002 	bne	b7c <printf+0x68>
     b70:	e3a03025 	mov	r3, #37	@ 0x25
     b74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b78:	ea000063 	b	d0c <printf+0x1f8>
     b7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b80:	e6ef3073 	uxtb	r3, r3
     b84:	e1a01003 	mov	r1, r3
     b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	ebffff84 	bl	9a4 <putc>
     b90:	ea00005d 	b	d0c <printf+0x1f8>
     b94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b98:	e3530025 	cmp	r3, #37	@ 0x25
     b9c:	1a00005a 	bne	d0c <printf+0x1f8>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e3530064 	cmp	r3, #100	@ 0x64
     ba8:	1a00000a 	bne	bd8 <printf+0xc4>
     bac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb0:	e5933000 	ldr	r3, [r3]
     bb4:	e1a01003 	mov	r1, r3
     bb8:	e3a03001 	mov	r3, #1
     bbc:	e3a0200a 	mov	r2, #10
     bc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc4:	ebffff84 	bl	9dc <printint>
     bc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bcc:	e2833004 	add	r3, r3, #4
     bd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bd4:	ea00004a 	b	d04 <printf+0x1f0>
     bd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bdc:	e3530078 	cmp	r3, #120	@ 0x78
     be0:	0a000002 	beq	bf0 <printf+0xdc>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e3530070 	cmp	r3, #112	@ 0x70
     bec:	1a00000a 	bne	c1c <printf+0x108>
     bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e1a01003 	mov	r1, r3
     bfc:	e3a03000 	mov	r3, #0
     c00:	e3a02010 	mov	r2, #16
     c04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c08:	ebffff73 	bl	9dc <printint>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e2833004 	add	r3, r3, #4
     c14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c18:	ea000039 	b	d04 <printf+0x1f0>
     c1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c20:	e3530073 	cmp	r3, #115	@ 0x73
     c24:	1a000018 	bne	c8c <printf+0x178>
     c28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c2c:	e5933000 	ldr	r3, [r3]
     c30:	e50b300c 	str	r3, [fp, #-12]
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e2833004 	add	r3, r3, #4
     c3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c40:	e51b300c 	ldr	r3, [fp, #-12]
     c44:	e3530000 	cmp	r3, #0
     c48:	1a00000a 	bne	c78 <printf+0x164>
     c4c:	e59f30f4 	ldr	r3, [pc, #244]	@ d48 <printf+0x234>
     c50:	e50b300c 	str	r3, [fp, #-12]
     c54:	ea000007 	b	c78 <printf+0x164>
     c58:	e51b300c 	ldr	r3, [fp, #-12]
     c5c:	e5d33000 	ldrb	r3, [r3]
     c60:	e1a01003 	mov	r1, r3
     c64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c68:	ebffff4d 	bl	9a4 <putc>
     c6c:	e51b300c 	ldr	r3, [fp, #-12]
     c70:	e2833001 	add	r3, r3, #1
     c74:	e50b300c 	str	r3, [fp, #-12]
     c78:	e51b300c 	ldr	r3, [fp, #-12]
     c7c:	e5d33000 	ldrb	r3, [r3]
     c80:	e3530000 	cmp	r3, #0
     c84:	1afffff3 	bne	c58 <printf+0x144>
     c88:	ea00001d 	b	d04 <printf+0x1f0>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e3530063 	cmp	r3, #99	@ 0x63
     c94:	1a000009 	bne	cc0 <printf+0x1ac>
     c98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c9c:	e5933000 	ldr	r3, [r3]
     ca0:	e6ef3073 	uxtb	r3, r3
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cac:	ebffff3c 	bl	9a4 <putc>
     cb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cb4:	e2833004 	add	r3, r3, #4
     cb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cbc:	ea000010 	b	d04 <printf+0x1f0>
     cc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc4:	e3530025 	cmp	r3, #37	@ 0x25
     cc8:	1a000005 	bne	ce4 <printf+0x1d0>
     ccc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd0:	e6ef3073 	uxtb	r3, r3
     cd4:	e1a01003 	mov	r1, r3
     cd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cdc:	ebffff30 	bl	9a4 <putc>
     ce0:	ea000007 	b	d04 <printf+0x1f0>
     ce4:	e3a01025 	mov	r1, #37	@ 0x25
     ce8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cec:	ebffff2c 	bl	9a4 <putc>
     cf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf4:	e6ef3073 	uxtb	r3, r3
     cf8:	e1a01003 	mov	r1, r3
     cfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d00:	ebffff27 	bl	9a4 <putc>
     d04:	e3a03000 	mov	r3, #0
     d08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d0c:	e51b3010 	ldr	r3, [fp, #-16]
     d10:	e2833001 	add	r3, r3, #1
     d14:	e50b3010 	str	r3, [fp, #-16]
     d18:	e59b2004 	ldr	r2, [fp, #4]
     d1c:	e51b3010 	ldr	r3, [fp, #-16]
     d20:	e0823003 	add	r3, r2, r3
     d24:	e5d33000 	ldrb	r3, [r3]
     d28:	e3530000 	cmp	r3, #0
     d2c:	1affff84 	bne	b44 <printf+0x30>
     d30:	e1a00000 	nop			@ (mov r0, r0)
     d34:	e1a00000 	nop			@ (mov r0, r0)
     d38:	e24bd004 	sub	sp, fp, #4
     d3c:	e8bd4800 	pop	{fp, lr}
     d40:	e28dd00c 	add	sp, sp, #12
     d44:	e12fff1e 	bx	lr
     d48:	000011e4 	.word	0x000011e4

00000d4c <free>:
     d4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d50:	e28db000 	add	fp, sp, #0
     d54:	e24dd014 	sub	sp, sp, #20
     d58:	e50b0010 	str	r0, [fp, #-16]
     d5c:	e51b3010 	ldr	r3, [fp, #-16]
     d60:	e2433008 	sub	r3, r3, #8
     d64:	e50b300c 	str	r3, [fp, #-12]
     d68:	e59f3154 	ldr	r3, [pc, #340]	@ ec4 <free+0x178>
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e50b3008 	str	r3, [fp, #-8]
     d74:	ea000010 	b	dbc <free+0x70>
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e51b2008 	ldr	r2, [fp, #-8]
     d84:	e1520003 	cmp	r2, r3
     d88:	3a000008 	bcc	db0 <free+0x64>
     d8c:	e51b200c 	ldr	r2, [fp, #-12]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e1520003 	cmp	r2, r3
     d98:	8a000010 	bhi	de0 <free+0x94>
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5933000 	ldr	r3, [r3]
     da4:	e51b200c 	ldr	r2, [fp, #-12]
     da8:	e1520003 	cmp	r2, r3
     dac:	3a00000b 	bcc	de0 <free+0x94>
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5933000 	ldr	r3, [r3]
     db8:	e50b3008 	str	r3, [fp, #-8]
     dbc:	e51b200c 	ldr	r2, [fp, #-12]
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	9affffea 	bls	d78 <free+0x2c>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5933000 	ldr	r3, [r3]
     dd4:	e51b200c 	ldr	r2, [fp, #-12]
     dd8:	e1520003 	cmp	r2, r3
     ddc:	2affffe5 	bcs	d78 <free+0x2c>
     de0:	e51b300c 	ldr	r3, [fp, #-12]
     de4:	e5933004 	ldr	r3, [r3, #4]
     de8:	e1a03183 	lsl	r3, r3, #3
     dec:	e51b200c 	ldr	r2, [fp, #-12]
     df0:	e0822003 	add	r2, r2, r3
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e1520003 	cmp	r2, r3
     e00:	1a00000d 	bne	e3c <free+0xf0>
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e5932004 	ldr	r2, [r3, #4]
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e5933004 	ldr	r3, [r3, #4]
     e18:	e0822003 	add	r2, r2, r3
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e5832004 	str	r2, [r3, #4]
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e5933000 	ldr	r3, [r3]
     e2c:	e5932000 	ldr	r2, [r3]
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e5832000 	str	r2, [r3]
     e38:	ea000003 	b	e4c <free+0x100>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5932000 	ldr	r2, [r3]
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e5832000 	str	r2, [r3]
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5933004 	ldr	r3, [r3, #4]
     e54:	e1a03183 	lsl	r3, r3, #3
     e58:	e51b2008 	ldr	r2, [fp, #-8]
     e5c:	e0823003 	add	r3, r2, r3
     e60:	e51b200c 	ldr	r2, [fp, #-12]
     e64:	e1520003 	cmp	r2, r3
     e68:	1a00000b 	bne	e9c <free+0x150>
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e5932004 	ldr	r2, [r3, #4]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5933004 	ldr	r3, [r3, #4]
     e7c:	e0822003 	add	r2, r2, r3
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5832004 	str	r2, [r3, #4]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e5932000 	ldr	r2, [r3]
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5832000 	str	r2, [r3]
     e98:	ea000002 	b	ea8 <free+0x15c>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e51b200c 	ldr	r2, [fp, #-12]
     ea4:	e5832000 	str	r2, [r3]
     ea8:	e59f2014 	ldr	r2, [pc, #20]	@ ec4 <free+0x178>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5823000 	str	r3, [r2]
     eb4:	e1a00000 	nop			@ (mov r0, r0)
     eb8:	e28bd000 	add	sp, fp, #0
     ebc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ec0:	e12fff1e 	bx	lr
     ec4:	00001208 	.word	0x00001208

00000ec8 <morecore>:
     ec8:	e92d4800 	push	{fp, lr}
     ecc:	e28db004 	add	fp, sp, #4
     ed0:	e24dd010 	sub	sp, sp, #16
     ed4:	e50b0010 	str	r0, [fp, #-16]
     ed8:	e51b3010 	ldr	r3, [fp, #-16]
     edc:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ee0:	2a000001 	bcs	eec <morecore+0x24>
     ee4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ee8:	e50b3010 	str	r3, [fp, #-16]
     eec:	e51b3010 	ldr	r3, [fp, #-16]
     ef0:	e1a03183 	lsl	r3, r3, #3
     ef4:	e1a00003 	mov	r0, r3
     ef8:	ebfffe6a 	bl	8a8 <sbrk>
     efc:	e50b0008 	str	r0, [fp, #-8]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e3730001 	cmn	r3, #1
     f08:	1a000001 	bne	f14 <morecore+0x4c>
     f0c:	e3a03000 	mov	r3, #0
     f10:	ea00000a 	b	f40 <morecore+0x78>
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e50b300c 	str	r3, [fp, #-12]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e51b2010 	ldr	r2, [fp, #-16]
     f24:	e5832004 	str	r2, [r3, #4]
     f28:	e51b300c 	ldr	r3, [fp, #-12]
     f2c:	e2833008 	add	r3, r3, #8
     f30:	e1a00003 	mov	r0, r3
     f34:	ebffff84 	bl	d4c <free>
     f38:	e59f300c 	ldr	r3, [pc, #12]	@ f4c <morecore+0x84>
     f3c:	e5933000 	ldr	r3, [r3]
     f40:	e1a00003 	mov	r0, r3
     f44:	e24bd004 	sub	sp, fp, #4
     f48:	e8bd8800 	pop	{fp, pc}
     f4c:	00001208 	.word	0x00001208

00000f50 <malloc>:
     f50:	e92d4800 	push	{fp, lr}
     f54:	e28db004 	add	fp, sp, #4
     f58:	e24dd018 	sub	sp, sp, #24
     f5c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f64:	e2833007 	add	r3, r3, #7
     f68:	e1a031a3 	lsr	r3, r3, #3
     f6c:	e2833001 	add	r3, r3, #1
     f70:	e50b3010 	str	r3, [fp, #-16]
     f74:	e59f3134 	ldr	r3, [pc, #308]	@ 10b0 <malloc+0x160>
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e50b300c 	str	r3, [fp, #-12]
     f80:	e51b300c 	ldr	r3, [fp, #-12]
     f84:	e3530000 	cmp	r3, #0
     f88:	1a00000b 	bne	fbc <malloc+0x6c>
     f8c:	e59f3120 	ldr	r3, [pc, #288]	@ 10b4 <malloc+0x164>
     f90:	e50b300c 	str	r3, [fp, #-12]
     f94:	e59f2114 	ldr	r2, [pc, #276]	@ 10b0 <malloc+0x160>
     f98:	e51b300c 	ldr	r3, [fp, #-12]
     f9c:	e5823000 	str	r3, [r2]
     fa0:	e59f3108 	ldr	r3, [pc, #264]	@ 10b0 <malloc+0x160>
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e59f2104 	ldr	r2, [pc, #260]	@ 10b4 <malloc+0x164>
     fac:	e5823000 	str	r3, [r2]
     fb0:	e59f30fc 	ldr	r3, [pc, #252]	@ 10b4 <malloc+0x164>
     fb4:	e3a02000 	mov	r2, #0
     fb8:	e5832004 	str	r2, [r3, #4]
     fbc:	e51b300c 	ldr	r3, [fp, #-12]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e50b3008 	str	r3, [fp, #-8]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5933004 	ldr	r3, [r3, #4]
     fd0:	e51b2010 	ldr	r2, [fp, #-16]
     fd4:	e1520003 	cmp	r2, r3
     fd8:	8a00001e 	bhi	1058 <malloc+0x108>
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e5933004 	ldr	r3, [r3, #4]
     fe4:	e51b2010 	ldr	r2, [fp, #-16]
     fe8:	e1520003 	cmp	r2, r3
     fec:	1a000004 	bne	1004 <malloc+0xb4>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5932000 	ldr	r2, [r3]
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5832000 	str	r2, [r3]
    1000:	ea00000e 	b	1040 <malloc+0xf0>
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5932004 	ldr	r2, [r3, #4]
    100c:	e51b3010 	ldr	r3, [fp, #-16]
    1010:	e0422003 	sub	r2, r2, r3
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5832004 	str	r2, [r3, #4]
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5933004 	ldr	r3, [r3, #4]
    1024:	e1a03183 	lsl	r3, r3, #3
    1028:	e51b2008 	ldr	r2, [fp, #-8]
    102c:	e0823003 	add	r3, r2, r3
    1030:	e50b3008 	str	r3, [fp, #-8]
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e51b2010 	ldr	r2, [fp, #-16]
    103c:	e5832004 	str	r2, [r3, #4]
    1040:	e59f2068 	ldr	r2, [pc, #104]	@ 10b0 <malloc+0x160>
    1044:	e51b300c 	ldr	r3, [fp, #-12]
    1048:	e5823000 	str	r3, [r2]
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e2833008 	add	r3, r3, #8
    1054:	ea000012 	b	10a4 <malloc+0x154>
    1058:	e59f3050 	ldr	r3, [pc, #80]	@ 10b0 <malloc+0x160>
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e51b2008 	ldr	r2, [fp, #-8]
    1064:	e1520003 	cmp	r2, r3
    1068:	1a000007 	bne	108c <malloc+0x13c>
    106c:	e51b0010 	ldr	r0, [fp, #-16]
    1070:	ebffff94 	bl	ec8 <morecore>
    1074:	e50b0008 	str	r0, [fp, #-8]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e3530000 	cmp	r3, #0
    1080:	1a000001 	bne	108c <malloc+0x13c>
    1084:	e3a03000 	mov	r3, #0
    1088:	ea000005 	b	10a4 <malloc+0x154>
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e50b300c 	str	r3, [fp, #-12]
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e50b3008 	str	r3, [fp, #-8]
    10a0:	eaffffc8 	b	fc8 <malloc+0x78>
    10a4:	e1a00003 	mov	r0, r3
    10a8:	e24bd004 	sub	sp, fp, #4
    10ac:	e8bd8800 	pop	{fp, pc}
    10b0:	00001208 	.word	0x00001208
    10b4:	00001200 	.word	0x00001200

000010b8 <__udivsi3>:
    10b8:	e2512001 	subs	r2, r1, #1
    10bc:	012fff1e 	bxeq	lr
    10c0:	3a000036 	bcc	11a0 <__udivsi3+0xe8>
    10c4:	e1500001 	cmp	r0, r1
    10c8:	9a000022 	bls	1158 <__udivsi3+0xa0>
    10cc:	e1110002 	tst	r1, r2
    10d0:	0a000023 	beq	1164 <__udivsi3+0xac>
    10d4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10d8:	01a01181 	lsleq	r1, r1, #3
    10dc:	03a03008 	moveq	r3, #8
    10e0:	13a03001 	movne	r3, #1
    10e4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10e8:	31510000 	cmpcc	r1, r0
    10ec:	31a01201 	lslcc	r1, r1, #4
    10f0:	31a03203 	lslcc	r3, r3, #4
    10f4:	3afffffa 	bcc	10e4 <__udivsi3+0x2c>
    10f8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10fc:	31510000 	cmpcc	r1, r0
    1100:	31a01081 	lslcc	r1, r1, #1
    1104:	31a03083 	lslcc	r3, r3, #1
    1108:	3afffffa 	bcc	10f8 <__udivsi3+0x40>
    110c:	e3a02000 	mov	r2, #0
    1110:	e1500001 	cmp	r0, r1
    1114:	20400001 	subcs	r0, r0, r1
    1118:	21822003 	orrcs	r2, r2, r3
    111c:	e15000a1 	cmp	r0, r1, lsr #1
    1120:	204000a1 	subcs	r0, r0, r1, lsr #1
    1124:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1128:	e1500121 	cmp	r0, r1, lsr #2
    112c:	20400121 	subcs	r0, r0, r1, lsr #2
    1130:	21822123 	orrcs	r2, r2, r3, lsr #2
    1134:	e15001a1 	cmp	r0, r1, lsr #3
    1138:	204001a1 	subcs	r0, r0, r1, lsr #3
    113c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1140:	e3500000 	cmp	r0, #0
    1144:	11b03223 	lsrsne	r3, r3, #4
    1148:	11a01221 	lsrne	r1, r1, #4
    114c:	1affffef 	bne	1110 <__udivsi3+0x58>
    1150:	e1a00002 	mov	r0, r2
    1154:	e12fff1e 	bx	lr
    1158:	03a00001 	moveq	r0, #1
    115c:	13a00000 	movne	r0, #0
    1160:	e12fff1e 	bx	lr
    1164:	e3510801 	cmp	r1, #65536	@ 0x10000
    1168:	21a01821 	lsrcs	r1, r1, #16
    116c:	23a02010 	movcs	r2, #16
    1170:	33a02000 	movcc	r2, #0
    1174:	e3510c01 	cmp	r1, #256	@ 0x100
    1178:	21a01421 	lsrcs	r1, r1, #8
    117c:	22822008 	addcs	r2, r2, #8
    1180:	e3510010 	cmp	r1, #16
    1184:	21a01221 	lsrcs	r1, r1, #4
    1188:	22822004 	addcs	r2, r2, #4
    118c:	e3510004 	cmp	r1, #4
    1190:	82822003 	addhi	r2, r2, #3
    1194:	908220a1 	addls	r2, r2, r1, lsr #1
    1198:	e1a00230 	lsr	r0, r0, r2
    119c:	e12fff1e 	bx	lr
    11a0:	e3500000 	cmp	r0, #0
    11a4:	13e00000 	mvnne	r0, #0
    11a8:	ea000007 	b	11cc <__aeabi_idiv0>

000011ac <__aeabi_uidivmod>:
    11ac:	e3510000 	cmp	r1, #0
    11b0:	0afffffa 	beq	11a0 <__udivsi3+0xe8>
    11b4:	e92d4003 	push	{r0, r1, lr}
    11b8:	ebffffbe 	bl	10b8 <__udivsi3>
    11bc:	e8bd4006 	pop	{r1, r2, lr}
    11c0:	e0030092 	mul	r3, r2, r0
    11c4:	e0411003 	sub	r1, r1, r3
    11c8:	e12fff1e 	bx	lr

000011cc <__aeabi_idiv0>:
    11cc:	e12fff1e 	bx	lr
