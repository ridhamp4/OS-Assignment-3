
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb0002f4 	bl	c08 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb0000c9 	bl	370 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb0001ae 	bl	714 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb0002dc 	bl	c08 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0001e6 	bl	858 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb0001b9 	bl	7c8 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb0001ba 	bl	7ec <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb0002be 	bl	c08 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb0001ce 	bl	858 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb000198 	bl	7a4 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb0001a2 	bl	7ec <close>
     160:	eb00017d 	bl	75c <wait>
     164:	eb000173 	bl	738 <exit>
     168:	000012ec 	.word	0x000012ec
     16c:	000012c4 	.word	0x000012c4
     170:	000012d8 	.word	0x000012d8
     174:	00000202 	.word	0x00000202
     178:	000012e4 	.word	0x000012e4

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			@ (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strncmp>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd014 	sub	sp, sp, #20
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	e50b2010 	str	r2, [fp, #-16]
     1f4:	ea000008 	b	21c <strncmp+0x40>
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e2833001 	add	r3, r3, #1
     200:	e50b3008 	str	r3, [fp, #-8]
     204:	e51b300c 	ldr	r3, [fp, #-12]
     208:	e2833001 	add	r3, r3, #1
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b3010 	ldr	r3, [fp, #-16]
     214:	e2433001 	sub	r3, r3, #1
     218:	e50b3010 	str	r3, [fp, #-16]
     21c:	e51b3010 	ldr	r3, [fp, #-16]
     220:	e3530000 	cmp	r3, #0
     224:	da00000d 	ble	260 <strncmp+0x84>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e3530000 	cmp	r3, #0
     234:	0a000009 	beq	260 <strncmp+0x84>
     238:	e51b300c 	ldr	r3, [fp, #-12]
     23c:	e5d33000 	ldrb	r3, [r3]
     240:	e3530000 	cmp	r3, #0
     244:	0a000005 	beq	260 <strncmp+0x84>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e5d32000 	ldrb	r2, [r3]
     250:	e51b300c 	ldr	r3, [fp, #-12]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e1520003 	cmp	r2, r3
     25c:	0affffe5 	beq	1f8 <strncmp+0x1c>
     260:	e51b3010 	ldr	r3, [fp, #-16]
     264:	e3530000 	cmp	r3, #0
     268:	1a000001 	bne	274 <strncmp+0x98>
     26c:	e3a03000 	mov	r3, #0
     270:	ea000005 	b	28c <strncmp+0xb0>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e5d33000 	ldrb	r3, [r3]
     27c:	e1a02003 	mov	r2, r3
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e0423003 	sub	r3, r2, r3
     28c:	e1a00003 	mov	r0, r3
     290:	e28bd000 	add	sp, fp, #0
     294:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     298:	e12fff1e 	bx	lr

0000029c <strcmp>:
     29c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a0:	e28db000 	add	fp, sp, #0
     2a4:	e24dd00c 	sub	sp, sp, #12
     2a8:	e50b0008 	str	r0, [fp, #-8]
     2ac:	e50b100c 	str	r1, [fp, #-12]
     2b0:	ea000005 	b	2cc <strcmp+0x30>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b300c 	str	r3, [fp, #-12]
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e5d33000 	ldrb	r3, [r3]
     2d4:	e3530000 	cmp	r3, #0
     2d8:	0a000005 	beq	2f4 <strcmp+0x58>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e5d32000 	ldrb	r2, [r3]
     2e4:	e51b300c 	ldr	r3, [fp, #-12]
     2e8:	e5d33000 	ldrb	r3, [r3]
     2ec:	e1520003 	cmp	r2, r3
     2f0:	0affffef 	beq	2b4 <strcmp+0x18>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e1a02003 	mov	r2, r3
     300:	e51b300c 	ldr	r3, [fp, #-12]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e0423003 	sub	r3, r2, r3
     30c:	e1a00003 	mov	r0, r3
     310:	e28bd000 	add	sp, fp, #0
     314:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     318:	e12fff1e 	bx	lr

0000031c <strlen>:
     31c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     320:	e28db000 	add	fp, sp, #0
     324:	e24dd014 	sub	sp, sp, #20
     328:	e50b0010 	str	r0, [fp, #-16]
     32c:	e3a03000 	mov	r3, #0
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	ea000002 	b	344 <strlen+0x28>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e2833001 	add	r3, r3, #1
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e51b2010 	ldr	r2, [fp, #-16]
     34c:	e0823003 	add	r3, r2, r3
     350:	e5d33000 	ldrb	r3, [r3]
     354:	e3530000 	cmp	r3, #0
     358:	1afffff6 	bne	338 <strlen+0x1c>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e1a00003 	mov	r0, r3
     364:	e28bd000 	add	sp, fp, #0
     368:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     36c:	e12fff1e 	bx	lr

00000370 <memset>:
     370:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     374:	e28db000 	add	fp, sp, #0
     378:	e24dd024 	sub	sp, sp, #36	@ 0x24
     37c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     380:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     384:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     394:	e54b300d 	strb	r3, [fp, #-13]
     398:	e55b200d 	ldrb	r2, [fp, #-13]
     39c:	e1a03002 	mov	r3, r2
     3a0:	e1a03403 	lsl	r3, r3, #8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e1a03803 	lsl	r3, r3, #16
     3ac:	e1a02003 	mov	r2, r3
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e1a03403 	lsl	r3, r3, #8
     3b8:	e1822003 	orr	r2, r2, r3
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e1823003 	orr	r3, r2, r3
     3c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3c8:	ea000008 	b	3f0 <memset+0x80>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e55b200d 	ldrb	r2, [fp, #-13]
     3d4:	e5c32000 	strb	r2, [r3]
     3d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3dc:	e2433001 	sub	r3, r3, #1
     3e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2833001 	add	r3, r3, #1
     3ec:	e50b3008 	str	r3, [fp, #-8]
     3f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f4:	e3530000 	cmp	r3, #0
     3f8:	0a000003 	beq	40c <memset+0x9c>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	e2033003 	and	r3, r3, #3
     404:	e3530000 	cmp	r3, #0
     408:	1affffef 	bne	3cc <memset+0x5c>
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e50b300c 	str	r3, [fp, #-12]
     414:	ea000008 	b	43c <memset+0xcc>
     418:	e51b300c 	ldr	r3, [fp, #-12]
     41c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     420:	e5832000 	str	r2, [r3]
     424:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     428:	e2433004 	sub	r3, r3, #4
     42c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     430:	e51b300c 	ldr	r3, [fp, #-12]
     434:	e2833004 	add	r3, r3, #4
     438:	e50b300c 	str	r3, [fp, #-12]
     43c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     440:	e3530003 	cmp	r3, #3
     444:	8afffff3 	bhi	418 <memset+0xa8>
     448:	e51b300c 	ldr	r3, [fp, #-12]
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	ea000008 	b	478 <memset+0x108>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     464:	e2433001 	sub	r3, r3, #1
     468:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e2833001 	add	r3, r3, #1
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     47c:	e3530000 	cmp	r3, #0
     480:	1afffff3 	bne	454 <memset+0xe4>
     484:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     488:	e1a00003 	mov	r0, r3
     48c:	e28bd000 	add	sp, fp, #0
     490:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     494:	e12fff1e 	bx	lr

00000498 <strchr>:
     498:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     49c:	e28db000 	add	fp, sp, #0
     4a0:	e24dd00c 	sub	sp, sp, #12
     4a4:	e50b0008 	str	r0, [fp, #-8]
     4a8:	e1a03001 	mov	r3, r1
     4ac:	e54b3009 	strb	r3, [fp, #-9]
     4b0:	ea000009 	b	4dc <strchr+0x44>
     4b4:	e51b3008 	ldr	r3, [fp, #-8]
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e55b2009 	ldrb	r2, [fp, #-9]
     4c0:	e1520003 	cmp	r2, r3
     4c4:	1a000001 	bne	4d0 <strchr+0x38>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	ea000007 	b	4f0 <strchr+0x58>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e2833001 	add	r3, r3, #1
     4d8:	e50b3008 	str	r3, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e5d33000 	ldrb	r3, [r3]
     4e4:	e3530000 	cmp	r3, #0
     4e8:	1afffff1 	bne	4b4 <strchr+0x1c>
     4ec:	e3a03000 	mov	r3, #0
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e28bd000 	add	sp, fp, #0
     4f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4fc:	e12fff1e 	bx	lr

00000500 <gets>:
     500:	e92d4800 	push	{fp, lr}
     504:	e28db004 	add	fp, sp, #4
     508:	e24dd018 	sub	sp, sp, #24
     50c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     510:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     514:	e3a03000 	mov	r3, #0
     518:	e50b3008 	str	r3, [fp, #-8]
     51c:	ea000016 	b	57c <gets+0x7c>
     520:	e24b300d 	sub	r3, fp, #13
     524:	e3a02001 	mov	r2, #1
     528:	e1a01003 	mov	r1, r3
     52c:	e3a00000 	mov	r0, #0
     530:	eb00009b 	bl	7a4 <read>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b300c 	ldr	r3, [fp, #-12]
     53c:	e3530000 	cmp	r3, #0
     540:	da000013 	ble	594 <gets+0x94>
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e2832001 	add	r2, r3, #1
     54c:	e50b2008 	str	r2, [fp, #-8]
     550:	e1a02003 	mov	r2, r3
     554:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     558:	e0833002 	add	r3, r3, r2
     55c:	e55b200d 	ldrb	r2, [fp, #-13]
     560:	e5c32000 	strb	r2, [r3]
     564:	e55b300d 	ldrb	r3, [fp, #-13]
     568:	e353000a 	cmp	r3, #10
     56c:	0a000009 	beq	598 <gets+0x98>
     570:	e55b300d 	ldrb	r3, [fp, #-13]
     574:	e353000d 	cmp	r3, #13
     578:	0a000006 	beq	598 <gets+0x98>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e2833001 	add	r3, r3, #1
     584:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     588:	e1520003 	cmp	r2, r3
     58c:	caffffe3 	bgt	520 <gets+0x20>
     590:	ea000000 	b	598 <gets+0x98>
     594:	e1a00000 	nop			@ (mov r0, r0)
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5a0:	e0823003 	add	r3, r2, r3
     5a4:	e3a02000 	mov	r2, #0
     5a8:	e5c32000 	strb	r2, [r3]
     5ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b0:	e1a00003 	mov	r0, r3
     5b4:	e24bd004 	sub	sp, fp, #4
     5b8:	e8bd8800 	pop	{fp, pc}

000005bc <stat>:
     5bc:	e92d4800 	push	{fp, lr}
     5c0:	e28db004 	add	fp, sp, #4
     5c4:	e24dd010 	sub	sp, sp, #16
     5c8:	e50b0010 	str	r0, [fp, #-16]
     5cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d0:	e3a01000 	mov	r1, #0
     5d4:	e51b0010 	ldr	r0, [fp, #-16]
     5d8:	eb00009e 	bl	858 <open>
     5dc:	e50b0008 	str	r0, [fp, #-8]
     5e0:	e51b3008 	ldr	r3, [fp, #-8]
     5e4:	e3530000 	cmp	r3, #0
     5e8:	aa000001 	bge	5f4 <stat+0x38>
     5ec:	e3e03000 	mvn	r3, #0
     5f0:	ea000006 	b	610 <stat+0x54>
     5f4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5f8:	e51b0008 	ldr	r0, [fp, #-8]
     5fc:	eb0000b0 	bl	8c4 <fstat>
     600:	e50b000c 	str	r0, [fp, #-12]
     604:	e51b0008 	ldr	r0, [fp, #-8]
     608:	eb000077 	bl	7ec <close>
     60c:	e51b300c 	ldr	r3, [fp, #-12]
     610:	e1a00003 	mov	r0, r3
     614:	e24bd004 	sub	sp, fp, #4
     618:	e8bd8800 	pop	{fp, pc}

0000061c <atoi>:
     61c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     620:	e28db000 	add	fp, sp, #0
     624:	e24dd014 	sub	sp, sp, #20
     628:	e50b0010 	str	r0, [fp, #-16]
     62c:	e3a03000 	mov	r3, #0
     630:	e50b3008 	str	r3, [fp, #-8]
     634:	ea00000c 	b	66c <atoi+0x50>
     638:	e51b2008 	ldr	r2, [fp, #-8]
     63c:	e1a03002 	mov	r3, r2
     640:	e1a03103 	lsl	r3, r3, #2
     644:	e0833002 	add	r3, r3, r2
     648:	e1a03083 	lsl	r3, r3, #1
     64c:	e1a01003 	mov	r1, r3
     650:	e51b3010 	ldr	r3, [fp, #-16]
     654:	e2832001 	add	r2, r3, #1
     658:	e50b2010 	str	r2, [fp, #-16]
     65c:	e5d33000 	ldrb	r3, [r3]
     660:	e0813003 	add	r3, r1, r3
     664:	e2433030 	sub	r3, r3, #48	@ 0x30
     668:	e50b3008 	str	r3, [fp, #-8]
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e5d33000 	ldrb	r3, [r3]
     674:	e353002f 	cmp	r3, #47	@ 0x2f
     678:	9a000003 	bls	68c <atoi+0x70>
     67c:	e51b3010 	ldr	r3, [fp, #-16]
     680:	e5d33000 	ldrb	r3, [r3]
     684:	e3530039 	cmp	r3, #57	@ 0x39
     688:	9affffea 	bls	638 <atoi+0x1c>
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e1a00003 	mov	r0, r3
     694:	e28bd000 	add	sp, fp, #0
     698:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <memmove>:
     6a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a4:	e28db000 	add	fp, sp, #0
     6a8:	e24dd01c 	sub	sp, sp, #28
     6ac:	e50b0010 	str	r0, [fp, #-16]
     6b0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6b4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6b8:	e51b3010 	ldr	r3, [fp, #-16]
     6bc:	e50b3008 	str	r3, [fp, #-8]
     6c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6c4:	e50b300c 	str	r3, [fp, #-12]
     6c8:	ea000007 	b	6ec <memmove+0x4c>
     6cc:	e51b200c 	ldr	r2, [fp, #-12]
     6d0:	e2823001 	add	r3, r2, #1
     6d4:	e50b300c 	str	r3, [fp, #-12]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e2831001 	add	r1, r3, #1
     6e0:	e50b1008 	str	r1, [fp, #-8]
     6e4:	e5d22000 	ldrb	r2, [r2]
     6e8:	e5c32000 	strb	r2, [r3]
     6ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6f0:	e2432001 	sub	r2, r3, #1
     6f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6f8:	e3530000 	cmp	r3, #0
     6fc:	cafffff2 	bgt	6cc <memmove+0x2c>
     700:	e51b3010 	ldr	r3, [fp, #-16]
     704:	e1a00003 	mov	r0, r3
     708:	e28bd000 	add	sp, fp, #0
     70c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <fork>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00001 	mov	r0, #1
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <exit>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00002 	mov	r0, #2
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <wait>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00003 	mov	r0, #3
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <pipe>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00004 	mov	r0, #4
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <read>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00005 	mov	r0, #5
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <write>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00010 	mov	r0, #16
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <close>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00015 	mov	r0, #21
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <kill>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00006 	mov	r0, #6
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <exec>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a00007 	mov	r0, #7
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <open>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a0000f 	mov	r0, #15
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <mknod>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00011 	mov	r0, #17
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <unlink>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00012 	mov	r0, #18
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <fstat>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00008 	mov	r0, #8
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <link>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00013 	mov	r0, #19
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <mkdir>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00014 	mov	r0, #20
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <chdir>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00009 	mov	r0, #9
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <dup>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a0000a 	mov	r0, #10
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <getpid>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a0000b 	mov	r0, #11
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <sbrk>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a0000c 	mov	r0, #12
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <sleep>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a0000d 	mov	r0, #13
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <uptime>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a0000e 	mov	r0, #14
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <ps>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00016 	mov	r0, #22
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <settickets>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00017 	mov	r0, #23
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <srand>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00018 	mov	r0, #24
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <getpinfo>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00019 	mov	r0, #25
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <putc>:
     a98:	e92d4800 	push	{fp, lr}
     a9c:	e28db004 	add	fp, sp, #4
     aa0:	e24dd008 	sub	sp, sp, #8
     aa4:	e50b0008 	str	r0, [fp, #-8]
     aa8:	e1a03001 	mov	r3, r1
     aac:	e54b3009 	strb	r3, [fp, #-9]
     ab0:	e24b3009 	sub	r3, fp, #9
     ab4:	e3a02001 	mov	r2, #1
     ab8:	e1a01003 	mov	r1, r3
     abc:	e51b0008 	ldr	r0, [fp, #-8]
     ac0:	ebffff40 	bl	7c8 <write>
     ac4:	e1a00000 	nop			@ (mov r0, r0)
     ac8:	e24bd004 	sub	sp, fp, #4
     acc:	e8bd8800 	pop	{fp, pc}

00000ad0 <printint>:
     ad0:	e92d4800 	push	{fp, lr}
     ad4:	e28db004 	add	fp, sp, #4
     ad8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     adc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ae0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ae4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ae8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     aec:	e3a03000 	mov	r3, #0
     af0:	e50b300c 	str	r3, [fp, #-12]
     af4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     af8:	e3530000 	cmp	r3, #0
     afc:	0a000008 	beq	b24 <printint+0x54>
     b00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b04:	e3530000 	cmp	r3, #0
     b08:	aa000005 	bge	b24 <printint+0x54>
     b0c:	e3a03001 	mov	r3, #1
     b10:	e50b300c 	str	r3, [fp, #-12]
     b14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b18:	e2633000 	rsb	r3, r3, #0
     b1c:	e50b3010 	str	r3, [fp, #-16]
     b20:	ea000001 	b	b2c <printint+0x5c>
     b24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b28:	e50b3010 	str	r3, [fp, #-16]
     b2c:	e3a03000 	mov	r3, #0
     b30:	e50b3008 	str	r3, [fp, #-8]
     b34:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b38:	e51b3010 	ldr	r3, [fp, #-16]
     b3c:	e1a01002 	mov	r1, r2
     b40:	e1a00003 	mov	r0, r3
     b44:	eb0001d5 	bl	12a0 <__aeabi_uidivmod>
     b48:	e1a03001 	mov	r3, r1
     b4c:	e1a01003 	mov	r1, r3
     b50:	e51b3008 	ldr	r3, [fp, #-8]
     b54:	e2832001 	add	r2, r3, #1
     b58:	e50b2008 	str	r2, [fp, #-8]
     b5c:	e59f20a0 	ldr	r2, [pc, #160]	@ c04 <printint+0x134>
     b60:	e7d22001 	ldrb	r2, [r2, r1]
     b64:	e2433004 	sub	r3, r3, #4
     b68:	e083300b 	add	r3, r3, fp
     b6c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b70:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b74:	e1a01003 	mov	r1, r3
     b78:	e51b0010 	ldr	r0, [fp, #-16]
     b7c:	eb00018a 	bl	11ac <__udivsi3>
     b80:	e1a03000 	mov	r3, r0
     b84:	e50b3010 	str	r3, [fp, #-16]
     b88:	e51b3010 	ldr	r3, [fp, #-16]
     b8c:	e3530000 	cmp	r3, #0
     b90:	1affffe7 	bne	b34 <printint+0x64>
     b94:	e51b300c 	ldr	r3, [fp, #-12]
     b98:	e3530000 	cmp	r3, #0
     b9c:	0a00000e 	beq	bdc <printint+0x10c>
     ba0:	e51b3008 	ldr	r3, [fp, #-8]
     ba4:	e2832001 	add	r2, r3, #1
     ba8:	e50b2008 	str	r2, [fp, #-8]
     bac:	e2433004 	sub	r3, r3, #4
     bb0:	e083300b 	add	r3, r3, fp
     bb4:	e3a0202d 	mov	r2, #45	@ 0x2d
     bb8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bbc:	ea000006 	b	bdc <printint+0x10c>
     bc0:	e24b2020 	sub	r2, fp, #32
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e0823003 	add	r3, r2, r3
     bcc:	e5d33000 	ldrb	r3, [r3]
     bd0:	e1a01003 	mov	r1, r3
     bd4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     bd8:	ebffffae 	bl	a98 <putc>
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e2433001 	sub	r3, r3, #1
     be4:	e50b3008 	str	r3, [fp, #-8]
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e3530000 	cmp	r3, #0
     bf0:	aafffff2 	bge	bc0 <printint+0xf0>
     bf4:	e1a00000 	nop			@ (mov r0, r0)
     bf8:	e1a00000 	nop			@ (mov r0, r0)
     bfc:	e24bd004 	sub	sp, fp, #4
     c00:	e8bd8800 	pop	{fp, pc}
     c04:	00001300 	.word	0x00001300

00000c08 <printf>:
     c08:	e92d000e 	push	{r1, r2, r3}
     c0c:	e92d4800 	push	{fp, lr}
     c10:	e28db004 	add	fp, sp, #4
     c14:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c18:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c1c:	e3a03000 	mov	r3, #0
     c20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c24:	e28b3008 	add	r3, fp, #8
     c28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c2c:	e3a03000 	mov	r3, #0
     c30:	e50b3010 	str	r3, [fp, #-16]
     c34:	ea000074 	b	e0c <printf+0x204>
     c38:	e59b2004 	ldr	r2, [fp, #4]
     c3c:	e51b3010 	ldr	r3, [fp, #-16]
     c40:	e0823003 	add	r3, r2, r3
     c44:	e5d33000 	ldrb	r3, [r3]
     c48:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c50:	e3530000 	cmp	r3, #0
     c54:	1a00000b 	bne	c88 <printf+0x80>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c5c:	e3530025 	cmp	r3, #37	@ 0x25
     c60:	1a000002 	bne	c70 <printf+0x68>
     c64:	e3a03025 	mov	r3, #37	@ 0x25
     c68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c6c:	ea000063 	b	e00 <printf+0x1f8>
     c70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c74:	e6ef3073 	uxtb	r3, r3
     c78:	e1a01003 	mov	r1, r3
     c7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c80:	ebffff84 	bl	a98 <putc>
     c84:	ea00005d 	b	e00 <printf+0x1f8>
     c88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c8c:	e3530025 	cmp	r3, #37	@ 0x25
     c90:	1a00005a 	bne	e00 <printf+0x1f8>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e3530064 	cmp	r3, #100	@ 0x64
     c9c:	1a00000a 	bne	ccc <printf+0xc4>
     ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e1a01003 	mov	r1, r3
     cac:	e3a03001 	mov	r3, #1
     cb0:	e3a0200a 	mov	r2, #10
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb8:	ebffff84 	bl	ad0 <printint>
     cbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc0:	e2833004 	add	r3, r3, #4
     cc4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cc8:	ea00004a 	b	df8 <printf+0x1f0>
     ccc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd0:	e3530078 	cmp	r3, #120	@ 0x78
     cd4:	0a000002 	beq	ce4 <printf+0xdc>
     cd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cdc:	e3530070 	cmp	r3, #112	@ 0x70
     ce0:	1a00000a 	bne	d10 <printf+0x108>
     ce4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e1a01003 	mov	r1, r3
     cf0:	e3a03000 	mov	r3, #0
     cf4:	e3a02010 	mov	r2, #16
     cf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cfc:	ebffff73 	bl	ad0 <printint>
     d00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d04:	e2833004 	add	r3, r3, #4
     d08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	ea000039 	b	df8 <printf+0x1f0>
     d10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d14:	e3530073 	cmp	r3, #115	@ 0x73
     d18:	1a000018 	bne	d80 <printf+0x178>
     d1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d20:	e5933000 	ldr	r3, [r3]
     d24:	e50b300c 	str	r3, [fp, #-12]
     d28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	e2833004 	add	r3, r3, #4
     d30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d34:	e51b300c 	ldr	r3, [fp, #-12]
     d38:	e3530000 	cmp	r3, #0
     d3c:	1a00000a 	bne	d6c <printf+0x164>
     d40:	e59f30f4 	ldr	r3, [pc, #244]	@ e3c <printf+0x234>
     d44:	e50b300c 	str	r3, [fp, #-12]
     d48:	ea000007 	b	d6c <printf+0x164>
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e5d33000 	ldrb	r3, [r3]
     d54:	e1a01003 	mov	r1, r3
     d58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d5c:	ebffff4d 	bl	a98 <putc>
     d60:	e51b300c 	ldr	r3, [fp, #-12]
     d64:	e2833001 	add	r3, r3, #1
     d68:	e50b300c 	str	r3, [fp, #-12]
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e5d33000 	ldrb	r3, [r3]
     d74:	e3530000 	cmp	r3, #0
     d78:	1afffff3 	bne	d4c <printf+0x144>
     d7c:	ea00001d 	b	df8 <printf+0x1f0>
     d80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d84:	e3530063 	cmp	r3, #99	@ 0x63
     d88:	1a000009 	bne	db4 <printf+0x1ac>
     d8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d90:	e5933000 	ldr	r3, [r3]
     d94:	e6ef3073 	uxtb	r3, r3
     d98:	e1a01003 	mov	r1, r3
     d9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da0:	ebffff3c 	bl	a98 <putc>
     da4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     da8:	e2833004 	add	r3, r3, #4
     dac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     db0:	ea000010 	b	df8 <printf+0x1f0>
     db4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db8:	e3530025 	cmp	r3, #37	@ 0x25
     dbc:	1a000005 	bne	dd8 <printf+0x1d0>
     dc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc4:	e6ef3073 	uxtb	r3, r3
     dc8:	e1a01003 	mov	r1, r3
     dcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd0:	ebffff30 	bl	a98 <putc>
     dd4:	ea000007 	b	df8 <printf+0x1f0>
     dd8:	e3a01025 	mov	r1, #37	@ 0x25
     ddc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     de0:	ebffff2c 	bl	a98 <putc>
     de4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de8:	e6ef3073 	uxtb	r3, r3
     dec:	e1a01003 	mov	r1, r3
     df0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     df4:	ebffff27 	bl	a98 <putc>
     df8:	e3a03000 	mov	r3, #0
     dfc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e00:	e51b3010 	ldr	r3, [fp, #-16]
     e04:	e2833001 	add	r3, r3, #1
     e08:	e50b3010 	str	r3, [fp, #-16]
     e0c:	e59b2004 	ldr	r2, [fp, #4]
     e10:	e51b3010 	ldr	r3, [fp, #-16]
     e14:	e0823003 	add	r3, r2, r3
     e18:	e5d33000 	ldrb	r3, [r3]
     e1c:	e3530000 	cmp	r3, #0
     e20:	1affff84 	bne	c38 <printf+0x30>
     e24:	e1a00000 	nop			@ (mov r0, r0)
     e28:	e1a00000 	nop			@ (mov r0, r0)
     e2c:	e24bd004 	sub	sp, fp, #4
     e30:	e8bd4800 	pop	{fp, lr}
     e34:	e28dd00c 	add	sp, sp, #12
     e38:	e12fff1e 	bx	lr
     e3c:	000012f8 	.word	0x000012f8

00000e40 <free>:
     e40:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e44:	e28db000 	add	fp, sp, #0
     e48:	e24dd014 	sub	sp, sp, #20
     e4c:	e50b0010 	str	r0, [fp, #-16]
     e50:	e51b3010 	ldr	r3, [fp, #-16]
     e54:	e2433008 	sub	r3, r3, #8
     e58:	e50b300c 	str	r3, [fp, #-12]
     e5c:	e59f3154 	ldr	r3, [pc, #340]	@ fb8 <free+0x178>
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e50b3008 	str	r3, [fp, #-8]
     e68:	ea000010 	b	eb0 <free+0x70>
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e5933000 	ldr	r3, [r3]
     e74:	e51b2008 	ldr	r2, [fp, #-8]
     e78:	e1520003 	cmp	r2, r3
     e7c:	3a000008 	bcc	ea4 <free+0x64>
     e80:	e51b200c 	ldr	r2, [fp, #-12]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e1520003 	cmp	r2, r3
     e8c:	8a000010 	bhi	ed4 <free+0x94>
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5933000 	ldr	r3, [r3]
     e98:	e51b200c 	ldr	r2, [fp, #-12]
     e9c:	e1520003 	cmp	r2, r3
     ea0:	3a00000b 	bcc	ed4 <free+0x94>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e50b3008 	str	r3, [fp, #-8]
     eb0:	e51b200c 	ldr	r2, [fp, #-12]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e1520003 	cmp	r2, r3
     ebc:	9affffea 	bls	e6c <free+0x2c>
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e51b200c 	ldr	r2, [fp, #-12]
     ecc:	e1520003 	cmp	r2, r3
     ed0:	2affffe5 	bcs	e6c <free+0x2c>
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5933004 	ldr	r3, [r3, #4]
     edc:	e1a03183 	lsl	r3, r3, #3
     ee0:	e51b200c 	ldr	r2, [fp, #-12]
     ee4:	e0822003 	add	r2, r2, r3
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5933000 	ldr	r3, [r3]
     ef0:	e1520003 	cmp	r2, r3
     ef4:	1a00000d 	bne	f30 <free+0xf0>
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5932004 	ldr	r2, [r3, #4]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e5933004 	ldr	r3, [r3, #4]
     f0c:	e0822003 	add	r2, r2, r3
     f10:	e51b300c 	ldr	r3, [fp, #-12]
     f14:	e5832004 	str	r2, [r3, #4]
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e5932000 	ldr	r2, [r3]
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e5832000 	str	r2, [r3]
     f2c:	ea000003 	b	f40 <free+0x100>
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e5932000 	ldr	r2, [r3]
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e5832000 	str	r2, [r3]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5933004 	ldr	r3, [r3, #4]
     f48:	e1a03183 	lsl	r3, r3, #3
     f4c:	e51b2008 	ldr	r2, [fp, #-8]
     f50:	e0823003 	add	r3, r2, r3
     f54:	e51b200c 	ldr	r2, [fp, #-12]
     f58:	e1520003 	cmp	r2, r3
     f5c:	1a00000b 	bne	f90 <free+0x150>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5932004 	ldr	r2, [r3, #4]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5933004 	ldr	r3, [r3, #4]
     f70:	e0822003 	add	r2, r2, r3
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5832004 	str	r2, [r3, #4]
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5932000 	ldr	r2, [r3]
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e5832000 	str	r2, [r3]
     f8c:	ea000002 	b	f9c <free+0x15c>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e51b200c 	ldr	r2, [fp, #-12]
     f98:	e5832000 	str	r2, [r3]
     f9c:	e59f2014 	ldr	r2, [pc, #20]	@ fb8 <free+0x178>
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5823000 	str	r3, [r2]
     fa8:	e1a00000 	nop			@ (mov r0, r0)
     fac:	e28bd000 	add	sp, fp, #0
     fb0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fb4:	e12fff1e 	bx	lr
     fb8:	0000131c 	.word	0x0000131c

00000fbc <morecore>:
     fbc:	e92d4800 	push	{fp, lr}
     fc0:	e28db004 	add	fp, sp, #4
     fc4:	e24dd010 	sub	sp, sp, #16
     fc8:	e50b0010 	str	r0, [fp, #-16]
     fcc:	e51b3010 	ldr	r3, [fp, #-16]
     fd0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     fd4:	2a000001 	bcs	fe0 <morecore+0x24>
     fd8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     fdc:	e50b3010 	str	r3, [fp, #-16]
     fe0:	e51b3010 	ldr	r3, [fp, #-16]
     fe4:	e1a03183 	lsl	r3, r3, #3
     fe8:	e1a00003 	mov	r0, r3
     fec:	ebfffe6a 	bl	99c <sbrk>
     ff0:	e50b0008 	str	r0, [fp, #-8]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e3730001 	cmn	r3, #1
     ffc:	1a000001 	bne	1008 <morecore+0x4c>
    1000:	e3a03000 	mov	r3, #0
    1004:	ea00000a 	b	1034 <morecore+0x78>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e50b300c 	str	r3, [fp, #-12]
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e51b2010 	ldr	r2, [fp, #-16]
    1018:	e5832004 	str	r2, [r3, #4]
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e2833008 	add	r3, r3, #8
    1024:	e1a00003 	mov	r0, r3
    1028:	ebffff84 	bl	e40 <free>
    102c:	e59f300c 	ldr	r3, [pc, #12]	@ 1040 <morecore+0x84>
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e1a00003 	mov	r0, r3
    1038:	e24bd004 	sub	sp, fp, #4
    103c:	e8bd8800 	pop	{fp, pc}
    1040:	0000131c 	.word	0x0000131c

00001044 <malloc>:
    1044:	e92d4800 	push	{fp, lr}
    1048:	e28db004 	add	fp, sp, #4
    104c:	e24dd018 	sub	sp, sp, #24
    1050:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1054:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e2833007 	add	r3, r3, #7
    105c:	e1a031a3 	lsr	r3, r3, #3
    1060:	e2833001 	add	r3, r3, #1
    1064:	e50b3010 	str	r3, [fp, #-16]
    1068:	e59f3134 	ldr	r3, [pc, #308]	@ 11a4 <malloc+0x160>
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e50b300c 	str	r3, [fp, #-12]
    1074:	e51b300c 	ldr	r3, [fp, #-12]
    1078:	e3530000 	cmp	r3, #0
    107c:	1a00000b 	bne	10b0 <malloc+0x6c>
    1080:	e59f3120 	ldr	r3, [pc, #288]	@ 11a8 <malloc+0x164>
    1084:	e50b300c 	str	r3, [fp, #-12]
    1088:	e59f2114 	ldr	r2, [pc, #276]	@ 11a4 <malloc+0x160>
    108c:	e51b300c 	ldr	r3, [fp, #-12]
    1090:	e5823000 	str	r3, [r2]
    1094:	e59f3108 	ldr	r3, [pc, #264]	@ 11a4 <malloc+0x160>
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e59f2104 	ldr	r2, [pc, #260]	@ 11a8 <malloc+0x164>
    10a0:	e5823000 	str	r3, [r2]
    10a4:	e59f30fc 	ldr	r3, [pc, #252]	@ 11a8 <malloc+0x164>
    10a8:	e3a02000 	mov	r2, #0
    10ac:	e5832004 	str	r2, [r3, #4]
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e50b3008 	str	r3, [fp, #-8]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5933004 	ldr	r3, [r3, #4]
    10c4:	e51b2010 	ldr	r2, [fp, #-16]
    10c8:	e1520003 	cmp	r2, r3
    10cc:	8a00001e 	bhi	114c <malloc+0x108>
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e5933004 	ldr	r3, [r3, #4]
    10d8:	e51b2010 	ldr	r2, [fp, #-16]
    10dc:	e1520003 	cmp	r2, r3
    10e0:	1a000004 	bne	10f8 <malloc+0xb4>
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e5932000 	ldr	r2, [r3]
    10ec:	e51b300c 	ldr	r3, [fp, #-12]
    10f0:	e5832000 	str	r2, [r3]
    10f4:	ea00000e 	b	1134 <malloc+0xf0>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e5932004 	ldr	r2, [r3, #4]
    1100:	e51b3010 	ldr	r3, [fp, #-16]
    1104:	e0422003 	sub	r2, r2, r3
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e5832004 	str	r2, [r3, #4]
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5933004 	ldr	r3, [r3, #4]
    1118:	e1a03183 	lsl	r3, r3, #3
    111c:	e51b2008 	ldr	r2, [fp, #-8]
    1120:	e0823003 	add	r3, r2, r3
    1124:	e50b3008 	str	r3, [fp, #-8]
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e51b2010 	ldr	r2, [fp, #-16]
    1130:	e5832004 	str	r2, [r3, #4]
    1134:	e59f2068 	ldr	r2, [pc, #104]	@ 11a4 <malloc+0x160>
    1138:	e51b300c 	ldr	r3, [fp, #-12]
    113c:	e5823000 	str	r3, [r2]
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e2833008 	add	r3, r3, #8
    1148:	ea000012 	b	1198 <malloc+0x154>
    114c:	e59f3050 	ldr	r3, [pc, #80]	@ 11a4 <malloc+0x160>
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e51b2008 	ldr	r2, [fp, #-8]
    1158:	e1520003 	cmp	r2, r3
    115c:	1a000007 	bne	1180 <malloc+0x13c>
    1160:	e51b0010 	ldr	r0, [fp, #-16]
    1164:	ebffff94 	bl	fbc <morecore>
    1168:	e50b0008 	str	r0, [fp, #-8]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e3530000 	cmp	r3, #0
    1174:	1a000001 	bne	1180 <malloc+0x13c>
    1178:	e3a03000 	mov	r3, #0
    117c:	ea000005 	b	1198 <malloc+0x154>
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e50b300c 	str	r3, [fp, #-12]
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e5933000 	ldr	r3, [r3]
    1190:	e50b3008 	str	r3, [fp, #-8]
    1194:	eaffffc8 	b	10bc <malloc+0x78>
    1198:	e1a00003 	mov	r0, r3
    119c:	e24bd004 	sub	sp, fp, #4
    11a0:	e8bd8800 	pop	{fp, pc}
    11a4:	0000131c 	.word	0x0000131c
    11a8:	00001314 	.word	0x00001314

000011ac <__udivsi3>:
    11ac:	e2512001 	subs	r2, r1, #1
    11b0:	012fff1e 	bxeq	lr
    11b4:	3a000036 	bcc	1294 <__udivsi3+0xe8>
    11b8:	e1500001 	cmp	r0, r1
    11bc:	9a000022 	bls	124c <__udivsi3+0xa0>
    11c0:	e1110002 	tst	r1, r2
    11c4:	0a000023 	beq	1258 <__udivsi3+0xac>
    11c8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11cc:	01a01181 	lsleq	r1, r1, #3
    11d0:	03a03008 	moveq	r3, #8
    11d4:	13a03001 	movne	r3, #1
    11d8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    11dc:	31510000 	cmpcc	r1, r0
    11e0:	31a01201 	lslcc	r1, r1, #4
    11e4:	31a03203 	lslcc	r3, r3, #4
    11e8:	3afffffa 	bcc	11d8 <__udivsi3+0x2c>
    11ec:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11f0:	31510000 	cmpcc	r1, r0
    11f4:	31a01081 	lslcc	r1, r1, #1
    11f8:	31a03083 	lslcc	r3, r3, #1
    11fc:	3afffffa 	bcc	11ec <__udivsi3+0x40>
    1200:	e3a02000 	mov	r2, #0
    1204:	e1500001 	cmp	r0, r1
    1208:	20400001 	subcs	r0, r0, r1
    120c:	21822003 	orrcs	r2, r2, r3
    1210:	e15000a1 	cmp	r0, r1, lsr #1
    1214:	204000a1 	subcs	r0, r0, r1, lsr #1
    1218:	218220a3 	orrcs	r2, r2, r3, lsr #1
    121c:	e1500121 	cmp	r0, r1, lsr #2
    1220:	20400121 	subcs	r0, r0, r1, lsr #2
    1224:	21822123 	orrcs	r2, r2, r3, lsr #2
    1228:	e15001a1 	cmp	r0, r1, lsr #3
    122c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1230:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1234:	e3500000 	cmp	r0, #0
    1238:	11b03223 	lsrsne	r3, r3, #4
    123c:	11a01221 	lsrne	r1, r1, #4
    1240:	1affffef 	bne	1204 <__udivsi3+0x58>
    1244:	e1a00002 	mov	r0, r2
    1248:	e12fff1e 	bx	lr
    124c:	03a00001 	moveq	r0, #1
    1250:	13a00000 	movne	r0, #0
    1254:	e12fff1e 	bx	lr
    1258:	e3510801 	cmp	r1, #65536	@ 0x10000
    125c:	21a01821 	lsrcs	r1, r1, #16
    1260:	23a02010 	movcs	r2, #16
    1264:	33a02000 	movcc	r2, #0
    1268:	e3510c01 	cmp	r1, #256	@ 0x100
    126c:	21a01421 	lsrcs	r1, r1, #8
    1270:	22822008 	addcs	r2, r2, #8
    1274:	e3510010 	cmp	r1, #16
    1278:	21a01221 	lsrcs	r1, r1, #4
    127c:	22822004 	addcs	r2, r2, #4
    1280:	e3510004 	cmp	r1, #4
    1284:	82822003 	addhi	r2, r2, #3
    1288:	908220a1 	addls	r2, r2, r1, lsr #1
    128c:	e1a00230 	lsr	r0, r0, r2
    1290:	e12fff1e 	bx	lr
    1294:	e3500000 	cmp	r0, #0
    1298:	13e00000 	mvnne	r0, #0
    129c:	ea000007 	b	12c0 <__aeabi_idiv0>

000012a0 <__aeabi_uidivmod>:
    12a0:	e3510000 	cmp	r1, #0
    12a4:	0afffffa 	beq	1294 <__udivsi3+0xe8>
    12a8:	e92d4003 	push	{r0, r1, lr}
    12ac:	ebffffbe 	bl	11ac <__udivsi3>
    12b0:	e8bd4006 	pop	{r1, r2, lr}
    12b4:	e0030092 	mul	r3, r2, r0
    12b8:	e0411003 	sub	r1, r1, r3
    12bc:	e12fff1e 	bx	lr

000012c0 <__aeabi_idiv0>:
    12c0:	e12fff1e 	bx	lr
