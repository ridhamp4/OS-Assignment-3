
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	eb000223 	bl	8a8 <ps>
      18:	eb00016e 	bl	5d8 <exit>

0000001c <strcpy>:
      1c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      20:	e28db000 	add	fp, sp, #0
      24:	e24dd014 	sub	sp, sp, #20
      28:	e50b0010 	str	r0, [fp, #-16]
      2c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	e1a00000 	nop			@ (mov r0, r0)
      3c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      40:	e2823001 	add	r3, r2, #1
      44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e2831001 	add	r1, r3, #1
      50:	e50b1010 	str	r1, [fp, #-16]
      54:	e5d22000 	ldrb	r2, [r2]
      58:	e5c32000 	strb	r2, [r3]
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e3530000 	cmp	r3, #0
      64:	1afffff4 	bne	3c <strcpy+0x20>
      68:	e51b3008 	ldr	r3, [fp, #-8]
      6c:	e1a00003 	mov	r0, r3
      70:	e28bd000 	add	sp, fp, #0
      74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      78:	e12fff1e 	bx	lr

0000007c <strncmp>:
      7c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      80:	e28db000 	add	fp, sp, #0
      84:	e24dd014 	sub	sp, sp, #20
      88:	e50b0008 	str	r0, [fp, #-8]
      8c:	e50b100c 	str	r1, [fp, #-12]
      90:	e50b2010 	str	r2, [fp, #-16]
      94:	ea000008 	b	bc <strncmp+0x40>
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e2833001 	add	r3, r3, #1
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e51b300c 	ldr	r3, [fp, #-12]
      a8:	e2833001 	add	r3, r3, #1
      ac:	e50b300c 	str	r3, [fp, #-12]
      b0:	e51b3010 	ldr	r3, [fp, #-16]
      b4:	e2433001 	sub	r3, r3, #1
      b8:	e50b3010 	str	r3, [fp, #-16]
      bc:	e51b3010 	ldr	r3, [fp, #-16]
      c0:	e3530000 	cmp	r3, #0
      c4:	da00000d 	ble	100 <strncmp+0x84>
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e5d33000 	ldrb	r3, [r3]
      d0:	e3530000 	cmp	r3, #0
      d4:	0a000009 	beq	100 <strncmp+0x84>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e5d33000 	ldrb	r3, [r3]
      e0:	e3530000 	cmp	r3, #0
      e4:	0a000005 	beq	100 <strncmp+0x84>
      e8:	e51b3008 	ldr	r3, [fp, #-8]
      ec:	e5d32000 	ldrb	r2, [r3]
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e1520003 	cmp	r2, r3
      fc:	0affffe5 	beq	98 <strncmp+0x1c>
     100:	e51b3010 	ldr	r3, [fp, #-16]
     104:	e3530000 	cmp	r3, #0
     108:	1a000001 	bne	114 <strncmp+0x98>
     10c:	e3a03000 	mov	r3, #0
     110:	ea000005 	b	12c <strncmp+0xb0>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e5d33000 	ldrb	r3, [r3]
     11c:	e1a02003 	mov	r2, r3
     120:	e51b300c 	ldr	r3, [fp, #-12]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e0423003 	sub	r3, r2, r3
     12c:	e1a00003 	mov	r0, r3
     130:	e28bd000 	add	sp, fp, #0
     134:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     138:	e12fff1e 	bx	lr

0000013c <strcmp>:
     13c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     140:	e28db000 	add	fp, sp, #0
     144:	e24dd00c 	sub	sp, sp, #12
     148:	e50b0008 	str	r0, [fp, #-8]
     14c:	e50b100c 	str	r1, [fp, #-12]
     150:	ea000005 	b	16c <strcmp+0x30>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e2833001 	add	r3, r3, #1
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	e51b300c 	ldr	r3, [fp, #-12]
     164:	e2833001 	add	r3, r3, #1
     168:	e50b300c 	str	r3, [fp, #-12]
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e3530000 	cmp	r3, #0
     178:	0a000005 	beq	194 <strcmp+0x58>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e5d32000 	ldrb	r2, [r3]
     184:	e51b300c 	ldr	r3, [fp, #-12]
     188:	e5d33000 	ldrb	r3, [r3]
     18c:	e1520003 	cmp	r2, r3
     190:	0affffef 	beq	154 <strcmp+0x18>
     194:	e51b3008 	ldr	r3, [fp, #-8]
     198:	e5d33000 	ldrb	r3, [r3]
     19c:	e1a02003 	mov	r2, r3
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e0423003 	sub	r3, r2, r3
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <strlen>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd014 	sub	sp, sp, #20
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e3a03000 	mov	r3, #0
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	ea000002 	b	1e4 <strlen+0x28>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e2833001 	add	r3, r3, #1
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e51b2010 	ldr	r2, [fp, #-16]
     1ec:	e0823003 	add	r3, r2, r3
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e3530000 	cmp	r3, #0
     1f8:	1afffff6 	bne	1d8 <strlen+0x1c>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e1a00003 	mov	r0, r3
     204:	e28bd000 	add	sp, fp, #0
     208:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     20c:	e12fff1e 	bx	lr

00000210 <memset>:
     210:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     214:	e28db000 	add	fp, sp, #0
     218:	e24dd024 	sub	sp, sp, #36	@ 0x24
     21c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     220:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     224:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     228:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     234:	e54b300d 	strb	r3, [fp, #-13]
     238:	e55b200d 	ldrb	r2, [fp, #-13]
     23c:	e1a03002 	mov	r3, r2
     240:	e1a03403 	lsl	r3, r3, #8
     244:	e0833002 	add	r3, r3, r2
     248:	e1a03803 	lsl	r3, r3, #16
     24c:	e1a02003 	mov	r2, r3
     250:	e55b300d 	ldrb	r3, [fp, #-13]
     254:	e1a03403 	lsl	r3, r3, #8
     258:	e1822003 	orr	r2, r2, r3
     25c:	e55b300d 	ldrb	r3, [fp, #-13]
     260:	e1823003 	orr	r3, r2, r3
     264:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     268:	ea000008 	b	290 <memset+0x80>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e55b200d 	ldrb	r2, [fp, #-13]
     274:	e5c32000 	strb	r2, [r3]
     278:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e2433001 	sub	r3, r3, #1
     280:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e2833001 	add	r3, r3, #1
     28c:	e50b3008 	str	r3, [fp, #-8]
     290:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     294:	e3530000 	cmp	r3, #0
     298:	0a000003 	beq	2ac <memset+0x9c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e2033003 	and	r3, r3, #3
     2a4:	e3530000 	cmp	r3, #0
     2a8:	1affffef 	bne	26c <memset+0x5c>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e50b300c 	str	r3, [fp, #-12]
     2b4:	ea000008 	b	2dc <memset+0xcc>
     2b8:	e51b300c 	ldr	r3, [fp, #-12]
     2bc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2c0:	e5832000 	str	r2, [r3]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e2433004 	sub	r3, r3, #4
     2cc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e51b300c 	ldr	r3, [fp, #-12]
     2d4:	e2833004 	add	r3, r3, #4
     2d8:	e50b300c 	str	r3, [fp, #-12]
     2dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e0:	e3530003 	cmp	r3, #3
     2e4:	8afffff3 	bhi	2b8 <memset+0xa8>
     2e8:	e51b300c 	ldr	r3, [fp, #-12]
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	ea000008 	b	318 <memset+0x108>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e55b200d 	ldrb	r2, [fp, #-13]
     2fc:	e5c32000 	strb	r2, [r3]
     300:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     304:	e2433001 	sub	r3, r3, #1
     308:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e2833001 	add	r3, r3, #1
     314:	e50b3008 	str	r3, [fp, #-8]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e3530000 	cmp	r3, #0
     320:	1afffff3 	bne	2f4 <memset+0xe4>
     324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     328:	e1a00003 	mov	r0, r3
     32c:	e28bd000 	add	sp, fp, #0
     330:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     334:	e12fff1e 	bx	lr

00000338 <strchr>:
     338:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     33c:	e28db000 	add	fp, sp, #0
     340:	e24dd00c 	sub	sp, sp, #12
     344:	e50b0008 	str	r0, [fp, #-8]
     348:	e1a03001 	mov	r3, r1
     34c:	e54b3009 	strb	r3, [fp, #-9]
     350:	ea000009 	b	37c <strchr+0x44>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e55b2009 	ldrb	r2, [fp, #-9]
     360:	e1520003 	cmp	r2, r3
     364:	1a000001 	bne	370 <strchr+0x38>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	ea000007 	b	390 <strchr+0x58>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e2833001 	add	r3, r3, #1
     378:	e50b3008 	str	r3, [fp, #-8]
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e3530000 	cmp	r3, #0
     388:	1afffff1 	bne	354 <strchr+0x1c>
     38c:	e3a03000 	mov	r3, #0
     390:	e1a00003 	mov	r0, r3
     394:	e28bd000 	add	sp, fp, #0
     398:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     39c:	e12fff1e 	bx	lr

000003a0 <gets>:
     3a0:	e92d4800 	push	{fp, lr}
     3a4:	e28db004 	add	fp, sp, #4
     3a8:	e24dd018 	sub	sp, sp, #24
     3ac:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3b0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3b4:	e3a03000 	mov	r3, #0
     3b8:	e50b3008 	str	r3, [fp, #-8]
     3bc:	ea000016 	b	41c <gets+0x7c>
     3c0:	e24b300d 	sub	r3, fp, #13
     3c4:	e3a02001 	mov	r2, #1
     3c8:	e1a01003 	mov	r1, r3
     3cc:	e3a00000 	mov	r0, #0
     3d0:	eb00009b 	bl	644 <read>
     3d4:	e50b000c 	str	r0, [fp, #-12]
     3d8:	e51b300c 	ldr	r3, [fp, #-12]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	da000013 	ble	434 <gets+0x94>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2832001 	add	r2, r3, #1
     3ec:	e50b2008 	str	r2, [fp, #-8]
     3f0:	e1a02003 	mov	r2, r3
     3f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f8:	e0833002 	add	r3, r3, r2
     3fc:	e55b200d 	ldrb	r2, [fp, #-13]
     400:	e5c32000 	strb	r2, [r3]
     404:	e55b300d 	ldrb	r3, [fp, #-13]
     408:	e353000a 	cmp	r3, #10
     40c:	0a000009 	beq	438 <gets+0x98>
     410:	e55b300d 	ldrb	r3, [fp, #-13]
     414:	e353000d 	cmp	r3, #13
     418:	0a000006 	beq	438 <gets+0x98>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     428:	e1520003 	cmp	r2, r3
     42c:	caffffe3 	bgt	3c0 <gets+0x20>
     430:	ea000000 	b	438 <gets+0x98>
     434:	e1a00000 	nop			@ (mov r0, r0)
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     440:	e0823003 	add	r3, r2, r3
     444:	e3a02000 	mov	r2, #0
     448:	e5c32000 	strb	r2, [r3]
     44c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <stat>:
     45c:	e92d4800 	push	{fp, lr}
     460:	e28db004 	add	fp, sp, #4
     464:	e24dd010 	sub	sp, sp, #16
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e3a01000 	mov	r1, #0
     474:	e51b0010 	ldr	r0, [fp, #-16]
     478:	eb00009e 	bl	6f8 <open>
     47c:	e50b0008 	str	r0, [fp, #-8]
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e3530000 	cmp	r3, #0
     488:	aa000001 	bge	494 <stat+0x38>
     48c:	e3e03000 	mvn	r3, #0
     490:	ea000006 	b	4b0 <stat+0x54>
     494:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     498:	e51b0008 	ldr	r0, [fp, #-8]
     49c:	eb0000b0 	bl	764 <fstat>
     4a0:	e50b000c 	str	r0, [fp, #-12]
     4a4:	e51b0008 	ldr	r0, [fp, #-8]
     4a8:	eb000077 	bl	68c <close>
     4ac:	e51b300c 	ldr	r3, [fp, #-12]
     4b0:	e1a00003 	mov	r0, r3
     4b4:	e24bd004 	sub	sp, fp, #4
     4b8:	e8bd8800 	pop	{fp, pc}

000004bc <atoi>:
     4bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c0:	e28db000 	add	fp, sp, #0
     4c4:	e24dd014 	sub	sp, sp, #20
     4c8:	e50b0010 	str	r0, [fp, #-16]
     4cc:	e3a03000 	mov	r3, #0
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	ea00000c 	b	50c <atoi+0x50>
     4d8:	e51b2008 	ldr	r2, [fp, #-8]
     4dc:	e1a03002 	mov	r3, r2
     4e0:	e1a03103 	lsl	r3, r3, #2
     4e4:	e0833002 	add	r3, r3, r2
     4e8:	e1a03083 	lsl	r3, r3, #1
     4ec:	e1a01003 	mov	r1, r3
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e2832001 	add	r2, r3, #1
     4f8:	e50b2010 	str	r2, [fp, #-16]
     4fc:	e5d33000 	ldrb	r3, [r3]
     500:	e0813003 	add	r3, r1, r3
     504:	e2433030 	sub	r3, r3, #48	@ 0x30
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e5d33000 	ldrb	r3, [r3]
     514:	e353002f 	cmp	r3, #47	@ 0x2f
     518:	9a000003 	bls	52c <atoi+0x70>
     51c:	e51b3010 	ldr	r3, [fp, #-16]
     520:	e5d33000 	ldrb	r3, [r3]
     524:	e3530039 	cmp	r3, #57	@ 0x39
     528:	9affffea 	bls	4d8 <atoi+0x1c>
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e1a00003 	mov	r0, r3
     534:	e28bd000 	add	sp, fp, #0
     538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     53c:	e12fff1e 	bx	lr

00000540 <memmove>:
     540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     544:	e28db000 	add	fp, sp, #0
     548:	e24dd01c 	sub	sp, sp, #28
     54c:	e50b0010 	str	r0, [fp, #-16]
     550:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     554:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e50b3008 	str	r3, [fp, #-8]
     560:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     564:	e50b300c 	str	r3, [fp, #-12]
     568:	ea000007 	b	58c <memmove+0x4c>
     56c:	e51b200c 	ldr	r2, [fp, #-12]
     570:	e2823001 	add	r3, r2, #1
     574:	e50b300c 	str	r3, [fp, #-12]
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	e2831001 	add	r1, r3, #1
     580:	e50b1008 	str	r1, [fp, #-8]
     584:	e5d22000 	ldrb	r2, [r2]
     588:	e5c32000 	strb	r2, [r3]
     58c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     590:	e2432001 	sub	r2, r3, #1
     594:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     598:	e3530000 	cmp	r3, #0
     59c:	cafffff2 	bgt	56c <memmove+0x2c>
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <fork>:
     5b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b8:	e1a04003 	mov	r4, r3
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a02001 	mov	r2, r1
     5c4:	e1a01000 	mov	r1, r0
     5c8:	e3a00001 	mov	r0, #1
     5cc:	ef000000 	svc	0x00000000
     5d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d4:	e12fff1e 	bx	lr

000005d8 <exit>:
     5d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5dc:	e1a04003 	mov	r4, r3
     5e0:	e1a03002 	mov	r3, r2
     5e4:	e1a02001 	mov	r2, r1
     5e8:	e1a01000 	mov	r1, r0
     5ec:	e3a00002 	mov	r0, #2
     5f0:	ef000000 	svc	0x00000000
     5f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <wait>:
     5fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     600:	e1a04003 	mov	r4, r3
     604:	e1a03002 	mov	r3, r2
     608:	e1a02001 	mov	r2, r1
     60c:	e1a01000 	mov	r1, r0
     610:	e3a00003 	mov	r0, #3
     614:	ef000000 	svc	0x00000000
     618:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <pipe>:
     620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     624:	e1a04003 	mov	r4, r3
     628:	e1a03002 	mov	r3, r2
     62c:	e1a02001 	mov	r2, r1
     630:	e1a01000 	mov	r1, r0
     634:	e3a00004 	mov	r0, #4
     638:	ef000000 	svc	0x00000000
     63c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <read>:
     644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a00005 	mov	r0, #5
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <write>:
     668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a00010 	mov	r0, #16
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <close>:
     68c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a00015 	mov	r0, #21
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <kill>:
     6b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00006 	mov	r0, #6
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <exec>:
     6d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a00007 	mov	r0, #7
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <open>:
     6f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a0000f 	mov	r0, #15
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <mknod>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00011 	mov	r0, #17
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <unlink>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00012 	mov	r0, #18
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <fstat>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00008 	mov	r0, #8
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <link>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00013 	mov	r0, #19
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <mkdir>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00014 	mov	r0, #20
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <chdir>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00009 	mov	r0, #9
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <dup>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a0000a 	mov	r0, #10
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <getpid>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a0000b 	mov	r0, #11
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <sbrk>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a0000c 	mov	r0, #12
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <sleep>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a0000d 	mov	r0, #13
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <uptime>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a0000e 	mov	r0, #14
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <ps>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00016 	mov	r0, #22
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <settickets>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00017 	mov	r0, #23
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <srand>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00018 	mov	r0, #24
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <getpinfo>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00019 	mov	r0, #25
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <printpt>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a0001a 	mov	r0, #26
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <pgpte>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a0001b 	mov	r0, #27
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <ugetpid>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a0001c 	mov	r0, #28
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <kpt>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a0001d 	mov	r0, #29
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <putc>:
     9c8:	e92d4800 	push	{fp, lr}
     9cc:	e28db004 	add	fp, sp, #4
     9d0:	e24dd008 	sub	sp, sp, #8
     9d4:	e50b0008 	str	r0, [fp, #-8]
     9d8:	e1a03001 	mov	r3, r1
     9dc:	e54b3009 	strb	r3, [fp, #-9]
     9e0:	e24b3009 	sub	r3, fp, #9
     9e4:	e3a02001 	mov	r2, #1
     9e8:	e1a01003 	mov	r1, r3
     9ec:	e51b0008 	ldr	r0, [fp, #-8]
     9f0:	ebffff1c 	bl	668 <write>
     9f4:	e1a00000 	nop			@ (mov r0, r0)
     9f8:	e24bd004 	sub	sp, fp, #4
     9fc:	e8bd8800 	pop	{fp, pc}

00000a00 <printint>:
     a00:	e92d4800 	push	{fp, lr}
     a04:	e28db004 	add	fp, sp, #4
     a08:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a0c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a10:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a14:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a18:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a1c:	e3a03000 	mov	r3, #0
     a20:	e50b300c 	str	r3, [fp, #-12]
     a24:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a28:	e3530000 	cmp	r3, #0
     a2c:	0a000008 	beq	a54 <printint+0x54>
     a30:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a34:	e3530000 	cmp	r3, #0
     a38:	aa000005 	bge	a54 <printint+0x54>
     a3c:	e3a03001 	mov	r3, #1
     a40:	e50b300c 	str	r3, [fp, #-12]
     a44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a48:	e2633000 	rsb	r3, r3, #0
     a4c:	e50b3010 	str	r3, [fp, #-16]
     a50:	ea000001 	b	a5c <printint+0x5c>
     a54:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a58:	e50b3010 	str	r3, [fp, #-16]
     a5c:	e3a03000 	mov	r3, #0
     a60:	e50b3008 	str	r3, [fp, #-8]
     a64:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a68:	e51b3010 	ldr	r3, [fp, #-16]
     a6c:	e1a01002 	mov	r1, r2
     a70:	e1a00003 	mov	r0, r3
     a74:	eb0001d5 	bl	11d0 <__aeabi_uidivmod>
     a78:	e1a03001 	mov	r3, r1
     a7c:	e1a01003 	mov	r1, r3
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e2832001 	add	r2, r3, #1
     a88:	e50b2008 	str	r2, [fp, #-8]
     a8c:	e59f20a0 	ldr	r2, [pc, #160]	@ b34 <printint+0x134>
     a90:	e7d22001 	ldrb	r2, [r2, r1]
     a94:	e2433004 	sub	r3, r3, #4
     a98:	e083300b 	add	r3, r3, fp
     a9c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aa0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     aa4:	e1a01003 	mov	r1, r3
     aa8:	e51b0010 	ldr	r0, [fp, #-16]
     aac:	eb00018a 	bl	10dc <__udivsi3>
     ab0:	e1a03000 	mov	r3, r0
     ab4:	e50b3010 	str	r3, [fp, #-16]
     ab8:	e51b3010 	ldr	r3, [fp, #-16]
     abc:	e3530000 	cmp	r3, #0
     ac0:	1affffe7 	bne	a64 <printint+0x64>
     ac4:	e51b300c 	ldr	r3, [fp, #-12]
     ac8:	e3530000 	cmp	r3, #0
     acc:	0a00000e 	beq	b0c <printint+0x10c>
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e2832001 	add	r2, r3, #1
     ad8:	e50b2008 	str	r2, [fp, #-8]
     adc:	e2433004 	sub	r3, r3, #4
     ae0:	e083300b 	add	r3, r3, fp
     ae4:	e3a0202d 	mov	r2, #45	@ 0x2d
     ae8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aec:	ea000006 	b	b0c <printint+0x10c>
     af0:	e24b2020 	sub	r2, fp, #32
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e0823003 	add	r3, r2, r3
     afc:	e5d33000 	ldrb	r3, [r3]
     b00:	e1a01003 	mov	r1, r3
     b04:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b08:	ebffffae 	bl	9c8 <putc>
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e2433001 	sub	r3, r3, #1
     b14:	e50b3008 	str	r3, [fp, #-8]
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e3530000 	cmp	r3, #0
     b20:	aafffff2 	bge	af0 <printint+0xf0>
     b24:	e1a00000 	nop			@ (mov r0, r0)
     b28:	e1a00000 	nop			@ (mov r0, r0)
     b2c:	e24bd004 	sub	sp, fp, #4
     b30:	e8bd8800 	pop	{fp, pc}
     b34:	000011fc 	.word	0x000011fc

00000b38 <printf>:
     b38:	e92d000e 	push	{r1, r2, r3}
     b3c:	e92d4800 	push	{fp, lr}
     b40:	e28db004 	add	fp, sp, #4
     b44:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b48:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b4c:	e3a03000 	mov	r3, #0
     b50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b54:	e28b3008 	add	r3, fp, #8
     b58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e3a03000 	mov	r3, #0
     b60:	e50b3010 	str	r3, [fp, #-16]
     b64:	ea000074 	b	d3c <printf+0x204>
     b68:	e59b2004 	ldr	r2, [fp, #4]
     b6c:	e51b3010 	ldr	r3, [fp, #-16]
     b70:	e0823003 	add	r3, r2, r3
     b74:	e5d33000 	ldrb	r3, [r3]
     b78:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b80:	e3530000 	cmp	r3, #0
     b84:	1a00000b 	bne	bb8 <printf+0x80>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b8c:	e3530025 	cmp	r3, #37	@ 0x25
     b90:	1a000002 	bne	ba0 <printf+0x68>
     b94:	e3a03025 	mov	r3, #37	@ 0x25
     b98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b9c:	ea000063 	b	d30 <printf+0x1f8>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e6ef3073 	uxtb	r3, r3
     ba8:	e1a01003 	mov	r1, r3
     bac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb0:	ebffff84 	bl	9c8 <putc>
     bb4:	ea00005d 	b	d30 <printf+0x1f8>
     bb8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bbc:	e3530025 	cmp	r3, #37	@ 0x25
     bc0:	1a00005a 	bne	d30 <printf+0x1f8>
     bc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc8:	e3530064 	cmp	r3, #100	@ 0x64
     bcc:	1a00000a 	bne	bfc <printf+0xc4>
     bd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd4:	e5933000 	ldr	r3, [r3]
     bd8:	e1a01003 	mov	r1, r3
     bdc:	e3a03001 	mov	r3, #1
     be0:	e3a0200a 	mov	r2, #10
     be4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be8:	ebffff84 	bl	a00 <printint>
     bec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf0:	e2833004 	add	r3, r3, #4
     bf4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bf8:	ea00004a 	b	d28 <printf+0x1f0>
     bfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c00:	e3530078 	cmp	r3, #120	@ 0x78
     c04:	0a000002 	beq	c14 <printf+0xdc>
     c08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c0c:	e3530070 	cmp	r3, #112	@ 0x70
     c10:	1a00000a 	bne	c40 <printf+0x108>
     c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c18:	e5933000 	ldr	r3, [r3]
     c1c:	e1a01003 	mov	r1, r3
     c20:	e3a03000 	mov	r3, #0
     c24:	e3a02010 	mov	r2, #16
     c28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c2c:	ebffff73 	bl	a00 <printint>
     c30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c34:	e2833004 	add	r3, r3, #4
     c38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c3c:	ea000039 	b	d28 <printf+0x1f0>
     c40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c44:	e3530073 	cmp	r3, #115	@ 0x73
     c48:	1a000018 	bne	cb0 <printf+0x178>
     c4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c50:	e5933000 	ldr	r3, [r3]
     c54:	e50b300c 	str	r3, [fp, #-12]
     c58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c5c:	e2833004 	add	r3, r3, #4
     c60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e51b300c 	ldr	r3, [fp, #-12]
     c68:	e3530000 	cmp	r3, #0
     c6c:	1a00000a 	bne	c9c <printf+0x164>
     c70:	e59f30f4 	ldr	r3, [pc, #244]	@ d6c <printf+0x234>
     c74:	e50b300c 	str	r3, [fp, #-12]
     c78:	ea000007 	b	c9c <printf+0x164>
     c7c:	e51b300c 	ldr	r3, [fp, #-12]
     c80:	e5d33000 	ldrb	r3, [r3]
     c84:	e1a01003 	mov	r1, r3
     c88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c8c:	ebffff4d 	bl	9c8 <putc>
     c90:	e51b300c 	ldr	r3, [fp, #-12]
     c94:	e2833001 	add	r3, r3, #1
     c98:	e50b300c 	str	r3, [fp, #-12]
     c9c:	e51b300c 	ldr	r3, [fp, #-12]
     ca0:	e5d33000 	ldrb	r3, [r3]
     ca4:	e3530000 	cmp	r3, #0
     ca8:	1afffff3 	bne	c7c <printf+0x144>
     cac:	ea00001d 	b	d28 <printf+0x1f0>
     cb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb4:	e3530063 	cmp	r3, #99	@ 0x63
     cb8:	1a000009 	bne	ce4 <printf+0x1ac>
     cbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc0:	e5933000 	ldr	r3, [r3]
     cc4:	e6ef3073 	uxtb	r3, r3
     cc8:	e1a01003 	mov	r1, r3
     ccc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd0:	ebffff3c 	bl	9c8 <putc>
     cd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd8:	e2833004 	add	r3, r3, #4
     cdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	ea000010 	b	d28 <printf+0x1f0>
     ce4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce8:	e3530025 	cmp	r3, #37	@ 0x25
     cec:	1a000005 	bne	d08 <printf+0x1d0>
     cf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf4:	e6ef3073 	uxtb	r3, r3
     cf8:	e1a01003 	mov	r1, r3
     cfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d00:	ebffff30 	bl	9c8 <putc>
     d04:	ea000007 	b	d28 <printf+0x1f0>
     d08:	e3a01025 	mov	r1, #37	@ 0x25
     d0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d10:	ebffff2c 	bl	9c8 <putc>
     d14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d18:	e6ef3073 	uxtb	r3, r3
     d1c:	e1a01003 	mov	r1, r3
     d20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d24:	ebffff27 	bl	9c8 <putc>
     d28:	e3a03000 	mov	r3, #0
     d2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d30:	e51b3010 	ldr	r3, [fp, #-16]
     d34:	e2833001 	add	r3, r3, #1
     d38:	e50b3010 	str	r3, [fp, #-16]
     d3c:	e59b2004 	ldr	r2, [fp, #4]
     d40:	e51b3010 	ldr	r3, [fp, #-16]
     d44:	e0823003 	add	r3, r2, r3
     d48:	e5d33000 	ldrb	r3, [r3]
     d4c:	e3530000 	cmp	r3, #0
     d50:	1affff84 	bne	b68 <printf+0x30>
     d54:	e1a00000 	nop			@ (mov r0, r0)
     d58:	e1a00000 	nop			@ (mov r0, r0)
     d5c:	e24bd004 	sub	sp, fp, #4
     d60:	e8bd4800 	pop	{fp, lr}
     d64:	e28dd00c 	add	sp, sp, #12
     d68:	e12fff1e 	bx	lr
     d6c:	000011f4 	.word	0x000011f4

00000d70 <free>:
     d70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d74:	e28db000 	add	fp, sp, #0
     d78:	e24dd014 	sub	sp, sp, #20
     d7c:	e50b0010 	str	r0, [fp, #-16]
     d80:	e51b3010 	ldr	r3, [fp, #-16]
     d84:	e2433008 	sub	r3, r3, #8
     d88:	e50b300c 	str	r3, [fp, #-12]
     d8c:	e59f3154 	ldr	r3, [pc, #340]	@ ee8 <free+0x178>
     d90:	e5933000 	ldr	r3, [r3]
     d94:	e50b3008 	str	r3, [fp, #-8]
     d98:	ea000010 	b	de0 <free+0x70>
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5933000 	ldr	r3, [r3]
     da4:	e51b2008 	ldr	r2, [fp, #-8]
     da8:	e1520003 	cmp	r2, r3
     dac:	3a000008 	bcc	dd4 <free+0x64>
     db0:	e51b200c 	ldr	r2, [fp, #-12]
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e1520003 	cmp	r2, r3
     dbc:	8a000010 	bhi	e04 <free+0x94>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e51b200c 	ldr	r2, [fp, #-12]
     dcc:	e1520003 	cmp	r2, r3
     dd0:	3a00000b 	bcc	e04 <free+0x94>
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e50b3008 	str	r3, [fp, #-8]
     de0:	e51b200c 	ldr	r2, [fp, #-12]
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e1520003 	cmp	r2, r3
     dec:	9affffea 	bls	d9c <free+0x2c>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e51b200c 	ldr	r2, [fp, #-12]
     dfc:	e1520003 	cmp	r2, r3
     e00:	2affffe5 	bcs	d9c <free+0x2c>
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e5933004 	ldr	r3, [r3, #4]
     e0c:	e1a03183 	lsl	r3, r3, #3
     e10:	e51b200c 	ldr	r2, [fp, #-12]
     e14:	e0822003 	add	r2, r2, r3
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5933000 	ldr	r3, [r3]
     e20:	e1520003 	cmp	r2, r3
     e24:	1a00000d 	bne	e60 <free+0xf0>
     e28:	e51b300c 	ldr	r3, [fp, #-12]
     e2c:	e5932004 	ldr	r2, [r3, #4]
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e5933004 	ldr	r3, [r3, #4]
     e3c:	e0822003 	add	r2, r2, r3
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5832004 	str	r2, [r3, #4]
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e5933000 	ldr	r3, [r3]
     e50:	e5932000 	ldr	r2, [r3]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5832000 	str	r2, [r3]
     e5c:	ea000003 	b	e70 <free+0x100>
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5932000 	ldr	r2, [r3]
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5832000 	str	r2, [r3]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5933004 	ldr	r3, [r3, #4]
     e78:	e1a03183 	lsl	r3, r3, #3
     e7c:	e51b2008 	ldr	r2, [fp, #-8]
     e80:	e0823003 	add	r3, r2, r3
     e84:	e51b200c 	ldr	r2, [fp, #-12]
     e88:	e1520003 	cmp	r2, r3
     e8c:	1a00000b 	bne	ec0 <free+0x150>
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5932004 	ldr	r2, [r3, #4]
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e5933004 	ldr	r3, [r3, #4]
     ea0:	e0822003 	add	r2, r2, r3
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5832004 	str	r2, [r3, #4]
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e5932000 	ldr	r2, [r3]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5832000 	str	r2, [r3]
     ebc:	ea000002 	b	ecc <free+0x15c>
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e5832000 	str	r2, [r3]
     ecc:	e59f2014 	ldr	r2, [pc, #20]	@ ee8 <free+0x178>
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5823000 	str	r3, [r2]
     ed8:	e1a00000 	nop			@ (mov r0, r0)
     edc:	e28bd000 	add	sp, fp, #0
     ee0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ee4:	e12fff1e 	bx	lr
     ee8:	00001218 	.word	0x00001218

00000eec <morecore>:
     eec:	e92d4800 	push	{fp, lr}
     ef0:	e28db004 	add	fp, sp, #4
     ef4:	e24dd010 	sub	sp, sp, #16
     ef8:	e50b0010 	str	r0, [fp, #-16]
     efc:	e51b3010 	ldr	r3, [fp, #-16]
     f00:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f04:	2a000001 	bcs	f10 <morecore+0x24>
     f08:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f0c:	e50b3010 	str	r3, [fp, #-16]
     f10:	e51b3010 	ldr	r3, [fp, #-16]
     f14:	e1a03183 	lsl	r3, r3, #3
     f18:	e1a00003 	mov	r0, r3
     f1c:	ebfffe46 	bl	83c <sbrk>
     f20:	e50b0008 	str	r0, [fp, #-8]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e3730001 	cmn	r3, #1
     f2c:	1a000001 	bne	f38 <morecore+0x4c>
     f30:	e3a03000 	mov	r3, #0
     f34:	ea00000a 	b	f64 <morecore+0x78>
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e50b300c 	str	r3, [fp, #-12]
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e51b2010 	ldr	r2, [fp, #-16]
     f48:	e5832004 	str	r2, [r3, #4]
     f4c:	e51b300c 	ldr	r3, [fp, #-12]
     f50:	e2833008 	add	r3, r3, #8
     f54:	e1a00003 	mov	r0, r3
     f58:	ebffff84 	bl	d70 <free>
     f5c:	e59f300c 	ldr	r3, [pc, #12]	@ f70 <morecore+0x84>
     f60:	e5933000 	ldr	r3, [r3]
     f64:	e1a00003 	mov	r0, r3
     f68:	e24bd004 	sub	sp, fp, #4
     f6c:	e8bd8800 	pop	{fp, pc}
     f70:	00001218 	.word	0x00001218

00000f74 <malloc>:
     f74:	e92d4800 	push	{fp, lr}
     f78:	e28db004 	add	fp, sp, #4
     f7c:	e24dd018 	sub	sp, sp, #24
     f80:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f88:	e2833007 	add	r3, r3, #7
     f8c:	e1a031a3 	lsr	r3, r3, #3
     f90:	e2833001 	add	r3, r3, #1
     f94:	e50b3010 	str	r3, [fp, #-16]
     f98:	e59f3134 	ldr	r3, [pc, #308]	@ 10d4 <malloc+0x160>
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e50b300c 	str	r3, [fp, #-12]
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e3530000 	cmp	r3, #0
     fac:	1a00000b 	bne	fe0 <malloc+0x6c>
     fb0:	e59f3120 	ldr	r3, [pc, #288]	@ 10d8 <malloc+0x164>
     fb4:	e50b300c 	str	r3, [fp, #-12]
     fb8:	e59f2114 	ldr	r2, [pc, #276]	@ 10d4 <malloc+0x160>
     fbc:	e51b300c 	ldr	r3, [fp, #-12]
     fc0:	e5823000 	str	r3, [r2]
     fc4:	e59f3108 	ldr	r3, [pc, #264]	@ 10d4 <malloc+0x160>
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e59f2104 	ldr	r2, [pc, #260]	@ 10d8 <malloc+0x164>
     fd0:	e5823000 	str	r3, [r2]
     fd4:	e59f30fc 	ldr	r3, [pc, #252]	@ 10d8 <malloc+0x164>
     fd8:	e3a02000 	mov	r2, #0
     fdc:	e5832004 	str	r2, [r3, #4]
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e50b3008 	str	r3, [fp, #-8]
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5933004 	ldr	r3, [r3, #4]
     ff4:	e51b2010 	ldr	r2, [fp, #-16]
     ff8:	e1520003 	cmp	r2, r3
     ffc:	8a00001e 	bhi	107c <malloc+0x108>
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e5933004 	ldr	r3, [r3, #4]
    1008:	e51b2010 	ldr	r2, [fp, #-16]
    100c:	e1520003 	cmp	r2, r3
    1010:	1a000004 	bne	1028 <malloc+0xb4>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5932000 	ldr	r2, [r3]
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5832000 	str	r2, [r3]
    1024:	ea00000e 	b	1064 <malloc+0xf0>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5932004 	ldr	r2, [r3, #4]
    1030:	e51b3010 	ldr	r3, [fp, #-16]
    1034:	e0422003 	sub	r2, r2, r3
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5832004 	str	r2, [r3, #4]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5933004 	ldr	r3, [r3, #4]
    1048:	e1a03183 	lsl	r3, r3, #3
    104c:	e51b2008 	ldr	r2, [fp, #-8]
    1050:	e0823003 	add	r3, r2, r3
    1054:	e50b3008 	str	r3, [fp, #-8]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e51b2010 	ldr	r2, [fp, #-16]
    1060:	e5832004 	str	r2, [r3, #4]
    1064:	e59f2068 	ldr	r2, [pc, #104]	@ 10d4 <malloc+0x160>
    1068:	e51b300c 	ldr	r3, [fp, #-12]
    106c:	e5823000 	str	r3, [r2]
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e2833008 	add	r3, r3, #8
    1078:	ea000012 	b	10c8 <malloc+0x154>
    107c:	e59f3050 	ldr	r3, [pc, #80]	@ 10d4 <malloc+0x160>
    1080:	e5933000 	ldr	r3, [r3]
    1084:	e51b2008 	ldr	r2, [fp, #-8]
    1088:	e1520003 	cmp	r2, r3
    108c:	1a000007 	bne	10b0 <malloc+0x13c>
    1090:	e51b0010 	ldr	r0, [fp, #-16]
    1094:	ebffff94 	bl	eec <morecore>
    1098:	e50b0008 	str	r0, [fp, #-8]
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e3530000 	cmp	r3, #0
    10a4:	1a000001 	bne	10b0 <malloc+0x13c>
    10a8:	e3a03000 	mov	r3, #0
    10ac:	ea000005 	b	10c8 <malloc+0x154>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e50b300c 	str	r3, [fp, #-12]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e50b3008 	str	r3, [fp, #-8]
    10c4:	eaffffc8 	b	fec <malloc+0x78>
    10c8:	e1a00003 	mov	r0, r3
    10cc:	e24bd004 	sub	sp, fp, #4
    10d0:	e8bd8800 	pop	{fp, pc}
    10d4:	00001218 	.word	0x00001218
    10d8:	00001210 	.word	0x00001210

000010dc <__udivsi3>:
    10dc:	e2512001 	subs	r2, r1, #1
    10e0:	012fff1e 	bxeq	lr
    10e4:	3a000036 	bcc	11c4 <__udivsi3+0xe8>
    10e8:	e1500001 	cmp	r0, r1
    10ec:	9a000022 	bls	117c <__udivsi3+0xa0>
    10f0:	e1110002 	tst	r1, r2
    10f4:	0a000023 	beq	1188 <__udivsi3+0xac>
    10f8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10fc:	01a01181 	lsleq	r1, r1, #3
    1100:	03a03008 	moveq	r3, #8
    1104:	13a03001 	movne	r3, #1
    1108:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    110c:	31510000 	cmpcc	r1, r0
    1110:	31a01201 	lslcc	r1, r1, #4
    1114:	31a03203 	lslcc	r3, r3, #4
    1118:	3afffffa 	bcc	1108 <__udivsi3+0x2c>
    111c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1120:	31510000 	cmpcc	r1, r0
    1124:	31a01081 	lslcc	r1, r1, #1
    1128:	31a03083 	lslcc	r3, r3, #1
    112c:	3afffffa 	bcc	111c <__udivsi3+0x40>
    1130:	e3a02000 	mov	r2, #0
    1134:	e1500001 	cmp	r0, r1
    1138:	20400001 	subcs	r0, r0, r1
    113c:	21822003 	orrcs	r2, r2, r3
    1140:	e15000a1 	cmp	r0, r1, lsr #1
    1144:	204000a1 	subcs	r0, r0, r1, lsr #1
    1148:	218220a3 	orrcs	r2, r2, r3, lsr #1
    114c:	e1500121 	cmp	r0, r1, lsr #2
    1150:	20400121 	subcs	r0, r0, r1, lsr #2
    1154:	21822123 	orrcs	r2, r2, r3, lsr #2
    1158:	e15001a1 	cmp	r0, r1, lsr #3
    115c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1160:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1164:	e3500000 	cmp	r0, #0
    1168:	11b03223 	lsrsne	r3, r3, #4
    116c:	11a01221 	lsrne	r1, r1, #4
    1170:	1affffef 	bne	1134 <__udivsi3+0x58>
    1174:	e1a00002 	mov	r0, r2
    1178:	e12fff1e 	bx	lr
    117c:	03a00001 	moveq	r0, #1
    1180:	13a00000 	movne	r0, #0
    1184:	e12fff1e 	bx	lr
    1188:	e3510801 	cmp	r1, #65536	@ 0x10000
    118c:	21a01821 	lsrcs	r1, r1, #16
    1190:	23a02010 	movcs	r2, #16
    1194:	33a02000 	movcc	r2, #0
    1198:	e3510c01 	cmp	r1, #256	@ 0x100
    119c:	21a01421 	lsrcs	r1, r1, #8
    11a0:	22822008 	addcs	r2, r2, #8
    11a4:	e3510010 	cmp	r1, #16
    11a8:	21a01221 	lsrcs	r1, r1, #4
    11ac:	22822004 	addcs	r2, r2, #4
    11b0:	e3510004 	cmp	r1, #4
    11b4:	82822003 	addhi	r2, r2, #3
    11b8:	908220a1 	addls	r2, r2, r1, lsr #1
    11bc:	e1a00230 	lsr	r0, r0, r2
    11c0:	e12fff1e 	bx	lr
    11c4:	e3500000 	cmp	r0, #0
    11c8:	13e00000 	mvnne	r0, #0
    11cc:	ea000007 	b	11f0 <__aeabi_idiv0>

000011d0 <__aeabi_uidivmod>:
    11d0:	e3510000 	cmp	r1, #0
    11d4:	0afffffa 	beq	11c4 <__udivsi3+0xe8>
    11d8:	e92d4003 	push	{r0, r1, lr}
    11dc:	ebffffbe 	bl	10dc <__udivsi3>
    11e0:	e8bd4006 	pop	{r1, r2, lr}
    11e4:	e0030092 	mul	r3, r2, r0
    11e8:	e0411003 	sub	r1, r1, r3
    11ec:	e12fff1e 	bx	lr

000011f0 <__aeabi_idiv0>:
    11f0:	e12fff1e 	bx	lr
