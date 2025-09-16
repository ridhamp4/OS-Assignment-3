
_grep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <grep>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000037 	b	100 <grep+0x100>
      20:	e51b2008 	ldr	r2, [fp, #-8]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e0823003 	add	r3, r2, r3
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e59f3108 	ldr	r3, [pc, #264]	@ 140 <grep+0x140>
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	ea000016 	b	98 <grep+0x98>
      3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      40:	e3a02000 	mov	r2, #0
      44:	e5c32000 	strb	r2, [r3]
      48:	e51b100c 	ldr	r1, [fp, #-12]
      4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      50:	eb000079 	bl	23c <match>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	0a00000a 	beq	8c <grep+0x8c>
      60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      64:	e3a0200a 	mov	r2, #10
      68:	e5c32000 	strb	r2, [r3]
      6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      70:	e2832001 	add	r2, r3, #1
      74:	e51b300c 	ldr	r3, [fp, #-12]
      78:	e0423003 	sub	r3, r2, r3
      7c:	e1a02003 	mov	r2, r3
      80:	e51b100c 	ldr	r1, [fp, #-12]
      84:	e3a00001 	mov	r0, #1
      88:	eb000286 	bl	aa8 <write>
      8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      90:	e2833001 	add	r3, r3, #1
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	e3a0100a 	mov	r1, #10
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb0001b4 	bl	778 <strchr>
      a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ac:	e3530000 	cmp	r3, #0
      b0:	1affffe1 	bne	3c <grep+0x3c>
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e59f2080 	ldr	r2, [pc, #128]	@ 140 <grep+0x140>
      bc:	e1530002 	cmp	r3, r2
      c0:	1a000001 	bne	cc <grep+0xcc>
      c4:	e3a03000 	mov	r3, #0
      c8:	e50b3008 	str	r3, [fp, #-8]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e3530000 	cmp	r3, #0
      d4:	da000009 	ble	100 <grep+0x100>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e59f205c 	ldr	r2, [pc, #92]	@ 140 <grep+0x140>
      e0:	e0433002 	sub	r3, r3, r2
      e4:	e51b2008 	ldr	r2, [fp, #-8]
      e8:	e0423003 	sub	r3, r2, r3
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e51b2008 	ldr	r2, [fp, #-8]
      f4:	e51b100c 	ldr	r1, [fp, #-12]
      f8:	e59f0040 	ldr	r0, [pc, #64]	@ 140 <grep+0x140>
      fc:	eb00021f 	bl	980 <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb000258 	bl	a84 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001688 	.word	0x00001688

00000144 <main>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd018 	sub	sp, sp, #24
     150:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     154:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     15c:	e3530001 	cmp	r3, #1
     160:	ca000003 	bgt	174 <main+0x30>
     164:	e59f10c8 	ldr	r1, [pc, #200]	@ 234 <main+0xf0>
     168:	e3a00002 	mov	r0, #2
     16c:	eb000381 	bl	f78 <printf>
     170:	eb000228 	bl	a18 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb00021e 	bl	a18 <exit>
     19c:	e3a03002 	mov	r3, #2
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	ea00001d 	b	220 <main+0xdc>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a03103 	lsl	r3, r3, #2
     1b0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5933000 	ldr	r3, [r3]
     1bc:	e3a01000 	mov	r1, #0
     1c0:	e1a00003 	mov	r0, r3
     1c4:	eb00025b 	bl	b38 <open>
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	aa000009 	bge	200 <main+0xbc>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e1a03103 	lsl	r3, r3, #2
     1e0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5933000 	ldr	r3, [r3]
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e59f1040 	ldr	r1, [pc, #64]	@ 238 <main+0xf4>
     1f4:	e3a00001 	mov	r0, #1
     1f8:	eb00035e 	bl	f78 <printf>
     1fc:	eb000205 	bl	a18 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb00022d 	bl	acc <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0001f8 	bl	a18 <exit>
     234:	00001634 	.word	0x00001634
     238:	00001654 	.word	0x00001654

0000023c <match>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e24dd008 	sub	sp, sp, #8
     248:	e50b0008 	str	r0, [fp, #-8]
     24c:	e50b100c 	str	r1, [fp, #-12]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e353005e 	cmp	r3, #94	@ 0x5e
     25c:	1a000006 	bne	27c <match+0x40>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e51b100c 	ldr	r1, [fp, #-12]
     26c:	e1a00003 	mov	r0, r3
     270:	eb000013 	bl	2c4 <matchhere>
     274:	e1a03000 	mov	r3, r0
     278:	ea00000e 	b	2b8 <match+0x7c>
     27c:	e51b100c 	ldr	r1, [fp, #-12]
     280:	e51b0008 	ldr	r0, [fp, #-8]
     284:	eb00000e 	bl	2c4 <matchhere>
     288:	e1a03000 	mov	r3, r0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000001 	beq	29c <match+0x60>
     294:	e3a03001 	mov	r3, #1
     298:	ea000006 	b	2b8 <match+0x7c>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e2832001 	add	r2, r3, #1
     2a4:	e50b200c 	str	r2, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1afffff1 	bne	27c <match+0x40>
     2b4:	e3a03000 	mov	r3, #0
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e24bd004 	sub	sp, fp, #4
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <matchhere>:
     2c4:	e92d4800 	push	{fp, lr}
     2c8:	e28db004 	add	fp, sp, #4
     2cc:	e24dd008 	sub	sp, sp, #8
     2d0:	e50b0008 	str	r0, [fp, #-8]
     2d4:	e50b100c 	str	r1, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1a000001 	bne	2f0 <matchhere+0x2c>
     2e8:	e3a03001 	mov	r3, #1
     2ec:	ea000036 	b	3cc <matchhere+0x108>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e353002a 	cmp	r3, #42	@ 0x2a
     300:	1a000009 	bne	32c <matchhere+0x68>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1a00003 	mov	r0, r3
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833002 	add	r3, r3, #2
     318:	e51b200c 	ldr	r2, [fp, #-12]
     31c:	e1a01003 	mov	r1, r3
     320:	eb00002c 	bl	3d8 <matchstar>
     324:	e1a03000 	mov	r3, r0
     328:	ea000027 	b	3cc <matchhere+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530024 	cmp	r3, #36	@ 0x24
     338:	1a00000b 	bne	36c <matchhere+0xa8>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e3530000 	cmp	r3, #0
     34c:	1a000006 	bne	36c <matchhere+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	03a03001 	moveq	r3, #1
     360:	13a03000 	movne	r3, #0
     364:	e6ef3073 	uxtb	r3, r3
     368:	ea000017 	b	3cc <matchhere+0x108>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e3530000 	cmp	r3, #0
     378:	0a000012 	beq	3c8 <matchhere+0x104>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e353002e 	cmp	r3, #46	@ 0x2e
     388:	0a000005 	beq	3a4 <matchhere+0xe0>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d32000 	ldrb	r2, [r3]
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000008 	bne	3c8 <matchhere+0x104>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2832001 	add	r2, r3, #1
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e1a01003 	mov	r1, r3
     3b8:	e1a00002 	mov	r0, r2
     3bc:	ebffffc0 	bl	2c4 <matchhere>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	ea000000 	b	3cc <matchhere+0x108>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e24bd004 	sub	sp, fp, #4
     3d4:	e8bd8800 	pop	{fp, pc}

000003d8 <matchstar>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd010 	sub	sp, sp, #16
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e50b100c 	str	r1, [fp, #-12]
     3ec:	e50b2010 	str	r2, [fp, #-16]
     3f0:	e51b1010 	ldr	r1, [fp, #-16]
     3f4:	e51b000c 	ldr	r0, [fp, #-12]
     3f8:	ebffffb1 	bl	2c4 <matchhere>
     3fc:	e1a03000 	mov	r3, r0
     400:	e3530000 	cmp	r3, #0
     404:	0a000001 	beq	410 <matchstar+0x38>
     408:	e3a03001 	mov	r3, #1
     40c:	ea00000f 	b	450 <matchstar+0x78>
     410:	e51b3010 	ldr	r3, [fp, #-16]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	0a00000a 	beq	44c <matchstar+0x74>
     420:	e51b3010 	ldr	r3, [fp, #-16]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2010 	str	r2, [fp, #-16]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e1a02003 	mov	r2, r3
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e1530002 	cmp	r3, r2
     43c:	0affffeb 	beq	3f0 <matchstar+0x18>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e353002e 	cmp	r3, #46	@ 0x2e
     448:	0affffe8 	beq	3f0 <matchstar+0x18>
     44c:	e3a03000 	mov	r3, #0
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <strcpy>:
     45c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     460:	e28db000 	add	fp, sp, #0
     464:	e24dd014 	sub	sp, sp, #20
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b3010 	ldr	r3, [fp, #-16]
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e1a00000 	nop			@ (mov r0, r0)
     47c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     480:	e2823001 	add	r3, r2, #1
     484:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     488:	e51b3010 	ldr	r3, [fp, #-16]
     48c:	e2831001 	add	r1, r3, #1
     490:	e50b1010 	str	r1, [fp, #-16]
     494:	e5d22000 	ldrb	r2, [r2]
     498:	e5c32000 	strb	r2, [r3]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	1afffff4 	bne	47c <strcpy+0x20>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e28bd000 	add	sp, fp, #0
     4b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b8:	e12fff1e 	bx	lr

000004bc <strncmp>:
     4bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c0:	e28db000 	add	fp, sp, #0
     4c4:	e24dd014 	sub	sp, sp, #20
     4c8:	e50b0008 	str	r0, [fp, #-8]
     4cc:	e50b100c 	str	r1, [fp, #-12]
     4d0:	e50b2010 	str	r2, [fp, #-16]
     4d4:	ea000008 	b	4fc <strncmp+0x40>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b300c 	ldr	r3, [fp, #-12]
     4e8:	e2833001 	add	r3, r3, #1
     4ec:	e50b300c 	str	r3, [fp, #-12]
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e2433001 	sub	r3, r3, #1
     4f8:	e50b3010 	str	r3, [fp, #-16]
     4fc:	e51b3010 	ldr	r3, [fp, #-16]
     500:	e3530000 	cmp	r3, #0
     504:	da00000d 	ble	540 <strncmp+0x84>
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e5d33000 	ldrb	r3, [r3]
     510:	e3530000 	cmp	r3, #0
     514:	0a000009 	beq	540 <strncmp+0x84>
     518:	e51b300c 	ldr	r3, [fp, #-12]
     51c:	e5d33000 	ldrb	r3, [r3]
     520:	e3530000 	cmp	r3, #0
     524:	0a000005 	beq	540 <strncmp+0x84>
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e5d32000 	ldrb	r2, [r3]
     530:	e51b300c 	ldr	r3, [fp, #-12]
     534:	e5d33000 	ldrb	r3, [r3]
     538:	e1520003 	cmp	r2, r3
     53c:	0affffe5 	beq	4d8 <strncmp+0x1c>
     540:	e51b3010 	ldr	r3, [fp, #-16]
     544:	e3530000 	cmp	r3, #0
     548:	1a000001 	bne	554 <strncmp+0x98>
     54c:	e3a03000 	mov	r3, #0
     550:	ea000005 	b	56c <strncmp+0xb0>
     554:	e51b3008 	ldr	r3, [fp, #-8]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e1a02003 	mov	r2, r3
     560:	e51b300c 	ldr	r3, [fp, #-12]
     564:	e5d33000 	ldrb	r3, [r3]
     568:	e0423003 	sub	r3, r2, r3
     56c:	e1a00003 	mov	r0, r3
     570:	e28bd000 	add	sp, fp, #0
     574:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     578:	e12fff1e 	bx	lr

0000057c <strcmp>:
     57c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     580:	e28db000 	add	fp, sp, #0
     584:	e24dd00c 	sub	sp, sp, #12
     588:	e50b0008 	str	r0, [fp, #-8]
     58c:	e50b100c 	str	r1, [fp, #-12]
     590:	ea000005 	b	5ac <strcmp+0x30>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e2833001 	add	r3, r3, #1
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b300c 	ldr	r3, [fp, #-12]
     5a4:	e2833001 	add	r3, r3, #1
     5a8:	e50b300c 	str	r3, [fp, #-12]
     5ac:	e51b3008 	ldr	r3, [fp, #-8]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e3530000 	cmp	r3, #0
     5b8:	0a000005 	beq	5d4 <strcmp+0x58>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e5d32000 	ldrb	r2, [r3]
     5c4:	e51b300c 	ldr	r3, [fp, #-12]
     5c8:	e5d33000 	ldrb	r3, [r3]
     5cc:	e1520003 	cmp	r2, r3
     5d0:	0affffef 	beq	594 <strcmp+0x18>
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e5d33000 	ldrb	r3, [r3]
     5dc:	e1a02003 	mov	r2, r3
     5e0:	e51b300c 	ldr	r3, [fp, #-12]
     5e4:	e5d33000 	ldrb	r3, [r3]
     5e8:	e0423003 	sub	r3, r2, r3
     5ec:	e1a00003 	mov	r0, r3
     5f0:	e28bd000 	add	sp, fp, #0
     5f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <strlen>:
     5fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     600:	e28db000 	add	fp, sp, #0
     604:	e24dd014 	sub	sp, sp, #20
     608:	e50b0010 	str	r0, [fp, #-16]
     60c:	e3a03000 	mov	r3, #0
     610:	e50b3008 	str	r3, [fp, #-8]
     614:	ea000002 	b	624 <strlen+0x28>
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e2833001 	add	r3, r3, #1
     620:	e50b3008 	str	r3, [fp, #-8]
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e51b2010 	ldr	r2, [fp, #-16]
     62c:	e0823003 	add	r3, r2, r3
     630:	e5d33000 	ldrb	r3, [r3]
     634:	e3530000 	cmp	r3, #0
     638:	1afffff6 	bne	618 <strlen+0x1c>
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e1a00003 	mov	r0, r3
     644:	e28bd000 	add	sp, fp, #0
     648:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <memset>:
     650:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     654:	e28db000 	add	fp, sp, #0
     658:	e24dd024 	sub	sp, sp, #36	@ 0x24
     65c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     660:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     664:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     668:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     674:	e54b300d 	strb	r3, [fp, #-13]
     678:	e55b200d 	ldrb	r2, [fp, #-13]
     67c:	e1a03002 	mov	r3, r2
     680:	e1a03403 	lsl	r3, r3, #8
     684:	e0833002 	add	r3, r3, r2
     688:	e1a03803 	lsl	r3, r3, #16
     68c:	e1a02003 	mov	r2, r3
     690:	e55b300d 	ldrb	r3, [fp, #-13]
     694:	e1a03403 	lsl	r3, r3, #8
     698:	e1822003 	orr	r2, r2, r3
     69c:	e55b300d 	ldrb	r3, [fp, #-13]
     6a0:	e1823003 	orr	r3, r2, r3
     6a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     6a8:	ea000008 	b	6d0 <memset+0x80>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e55b200d 	ldrb	r2, [fp, #-13]
     6b4:	e5c32000 	strb	r2, [r3]
     6b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6bc:	e2433001 	sub	r3, r3, #1
     6c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e2833001 	add	r3, r3, #1
     6cc:	e50b3008 	str	r3, [fp, #-8]
     6d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6d4:	e3530000 	cmp	r3, #0
     6d8:	0a000003 	beq	6ec <memset+0x9c>
     6dc:	e51b3008 	ldr	r3, [fp, #-8]
     6e0:	e2033003 	and	r3, r3, #3
     6e4:	e3530000 	cmp	r3, #0
     6e8:	1affffef 	bne	6ac <memset+0x5c>
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e50b300c 	str	r3, [fp, #-12]
     6f4:	ea000008 	b	71c <memset+0xcc>
     6f8:	e51b300c 	ldr	r3, [fp, #-12]
     6fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     700:	e5832000 	str	r2, [r3]
     704:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     708:	e2433004 	sub	r3, r3, #4
     70c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     710:	e51b300c 	ldr	r3, [fp, #-12]
     714:	e2833004 	add	r3, r3, #4
     718:	e50b300c 	str	r3, [fp, #-12]
     71c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     720:	e3530003 	cmp	r3, #3
     724:	8afffff3 	bhi	6f8 <memset+0xa8>
     728:	e51b300c 	ldr	r3, [fp, #-12]
     72c:	e50b3008 	str	r3, [fp, #-8]
     730:	ea000008 	b	758 <memset+0x108>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e55b200d 	ldrb	r2, [fp, #-13]
     73c:	e5c32000 	strb	r2, [r3]
     740:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     744:	e2433001 	sub	r3, r3, #1
     748:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e2833001 	add	r3, r3, #1
     754:	e50b3008 	str	r3, [fp, #-8]
     758:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     75c:	e3530000 	cmp	r3, #0
     760:	1afffff3 	bne	734 <memset+0xe4>
     764:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     768:	e1a00003 	mov	r0, r3
     76c:	e28bd000 	add	sp, fp, #0
     770:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <strchr>:
     778:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     77c:	e28db000 	add	fp, sp, #0
     780:	e24dd00c 	sub	sp, sp, #12
     784:	e50b0008 	str	r0, [fp, #-8]
     788:	e1a03001 	mov	r3, r1
     78c:	e54b3009 	strb	r3, [fp, #-9]
     790:	ea000009 	b	7bc <strchr+0x44>
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5d33000 	ldrb	r3, [r3]
     79c:	e55b2009 	ldrb	r2, [fp, #-9]
     7a0:	e1520003 	cmp	r2, r3
     7a4:	1a000001 	bne	7b0 <strchr+0x38>
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	ea000007 	b	7d0 <strchr+0x58>
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e2833001 	add	r3, r3, #1
     7b8:	e50b3008 	str	r3, [fp, #-8]
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e5d33000 	ldrb	r3, [r3]
     7c4:	e3530000 	cmp	r3, #0
     7c8:	1afffff1 	bne	794 <strchr+0x1c>
     7cc:	e3a03000 	mov	r3, #0
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e28bd000 	add	sp, fp, #0
     7d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <gets>:
     7e0:	e92d4800 	push	{fp, lr}
     7e4:	e28db004 	add	fp, sp, #4
     7e8:	e24dd018 	sub	sp, sp, #24
     7ec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     7f0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     7f4:	e3a03000 	mov	r3, #0
     7f8:	e50b3008 	str	r3, [fp, #-8]
     7fc:	ea000016 	b	85c <gets+0x7c>
     800:	e24b300d 	sub	r3, fp, #13
     804:	e3a02001 	mov	r2, #1
     808:	e1a01003 	mov	r1, r3
     80c:	e3a00000 	mov	r0, #0
     810:	eb00009b 	bl	a84 <read>
     814:	e50b000c 	str	r0, [fp, #-12]
     818:	e51b300c 	ldr	r3, [fp, #-12]
     81c:	e3530000 	cmp	r3, #0
     820:	da000013 	ble	874 <gets+0x94>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e2832001 	add	r2, r3, #1
     82c:	e50b2008 	str	r2, [fp, #-8]
     830:	e1a02003 	mov	r2, r3
     834:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     838:	e0833002 	add	r3, r3, r2
     83c:	e55b200d 	ldrb	r2, [fp, #-13]
     840:	e5c32000 	strb	r2, [r3]
     844:	e55b300d 	ldrb	r3, [fp, #-13]
     848:	e353000a 	cmp	r3, #10
     84c:	0a000009 	beq	878 <gets+0x98>
     850:	e55b300d 	ldrb	r3, [fp, #-13]
     854:	e353000d 	cmp	r3, #13
     858:	0a000006 	beq	878 <gets+0x98>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e2833001 	add	r3, r3, #1
     864:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     868:	e1520003 	cmp	r2, r3
     86c:	caffffe3 	bgt	800 <gets+0x20>
     870:	ea000000 	b	878 <gets+0x98>
     874:	e1a00000 	nop			@ (mov r0, r0)
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     880:	e0823003 	add	r3, r2, r3
     884:	e3a02000 	mov	r2, #0
     888:	e5c32000 	strb	r2, [r3]
     88c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     890:	e1a00003 	mov	r0, r3
     894:	e24bd004 	sub	sp, fp, #4
     898:	e8bd8800 	pop	{fp, pc}

0000089c <stat>:
     89c:	e92d4800 	push	{fp, lr}
     8a0:	e28db004 	add	fp, sp, #4
     8a4:	e24dd010 	sub	sp, sp, #16
     8a8:	e50b0010 	str	r0, [fp, #-16]
     8ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8b0:	e3a01000 	mov	r1, #0
     8b4:	e51b0010 	ldr	r0, [fp, #-16]
     8b8:	eb00009e 	bl	b38 <open>
     8bc:	e50b0008 	str	r0, [fp, #-8]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e3530000 	cmp	r3, #0
     8c8:	aa000001 	bge	8d4 <stat+0x38>
     8cc:	e3e03000 	mvn	r3, #0
     8d0:	ea000006 	b	8f0 <stat+0x54>
     8d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     8d8:	e51b0008 	ldr	r0, [fp, #-8]
     8dc:	eb0000b0 	bl	ba4 <fstat>
     8e0:	e50b000c 	str	r0, [fp, #-12]
     8e4:	e51b0008 	ldr	r0, [fp, #-8]
     8e8:	eb000077 	bl	acc <close>
     8ec:	e51b300c 	ldr	r3, [fp, #-12]
     8f0:	e1a00003 	mov	r0, r3
     8f4:	e24bd004 	sub	sp, fp, #4
     8f8:	e8bd8800 	pop	{fp, pc}

000008fc <atoi>:
     8fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     900:	e28db000 	add	fp, sp, #0
     904:	e24dd014 	sub	sp, sp, #20
     908:	e50b0010 	str	r0, [fp, #-16]
     90c:	e3a03000 	mov	r3, #0
     910:	e50b3008 	str	r3, [fp, #-8]
     914:	ea00000c 	b	94c <atoi+0x50>
     918:	e51b2008 	ldr	r2, [fp, #-8]
     91c:	e1a03002 	mov	r3, r2
     920:	e1a03103 	lsl	r3, r3, #2
     924:	e0833002 	add	r3, r3, r2
     928:	e1a03083 	lsl	r3, r3, #1
     92c:	e1a01003 	mov	r1, r3
     930:	e51b3010 	ldr	r3, [fp, #-16]
     934:	e2832001 	add	r2, r3, #1
     938:	e50b2010 	str	r2, [fp, #-16]
     93c:	e5d33000 	ldrb	r3, [r3]
     940:	e0813003 	add	r3, r1, r3
     944:	e2433030 	sub	r3, r3, #48	@ 0x30
     948:	e50b3008 	str	r3, [fp, #-8]
     94c:	e51b3010 	ldr	r3, [fp, #-16]
     950:	e5d33000 	ldrb	r3, [r3]
     954:	e353002f 	cmp	r3, #47	@ 0x2f
     958:	9a000003 	bls	96c <atoi+0x70>
     95c:	e51b3010 	ldr	r3, [fp, #-16]
     960:	e5d33000 	ldrb	r3, [r3]
     964:	e3530039 	cmp	r3, #57	@ 0x39
     968:	9affffea 	bls	918 <atoi+0x1c>
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e1a00003 	mov	r0, r3
     974:	e28bd000 	add	sp, fp, #0
     978:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <memmove>:
     980:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     984:	e28db000 	add	fp, sp, #0
     988:	e24dd01c 	sub	sp, sp, #28
     98c:	e50b0010 	str	r0, [fp, #-16]
     990:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     994:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     998:	e51b3010 	ldr	r3, [fp, #-16]
     99c:	e50b3008 	str	r3, [fp, #-8]
     9a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9a4:	e50b300c 	str	r3, [fp, #-12]
     9a8:	ea000007 	b	9cc <memmove+0x4c>
     9ac:	e51b200c 	ldr	r2, [fp, #-12]
     9b0:	e2823001 	add	r3, r2, #1
     9b4:	e50b300c 	str	r3, [fp, #-12]
     9b8:	e51b3008 	ldr	r3, [fp, #-8]
     9bc:	e2831001 	add	r1, r3, #1
     9c0:	e50b1008 	str	r1, [fp, #-8]
     9c4:	e5d22000 	ldrb	r2, [r2]
     9c8:	e5c32000 	strb	r2, [r3]
     9cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9d0:	e2432001 	sub	r2, r3, #1
     9d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     9d8:	e3530000 	cmp	r3, #0
     9dc:	cafffff2 	bgt	9ac <memmove+0x2c>
     9e0:	e51b3010 	ldr	r3, [fp, #-16]
     9e4:	e1a00003 	mov	r0, r3
     9e8:	e28bd000 	add	sp, fp, #0
     9ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <fork>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00001 	mov	r0, #1
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <exit>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00002 	mov	r0, #2
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <wait>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00003 	mov	r0, #3
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <pipe>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00004 	mov	r0, #4
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <read>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00005 	mov	r0, #5
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <write>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00010 	mov	r0, #16
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <close>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00015 	mov	r0, #21
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <kill>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00006 	mov	r0, #6
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <exec>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00007 	mov	r0, #7
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <open>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a0000f 	mov	r0, #15
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <mknod>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00011 	mov	r0, #17
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <unlink>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00012 	mov	r0, #18
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <fstat>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00008 	mov	r0, #8
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <link>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00013 	mov	r0, #19
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <mkdir>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00014 	mov	r0, #20
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <chdir>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00009 	mov	r0, #9
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <dup>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a0000a 	mov	r0, #10
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <getpid>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a0000b 	mov	r0, #11
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <sbrk>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a0000c 	mov	r0, #12
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <sleep>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0000d 	mov	r0, #13
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <uptime>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a0000e 	mov	r0, #14
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <ps>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00016 	mov	r0, #22
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <settickets>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00017 	mov	r0, #23
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <srand>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00018 	mov	r0, #24
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <getpinfo>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00019 	mov	r0, #25
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <printpt>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a0001a 	mov	r0, #26
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <pgpte>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a0001b 	mov	r0, #27
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <ugetpid>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a0001c 	mov	r0, #28
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <kpt>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a0001d 	mov	r0, #29
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <putc>:
     e08:	e92d4800 	push	{fp, lr}
     e0c:	e28db004 	add	fp, sp, #4
     e10:	e24dd008 	sub	sp, sp, #8
     e14:	e50b0008 	str	r0, [fp, #-8]
     e18:	e1a03001 	mov	r3, r1
     e1c:	e54b3009 	strb	r3, [fp, #-9]
     e20:	e24b3009 	sub	r3, fp, #9
     e24:	e3a02001 	mov	r2, #1
     e28:	e1a01003 	mov	r1, r3
     e2c:	e51b0008 	ldr	r0, [fp, #-8]
     e30:	ebffff1c 	bl	aa8 <write>
     e34:	e1a00000 	nop			@ (mov r0, r0)
     e38:	e24bd004 	sub	sp, fp, #4
     e3c:	e8bd8800 	pop	{fp, pc}

00000e40 <printint>:
     e40:	e92d4800 	push	{fp, lr}
     e44:	e28db004 	add	fp, sp, #4
     e48:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e4c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e50:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e54:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e58:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e5c:	e3a03000 	mov	r3, #0
     e60:	e50b300c 	str	r3, [fp, #-12]
     e64:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     e68:	e3530000 	cmp	r3, #0
     e6c:	0a000008 	beq	e94 <printint+0x54>
     e70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e74:	e3530000 	cmp	r3, #0
     e78:	aa000005 	bge	e94 <printint+0x54>
     e7c:	e3a03001 	mov	r3, #1
     e80:	e50b300c 	str	r3, [fp, #-12]
     e84:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e88:	e2633000 	rsb	r3, r3, #0
     e8c:	e50b3010 	str	r3, [fp, #-16]
     e90:	ea000001 	b	e9c <printint+0x5c>
     e94:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e98:	e50b3010 	str	r3, [fp, #-16]
     e9c:	e3a03000 	mov	r3, #0
     ea0:	e50b3008 	str	r3, [fp, #-8]
     ea4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ea8:	e51b3010 	ldr	r3, [fp, #-16]
     eac:	e1a01002 	mov	r1, r2
     eb0:	e1a00003 	mov	r0, r3
     eb4:	eb0001d5 	bl	1610 <__aeabi_uidivmod>
     eb8:	e1a03001 	mov	r3, r1
     ebc:	e1a01003 	mov	r1, r3
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e2832001 	add	r2, r3, #1
     ec8:	e50b2008 	str	r2, [fp, #-8]
     ecc:	e59f20a0 	ldr	r2, [pc, #160]	@ f74 <printint+0x134>
     ed0:	e7d22001 	ldrb	r2, [r2, r1]
     ed4:	e2433004 	sub	r3, r3, #4
     ed8:	e083300b 	add	r3, r3, fp
     edc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ee0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ee4:	e1a01003 	mov	r1, r3
     ee8:	e51b0010 	ldr	r0, [fp, #-16]
     eec:	eb00018a 	bl	151c <__udivsi3>
     ef0:	e1a03000 	mov	r3, r0
     ef4:	e50b3010 	str	r3, [fp, #-16]
     ef8:	e51b3010 	ldr	r3, [fp, #-16]
     efc:	e3530000 	cmp	r3, #0
     f00:	1affffe7 	bne	ea4 <printint+0x64>
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e3530000 	cmp	r3, #0
     f0c:	0a00000e 	beq	f4c <printint+0x10c>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e2832001 	add	r2, r3, #1
     f18:	e50b2008 	str	r2, [fp, #-8]
     f1c:	e2433004 	sub	r3, r3, #4
     f20:	e083300b 	add	r3, r3, fp
     f24:	e3a0202d 	mov	r2, #45	@ 0x2d
     f28:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f2c:	ea000006 	b	f4c <printint+0x10c>
     f30:	e24b2020 	sub	r2, fp, #32
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e0823003 	add	r3, r2, r3
     f3c:	e5d33000 	ldrb	r3, [r3]
     f40:	e1a01003 	mov	r1, r3
     f44:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f48:	ebffffae 	bl	e08 <putc>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e2433001 	sub	r3, r3, #1
     f54:	e50b3008 	str	r3, [fp, #-8]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e3530000 	cmp	r3, #0
     f60:	aafffff2 	bge	f30 <printint+0xf0>
     f64:	e1a00000 	nop			@ (mov r0, r0)
     f68:	e1a00000 	nop			@ (mov r0, r0)
     f6c:	e24bd004 	sub	sp, fp, #4
     f70:	e8bd8800 	pop	{fp, pc}
     f74:	00001674 	.word	0x00001674

00000f78 <printf>:
     f78:	e92d000e 	push	{r1, r2, r3}
     f7c:	e92d4800 	push	{fp, lr}
     f80:	e28db004 	add	fp, sp, #4
     f84:	e24dd024 	sub	sp, sp, #36	@ 0x24
     f88:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     f8c:	e3a03000 	mov	r3, #0
     f90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f94:	e28b3008 	add	r3, fp, #8
     f98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f9c:	e3a03000 	mov	r3, #0
     fa0:	e50b3010 	str	r3, [fp, #-16]
     fa4:	ea000074 	b	117c <printf+0x204>
     fa8:	e59b2004 	ldr	r2, [fp, #4]
     fac:	e51b3010 	ldr	r3, [fp, #-16]
     fb0:	e0823003 	add	r3, r2, r3
     fb4:	e5d33000 	ldrb	r3, [r3]
     fb8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     fbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fc0:	e3530000 	cmp	r3, #0
     fc4:	1a00000b 	bne	ff8 <printf+0x80>
     fc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fcc:	e3530025 	cmp	r3, #37	@ 0x25
     fd0:	1a000002 	bne	fe0 <printf+0x68>
     fd4:	e3a03025 	mov	r3, #37	@ 0x25
     fd8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fdc:	ea000063 	b	1170 <printf+0x1f8>
     fe0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe4:	e6ef3073 	uxtb	r3, r3
     fe8:	e1a01003 	mov	r1, r3
     fec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff0:	ebffff84 	bl	e08 <putc>
     ff4:	ea00005d 	b	1170 <printf+0x1f8>
     ff8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ffc:	e3530025 	cmp	r3, #37	@ 0x25
    1000:	1a00005a 	bne	1170 <printf+0x1f8>
    1004:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1008:	e3530064 	cmp	r3, #100	@ 0x64
    100c:	1a00000a 	bne	103c <printf+0xc4>
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e1a01003 	mov	r1, r3
    101c:	e3a03001 	mov	r3, #1
    1020:	e3a0200a 	mov	r2, #10
    1024:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1028:	ebffff84 	bl	e40 <printint>
    102c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1030:	e2833004 	add	r3, r3, #4
    1034:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1038:	ea00004a 	b	1168 <printf+0x1f0>
    103c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e3530078 	cmp	r3, #120	@ 0x78
    1044:	0a000002 	beq	1054 <printf+0xdc>
    1048:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    104c:	e3530070 	cmp	r3, #112	@ 0x70
    1050:	1a00000a 	bne	1080 <printf+0x108>
    1054:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1058:	e5933000 	ldr	r3, [r3]
    105c:	e1a01003 	mov	r1, r3
    1060:	e3a03000 	mov	r3, #0
    1064:	e3a02010 	mov	r2, #16
    1068:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    106c:	ebffff73 	bl	e40 <printint>
    1070:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1074:	e2833004 	add	r3, r3, #4
    1078:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    107c:	ea000039 	b	1168 <printf+0x1f0>
    1080:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1084:	e3530073 	cmp	r3, #115	@ 0x73
    1088:	1a000018 	bne	10f0 <printf+0x178>
    108c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e50b300c 	str	r3, [fp, #-12]
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e2833004 	add	r3, r3, #4
    10a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	e51b300c 	ldr	r3, [fp, #-12]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1a00000a 	bne	10dc <printf+0x164>
    10b0:	e59f30f4 	ldr	r3, [pc, #244]	@ 11ac <printf+0x234>
    10b4:	e50b300c 	str	r3, [fp, #-12]
    10b8:	ea000007 	b	10dc <printf+0x164>
    10bc:	e51b300c 	ldr	r3, [fp, #-12]
    10c0:	e5d33000 	ldrb	r3, [r3]
    10c4:	e1a01003 	mov	r1, r3
    10c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10cc:	ebffff4d 	bl	e08 <putc>
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e2833001 	add	r3, r3, #1
    10d8:	e50b300c 	str	r3, [fp, #-12]
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e5d33000 	ldrb	r3, [r3]
    10e4:	e3530000 	cmp	r3, #0
    10e8:	1afffff3 	bne	10bc <printf+0x144>
    10ec:	ea00001d 	b	1168 <printf+0x1f0>
    10f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f4:	e3530063 	cmp	r3, #99	@ 0x63
    10f8:	1a000009 	bne	1124 <printf+0x1ac>
    10fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e6ef3073 	uxtb	r3, r3
    1108:	e1a01003 	mov	r1, r3
    110c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1110:	ebffff3c 	bl	e08 <putc>
    1114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1118:	e2833004 	add	r3, r3, #4
    111c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1120:	ea000010 	b	1168 <printf+0x1f0>
    1124:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1128:	e3530025 	cmp	r3, #37	@ 0x25
    112c:	1a000005 	bne	1148 <printf+0x1d0>
    1130:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1134:	e6ef3073 	uxtb	r3, r3
    1138:	e1a01003 	mov	r1, r3
    113c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1140:	ebffff30 	bl	e08 <putc>
    1144:	ea000007 	b	1168 <printf+0x1f0>
    1148:	e3a01025 	mov	r1, #37	@ 0x25
    114c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1150:	ebffff2c 	bl	e08 <putc>
    1154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1158:	e6ef3073 	uxtb	r3, r3
    115c:	e1a01003 	mov	r1, r3
    1160:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1164:	ebffff27 	bl	e08 <putc>
    1168:	e3a03000 	mov	r3, #0
    116c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1170:	e51b3010 	ldr	r3, [fp, #-16]
    1174:	e2833001 	add	r3, r3, #1
    1178:	e50b3010 	str	r3, [fp, #-16]
    117c:	e59b2004 	ldr	r2, [fp, #4]
    1180:	e51b3010 	ldr	r3, [fp, #-16]
    1184:	e0823003 	add	r3, r2, r3
    1188:	e5d33000 	ldrb	r3, [r3]
    118c:	e3530000 	cmp	r3, #0
    1190:	1affff84 	bne	fa8 <printf+0x30>
    1194:	e1a00000 	nop			@ (mov r0, r0)
    1198:	e1a00000 	nop			@ (mov r0, r0)
    119c:	e24bd004 	sub	sp, fp, #4
    11a0:	e8bd4800 	pop	{fp, lr}
    11a4:	e28dd00c 	add	sp, sp, #12
    11a8:	e12fff1e 	bx	lr
    11ac:	0000166c 	.word	0x0000166c

000011b0 <free>:
    11b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11b4:	e28db000 	add	fp, sp, #0
    11b8:	e24dd014 	sub	sp, sp, #20
    11bc:	e50b0010 	str	r0, [fp, #-16]
    11c0:	e51b3010 	ldr	r3, [fp, #-16]
    11c4:	e2433008 	sub	r3, r3, #8
    11c8:	e50b300c 	str	r3, [fp, #-12]
    11cc:	e59f3154 	ldr	r3, [pc, #340]	@ 1328 <free+0x178>
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e50b3008 	str	r3, [fp, #-8]
    11d8:	ea000010 	b	1220 <free+0x70>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e51b2008 	ldr	r2, [fp, #-8]
    11e8:	e1520003 	cmp	r2, r3
    11ec:	3a000008 	bcc	1214 <free+0x64>
    11f0:	e51b200c 	ldr	r2, [fp, #-12]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e1520003 	cmp	r2, r3
    11fc:	8a000010 	bhi	1244 <free+0x94>
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e51b200c 	ldr	r2, [fp, #-12]
    120c:	e1520003 	cmp	r2, r3
    1210:	3a00000b 	bcc	1244 <free+0x94>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5933000 	ldr	r3, [r3]
    121c:	e50b3008 	str	r3, [fp, #-8]
    1220:	e51b200c 	ldr	r2, [fp, #-12]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e1520003 	cmp	r2, r3
    122c:	9affffea 	bls	11dc <free+0x2c>
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e5933000 	ldr	r3, [r3]
    1238:	e51b200c 	ldr	r2, [fp, #-12]
    123c:	e1520003 	cmp	r2, r3
    1240:	2affffe5 	bcs	11dc <free+0x2c>
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e5933004 	ldr	r3, [r3, #4]
    124c:	e1a03183 	lsl	r3, r3, #3
    1250:	e51b200c 	ldr	r2, [fp, #-12]
    1254:	e0822003 	add	r2, r2, r3
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e1520003 	cmp	r2, r3
    1264:	1a00000d 	bne	12a0 <free+0xf0>
    1268:	e51b300c 	ldr	r3, [fp, #-12]
    126c:	e5932004 	ldr	r2, [r3, #4]
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e5933004 	ldr	r3, [r3, #4]
    127c:	e0822003 	add	r2, r2, r3
    1280:	e51b300c 	ldr	r3, [fp, #-12]
    1284:	e5832004 	str	r2, [r3, #4]
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5933000 	ldr	r3, [r3]
    1290:	e5932000 	ldr	r2, [r3]
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e5832000 	str	r2, [r3]
    129c:	ea000003 	b	12b0 <free+0x100>
    12a0:	e51b3008 	ldr	r3, [fp, #-8]
    12a4:	e5932000 	ldr	r2, [r3]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e5832000 	str	r2, [r3]
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5933004 	ldr	r3, [r3, #4]
    12b8:	e1a03183 	lsl	r3, r3, #3
    12bc:	e51b2008 	ldr	r2, [fp, #-8]
    12c0:	e0823003 	add	r3, r2, r3
    12c4:	e51b200c 	ldr	r2, [fp, #-12]
    12c8:	e1520003 	cmp	r2, r3
    12cc:	1a00000b 	bne	1300 <free+0x150>
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e5932004 	ldr	r2, [r3, #4]
    12d8:	e51b300c 	ldr	r3, [fp, #-12]
    12dc:	e5933004 	ldr	r3, [r3, #4]
    12e0:	e0822003 	add	r2, r2, r3
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5832004 	str	r2, [r3, #4]
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5932000 	ldr	r2, [r3]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5832000 	str	r2, [r3]
    12fc:	ea000002 	b	130c <free+0x15c>
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e51b200c 	ldr	r2, [fp, #-12]
    1308:	e5832000 	str	r2, [r3]
    130c:	e59f2014 	ldr	r2, [pc, #20]	@ 1328 <free+0x178>
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e5823000 	str	r3, [r2]
    1318:	e1a00000 	nop			@ (mov r0, r0)
    131c:	e28bd000 	add	sp, fp, #0
    1320:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1324:	e12fff1e 	bx	lr
    1328:	00001a90 	.word	0x00001a90

0000132c <morecore>:
    132c:	e92d4800 	push	{fp, lr}
    1330:	e28db004 	add	fp, sp, #4
    1334:	e24dd010 	sub	sp, sp, #16
    1338:	e50b0010 	str	r0, [fp, #-16]
    133c:	e51b3010 	ldr	r3, [fp, #-16]
    1340:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1344:	2a000001 	bcs	1350 <morecore+0x24>
    1348:	e3a03a01 	mov	r3, #4096	@ 0x1000
    134c:	e50b3010 	str	r3, [fp, #-16]
    1350:	e51b3010 	ldr	r3, [fp, #-16]
    1354:	e1a03183 	lsl	r3, r3, #3
    1358:	e1a00003 	mov	r0, r3
    135c:	ebfffe46 	bl	c7c <sbrk>
    1360:	e50b0008 	str	r0, [fp, #-8]
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e3730001 	cmn	r3, #1
    136c:	1a000001 	bne	1378 <morecore+0x4c>
    1370:	e3a03000 	mov	r3, #0
    1374:	ea00000a 	b	13a4 <morecore+0x78>
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e50b300c 	str	r3, [fp, #-12]
    1380:	e51b300c 	ldr	r3, [fp, #-12]
    1384:	e51b2010 	ldr	r2, [fp, #-16]
    1388:	e5832004 	str	r2, [r3, #4]
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e2833008 	add	r3, r3, #8
    1394:	e1a00003 	mov	r0, r3
    1398:	ebffff84 	bl	11b0 <free>
    139c:	e59f300c 	ldr	r3, [pc, #12]	@ 13b0 <morecore+0x84>
    13a0:	e5933000 	ldr	r3, [r3]
    13a4:	e1a00003 	mov	r0, r3
    13a8:	e24bd004 	sub	sp, fp, #4
    13ac:	e8bd8800 	pop	{fp, pc}
    13b0:	00001a90 	.word	0x00001a90

000013b4 <malloc>:
    13b4:	e92d4800 	push	{fp, lr}
    13b8:	e28db004 	add	fp, sp, #4
    13bc:	e24dd018 	sub	sp, sp, #24
    13c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c8:	e2833007 	add	r3, r3, #7
    13cc:	e1a031a3 	lsr	r3, r3, #3
    13d0:	e2833001 	add	r3, r3, #1
    13d4:	e50b3010 	str	r3, [fp, #-16]
    13d8:	e59f3134 	ldr	r3, [pc, #308]	@ 1514 <malloc+0x160>
    13dc:	e5933000 	ldr	r3, [r3]
    13e0:	e50b300c 	str	r3, [fp, #-12]
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e3530000 	cmp	r3, #0
    13ec:	1a00000b 	bne	1420 <malloc+0x6c>
    13f0:	e59f3120 	ldr	r3, [pc, #288]	@ 1518 <malloc+0x164>
    13f4:	e50b300c 	str	r3, [fp, #-12]
    13f8:	e59f2114 	ldr	r2, [pc, #276]	@ 1514 <malloc+0x160>
    13fc:	e51b300c 	ldr	r3, [fp, #-12]
    1400:	e5823000 	str	r3, [r2]
    1404:	e59f3108 	ldr	r3, [pc, #264]	@ 1514 <malloc+0x160>
    1408:	e5933000 	ldr	r3, [r3]
    140c:	e59f2104 	ldr	r2, [pc, #260]	@ 1518 <malloc+0x164>
    1410:	e5823000 	str	r3, [r2]
    1414:	e59f30fc 	ldr	r3, [pc, #252]	@ 1518 <malloc+0x164>
    1418:	e3a02000 	mov	r2, #0
    141c:	e5832004 	str	r2, [r3, #4]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e50b3008 	str	r3, [fp, #-8]
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5933004 	ldr	r3, [r3, #4]
    1434:	e51b2010 	ldr	r2, [fp, #-16]
    1438:	e1520003 	cmp	r2, r3
    143c:	8a00001e 	bhi	14bc <malloc+0x108>
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e5933004 	ldr	r3, [r3, #4]
    1448:	e51b2010 	ldr	r2, [fp, #-16]
    144c:	e1520003 	cmp	r2, r3
    1450:	1a000004 	bne	1468 <malloc+0xb4>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5932000 	ldr	r2, [r3]
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e5832000 	str	r2, [r3]
    1464:	ea00000e 	b	14a4 <malloc+0xf0>
    1468:	e51b3008 	ldr	r3, [fp, #-8]
    146c:	e5932004 	ldr	r2, [r3, #4]
    1470:	e51b3010 	ldr	r3, [fp, #-16]
    1474:	e0422003 	sub	r2, r2, r3
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5832004 	str	r2, [r3, #4]
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e5933004 	ldr	r3, [r3, #4]
    1488:	e1a03183 	lsl	r3, r3, #3
    148c:	e51b2008 	ldr	r2, [fp, #-8]
    1490:	e0823003 	add	r3, r2, r3
    1494:	e50b3008 	str	r3, [fp, #-8]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e51b2010 	ldr	r2, [fp, #-16]
    14a0:	e5832004 	str	r2, [r3, #4]
    14a4:	e59f2068 	ldr	r2, [pc, #104]	@ 1514 <malloc+0x160>
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e5823000 	str	r3, [r2]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e2833008 	add	r3, r3, #8
    14b8:	ea000012 	b	1508 <malloc+0x154>
    14bc:	e59f3050 	ldr	r3, [pc, #80]	@ 1514 <malloc+0x160>
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e51b2008 	ldr	r2, [fp, #-8]
    14c8:	e1520003 	cmp	r2, r3
    14cc:	1a000007 	bne	14f0 <malloc+0x13c>
    14d0:	e51b0010 	ldr	r0, [fp, #-16]
    14d4:	ebffff94 	bl	132c <morecore>
    14d8:	e50b0008 	str	r0, [fp, #-8]
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e3530000 	cmp	r3, #0
    14e4:	1a000001 	bne	14f0 <malloc+0x13c>
    14e8:	e3a03000 	mov	r3, #0
    14ec:	ea000005 	b	1508 <malloc+0x154>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e50b300c 	str	r3, [fp, #-12]
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5933000 	ldr	r3, [r3]
    1500:	e50b3008 	str	r3, [fp, #-8]
    1504:	eaffffc8 	b	142c <malloc+0x78>
    1508:	e1a00003 	mov	r0, r3
    150c:	e24bd004 	sub	sp, fp, #4
    1510:	e8bd8800 	pop	{fp, pc}
    1514:	00001a90 	.word	0x00001a90
    1518:	00001a88 	.word	0x00001a88

0000151c <__udivsi3>:
    151c:	e2512001 	subs	r2, r1, #1
    1520:	012fff1e 	bxeq	lr
    1524:	3a000036 	bcc	1604 <__udivsi3+0xe8>
    1528:	e1500001 	cmp	r0, r1
    152c:	9a000022 	bls	15bc <__udivsi3+0xa0>
    1530:	e1110002 	tst	r1, r2
    1534:	0a000023 	beq	15c8 <__udivsi3+0xac>
    1538:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    153c:	01a01181 	lsleq	r1, r1, #3
    1540:	03a03008 	moveq	r3, #8
    1544:	13a03001 	movne	r3, #1
    1548:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    154c:	31510000 	cmpcc	r1, r0
    1550:	31a01201 	lslcc	r1, r1, #4
    1554:	31a03203 	lslcc	r3, r3, #4
    1558:	3afffffa 	bcc	1548 <__udivsi3+0x2c>
    155c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1560:	31510000 	cmpcc	r1, r0
    1564:	31a01081 	lslcc	r1, r1, #1
    1568:	31a03083 	lslcc	r3, r3, #1
    156c:	3afffffa 	bcc	155c <__udivsi3+0x40>
    1570:	e3a02000 	mov	r2, #0
    1574:	e1500001 	cmp	r0, r1
    1578:	20400001 	subcs	r0, r0, r1
    157c:	21822003 	orrcs	r2, r2, r3
    1580:	e15000a1 	cmp	r0, r1, lsr #1
    1584:	204000a1 	subcs	r0, r0, r1, lsr #1
    1588:	218220a3 	orrcs	r2, r2, r3, lsr #1
    158c:	e1500121 	cmp	r0, r1, lsr #2
    1590:	20400121 	subcs	r0, r0, r1, lsr #2
    1594:	21822123 	orrcs	r2, r2, r3, lsr #2
    1598:	e15001a1 	cmp	r0, r1, lsr #3
    159c:	204001a1 	subcs	r0, r0, r1, lsr #3
    15a0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15a4:	e3500000 	cmp	r0, #0
    15a8:	11b03223 	lsrsne	r3, r3, #4
    15ac:	11a01221 	lsrne	r1, r1, #4
    15b0:	1affffef 	bne	1574 <__udivsi3+0x58>
    15b4:	e1a00002 	mov	r0, r2
    15b8:	e12fff1e 	bx	lr
    15bc:	03a00001 	moveq	r0, #1
    15c0:	13a00000 	movne	r0, #0
    15c4:	e12fff1e 	bx	lr
    15c8:	e3510801 	cmp	r1, #65536	@ 0x10000
    15cc:	21a01821 	lsrcs	r1, r1, #16
    15d0:	23a02010 	movcs	r2, #16
    15d4:	33a02000 	movcc	r2, #0
    15d8:	e3510c01 	cmp	r1, #256	@ 0x100
    15dc:	21a01421 	lsrcs	r1, r1, #8
    15e0:	22822008 	addcs	r2, r2, #8
    15e4:	e3510010 	cmp	r1, #16
    15e8:	21a01221 	lsrcs	r1, r1, #4
    15ec:	22822004 	addcs	r2, r2, #4
    15f0:	e3510004 	cmp	r1, #4
    15f4:	82822003 	addhi	r2, r2, #3
    15f8:	908220a1 	addls	r2, r2, r1, lsr #1
    15fc:	e1a00230 	lsr	r0, r0, r2
    1600:	e12fff1e 	bx	lr
    1604:	e3500000 	cmp	r0, #0
    1608:	13e00000 	mvnne	r0, #0
    160c:	ea000007 	b	1630 <__aeabi_idiv0>

00001610 <__aeabi_uidivmod>:
    1610:	e3510000 	cmp	r1, #0
    1614:	0afffffa 	beq	1604 <__udivsi3+0xe8>
    1618:	e92d4003 	push	{r0, r1, lr}
    161c:	ebffffbe 	bl	151c <__udivsi3>
    1620:	e8bd4006 	pop	{r1, r2, lr}
    1624:	e0030092 	mul	r3, r2, r0
    1628:	e0411003 	sub	r1, r1, r3
    162c:	e12fff1e 	bx	lr

00001630 <__aeabi_idiv0>:
    1630:	e12fff1e 	bx	lr
