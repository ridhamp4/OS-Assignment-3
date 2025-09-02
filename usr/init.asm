
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb0001ee 	bl	7d4 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb0001f0 	bl	7f8 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb0001e4 	bl	7d4 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb000221 	bl	8d0 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb00021f 	bl	8d0 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002c9 	bl	b84 <printf>
      5c:	eb00018b 	bl	690 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb0002c1 	bl	b84 <printf>
      7c:	eb00018c 	bl	6b4 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb0001c5 	bl	7b0 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb0002b7 	bl	b84 <printf>
      a4:	eb000182 	bl	6b4 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0002b3 	bl	b84 <printf>
      b4:	eb000187 	bl	6d8 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	00001244 	.word	0x00001244
      e0:	0000124c 	.word	0x0000124c
      e4:	00001260 	.word	0x00001260
      e8:	000012a0 	.word	0x000012a0
      ec:	00001240 	.word	0x00001240
      f0:	00001274 	.word	0x00001274
      f4:	0000128c 	.word	0x0000128c

000000f8 <strcpy>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     11c:	e2823001 	add	r3, r2, #1
     120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2831001 	add	r1, r3, #1
     12c:	e50b1010 	str	r1, [fp, #-16]
     130:	e5d22000 	ldrb	r2, [r2]
     134:	e5c32000 	strb	r2, [r3]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff4 	bne	118 <strcpy+0x20>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <strncmp>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd014 	sub	sp, sp, #20
     164:	e50b0008 	str	r0, [fp, #-8]
     168:	e50b100c 	str	r1, [fp, #-12]
     16c:	e50b2010 	str	r2, [fp, #-16]
     170:	ea000008 	b	198 <strncmp+0x40>
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e2833001 	add	r3, r3, #1
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	e51b300c 	ldr	r3, [fp, #-12]
     184:	e2833001 	add	r3, r3, #1
     188:	e50b300c 	str	r3, [fp, #-12]
     18c:	e51b3010 	ldr	r3, [fp, #-16]
     190:	e2433001 	sub	r3, r3, #1
     194:	e50b3010 	str	r3, [fp, #-16]
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e3530000 	cmp	r3, #0
     1a0:	da00000d 	ble	1dc <strncmp+0x84>
     1a4:	e51b3008 	ldr	r3, [fp, #-8]
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e3530000 	cmp	r3, #0
     1b0:	0a000009 	beq	1dc <strncmp+0x84>
     1b4:	e51b300c 	ldr	r3, [fp, #-12]
     1b8:	e5d33000 	ldrb	r3, [r3]
     1bc:	e3530000 	cmp	r3, #0
     1c0:	0a000005 	beq	1dc <strncmp+0x84>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e5d32000 	ldrb	r2, [r3]
     1cc:	e51b300c 	ldr	r3, [fp, #-12]
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e1520003 	cmp	r2, r3
     1d8:	0affffe5 	beq	174 <strncmp+0x1c>
     1dc:	e51b3010 	ldr	r3, [fp, #-16]
     1e0:	e3530000 	cmp	r3, #0
     1e4:	1a000001 	bne	1f0 <strncmp+0x98>
     1e8:	e3a03000 	mov	r3, #0
     1ec:	ea000005 	b	208 <strncmp+0xb0>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e0423003 	sub	r3, r2, r3
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strcmp>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd00c 	sub	sp, sp, #12
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e50b100c 	str	r1, [fp, #-12]
     22c:	ea000005 	b	248 <strcmp+0x30>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e2833001 	add	r3, r3, #1
     244:	e50b300c 	str	r3, [fp, #-12]
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	0a000005 	beq	270 <strcmp+0x58>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e5d32000 	ldrb	r2, [r3]
     260:	e51b300c 	ldr	r3, [fp, #-12]
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e1520003 	cmp	r2, r3
     26c:	0affffef 	beq	230 <strcmp+0x18>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e5d33000 	ldrb	r3, [r3]
     278:	e1a02003 	mov	r2, r3
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e5d33000 	ldrb	r3, [r3]
     284:	e0423003 	sub	r3, r2, r3
     288:	e1a00003 	mov	r0, r3
     28c:	e28bd000 	add	sp, fp, #0
     290:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     294:	e12fff1e 	bx	lr

00000298 <strlen>:
     298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     29c:	e28db000 	add	fp, sp, #0
     2a0:	e24dd014 	sub	sp, sp, #20
     2a4:	e50b0010 	str	r0, [fp, #-16]
     2a8:	e3a03000 	mov	r3, #0
     2ac:	e50b3008 	str	r3, [fp, #-8]
     2b0:	ea000002 	b	2c0 <strlen+0x28>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e51b2010 	ldr	r2, [fp, #-16]
     2c8:	e0823003 	add	r3, r2, r3
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff6 	bne	2b4 <strlen+0x1c>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <memset>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     300:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     310:	e54b300d 	strb	r3, [fp, #-13]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e1a03002 	mov	r3, r2
     31c:	e1a03403 	lsl	r3, r3, #8
     320:	e0833002 	add	r3, r3, r2
     324:	e1a03803 	lsl	r3, r3, #16
     328:	e1a02003 	mov	r2, r3
     32c:	e55b300d 	ldrb	r3, [fp, #-13]
     330:	e1a03403 	lsl	r3, r3, #8
     334:	e1822003 	orr	r2, r2, r3
     338:	e55b300d 	ldrb	r3, [fp, #-13]
     33c:	e1823003 	orr	r3, r2, r3
     340:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     344:	ea000008 	b	36c <memset+0x80>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e55b200d 	ldrb	r2, [fp, #-13]
     350:	e5c32000 	strb	r2, [r3]
     354:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     358:	e2433001 	sub	r3, r3, #1
     35c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e2833001 	add	r3, r3, #1
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e3530000 	cmp	r3, #0
     374:	0a000003 	beq	388 <memset+0x9c>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2033003 	and	r3, r3, #3
     380:	e3530000 	cmp	r3, #0
     384:	1affffef 	bne	348 <memset+0x5c>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e50b300c 	str	r3, [fp, #-12]
     390:	ea000008 	b	3b8 <memset+0xcc>
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     39c:	e5832000 	str	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433004 	sub	r3, r3, #4
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833004 	add	r3, r3, #4
     3b4:	e50b300c 	str	r3, [fp, #-12]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530003 	cmp	r3, #3
     3c0:	8afffff3 	bhi	394 <memset+0xa8>
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	ea000008 	b	3f4 <memset+0x108>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e2433001 	sub	r3, r3, #1
     3e4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2833001 	add	r3, r3, #1
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e3530000 	cmp	r3, #0
     3fc:	1afffff3 	bne	3d0 <memset+0xe4>
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e28bd000 	add	sp, fp, #0
     40c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     410:	e12fff1e 	bx	lr

00000414 <strchr>:
     414:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     418:	e28db000 	add	fp, sp, #0
     41c:	e24dd00c 	sub	sp, sp, #12
     420:	e50b0008 	str	r0, [fp, #-8]
     424:	e1a03001 	mov	r3, r1
     428:	e54b3009 	strb	r3, [fp, #-9]
     42c:	ea000009 	b	458 <strchr+0x44>
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e5d33000 	ldrb	r3, [r3]
     438:	e55b2009 	ldrb	r2, [fp, #-9]
     43c:	e1520003 	cmp	r2, r3
     440:	1a000001 	bne	44c <strchr+0x38>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	ea000007 	b	46c <strchr+0x58>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2833001 	add	r3, r3, #1
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e5d33000 	ldrb	r3, [r3]
     460:	e3530000 	cmp	r3, #0
     464:	1afffff1 	bne	430 <strchr+0x1c>
     468:	e3a03000 	mov	r3, #0
     46c:	e1a00003 	mov	r0, r3
     470:	e28bd000 	add	sp, fp, #0
     474:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     478:	e12fff1e 	bx	lr

0000047c <gets>:
     47c:	e92d4800 	push	{fp, lr}
     480:	e28db004 	add	fp, sp, #4
     484:	e24dd018 	sub	sp, sp, #24
     488:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     48c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     490:	e3a03000 	mov	r3, #0
     494:	e50b3008 	str	r3, [fp, #-8]
     498:	ea000016 	b	4f8 <gets+0x7c>
     49c:	e24b300d 	sub	r3, fp, #13
     4a0:	e3a02001 	mov	r2, #1
     4a4:	e1a01003 	mov	r1, r3
     4a8:	e3a00000 	mov	r0, #0
     4ac:	eb00009b 	bl	720 <read>
     4b0:	e50b000c 	str	r0, [fp, #-12]
     4b4:	e51b300c 	ldr	r3, [fp, #-12]
     4b8:	e3530000 	cmp	r3, #0
     4bc:	da000013 	ble	510 <gets+0x94>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2832001 	add	r2, r3, #1
     4c8:	e50b2008 	str	r2, [fp, #-8]
     4cc:	e1a02003 	mov	r2, r3
     4d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d4:	e0833002 	add	r3, r3, r2
     4d8:	e55b200d 	ldrb	r2, [fp, #-13]
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e55b300d 	ldrb	r3, [fp, #-13]
     4e4:	e353000a 	cmp	r3, #10
     4e8:	0a000009 	beq	514 <gets+0x98>
     4ec:	e55b300d 	ldrb	r3, [fp, #-13]
     4f0:	e353000d 	cmp	r3, #13
     4f4:	0a000006 	beq	514 <gets+0x98>
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e2833001 	add	r3, r3, #1
     500:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     504:	e1520003 	cmp	r2, r3
     508:	caffffe3 	bgt	49c <gets+0x20>
     50c:	ea000000 	b	514 <gets+0x98>
     510:	e1a00000 	nop			@ (mov r0, r0)
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     51c:	e0823003 	add	r3, r2, r3
     520:	e3a02000 	mov	r2, #0
     524:	e5c32000 	strb	r2, [r3]
     528:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     52c:	e1a00003 	mov	r0, r3
     530:	e24bd004 	sub	sp, fp, #4
     534:	e8bd8800 	pop	{fp, pc}

00000538 <stat>:
     538:	e92d4800 	push	{fp, lr}
     53c:	e28db004 	add	fp, sp, #4
     540:	e24dd010 	sub	sp, sp, #16
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e3a01000 	mov	r1, #0
     550:	e51b0010 	ldr	r0, [fp, #-16]
     554:	eb00009e 	bl	7d4 <open>
     558:	e50b0008 	str	r0, [fp, #-8]
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e3530000 	cmp	r3, #0
     564:	aa000001 	bge	570 <stat+0x38>
     568:	e3e03000 	mvn	r3, #0
     56c:	ea000006 	b	58c <stat+0x54>
     570:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     574:	e51b0008 	ldr	r0, [fp, #-8]
     578:	eb0000b0 	bl	840 <fstat>
     57c:	e50b000c 	str	r0, [fp, #-12]
     580:	e51b0008 	ldr	r0, [fp, #-8]
     584:	eb000077 	bl	768 <close>
     588:	e51b300c 	ldr	r3, [fp, #-12]
     58c:	e1a00003 	mov	r0, r3
     590:	e24bd004 	sub	sp, fp, #4
     594:	e8bd8800 	pop	{fp, pc}

00000598 <atoi>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd014 	sub	sp, sp, #20
     5a4:	e50b0010 	str	r0, [fp, #-16]
     5a8:	e3a03000 	mov	r3, #0
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	ea00000c 	b	5e8 <atoi+0x50>
     5b4:	e51b2008 	ldr	r2, [fp, #-8]
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a03103 	lsl	r3, r3, #2
     5c0:	e0833002 	add	r3, r3, r2
     5c4:	e1a03083 	lsl	r3, r3, #1
     5c8:	e1a01003 	mov	r1, r3
     5cc:	e51b3010 	ldr	r3, [fp, #-16]
     5d0:	e2832001 	add	r2, r3, #1
     5d4:	e50b2010 	str	r2, [fp, #-16]
     5d8:	e5d33000 	ldrb	r3, [r3]
     5dc:	e0813003 	add	r3, r1, r3
     5e0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	e51b3010 	ldr	r3, [fp, #-16]
     5ec:	e5d33000 	ldrb	r3, [r3]
     5f0:	e353002f 	cmp	r3, #47	@ 0x2f
     5f4:	9a000003 	bls	608 <atoi+0x70>
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e5d33000 	ldrb	r3, [r3]
     600:	e3530039 	cmp	r3, #57	@ 0x39
     604:	9affffea 	bls	5b4 <atoi+0x1c>
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e1a00003 	mov	r0, r3
     610:	e28bd000 	add	sp, fp, #0
     614:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <memmove>:
     61c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     620:	e28db000 	add	fp, sp, #0
     624:	e24dd01c 	sub	sp, sp, #28
     628:	e50b0010 	str	r0, [fp, #-16]
     62c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     630:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     634:	e51b3010 	ldr	r3, [fp, #-16]
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     640:	e50b300c 	str	r3, [fp, #-12]
     644:	ea000007 	b	668 <memmove+0x4c>
     648:	e51b200c 	ldr	r2, [fp, #-12]
     64c:	e2823001 	add	r3, r2, #1
     650:	e50b300c 	str	r3, [fp, #-12]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e2831001 	add	r1, r3, #1
     65c:	e50b1008 	str	r1, [fp, #-8]
     660:	e5d22000 	ldrb	r2, [r2]
     664:	e5c32000 	strb	r2, [r3]
     668:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     66c:	e2432001 	sub	r2, r3, #1
     670:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     674:	e3530000 	cmp	r3, #0
     678:	cafffff2 	bgt	648 <memmove+0x2c>
     67c:	e51b3010 	ldr	r3, [fp, #-16]
     680:	e1a00003 	mov	r0, r3
     684:	e28bd000 	add	sp, fp, #0
     688:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <fork>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00001 	mov	r0, #1
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <exit>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00002 	mov	r0, #2
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <wait>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00003 	mov	r0, #3
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <pipe>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00004 	mov	r0, #4
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <read>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00005 	mov	r0, #5
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <write>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00010 	mov	r0, #16
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <close>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00015 	mov	r0, #21
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <kill>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00006 	mov	r0, #6
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <exec>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a00007 	mov	r0, #7
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <open>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a0000f 	mov	r0, #15
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <mknod>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a00011 	mov	r0, #17
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <unlink>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a00012 	mov	r0, #18
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <fstat>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a00008 	mov	r0, #8
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <link>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a00013 	mov	r0, #19
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <mkdir>:
     888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     88c:	e1a04003 	mov	r4, r3
     890:	e1a03002 	mov	r3, r2
     894:	e1a02001 	mov	r2, r1
     898:	e1a01000 	mov	r1, r0
     89c:	e3a00014 	mov	r0, #20
     8a0:	ef000000 	svc	0x00000000
     8a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a8:	e12fff1e 	bx	lr

000008ac <chdir>:
     8ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b0:	e1a04003 	mov	r4, r3
     8b4:	e1a03002 	mov	r3, r2
     8b8:	e1a02001 	mov	r2, r1
     8bc:	e1a01000 	mov	r1, r0
     8c0:	e3a00009 	mov	r0, #9
     8c4:	ef000000 	svc	0x00000000
     8c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8cc:	e12fff1e 	bx	lr

000008d0 <dup>:
     8d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d4:	e1a04003 	mov	r4, r3
     8d8:	e1a03002 	mov	r3, r2
     8dc:	e1a02001 	mov	r2, r1
     8e0:	e1a01000 	mov	r1, r0
     8e4:	e3a0000a 	mov	r0, #10
     8e8:	ef000000 	svc	0x00000000
     8ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f0:	e12fff1e 	bx	lr

000008f4 <getpid>:
     8f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f8:	e1a04003 	mov	r4, r3
     8fc:	e1a03002 	mov	r3, r2
     900:	e1a02001 	mov	r2, r1
     904:	e1a01000 	mov	r1, r0
     908:	e3a0000b 	mov	r0, #11
     90c:	ef000000 	svc	0x00000000
     910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     914:	e12fff1e 	bx	lr

00000918 <sbrk>:
     918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     91c:	e1a04003 	mov	r4, r3
     920:	e1a03002 	mov	r3, r2
     924:	e1a02001 	mov	r2, r1
     928:	e1a01000 	mov	r1, r0
     92c:	e3a0000c 	mov	r0, #12
     930:	ef000000 	svc	0x00000000
     934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <sleep>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a0000d 	mov	r0, #13
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <uptime>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a0000e 	mov	r0, #14
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <ps>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00016 	mov	r0, #22
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <settickets>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00017 	mov	r0, #23
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <srand>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00018 	mov	r0, #24
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <getpinfo>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00019 	mov	r0, #25
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <putc>:
     a14:	e92d4800 	push	{fp, lr}
     a18:	e28db004 	add	fp, sp, #4
     a1c:	e24dd008 	sub	sp, sp, #8
     a20:	e50b0008 	str	r0, [fp, #-8]
     a24:	e1a03001 	mov	r3, r1
     a28:	e54b3009 	strb	r3, [fp, #-9]
     a2c:	e24b3009 	sub	r3, fp, #9
     a30:	e3a02001 	mov	r2, #1
     a34:	e1a01003 	mov	r1, r3
     a38:	e51b0008 	ldr	r0, [fp, #-8]
     a3c:	ebffff40 	bl	744 <write>
     a40:	e1a00000 	nop			@ (mov r0, r0)
     a44:	e24bd004 	sub	sp, fp, #4
     a48:	e8bd8800 	pop	{fp, pc}

00000a4c <printint>:
     a4c:	e92d4800 	push	{fp, lr}
     a50:	e28db004 	add	fp, sp, #4
     a54:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a58:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a5c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a60:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a64:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a68:	e3a03000 	mov	r3, #0
     a6c:	e50b300c 	str	r3, [fp, #-12]
     a70:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a74:	e3530000 	cmp	r3, #0
     a78:	0a000008 	beq	aa0 <printint+0x54>
     a7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a80:	e3530000 	cmp	r3, #0
     a84:	aa000005 	bge	aa0 <printint+0x54>
     a88:	e3a03001 	mov	r3, #1
     a8c:	e50b300c 	str	r3, [fp, #-12]
     a90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a94:	e2633000 	rsb	r3, r3, #0
     a98:	e50b3010 	str	r3, [fp, #-16]
     a9c:	ea000001 	b	aa8 <printint+0x5c>
     aa0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     aa4:	e50b3010 	str	r3, [fp, #-16]
     aa8:	e3a03000 	mov	r3, #0
     aac:	e50b3008 	str	r3, [fp, #-8]
     ab0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ab4:	e51b3010 	ldr	r3, [fp, #-16]
     ab8:	e1a01002 	mov	r1, r2
     abc:	e1a00003 	mov	r0, r3
     ac0:	eb0001d5 	bl	121c <__aeabi_uidivmod>
     ac4:	e1a03001 	mov	r3, r1
     ac8:	e1a01003 	mov	r1, r3
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e2832001 	add	r2, r3, #1
     ad4:	e50b2008 	str	r2, [fp, #-8]
     ad8:	e59f20a0 	ldr	r2, [pc, #160]	@ b80 <printint+0x134>
     adc:	e7d22001 	ldrb	r2, [r2, r1]
     ae0:	e2433004 	sub	r3, r3, #4
     ae4:	e083300b 	add	r3, r3, fp
     ae8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     aec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     af0:	e1a01003 	mov	r1, r3
     af4:	e51b0010 	ldr	r0, [fp, #-16]
     af8:	eb00018a 	bl	1128 <__udivsi3>
     afc:	e1a03000 	mov	r3, r0
     b00:	e50b3010 	str	r3, [fp, #-16]
     b04:	e51b3010 	ldr	r3, [fp, #-16]
     b08:	e3530000 	cmp	r3, #0
     b0c:	1affffe7 	bne	ab0 <printint+0x64>
     b10:	e51b300c 	ldr	r3, [fp, #-12]
     b14:	e3530000 	cmp	r3, #0
     b18:	0a00000e 	beq	b58 <printint+0x10c>
     b1c:	e51b3008 	ldr	r3, [fp, #-8]
     b20:	e2832001 	add	r2, r3, #1
     b24:	e50b2008 	str	r2, [fp, #-8]
     b28:	e2433004 	sub	r3, r3, #4
     b2c:	e083300b 	add	r3, r3, fp
     b30:	e3a0202d 	mov	r2, #45	@ 0x2d
     b34:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b38:	ea000006 	b	b58 <printint+0x10c>
     b3c:	e24b2020 	sub	r2, fp, #32
     b40:	e51b3008 	ldr	r3, [fp, #-8]
     b44:	e0823003 	add	r3, r2, r3
     b48:	e5d33000 	ldrb	r3, [r3]
     b4c:	e1a01003 	mov	r1, r3
     b50:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b54:	ebffffae 	bl	a14 <putc>
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e2433001 	sub	r3, r3, #1
     b60:	e50b3008 	str	r3, [fp, #-8]
     b64:	e51b3008 	ldr	r3, [fp, #-8]
     b68:	e3530000 	cmp	r3, #0
     b6c:	aafffff2 	bge	b3c <printint+0xf0>
     b70:	e1a00000 	nop			@ (mov r0, r0)
     b74:	e1a00000 	nop			@ (mov r0, r0)
     b78:	e24bd004 	sub	sp, fp, #4
     b7c:	e8bd8800 	pop	{fp, pc}
     b80:	000012a8 	.word	0x000012a8

00000b84 <printf>:
     b84:	e92d000e 	push	{r1, r2, r3}
     b88:	e92d4800 	push	{fp, lr}
     b8c:	e28db004 	add	fp, sp, #4
     b90:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b94:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b98:	e3a03000 	mov	r3, #0
     b9c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ba0:	e28b3008 	add	r3, fp, #8
     ba4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba8:	e3a03000 	mov	r3, #0
     bac:	e50b3010 	str	r3, [fp, #-16]
     bb0:	ea000074 	b	d88 <printf+0x204>
     bb4:	e59b2004 	ldr	r2, [fp, #4]
     bb8:	e51b3010 	ldr	r3, [fp, #-16]
     bbc:	e0823003 	add	r3, r2, r3
     bc0:	e5d33000 	ldrb	r3, [r3]
     bc4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bc8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bcc:	e3530000 	cmp	r3, #0
     bd0:	1a00000b 	bne	c04 <printf+0x80>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd8:	e3530025 	cmp	r3, #37	@ 0x25
     bdc:	1a000002 	bne	bec <printf+0x68>
     be0:	e3a03025 	mov	r3, #37	@ 0x25
     be4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be8:	ea000063 	b	d7c <printf+0x1f8>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e6ef3073 	uxtb	r3, r3
     bf4:	e1a01003 	mov	r1, r3
     bf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bfc:	ebffff84 	bl	a14 <putc>
     c00:	ea00005d 	b	d7c <printf+0x1f8>
     c04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c08:	e3530025 	cmp	r3, #37	@ 0x25
     c0c:	1a00005a 	bne	d7c <printf+0x1f8>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e3530064 	cmp	r3, #100	@ 0x64
     c18:	1a00000a 	bne	c48 <printf+0xc4>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e1a01003 	mov	r1, r3
     c28:	e3a03001 	mov	r3, #1
     c2c:	e3a0200a 	mov	r2, #10
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff84 	bl	a4c <printint>
     c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c3c:	e2833004 	add	r3, r3, #4
     c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c44:	ea00004a 	b	d74 <printf+0x1f0>
     c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c4c:	e3530078 	cmp	r3, #120	@ 0x78
     c50:	0a000002 	beq	c60 <printf+0xdc>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e3530070 	cmp	r3, #112	@ 0x70
     c5c:	1a00000a 	bne	c8c <printf+0x108>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e5933000 	ldr	r3, [r3]
     c68:	e1a01003 	mov	r1, r3
     c6c:	e3a03000 	mov	r3, #0
     c70:	e3a02010 	mov	r2, #16
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff73 	bl	a4c <printint>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c80:	e2833004 	add	r3, r3, #4
     c84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c88:	ea000039 	b	d74 <printf+0x1f0>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e3530073 	cmp	r3, #115	@ 0x73
     c94:	1a000018 	bne	cfc <printf+0x178>
     c98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c9c:	e5933000 	ldr	r3, [r3]
     ca0:	e50b300c 	str	r3, [fp, #-12]
     ca4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca8:	e2833004 	add	r3, r3, #4
     cac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cb0:	e51b300c 	ldr	r3, [fp, #-12]
     cb4:	e3530000 	cmp	r3, #0
     cb8:	1a00000a 	bne	ce8 <printf+0x164>
     cbc:	e59f30f4 	ldr	r3, [pc, #244]	@ db8 <printf+0x234>
     cc0:	e50b300c 	str	r3, [fp, #-12]
     cc4:	ea000007 	b	ce8 <printf+0x164>
     cc8:	e51b300c 	ldr	r3, [fp, #-12]
     ccc:	e5d33000 	ldrb	r3, [r3]
     cd0:	e1a01003 	mov	r1, r3
     cd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd8:	ebffff4d 	bl	a14 <putc>
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e2833001 	add	r3, r3, #1
     ce4:	e50b300c 	str	r3, [fp, #-12]
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e5d33000 	ldrb	r3, [r3]
     cf0:	e3530000 	cmp	r3, #0
     cf4:	1afffff3 	bne	cc8 <printf+0x144>
     cf8:	ea00001d 	b	d74 <printf+0x1f0>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e3530063 	cmp	r3, #99	@ 0x63
     d04:	1a000009 	bne	d30 <printf+0x1ac>
     d08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e6ef3073 	uxtb	r3, r3
     d14:	e1a01003 	mov	r1, r3
     d18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d1c:	ebffff3c 	bl	a14 <putc>
     d20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d24:	e2833004 	add	r3, r3, #4
     d28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d2c:	ea000010 	b	d74 <printf+0x1f0>
     d30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d34:	e3530025 	cmp	r3, #37	@ 0x25
     d38:	1a000005 	bne	d54 <printf+0x1d0>
     d3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d40:	e6ef3073 	uxtb	r3, r3
     d44:	e1a01003 	mov	r1, r3
     d48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d4c:	ebffff30 	bl	a14 <putc>
     d50:	ea000007 	b	d74 <printf+0x1f0>
     d54:	e3a01025 	mov	r1, #37	@ 0x25
     d58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d5c:	ebffff2c 	bl	a14 <putc>
     d60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d64:	e6ef3073 	uxtb	r3, r3
     d68:	e1a01003 	mov	r1, r3
     d6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d70:	ebffff27 	bl	a14 <putc>
     d74:	e3a03000 	mov	r3, #0
     d78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d7c:	e51b3010 	ldr	r3, [fp, #-16]
     d80:	e2833001 	add	r3, r3, #1
     d84:	e50b3010 	str	r3, [fp, #-16]
     d88:	e59b2004 	ldr	r2, [fp, #4]
     d8c:	e51b3010 	ldr	r3, [fp, #-16]
     d90:	e0823003 	add	r3, r2, r3
     d94:	e5d33000 	ldrb	r3, [r3]
     d98:	e3530000 	cmp	r3, #0
     d9c:	1affff84 	bne	bb4 <printf+0x30>
     da0:	e1a00000 	nop			@ (mov r0, r0)
     da4:	e1a00000 	nop			@ (mov r0, r0)
     da8:	e24bd004 	sub	sp, fp, #4
     dac:	e8bd4800 	pop	{fp, lr}
     db0:	e28dd00c 	add	sp, sp, #12
     db4:	e12fff1e 	bx	lr
     db8:	00001298 	.word	0x00001298

00000dbc <free>:
     dbc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     dc0:	e28db000 	add	fp, sp, #0
     dc4:	e24dd014 	sub	sp, sp, #20
     dc8:	e50b0010 	str	r0, [fp, #-16]
     dcc:	e51b3010 	ldr	r3, [fp, #-16]
     dd0:	e2433008 	sub	r3, r3, #8
     dd4:	e50b300c 	str	r3, [fp, #-12]
     dd8:	e59f3154 	ldr	r3, [pc, #340]	@ f34 <free+0x178>
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e50b3008 	str	r3, [fp, #-8]
     de4:	ea000010 	b	e2c <free+0x70>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5933000 	ldr	r3, [r3]
     df0:	e51b2008 	ldr	r2, [fp, #-8]
     df4:	e1520003 	cmp	r2, r3
     df8:	3a000008 	bcc	e20 <free+0x64>
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e51b3008 	ldr	r3, [fp, #-8]
     e04:	e1520003 	cmp	r2, r3
     e08:	8a000010 	bhi	e50 <free+0x94>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e51b200c 	ldr	r2, [fp, #-12]
     e18:	e1520003 	cmp	r2, r3
     e1c:	3a00000b 	bcc	e50 <free+0x94>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e50b3008 	str	r3, [fp, #-8]
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e1520003 	cmp	r2, r3
     e38:	9affffea 	bls	de8 <free+0x2c>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e51b200c 	ldr	r2, [fp, #-12]
     e48:	e1520003 	cmp	r2, r3
     e4c:	2affffe5 	bcs	de8 <free+0x2c>
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5933004 	ldr	r3, [r3, #4]
     e58:	e1a03183 	lsl	r3, r3, #3
     e5c:	e51b200c 	ldr	r2, [fp, #-12]
     e60:	e0822003 	add	r2, r2, r3
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e1520003 	cmp	r2, r3
     e70:	1a00000d 	bne	eac <free+0xf0>
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5932004 	ldr	r2, [r3, #4]
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e5933004 	ldr	r3, [r3, #4]
     e88:	e0822003 	add	r2, r2, r3
     e8c:	e51b300c 	ldr	r3, [fp, #-12]
     e90:	e5832004 	str	r2, [r3, #4]
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e5932000 	ldr	r2, [r3]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e5832000 	str	r2, [r3]
     ea8:	ea000003 	b	ebc <free+0x100>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5932000 	ldr	r2, [r3]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5832000 	str	r2, [r3]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933004 	ldr	r3, [r3, #4]
     ec4:	e1a03183 	lsl	r3, r3, #3
     ec8:	e51b2008 	ldr	r2, [fp, #-8]
     ecc:	e0823003 	add	r3, r2, r3
     ed0:	e51b200c 	ldr	r2, [fp, #-12]
     ed4:	e1520003 	cmp	r2, r3
     ed8:	1a00000b 	bne	f0c <free+0x150>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5932004 	ldr	r2, [r3, #4]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e5933004 	ldr	r3, [r3, #4]
     eec:	e0822003 	add	r2, r2, r3
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5832004 	str	r2, [r3, #4]
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5932000 	ldr	r2, [r3]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5832000 	str	r2, [r3]
     f08:	ea000002 	b	f18 <free+0x15c>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e51b200c 	ldr	r2, [fp, #-12]
     f14:	e5832000 	str	r2, [r3]
     f18:	e59f2014 	ldr	r2, [pc, #20]	@ f34 <free+0x178>
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e5823000 	str	r3, [r2]
     f24:	e1a00000 	nop			@ (mov r0, r0)
     f28:	e28bd000 	add	sp, fp, #0
     f2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f30:	e12fff1e 	bx	lr
     f34:	000012c4 	.word	0x000012c4

00000f38 <morecore>:
     f38:	e92d4800 	push	{fp, lr}
     f3c:	e28db004 	add	fp, sp, #4
     f40:	e24dd010 	sub	sp, sp, #16
     f44:	e50b0010 	str	r0, [fp, #-16]
     f48:	e51b3010 	ldr	r3, [fp, #-16]
     f4c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f50:	2a000001 	bcs	f5c <morecore+0x24>
     f54:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f58:	e50b3010 	str	r3, [fp, #-16]
     f5c:	e51b3010 	ldr	r3, [fp, #-16]
     f60:	e1a03183 	lsl	r3, r3, #3
     f64:	e1a00003 	mov	r0, r3
     f68:	ebfffe6a 	bl	918 <sbrk>
     f6c:	e50b0008 	str	r0, [fp, #-8]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e3730001 	cmn	r3, #1
     f78:	1a000001 	bne	f84 <morecore+0x4c>
     f7c:	e3a03000 	mov	r3, #0
     f80:	ea00000a 	b	fb0 <morecore+0x78>
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e50b300c 	str	r3, [fp, #-12]
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e51b2010 	ldr	r2, [fp, #-16]
     f94:	e5832004 	str	r2, [r3, #4]
     f98:	e51b300c 	ldr	r3, [fp, #-12]
     f9c:	e2833008 	add	r3, r3, #8
     fa0:	e1a00003 	mov	r0, r3
     fa4:	ebffff84 	bl	dbc <free>
     fa8:	e59f300c 	ldr	r3, [pc, #12]	@ fbc <morecore+0x84>
     fac:	e5933000 	ldr	r3, [r3]
     fb0:	e1a00003 	mov	r0, r3
     fb4:	e24bd004 	sub	sp, fp, #4
     fb8:	e8bd8800 	pop	{fp, pc}
     fbc:	000012c4 	.word	0x000012c4

00000fc0 <malloc>:
     fc0:	e92d4800 	push	{fp, lr}
     fc4:	e28db004 	add	fp, sp, #4
     fc8:	e24dd018 	sub	sp, sp, #24
     fcc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	e2833007 	add	r3, r3, #7
     fd8:	e1a031a3 	lsr	r3, r3, #3
     fdc:	e2833001 	add	r3, r3, #1
     fe0:	e50b3010 	str	r3, [fp, #-16]
     fe4:	e59f3134 	ldr	r3, [pc, #308]	@ 1120 <malloc+0x160>
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e50b300c 	str	r3, [fp, #-12]
     ff0:	e51b300c 	ldr	r3, [fp, #-12]
     ff4:	e3530000 	cmp	r3, #0
     ff8:	1a00000b 	bne	102c <malloc+0x6c>
     ffc:	e59f3120 	ldr	r3, [pc, #288]	@ 1124 <malloc+0x164>
    1000:	e50b300c 	str	r3, [fp, #-12]
    1004:	e59f2114 	ldr	r2, [pc, #276]	@ 1120 <malloc+0x160>
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5823000 	str	r3, [r2]
    1010:	e59f3108 	ldr	r3, [pc, #264]	@ 1120 <malloc+0x160>
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e59f2104 	ldr	r2, [pc, #260]	@ 1124 <malloc+0x164>
    101c:	e5823000 	str	r3, [r2]
    1020:	e59f30fc 	ldr	r3, [pc, #252]	@ 1124 <malloc+0x164>
    1024:	e3a02000 	mov	r2, #0
    1028:	e5832004 	str	r2, [r3, #4]
    102c:	e51b300c 	ldr	r3, [fp, #-12]
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e50b3008 	str	r3, [fp, #-8]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5933004 	ldr	r3, [r3, #4]
    1040:	e51b2010 	ldr	r2, [fp, #-16]
    1044:	e1520003 	cmp	r2, r3
    1048:	8a00001e 	bhi	10c8 <malloc+0x108>
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5933004 	ldr	r3, [r3, #4]
    1054:	e51b2010 	ldr	r2, [fp, #-16]
    1058:	e1520003 	cmp	r2, r3
    105c:	1a000004 	bne	1074 <malloc+0xb4>
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5932000 	ldr	r2, [r3]
    1068:	e51b300c 	ldr	r3, [fp, #-12]
    106c:	e5832000 	str	r2, [r3]
    1070:	ea00000e 	b	10b0 <malloc+0xf0>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5932004 	ldr	r2, [r3, #4]
    107c:	e51b3010 	ldr	r3, [fp, #-16]
    1080:	e0422003 	sub	r2, r2, r3
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5832004 	str	r2, [r3, #4]
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5933004 	ldr	r3, [r3, #4]
    1094:	e1a03183 	lsl	r3, r3, #3
    1098:	e51b2008 	ldr	r2, [fp, #-8]
    109c:	e0823003 	add	r3, r2, r3
    10a0:	e50b3008 	str	r3, [fp, #-8]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e51b2010 	ldr	r2, [fp, #-16]
    10ac:	e5832004 	str	r2, [r3, #4]
    10b0:	e59f2068 	ldr	r2, [pc, #104]	@ 1120 <malloc+0x160>
    10b4:	e51b300c 	ldr	r3, [fp, #-12]
    10b8:	e5823000 	str	r3, [r2]
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e2833008 	add	r3, r3, #8
    10c4:	ea000012 	b	1114 <malloc+0x154>
    10c8:	e59f3050 	ldr	r3, [pc, #80]	@ 1120 <malloc+0x160>
    10cc:	e5933000 	ldr	r3, [r3]
    10d0:	e51b2008 	ldr	r2, [fp, #-8]
    10d4:	e1520003 	cmp	r2, r3
    10d8:	1a000007 	bne	10fc <malloc+0x13c>
    10dc:	e51b0010 	ldr	r0, [fp, #-16]
    10e0:	ebffff94 	bl	f38 <morecore>
    10e4:	e50b0008 	str	r0, [fp, #-8]
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e3530000 	cmp	r3, #0
    10f0:	1a000001 	bne	10fc <malloc+0x13c>
    10f4:	e3a03000 	mov	r3, #0
    10f8:	ea000005 	b	1114 <malloc+0x154>
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e50b300c 	str	r3, [fp, #-12]
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5933000 	ldr	r3, [r3]
    110c:	e50b3008 	str	r3, [fp, #-8]
    1110:	eaffffc8 	b	1038 <malloc+0x78>
    1114:	e1a00003 	mov	r0, r3
    1118:	e24bd004 	sub	sp, fp, #4
    111c:	e8bd8800 	pop	{fp, pc}
    1120:	000012c4 	.word	0x000012c4
    1124:	000012bc 	.word	0x000012bc

00001128 <__udivsi3>:
    1128:	e2512001 	subs	r2, r1, #1
    112c:	012fff1e 	bxeq	lr
    1130:	3a000036 	bcc	1210 <__udivsi3+0xe8>
    1134:	e1500001 	cmp	r0, r1
    1138:	9a000022 	bls	11c8 <__udivsi3+0xa0>
    113c:	e1110002 	tst	r1, r2
    1140:	0a000023 	beq	11d4 <__udivsi3+0xac>
    1144:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1148:	01a01181 	lsleq	r1, r1, #3
    114c:	03a03008 	moveq	r3, #8
    1150:	13a03001 	movne	r3, #1
    1154:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1158:	31510000 	cmpcc	r1, r0
    115c:	31a01201 	lslcc	r1, r1, #4
    1160:	31a03203 	lslcc	r3, r3, #4
    1164:	3afffffa 	bcc	1154 <__udivsi3+0x2c>
    1168:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    116c:	31510000 	cmpcc	r1, r0
    1170:	31a01081 	lslcc	r1, r1, #1
    1174:	31a03083 	lslcc	r3, r3, #1
    1178:	3afffffa 	bcc	1168 <__udivsi3+0x40>
    117c:	e3a02000 	mov	r2, #0
    1180:	e1500001 	cmp	r0, r1
    1184:	20400001 	subcs	r0, r0, r1
    1188:	21822003 	orrcs	r2, r2, r3
    118c:	e15000a1 	cmp	r0, r1, lsr #1
    1190:	204000a1 	subcs	r0, r0, r1, lsr #1
    1194:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1198:	e1500121 	cmp	r0, r1, lsr #2
    119c:	20400121 	subcs	r0, r0, r1, lsr #2
    11a0:	21822123 	orrcs	r2, r2, r3, lsr #2
    11a4:	e15001a1 	cmp	r0, r1, lsr #3
    11a8:	204001a1 	subcs	r0, r0, r1, lsr #3
    11ac:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11b0:	e3500000 	cmp	r0, #0
    11b4:	11b03223 	lsrsne	r3, r3, #4
    11b8:	11a01221 	lsrne	r1, r1, #4
    11bc:	1affffef 	bne	1180 <__udivsi3+0x58>
    11c0:	e1a00002 	mov	r0, r2
    11c4:	e12fff1e 	bx	lr
    11c8:	03a00001 	moveq	r0, #1
    11cc:	13a00000 	movne	r0, #0
    11d0:	e12fff1e 	bx	lr
    11d4:	e3510801 	cmp	r1, #65536	@ 0x10000
    11d8:	21a01821 	lsrcs	r1, r1, #16
    11dc:	23a02010 	movcs	r2, #16
    11e0:	33a02000 	movcc	r2, #0
    11e4:	e3510c01 	cmp	r1, #256	@ 0x100
    11e8:	21a01421 	lsrcs	r1, r1, #8
    11ec:	22822008 	addcs	r2, r2, #8
    11f0:	e3510010 	cmp	r1, #16
    11f4:	21a01221 	lsrcs	r1, r1, #4
    11f8:	22822004 	addcs	r2, r2, #4
    11fc:	e3510004 	cmp	r1, #4
    1200:	82822003 	addhi	r2, r2, #3
    1204:	908220a1 	addls	r2, r2, r1, lsr #1
    1208:	e1a00230 	lsr	r0, r0, r2
    120c:	e12fff1e 	bx	lr
    1210:	e3500000 	cmp	r0, #0
    1214:	13e00000 	mvnne	r0, #0
    1218:	ea000007 	b	123c <__aeabi_idiv0>

0000121c <__aeabi_uidivmod>:
    121c:	e3510000 	cmp	r1, #0
    1220:	0afffffa 	beq	1210 <__udivsi3+0xe8>
    1224:	e92d4003 	push	{r0, r1, lr}
    1228:	ebffffbe 	bl	1128 <__udivsi3>
    122c:	e8bd4006 	pop	{r1, r2, lr}
    1230:	e0030092 	mul	r3, r2, r0
    1234:	e0411003 	sub	r1, r1, r3
    1238:	e12fff1e 	bx	lr

0000123c <__aeabi_idiv0>:
    123c:	e12fff1e 	bx	lr
