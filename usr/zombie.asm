
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

00000940 <putc>:
     940:	e92d4800 	push	{fp, lr}
     944:	e28db004 	add	fp, sp, #4
     948:	e24dd008 	sub	sp, sp, #8
     94c:	e50b0008 	str	r0, [fp, #-8]
     950:	e1a03001 	mov	r3, r1
     954:	e54b3009 	strb	r3, [fp, #-9]
     958:	e24b3009 	sub	r3, fp, #9
     95c:	e3a02001 	mov	r2, #1
     960:	e1a01003 	mov	r1, r3
     964:	e51b0008 	ldr	r0, [fp, #-8]
     968:	ebffff40 	bl	670 <write>
     96c:	e1a00000 	nop			@ (mov r0, r0)
     970:	e24bd004 	sub	sp, fp, #4
     974:	e8bd8800 	pop	{fp, pc}

00000978 <printint>:
     978:	e92d4800 	push	{fp, lr}
     97c:	e28db004 	add	fp, sp, #4
     980:	e24dd030 	sub	sp, sp, #48	@ 0x30
     984:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     988:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     98c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     990:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     994:	e3a03000 	mov	r3, #0
     998:	e50b300c 	str	r3, [fp, #-12]
     99c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9a0:	e3530000 	cmp	r3, #0
     9a4:	0a000008 	beq	9cc <printint+0x54>
     9a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9ac:	e3530000 	cmp	r3, #0
     9b0:	aa000005 	bge	9cc <printint+0x54>
     9b4:	e3a03001 	mov	r3, #1
     9b8:	e50b300c 	str	r3, [fp, #-12]
     9bc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9c0:	e2633000 	rsb	r3, r3, #0
     9c4:	e50b3010 	str	r3, [fp, #-16]
     9c8:	ea000001 	b	9d4 <printint+0x5c>
     9cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9d0:	e50b3010 	str	r3, [fp, #-16]
     9d4:	e3a03000 	mov	r3, #0
     9d8:	e50b3008 	str	r3, [fp, #-8]
     9dc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9e0:	e51b3010 	ldr	r3, [fp, #-16]
     9e4:	e1a01002 	mov	r1, r2
     9e8:	e1a00003 	mov	r0, r3
     9ec:	eb0001d5 	bl	1148 <__aeabi_uidivmod>
     9f0:	e1a03001 	mov	r3, r1
     9f4:	e1a01003 	mov	r1, r3
     9f8:	e51b3008 	ldr	r3, [fp, #-8]
     9fc:	e2832001 	add	r2, r3, #1
     a00:	e50b2008 	str	r2, [fp, #-8]
     a04:	e59f20a0 	ldr	r2, [pc, #160]	@ aac <printint+0x134>
     a08:	e7d22001 	ldrb	r2, [r2, r1]
     a0c:	e2433004 	sub	r3, r3, #4
     a10:	e083300b 	add	r3, r3, fp
     a14:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a18:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a1c:	e1a01003 	mov	r1, r3
     a20:	e51b0010 	ldr	r0, [fp, #-16]
     a24:	eb00018a 	bl	1054 <__udivsi3>
     a28:	e1a03000 	mov	r3, r0
     a2c:	e50b3010 	str	r3, [fp, #-16]
     a30:	e51b3010 	ldr	r3, [fp, #-16]
     a34:	e3530000 	cmp	r3, #0
     a38:	1affffe7 	bne	9dc <printint+0x64>
     a3c:	e51b300c 	ldr	r3, [fp, #-12]
     a40:	e3530000 	cmp	r3, #0
     a44:	0a00000e 	beq	a84 <printint+0x10c>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e2832001 	add	r2, r3, #1
     a50:	e50b2008 	str	r2, [fp, #-8]
     a54:	e2433004 	sub	r3, r3, #4
     a58:	e083300b 	add	r3, r3, fp
     a5c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a60:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a64:	ea000006 	b	a84 <printint+0x10c>
     a68:	e24b2020 	sub	r2, fp, #32
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e0823003 	add	r3, r2, r3
     a74:	e5d33000 	ldrb	r3, [r3]
     a78:	e1a01003 	mov	r1, r3
     a7c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a80:	ebffffae 	bl	940 <putc>
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e2433001 	sub	r3, r3, #1
     a8c:	e50b3008 	str	r3, [fp, #-8]
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e3530000 	cmp	r3, #0
     a98:	aafffff2 	bge	a68 <printint+0xf0>
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	e1a00000 	nop			@ (mov r0, r0)
     aa4:	e24bd004 	sub	sp, fp, #4
     aa8:	e8bd8800 	pop	{fp, pc}
     aac:	00001174 	.word	0x00001174

00000ab0 <printf>:
     ab0:	e92d000e 	push	{r1, r2, r3}
     ab4:	e92d4800 	push	{fp, lr}
     ab8:	e28db004 	add	fp, sp, #4
     abc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ac0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ac4:	e3a03000 	mov	r3, #0
     ac8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     acc:	e28b3008 	add	r3, fp, #8
     ad0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ad4:	e3a03000 	mov	r3, #0
     ad8:	e50b3010 	str	r3, [fp, #-16]
     adc:	ea000074 	b	cb4 <printf+0x204>
     ae0:	e59b2004 	ldr	r2, [fp, #4]
     ae4:	e51b3010 	ldr	r3, [fp, #-16]
     ae8:	e0823003 	add	r3, r2, r3
     aec:	e5d33000 	ldrb	r3, [r3]
     af0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     af4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     af8:	e3530000 	cmp	r3, #0
     afc:	1a00000b 	bne	b30 <printf+0x80>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e3530025 	cmp	r3, #37	@ 0x25
     b08:	1a000002 	bne	b18 <printf+0x68>
     b0c:	e3a03025 	mov	r3, #37	@ 0x25
     b10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b14:	ea000063 	b	ca8 <printf+0x1f8>
     b18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b1c:	e6ef3073 	uxtb	r3, r3
     b20:	e1a01003 	mov	r1, r3
     b24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b28:	ebffff84 	bl	940 <putc>
     b2c:	ea00005d 	b	ca8 <printf+0x1f8>
     b30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b34:	e3530025 	cmp	r3, #37	@ 0x25
     b38:	1a00005a 	bne	ca8 <printf+0x1f8>
     b3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b40:	e3530064 	cmp	r3, #100	@ 0x64
     b44:	1a00000a 	bne	b74 <printf+0xc4>
     b48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b4c:	e5933000 	ldr	r3, [r3]
     b50:	e1a01003 	mov	r1, r3
     b54:	e3a03001 	mov	r3, #1
     b58:	e3a0200a 	mov	r2, #10
     b5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b60:	ebffff84 	bl	978 <printint>
     b64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b68:	e2833004 	add	r3, r3, #4
     b6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b70:	ea00004a 	b	ca0 <printf+0x1f0>
     b74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b78:	e3530078 	cmp	r3, #120	@ 0x78
     b7c:	0a000002 	beq	b8c <printf+0xdc>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e3530070 	cmp	r3, #112	@ 0x70
     b88:	1a00000a 	bne	bb8 <printf+0x108>
     b8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e5933000 	ldr	r3, [r3]
     b94:	e1a01003 	mov	r1, r3
     b98:	e3a03000 	mov	r3, #0
     b9c:	e3a02010 	mov	r2, #16
     ba0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba4:	ebffff73 	bl	978 <printint>
     ba8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bac:	e2833004 	add	r3, r3, #4
     bb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bb4:	ea000039 	b	ca0 <printf+0x1f0>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e3530073 	cmp	r3, #115	@ 0x73
     bc0:	1a000018 	bne	c28 <printf+0x178>
     bc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc8:	e5933000 	ldr	r3, [r3]
     bcc:	e50b300c 	str	r3, [fp, #-12]
     bd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd4:	e2833004 	add	r3, r3, #4
     bd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e51b300c 	ldr	r3, [fp, #-12]
     be0:	e3530000 	cmp	r3, #0
     be4:	1a00000a 	bne	c14 <printf+0x164>
     be8:	e59f30f4 	ldr	r3, [pc, #244]	@ ce4 <printf+0x234>
     bec:	e50b300c 	str	r3, [fp, #-12]
     bf0:	ea000007 	b	c14 <printf+0x164>
     bf4:	e51b300c 	ldr	r3, [fp, #-12]
     bf8:	e5d33000 	ldrb	r3, [r3]
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c04:	ebffff4d 	bl	940 <putc>
     c08:	e51b300c 	ldr	r3, [fp, #-12]
     c0c:	e2833001 	add	r3, r3, #1
     c10:	e50b300c 	str	r3, [fp, #-12]
     c14:	e51b300c 	ldr	r3, [fp, #-12]
     c18:	e5d33000 	ldrb	r3, [r3]
     c1c:	e3530000 	cmp	r3, #0
     c20:	1afffff3 	bne	bf4 <printf+0x144>
     c24:	ea00001d 	b	ca0 <printf+0x1f0>
     c28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c2c:	e3530063 	cmp	r3, #99	@ 0x63
     c30:	1a000009 	bne	c5c <printf+0x1ac>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e5933000 	ldr	r3, [r3]
     c3c:	e6ef3073 	uxtb	r3, r3
     c40:	e1a01003 	mov	r1, r3
     c44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c48:	ebffff3c 	bl	940 <putc>
     c4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c50:	e2833004 	add	r3, r3, #4
     c54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c58:	ea000010 	b	ca0 <printf+0x1f0>
     c5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c60:	e3530025 	cmp	r3, #37	@ 0x25
     c64:	1a000005 	bne	c80 <printf+0x1d0>
     c68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c6c:	e6ef3073 	uxtb	r3, r3
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff30 	bl	940 <putc>
     c7c:	ea000007 	b	ca0 <printf+0x1f0>
     c80:	e3a01025 	mov	r1, #37	@ 0x25
     c84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c88:	ebffff2c 	bl	940 <putc>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e6ef3073 	uxtb	r3, r3
     c94:	e1a01003 	mov	r1, r3
     c98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c9c:	ebffff27 	bl	940 <putc>
     ca0:	e3a03000 	mov	r3, #0
     ca4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ca8:	e51b3010 	ldr	r3, [fp, #-16]
     cac:	e2833001 	add	r3, r3, #1
     cb0:	e50b3010 	str	r3, [fp, #-16]
     cb4:	e59b2004 	ldr	r2, [fp, #4]
     cb8:	e51b3010 	ldr	r3, [fp, #-16]
     cbc:	e0823003 	add	r3, r2, r3
     cc0:	e5d33000 	ldrb	r3, [r3]
     cc4:	e3530000 	cmp	r3, #0
     cc8:	1affff84 	bne	ae0 <printf+0x30>
     ccc:	e1a00000 	nop			@ (mov r0, r0)
     cd0:	e1a00000 	nop			@ (mov r0, r0)
     cd4:	e24bd004 	sub	sp, fp, #4
     cd8:	e8bd4800 	pop	{fp, lr}
     cdc:	e28dd00c 	add	sp, sp, #12
     ce0:	e12fff1e 	bx	lr
     ce4:	0000116c 	.word	0x0000116c

00000ce8 <free>:
     ce8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cec:	e28db000 	add	fp, sp, #0
     cf0:	e24dd014 	sub	sp, sp, #20
     cf4:	e50b0010 	str	r0, [fp, #-16]
     cf8:	e51b3010 	ldr	r3, [fp, #-16]
     cfc:	e2433008 	sub	r3, r3, #8
     d00:	e50b300c 	str	r3, [fp, #-12]
     d04:	e59f3154 	ldr	r3, [pc, #340]	@ e60 <free+0x178>
     d08:	e5933000 	ldr	r3, [r3]
     d0c:	e50b3008 	str	r3, [fp, #-8]
     d10:	ea000010 	b	d58 <free+0x70>
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933000 	ldr	r3, [r3]
     d1c:	e51b2008 	ldr	r2, [fp, #-8]
     d20:	e1520003 	cmp	r2, r3
     d24:	3a000008 	bcc	d4c <free+0x64>
     d28:	e51b200c 	ldr	r2, [fp, #-12]
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e1520003 	cmp	r2, r3
     d34:	8a000010 	bhi	d7c <free+0x94>
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e5933000 	ldr	r3, [r3]
     d40:	e51b200c 	ldr	r2, [fp, #-12]
     d44:	e1520003 	cmp	r2, r3
     d48:	3a00000b 	bcc	d7c <free+0x94>
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e5933000 	ldr	r3, [r3]
     d54:	e50b3008 	str	r3, [fp, #-8]
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e1520003 	cmp	r2, r3
     d64:	9affffea 	bls	d14 <free+0x2c>
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e1520003 	cmp	r2, r3
     d78:	2affffe5 	bcs	d14 <free+0x2c>
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5933004 	ldr	r3, [r3, #4]
     d84:	e1a03183 	lsl	r3, r3, #3
     d88:	e51b200c 	ldr	r2, [fp, #-12]
     d8c:	e0822003 	add	r2, r2, r3
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e1520003 	cmp	r2, r3
     d9c:	1a00000d 	bne	dd8 <free+0xf0>
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e5932004 	ldr	r2, [r3, #4]
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e5933004 	ldr	r3, [r3, #4]
     db4:	e0822003 	add	r2, r2, r3
     db8:	e51b300c 	ldr	r3, [fp, #-12]
     dbc:	e5832004 	str	r2, [r3, #4]
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e5932000 	ldr	r2, [r3]
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e5832000 	str	r2, [r3]
     dd4:	ea000003 	b	de8 <free+0x100>
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5932000 	ldr	r2, [r3]
     de0:	e51b300c 	ldr	r3, [fp, #-12]
     de4:	e5832000 	str	r2, [r3]
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5933004 	ldr	r3, [r3, #4]
     df0:	e1a03183 	lsl	r3, r3, #3
     df4:	e51b2008 	ldr	r2, [fp, #-8]
     df8:	e0823003 	add	r3, r2, r3
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e1520003 	cmp	r2, r3
     e04:	1a00000b 	bne	e38 <free+0x150>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5932004 	ldr	r2, [r3, #4]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5933004 	ldr	r3, [r3, #4]
     e18:	e0822003 	add	r2, r2, r3
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5832004 	str	r2, [r3, #4]
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5932000 	ldr	r2, [r3]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e5832000 	str	r2, [r3]
     e34:	ea000002 	b	e44 <free+0x15c>
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e51b200c 	ldr	r2, [fp, #-12]
     e40:	e5832000 	str	r2, [r3]
     e44:	e59f2014 	ldr	r2, [pc, #20]	@ e60 <free+0x178>
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e5823000 	str	r3, [r2]
     e50:	e1a00000 	nop			@ (mov r0, r0)
     e54:	e28bd000 	add	sp, fp, #0
     e58:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e5c:	e12fff1e 	bx	lr
     e60:	00001190 	.word	0x00001190

00000e64 <morecore>:
     e64:	e92d4800 	push	{fp, lr}
     e68:	e28db004 	add	fp, sp, #4
     e6c:	e24dd010 	sub	sp, sp, #16
     e70:	e50b0010 	str	r0, [fp, #-16]
     e74:	e51b3010 	ldr	r3, [fp, #-16]
     e78:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e7c:	2a000001 	bcs	e88 <morecore+0x24>
     e80:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e84:	e50b3010 	str	r3, [fp, #-16]
     e88:	e51b3010 	ldr	r3, [fp, #-16]
     e8c:	e1a03183 	lsl	r3, r3, #3
     e90:	e1a00003 	mov	r0, r3
     e94:	ebfffe6a 	bl	844 <sbrk>
     e98:	e50b0008 	str	r0, [fp, #-8]
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e3730001 	cmn	r3, #1
     ea4:	1a000001 	bne	eb0 <morecore+0x4c>
     ea8:	e3a03000 	mov	r3, #0
     eac:	ea00000a 	b	edc <morecore+0x78>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e50b300c 	str	r3, [fp, #-12]
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e51b2010 	ldr	r2, [fp, #-16]
     ec0:	e5832004 	str	r2, [r3, #4]
     ec4:	e51b300c 	ldr	r3, [fp, #-12]
     ec8:	e2833008 	add	r3, r3, #8
     ecc:	e1a00003 	mov	r0, r3
     ed0:	ebffff84 	bl	ce8 <free>
     ed4:	e59f300c 	ldr	r3, [pc, #12]	@ ee8 <morecore+0x84>
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e1a00003 	mov	r0, r3
     ee0:	e24bd004 	sub	sp, fp, #4
     ee4:	e8bd8800 	pop	{fp, pc}
     ee8:	00001190 	.word	0x00001190

00000eec <malloc>:
     eec:	e92d4800 	push	{fp, lr}
     ef0:	e28db004 	add	fp, sp, #4
     ef4:	e24dd018 	sub	sp, sp, #24
     ef8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     efc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f00:	e2833007 	add	r3, r3, #7
     f04:	e1a031a3 	lsr	r3, r3, #3
     f08:	e2833001 	add	r3, r3, #1
     f0c:	e50b3010 	str	r3, [fp, #-16]
     f10:	e59f3134 	ldr	r3, [pc, #308]	@ 104c <malloc+0x160>
     f14:	e5933000 	ldr	r3, [r3]
     f18:	e50b300c 	str	r3, [fp, #-12]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e3530000 	cmp	r3, #0
     f24:	1a00000b 	bne	f58 <malloc+0x6c>
     f28:	e59f3120 	ldr	r3, [pc, #288]	@ 1050 <malloc+0x164>
     f2c:	e50b300c 	str	r3, [fp, #-12]
     f30:	e59f2114 	ldr	r2, [pc, #276]	@ 104c <malloc+0x160>
     f34:	e51b300c 	ldr	r3, [fp, #-12]
     f38:	e5823000 	str	r3, [r2]
     f3c:	e59f3108 	ldr	r3, [pc, #264]	@ 104c <malloc+0x160>
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e59f2104 	ldr	r2, [pc, #260]	@ 1050 <malloc+0x164>
     f48:	e5823000 	str	r3, [r2]
     f4c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1050 <malloc+0x164>
     f50:	e3a02000 	mov	r2, #0
     f54:	e5832004 	str	r2, [r3, #4]
     f58:	e51b300c 	ldr	r3, [fp, #-12]
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e50b3008 	str	r3, [fp, #-8]
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5933004 	ldr	r3, [r3, #4]
     f6c:	e51b2010 	ldr	r2, [fp, #-16]
     f70:	e1520003 	cmp	r2, r3
     f74:	8a00001e 	bhi	ff4 <malloc+0x108>
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5933004 	ldr	r3, [r3, #4]
     f80:	e51b2010 	ldr	r2, [fp, #-16]
     f84:	e1520003 	cmp	r2, r3
     f88:	1a000004 	bne	fa0 <malloc+0xb4>
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e5932000 	ldr	r2, [r3]
     f94:	e51b300c 	ldr	r3, [fp, #-12]
     f98:	e5832000 	str	r2, [r3]
     f9c:	ea00000e 	b	fdc <malloc+0xf0>
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5932004 	ldr	r2, [r3, #4]
     fa8:	e51b3010 	ldr	r3, [fp, #-16]
     fac:	e0422003 	sub	r2, r2, r3
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5832004 	str	r2, [r3, #4]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5933004 	ldr	r3, [r3, #4]
     fc0:	e1a03183 	lsl	r3, r3, #3
     fc4:	e51b2008 	ldr	r2, [fp, #-8]
     fc8:	e0823003 	add	r3, r2, r3
     fcc:	e50b3008 	str	r3, [fp, #-8]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e51b2010 	ldr	r2, [fp, #-16]
     fd8:	e5832004 	str	r2, [r3, #4]
     fdc:	e59f2068 	ldr	r2, [pc, #104]	@ 104c <malloc+0x160>
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5823000 	str	r3, [r2]
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e2833008 	add	r3, r3, #8
     ff0:	ea000012 	b	1040 <malloc+0x154>
     ff4:	e59f3050 	ldr	r3, [pc, #80]	@ 104c <malloc+0x160>
     ff8:	e5933000 	ldr	r3, [r3]
     ffc:	e51b2008 	ldr	r2, [fp, #-8]
    1000:	e1520003 	cmp	r2, r3
    1004:	1a000007 	bne	1028 <malloc+0x13c>
    1008:	e51b0010 	ldr	r0, [fp, #-16]
    100c:	ebffff94 	bl	e64 <morecore>
    1010:	e50b0008 	str	r0, [fp, #-8]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e3530000 	cmp	r3, #0
    101c:	1a000001 	bne	1028 <malloc+0x13c>
    1020:	e3a03000 	mov	r3, #0
    1024:	ea000005 	b	1040 <malloc+0x154>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e50b300c 	str	r3, [fp, #-12]
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5933000 	ldr	r3, [r3]
    1038:	e50b3008 	str	r3, [fp, #-8]
    103c:	eaffffc8 	b	f64 <malloc+0x78>
    1040:	e1a00003 	mov	r0, r3
    1044:	e24bd004 	sub	sp, fp, #4
    1048:	e8bd8800 	pop	{fp, pc}
    104c:	00001190 	.word	0x00001190
    1050:	00001188 	.word	0x00001188

00001054 <__udivsi3>:
    1054:	e2512001 	subs	r2, r1, #1
    1058:	012fff1e 	bxeq	lr
    105c:	3a000036 	bcc	113c <__udivsi3+0xe8>
    1060:	e1500001 	cmp	r0, r1
    1064:	9a000022 	bls	10f4 <__udivsi3+0xa0>
    1068:	e1110002 	tst	r1, r2
    106c:	0a000023 	beq	1100 <__udivsi3+0xac>
    1070:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1074:	01a01181 	lsleq	r1, r1, #3
    1078:	03a03008 	moveq	r3, #8
    107c:	13a03001 	movne	r3, #1
    1080:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1084:	31510000 	cmpcc	r1, r0
    1088:	31a01201 	lslcc	r1, r1, #4
    108c:	31a03203 	lslcc	r3, r3, #4
    1090:	3afffffa 	bcc	1080 <__udivsi3+0x2c>
    1094:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1098:	31510000 	cmpcc	r1, r0
    109c:	31a01081 	lslcc	r1, r1, #1
    10a0:	31a03083 	lslcc	r3, r3, #1
    10a4:	3afffffa 	bcc	1094 <__udivsi3+0x40>
    10a8:	e3a02000 	mov	r2, #0
    10ac:	e1500001 	cmp	r0, r1
    10b0:	20400001 	subcs	r0, r0, r1
    10b4:	21822003 	orrcs	r2, r2, r3
    10b8:	e15000a1 	cmp	r0, r1, lsr #1
    10bc:	204000a1 	subcs	r0, r0, r1, lsr #1
    10c0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10c4:	e1500121 	cmp	r0, r1, lsr #2
    10c8:	20400121 	subcs	r0, r0, r1, lsr #2
    10cc:	21822123 	orrcs	r2, r2, r3, lsr #2
    10d0:	e15001a1 	cmp	r0, r1, lsr #3
    10d4:	204001a1 	subcs	r0, r0, r1, lsr #3
    10d8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10dc:	e3500000 	cmp	r0, #0
    10e0:	11b03223 	lsrsne	r3, r3, #4
    10e4:	11a01221 	lsrne	r1, r1, #4
    10e8:	1affffef 	bne	10ac <__udivsi3+0x58>
    10ec:	e1a00002 	mov	r0, r2
    10f0:	e12fff1e 	bx	lr
    10f4:	03a00001 	moveq	r0, #1
    10f8:	13a00000 	movne	r0, #0
    10fc:	e12fff1e 	bx	lr
    1100:	e3510801 	cmp	r1, #65536	@ 0x10000
    1104:	21a01821 	lsrcs	r1, r1, #16
    1108:	23a02010 	movcs	r2, #16
    110c:	33a02000 	movcc	r2, #0
    1110:	e3510c01 	cmp	r1, #256	@ 0x100
    1114:	21a01421 	lsrcs	r1, r1, #8
    1118:	22822008 	addcs	r2, r2, #8
    111c:	e3510010 	cmp	r1, #16
    1120:	21a01221 	lsrcs	r1, r1, #4
    1124:	22822004 	addcs	r2, r2, #4
    1128:	e3510004 	cmp	r1, #4
    112c:	82822003 	addhi	r2, r2, #3
    1130:	908220a1 	addls	r2, r2, r1, lsr #1
    1134:	e1a00230 	lsr	r0, r0, r2
    1138:	e12fff1e 	bx	lr
    113c:	e3500000 	cmp	r0, #0
    1140:	13e00000 	mvnne	r0, #0
    1144:	ea000007 	b	1168 <__aeabi_idiv0>

00001148 <__aeabi_uidivmod>:
    1148:	e3510000 	cmp	r1, #0
    114c:	0afffffa 	beq	113c <__udivsi3+0xe8>
    1150:	e92d4003 	push	{r0, r1, lr}
    1154:	ebffffbe 	bl	1054 <__udivsi3>
    1158:	e8bd4006 	pop	{r1, r2, lr}
    115c:	e0030092 	mul	r3, r2, r0
    1160:	e0411003 	sub	r1, r1, r3
    1164:	e12fff1e 	bx	lr

00001168 <__aeabi_idiv0>:
    1168:	e12fff1e 	bx	lr
