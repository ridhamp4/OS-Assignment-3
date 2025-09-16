
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e59f20f8 	ldr	r2, [pc, #248]	@ 150 <wc+0x150>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d4 	ldr	r2, [pc, #212]	@ 150 <wc+0x150>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e1a01003 	mov	r1, r3
      88:	e59f00c4 	ldr	r0, [pc, #196]	@ 154 <wc+0x154>
      8c:	eb000133 	bl	560 <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e3a02c02 	mov	r2, #512	@ 0x200
      e8:	e59f1060 	ldr	r1, [pc, #96]	@ 150 <wc+0x150>
      ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
      f0:	eb0001dd 	bl	86c <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb000310 	bl	d60 <printf>
     11c:	eb0001b7 	bl	800 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb000306 	bl	d60 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001478 	.word	0x00001478
     154:	0000141c 	.word	0x0000141c
     158:	00001424 	.word	0x00001424
     15c:	00001434 	.word	0x00001434

00000160 <main>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd010 	sub	sp, sp, #16
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530001 	cmp	r3, #1
     17c:	ca000003 	bgt	190 <main+0x30>
     180:	e59f10b4 	ldr	r1, [pc, #180]	@ 23c <main+0xdc>
     184:	e3a00000 	mov	r0, #0
     188:	ebffff9c 	bl	0 <wc>
     18c:	eb00019b 	bl	800 <exit>
     190:	e3a03001 	mov	r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	ea000022 	b	228 <main+0xc8>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a03103 	lsl	r3, r3, #2
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e0823003 	add	r3, r2, r3
     1ac:	e5933000 	ldr	r3, [r3]
     1b0:	e3a01000 	mov	r1, #0
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0001d8 	bl	920 <open>
     1bc:	e50b000c 	str	r0, [fp, #-12]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000009 	bge	1f4 <main+0x94>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5933000 	ldr	r3, [r3]
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e59f1054 	ldr	r1, [pc, #84]	@ 240 <main+0xe0>
     1e8:	e3a00001 	mov	r0, #1
     1ec:	eb0002db 	bl	d60 <printf>
     1f0:	eb000182 	bl	800 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb0001a5 	bl	8b4 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb000170 	bl	800 <exit>
     23c:	00001444 	.word	0x00001444
     240:	00001448 	.word	0x00001448

00000244 <strcpy>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     258:	e51b3010 	ldr	r3, [fp, #-16]
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e1a00000 	nop			@ (mov r0, r0)
     264:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     268:	e2823001 	add	r3, r2, #1
     26c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     270:	e51b3010 	ldr	r3, [fp, #-16]
     274:	e2831001 	add	r1, r3, #1
     278:	e50b1010 	str	r1, [fp, #-16]
     27c:	e5d22000 	ldrb	r2, [r2]
     280:	e5c32000 	strb	r2, [r3]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff4 	bne	264 <strcpy+0x20>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <strncmp>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd014 	sub	sp, sp, #20
     2b0:	e50b0008 	str	r0, [fp, #-8]
     2b4:	e50b100c 	str	r1, [fp, #-12]
     2b8:	e50b2010 	str	r2, [fp, #-16]
     2bc:	ea000008 	b	2e4 <strncmp+0x40>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b300c 	ldr	r3, [fp, #-12]
     2d0:	e2833001 	add	r3, r3, #1
     2d4:	e50b300c 	str	r3, [fp, #-12]
     2d8:	e51b3010 	ldr	r3, [fp, #-16]
     2dc:	e2433001 	sub	r3, r3, #1
     2e0:	e50b3010 	str	r3, [fp, #-16]
     2e4:	e51b3010 	ldr	r3, [fp, #-16]
     2e8:	e3530000 	cmp	r3, #0
     2ec:	da00000d 	ble	328 <strncmp+0x84>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e5d33000 	ldrb	r3, [r3]
     2f8:	e3530000 	cmp	r3, #0
     2fc:	0a000009 	beq	328 <strncmp+0x84>
     300:	e51b300c 	ldr	r3, [fp, #-12]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e3530000 	cmp	r3, #0
     30c:	0a000005 	beq	328 <strncmp+0x84>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e5d32000 	ldrb	r2, [r3]
     318:	e51b300c 	ldr	r3, [fp, #-12]
     31c:	e5d33000 	ldrb	r3, [r3]
     320:	e1520003 	cmp	r2, r3
     324:	0affffe5 	beq	2c0 <strncmp+0x1c>
     328:	e51b3010 	ldr	r3, [fp, #-16]
     32c:	e3530000 	cmp	r3, #0
     330:	1a000001 	bne	33c <strncmp+0x98>
     334:	e3a03000 	mov	r3, #0
     338:	ea000005 	b	354 <strncmp+0xb0>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e5d33000 	ldrb	r3, [r3]
     344:	e1a02003 	mov	r2, r3
     348:	e51b300c 	ldr	r3, [fp, #-12]
     34c:	e5d33000 	ldrb	r3, [r3]
     350:	e0423003 	sub	r3, r2, r3
     354:	e1a00003 	mov	r0, r3
     358:	e28bd000 	add	sp, fp, #0
     35c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     360:	e12fff1e 	bx	lr

00000364 <strcmp>:
     364:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     368:	e28db000 	add	fp, sp, #0
     36c:	e24dd00c 	sub	sp, sp, #12
     370:	e50b0008 	str	r0, [fp, #-8]
     374:	e50b100c 	str	r1, [fp, #-12]
     378:	ea000005 	b	394 <strcmp+0x30>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e2833001 	add	r3, r3, #1
     384:	e50b3008 	str	r3, [fp, #-8]
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e2833001 	add	r3, r3, #1
     390:	e50b300c 	str	r3, [fp, #-12]
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e3530000 	cmp	r3, #0
     3a0:	0a000005 	beq	3bc <strcmp+0x58>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e5d32000 	ldrb	r2, [r3]
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e5d33000 	ldrb	r3, [r3]
     3b4:	e1520003 	cmp	r2, r3
     3b8:	0affffef 	beq	37c <strcmp+0x18>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e5d33000 	ldrb	r3, [r3]
     3c4:	e1a02003 	mov	r2, r3
     3c8:	e51b300c 	ldr	r3, [fp, #-12]
     3cc:	e5d33000 	ldrb	r3, [r3]
     3d0:	e0423003 	sub	r3, r2, r3
     3d4:	e1a00003 	mov	r0, r3
     3d8:	e28bd000 	add	sp, fp, #0
     3dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3e0:	e12fff1e 	bx	lr

000003e4 <strlen>:
     3e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3e8:	e28db000 	add	fp, sp, #0
     3ec:	e24dd014 	sub	sp, sp, #20
     3f0:	e50b0010 	str	r0, [fp, #-16]
     3f4:	e3a03000 	mov	r3, #0
     3f8:	e50b3008 	str	r3, [fp, #-8]
     3fc:	ea000002 	b	40c <strlen+0x28>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2833001 	add	r3, r3, #1
     408:	e50b3008 	str	r3, [fp, #-8]
     40c:	e51b3008 	ldr	r3, [fp, #-8]
     410:	e51b2010 	ldr	r2, [fp, #-16]
     414:	e0823003 	add	r3, r2, r3
     418:	e5d33000 	ldrb	r3, [r3]
     41c:	e3530000 	cmp	r3, #0
     420:	1afffff6 	bne	400 <strlen+0x1c>
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e1a00003 	mov	r0, r3
     42c:	e28bd000 	add	sp, fp, #0
     430:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     434:	e12fff1e 	bx	lr

00000438 <memset>:
     438:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     43c:	e28db000 	add	fp, sp, #0
     440:	e24dd024 	sub	sp, sp, #36	@ 0x24
     444:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     448:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     44c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     45c:	e54b300d 	strb	r3, [fp, #-13]
     460:	e55b200d 	ldrb	r2, [fp, #-13]
     464:	e1a03002 	mov	r3, r2
     468:	e1a03403 	lsl	r3, r3, #8
     46c:	e0833002 	add	r3, r3, r2
     470:	e1a03803 	lsl	r3, r3, #16
     474:	e1a02003 	mov	r2, r3
     478:	e55b300d 	ldrb	r3, [fp, #-13]
     47c:	e1a03403 	lsl	r3, r3, #8
     480:	e1822003 	orr	r2, r2, r3
     484:	e55b300d 	ldrb	r3, [fp, #-13]
     488:	e1823003 	orr	r3, r2, r3
     48c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     490:	ea000008 	b	4b8 <memset+0x80>
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e55b200d 	ldrb	r2, [fp, #-13]
     49c:	e5c32000 	strb	r2, [r3]
     4a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4a4:	e2433001 	sub	r3, r3, #1
     4a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e2833001 	add	r3, r3, #1
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4bc:	e3530000 	cmp	r3, #0
     4c0:	0a000003 	beq	4d4 <memset+0x9c>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e2033003 	and	r3, r3, #3
     4cc:	e3530000 	cmp	r3, #0
     4d0:	1affffef 	bne	494 <memset+0x5c>
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e50b300c 	str	r3, [fp, #-12]
     4dc:	ea000008 	b	504 <memset+0xcc>
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4e8:	e5832000 	str	r2, [r3]
     4ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4f0:	e2433004 	sub	r3, r3, #4
     4f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4f8:	e51b300c 	ldr	r3, [fp, #-12]
     4fc:	e2833004 	add	r3, r3, #4
     500:	e50b300c 	str	r3, [fp, #-12]
     504:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     508:	e3530003 	cmp	r3, #3
     50c:	8afffff3 	bhi	4e0 <memset+0xa8>
     510:	e51b300c 	ldr	r3, [fp, #-12]
     514:	e50b3008 	str	r3, [fp, #-8]
     518:	ea000008 	b	540 <memset+0x108>
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e55b200d 	ldrb	r2, [fp, #-13]
     524:	e5c32000 	strb	r2, [r3]
     528:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     52c:	e2433001 	sub	r3, r3, #1
     530:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e2833001 	add	r3, r3, #1
     53c:	e50b3008 	str	r3, [fp, #-8]
     540:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     544:	e3530000 	cmp	r3, #0
     548:	1afffff3 	bne	51c <memset+0xe4>
     54c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <strchr>:
     560:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     564:	e28db000 	add	fp, sp, #0
     568:	e24dd00c 	sub	sp, sp, #12
     56c:	e50b0008 	str	r0, [fp, #-8]
     570:	e1a03001 	mov	r3, r1
     574:	e54b3009 	strb	r3, [fp, #-9]
     578:	ea000009 	b	5a4 <strchr+0x44>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e5d33000 	ldrb	r3, [r3]
     584:	e55b2009 	ldrb	r2, [fp, #-9]
     588:	e1520003 	cmp	r2, r3
     58c:	1a000001 	bne	598 <strchr+0x38>
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	ea000007 	b	5b8 <strchr+0x58>
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e2833001 	add	r3, r3, #1
     5a0:	e50b3008 	str	r3, [fp, #-8]
     5a4:	e51b3008 	ldr	r3, [fp, #-8]
     5a8:	e5d33000 	ldrb	r3, [r3]
     5ac:	e3530000 	cmp	r3, #0
     5b0:	1afffff1 	bne	57c <strchr+0x1c>
     5b4:	e3a03000 	mov	r3, #0
     5b8:	e1a00003 	mov	r0, r3
     5bc:	e28bd000 	add	sp, fp, #0
     5c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c4:	e12fff1e 	bx	lr

000005c8 <gets>:
     5c8:	e92d4800 	push	{fp, lr}
     5cc:	e28db004 	add	fp, sp, #4
     5d0:	e24dd018 	sub	sp, sp, #24
     5d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5dc:	e3a03000 	mov	r3, #0
     5e0:	e50b3008 	str	r3, [fp, #-8]
     5e4:	ea000016 	b	644 <gets+0x7c>
     5e8:	e24b300d 	sub	r3, fp, #13
     5ec:	e3a02001 	mov	r2, #1
     5f0:	e1a01003 	mov	r1, r3
     5f4:	e3a00000 	mov	r0, #0
     5f8:	eb00009b 	bl	86c <read>
     5fc:	e50b000c 	str	r0, [fp, #-12]
     600:	e51b300c 	ldr	r3, [fp, #-12]
     604:	e3530000 	cmp	r3, #0
     608:	da000013 	ble	65c <gets+0x94>
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e2832001 	add	r2, r3, #1
     614:	e50b2008 	str	r2, [fp, #-8]
     618:	e1a02003 	mov	r2, r3
     61c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     620:	e0833002 	add	r3, r3, r2
     624:	e55b200d 	ldrb	r2, [fp, #-13]
     628:	e5c32000 	strb	r2, [r3]
     62c:	e55b300d 	ldrb	r3, [fp, #-13]
     630:	e353000a 	cmp	r3, #10
     634:	0a000009 	beq	660 <gets+0x98>
     638:	e55b300d 	ldrb	r3, [fp, #-13]
     63c:	e353000d 	cmp	r3, #13
     640:	0a000006 	beq	660 <gets+0x98>
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e2833001 	add	r3, r3, #1
     64c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     650:	e1520003 	cmp	r2, r3
     654:	caffffe3 	bgt	5e8 <gets+0x20>
     658:	ea000000 	b	660 <gets+0x98>
     65c:	e1a00000 	nop			@ (mov r0, r0)
     660:	e51b3008 	ldr	r3, [fp, #-8]
     664:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     668:	e0823003 	add	r3, r2, r3
     66c:	e3a02000 	mov	r2, #0
     670:	e5c32000 	strb	r2, [r3]
     674:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     678:	e1a00003 	mov	r0, r3
     67c:	e24bd004 	sub	sp, fp, #4
     680:	e8bd8800 	pop	{fp, pc}

00000684 <stat>:
     684:	e92d4800 	push	{fp, lr}
     688:	e28db004 	add	fp, sp, #4
     68c:	e24dd010 	sub	sp, sp, #16
     690:	e50b0010 	str	r0, [fp, #-16]
     694:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     698:	e3a01000 	mov	r1, #0
     69c:	e51b0010 	ldr	r0, [fp, #-16]
     6a0:	eb00009e 	bl	920 <open>
     6a4:	e50b0008 	str	r0, [fp, #-8]
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e3530000 	cmp	r3, #0
     6b0:	aa000001 	bge	6bc <stat+0x38>
     6b4:	e3e03000 	mvn	r3, #0
     6b8:	ea000006 	b	6d8 <stat+0x54>
     6bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     6c0:	e51b0008 	ldr	r0, [fp, #-8]
     6c4:	eb0000b0 	bl	98c <fstat>
     6c8:	e50b000c 	str	r0, [fp, #-12]
     6cc:	e51b0008 	ldr	r0, [fp, #-8]
     6d0:	eb000077 	bl	8b4 <close>
     6d4:	e51b300c 	ldr	r3, [fp, #-12]
     6d8:	e1a00003 	mov	r0, r3
     6dc:	e24bd004 	sub	sp, fp, #4
     6e0:	e8bd8800 	pop	{fp, pc}

000006e4 <atoi>:
     6e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e8:	e28db000 	add	fp, sp, #0
     6ec:	e24dd014 	sub	sp, sp, #20
     6f0:	e50b0010 	str	r0, [fp, #-16]
     6f4:	e3a03000 	mov	r3, #0
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	ea00000c 	b	734 <atoi+0x50>
     700:	e51b2008 	ldr	r2, [fp, #-8]
     704:	e1a03002 	mov	r3, r2
     708:	e1a03103 	lsl	r3, r3, #2
     70c:	e0833002 	add	r3, r3, r2
     710:	e1a03083 	lsl	r3, r3, #1
     714:	e1a01003 	mov	r1, r3
     718:	e51b3010 	ldr	r3, [fp, #-16]
     71c:	e2832001 	add	r2, r3, #1
     720:	e50b2010 	str	r2, [fp, #-16]
     724:	e5d33000 	ldrb	r3, [r3]
     728:	e0813003 	add	r3, r1, r3
     72c:	e2433030 	sub	r3, r3, #48	@ 0x30
     730:	e50b3008 	str	r3, [fp, #-8]
     734:	e51b3010 	ldr	r3, [fp, #-16]
     738:	e5d33000 	ldrb	r3, [r3]
     73c:	e353002f 	cmp	r3, #47	@ 0x2f
     740:	9a000003 	bls	754 <atoi+0x70>
     744:	e51b3010 	ldr	r3, [fp, #-16]
     748:	e5d33000 	ldrb	r3, [r3]
     74c:	e3530039 	cmp	r3, #57	@ 0x39
     750:	9affffea 	bls	700 <atoi+0x1c>
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e1a00003 	mov	r0, r3
     75c:	e28bd000 	add	sp, fp, #0
     760:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <memmove>:
     768:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     76c:	e28db000 	add	fp, sp, #0
     770:	e24dd01c 	sub	sp, sp, #28
     774:	e50b0010 	str	r0, [fp, #-16]
     778:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     77c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     780:	e51b3010 	ldr	r3, [fp, #-16]
     784:	e50b3008 	str	r3, [fp, #-8]
     788:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     78c:	e50b300c 	str	r3, [fp, #-12]
     790:	ea000007 	b	7b4 <memmove+0x4c>
     794:	e51b200c 	ldr	r2, [fp, #-12]
     798:	e2823001 	add	r3, r2, #1
     79c:	e50b300c 	str	r3, [fp, #-12]
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e2831001 	add	r1, r3, #1
     7a8:	e50b1008 	str	r1, [fp, #-8]
     7ac:	e5d22000 	ldrb	r2, [r2]
     7b0:	e5c32000 	strb	r2, [r3]
     7b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7b8:	e2432001 	sub	r2, r3, #1
     7bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7c0:	e3530000 	cmp	r3, #0
     7c4:	cafffff2 	bgt	794 <memmove+0x2c>
     7c8:	e51b3010 	ldr	r3, [fp, #-16]
     7cc:	e1a00003 	mov	r0, r3
     7d0:	e28bd000 	add	sp, fp, #0
     7d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <fork>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00001 	mov	r0, #1
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <exit>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00002 	mov	r0, #2
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <wait>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a00003 	mov	r0, #3
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <pipe>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00004 	mov	r0, #4
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <read>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a00005 	mov	r0, #5
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <write>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a00010 	mov	r0, #16
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <close>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a00015 	mov	r0, #21
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <kill>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00006 	mov	r0, #6
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <exec>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00007 	mov	r0, #7
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <open>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a0000f 	mov	r0, #15
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <mknod>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00011 	mov	r0, #17
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <unlink>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00012 	mov	r0, #18
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <fstat>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00008 	mov	r0, #8
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <link>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00013 	mov	r0, #19
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <mkdir>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a00014 	mov	r0, #20
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <chdir>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a00009 	mov	r0, #9
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <dup>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a0000a 	mov	r0, #10
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <getpid>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a0000b 	mov	r0, #11
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <sbrk>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a0000c 	mov	r0, #12
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <sleep>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a0000d 	mov	r0, #13
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <uptime>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a0000e 	mov	r0, #14
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <ps>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00016 	mov	r0, #22
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <settickets>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00017 	mov	r0, #23
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <srand>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00018 	mov	r0, #24
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <getpinfo>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00019 	mov	r0, #25
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <printpt>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a0001a 	mov	r0, #26
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <pgpte>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a0001b 	mov	r0, #27
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <ugetpid>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a0001c 	mov	r0, #28
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <kpt>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a0001d 	mov	r0, #29
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <putc>:
     bf0:	e92d4800 	push	{fp, lr}
     bf4:	e28db004 	add	fp, sp, #4
     bf8:	e24dd008 	sub	sp, sp, #8
     bfc:	e50b0008 	str	r0, [fp, #-8]
     c00:	e1a03001 	mov	r3, r1
     c04:	e54b3009 	strb	r3, [fp, #-9]
     c08:	e24b3009 	sub	r3, fp, #9
     c0c:	e3a02001 	mov	r2, #1
     c10:	e1a01003 	mov	r1, r3
     c14:	e51b0008 	ldr	r0, [fp, #-8]
     c18:	ebffff1c 	bl	890 <write>
     c1c:	e1a00000 	nop			@ (mov r0, r0)
     c20:	e24bd004 	sub	sp, fp, #4
     c24:	e8bd8800 	pop	{fp, pc}

00000c28 <printint>:
     c28:	e92d4800 	push	{fp, lr}
     c2c:	e28db004 	add	fp, sp, #4
     c30:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c34:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c38:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c3c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c40:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c44:	e3a03000 	mov	r3, #0
     c48:	e50b300c 	str	r3, [fp, #-12]
     c4c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c50:	e3530000 	cmp	r3, #0
     c54:	0a000008 	beq	c7c <printint+0x54>
     c58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c5c:	e3530000 	cmp	r3, #0
     c60:	aa000005 	bge	c7c <printint+0x54>
     c64:	e3a03001 	mov	r3, #1
     c68:	e50b300c 	str	r3, [fp, #-12]
     c6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c70:	e2633000 	rsb	r3, r3, #0
     c74:	e50b3010 	str	r3, [fp, #-16]
     c78:	ea000001 	b	c84 <printint+0x5c>
     c7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c80:	e50b3010 	str	r3, [fp, #-16]
     c84:	e3a03000 	mov	r3, #0
     c88:	e50b3008 	str	r3, [fp, #-8]
     c8c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c90:	e51b3010 	ldr	r3, [fp, #-16]
     c94:	e1a01002 	mov	r1, r2
     c98:	e1a00003 	mov	r0, r3
     c9c:	eb0001d5 	bl	13f8 <__aeabi_uidivmod>
     ca0:	e1a03001 	mov	r3, r1
     ca4:	e1a01003 	mov	r1, r3
     ca8:	e51b3008 	ldr	r3, [fp, #-8]
     cac:	e2832001 	add	r2, r3, #1
     cb0:	e50b2008 	str	r2, [fp, #-8]
     cb4:	e59f20a0 	ldr	r2, [pc, #160]	@ d5c <printint+0x134>
     cb8:	e7d22001 	ldrb	r2, [r2, r1]
     cbc:	e2433004 	sub	r3, r3, #4
     cc0:	e083300b 	add	r3, r3, fp
     cc4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cc8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e51b0010 	ldr	r0, [fp, #-16]
     cd4:	eb00018a 	bl	1304 <__udivsi3>
     cd8:	e1a03000 	mov	r3, r0
     cdc:	e50b3010 	str	r3, [fp, #-16]
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e3530000 	cmp	r3, #0
     ce8:	1affffe7 	bne	c8c <printint+0x64>
     cec:	e51b300c 	ldr	r3, [fp, #-12]
     cf0:	e3530000 	cmp	r3, #0
     cf4:	0a00000e 	beq	d34 <printint+0x10c>
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e2832001 	add	r2, r3, #1
     d00:	e50b2008 	str	r2, [fp, #-8]
     d04:	e2433004 	sub	r3, r3, #4
     d08:	e083300b 	add	r3, r3, fp
     d0c:	e3a0202d 	mov	r2, #45	@ 0x2d
     d10:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d14:	ea000006 	b	d34 <printint+0x10c>
     d18:	e24b2020 	sub	r2, fp, #32
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e0823003 	add	r3, r2, r3
     d24:	e5d33000 	ldrb	r3, [r3]
     d28:	e1a01003 	mov	r1, r3
     d2c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d30:	ebffffae 	bl	bf0 <putc>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e2433001 	sub	r3, r3, #1
     d3c:	e50b3008 	str	r3, [fp, #-8]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e3530000 	cmp	r3, #0
     d48:	aafffff2 	bge	d18 <printint+0xf0>
     d4c:	e1a00000 	nop			@ (mov r0, r0)
     d50:	e1a00000 	nop			@ (mov r0, r0)
     d54:	e24bd004 	sub	sp, fp, #4
     d58:	e8bd8800 	pop	{fp, pc}
     d5c:	00001464 	.word	0x00001464

00000d60 <printf>:
     d60:	e92d000e 	push	{r1, r2, r3}
     d64:	e92d4800 	push	{fp, lr}
     d68:	e28db004 	add	fp, sp, #4
     d6c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d70:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d74:	e3a03000 	mov	r3, #0
     d78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d7c:	e28b3008 	add	r3, fp, #8
     d80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d84:	e3a03000 	mov	r3, #0
     d88:	e50b3010 	str	r3, [fp, #-16]
     d8c:	ea000074 	b	f64 <printf+0x204>
     d90:	e59b2004 	ldr	r2, [fp, #4]
     d94:	e51b3010 	ldr	r3, [fp, #-16]
     d98:	e0823003 	add	r3, r2, r3
     d9c:	e5d33000 	ldrb	r3, [r3]
     da0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     da4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da8:	e3530000 	cmp	r3, #0
     dac:	1a00000b 	bne	de0 <printf+0x80>
     db0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db4:	e3530025 	cmp	r3, #37	@ 0x25
     db8:	1a000002 	bne	dc8 <printf+0x68>
     dbc:	e3a03025 	mov	r3, #37	@ 0x25
     dc0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dc4:	ea000063 	b	f58 <printf+0x1f8>
     dc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dcc:	e6ef3073 	uxtb	r3, r3
     dd0:	e1a01003 	mov	r1, r3
     dd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd8:	ebffff84 	bl	bf0 <putc>
     ddc:	ea00005d 	b	f58 <printf+0x1f8>
     de0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     de4:	e3530025 	cmp	r3, #37	@ 0x25
     de8:	1a00005a 	bne	f58 <printf+0x1f8>
     dec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df0:	e3530064 	cmp	r3, #100	@ 0x64
     df4:	1a00000a 	bne	e24 <printf+0xc4>
     df8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dfc:	e5933000 	ldr	r3, [r3]
     e00:	e1a01003 	mov	r1, r3
     e04:	e3a03001 	mov	r3, #1
     e08:	e3a0200a 	mov	r2, #10
     e0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e10:	ebffff84 	bl	c28 <printint>
     e14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e18:	e2833004 	add	r3, r3, #4
     e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e20:	ea00004a 	b	f50 <printf+0x1f0>
     e24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e28:	e3530078 	cmp	r3, #120	@ 0x78
     e2c:	0a000002 	beq	e3c <printf+0xdc>
     e30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e34:	e3530070 	cmp	r3, #112	@ 0x70
     e38:	1a00000a 	bne	e68 <printf+0x108>
     e3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e1a01003 	mov	r1, r3
     e48:	e3a03000 	mov	r3, #0
     e4c:	e3a02010 	mov	r2, #16
     e50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e54:	ebffff73 	bl	c28 <printint>
     e58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e5c:	e2833004 	add	r3, r3, #4
     e60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e64:	ea000039 	b	f50 <printf+0x1f0>
     e68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e6c:	e3530073 	cmp	r3, #115	@ 0x73
     e70:	1a000018 	bne	ed8 <printf+0x178>
     e74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e78:	e5933000 	ldr	r3, [r3]
     e7c:	e50b300c 	str	r3, [fp, #-12]
     e80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e84:	e2833004 	add	r3, r3, #4
     e88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e8c:	e51b300c 	ldr	r3, [fp, #-12]
     e90:	e3530000 	cmp	r3, #0
     e94:	1a00000a 	bne	ec4 <printf+0x164>
     e98:	e59f30f4 	ldr	r3, [pc, #244]	@ f94 <printf+0x234>
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	ea000007 	b	ec4 <printf+0x164>
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e5d33000 	ldrb	r3, [r3]
     eac:	e1a01003 	mov	r1, r3
     eb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb4:	ebffff4d 	bl	bf0 <putc>
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e2833001 	add	r3, r3, #1
     ec0:	e50b300c 	str	r3, [fp, #-12]
     ec4:	e51b300c 	ldr	r3, [fp, #-12]
     ec8:	e5d33000 	ldrb	r3, [r3]
     ecc:	e3530000 	cmp	r3, #0
     ed0:	1afffff3 	bne	ea4 <printf+0x144>
     ed4:	ea00001d 	b	f50 <printf+0x1f0>
     ed8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     edc:	e3530063 	cmp	r3, #99	@ 0x63
     ee0:	1a000009 	bne	f0c <printf+0x1ac>
     ee4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e6ef3073 	uxtb	r3, r3
     ef0:	e1a01003 	mov	r1, r3
     ef4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef8:	ebffff3c 	bl	bf0 <putc>
     efc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f00:	e2833004 	add	r3, r3, #4
     f04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f08:	ea000010 	b	f50 <printf+0x1f0>
     f0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f10:	e3530025 	cmp	r3, #37	@ 0x25
     f14:	1a000005 	bne	f30 <printf+0x1d0>
     f18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f1c:	e6ef3073 	uxtb	r3, r3
     f20:	e1a01003 	mov	r1, r3
     f24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f28:	ebffff30 	bl	bf0 <putc>
     f2c:	ea000007 	b	f50 <printf+0x1f0>
     f30:	e3a01025 	mov	r1, #37	@ 0x25
     f34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f38:	ebffff2c 	bl	bf0 <putc>
     f3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f40:	e6ef3073 	uxtb	r3, r3
     f44:	e1a01003 	mov	r1, r3
     f48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f4c:	ebffff27 	bl	bf0 <putc>
     f50:	e3a03000 	mov	r3, #0
     f54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f58:	e51b3010 	ldr	r3, [fp, #-16]
     f5c:	e2833001 	add	r3, r3, #1
     f60:	e50b3010 	str	r3, [fp, #-16]
     f64:	e59b2004 	ldr	r2, [fp, #4]
     f68:	e51b3010 	ldr	r3, [fp, #-16]
     f6c:	e0823003 	add	r3, r2, r3
     f70:	e5d33000 	ldrb	r3, [r3]
     f74:	e3530000 	cmp	r3, #0
     f78:	1affff84 	bne	d90 <printf+0x30>
     f7c:	e1a00000 	nop			@ (mov r0, r0)
     f80:	e1a00000 	nop			@ (mov r0, r0)
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd4800 	pop	{fp, lr}
     f8c:	e28dd00c 	add	sp, sp, #12
     f90:	e12fff1e 	bx	lr
     f94:	0000145c 	.word	0x0000145c

00000f98 <free>:
     f98:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f9c:	e28db000 	add	fp, sp, #0
     fa0:	e24dd014 	sub	sp, sp, #20
     fa4:	e50b0010 	str	r0, [fp, #-16]
     fa8:	e51b3010 	ldr	r3, [fp, #-16]
     fac:	e2433008 	sub	r3, r3, #8
     fb0:	e50b300c 	str	r3, [fp, #-12]
     fb4:	e59f3154 	ldr	r3, [pc, #340]	@ 1110 <free+0x178>
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e50b3008 	str	r3, [fp, #-8]
     fc0:	ea000010 	b	1008 <free+0x70>
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e51b2008 	ldr	r2, [fp, #-8]
     fd0:	e1520003 	cmp	r2, r3
     fd4:	3a000008 	bcc	ffc <free+0x64>
     fd8:	e51b200c 	ldr	r2, [fp, #-12]
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e1520003 	cmp	r2, r3
     fe4:	8a000010 	bhi	102c <free+0x94>
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e51b200c 	ldr	r2, [fp, #-12]
     ff4:	e1520003 	cmp	r2, r3
     ff8:	3a00000b 	bcc	102c <free+0x94>
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e50b3008 	str	r3, [fp, #-8]
    1008:	e51b200c 	ldr	r2, [fp, #-12]
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e1520003 	cmp	r2, r3
    1014:	9affffea 	bls	fc4 <free+0x2c>
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e51b200c 	ldr	r2, [fp, #-12]
    1024:	e1520003 	cmp	r2, r3
    1028:	2affffe5 	bcs	fc4 <free+0x2c>
    102c:	e51b300c 	ldr	r3, [fp, #-12]
    1030:	e5933004 	ldr	r3, [r3, #4]
    1034:	e1a03183 	lsl	r3, r3, #3
    1038:	e51b200c 	ldr	r2, [fp, #-12]
    103c:	e0822003 	add	r2, r2, r3
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5933000 	ldr	r3, [r3]
    1048:	e1520003 	cmp	r2, r3
    104c:	1a00000d 	bne	1088 <free+0xf0>
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e5932004 	ldr	r2, [r3, #4]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e5933004 	ldr	r3, [r3, #4]
    1064:	e0822003 	add	r2, r2, r3
    1068:	e51b300c 	ldr	r3, [fp, #-12]
    106c:	e5832004 	str	r2, [r3, #4]
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e5933000 	ldr	r3, [r3]
    1078:	e5932000 	ldr	r2, [r3]
    107c:	e51b300c 	ldr	r3, [fp, #-12]
    1080:	e5832000 	str	r2, [r3]
    1084:	ea000003 	b	1098 <free+0x100>
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e5932000 	ldr	r2, [r3]
    1090:	e51b300c 	ldr	r3, [fp, #-12]
    1094:	e5832000 	str	r2, [r3]
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e5933004 	ldr	r3, [r3, #4]
    10a0:	e1a03183 	lsl	r3, r3, #3
    10a4:	e51b2008 	ldr	r2, [fp, #-8]
    10a8:	e0823003 	add	r3, r2, r3
    10ac:	e51b200c 	ldr	r2, [fp, #-12]
    10b0:	e1520003 	cmp	r2, r3
    10b4:	1a00000b 	bne	10e8 <free+0x150>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5932004 	ldr	r2, [r3, #4]
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e5933004 	ldr	r3, [r3, #4]
    10c8:	e0822003 	add	r2, r2, r3
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e5832004 	str	r2, [r3, #4]
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e5932000 	ldr	r2, [r3]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5832000 	str	r2, [r3]
    10e4:	ea000002 	b	10f4 <free+0x15c>
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e51b200c 	ldr	r2, [fp, #-12]
    10f0:	e5832000 	str	r2, [r3]
    10f4:	e59f2014 	ldr	r2, [pc, #20]	@ 1110 <free+0x178>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e5823000 	str	r3, [r2]
    1100:	e1a00000 	nop			@ (mov r0, r0)
    1104:	e28bd000 	add	sp, fp, #0
    1108:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    110c:	e12fff1e 	bx	lr
    1110:	00001680 	.word	0x00001680

00001114 <morecore>:
    1114:	e92d4800 	push	{fp, lr}
    1118:	e28db004 	add	fp, sp, #4
    111c:	e24dd010 	sub	sp, sp, #16
    1120:	e50b0010 	str	r0, [fp, #-16]
    1124:	e51b3010 	ldr	r3, [fp, #-16]
    1128:	e3530a01 	cmp	r3, #4096	@ 0x1000
    112c:	2a000001 	bcs	1138 <morecore+0x24>
    1130:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1134:	e50b3010 	str	r3, [fp, #-16]
    1138:	e51b3010 	ldr	r3, [fp, #-16]
    113c:	e1a03183 	lsl	r3, r3, #3
    1140:	e1a00003 	mov	r0, r3
    1144:	ebfffe46 	bl	a64 <sbrk>
    1148:	e50b0008 	str	r0, [fp, #-8]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e3730001 	cmn	r3, #1
    1154:	1a000001 	bne	1160 <morecore+0x4c>
    1158:	e3a03000 	mov	r3, #0
    115c:	ea00000a 	b	118c <morecore+0x78>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e50b300c 	str	r3, [fp, #-12]
    1168:	e51b300c 	ldr	r3, [fp, #-12]
    116c:	e51b2010 	ldr	r2, [fp, #-16]
    1170:	e5832004 	str	r2, [r3, #4]
    1174:	e51b300c 	ldr	r3, [fp, #-12]
    1178:	e2833008 	add	r3, r3, #8
    117c:	e1a00003 	mov	r0, r3
    1180:	ebffff84 	bl	f98 <free>
    1184:	e59f300c 	ldr	r3, [pc, #12]	@ 1198 <morecore+0x84>
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e1a00003 	mov	r0, r3
    1190:	e24bd004 	sub	sp, fp, #4
    1194:	e8bd8800 	pop	{fp, pc}
    1198:	00001680 	.word	0x00001680

0000119c <malloc>:
    119c:	e92d4800 	push	{fp, lr}
    11a0:	e28db004 	add	fp, sp, #4
    11a4:	e24dd018 	sub	sp, sp, #24
    11a8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11b0:	e2833007 	add	r3, r3, #7
    11b4:	e1a031a3 	lsr	r3, r3, #3
    11b8:	e2833001 	add	r3, r3, #1
    11bc:	e50b3010 	str	r3, [fp, #-16]
    11c0:	e59f3134 	ldr	r3, [pc, #308]	@ 12fc <malloc+0x160>
    11c4:	e5933000 	ldr	r3, [r3]
    11c8:	e50b300c 	str	r3, [fp, #-12]
    11cc:	e51b300c 	ldr	r3, [fp, #-12]
    11d0:	e3530000 	cmp	r3, #0
    11d4:	1a00000b 	bne	1208 <malloc+0x6c>
    11d8:	e59f3120 	ldr	r3, [pc, #288]	@ 1300 <malloc+0x164>
    11dc:	e50b300c 	str	r3, [fp, #-12]
    11e0:	e59f2114 	ldr	r2, [pc, #276]	@ 12fc <malloc+0x160>
    11e4:	e51b300c 	ldr	r3, [fp, #-12]
    11e8:	e5823000 	str	r3, [r2]
    11ec:	e59f3108 	ldr	r3, [pc, #264]	@ 12fc <malloc+0x160>
    11f0:	e5933000 	ldr	r3, [r3]
    11f4:	e59f2104 	ldr	r2, [pc, #260]	@ 1300 <malloc+0x164>
    11f8:	e5823000 	str	r3, [r2]
    11fc:	e59f30fc 	ldr	r3, [pc, #252]	@ 1300 <malloc+0x164>
    1200:	e3a02000 	mov	r2, #0
    1204:	e5832004 	str	r2, [r3, #4]
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e50b3008 	str	r3, [fp, #-8]
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5933004 	ldr	r3, [r3, #4]
    121c:	e51b2010 	ldr	r2, [fp, #-16]
    1220:	e1520003 	cmp	r2, r3
    1224:	8a00001e 	bhi	12a4 <malloc+0x108>
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e5933004 	ldr	r3, [r3, #4]
    1230:	e51b2010 	ldr	r2, [fp, #-16]
    1234:	e1520003 	cmp	r2, r3
    1238:	1a000004 	bne	1250 <malloc+0xb4>
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5932000 	ldr	r2, [r3]
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e5832000 	str	r2, [r3]
    124c:	ea00000e 	b	128c <malloc+0xf0>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5932004 	ldr	r2, [r3, #4]
    1258:	e51b3010 	ldr	r3, [fp, #-16]
    125c:	e0422003 	sub	r2, r2, r3
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5832004 	str	r2, [r3, #4]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5933004 	ldr	r3, [r3, #4]
    1270:	e1a03183 	lsl	r3, r3, #3
    1274:	e51b2008 	ldr	r2, [fp, #-8]
    1278:	e0823003 	add	r3, r2, r3
    127c:	e50b3008 	str	r3, [fp, #-8]
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e51b2010 	ldr	r2, [fp, #-16]
    1288:	e5832004 	str	r2, [r3, #4]
    128c:	e59f2068 	ldr	r2, [pc, #104]	@ 12fc <malloc+0x160>
    1290:	e51b300c 	ldr	r3, [fp, #-12]
    1294:	e5823000 	str	r3, [r2]
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e2833008 	add	r3, r3, #8
    12a0:	ea000012 	b	12f0 <malloc+0x154>
    12a4:	e59f3050 	ldr	r3, [pc, #80]	@ 12fc <malloc+0x160>
    12a8:	e5933000 	ldr	r3, [r3]
    12ac:	e51b2008 	ldr	r2, [fp, #-8]
    12b0:	e1520003 	cmp	r2, r3
    12b4:	1a000007 	bne	12d8 <malloc+0x13c>
    12b8:	e51b0010 	ldr	r0, [fp, #-16]
    12bc:	ebffff94 	bl	1114 <morecore>
    12c0:	e50b0008 	str	r0, [fp, #-8]
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e3530000 	cmp	r3, #0
    12cc:	1a000001 	bne	12d8 <malloc+0x13c>
    12d0:	e3a03000 	mov	r3, #0
    12d4:	ea000005 	b	12f0 <malloc+0x154>
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e50b300c 	str	r3, [fp, #-12]
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e5933000 	ldr	r3, [r3]
    12e8:	e50b3008 	str	r3, [fp, #-8]
    12ec:	eaffffc8 	b	1214 <malloc+0x78>
    12f0:	e1a00003 	mov	r0, r3
    12f4:	e24bd004 	sub	sp, fp, #4
    12f8:	e8bd8800 	pop	{fp, pc}
    12fc:	00001680 	.word	0x00001680
    1300:	00001678 	.word	0x00001678

00001304 <__udivsi3>:
    1304:	e2512001 	subs	r2, r1, #1
    1308:	012fff1e 	bxeq	lr
    130c:	3a000036 	bcc	13ec <__udivsi3+0xe8>
    1310:	e1500001 	cmp	r0, r1
    1314:	9a000022 	bls	13a4 <__udivsi3+0xa0>
    1318:	e1110002 	tst	r1, r2
    131c:	0a000023 	beq	13b0 <__udivsi3+0xac>
    1320:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1324:	01a01181 	lsleq	r1, r1, #3
    1328:	03a03008 	moveq	r3, #8
    132c:	13a03001 	movne	r3, #1
    1330:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1334:	31510000 	cmpcc	r1, r0
    1338:	31a01201 	lslcc	r1, r1, #4
    133c:	31a03203 	lslcc	r3, r3, #4
    1340:	3afffffa 	bcc	1330 <__udivsi3+0x2c>
    1344:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1348:	31510000 	cmpcc	r1, r0
    134c:	31a01081 	lslcc	r1, r1, #1
    1350:	31a03083 	lslcc	r3, r3, #1
    1354:	3afffffa 	bcc	1344 <__udivsi3+0x40>
    1358:	e3a02000 	mov	r2, #0
    135c:	e1500001 	cmp	r0, r1
    1360:	20400001 	subcs	r0, r0, r1
    1364:	21822003 	orrcs	r2, r2, r3
    1368:	e15000a1 	cmp	r0, r1, lsr #1
    136c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1370:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1374:	e1500121 	cmp	r0, r1, lsr #2
    1378:	20400121 	subcs	r0, r0, r1, lsr #2
    137c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1380:	e15001a1 	cmp	r0, r1, lsr #3
    1384:	204001a1 	subcs	r0, r0, r1, lsr #3
    1388:	218221a3 	orrcs	r2, r2, r3, lsr #3
    138c:	e3500000 	cmp	r0, #0
    1390:	11b03223 	lsrsne	r3, r3, #4
    1394:	11a01221 	lsrne	r1, r1, #4
    1398:	1affffef 	bne	135c <__udivsi3+0x58>
    139c:	e1a00002 	mov	r0, r2
    13a0:	e12fff1e 	bx	lr
    13a4:	03a00001 	moveq	r0, #1
    13a8:	13a00000 	movne	r0, #0
    13ac:	e12fff1e 	bx	lr
    13b0:	e3510801 	cmp	r1, #65536	@ 0x10000
    13b4:	21a01821 	lsrcs	r1, r1, #16
    13b8:	23a02010 	movcs	r2, #16
    13bc:	33a02000 	movcc	r2, #0
    13c0:	e3510c01 	cmp	r1, #256	@ 0x100
    13c4:	21a01421 	lsrcs	r1, r1, #8
    13c8:	22822008 	addcs	r2, r2, #8
    13cc:	e3510010 	cmp	r1, #16
    13d0:	21a01221 	lsrcs	r1, r1, #4
    13d4:	22822004 	addcs	r2, r2, #4
    13d8:	e3510004 	cmp	r1, #4
    13dc:	82822003 	addhi	r2, r2, #3
    13e0:	908220a1 	addls	r2, r2, r1, lsr #1
    13e4:	e1a00230 	lsr	r0, r0, r2
    13e8:	e12fff1e 	bx	lr
    13ec:	e3500000 	cmp	r0, #0
    13f0:	13e00000 	mvnne	r0, #0
    13f4:	ea000007 	b	1418 <__aeabi_idiv0>

000013f8 <__aeabi_uidivmod>:
    13f8:	e3510000 	cmp	r1, #0
    13fc:	0afffffa 	beq	13ec <__udivsi3+0xe8>
    1400:	e92d4003 	push	{r0, r1, lr}
    1404:	ebffffbe 	bl	1304 <__udivsi3>
    1408:	e8bd4006 	pop	{r1, r2, lr}
    140c:	e0030092 	mul	r3, r2, r0
    1410:	e0411003 	sub	r1, r1, r3
    1414:	e12fff1e 	bx	lr

00001418 <__aeabi_idiv0>:
    1418:	e12fff1e 	bx	lr
