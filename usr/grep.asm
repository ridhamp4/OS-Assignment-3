
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
     140:	000015f8 	.word	0x000015f8

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
     16c:	eb00035d 	bl	ee8 <printf>
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
     1f8:	eb00033a 	bl	ee8 <printf>
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
     234:	000015a4 	.word	0x000015a4
     238:	000015c4 	.word	0x000015c4

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

00000d78 <putc>:
     d78:	e92d4800 	push	{fp, lr}
     d7c:	e28db004 	add	fp, sp, #4
     d80:	e24dd008 	sub	sp, sp, #8
     d84:	e50b0008 	str	r0, [fp, #-8]
     d88:	e1a03001 	mov	r3, r1
     d8c:	e54b3009 	strb	r3, [fp, #-9]
     d90:	e24b3009 	sub	r3, fp, #9
     d94:	e3a02001 	mov	r2, #1
     d98:	e1a01003 	mov	r1, r3
     d9c:	e51b0008 	ldr	r0, [fp, #-8]
     da0:	ebffff40 	bl	aa8 <write>
     da4:	e1a00000 	nop			@ (mov r0, r0)
     da8:	e24bd004 	sub	sp, fp, #4
     dac:	e8bd8800 	pop	{fp, pc}

00000db0 <printint>:
     db0:	e92d4800 	push	{fp, lr}
     db4:	e28db004 	add	fp, sp, #4
     db8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     dbc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     dc0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     dc4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     dc8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     dcc:	e3a03000 	mov	r3, #0
     dd0:	e50b300c 	str	r3, [fp, #-12]
     dd4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     dd8:	e3530000 	cmp	r3, #0
     ddc:	0a000008 	beq	e04 <printint+0x54>
     de0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     de4:	e3530000 	cmp	r3, #0
     de8:	aa000005 	bge	e04 <printint+0x54>
     dec:	e3a03001 	mov	r3, #1
     df0:	e50b300c 	str	r3, [fp, #-12]
     df4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     df8:	e2633000 	rsb	r3, r3, #0
     dfc:	e50b3010 	str	r3, [fp, #-16]
     e00:	ea000001 	b	e0c <printint+0x5c>
     e04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     e08:	e50b3010 	str	r3, [fp, #-16]
     e0c:	e3a03000 	mov	r3, #0
     e10:	e50b3008 	str	r3, [fp, #-8]
     e14:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     e18:	e51b3010 	ldr	r3, [fp, #-16]
     e1c:	e1a01002 	mov	r1, r2
     e20:	e1a00003 	mov	r0, r3
     e24:	eb0001d5 	bl	1580 <__aeabi_uidivmod>
     e28:	e1a03001 	mov	r3, r1
     e2c:	e1a01003 	mov	r1, r3
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e2832001 	add	r2, r3, #1
     e38:	e50b2008 	str	r2, [fp, #-8]
     e3c:	e59f20a0 	ldr	r2, [pc, #160]	@ ee4 <printint+0x134>
     e40:	e7d22001 	ldrb	r2, [r2, r1]
     e44:	e2433004 	sub	r3, r3, #4
     e48:	e083300b 	add	r3, r3, fp
     e4c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e50:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e54:	e1a01003 	mov	r1, r3
     e58:	e51b0010 	ldr	r0, [fp, #-16]
     e5c:	eb00018a 	bl	148c <__udivsi3>
     e60:	e1a03000 	mov	r3, r0
     e64:	e50b3010 	str	r3, [fp, #-16]
     e68:	e51b3010 	ldr	r3, [fp, #-16]
     e6c:	e3530000 	cmp	r3, #0
     e70:	1affffe7 	bne	e14 <printint+0x64>
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e3530000 	cmp	r3, #0
     e7c:	0a00000e 	beq	ebc <printint+0x10c>
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e2832001 	add	r2, r3, #1
     e88:	e50b2008 	str	r2, [fp, #-8]
     e8c:	e2433004 	sub	r3, r3, #4
     e90:	e083300b 	add	r3, r3, fp
     e94:	e3a0202d 	mov	r2, #45	@ 0x2d
     e98:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e9c:	ea000006 	b	ebc <printint+0x10c>
     ea0:	e24b2020 	sub	r2, fp, #32
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e0823003 	add	r3, r2, r3
     eac:	e5d33000 	ldrb	r3, [r3]
     eb0:	e1a01003 	mov	r1, r3
     eb4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     eb8:	ebffffae 	bl	d78 <putc>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e2433001 	sub	r3, r3, #1
     ec4:	e50b3008 	str	r3, [fp, #-8]
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e3530000 	cmp	r3, #0
     ed0:	aafffff2 	bge	ea0 <printint+0xf0>
     ed4:	e1a00000 	nop			@ (mov r0, r0)
     ed8:	e1a00000 	nop			@ (mov r0, r0)
     edc:	e24bd004 	sub	sp, fp, #4
     ee0:	e8bd8800 	pop	{fp, pc}
     ee4:	000015e4 	.word	0x000015e4

00000ee8 <printf>:
     ee8:	e92d000e 	push	{r1, r2, r3}
     eec:	e92d4800 	push	{fp, lr}
     ef0:	e28db004 	add	fp, sp, #4
     ef4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ef8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     efc:	e3a03000 	mov	r3, #0
     f00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f04:	e28b3008 	add	r3, fp, #8
     f08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f0c:	e3a03000 	mov	r3, #0
     f10:	e50b3010 	str	r3, [fp, #-16]
     f14:	ea000074 	b	10ec <printf+0x204>
     f18:	e59b2004 	ldr	r2, [fp, #4]
     f1c:	e51b3010 	ldr	r3, [fp, #-16]
     f20:	e0823003 	add	r3, r2, r3
     f24:	e5d33000 	ldrb	r3, [r3]
     f28:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f30:	e3530000 	cmp	r3, #0
     f34:	1a00000b 	bne	f68 <printf+0x80>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e3530025 	cmp	r3, #37	@ 0x25
     f40:	1a000002 	bne	f50 <printf+0x68>
     f44:	e3a03025 	mov	r3, #37	@ 0x25
     f48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f4c:	ea000063 	b	10e0 <printf+0x1f8>
     f50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f54:	e6ef3073 	uxtb	r3, r3
     f58:	e1a01003 	mov	r1, r3
     f5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f60:	ebffff84 	bl	d78 <putc>
     f64:	ea00005d 	b	10e0 <printf+0x1f8>
     f68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f6c:	e3530025 	cmp	r3, #37	@ 0x25
     f70:	1a00005a 	bne	10e0 <printf+0x1f8>
     f74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f78:	e3530064 	cmp	r3, #100	@ 0x64
     f7c:	1a00000a 	bne	fac <printf+0xc4>
     f80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f84:	e5933000 	ldr	r3, [r3]
     f88:	e1a01003 	mov	r1, r3
     f8c:	e3a03001 	mov	r3, #1
     f90:	e3a0200a 	mov	r2, #10
     f94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f98:	ebffff84 	bl	db0 <printint>
     f9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa0:	e2833004 	add	r3, r3, #4
     fa4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fa8:	ea00004a 	b	10d8 <printf+0x1f0>
     fac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fb0:	e3530078 	cmp	r3, #120	@ 0x78
     fb4:	0a000002 	beq	fc4 <printf+0xdc>
     fb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fbc:	e3530070 	cmp	r3, #112	@ 0x70
     fc0:	1a00000a 	bne	ff0 <printf+0x108>
     fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e1a01003 	mov	r1, r3
     fd0:	e3a03000 	mov	r3, #0
     fd4:	e3a02010 	mov	r2, #16
     fd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fdc:	ebffff73 	bl	db0 <printint>
     fe0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe4:	e2833004 	add	r3, r3, #4
     fe8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fec:	ea000039 	b	10d8 <printf+0x1f0>
     ff0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff4:	e3530073 	cmp	r3, #115	@ 0x73
     ff8:	1a000018 	bne	1060 <printf+0x178>
     ffc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e50b300c 	str	r3, [fp, #-12]
    1008:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    100c:	e2833004 	add	r3, r3, #4
    1010:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e51b300c 	ldr	r3, [fp, #-12]
    1018:	e3530000 	cmp	r3, #0
    101c:	1a00000a 	bne	104c <printf+0x164>
    1020:	e59f30f4 	ldr	r3, [pc, #244]	@ 111c <printf+0x234>
    1024:	e50b300c 	str	r3, [fp, #-12]
    1028:	ea000007 	b	104c <printf+0x164>
    102c:	e51b300c 	ldr	r3, [fp, #-12]
    1030:	e5d33000 	ldrb	r3, [r3]
    1034:	e1a01003 	mov	r1, r3
    1038:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    103c:	ebffff4d 	bl	d78 <putc>
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e2833001 	add	r3, r3, #1
    1048:	e50b300c 	str	r3, [fp, #-12]
    104c:	e51b300c 	ldr	r3, [fp, #-12]
    1050:	e5d33000 	ldrb	r3, [r3]
    1054:	e3530000 	cmp	r3, #0
    1058:	1afffff3 	bne	102c <printf+0x144>
    105c:	ea00001d 	b	10d8 <printf+0x1f0>
    1060:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e3530063 	cmp	r3, #99	@ 0x63
    1068:	1a000009 	bne	1094 <printf+0x1ac>
    106c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1070:	e5933000 	ldr	r3, [r3]
    1074:	e6ef3073 	uxtb	r3, r3
    1078:	e1a01003 	mov	r1, r3
    107c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1080:	ebffff3c 	bl	d78 <putc>
    1084:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1088:	e2833004 	add	r3, r3, #4
    108c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1090:	ea000010 	b	10d8 <printf+0x1f0>
    1094:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1098:	e3530025 	cmp	r3, #37	@ 0x25
    109c:	1a000005 	bne	10b8 <printf+0x1d0>
    10a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a4:	e6ef3073 	uxtb	r3, r3
    10a8:	e1a01003 	mov	r1, r3
    10ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10b0:	ebffff30 	bl	d78 <putc>
    10b4:	ea000007 	b	10d8 <printf+0x1f0>
    10b8:	e3a01025 	mov	r1, #37	@ 0x25
    10bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c0:	ebffff2c 	bl	d78 <putc>
    10c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e6ef3073 	uxtb	r3, r3
    10cc:	e1a01003 	mov	r1, r3
    10d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	ebffff27 	bl	d78 <putc>
    10d8:	e3a03000 	mov	r3, #0
    10dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10e0:	e51b3010 	ldr	r3, [fp, #-16]
    10e4:	e2833001 	add	r3, r3, #1
    10e8:	e50b3010 	str	r3, [fp, #-16]
    10ec:	e59b2004 	ldr	r2, [fp, #4]
    10f0:	e51b3010 	ldr	r3, [fp, #-16]
    10f4:	e0823003 	add	r3, r2, r3
    10f8:	e5d33000 	ldrb	r3, [r3]
    10fc:	e3530000 	cmp	r3, #0
    1100:	1affff84 	bne	f18 <printf+0x30>
    1104:	e1a00000 	nop			@ (mov r0, r0)
    1108:	e1a00000 	nop			@ (mov r0, r0)
    110c:	e24bd004 	sub	sp, fp, #4
    1110:	e8bd4800 	pop	{fp, lr}
    1114:	e28dd00c 	add	sp, sp, #12
    1118:	e12fff1e 	bx	lr
    111c:	000015dc 	.word	0x000015dc

00001120 <free>:
    1120:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1124:	e28db000 	add	fp, sp, #0
    1128:	e24dd014 	sub	sp, sp, #20
    112c:	e50b0010 	str	r0, [fp, #-16]
    1130:	e51b3010 	ldr	r3, [fp, #-16]
    1134:	e2433008 	sub	r3, r3, #8
    1138:	e50b300c 	str	r3, [fp, #-12]
    113c:	e59f3154 	ldr	r3, [pc, #340]	@ 1298 <free+0x178>
    1140:	e5933000 	ldr	r3, [r3]
    1144:	e50b3008 	str	r3, [fp, #-8]
    1148:	ea000010 	b	1190 <free+0x70>
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e51b2008 	ldr	r2, [fp, #-8]
    1158:	e1520003 	cmp	r2, r3
    115c:	3a000008 	bcc	1184 <free+0x64>
    1160:	e51b200c 	ldr	r2, [fp, #-12]
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e1520003 	cmp	r2, r3
    116c:	8a000010 	bhi	11b4 <free+0x94>
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e51b200c 	ldr	r2, [fp, #-12]
    117c:	e1520003 	cmp	r2, r3
    1180:	3a00000b 	bcc	11b4 <free+0x94>
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e50b3008 	str	r3, [fp, #-8]
    1190:	e51b200c 	ldr	r2, [fp, #-12]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e1520003 	cmp	r2, r3
    119c:	9affffea 	bls	114c <free+0x2c>
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e51b200c 	ldr	r2, [fp, #-12]
    11ac:	e1520003 	cmp	r2, r3
    11b0:	2affffe5 	bcs	114c <free+0x2c>
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e5933004 	ldr	r3, [r3, #4]
    11bc:	e1a03183 	lsl	r3, r3, #3
    11c0:	e51b200c 	ldr	r2, [fp, #-12]
    11c4:	e0822003 	add	r2, r2, r3
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5933000 	ldr	r3, [r3]
    11d0:	e1520003 	cmp	r2, r3
    11d4:	1a00000d 	bne	1210 <free+0xf0>
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e5932004 	ldr	r2, [r3, #4]
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e5933004 	ldr	r3, [r3, #4]
    11ec:	e0822003 	add	r2, r2, r3
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e5832004 	str	r2, [r3, #4]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5933000 	ldr	r3, [r3]
    1200:	e5932000 	ldr	r2, [r3]
    1204:	e51b300c 	ldr	r3, [fp, #-12]
    1208:	e5832000 	str	r2, [r3]
    120c:	ea000003 	b	1220 <free+0x100>
    1210:	e51b3008 	ldr	r3, [fp, #-8]
    1214:	e5932000 	ldr	r2, [r3]
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e5832000 	str	r2, [r3]
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e5933004 	ldr	r3, [r3, #4]
    1228:	e1a03183 	lsl	r3, r3, #3
    122c:	e51b2008 	ldr	r2, [fp, #-8]
    1230:	e0823003 	add	r3, r2, r3
    1234:	e51b200c 	ldr	r2, [fp, #-12]
    1238:	e1520003 	cmp	r2, r3
    123c:	1a00000b 	bne	1270 <free+0x150>
    1240:	e51b3008 	ldr	r3, [fp, #-8]
    1244:	e5932004 	ldr	r2, [r3, #4]
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e5933004 	ldr	r3, [r3, #4]
    1250:	e0822003 	add	r2, r2, r3
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e5832004 	str	r2, [r3, #4]
    125c:	e51b300c 	ldr	r3, [fp, #-12]
    1260:	e5932000 	ldr	r2, [r3]
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5832000 	str	r2, [r3]
    126c:	ea000002 	b	127c <free+0x15c>
    1270:	e51b3008 	ldr	r3, [fp, #-8]
    1274:	e51b200c 	ldr	r2, [fp, #-12]
    1278:	e5832000 	str	r2, [r3]
    127c:	e59f2014 	ldr	r2, [pc, #20]	@ 1298 <free+0x178>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5823000 	str	r3, [r2]
    1288:	e1a00000 	nop			@ (mov r0, r0)
    128c:	e28bd000 	add	sp, fp, #0
    1290:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1294:	e12fff1e 	bx	lr
    1298:	00001a00 	.word	0x00001a00

0000129c <morecore>:
    129c:	e92d4800 	push	{fp, lr}
    12a0:	e28db004 	add	fp, sp, #4
    12a4:	e24dd010 	sub	sp, sp, #16
    12a8:	e50b0010 	str	r0, [fp, #-16]
    12ac:	e51b3010 	ldr	r3, [fp, #-16]
    12b0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    12b4:	2a000001 	bcs	12c0 <morecore+0x24>
    12b8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    12bc:	e50b3010 	str	r3, [fp, #-16]
    12c0:	e51b3010 	ldr	r3, [fp, #-16]
    12c4:	e1a03183 	lsl	r3, r3, #3
    12c8:	e1a00003 	mov	r0, r3
    12cc:	ebfffe6a 	bl	c7c <sbrk>
    12d0:	e50b0008 	str	r0, [fp, #-8]
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e3730001 	cmn	r3, #1
    12dc:	1a000001 	bne	12e8 <morecore+0x4c>
    12e0:	e3a03000 	mov	r3, #0
    12e4:	ea00000a 	b	1314 <morecore+0x78>
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e50b300c 	str	r3, [fp, #-12]
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e51b2010 	ldr	r2, [fp, #-16]
    12f8:	e5832004 	str	r2, [r3, #4]
    12fc:	e51b300c 	ldr	r3, [fp, #-12]
    1300:	e2833008 	add	r3, r3, #8
    1304:	e1a00003 	mov	r0, r3
    1308:	ebffff84 	bl	1120 <free>
    130c:	e59f300c 	ldr	r3, [pc, #12]	@ 1320 <morecore+0x84>
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e1a00003 	mov	r0, r3
    1318:	e24bd004 	sub	sp, fp, #4
    131c:	e8bd8800 	pop	{fp, pc}
    1320:	00001a00 	.word	0x00001a00

00001324 <malloc>:
    1324:	e92d4800 	push	{fp, lr}
    1328:	e28db004 	add	fp, sp, #4
    132c:	e24dd018 	sub	sp, sp, #24
    1330:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1334:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1338:	e2833007 	add	r3, r3, #7
    133c:	e1a031a3 	lsr	r3, r3, #3
    1340:	e2833001 	add	r3, r3, #1
    1344:	e50b3010 	str	r3, [fp, #-16]
    1348:	e59f3134 	ldr	r3, [pc, #308]	@ 1484 <malloc+0x160>
    134c:	e5933000 	ldr	r3, [r3]
    1350:	e50b300c 	str	r3, [fp, #-12]
    1354:	e51b300c 	ldr	r3, [fp, #-12]
    1358:	e3530000 	cmp	r3, #0
    135c:	1a00000b 	bne	1390 <malloc+0x6c>
    1360:	e59f3120 	ldr	r3, [pc, #288]	@ 1488 <malloc+0x164>
    1364:	e50b300c 	str	r3, [fp, #-12]
    1368:	e59f2114 	ldr	r2, [pc, #276]	@ 1484 <malloc+0x160>
    136c:	e51b300c 	ldr	r3, [fp, #-12]
    1370:	e5823000 	str	r3, [r2]
    1374:	e59f3108 	ldr	r3, [pc, #264]	@ 1484 <malloc+0x160>
    1378:	e5933000 	ldr	r3, [r3]
    137c:	e59f2104 	ldr	r2, [pc, #260]	@ 1488 <malloc+0x164>
    1380:	e5823000 	str	r3, [r2]
    1384:	e59f30fc 	ldr	r3, [pc, #252]	@ 1488 <malloc+0x164>
    1388:	e3a02000 	mov	r2, #0
    138c:	e5832004 	str	r2, [r3, #4]
    1390:	e51b300c 	ldr	r3, [fp, #-12]
    1394:	e5933000 	ldr	r3, [r3]
    1398:	e50b3008 	str	r3, [fp, #-8]
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e5933004 	ldr	r3, [r3, #4]
    13a4:	e51b2010 	ldr	r2, [fp, #-16]
    13a8:	e1520003 	cmp	r2, r3
    13ac:	8a00001e 	bhi	142c <malloc+0x108>
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5933004 	ldr	r3, [r3, #4]
    13b8:	e51b2010 	ldr	r2, [fp, #-16]
    13bc:	e1520003 	cmp	r2, r3
    13c0:	1a000004 	bne	13d8 <malloc+0xb4>
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e5932000 	ldr	r2, [r3]
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e5832000 	str	r2, [r3]
    13d4:	ea00000e 	b	1414 <malloc+0xf0>
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5932004 	ldr	r2, [r3, #4]
    13e0:	e51b3010 	ldr	r3, [fp, #-16]
    13e4:	e0422003 	sub	r2, r2, r3
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5832004 	str	r2, [r3, #4]
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5933004 	ldr	r3, [r3, #4]
    13f8:	e1a03183 	lsl	r3, r3, #3
    13fc:	e51b2008 	ldr	r2, [fp, #-8]
    1400:	e0823003 	add	r3, r2, r3
    1404:	e50b3008 	str	r3, [fp, #-8]
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e51b2010 	ldr	r2, [fp, #-16]
    1410:	e5832004 	str	r2, [r3, #4]
    1414:	e59f2068 	ldr	r2, [pc, #104]	@ 1484 <malloc+0x160>
    1418:	e51b300c 	ldr	r3, [fp, #-12]
    141c:	e5823000 	str	r3, [r2]
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e2833008 	add	r3, r3, #8
    1428:	ea000012 	b	1478 <malloc+0x154>
    142c:	e59f3050 	ldr	r3, [pc, #80]	@ 1484 <malloc+0x160>
    1430:	e5933000 	ldr	r3, [r3]
    1434:	e51b2008 	ldr	r2, [fp, #-8]
    1438:	e1520003 	cmp	r2, r3
    143c:	1a000007 	bne	1460 <malloc+0x13c>
    1440:	e51b0010 	ldr	r0, [fp, #-16]
    1444:	ebffff94 	bl	129c <morecore>
    1448:	e50b0008 	str	r0, [fp, #-8]
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e3530000 	cmp	r3, #0
    1454:	1a000001 	bne	1460 <malloc+0x13c>
    1458:	e3a03000 	mov	r3, #0
    145c:	ea000005 	b	1478 <malloc+0x154>
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e50b300c 	str	r3, [fp, #-12]
    1468:	e51b3008 	ldr	r3, [fp, #-8]
    146c:	e5933000 	ldr	r3, [r3]
    1470:	e50b3008 	str	r3, [fp, #-8]
    1474:	eaffffc8 	b	139c <malloc+0x78>
    1478:	e1a00003 	mov	r0, r3
    147c:	e24bd004 	sub	sp, fp, #4
    1480:	e8bd8800 	pop	{fp, pc}
    1484:	00001a00 	.word	0x00001a00
    1488:	000019f8 	.word	0x000019f8

0000148c <__udivsi3>:
    148c:	e2512001 	subs	r2, r1, #1
    1490:	012fff1e 	bxeq	lr
    1494:	3a000036 	bcc	1574 <__udivsi3+0xe8>
    1498:	e1500001 	cmp	r0, r1
    149c:	9a000022 	bls	152c <__udivsi3+0xa0>
    14a0:	e1110002 	tst	r1, r2
    14a4:	0a000023 	beq	1538 <__udivsi3+0xac>
    14a8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    14ac:	01a01181 	lsleq	r1, r1, #3
    14b0:	03a03008 	moveq	r3, #8
    14b4:	13a03001 	movne	r3, #1
    14b8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    14bc:	31510000 	cmpcc	r1, r0
    14c0:	31a01201 	lslcc	r1, r1, #4
    14c4:	31a03203 	lslcc	r3, r3, #4
    14c8:	3afffffa 	bcc	14b8 <__udivsi3+0x2c>
    14cc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    14d0:	31510000 	cmpcc	r1, r0
    14d4:	31a01081 	lslcc	r1, r1, #1
    14d8:	31a03083 	lslcc	r3, r3, #1
    14dc:	3afffffa 	bcc	14cc <__udivsi3+0x40>
    14e0:	e3a02000 	mov	r2, #0
    14e4:	e1500001 	cmp	r0, r1
    14e8:	20400001 	subcs	r0, r0, r1
    14ec:	21822003 	orrcs	r2, r2, r3
    14f0:	e15000a1 	cmp	r0, r1, lsr #1
    14f4:	204000a1 	subcs	r0, r0, r1, lsr #1
    14f8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14fc:	e1500121 	cmp	r0, r1, lsr #2
    1500:	20400121 	subcs	r0, r0, r1, lsr #2
    1504:	21822123 	orrcs	r2, r2, r3, lsr #2
    1508:	e15001a1 	cmp	r0, r1, lsr #3
    150c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1510:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1514:	e3500000 	cmp	r0, #0
    1518:	11b03223 	lsrsne	r3, r3, #4
    151c:	11a01221 	lsrne	r1, r1, #4
    1520:	1affffef 	bne	14e4 <__udivsi3+0x58>
    1524:	e1a00002 	mov	r0, r2
    1528:	e12fff1e 	bx	lr
    152c:	03a00001 	moveq	r0, #1
    1530:	13a00000 	movne	r0, #0
    1534:	e12fff1e 	bx	lr
    1538:	e3510801 	cmp	r1, #65536	@ 0x10000
    153c:	21a01821 	lsrcs	r1, r1, #16
    1540:	23a02010 	movcs	r2, #16
    1544:	33a02000 	movcc	r2, #0
    1548:	e3510c01 	cmp	r1, #256	@ 0x100
    154c:	21a01421 	lsrcs	r1, r1, #8
    1550:	22822008 	addcs	r2, r2, #8
    1554:	e3510010 	cmp	r1, #16
    1558:	21a01221 	lsrcs	r1, r1, #4
    155c:	22822004 	addcs	r2, r2, #4
    1560:	e3510004 	cmp	r1, #4
    1564:	82822003 	addhi	r2, r2, #3
    1568:	908220a1 	addls	r2, r2, r1, lsr #1
    156c:	e1a00230 	lsr	r0, r0, r2
    1570:	e12fff1e 	bx	lr
    1574:	e3500000 	cmp	r0, #0
    1578:	13e00000 	mvnne	r0, #0
    157c:	ea000007 	b	15a0 <__aeabi_idiv0>

00001580 <__aeabi_uidivmod>:
    1580:	e3510000 	cmp	r1, #0
    1584:	0afffffa 	beq	1574 <__udivsi3+0xe8>
    1588:	e92d4003 	push	{r0, r1, lr}
    158c:	ebffffbe 	bl	148c <__udivsi3>
    1590:	e8bd4006 	pop	{r1, r2, lr}
    1594:	e0030092 	mul	r3, r2, r0
    1598:	e0411003 	sub	r1, r1, r3
    159c:	e12fff1e 	bx	lr

000015a0 <__aeabi_idiv0>:
    15a0:	e12fff1e 	bx	lr
