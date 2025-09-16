
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb00016b 	bl	5bc <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb000211 	bl	868 <sleep>
      20:	eb00016e 	bl	5e0 <exit>

00000024 <strcpy>:
      24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      38:	e51b3010 	ldr	r3, [fp, #-16]
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	e1a00000 	nop			@ (mov r0, r0)
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e2823001 	add	r3, r2, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e51b3010 	ldr	r3, [fp, #-16]
      54:	e2831001 	add	r1, r3, #1
      58:	e50b1010 	str	r1, [fp, #-16]
      5c:	e5d22000 	ldrb	r2, [r2]
      60:	e5c32000 	strb	r2, [r3]
      64:	e5d33000 	ldrb	r3, [r3]
      68:	e3530000 	cmp	r3, #0
      6c:	1afffff4 	bne	44 <strcpy+0x20>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e1a00003 	mov	r0, r3
      78:	e28bd000 	add	sp, fp, #0
      7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      80:	e12fff1e 	bx	lr

00000084 <strncmp>:
      84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      88:	e28db000 	add	fp, sp, #0
      8c:	e24dd014 	sub	sp, sp, #20
      90:	e50b0008 	str	r0, [fp, #-8]
      94:	e50b100c 	str	r1, [fp, #-12]
      98:	e50b2010 	str	r2, [fp, #-16]
      9c:	ea000008 	b	c4 <strncmp+0x40>
      a0:	e51b3008 	ldr	r3, [fp, #-8]
      a4:	e2833001 	add	r3, r3, #1
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e51b300c 	ldr	r3, [fp, #-12]
      b0:	e2833001 	add	r3, r3, #1
      b4:	e50b300c 	str	r3, [fp, #-12]
      b8:	e51b3010 	ldr	r3, [fp, #-16]
      bc:	e2433001 	sub	r3, r3, #1
      c0:	e50b3010 	str	r3, [fp, #-16]
      c4:	e51b3010 	ldr	r3, [fp, #-16]
      c8:	e3530000 	cmp	r3, #0
      cc:	da00000d 	ble	108 <strncmp+0x84>
      d0:	e51b3008 	ldr	r3, [fp, #-8]
      d4:	e5d33000 	ldrb	r3, [r3]
      d8:	e3530000 	cmp	r3, #0
      dc:	0a000009 	beq	108 <strncmp+0x84>
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e5d33000 	ldrb	r3, [r3]
      e8:	e3530000 	cmp	r3, #0
      ec:	0a000005 	beq	108 <strncmp+0x84>
      f0:	e51b3008 	ldr	r3, [fp, #-8]
      f4:	e5d32000 	ldrb	r2, [r3]
      f8:	e51b300c 	ldr	r3, [fp, #-12]
      fc:	e5d33000 	ldrb	r3, [r3]
     100:	e1520003 	cmp	r2, r3
     104:	0affffe5 	beq	a0 <strncmp+0x1c>
     108:	e51b3010 	ldr	r3, [fp, #-16]
     10c:	e3530000 	cmp	r3, #0
     110:	1a000001 	bne	11c <strncmp+0x98>
     114:	e3a03000 	mov	r3, #0
     118:	ea000005 	b	134 <strncmp+0xb0>
     11c:	e51b3008 	ldr	r3, [fp, #-8]
     120:	e5d33000 	ldrb	r3, [r3]
     124:	e1a02003 	mov	r2, r3
     128:	e51b300c 	ldr	r3, [fp, #-12]
     12c:	e5d33000 	ldrb	r3, [r3]
     130:	e0423003 	sub	r3, r2, r3
     134:	e1a00003 	mov	r0, r3
     138:	e28bd000 	add	sp, fp, #0
     13c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     140:	e12fff1e 	bx	lr

00000144 <strcmp>:
     144:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     148:	e28db000 	add	fp, sp, #0
     14c:	e24dd00c 	sub	sp, sp, #12
     150:	e50b0008 	str	r0, [fp, #-8]
     154:	e50b100c 	str	r1, [fp, #-12]
     158:	ea000005 	b	174 <strcmp+0x30>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e2833001 	add	r3, r3, #1
     164:	e50b3008 	str	r3, [fp, #-8]
     168:	e51b300c 	ldr	r3, [fp, #-12]
     16c:	e2833001 	add	r3, r3, #1
     170:	e50b300c 	str	r3, [fp, #-12]
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	0a000005 	beq	19c <strcmp+0x58>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e5d32000 	ldrb	r2, [r3]
     18c:	e51b300c 	ldr	r3, [fp, #-12]
     190:	e5d33000 	ldrb	r3, [r3]
     194:	e1520003 	cmp	r2, r3
     198:	0affffef 	beq	15c <strcmp+0x18>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e5d33000 	ldrb	r3, [r3]
     1a4:	e1a02003 	mov	r2, r3
     1a8:	e51b300c 	ldr	r3, [fp, #-12]
     1ac:	e5d33000 	ldrb	r3, [r3]
     1b0:	e0423003 	sub	r3, r2, r3
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e28bd000 	add	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <strlen>:
     1c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd014 	sub	sp, sp, #20
     1d0:	e50b0010 	str	r0, [fp, #-16]
     1d4:	e3a03000 	mov	r3, #0
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	ea000002 	b	1ec <strlen+0x28>
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e2833001 	add	r3, r3, #1
     1e8:	e50b3008 	str	r3, [fp, #-8]
     1ec:	e51b3008 	ldr	r3, [fp, #-8]
     1f0:	e51b2010 	ldr	r2, [fp, #-16]
     1f4:	e0823003 	add	r3, r2, r3
     1f8:	e5d33000 	ldrb	r3, [r3]
     1fc:	e3530000 	cmp	r3, #0
     200:	1afffff6 	bne	1e0 <strlen+0x1c>
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <memset>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd024 	sub	sp, sp, #36	@ 0x24
     224:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     228:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     22c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     230:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     23c:	e54b300d 	strb	r3, [fp, #-13]
     240:	e55b200d 	ldrb	r2, [fp, #-13]
     244:	e1a03002 	mov	r3, r2
     248:	e1a03403 	lsl	r3, r3, #8
     24c:	e0833002 	add	r3, r3, r2
     250:	e1a03803 	lsl	r3, r3, #16
     254:	e1a02003 	mov	r2, r3
     258:	e55b300d 	ldrb	r3, [fp, #-13]
     25c:	e1a03403 	lsl	r3, r3, #8
     260:	e1822003 	orr	r2, r2, r3
     264:	e55b300d 	ldrb	r3, [fp, #-13]
     268:	e1823003 	orr	r3, r2, r3
     26c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     270:	ea000008 	b	298 <memset+0x80>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e55b200d 	ldrb	r2, [fp, #-13]
     27c:	e5c32000 	strb	r2, [r3]
     280:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     284:	e2433001 	sub	r3, r3, #1
     288:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e2833001 	add	r3, r3, #1
     294:	e50b3008 	str	r3, [fp, #-8]
     298:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     29c:	e3530000 	cmp	r3, #0
     2a0:	0a000003 	beq	2b4 <memset+0x9c>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e2033003 	and	r3, r3, #3
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1affffef 	bne	274 <memset+0x5c>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e50b300c 	str	r3, [fp, #-12]
     2bc:	ea000008 	b	2e4 <memset+0xcc>
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2c8:	e5832000 	str	r2, [r3]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e2433004 	sub	r3, r3, #4
     2d4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d8:	e51b300c 	ldr	r3, [fp, #-12]
     2dc:	e2833004 	add	r3, r3, #4
     2e0:	e50b300c 	str	r3, [fp, #-12]
     2e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e8:	e3530003 	cmp	r3, #3
     2ec:	8afffff3 	bhi	2c0 <memset+0xa8>
     2f0:	e51b300c 	ldr	r3, [fp, #-12]
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	ea000008 	b	320 <memset+0x108>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e55b200d 	ldrb	r2, [fp, #-13]
     304:	e5c32000 	strb	r2, [r3]
     308:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     30c:	e2433001 	sub	r3, r3, #1
     310:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e2833001 	add	r3, r3, #1
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     324:	e3530000 	cmp	r3, #0
     328:	1afffff3 	bne	2fc <memset+0xe4>
     32c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     330:	e1a00003 	mov	r0, r3
     334:	e28bd000 	add	sp, fp, #0
     338:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     33c:	e12fff1e 	bx	lr

00000340 <strchr>:
     340:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     344:	e28db000 	add	fp, sp, #0
     348:	e24dd00c 	sub	sp, sp, #12
     34c:	e50b0008 	str	r0, [fp, #-8]
     350:	e1a03001 	mov	r3, r1
     354:	e54b3009 	strb	r3, [fp, #-9]
     358:	ea000009 	b	384 <strchr+0x44>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e5d33000 	ldrb	r3, [r3]
     364:	e55b2009 	ldrb	r2, [fp, #-9]
     368:	e1520003 	cmp	r2, r3
     36c:	1a000001 	bne	378 <strchr+0x38>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	ea000007 	b	398 <strchr+0x58>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2833001 	add	r3, r3, #1
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e5d33000 	ldrb	r3, [r3]
     38c:	e3530000 	cmp	r3, #0
     390:	1afffff1 	bne	35c <strchr+0x1c>
     394:	e3a03000 	mov	r3, #0
     398:	e1a00003 	mov	r0, r3
     39c:	e28bd000 	add	sp, fp, #0
     3a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3a4:	e12fff1e 	bx	lr

000003a8 <gets>:
     3a8:	e92d4800 	push	{fp, lr}
     3ac:	e28db004 	add	fp, sp, #4
     3b0:	e24dd018 	sub	sp, sp, #24
     3b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3b8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3bc:	e3a03000 	mov	r3, #0
     3c0:	e50b3008 	str	r3, [fp, #-8]
     3c4:	ea000016 	b	424 <gets+0x7c>
     3c8:	e24b300d 	sub	r3, fp, #13
     3cc:	e3a02001 	mov	r2, #1
     3d0:	e1a01003 	mov	r1, r3
     3d4:	e3a00000 	mov	r0, #0
     3d8:	eb00009b 	bl	64c <read>
     3dc:	e50b000c 	str	r0, [fp, #-12]
     3e0:	e51b300c 	ldr	r3, [fp, #-12]
     3e4:	e3530000 	cmp	r3, #0
     3e8:	da000013 	ble	43c <gets+0x94>
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2832001 	add	r2, r3, #1
     3f4:	e50b2008 	str	r2, [fp, #-8]
     3f8:	e1a02003 	mov	r2, r3
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     400:	e0833002 	add	r3, r3, r2
     404:	e55b200d 	ldrb	r2, [fp, #-13]
     408:	e5c32000 	strb	r2, [r3]
     40c:	e55b300d 	ldrb	r3, [fp, #-13]
     410:	e353000a 	cmp	r3, #10
     414:	0a000009 	beq	440 <gets+0x98>
     418:	e55b300d 	ldrb	r3, [fp, #-13]
     41c:	e353000d 	cmp	r3, #13
     420:	0a000006 	beq	440 <gets+0x98>
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e2833001 	add	r3, r3, #1
     42c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     430:	e1520003 	cmp	r2, r3
     434:	caffffe3 	bgt	3c8 <gets+0x20>
     438:	ea000000 	b	440 <gets+0x98>
     43c:	e1a00000 	nop			@ (mov r0, r0)
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     448:	e0823003 	add	r3, r2, r3
     44c:	e3a02000 	mov	r2, #0
     450:	e5c32000 	strb	r2, [r3]
     454:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     458:	e1a00003 	mov	r0, r3
     45c:	e24bd004 	sub	sp, fp, #4
     460:	e8bd8800 	pop	{fp, pc}

00000464 <stat>:
     464:	e92d4800 	push	{fp, lr}
     468:	e28db004 	add	fp, sp, #4
     46c:	e24dd010 	sub	sp, sp, #16
     470:	e50b0010 	str	r0, [fp, #-16]
     474:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     478:	e3a01000 	mov	r1, #0
     47c:	e51b0010 	ldr	r0, [fp, #-16]
     480:	eb00009e 	bl	700 <open>
     484:	e50b0008 	str	r0, [fp, #-8]
     488:	e51b3008 	ldr	r3, [fp, #-8]
     48c:	e3530000 	cmp	r3, #0
     490:	aa000001 	bge	49c <stat+0x38>
     494:	e3e03000 	mvn	r3, #0
     498:	ea000006 	b	4b8 <stat+0x54>
     49c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4a0:	e51b0008 	ldr	r0, [fp, #-8]
     4a4:	eb0000b0 	bl	76c <fstat>
     4a8:	e50b000c 	str	r0, [fp, #-12]
     4ac:	e51b0008 	ldr	r0, [fp, #-8]
     4b0:	eb000077 	bl	694 <close>
     4b4:	e51b300c 	ldr	r3, [fp, #-12]
     4b8:	e1a00003 	mov	r0, r3
     4bc:	e24bd004 	sub	sp, fp, #4
     4c0:	e8bd8800 	pop	{fp, pc}

000004c4 <atoi>:
     4c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c8:	e28db000 	add	fp, sp, #0
     4cc:	e24dd014 	sub	sp, sp, #20
     4d0:	e50b0010 	str	r0, [fp, #-16]
     4d4:	e3a03000 	mov	r3, #0
     4d8:	e50b3008 	str	r3, [fp, #-8]
     4dc:	ea00000c 	b	514 <atoi+0x50>
     4e0:	e51b2008 	ldr	r2, [fp, #-8]
     4e4:	e1a03002 	mov	r3, r2
     4e8:	e1a03103 	lsl	r3, r3, #2
     4ec:	e0833002 	add	r3, r3, r2
     4f0:	e1a03083 	lsl	r3, r3, #1
     4f4:	e1a01003 	mov	r1, r3
     4f8:	e51b3010 	ldr	r3, [fp, #-16]
     4fc:	e2832001 	add	r2, r3, #1
     500:	e50b2010 	str	r2, [fp, #-16]
     504:	e5d33000 	ldrb	r3, [r3]
     508:	e0813003 	add	r3, r1, r3
     50c:	e2433030 	sub	r3, r3, #48	@ 0x30
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e353002f 	cmp	r3, #47	@ 0x2f
     520:	9a000003 	bls	534 <atoi+0x70>
     524:	e51b3010 	ldr	r3, [fp, #-16]
     528:	e5d33000 	ldrb	r3, [r3]
     52c:	e3530039 	cmp	r3, #57	@ 0x39
     530:	9affffea 	bls	4e0 <atoi+0x1c>
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e1a00003 	mov	r0, r3
     53c:	e28bd000 	add	sp, fp, #0
     540:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     544:	e12fff1e 	bx	lr

00000548 <memmove>:
     548:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     54c:	e28db000 	add	fp, sp, #0
     550:	e24dd01c 	sub	sp, sp, #28
     554:	e50b0010 	str	r0, [fp, #-16]
     558:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     55c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     560:	e51b3010 	ldr	r3, [fp, #-16]
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     56c:	e50b300c 	str	r3, [fp, #-12]
     570:	ea000007 	b	594 <memmove+0x4c>
     574:	e51b200c 	ldr	r2, [fp, #-12]
     578:	e2823001 	add	r3, r2, #1
     57c:	e50b300c 	str	r3, [fp, #-12]
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e2831001 	add	r1, r3, #1
     588:	e50b1008 	str	r1, [fp, #-8]
     58c:	e5d22000 	ldrb	r2, [r2]
     590:	e5c32000 	strb	r2, [r3]
     594:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     598:	e2432001 	sub	r2, r3, #1
     59c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5a0:	e3530000 	cmp	r3, #0
     5a4:	cafffff2 	bgt	574 <memmove+0x2c>
     5a8:	e51b3010 	ldr	r3, [fp, #-16]
     5ac:	e1a00003 	mov	r0, r3
     5b0:	e28bd000 	add	sp, fp, #0
     5b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b8:	e12fff1e 	bx	lr

000005bc <fork>:
     5bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5c0:	e1a04003 	mov	r4, r3
     5c4:	e1a03002 	mov	r3, r2
     5c8:	e1a02001 	mov	r2, r1
     5cc:	e1a01000 	mov	r1, r0
     5d0:	e3a00001 	mov	r0, #1
     5d4:	ef000000 	svc	0x00000000
     5d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5dc:	e12fff1e 	bx	lr

000005e0 <exit>:
     5e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e4:	e1a04003 	mov	r4, r3
     5e8:	e1a03002 	mov	r3, r2
     5ec:	e1a02001 	mov	r2, r1
     5f0:	e1a01000 	mov	r1, r0
     5f4:	e3a00002 	mov	r0, #2
     5f8:	ef000000 	svc	0x00000000
     5fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     600:	e12fff1e 	bx	lr

00000604 <wait>:
     604:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     608:	e1a04003 	mov	r4, r3
     60c:	e1a03002 	mov	r3, r2
     610:	e1a02001 	mov	r2, r1
     614:	e1a01000 	mov	r1, r0
     618:	e3a00003 	mov	r0, #3
     61c:	ef000000 	svc	0x00000000
     620:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <pipe>:
     628:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     62c:	e1a04003 	mov	r4, r3
     630:	e1a03002 	mov	r3, r2
     634:	e1a02001 	mov	r2, r1
     638:	e1a01000 	mov	r1, r0
     63c:	e3a00004 	mov	r0, #4
     640:	ef000000 	svc	0x00000000
     644:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <read>:
     64c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     650:	e1a04003 	mov	r4, r3
     654:	e1a03002 	mov	r3, r2
     658:	e1a02001 	mov	r2, r1
     65c:	e1a01000 	mov	r1, r0
     660:	e3a00005 	mov	r0, #5
     664:	ef000000 	svc	0x00000000
     668:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     66c:	e12fff1e 	bx	lr

00000670 <write>:
     670:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     674:	e1a04003 	mov	r4, r3
     678:	e1a03002 	mov	r3, r2
     67c:	e1a02001 	mov	r2, r1
     680:	e1a01000 	mov	r1, r0
     684:	e3a00010 	mov	r0, #16
     688:	ef000000 	svc	0x00000000
     68c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <close>:
     694:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     698:	e1a04003 	mov	r4, r3
     69c:	e1a03002 	mov	r3, r2
     6a0:	e1a02001 	mov	r2, r1
     6a4:	e1a01000 	mov	r1, r0
     6a8:	e3a00015 	mov	r0, #21
     6ac:	ef000000 	svc	0x00000000
     6b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <kill>:
     6b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6bc:	e1a04003 	mov	r4, r3
     6c0:	e1a03002 	mov	r3, r2
     6c4:	e1a02001 	mov	r2, r1
     6c8:	e1a01000 	mov	r1, r0
     6cc:	e3a00006 	mov	r0, #6
     6d0:	ef000000 	svc	0x00000000
     6d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <exec>:
     6dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e0:	e1a04003 	mov	r4, r3
     6e4:	e1a03002 	mov	r3, r2
     6e8:	e1a02001 	mov	r2, r1
     6ec:	e1a01000 	mov	r1, r0
     6f0:	e3a00007 	mov	r0, #7
     6f4:	ef000000 	svc	0x00000000
     6f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6fc:	e12fff1e 	bx	lr

00000700 <open>:
     700:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     704:	e1a04003 	mov	r4, r3
     708:	e1a03002 	mov	r3, r2
     70c:	e1a02001 	mov	r2, r1
     710:	e1a01000 	mov	r1, r0
     714:	e3a0000f 	mov	r0, #15
     718:	ef000000 	svc	0x00000000
     71c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     720:	e12fff1e 	bx	lr

00000724 <mknod>:
     724:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     728:	e1a04003 	mov	r4, r3
     72c:	e1a03002 	mov	r3, r2
     730:	e1a02001 	mov	r2, r1
     734:	e1a01000 	mov	r1, r0
     738:	e3a00011 	mov	r0, #17
     73c:	ef000000 	svc	0x00000000
     740:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     744:	e12fff1e 	bx	lr

00000748 <unlink>:
     748:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     74c:	e1a04003 	mov	r4, r3
     750:	e1a03002 	mov	r3, r2
     754:	e1a02001 	mov	r2, r1
     758:	e1a01000 	mov	r1, r0
     75c:	e3a00012 	mov	r0, #18
     760:	ef000000 	svc	0x00000000
     764:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <fstat>:
     76c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     770:	e1a04003 	mov	r4, r3
     774:	e1a03002 	mov	r3, r2
     778:	e1a02001 	mov	r2, r1
     77c:	e1a01000 	mov	r1, r0
     780:	e3a00008 	mov	r0, #8
     784:	ef000000 	svc	0x00000000
     788:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     78c:	e12fff1e 	bx	lr

00000790 <link>:
     790:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     794:	e1a04003 	mov	r4, r3
     798:	e1a03002 	mov	r3, r2
     79c:	e1a02001 	mov	r2, r1
     7a0:	e1a01000 	mov	r1, r0
     7a4:	e3a00013 	mov	r0, #19
     7a8:	ef000000 	svc	0x00000000
     7ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b0:	e12fff1e 	bx	lr

000007b4 <mkdir>:
     7b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b8:	e1a04003 	mov	r4, r3
     7bc:	e1a03002 	mov	r3, r2
     7c0:	e1a02001 	mov	r2, r1
     7c4:	e1a01000 	mov	r1, r0
     7c8:	e3a00014 	mov	r0, #20
     7cc:	ef000000 	svc	0x00000000
     7d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d4:	e12fff1e 	bx	lr

000007d8 <chdir>:
     7d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7dc:	e1a04003 	mov	r4, r3
     7e0:	e1a03002 	mov	r3, r2
     7e4:	e1a02001 	mov	r2, r1
     7e8:	e1a01000 	mov	r1, r0
     7ec:	e3a00009 	mov	r0, #9
     7f0:	ef000000 	svc	0x00000000
     7f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f8:	e12fff1e 	bx	lr

000007fc <dup>:
     7fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     800:	e1a04003 	mov	r4, r3
     804:	e1a03002 	mov	r3, r2
     808:	e1a02001 	mov	r2, r1
     80c:	e1a01000 	mov	r1, r0
     810:	e3a0000a 	mov	r0, #10
     814:	ef000000 	svc	0x00000000
     818:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     81c:	e12fff1e 	bx	lr

00000820 <getpid>:
     820:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     824:	e1a04003 	mov	r4, r3
     828:	e1a03002 	mov	r3, r2
     82c:	e1a02001 	mov	r2, r1
     830:	e1a01000 	mov	r1, r0
     834:	e3a0000b 	mov	r0, #11
     838:	ef000000 	svc	0x00000000
     83c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     840:	e12fff1e 	bx	lr

00000844 <sbrk>:
     844:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     848:	e1a04003 	mov	r4, r3
     84c:	e1a03002 	mov	r3, r2
     850:	e1a02001 	mov	r2, r1
     854:	e1a01000 	mov	r1, r0
     858:	e3a0000c 	mov	r0, #12
     85c:	ef000000 	svc	0x00000000
     860:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     864:	e12fff1e 	bx	lr

00000868 <sleep>:
     868:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     86c:	e1a04003 	mov	r4, r3
     870:	e1a03002 	mov	r3, r2
     874:	e1a02001 	mov	r2, r1
     878:	e1a01000 	mov	r1, r0
     87c:	e3a0000d 	mov	r0, #13
     880:	ef000000 	svc	0x00000000
     884:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     888:	e12fff1e 	bx	lr

0000088c <uptime>:
     88c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     890:	e1a04003 	mov	r4, r3
     894:	e1a03002 	mov	r3, r2
     898:	e1a02001 	mov	r2, r1
     89c:	e1a01000 	mov	r1, r0
     8a0:	e3a0000e 	mov	r0, #14
     8a4:	ef000000 	svc	0x00000000
     8a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ac:	e12fff1e 	bx	lr

000008b0 <ps>:
     8b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b4:	e1a04003 	mov	r4, r3
     8b8:	e1a03002 	mov	r3, r2
     8bc:	e1a02001 	mov	r2, r1
     8c0:	e1a01000 	mov	r1, r0
     8c4:	e3a00016 	mov	r0, #22
     8c8:	ef000000 	svc	0x00000000
     8cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d0:	e12fff1e 	bx	lr

000008d4 <settickets>:
     8d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d8:	e1a04003 	mov	r4, r3
     8dc:	e1a03002 	mov	r3, r2
     8e0:	e1a02001 	mov	r2, r1
     8e4:	e1a01000 	mov	r1, r0
     8e8:	e3a00017 	mov	r0, #23
     8ec:	ef000000 	svc	0x00000000
     8f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f4:	e12fff1e 	bx	lr

000008f8 <srand>:
     8f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8fc:	e1a04003 	mov	r4, r3
     900:	e1a03002 	mov	r3, r2
     904:	e1a02001 	mov	r2, r1
     908:	e1a01000 	mov	r1, r0
     90c:	e3a00018 	mov	r0, #24
     910:	ef000000 	svc	0x00000000
     914:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     918:	e12fff1e 	bx	lr

0000091c <getpinfo>:
     91c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     920:	e1a04003 	mov	r4, r3
     924:	e1a03002 	mov	r3, r2
     928:	e1a02001 	mov	r2, r1
     92c:	e1a01000 	mov	r1, r0
     930:	e3a00019 	mov	r0, #25
     934:	ef000000 	svc	0x00000000
     938:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     93c:	e12fff1e 	bx	lr

00000940 <printpt>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a0001a 	mov	r0, #26
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <pgpte>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a0001b 	mov	r0, #27
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <ugetpid>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a0001c 	mov	r0, #28
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <kpt>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a0001d 	mov	r0, #29
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <putc>:
     9d0:	e92d4800 	push	{fp, lr}
     9d4:	e28db004 	add	fp, sp, #4
     9d8:	e24dd008 	sub	sp, sp, #8
     9dc:	e50b0008 	str	r0, [fp, #-8]
     9e0:	e1a03001 	mov	r3, r1
     9e4:	e54b3009 	strb	r3, [fp, #-9]
     9e8:	e24b3009 	sub	r3, fp, #9
     9ec:	e3a02001 	mov	r2, #1
     9f0:	e1a01003 	mov	r1, r3
     9f4:	e51b0008 	ldr	r0, [fp, #-8]
     9f8:	ebffff1c 	bl	670 <write>
     9fc:	e1a00000 	nop			@ (mov r0, r0)
     a00:	e24bd004 	sub	sp, fp, #4
     a04:	e8bd8800 	pop	{fp, pc}

00000a08 <printint>:
     a08:	e92d4800 	push	{fp, lr}
     a0c:	e28db004 	add	fp, sp, #4
     a10:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a14:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a18:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a1c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a20:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a24:	e3a03000 	mov	r3, #0
     a28:	e50b300c 	str	r3, [fp, #-12]
     a2c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a30:	e3530000 	cmp	r3, #0
     a34:	0a000008 	beq	a5c <printint+0x54>
     a38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a3c:	e3530000 	cmp	r3, #0
     a40:	aa000005 	bge	a5c <printint+0x54>
     a44:	e3a03001 	mov	r3, #1
     a48:	e50b300c 	str	r3, [fp, #-12]
     a4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a50:	e2633000 	rsb	r3, r3, #0
     a54:	e50b3010 	str	r3, [fp, #-16]
     a58:	ea000001 	b	a64 <printint+0x5c>
     a5c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a60:	e50b3010 	str	r3, [fp, #-16]
     a64:	e3a03000 	mov	r3, #0
     a68:	e50b3008 	str	r3, [fp, #-8]
     a6c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a70:	e51b3010 	ldr	r3, [fp, #-16]
     a74:	e1a01002 	mov	r1, r2
     a78:	e1a00003 	mov	r0, r3
     a7c:	eb0001d5 	bl	11d8 <__aeabi_uidivmod>
     a80:	e1a03001 	mov	r3, r1
     a84:	e1a01003 	mov	r1, r3
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e2832001 	add	r2, r3, #1
     a90:	e50b2008 	str	r2, [fp, #-8]
     a94:	e59f20a0 	ldr	r2, [pc, #160]	@ b3c <printint+0x134>
     a98:	e7d22001 	ldrb	r2, [r2, r1]
     a9c:	e2433004 	sub	r3, r3, #4
     aa0:	e083300b 	add	r3, r3, fp
     aa4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aa8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     aac:	e1a01003 	mov	r1, r3
     ab0:	e51b0010 	ldr	r0, [fp, #-16]
     ab4:	eb00018a 	bl	10e4 <__udivsi3>
     ab8:	e1a03000 	mov	r3, r0
     abc:	e50b3010 	str	r3, [fp, #-16]
     ac0:	e51b3010 	ldr	r3, [fp, #-16]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	1affffe7 	bne	a6c <printint+0x64>
     acc:	e51b300c 	ldr	r3, [fp, #-12]
     ad0:	e3530000 	cmp	r3, #0
     ad4:	0a00000e 	beq	b14 <printint+0x10c>
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e2832001 	add	r2, r3, #1
     ae0:	e50b2008 	str	r2, [fp, #-8]
     ae4:	e2433004 	sub	r3, r3, #4
     ae8:	e083300b 	add	r3, r3, fp
     aec:	e3a0202d 	mov	r2, #45	@ 0x2d
     af0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     af4:	ea000006 	b	b14 <printint+0x10c>
     af8:	e24b2020 	sub	r2, fp, #32
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e0823003 	add	r3, r2, r3
     b04:	e5d33000 	ldrb	r3, [r3]
     b08:	e1a01003 	mov	r1, r3
     b0c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b10:	ebffffae 	bl	9d0 <putc>
     b14:	e51b3008 	ldr	r3, [fp, #-8]
     b18:	e2433001 	sub	r3, r3, #1
     b1c:	e50b3008 	str	r3, [fp, #-8]
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e3530000 	cmp	r3, #0
     b28:	aafffff2 	bge	af8 <printint+0xf0>
     b2c:	e1a00000 	nop			@ (mov r0, r0)
     b30:	e1a00000 	nop			@ (mov r0, r0)
     b34:	e24bd004 	sub	sp, fp, #4
     b38:	e8bd8800 	pop	{fp, pc}
     b3c:	00001204 	.word	0x00001204

00000b40 <printf>:
     b40:	e92d000e 	push	{r1, r2, r3}
     b44:	e92d4800 	push	{fp, lr}
     b48:	e28db004 	add	fp, sp, #4
     b4c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b50:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b54:	e3a03000 	mov	r3, #0
     b58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b5c:	e28b3008 	add	r3, fp, #8
     b60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b64:	e3a03000 	mov	r3, #0
     b68:	e50b3010 	str	r3, [fp, #-16]
     b6c:	ea000074 	b	d44 <printf+0x204>
     b70:	e59b2004 	ldr	r2, [fp, #4]
     b74:	e51b3010 	ldr	r3, [fp, #-16]
     b78:	e0823003 	add	r3, r2, r3
     b7c:	e5d33000 	ldrb	r3, [r3]
     b80:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b88:	e3530000 	cmp	r3, #0
     b8c:	1a00000b 	bne	bc0 <printf+0x80>
     b90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b94:	e3530025 	cmp	r3, #37	@ 0x25
     b98:	1a000002 	bne	ba8 <printf+0x68>
     b9c:	e3a03025 	mov	r3, #37	@ 0x25
     ba0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ba4:	ea000063 	b	d38 <printf+0x1f8>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e6ef3073 	uxtb	r3, r3
     bb0:	e1a01003 	mov	r1, r3
     bb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb8:	ebffff84 	bl	9d0 <putc>
     bbc:	ea00005d 	b	d38 <printf+0x1f8>
     bc0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bc4:	e3530025 	cmp	r3, #37	@ 0x25
     bc8:	1a00005a 	bne	d38 <printf+0x1f8>
     bcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd0:	e3530064 	cmp	r3, #100	@ 0x64
     bd4:	1a00000a 	bne	c04 <printf+0xc4>
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e5933000 	ldr	r3, [r3]
     be0:	e1a01003 	mov	r1, r3
     be4:	e3a03001 	mov	r3, #1
     be8:	e3a0200a 	mov	r2, #10
     bec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf0:	ebffff84 	bl	a08 <printint>
     bf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf8:	e2833004 	add	r3, r3, #4
     bfc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c00:	ea00004a 	b	d30 <printf+0x1f0>
     c04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c08:	e3530078 	cmp	r3, #120	@ 0x78
     c0c:	0a000002 	beq	c1c <printf+0xdc>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e3530070 	cmp	r3, #112	@ 0x70
     c18:	1a00000a 	bne	c48 <printf+0x108>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e1a01003 	mov	r1, r3
     c28:	e3a03000 	mov	r3, #0
     c2c:	e3a02010 	mov	r2, #16
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff73 	bl	a08 <printint>
     c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c3c:	e2833004 	add	r3, r3, #4
     c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c44:	ea000039 	b	d30 <printf+0x1f0>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e3530073 	cmp	r3, #115	@ 0x73
     c50:	1a000018 	bne	cb8 <printf+0x178>
     c54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c58:	e5933000 	ldr	r3, [r3]
     c5c:	e50b300c 	str	r3, [fp, #-12]
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e2833004 	add	r3, r3, #4
     c68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c6c:	e51b300c 	ldr	r3, [fp, #-12]
     c70:	e3530000 	cmp	r3, #0
     c74:	1a00000a 	bne	ca4 <printf+0x164>
     c78:	e59f30f4 	ldr	r3, [pc, #244]	@ d74 <printf+0x234>
     c7c:	e50b300c 	str	r3, [fp, #-12]
     c80:	ea000007 	b	ca4 <printf+0x164>
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e5d33000 	ldrb	r3, [r3]
     c8c:	e1a01003 	mov	r1, r3
     c90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c94:	ebffff4d 	bl	9d0 <putc>
     c98:	e51b300c 	ldr	r3, [fp, #-12]
     c9c:	e2833001 	add	r3, r3, #1
     ca0:	e50b300c 	str	r3, [fp, #-12]
     ca4:	e51b300c 	ldr	r3, [fp, #-12]
     ca8:	e5d33000 	ldrb	r3, [r3]
     cac:	e3530000 	cmp	r3, #0
     cb0:	1afffff3 	bne	c84 <printf+0x144>
     cb4:	ea00001d 	b	d30 <printf+0x1f0>
     cb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cbc:	e3530063 	cmp	r3, #99	@ 0x63
     cc0:	1a000009 	bne	cec <printf+0x1ac>
     cc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc8:	e5933000 	ldr	r3, [r3]
     ccc:	e6ef3073 	uxtb	r3, r3
     cd0:	e1a01003 	mov	r1, r3
     cd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd8:	ebffff3c 	bl	9d0 <putc>
     cdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	e2833004 	add	r3, r3, #4
     ce4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	ea000010 	b	d30 <printf+0x1f0>
     cec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf0:	e3530025 	cmp	r3, #37	@ 0x25
     cf4:	1a000005 	bne	d10 <printf+0x1d0>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e6ef3073 	uxtb	r3, r3
     d00:	e1a01003 	mov	r1, r3
     d04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d08:	ebffff30 	bl	9d0 <putc>
     d0c:	ea000007 	b	d30 <printf+0x1f0>
     d10:	e3a01025 	mov	r1, #37	@ 0x25
     d14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d18:	ebffff2c 	bl	9d0 <putc>
     d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d20:	e6ef3073 	uxtb	r3, r3
     d24:	e1a01003 	mov	r1, r3
     d28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d2c:	ebffff27 	bl	9d0 <putc>
     d30:	e3a03000 	mov	r3, #0
     d34:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d38:	e51b3010 	ldr	r3, [fp, #-16]
     d3c:	e2833001 	add	r3, r3, #1
     d40:	e50b3010 	str	r3, [fp, #-16]
     d44:	e59b2004 	ldr	r2, [fp, #4]
     d48:	e51b3010 	ldr	r3, [fp, #-16]
     d4c:	e0823003 	add	r3, r2, r3
     d50:	e5d33000 	ldrb	r3, [r3]
     d54:	e3530000 	cmp	r3, #0
     d58:	1affff84 	bne	b70 <printf+0x30>
     d5c:	e1a00000 	nop			@ (mov r0, r0)
     d60:	e1a00000 	nop			@ (mov r0, r0)
     d64:	e24bd004 	sub	sp, fp, #4
     d68:	e8bd4800 	pop	{fp, lr}
     d6c:	e28dd00c 	add	sp, sp, #12
     d70:	e12fff1e 	bx	lr
     d74:	000011fc 	.word	0x000011fc

00000d78 <free>:
     d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d7c:	e28db000 	add	fp, sp, #0
     d80:	e24dd014 	sub	sp, sp, #20
     d84:	e50b0010 	str	r0, [fp, #-16]
     d88:	e51b3010 	ldr	r3, [fp, #-16]
     d8c:	e2433008 	sub	r3, r3, #8
     d90:	e50b300c 	str	r3, [fp, #-12]
     d94:	e59f3154 	ldr	r3, [pc, #340]	@ ef0 <free+0x178>
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e50b3008 	str	r3, [fp, #-8]
     da0:	ea000010 	b	de8 <free+0x70>
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5933000 	ldr	r3, [r3]
     dac:	e51b2008 	ldr	r2, [fp, #-8]
     db0:	e1520003 	cmp	r2, r3
     db4:	3a000008 	bcc	ddc <free+0x64>
     db8:	e51b200c 	ldr	r2, [fp, #-12]
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e1520003 	cmp	r2, r3
     dc4:	8a000010 	bhi	e0c <free+0x94>
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e51b200c 	ldr	r2, [fp, #-12]
     dd4:	e1520003 	cmp	r2, r3
     dd8:	3a00000b 	bcc	e0c <free+0x94>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e50b3008 	str	r3, [fp, #-8]
     de8:	e51b200c 	ldr	r2, [fp, #-12]
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e1520003 	cmp	r2, r3
     df4:	9affffea 	bls	da4 <free+0x2c>
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e51b200c 	ldr	r2, [fp, #-12]
     e04:	e1520003 	cmp	r2, r3
     e08:	2affffe5 	bcs	da4 <free+0x2c>
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5933004 	ldr	r3, [r3, #4]
     e14:	e1a03183 	lsl	r3, r3, #3
     e18:	e51b200c 	ldr	r2, [fp, #-12]
     e1c:	e0822003 	add	r2, r2, r3
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e1520003 	cmp	r2, r3
     e2c:	1a00000d 	bne	e68 <free+0xf0>
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e5932004 	ldr	r2, [r3, #4]
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e5933004 	ldr	r3, [r3, #4]
     e44:	e0822003 	add	r2, r2, r3
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e5832004 	str	r2, [r3, #4]
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e5932000 	ldr	r2, [r3]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e5832000 	str	r2, [r3]
     e64:	ea000003 	b	e78 <free+0x100>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5932000 	ldr	r2, [r3]
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5832000 	str	r2, [r3]
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5933004 	ldr	r3, [r3, #4]
     e80:	e1a03183 	lsl	r3, r3, #3
     e84:	e51b2008 	ldr	r2, [fp, #-8]
     e88:	e0823003 	add	r3, r2, r3
     e8c:	e51b200c 	ldr	r2, [fp, #-12]
     e90:	e1520003 	cmp	r2, r3
     e94:	1a00000b 	bne	ec8 <free+0x150>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e5932004 	ldr	r2, [r3, #4]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e5933004 	ldr	r3, [r3, #4]
     ea8:	e0822003 	add	r2, r2, r3
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5832004 	str	r2, [r3, #4]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5932000 	ldr	r2, [r3]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5832000 	str	r2, [r3]
     ec4:	ea000002 	b	ed4 <free+0x15c>
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e51b200c 	ldr	r2, [fp, #-12]
     ed0:	e5832000 	str	r2, [r3]
     ed4:	e59f2014 	ldr	r2, [pc, #20]	@ ef0 <free+0x178>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5823000 	str	r3, [r2]
     ee0:	e1a00000 	nop			@ (mov r0, r0)
     ee4:	e28bd000 	add	sp, fp, #0
     ee8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     eec:	e12fff1e 	bx	lr
     ef0:	00001220 	.word	0x00001220

00000ef4 <morecore>:
     ef4:	e92d4800 	push	{fp, lr}
     ef8:	e28db004 	add	fp, sp, #4
     efc:	e24dd010 	sub	sp, sp, #16
     f00:	e50b0010 	str	r0, [fp, #-16]
     f04:	e51b3010 	ldr	r3, [fp, #-16]
     f08:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f0c:	2a000001 	bcs	f18 <morecore+0x24>
     f10:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f14:	e50b3010 	str	r3, [fp, #-16]
     f18:	e51b3010 	ldr	r3, [fp, #-16]
     f1c:	e1a03183 	lsl	r3, r3, #3
     f20:	e1a00003 	mov	r0, r3
     f24:	ebfffe46 	bl	844 <sbrk>
     f28:	e50b0008 	str	r0, [fp, #-8]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e3730001 	cmn	r3, #1
     f34:	1a000001 	bne	f40 <morecore+0x4c>
     f38:	e3a03000 	mov	r3, #0
     f3c:	ea00000a 	b	f6c <morecore+0x78>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e51b2010 	ldr	r2, [fp, #-16]
     f50:	e5832004 	str	r2, [r3, #4]
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e2833008 	add	r3, r3, #8
     f5c:	e1a00003 	mov	r0, r3
     f60:	ebffff84 	bl	d78 <free>
     f64:	e59f300c 	ldr	r3, [pc, #12]	@ f78 <morecore+0x84>
     f68:	e5933000 	ldr	r3, [r3]
     f6c:	e1a00003 	mov	r0, r3
     f70:	e24bd004 	sub	sp, fp, #4
     f74:	e8bd8800 	pop	{fp, pc}
     f78:	00001220 	.word	0x00001220

00000f7c <malloc>:
     f7c:	e92d4800 	push	{fp, lr}
     f80:	e28db004 	add	fp, sp, #4
     f84:	e24dd018 	sub	sp, sp, #24
     f88:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f90:	e2833007 	add	r3, r3, #7
     f94:	e1a031a3 	lsr	r3, r3, #3
     f98:	e2833001 	add	r3, r3, #1
     f9c:	e50b3010 	str	r3, [fp, #-16]
     fa0:	e59f3134 	ldr	r3, [pc, #308]	@ 10dc <malloc+0x160>
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e50b300c 	str	r3, [fp, #-12]
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e3530000 	cmp	r3, #0
     fb4:	1a00000b 	bne	fe8 <malloc+0x6c>
     fb8:	e59f3120 	ldr	r3, [pc, #288]	@ 10e0 <malloc+0x164>
     fbc:	e50b300c 	str	r3, [fp, #-12]
     fc0:	e59f2114 	ldr	r2, [pc, #276]	@ 10dc <malloc+0x160>
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5823000 	str	r3, [r2]
     fcc:	e59f3108 	ldr	r3, [pc, #264]	@ 10dc <malloc+0x160>
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e59f2104 	ldr	r2, [pc, #260]	@ 10e0 <malloc+0x164>
     fd8:	e5823000 	str	r3, [r2]
     fdc:	e59f30fc 	ldr	r3, [pc, #252]	@ 10e0 <malloc+0x164>
     fe0:	e3a02000 	mov	r2, #0
     fe4:	e5832004 	str	r2, [r3, #4]
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e50b3008 	str	r3, [fp, #-8]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5933004 	ldr	r3, [r3, #4]
     ffc:	e51b2010 	ldr	r2, [fp, #-16]
    1000:	e1520003 	cmp	r2, r3
    1004:	8a00001e 	bhi	1084 <malloc+0x108>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5933004 	ldr	r3, [r3, #4]
    1010:	e51b2010 	ldr	r2, [fp, #-16]
    1014:	e1520003 	cmp	r2, r3
    1018:	1a000004 	bne	1030 <malloc+0xb4>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5932000 	ldr	r2, [r3]
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5832000 	str	r2, [r3]
    102c:	ea00000e 	b	106c <malloc+0xf0>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5932004 	ldr	r2, [r3, #4]
    1038:	e51b3010 	ldr	r3, [fp, #-16]
    103c:	e0422003 	sub	r2, r2, r3
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5832004 	str	r2, [r3, #4]
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5933004 	ldr	r3, [r3, #4]
    1050:	e1a03183 	lsl	r3, r3, #3
    1054:	e51b2008 	ldr	r2, [fp, #-8]
    1058:	e0823003 	add	r3, r2, r3
    105c:	e50b3008 	str	r3, [fp, #-8]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e51b2010 	ldr	r2, [fp, #-16]
    1068:	e5832004 	str	r2, [r3, #4]
    106c:	e59f2068 	ldr	r2, [pc, #104]	@ 10dc <malloc+0x160>
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5823000 	str	r3, [r2]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e2833008 	add	r3, r3, #8
    1080:	ea000012 	b	10d0 <malloc+0x154>
    1084:	e59f3050 	ldr	r3, [pc, #80]	@ 10dc <malloc+0x160>
    1088:	e5933000 	ldr	r3, [r3]
    108c:	e51b2008 	ldr	r2, [fp, #-8]
    1090:	e1520003 	cmp	r2, r3
    1094:	1a000007 	bne	10b8 <malloc+0x13c>
    1098:	e51b0010 	ldr	r0, [fp, #-16]
    109c:	ebffff94 	bl	ef4 <morecore>
    10a0:	e50b0008 	str	r0, [fp, #-8]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1a000001 	bne	10b8 <malloc+0x13c>
    10b0:	e3a03000 	mov	r3, #0
    10b4:	ea000005 	b	10d0 <malloc+0x154>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e50b300c 	str	r3, [fp, #-12]
    10c0:	e51b3008 	ldr	r3, [fp, #-8]
    10c4:	e5933000 	ldr	r3, [r3]
    10c8:	e50b3008 	str	r3, [fp, #-8]
    10cc:	eaffffc8 	b	ff4 <malloc+0x78>
    10d0:	e1a00003 	mov	r0, r3
    10d4:	e24bd004 	sub	sp, fp, #4
    10d8:	e8bd8800 	pop	{fp, pc}
    10dc:	00001220 	.word	0x00001220
    10e0:	00001218 	.word	0x00001218

000010e4 <__udivsi3>:
    10e4:	e2512001 	subs	r2, r1, #1
    10e8:	012fff1e 	bxeq	lr
    10ec:	3a000036 	bcc	11cc <__udivsi3+0xe8>
    10f0:	e1500001 	cmp	r0, r1
    10f4:	9a000022 	bls	1184 <__udivsi3+0xa0>
    10f8:	e1110002 	tst	r1, r2
    10fc:	0a000023 	beq	1190 <__udivsi3+0xac>
    1100:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1104:	01a01181 	lsleq	r1, r1, #3
    1108:	03a03008 	moveq	r3, #8
    110c:	13a03001 	movne	r3, #1
    1110:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1114:	31510000 	cmpcc	r1, r0
    1118:	31a01201 	lslcc	r1, r1, #4
    111c:	31a03203 	lslcc	r3, r3, #4
    1120:	3afffffa 	bcc	1110 <__udivsi3+0x2c>
    1124:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1128:	31510000 	cmpcc	r1, r0
    112c:	31a01081 	lslcc	r1, r1, #1
    1130:	31a03083 	lslcc	r3, r3, #1
    1134:	3afffffa 	bcc	1124 <__udivsi3+0x40>
    1138:	e3a02000 	mov	r2, #0
    113c:	e1500001 	cmp	r0, r1
    1140:	20400001 	subcs	r0, r0, r1
    1144:	21822003 	orrcs	r2, r2, r3
    1148:	e15000a1 	cmp	r0, r1, lsr #1
    114c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1150:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1154:	e1500121 	cmp	r0, r1, lsr #2
    1158:	20400121 	subcs	r0, r0, r1, lsr #2
    115c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1160:	e15001a1 	cmp	r0, r1, lsr #3
    1164:	204001a1 	subcs	r0, r0, r1, lsr #3
    1168:	218221a3 	orrcs	r2, r2, r3, lsr #3
    116c:	e3500000 	cmp	r0, #0
    1170:	11b03223 	lsrsne	r3, r3, #4
    1174:	11a01221 	lsrne	r1, r1, #4
    1178:	1affffef 	bne	113c <__udivsi3+0x58>
    117c:	e1a00002 	mov	r0, r2
    1180:	e12fff1e 	bx	lr
    1184:	03a00001 	moveq	r0, #1
    1188:	13a00000 	movne	r0, #0
    118c:	e12fff1e 	bx	lr
    1190:	e3510801 	cmp	r1, #65536	@ 0x10000
    1194:	21a01821 	lsrcs	r1, r1, #16
    1198:	23a02010 	movcs	r2, #16
    119c:	33a02000 	movcc	r2, #0
    11a0:	e3510c01 	cmp	r1, #256	@ 0x100
    11a4:	21a01421 	lsrcs	r1, r1, #8
    11a8:	22822008 	addcs	r2, r2, #8
    11ac:	e3510010 	cmp	r1, #16
    11b0:	21a01221 	lsrcs	r1, r1, #4
    11b4:	22822004 	addcs	r2, r2, #4
    11b8:	e3510004 	cmp	r1, #4
    11bc:	82822003 	addhi	r2, r2, #3
    11c0:	908220a1 	addls	r2, r2, r1, lsr #1
    11c4:	e1a00230 	lsr	r0, r0, r2
    11c8:	e12fff1e 	bx	lr
    11cc:	e3500000 	cmp	r0, #0
    11d0:	13e00000 	mvnne	r0, #0
    11d4:	ea000007 	b	11f8 <__aeabi_idiv0>

000011d8 <__aeabi_uidivmod>:
    11d8:	e3510000 	cmp	r1, #0
    11dc:	0afffffa 	beq	11cc <__udivsi3+0xe8>
    11e0:	e92d4003 	push	{r0, r1, lr}
    11e4:	ebffffbe 	bl	10e4 <__udivsi3>
    11e8:	e8bd4006 	pop	{r1, r2, lr}
    11ec:	e0030092 	mul	r3, r2, r0
    11f0:	e0411003 	sub	r1, r1, r3
    11f4:	e12fff1e 	bx	lr

000011f8 <__aeabi_idiv0>:
    11f8:	e12fff1e 	bx	lr
