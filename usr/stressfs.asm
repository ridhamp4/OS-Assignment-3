
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
      30:	eb000318 	bl	c98 <printf>
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
      90:	eb000300 	bl	c98 <printf>
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
     108:	eb0002e2 	bl	c98 <printf>
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
     168:	0000137c 	.word	0x0000137c
     16c:	00001354 	.word	0x00001354
     170:	00001368 	.word	0x00001368
     174:	00000202 	.word	0x00000202
     178:	00001374 	.word	0x00001374

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

00000a98 <printpt>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a0001a 	mov	r0, #26
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <pgpte>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a0001b 	mov	r0, #27
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <ugetpid>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a0001c 	mov	r0, #28
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <kpt>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a0001d 	mov	r0, #29
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <putc>:
     b28:	e92d4800 	push	{fp, lr}
     b2c:	e28db004 	add	fp, sp, #4
     b30:	e24dd008 	sub	sp, sp, #8
     b34:	e50b0008 	str	r0, [fp, #-8]
     b38:	e1a03001 	mov	r3, r1
     b3c:	e54b3009 	strb	r3, [fp, #-9]
     b40:	e24b3009 	sub	r3, fp, #9
     b44:	e3a02001 	mov	r2, #1
     b48:	e1a01003 	mov	r1, r3
     b4c:	e51b0008 	ldr	r0, [fp, #-8]
     b50:	ebffff1c 	bl	7c8 <write>
     b54:	e1a00000 	nop			@ (mov r0, r0)
     b58:	e24bd004 	sub	sp, fp, #4
     b5c:	e8bd8800 	pop	{fp, pc}

00000b60 <printint>:
     b60:	e92d4800 	push	{fp, lr}
     b64:	e28db004 	add	fp, sp, #4
     b68:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b6c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b70:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b74:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b78:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b7c:	e3a03000 	mov	r3, #0
     b80:	e50b300c 	str	r3, [fp, #-12]
     b84:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b88:	e3530000 	cmp	r3, #0
     b8c:	0a000008 	beq	bb4 <printint+0x54>
     b90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b94:	e3530000 	cmp	r3, #0
     b98:	aa000005 	bge	bb4 <printint+0x54>
     b9c:	e3a03001 	mov	r3, #1
     ba0:	e50b300c 	str	r3, [fp, #-12]
     ba4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ba8:	e2633000 	rsb	r3, r3, #0
     bac:	e50b3010 	str	r3, [fp, #-16]
     bb0:	ea000001 	b	bbc <printint+0x5c>
     bb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bb8:	e50b3010 	str	r3, [fp, #-16]
     bbc:	e3a03000 	mov	r3, #0
     bc0:	e50b3008 	str	r3, [fp, #-8]
     bc4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     bc8:	e51b3010 	ldr	r3, [fp, #-16]
     bcc:	e1a01002 	mov	r1, r2
     bd0:	e1a00003 	mov	r0, r3
     bd4:	eb0001d5 	bl	1330 <__aeabi_uidivmod>
     bd8:	e1a03001 	mov	r3, r1
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b3008 	ldr	r3, [fp, #-8]
     be4:	e2832001 	add	r2, r3, #1
     be8:	e50b2008 	str	r2, [fp, #-8]
     bec:	e59f20a0 	ldr	r2, [pc, #160]	@ c94 <printint+0x134>
     bf0:	e7d22001 	ldrb	r2, [r2, r1]
     bf4:	e2433004 	sub	r3, r3, #4
     bf8:	e083300b 	add	r3, r3, fp
     bfc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c00:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c04:	e1a01003 	mov	r1, r3
     c08:	e51b0010 	ldr	r0, [fp, #-16]
     c0c:	eb00018a 	bl	123c <__udivsi3>
     c10:	e1a03000 	mov	r3, r0
     c14:	e50b3010 	str	r3, [fp, #-16]
     c18:	e51b3010 	ldr	r3, [fp, #-16]
     c1c:	e3530000 	cmp	r3, #0
     c20:	1affffe7 	bne	bc4 <printint+0x64>
     c24:	e51b300c 	ldr	r3, [fp, #-12]
     c28:	e3530000 	cmp	r3, #0
     c2c:	0a00000e 	beq	c6c <printint+0x10c>
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e2832001 	add	r2, r3, #1
     c38:	e50b2008 	str	r2, [fp, #-8]
     c3c:	e2433004 	sub	r3, r3, #4
     c40:	e083300b 	add	r3, r3, fp
     c44:	e3a0202d 	mov	r2, #45	@ 0x2d
     c48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c4c:	ea000006 	b	c6c <printint+0x10c>
     c50:	e24b2020 	sub	r2, fp, #32
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e0823003 	add	r3, r2, r3
     c5c:	e5d33000 	ldrb	r3, [r3]
     c60:	e1a01003 	mov	r1, r3
     c64:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c68:	ebffffae 	bl	b28 <putc>
     c6c:	e51b3008 	ldr	r3, [fp, #-8]
     c70:	e2433001 	sub	r3, r3, #1
     c74:	e50b3008 	str	r3, [fp, #-8]
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e3530000 	cmp	r3, #0
     c80:	aafffff2 	bge	c50 <printint+0xf0>
     c84:	e1a00000 	nop			@ (mov r0, r0)
     c88:	e1a00000 	nop			@ (mov r0, r0)
     c8c:	e24bd004 	sub	sp, fp, #4
     c90:	e8bd8800 	pop	{fp, pc}
     c94:	00001390 	.word	0x00001390

00000c98 <printf>:
     c98:	e92d000e 	push	{r1, r2, r3}
     c9c:	e92d4800 	push	{fp, lr}
     ca0:	e28db004 	add	fp, sp, #4
     ca4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ca8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cac:	e3a03000 	mov	r3, #0
     cb0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cb4:	e28b3008 	add	r3, fp, #8
     cb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cbc:	e3a03000 	mov	r3, #0
     cc0:	e50b3010 	str	r3, [fp, #-16]
     cc4:	ea000074 	b	e9c <printf+0x204>
     cc8:	e59b2004 	ldr	r2, [fp, #4]
     ccc:	e51b3010 	ldr	r3, [fp, #-16]
     cd0:	e0823003 	add	r3, r2, r3
     cd4:	e5d33000 	ldrb	r3, [r3]
     cd8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     cdc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ce0:	e3530000 	cmp	r3, #0
     ce4:	1a00000b 	bne	d18 <printf+0x80>
     ce8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cec:	e3530025 	cmp	r3, #37	@ 0x25
     cf0:	1a000002 	bne	d00 <printf+0x68>
     cf4:	e3a03025 	mov	r3, #37	@ 0x25
     cf8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cfc:	ea000063 	b	e90 <printf+0x1f8>
     d00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d04:	e6ef3073 	uxtb	r3, r3
     d08:	e1a01003 	mov	r1, r3
     d0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d10:	ebffff84 	bl	b28 <putc>
     d14:	ea00005d 	b	e90 <printf+0x1f8>
     d18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d1c:	e3530025 	cmp	r3, #37	@ 0x25
     d20:	1a00005a 	bne	e90 <printf+0x1f8>
     d24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d28:	e3530064 	cmp	r3, #100	@ 0x64
     d2c:	1a00000a 	bne	d5c <printf+0xc4>
     d30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e1a01003 	mov	r1, r3
     d3c:	e3a03001 	mov	r3, #1
     d40:	e3a0200a 	mov	r2, #10
     d44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d48:	ebffff84 	bl	b60 <printint>
     d4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e2833004 	add	r3, r3, #4
     d54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d58:	ea00004a 	b	e88 <printf+0x1f0>
     d5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d60:	e3530078 	cmp	r3, #120	@ 0x78
     d64:	0a000002 	beq	d74 <printf+0xdc>
     d68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d6c:	e3530070 	cmp	r3, #112	@ 0x70
     d70:	1a00000a 	bne	da0 <printf+0x108>
     d74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d78:	e5933000 	ldr	r3, [r3]
     d7c:	e1a01003 	mov	r1, r3
     d80:	e3a03000 	mov	r3, #0
     d84:	e3a02010 	mov	r2, #16
     d88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d8c:	ebffff73 	bl	b60 <printint>
     d90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d94:	e2833004 	add	r3, r3, #4
     d98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d9c:	ea000039 	b	e88 <printf+0x1f0>
     da0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da4:	e3530073 	cmp	r3, #115	@ 0x73
     da8:	1a000018 	bne	e10 <printf+0x178>
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e50b300c 	str	r3, [fp, #-12]
     db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dbc:	e2833004 	add	r3, r3, #4
     dc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dc4:	e51b300c 	ldr	r3, [fp, #-12]
     dc8:	e3530000 	cmp	r3, #0
     dcc:	1a00000a 	bne	dfc <printf+0x164>
     dd0:	e59f30f4 	ldr	r3, [pc, #244]	@ ecc <printf+0x234>
     dd4:	e50b300c 	str	r3, [fp, #-12]
     dd8:	ea000007 	b	dfc <printf+0x164>
     ddc:	e51b300c 	ldr	r3, [fp, #-12]
     de0:	e5d33000 	ldrb	r3, [r3]
     de4:	e1a01003 	mov	r1, r3
     de8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dec:	ebffff4d 	bl	b28 <putc>
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e2833001 	add	r3, r3, #1
     df8:	e50b300c 	str	r3, [fp, #-12]
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5d33000 	ldrb	r3, [r3]
     e04:	e3530000 	cmp	r3, #0
     e08:	1afffff3 	bne	ddc <printf+0x144>
     e0c:	ea00001d 	b	e88 <printf+0x1f0>
     e10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e14:	e3530063 	cmp	r3, #99	@ 0x63
     e18:	1a000009 	bne	e44 <printf+0x1ac>
     e1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e20:	e5933000 	ldr	r3, [r3]
     e24:	e6ef3073 	uxtb	r3, r3
     e28:	e1a01003 	mov	r1, r3
     e2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e30:	ebffff3c 	bl	b28 <putc>
     e34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e38:	e2833004 	add	r3, r3, #4
     e3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e40:	ea000010 	b	e88 <printf+0x1f0>
     e44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e48:	e3530025 	cmp	r3, #37	@ 0x25
     e4c:	1a000005 	bne	e68 <printf+0x1d0>
     e50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e54:	e6ef3073 	uxtb	r3, r3
     e58:	e1a01003 	mov	r1, r3
     e5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e60:	ebffff30 	bl	b28 <putc>
     e64:	ea000007 	b	e88 <printf+0x1f0>
     e68:	e3a01025 	mov	r1, #37	@ 0x25
     e6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e70:	ebffff2c 	bl	b28 <putc>
     e74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e78:	e6ef3073 	uxtb	r3, r3
     e7c:	e1a01003 	mov	r1, r3
     e80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e84:	ebffff27 	bl	b28 <putc>
     e88:	e3a03000 	mov	r3, #0
     e8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e90:	e51b3010 	ldr	r3, [fp, #-16]
     e94:	e2833001 	add	r3, r3, #1
     e98:	e50b3010 	str	r3, [fp, #-16]
     e9c:	e59b2004 	ldr	r2, [fp, #4]
     ea0:	e51b3010 	ldr	r3, [fp, #-16]
     ea4:	e0823003 	add	r3, r2, r3
     ea8:	e5d33000 	ldrb	r3, [r3]
     eac:	e3530000 	cmp	r3, #0
     eb0:	1affff84 	bne	cc8 <printf+0x30>
     eb4:	e1a00000 	nop			@ (mov r0, r0)
     eb8:	e1a00000 	nop			@ (mov r0, r0)
     ebc:	e24bd004 	sub	sp, fp, #4
     ec0:	e8bd4800 	pop	{fp, lr}
     ec4:	e28dd00c 	add	sp, sp, #12
     ec8:	e12fff1e 	bx	lr
     ecc:	00001388 	.word	0x00001388

00000ed0 <free>:
     ed0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ed4:	e28db000 	add	fp, sp, #0
     ed8:	e24dd014 	sub	sp, sp, #20
     edc:	e50b0010 	str	r0, [fp, #-16]
     ee0:	e51b3010 	ldr	r3, [fp, #-16]
     ee4:	e2433008 	sub	r3, r3, #8
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e59f3154 	ldr	r3, [pc, #340]	@ 1048 <free+0x178>
     ef0:	e5933000 	ldr	r3, [r3]
     ef4:	e50b3008 	str	r3, [fp, #-8]
     ef8:	ea000010 	b	f40 <free+0x70>
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933000 	ldr	r3, [r3]
     f04:	e51b2008 	ldr	r2, [fp, #-8]
     f08:	e1520003 	cmp	r2, r3
     f0c:	3a000008 	bcc	f34 <free+0x64>
     f10:	e51b200c 	ldr	r2, [fp, #-12]
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e1520003 	cmp	r2, r3
     f1c:	8a000010 	bhi	f64 <free+0x94>
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e51b200c 	ldr	r2, [fp, #-12]
     f2c:	e1520003 	cmp	r2, r3
     f30:	3a00000b 	bcc	f64 <free+0x94>
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e5933000 	ldr	r3, [r3]
     f3c:	e50b3008 	str	r3, [fp, #-8]
     f40:	e51b200c 	ldr	r2, [fp, #-12]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e1520003 	cmp	r2, r3
     f4c:	9affffea 	bls	efc <free+0x2c>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e51b200c 	ldr	r2, [fp, #-12]
     f5c:	e1520003 	cmp	r2, r3
     f60:	2affffe5 	bcs	efc <free+0x2c>
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5933004 	ldr	r3, [r3, #4]
     f6c:	e1a03183 	lsl	r3, r3, #3
     f70:	e51b200c 	ldr	r2, [fp, #-12]
     f74:	e0822003 	add	r2, r2, r3
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5933000 	ldr	r3, [r3]
     f80:	e1520003 	cmp	r2, r3
     f84:	1a00000d 	bne	fc0 <free+0xf0>
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5932004 	ldr	r2, [r3, #4]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e5933004 	ldr	r3, [r3, #4]
     f9c:	e0822003 	add	r2, r2, r3
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e5832004 	str	r2, [r3, #4]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5933000 	ldr	r3, [r3]
     fb0:	e5932000 	ldr	r2, [r3]
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5832000 	str	r2, [r3]
     fbc:	ea000003 	b	fd0 <free+0x100>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5932000 	ldr	r2, [r3]
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5832000 	str	r2, [r3]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5933004 	ldr	r3, [r3, #4]
     fd8:	e1a03183 	lsl	r3, r3, #3
     fdc:	e51b2008 	ldr	r2, [fp, #-8]
     fe0:	e0823003 	add	r3, r2, r3
     fe4:	e51b200c 	ldr	r2, [fp, #-12]
     fe8:	e1520003 	cmp	r2, r3
     fec:	1a00000b 	bne	1020 <free+0x150>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5932004 	ldr	r2, [r3, #4]
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5933004 	ldr	r3, [r3, #4]
    1000:	e0822003 	add	r2, r2, r3
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5832004 	str	r2, [r3, #4]
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5932000 	ldr	r2, [r3]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5832000 	str	r2, [r3]
    101c:	ea000002 	b	102c <free+0x15c>
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e51b200c 	ldr	r2, [fp, #-12]
    1028:	e5832000 	str	r2, [r3]
    102c:	e59f2014 	ldr	r2, [pc, #20]	@ 1048 <free+0x178>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5823000 	str	r3, [r2]
    1038:	e1a00000 	nop			@ (mov r0, r0)
    103c:	e28bd000 	add	sp, fp, #0
    1040:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1044:	e12fff1e 	bx	lr
    1048:	000013ac 	.word	0x000013ac

0000104c <morecore>:
    104c:	e92d4800 	push	{fp, lr}
    1050:	e28db004 	add	fp, sp, #4
    1054:	e24dd010 	sub	sp, sp, #16
    1058:	e50b0010 	str	r0, [fp, #-16]
    105c:	e51b3010 	ldr	r3, [fp, #-16]
    1060:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1064:	2a000001 	bcs	1070 <morecore+0x24>
    1068:	e3a03a01 	mov	r3, #4096	@ 0x1000
    106c:	e50b3010 	str	r3, [fp, #-16]
    1070:	e51b3010 	ldr	r3, [fp, #-16]
    1074:	e1a03183 	lsl	r3, r3, #3
    1078:	e1a00003 	mov	r0, r3
    107c:	ebfffe46 	bl	99c <sbrk>
    1080:	e50b0008 	str	r0, [fp, #-8]
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e3730001 	cmn	r3, #1
    108c:	1a000001 	bne	1098 <morecore+0x4c>
    1090:	e3a03000 	mov	r3, #0
    1094:	ea00000a 	b	10c4 <morecore+0x78>
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e50b300c 	str	r3, [fp, #-12]
    10a0:	e51b300c 	ldr	r3, [fp, #-12]
    10a4:	e51b2010 	ldr	r2, [fp, #-16]
    10a8:	e5832004 	str	r2, [r3, #4]
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e2833008 	add	r3, r3, #8
    10b4:	e1a00003 	mov	r0, r3
    10b8:	ebffff84 	bl	ed0 <free>
    10bc:	e59f300c 	ldr	r3, [pc, #12]	@ 10d0 <morecore+0x84>
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e1a00003 	mov	r0, r3
    10c8:	e24bd004 	sub	sp, fp, #4
    10cc:	e8bd8800 	pop	{fp, pc}
    10d0:	000013ac 	.word	0x000013ac

000010d4 <malloc>:
    10d4:	e92d4800 	push	{fp, lr}
    10d8:	e28db004 	add	fp, sp, #4
    10dc:	e24dd018 	sub	sp, sp, #24
    10e0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    10e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e8:	e2833007 	add	r3, r3, #7
    10ec:	e1a031a3 	lsr	r3, r3, #3
    10f0:	e2833001 	add	r3, r3, #1
    10f4:	e50b3010 	str	r3, [fp, #-16]
    10f8:	e59f3134 	ldr	r3, [pc, #308]	@ 1234 <malloc+0x160>
    10fc:	e5933000 	ldr	r3, [r3]
    1100:	e50b300c 	str	r3, [fp, #-12]
    1104:	e51b300c 	ldr	r3, [fp, #-12]
    1108:	e3530000 	cmp	r3, #0
    110c:	1a00000b 	bne	1140 <malloc+0x6c>
    1110:	e59f3120 	ldr	r3, [pc, #288]	@ 1238 <malloc+0x164>
    1114:	e50b300c 	str	r3, [fp, #-12]
    1118:	e59f2114 	ldr	r2, [pc, #276]	@ 1234 <malloc+0x160>
    111c:	e51b300c 	ldr	r3, [fp, #-12]
    1120:	e5823000 	str	r3, [r2]
    1124:	e59f3108 	ldr	r3, [pc, #264]	@ 1234 <malloc+0x160>
    1128:	e5933000 	ldr	r3, [r3]
    112c:	e59f2104 	ldr	r2, [pc, #260]	@ 1238 <malloc+0x164>
    1130:	e5823000 	str	r3, [r2]
    1134:	e59f30fc 	ldr	r3, [pc, #252]	@ 1238 <malloc+0x164>
    1138:	e3a02000 	mov	r2, #0
    113c:	e5832004 	str	r2, [r3, #4]
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e50b3008 	str	r3, [fp, #-8]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5933004 	ldr	r3, [r3, #4]
    1154:	e51b2010 	ldr	r2, [fp, #-16]
    1158:	e1520003 	cmp	r2, r3
    115c:	8a00001e 	bhi	11dc <malloc+0x108>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e5933004 	ldr	r3, [r3, #4]
    1168:	e51b2010 	ldr	r2, [fp, #-16]
    116c:	e1520003 	cmp	r2, r3
    1170:	1a000004 	bne	1188 <malloc+0xb4>
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5932000 	ldr	r2, [r3]
    117c:	e51b300c 	ldr	r3, [fp, #-12]
    1180:	e5832000 	str	r2, [r3]
    1184:	ea00000e 	b	11c4 <malloc+0xf0>
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e5932004 	ldr	r2, [r3, #4]
    1190:	e51b3010 	ldr	r3, [fp, #-16]
    1194:	e0422003 	sub	r2, r2, r3
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e5832004 	str	r2, [r3, #4]
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933004 	ldr	r3, [r3, #4]
    11a8:	e1a03183 	lsl	r3, r3, #3
    11ac:	e51b2008 	ldr	r2, [fp, #-8]
    11b0:	e0823003 	add	r3, r2, r3
    11b4:	e50b3008 	str	r3, [fp, #-8]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e51b2010 	ldr	r2, [fp, #-16]
    11c0:	e5832004 	str	r2, [r3, #4]
    11c4:	e59f2068 	ldr	r2, [pc, #104]	@ 1234 <malloc+0x160>
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5823000 	str	r3, [r2]
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e2833008 	add	r3, r3, #8
    11d8:	ea000012 	b	1228 <malloc+0x154>
    11dc:	e59f3050 	ldr	r3, [pc, #80]	@ 1234 <malloc+0x160>
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e51b2008 	ldr	r2, [fp, #-8]
    11e8:	e1520003 	cmp	r2, r3
    11ec:	1a000007 	bne	1210 <malloc+0x13c>
    11f0:	e51b0010 	ldr	r0, [fp, #-16]
    11f4:	ebffff94 	bl	104c <morecore>
    11f8:	e50b0008 	str	r0, [fp, #-8]
    11fc:	e51b3008 	ldr	r3, [fp, #-8]
    1200:	e3530000 	cmp	r3, #0
    1204:	1a000001 	bne	1210 <malloc+0x13c>
    1208:	e3a03000 	mov	r3, #0
    120c:	ea000005 	b	1228 <malloc+0x154>
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e50b300c 	str	r3, [fp, #-12]
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e5933000 	ldr	r3, [r3]
    1220:	e50b3008 	str	r3, [fp, #-8]
    1224:	eaffffc8 	b	114c <malloc+0x78>
    1228:	e1a00003 	mov	r0, r3
    122c:	e24bd004 	sub	sp, fp, #4
    1230:	e8bd8800 	pop	{fp, pc}
    1234:	000013ac 	.word	0x000013ac
    1238:	000013a4 	.word	0x000013a4

0000123c <__udivsi3>:
    123c:	e2512001 	subs	r2, r1, #1
    1240:	012fff1e 	bxeq	lr
    1244:	3a000036 	bcc	1324 <__udivsi3+0xe8>
    1248:	e1500001 	cmp	r0, r1
    124c:	9a000022 	bls	12dc <__udivsi3+0xa0>
    1250:	e1110002 	tst	r1, r2
    1254:	0a000023 	beq	12e8 <__udivsi3+0xac>
    1258:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    125c:	01a01181 	lsleq	r1, r1, #3
    1260:	03a03008 	moveq	r3, #8
    1264:	13a03001 	movne	r3, #1
    1268:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    126c:	31510000 	cmpcc	r1, r0
    1270:	31a01201 	lslcc	r1, r1, #4
    1274:	31a03203 	lslcc	r3, r3, #4
    1278:	3afffffa 	bcc	1268 <__udivsi3+0x2c>
    127c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1280:	31510000 	cmpcc	r1, r0
    1284:	31a01081 	lslcc	r1, r1, #1
    1288:	31a03083 	lslcc	r3, r3, #1
    128c:	3afffffa 	bcc	127c <__udivsi3+0x40>
    1290:	e3a02000 	mov	r2, #0
    1294:	e1500001 	cmp	r0, r1
    1298:	20400001 	subcs	r0, r0, r1
    129c:	21822003 	orrcs	r2, r2, r3
    12a0:	e15000a1 	cmp	r0, r1, lsr #1
    12a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    12a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12ac:	e1500121 	cmp	r0, r1, lsr #2
    12b0:	20400121 	subcs	r0, r0, r1, lsr #2
    12b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    12b8:	e15001a1 	cmp	r0, r1, lsr #3
    12bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    12c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12c4:	e3500000 	cmp	r0, #0
    12c8:	11b03223 	lsrsne	r3, r3, #4
    12cc:	11a01221 	lsrne	r1, r1, #4
    12d0:	1affffef 	bne	1294 <__udivsi3+0x58>
    12d4:	e1a00002 	mov	r0, r2
    12d8:	e12fff1e 	bx	lr
    12dc:	03a00001 	moveq	r0, #1
    12e0:	13a00000 	movne	r0, #0
    12e4:	e12fff1e 	bx	lr
    12e8:	e3510801 	cmp	r1, #65536	@ 0x10000
    12ec:	21a01821 	lsrcs	r1, r1, #16
    12f0:	23a02010 	movcs	r2, #16
    12f4:	33a02000 	movcc	r2, #0
    12f8:	e3510c01 	cmp	r1, #256	@ 0x100
    12fc:	21a01421 	lsrcs	r1, r1, #8
    1300:	22822008 	addcs	r2, r2, #8
    1304:	e3510010 	cmp	r1, #16
    1308:	21a01221 	lsrcs	r1, r1, #4
    130c:	22822004 	addcs	r2, r2, #4
    1310:	e3510004 	cmp	r1, #4
    1314:	82822003 	addhi	r2, r2, #3
    1318:	908220a1 	addls	r2, r2, r1, lsr #1
    131c:	e1a00230 	lsr	r0, r0, r2
    1320:	e12fff1e 	bx	lr
    1324:	e3500000 	cmp	r0, #0
    1328:	13e00000 	mvnne	r0, #0
    132c:	ea000007 	b	1350 <__aeabi_idiv0>

00001330 <__aeabi_uidivmod>:
    1330:	e3510000 	cmp	r1, #0
    1334:	0afffffa 	beq	1324 <__udivsi3+0xe8>
    1338:	e92d4003 	push	{r0, r1, lr}
    133c:	ebffffbe 	bl	123c <__udivsi3>
    1340:	e8bd4006 	pop	{r1, r2, lr}
    1344:	e0030092 	mul	r3, r2, r0
    1348:	e0411003 	sub	r1, r1, r3
    134c:	e12fff1e 	bx	lr

00001350 <__aeabi_idiv0>:
    1350:	e12fff1e 	bx	lr
