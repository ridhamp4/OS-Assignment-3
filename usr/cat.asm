
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	@ 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0001d7 	bl	784 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb0001ca 	bl	760 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002fd 	bl	c54 <printf>
      5c:	eb0001a4 	bl	6f4 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	00001358 	.word	0x00001358
      70:	00001310 	.word	0x00001310

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb000194 	bl	6f4 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb0001d1 	bl	814 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	@ 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb0002d4 	bl	c54 <printf>
     100:	eb00017b 	bl	6f4 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb0001a4 	bl	7a8 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb00016f 	bl	6f4 <exit>
     134:	00001324 	.word	0x00001324

00000138 <strcpy>:
     138:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     13c:	e28db000 	add	fp, sp, #0
     140:	e24dd014 	sub	sp, sp, #20
     144:	e50b0010 	str	r0, [fp, #-16]
     148:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     14c:	e51b3010 	ldr	r3, [fp, #-16]
     150:	e50b3008 	str	r3, [fp, #-8]
     154:	e1a00000 	nop			@ (mov r0, r0)
     158:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     15c:	e2823001 	add	r3, r2, #1
     160:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     164:	e51b3010 	ldr	r3, [fp, #-16]
     168:	e2831001 	add	r1, r3, #1
     16c:	e50b1010 	str	r1, [fp, #-16]
     170:	e5d22000 	ldrb	r2, [r2]
     174:	e5c32000 	strb	r2, [r3]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	1afffff4 	bne	158 <strcpy+0x20>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	e28bd000 	add	sp, fp, #0
     190:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     194:	e12fff1e 	bx	lr

00000198 <strncmp>:
     198:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     19c:	e28db000 	add	fp, sp, #0
     1a0:	e24dd014 	sub	sp, sp, #20
     1a4:	e50b0008 	str	r0, [fp, #-8]
     1a8:	e50b100c 	str	r1, [fp, #-12]
     1ac:	e50b2010 	str	r2, [fp, #-16]
     1b0:	ea000008 	b	1d8 <strncmp+0x40>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e2833001 	add	r3, r3, #1
     1bc:	e50b3008 	str	r3, [fp, #-8]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e2833001 	add	r3, r3, #1
     1c8:	e50b300c 	str	r3, [fp, #-12]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e2433001 	sub	r3, r3, #1
     1d4:	e50b3010 	str	r3, [fp, #-16]
     1d8:	e51b3010 	ldr	r3, [fp, #-16]
     1dc:	e3530000 	cmp	r3, #0
     1e0:	da00000d 	ble	21c <strncmp+0x84>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e5d33000 	ldrb	r3, [r3]
     1ec:	e3530000 	cmp	r3, #0
     1f0:	0a000009 	beq	21c <strncmp+0x84>
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e5d33000 	ldrb	r3, [r3]
     1fc:	e3530000 	cmp	r3, #0
     200:	0a000005 	beq	21c <strncmp+0x84>
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e5d32000 	ldrb	r2, [r3]
     20c:	e51b300c 	ldr	r3, [fp, #-12]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e1520003 	cmp	r2, r3
     218:	0affffe5 	beq	1b4 <strncmp+0x1c>
     21c:	e51b3010 	ldr	r3, [fp, #-16]
     220:	e3530000 	cmp	r3, #0
     224:	1a000001 	bne	230 <strncmp+0x98>
     228:	e3a03000 	mov	r3, #0
     22c:	ea000005 	b	248 <strncmp+0xb0>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e5d33000 	ldrb	r3, [r3]
     238:	e1a02003 	mov	r2, r3
     23c:	e51b300c 	ldr	r3, [fp, #-12]
     240:	e5d33000 	ldrb	r3, [r3]
     244:	e0423003 	sub	r3, r2, r3
     248:	e1a00003 	mov	r0, r3
     24c:	e28bd000 	add	sp, fp, #0
     250:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     254:	e12fff1e 	bx	lr

00000258 <strcmp>:
     258:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     25c:	e28db000 	add	fp, sp, #0
     260:	e24dd00c 	sub	sp, sp, #12
     264:	e50b0008 	str	r0, [fp, #-8]
     268:	e50b100c 	str	r1, [fp, #-12]
     26c:	ea000005 	b	288 <strcmp+0x30>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e2833001 	add	r3, r3, #1
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833001 	add	r3, r3, #1
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e5d33000 	ldrb	r3, [r3]
     290:	e3530000 	cmp	r3, #0
     294:	0a000005 	beq	2b0 <strcmp+0x58>
     298:	e51b3008 	ldr	r3, [fp, #-8]
     29c:	e5d32000 	ldrb	r2, [r3]
     2a0:	e51b300c 	ldr	r3, [fp, #-12]
     2a4:	e5d33000 	ldrb	r3, [r3]
     2a8:	e1520003 	cmp	r2, r3
     2ac:	0affffef 	beq	270 <strcmp+0x18>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e5d33000 	ldrb	r3, [r3]
     2b8:	e1a02003 	mov	r2, r3
     2bc:	e51b300c 	ldr	r3, [fp, #-12]
     2c0:	e5d33000 	ldrb	r3, [r3]
     2c4:	e0423003 	sub	r3, r2, r3
     2c8:	e1a00003 	mov	r0, r3
     2cc:	e28bd000 	add	sp, fp, #0
     2d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d4:	e12fff1e 	bx	lr

000002d8 <strlen>:
     2d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2dc:	e28db000 	add	fp, sp, #0
     2e0:	e24dd014 	sub	sp, sp, #20
     2e4:	e50b0010 	str	r0, [fp, #-16]
     2e8:	e3a03000 	mov	r3, #0
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	ea000002 	b	300 <strlen+0x28>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e2833001 	add	r3, r3, #1
     2fc:	e50b3008 	str	r3, [fp, #-8]
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e51b2010 	ldr	r2, [fp, #-16]
     308:	e0823003 	add	r3, r2, r3
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e3530000 	cmp	r3, #0
     314:	1afffff6 	bne	2f4 <strlen+0x1c>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e1a00003 	mov	r0, r3
     320:	e28bd000 	add	sp, fp, #0
     324:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     328:	e12fff1e 	bx	lr

0000032c <memset>:
     32c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     330:	e28db000 	add	fp, sp, #0
     334:	e24dd024 	sub	sp, sp, #36	@ 0x24
     338:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     33c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     340:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     344:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     350:	e54b300d 	strb	r3, [fp, #-13]
     354:	e55b200d 	ldrb	r2, [fp, #-13]
     358:	e1a03002 	mov	r3, r2
     35c:	e1a03403 	lsl	r3, r3, #8
     360:	e0833002 	add	r3, r3, r2
     364:	e1a03803 	lsl	r3, r3, #16
     368:	e1a02003 	mov	r2, r3
     36c:	e55b300d 	ldrb	r3, [fp, #-13]
     370:	e1a03403 	lsl	r3, r3, #8
     374:	e1822003 	orr	r2, r2, r3
     378:	e55b300d 	ldrb	r3, [fp, #-13]
     37c:	e1823003 	orr	r3, r2, r3
     380:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     384:	ea000008 	b	3ac <memset+0x80>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e55b200d 	ldrb	r2, [fp, #-13]
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     398:	e2433001 	sub	r3, r3, #1
     39c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e3530000 	cmp	r3, #0
     3b4:	0a000003 	beq	3c8 <memset+0x9c>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e2033003 	and	r3, r3, #3
     3c0:	e3530000 	cmp	r3, #0
     3c4:	1affffef 	bne	388 <memset+0x5c>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e50b300c 	str	r3, [fp, #-12]
     3d0:	ea000008 	b	3f8 <memset+0xcc>
     3d4:	e51b300c 	ldr	r3, [fp, #-12]
     3d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3dc:	e5832000 	str	r2, [r3]
     3e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e2433004 	sub	r3, r3, #4
     3e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ec:	e51b300c 	ldr	r3, [fp, #-12]
     3f0:	e2833004 	add	r3, r3, #4
     3f4:	e50b300c 	str	r3, [fp, #-12]
     3f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3fc:	e3530003 	cmp	r3, #3
     400:	8afffff3 	bhi	3d4 <memset+0xa8>
     404:	e51b300c 	ldr	r3, [fp, #-12]
     408:	e50b3008 	str	r3, [fp, #-8]
     40c:	ea000008 	b	434 <memset+0x108>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e55b200d 	ldrb	r2, [fp, #-13]
     418:	e5c32000 	strb	r2, [r3]
     41c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     420:	e2433001 	sub	r3, r3, #1
     424:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e2833001 	add	r3, r3, #1
     430:	e50b3008 	str	r3, [fp, #-8]
     434:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     438:	e3530000 	cmp	r3, #0
     43c:	1afffff3 	bne	410 <memset+0xe4>
     440:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     444:	e1a00003 	mov	r0, r3
     448:	e28bd000 	add	sp, fp, #0
     44c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     450:	e12fff1e 	bx	lr

00000454 <strchr>:
     454:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     458:	e28db000 	add	fp, sp, #0
     45c:	e24dd00c 	sub	sp, sp, #12
     460:	e50b0008 	str	r0, [fp, #-8]
     464:	e1a03001 	mov	r3, r1
     468:	e54b3009 	strb	r3, [fp, #-9]
     46c:	ea000009 	b	498 <strchr+0x44>
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e5d33000 	ldrb	r3, [r3]
     478:	e55b2009 	ldrb	r2, [fp, #-9]
     47c:	e1520003 	cmp	r2, r3
     480:	1a000001 	bne	48c <strchr+0x38>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	ea000007 	b	4ac <strchr+0x58>
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e2833001 	add	r3, r3, #1
     494:	e50b3008 	str	r3, [fp, #-8]
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	1afffff1 	bne	470 <strchr+0x1c>
     4a8:	e3a03000 	mov	r3, #0
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e28bd000 	add	sp, fp, #0
     4b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b8:	e12fff1e 	bx	lr

000004bc <gets>:
     4bc:	e92d4800 	push	{fp, lr}
     4c0:	e28db004 	add	fp, sp, #4
     4c4:	e24dd018 	sub	sp, sp, #24
     4c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4d0:	e3a03000 	mov	r3, #0
     4d4:	e50b3008 	str	r3, [fp, #-8]
     4d8:	ea000016 	b	538 <gets+0x7c>
     4dc:	e24b300d 	sub	r3, fp, #13
     4e0:	e3a02001 	mov	r2, #1
     4e4:	e1a01003 	mov	r1, r3
     4e8:	e3a00000 	mov	r0, #0
     4ec:	eb00009b 	bl	760 <read>
     4f0:	e50b000c 	str	r0, [fp, #-12]
     4f4:	e51b300c 	ldr	r3, [fp, #-12]
     4f8:	e3530000 	cmp	r3, #0
     4fc:	da000013 	ble	550 <gets+0x94>
     500:	e51b3008 	ldr	r3, [fp, #-8]
     504:	e2832001 	add	r2, r3, #1
     508:	e50b2008 	str	r2, [fp, #-8]
     50c:	e1a02003 	mov	r2, r3
     510:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     514:	e0833002 	add	r3, r3, r2
     518:	e55b200d 	ldrb	r2, [fp, #-13]
     51c:	e5c32000 	strb	r2, [r3]
     520:	e55b300d 	ldrb	r3, [fp, #-13]
     524:	e353000a 	cmp	r3, #10
     528:	0a000009 	beq	554 <gets+0x98>
     52c:	e55b300d 	ldrb	r3, [fp, #-13]
     530:	e353000d 	cmp	r3, #13
     534:	0a000006 	beq	554 <gets+0x98>
     538:	e51b3008 	ldr	r3, [fp, #-8]
     53c:	e2833001 	add	r3, r3, #1
     540:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     544:	e1520003 	cmp	r2, r3
     548:	caffffe3 	bgt	4dc <gets+0x20>
     54c:	ea000000 	b	554 <gets+0x98>
     550:	e1a00000 	nop			@ (mov r0, r0)
     554:	e51b3008 	ldr	r3, [fp, #-8]
     558:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     55c:	e0823003 	add	r3, r2, r3
     560:	e3a02000 	mov	r2, #0
     564:	e5c32000 	strb	r2, [r3]
     568:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     56c:	e1a00003 	mov	r0, r3
     570:	e24bd004 	sub	sp, fp, #4
     574:	e8bd8800 	pop	{fp, pc}

00000578 <stat>:
     578:	e92d4800 	push	{fp, lr}
     57c:	e28db004 	add	fp, sp, #4
     580:	e24dd010 	sub	sp, sp, #16
     584:	e50b0010 	str	r0, [fp, #-16]
     588:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     58c:	e3a01000 	mov	r1, #0
     590:	e51b0010 	ldr	r0, [fp, #-16]
     594:	eb00009e 	bl	814 <open>
     598:	e50b0008 	str	r0, [fp, #-8]
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e3530000 	cmp	r3, #0
     5a4:	aa000001 	bge	5b0 <stat+0x38>
     5a8:	e3e03000 	mvn	r3, #0
     5ac:	ea000006 	b	5cc <stat+0x54>
     5b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5b4:	e51b0008 	ldr	r0, [fp, #-8]
     5b8:	eb0000b0 	bl	880 <fstat>
     5bc:	e50b000c 	str	r0, [fp, #-12]
     5c0:	e51b0008 	ldr	r0, [fp, #-8]
     5c4:	eb000077 	bl	7a8 <close>
     5c8:	e51b300c 	ldr	r3, [fp, #-12]
     5cc:	e1a00003 	mov	r0, r3
     5d0:	e24bd004 	sub	sp, fp, #4
     5d4:	e8bd8800 	pop	{fp, pc}

000005d8 <atoi>:
     5d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5dc:	e28db000 	add	fp, sp, #0
     5e0:	e24dd014 	sub	sp, sp, #20
     5e4:	e50b0010 	str	r0, [fp, #-16]
     5e8:	e3a03000 	mov	r3, #0
     5ec:	e50b3008 	str	r3, [fp, #-8]
     5f0:	ea00000c 	b	628 <atoi+0x50>
     5f4:	e51b2008 	ldr	r2, [fp, #-8]
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a03103 	lsl	r3, r3, #2
     600:	e0833002 	add	r3, r3, r2
     604:	e1a03083 	lsl	r3, r3, #1
     608:	e1a01003 	mov	r1, r3
     60c:	e51b3010 	ldr	r3, [fp, #-16]
     610:	e2832001 	add	r2, r3, #1
     614:	e50b2010 	str	r2, [fp, #-16]
     618:	e5d33000 	ldrb	r3, [r3]
     61c:	e0813003 	add	r3, r1, r3
     620:	e2433030 	sub	r3, r3, #48	@ 0x30
     624:	e50b3008 	str	r3, [fp, #-8]
     628:	e51b3010 	ldr	r3, [fp, #-16]
     62c:	e5d33000 	ldrb	r3, [r3]
     630:	e353002f 	cmp	r3, #47	@ 0x2f
     634:	9a000003 	bls	648 <atoi+0x70>
     638:	e51b3010 	ldr	r3, [fp, #-16]
     63c:	e5d33000 	ldrb	r3, [r3]
     640:	e3530039 	cmp	r3, #57	@ 0x39
     644:	9affffea 	bls	5f4 <atoi+0x1c>
     648:	e51b3008 	ldr	r3, [fp, #-8]
     64c:	e1a00003 	mov	r0, r3
     650:	e28bd000 	add	sp, fp, #0
     654:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <memmove>:
     65c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     660:	e28db000 	add	fp, sp, #0
     664:	e24dd01c 	sub	sp, sp, #28
     668:	e50b0010 	str	r0, [fp, #-16]
     66c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     670:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     674:	e51b3010 	ldr	r3, [fp, #-16]
     678:	e50b3008 	str	r3, [fp, #-8]
     67c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     680:	e50b300c 	str	r3, [fp, #-12]
     684:	ea000007 	b	6a8 <memmove+0x4c>
     688:	e51b200c 	ldr	r2, [fp, #-12]
     68c:	e2823001 	add	r3, r2, #1
     690:	e50b300c 	str	r3, [fp, #-12]
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e2831001 	add	r1, r3, #1
     69c:	e50b1008 	str	r1, [fp, #-8]
     6a0:	e5d22000 	ldrb	r2, [r2]
     6a4:	e5c32000 	strb	r2, [r3]
     6a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6ac:	e2432001 	sub	r2, r3, #1
     6b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6b4:	e3530000 	cmp	r3, #0
     6b8:	cafffff2 	bgt	688 <memmove+0x2c>
     6bc:	e51b3010 	ldr	r3, [fp, #-16]
     6c0:	e1a00003 	mov	r0, r3
     6c4:	e28bd000 	add	sp, fp, #0
     6c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <fork>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a00001 	mov	r0, #1
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <exit>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00002 	mov	r0, #2
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <wait>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00003 	mov	r0, #3
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <pipe>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00004 	mov	r0, #4
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <read>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00005 	mov	r0, #5
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <write>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00010 	mov	r0, #16
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <close>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a00015 	mov	r0, #21
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <kill>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a00006 	mov	r0, #6
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <exec>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a00007 	mov	r0, #7
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <open>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000f 	mov	r0, #15
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <mknod>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a00011 	mov	r0, #17
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <unlink>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00012 	mov	r0, #18
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <fstat>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00008 	mov	r0, #8
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <link>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00013 	mov	r0, #19
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <mkdir>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00014 	mov	r0, #20
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <chdir>:
     8ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f0:	e1a04003 	mov	r4, r3
     8f4:	e1a03002 	mov	r3, r2
     8f8:	e1a02001 	mov	r2, r1
     8fc:	e1a01000 	mov	r1, r0
     900:	e3a00009 	mov	r0, #9
     904:	ef000000 	svc	0x00000000
     908:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     90c:	e12fff1e 	bx	lr

00000910 <dup>:
     910:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     914:	e1a04003 	mov	r4, r3
     918:	e1a03002 	mov	r3, r2
     91c:	e1a02001 	mov	r2, r1
     920:	e1a01000 	mov	r1, r0
     924:	e3a0000a 	mov	r0, #10
     928:	ef000000 	svc	0x00000000
     92c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <getpid>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a0000b 	mov	r0, #11
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <sbrk>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a0000c 	mov	r0, #12
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <sleep>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a0000d 	mov	r0, #13
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <uptime>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a0000e 	mov	r0, #14
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <ps>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00016 	mov	r0, #22
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <settickets>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00017 	mov	r0, #23
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <srand>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00018 	mov	r0, #24
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <getpinfo>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00019 	mov	r0, #25
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <printpt>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a0001a 	mov	r0, #26
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <pgpte>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0001b 	mov	r0, #27
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <ugetpid>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a0001c 	mov	r0, #28
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <kpt>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a0001d 	mov	r0, #29
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <putc>:
     ae4:	e92d4800 	push	{fp, lr}
     ae8:	e28db004 	add	fp, sp, #4
     aec:	e24dd008 	sub	sp, sp, #8
     af0:	e50b0008 	str	r0, [fp, #-8]
     af4:	e1a03001 	mov	r3, r1
     af8:	e54b3009 	strb	r3, [fp, #-9]
     afc:	e24b3009 	sub	r3, fp, #9
     b00:	e3a02001 	mov	r2, #1
     b04:	e1a01003 	mov	r1, r3
     b08:	e51b0008 	ldr	r0, [fp, #-8]
     b0c:	ebffff1c 	bl	784 <write>
     b10:	e1a00000 	nop			@ (mov r0, r0)
     b14:	e24bd004 	sub	sp, fp, #4
     b18:	e8bd8800 	pop	{fp, pc}

00000b1c <printint>:
     b1c:	e92d4800 	push	{fp, lr}
     b20:	e28db004 	add	fp, sp, #4
     b24:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b28:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b2c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b30:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b34:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b38:	e3a03000 	mov	r3, #0
     b3c:	e50b300c 	str	r3, [fp, #-12]
     b40:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b44:	e3530000 	cmp	r3, #0
     b48:	0a000008 	beq	b70 <printint+0x54>
     b4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b50:	e3530000 	cmp	r3, #0
     b54:	aa000005 	bge	b70 <printint+0x54>
     b58:	e3a03001 	mov	r3, #1
     b5c:	e50b300c 	str	r3, [fp, #-12]
     b60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b64:	e2633000 	rsb	r3, r3, #0
     b68:	e50b3010 	str	r3, [fp, #-16]
     b6c:	ea000001 	b	b78 <printint+0x5c>
     b70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b74:	e50b3010 	str	r3, [fp, #-16]
     b78:	e3a03000 	mov	r3, #0
     b7c:	e50b3008 	str	r3, [fp, #-8]
     b80:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b84:	e51b3010 	ldr	r3, [fp, #-16]
     b88:	e1a01002 	mov	r1, r2
     b8c:	e1a00003 	mov	r0, r3
     b90:	eb0001d5 	bl	12ec <__aeabi_uidivmod>
     b94:	e1a03001 	mov	r3, r1
     b98:	e1a01003 	mov	r1, r3
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2832001 	add	r2, r3, #1
     ba4:	e50b2008 	str	r2, [fp, #-8]
     ba8:	e59f20a0 	ldr	r2, [pc, #160]	@ c50 <printint+0x134>
     bac:	e7d22001 	ldrb	r2, [r2, r1]
     bb0:	e2433004 	sub	r3, r3, #4
     bb4:	e083300b 	add	r3, r3, fp
     bb8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bbc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e51b0010 	ldr	r0, [fp, #-16]
     bc8:	eb00018a 	bl	11f8 <__udivsi3>
     bcc:	e1a03000 	mov	r3, r0
     bd0:	e50b3010 	str	r3, [fp, #-16]
     bd4:	e51b3010 	ldr	r3, [fp, #-16]
     bd8:	e3530000 	cmp	r3, #0
     bdc:	1affffe7 	bne	b80 <printint+0x64>
     be0:	e51b300c 	ldr	r3, [fp, #-12]
     be4:	e3530000 	cmp	r3, #0
     be8:	0a00000e 	beq	c28 <printint+0x10c>
     bec:	e51b3008 	ldr	r3, [fp, #-8]
     bf0:	e2832001 	add	r2, r3, #1
     bf4:	e50b2008 	str	r2, [fp, #-8]
     bf8:	e2433004 	sub	r3, r3, #4
     bfc:	e083300b 	add	r3, r3, fp
     c00:	e3a0202d 	mov	r2, #45	@ 0x2d
     c04:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c08:	ea000006 	b	c28 <printint+0x10c>
     c0c:	e24b2020 	sub	r2, fp, #32
     c10:	e51b3008 	ldr	r3, [fp, #-8]
     c14:	e0823003 	add	r3, r2, r3
     c18:	e5d33000 	ldrb	r3, [r3]
     c1c:	e1a01003 	mov	r1, r3
     c20:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c24:	ebffffae 	bl	ae4 <putc>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e2433001 	sub	r3, r3, #1
     c30:	e50b3008 	str	r3, [fp, #-8]
     c34:	e51b3008 	ldr	r3, [fp, #-8]
     c38:	e3530000 	cmp	r3, #0
     c3c:	aafffff2 	bge	c0c <printint+0xf0>
     c40:	e1a00000 	nop			@ (mov r0, r0)
     c44:	e1a00000 	nop			@ (mov r0, r0)
     c48:	e24bd004 	sub	sp, fp, #4
     c4c:	e8bd8800 	pop	{fp, pc}
     c50:	00001344 	.word	0x00001344

00000c54 <printf>:
     c54:	e92d000e 	push	{r1, r2, r3}
     c58:	e92d4800 	push	{fp, lr}
     c5c:	e28db004 	add	fp, sp, #4
     c60:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c64:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c68:	e3a03000 	mov	r3, #0
     c6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c70:	e28b3008 	add	r3, fp, #8
     c74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c78:	e3a03000 	mov	r3, #0
     c7c:	e50b3010 	str	r3, [fp, #-16]
     c80:	ea000074 	b	e58 <printf+0x204>
     c84:	e59b2004 	ldr	r2, [fp, #4]
     c88:	e51b3010 	ldr	r3, [fp, #-16]
     c8c:	e0823003 	add	r3, r2, r3
     c90:	e5d33000 	ldrb	r3, [r3]
     c94:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c9c:	e3530000 	cmp	r3, #0
     ca0:	1a00000b 	bne	cd4 <printf+0x80>
     ca4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca8:	e3530025 	cmp	r3, #37	@ 0x25
     cac:	1a000002 	bne	cbc <printf+0x68>
     cb0:	e3a03025 	mov	r3, #37	@ 0x25
     cb4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cb8:	ea000063 	b	e4c <printf+0x1f8>
     cbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc0:	e6ef3073 	uxtb	r3, r3
     cc4:	e1a01003 	mov	r1, r3
     cc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ccc:	ebffff84 	bl	ae4 <putc>
     cd0:	ea00005d 	b	e4c <printf+0x1f8>
     cd4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cd8:	e3530025 	cmp	r3, #37	@ 0x25
     cdc:	1a00005a 	bne	e4c <printf+0x1f8>
     ce0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce4:	e3530064 	cmp	r3, #100	@ 0x64
     ce8:	1a00000a 	bne	d18 <printf+0xc4>
     cec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e1a01003 	mov	r1, r3
     cf8:	e3a03001 	mov	r3, #1
     cfc:	e3a0200a 	mov	r2, #10
     d00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d04:	ebffff84 	bl	b1c <printint>
     d08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	e2833004 	add	r3, r3, #4
     d10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d14:	ea00004a 	b	e44 <printf+0x1f0>
     d18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d1c:	e3530078 	cmp	r3, #120	@ 0x78
     d20:	0a000002 	beq	d30 <printf+0xdc>
     d24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d28:	e3530070 	cmp	r3, #112	@ 0x70
     d2c:	1a00000a 	bne	d5c <printf+0x108>
     d30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e1a01003 	mov	r1, r3
     d3c:	e3a03000 	mov	r3, #0
     d40:	e3a02010 	mov	r2, #16
     d44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d48:	ebffff73 	bl	b1c <printint>
     d4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e2833004 	add	r3, r3, #4
     d54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d58:	ea000039 	b	e44 <printf+0x1f0>
     d5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d60:	e3530073 	cmp	r3, #115	@ 0x73
     d64:	1a000018 	bne	dcc <printf+0x178>
     d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e50b300c 	str	r3, [fp, #-12]
     d74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d78:	e2833004 	add	r3, r3, #4
     d7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d80:	e51b300c 	ldr	r3, [fp, #-12]
     d84:	e3530000 	cmp	r3, #0
     d88:	1a00000a 	bne	db8 <printf+0x164>
     d8c:	e59f30f4 	ldr	r3, [pc, #244]	@ e88 <printf+0x234>
     d90:	e50b300c 	str	r3, [fp, #-12]
     d94:	ea000007 	b	db8 <printf+0x164>
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e5d33000 	ldrb	r3, [r3]
     da0:	e1a01003 	mov	r1, r3
     da4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     da8:	ebffff4d 	bl	ae4 <putc>
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e2833001 	add	r3, r3, #1
     db4:	e50b300c 	str	r3, [fp, #-12]
     db8:	e51b300c 	ldr	r3, [fp, #-12]
     dbc:	e5d33000 	ldrb	r3, [r3]
     dc0:	e3530000 	cmp	r3, #0
     dc4:	1afffff3 	bne	d98 <printf+0x144>
     dc8:	ea00001d 	b	e44 <printf+0x1f0>
     dcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dd0:	e3530063 	cmp	r3, #99	@ 0x63
     dd4:	1a000009 	bne	e00 <printf+0x1ac>
     dd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e6ef3073 	uxtb	r3, r3
     de4:	e1a01003 	mov	r1, r3
     de8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dec:	ebffff3c 	bl	ae4 <putc>
     df0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df4:	e2833004 	add	r3, r3, #4
     df8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dfc:	ea000010 	b	e44 <printf+0x1f0>
     e00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e04:	e3530025 	cmp	r3, #37	@ 0x25
     e08:	1a000005 	bne	e24 <printf+0x1d0>
     e0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e10:	e6ef3073 	uxtb	r3, r3
     e14:	e1a01003 	mov	r1, r3
     e18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e1c:	ebffff30 	bl	ae4 <putc>
     e20:	ea000007 	b	e44 <printf+0x1f0>
     e24:	e3a01025 	mov	r1, #37	@ 0x25
     e28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e2c:	ebffff2c 	bl	ae4 <putc>
     e30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e34:	e6ef3073 	uxtb	r3, r3
     e38:	e1a01003 	mov	r1, r3
     e3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e40:	ebffff27 	bl	ae4 <putc>
     e44:	e3a03000 	mov	r3, #0
     e48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e4c:	e51b3010 	ldr	r3, [fp, #-16]
     e50:	e2833001 	add	r3, r3, #1
     e54:	e50b3010 	str	r3, [fp, #-16]
     e58:	e59b2004 	ldr	r2, [fp, #4]
     e5c:	e51b3010 	ldr	r3, [fp, #-16]
     e60:	e0823003 	add	r3, r2, r3
     e64:	e5d33000 	ldrb	r3, [r3]
     e68:	e3530000 	cmp	r3, #0
     e6c:	1affff84 	bne	c84 <printf+0x30>
     e70:	e1a00000 	nop			@ (mov r0, r0)
     e74:	e1a00000 	nop			@ (mov r0, r0)
     e78:	e24bd004 	sub	sp, fp, #4
     e7c:	e8bd4800 	pop	{fp, lr}
     e80:	e28dd00c 	add	sp, sp, #12
     e84:	e12fff1e 	bx	lr
     e88:	0000133c 	.word	0x0000133c

00000e8c <free>:
     e8c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e90:	e28db000 	add	fp, sp, #0
     e94:	e24dd014 	sub	sp, sp, #20
     e98:	e50b0010 	str	r0, [fp, #-16]
     e9c:	e51b3010 	ldr	r3, [fp, #-16]
     ea0:	e2433008 	sub	r3, r3, #8
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e59f3154 	ldr	r3, [pc, #340]	@ 1004 <free+0x178>
     eac:	e5933000 	ldr	r3, [r3]
     eb0:	e50b3008 	str	r3, [fp, #-8]
     eb4:	ea000010 	b	efc <free+0x70>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5933000 	ldr	r3, [r3]
     ec0:	e51b2008 	ldr	r2, [fp, #-8]
     ec4:	e1520003 	cmp	r2, r3
     ec8:	3a000008 	bcc	ef0 <free+0x64>
     ecc:	e51b200c 	ldr	r2, [fp, #-12]
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e1520003 	cmp	r2, r3
     ed8:	8a000010 	bhi	f20 <free+0x94>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e51b200c 	ldr	r2, [fp, #-12]
     ee8:	e1520003 	cmp	r2, r3
     eec:	3a00000b 	bcc	f20 <free+0x94>
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e50b3008 	str	r3, [fp, #-8]
     efc:	e51b200c 	ldr	r2, [fp, #-12]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e1520003 	cmp	r2, r3
     f08:	9affffea 	bls	eb8 <free+0x2c>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e51b200c 	ldr	r2, [fp, #-12]
     f18:	e1520003 	cmp	r2, r3
     f1c:	2affffe5 	bcs	eb8 <free+0x2c>
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5933004 	ldr	r3, [r3, #4]
     f28:	e1a03183 	lsl	r3, r3, #3
     f2c:	e51b200c 	ldr	r2, [fp, #-12]
     f30:	e0822003 	add	r2, r2, r3
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e5933000 	ldr	r3, [r3]
     f3c:	e1520003 	cmp	r2, r3
     f40:	1a00000d 	bne	f7c <free+0xf0>
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e5932004 	ldr	r2, [r3, #4]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e0822003 	add	r2, r2, r3
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e5832004 	str	r2, [r3, #4]
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5933000 	ldr	r3, [r3]
     f6c:	e5932000 	ldr	r2, [r3]
     f70:	e51b300c 	ldr	r3, [fp, #-12]
     f74:	e5832000 	str	r2, [r3]
     f78:	ea000003 	b	f8c <free+0x100>
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e5932000 	ldr	r2, [r3]
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e5832000 	str	r2, [r3]
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e5933004 	ldr	r3, [r3, #4]
     f94:	e1a03183 	lsl	r3, r3, #3
     f98:	e51b2008 	ldr	r2, [fp, #-8]
     f9c:	e0823003 	add	r3, r2, r3
     fa0:	e51b200c 	ldr	r2, [fp, #-12]
     fa4:	e1520003 	cmp	r2, r3
     fa8:	1a00000b 	bne	fdc <free+0x150>
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5932004 	ldr	r2, [r3, #4]
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5933004 	ldr	r3, [r3, #4]
     fbc:	e0822003 	add	r2, r2, r3
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5832004 	str	r2, [r3, #4]
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5932000 	ldr	r2, [r3]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5832000 	str	r2, [r3]
     fd8:	ea000002 	b	fe8 <free+0x15c>
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e51b200c 	ldr	r2, [fp, #-12]
     fe4:	e5832000 	str	r2, [r3]
     fe8:	e59f2014 	ldr	r2, [pc, #20]	@ 1004 <free+0x178>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5823000 	str	r3, [r2]
     ff4:	e1a00000 	nop			@ (mov r0, r0)
     ff8:	e28bd000 	add	sp, fp, #0
     ffc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1000:	e12fff1e 	bx	lr
    1004:	00001560 	.word	0x00001560

00001008 <morecore>:
    1008:	e92d4800 	push	{fp, lr}
    100c:	e28db004 	add	fp, sp, #4
    1010:	e24dd010 	sub	sp, sp, #16
    1014:	e50b0010 	str	r0, [fp, #-16]
    1018:	e51b3010 	ldr	r3, [fp, #-16]
    101c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1020:	2a000001 	bcs	102c <morecore+0x24>
    1024:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1028:	e50b3010 	str	r3, [fp, #-16]
    102c:	e51b3010 	ldr	r3, [fp, #-16]
    1030:	e1a03183 	lsl	r3, r3, #3
    1034:	e1a00003 	mov	r0, r3
    1038:	ebfffe46 	bl	958 <sbrk>
    103c:	e50b0008 	str	r0, [fp, #-8]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e3730001 	cmn	r3, #1
    1048:	1a000001 	bne	1054 <morecore+0x4c>
    104c:	e3a03000 	mov	r3, #0
    1050:	ea00000a 	b	1080 <morecore+0x78>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e50b300c 	str	r3, [fp, #-12]
    105c:	e51b300c 	ldr	r3, [fp, #-12]
    1060:	e51b2010 	ldr	r2, [fp, #-16]
    1064:	e5832004 	str	r2, [r3, #4]
    1068:	e51b300c 	ldr	r3, [fp, #-12]
    106c:	e2833008 	add	r3, r3, #8
    1070:	e1a00003 	mov	r0, r3
    1074:	ebffff84 	bl	e8c <free>
    1078:	e59f300c 	ldr	r3, [pc, #12]	@ 108c <morecore+0x84>
    107c:	e5933000 	ldr	r3, [r3]
    1080:	e1a00003 	mov	r0, r3
    1084:	e24bd004 	sub	sp, fp, #4
    1088:	e8bd8800 	pop	{fp, pc}
    108c:	00001560 	.word	0x00001560

00001090 <malloc>:
    1090:	e92d4800 	push	{fp, lr}
    1094:	e28db004 	add	fp, sp, #4
    1098:	e24dd018 	sub	sp, sp, #24
    109c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    10a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	e2833007 	add	r3, r3, #7
    10a8:	e1a031a3 	lsr	r3, r3, #3
    10ac:	e2833001 	add	r3, r3, #1
    10b0:	e50b3010 	str	r3, [fp, #-16]
    10b4:	e59f3134 	ldr	r3, [pc, #308]	@ 11f0 <malloc+0x160>
    10b8:	e5933000 	ldr	r3, [r3]
    10bc:	e50b300c 	str	r3, [fp, #-12]
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e3530000 	cmp	r3, #0
    10c8:	1a00000b 	bne	10fc <malloc+0x6c>
    10cc:	e59f3120 	ldr	r3, [pc, #288]	@ 11f4 <malloc+0x164>
    10d0:	e50b300c 	str	r3, [fp, #-12]
    10d4:	e59f2114 	ldr	r2, [pc, #276]	@ 11f0 <malloc+0x160>
    10d8:	e51b300c 	ldr	r3, [fp, #-12]
    10dc:	e5823000 	str	r3, [r2]
    10e0:	e59f3108 	ldr	r3, [pc, #264]	@ 11f0 <malloc+0x160>
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e59f2104 	ldr	r2, [pc, #260]	@ 11f4 <malloc+0x164>
    10ec:	e5823000 	str	r3, [r2]
    10f0:	e59f30fc 	ldr	r3, [pc, #252]	@ 11f4 <malloc+0x164>
    10f4:	e3a02000 	mov	r2, #0
    10f8:	e5832004 	str	r2, [r3, #4]
    10fc:	e51b300c 	ldr	r3, [fp, #-12]
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e50b3008 	str	r3, [fp, #-8]
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e5933004 	ldr	r3, [r3, #4]
    1110:	e51b2010 	ldr	r2, [fp, #-16]
    1114:	e1520003 	cmp	r2, r3
    1118:	8a00001e 	bhi	1198 <malloc+0x108>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5933004 	ldr	r3, [r3, #4]
    1124:	e51b2010 	ldr	r2, [fp, #-16]
    1128:	e1520003 	cmp	r2, r3
    112c:	1a000004 	bne	1144 <malloc+0xb4>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e5932000 	ldr	r2, [r3]
    1138:	e51b300c 	ldr	r3, [fp, #-12]
    113c:	e5832000 	str	r2, [r3]
    1140:	ea00000e 	b	1180 <malloc+0xf0>
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e5932004 	ldr	r2, [r3, #4]
    114c:	e51b3010 	ldr	r3, [fp, #-16]
    1150:	e0422003 	sub	r2, r2, r3
    1154:	e51b3008 	ldr	r3, [fp, #-8]
    1158:	e5832004 	str	r2, [r3, #4]
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5933004 	ldr	r3, [r3, #4]
    1164:	e1a03183 	lsl	r3, r3, #3
    1168:	e51b2008 	ldr	r2, [fp, #-8]
    116c:	e0823003 	add	r3, r2, r3
    1170:	e50b3008 	str	r3, [fp, #-8]
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e51b2010 	ldr	r2, [fp, #-16]
    117c:	e5832004 	str	r2, [r3, #4]
    1180:	e59f2068 	ldr	r2, [pc, #104]	@ 11f0 <malloc+0x160>
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5823000 	str	r3, [r2]
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e2833008 	add	r3, r3, #8
    1194:	ea000012 	b	11e4 <malloc+0x154>
    1198:	e59f3050 	ldr	r3, [pc, #80]	@ 11f0 <malloc+0x160>
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e51b2008 	ldr	r2, [fp, #-8]
    11a4:	e1520003 	cmp	r2, r3
    11a8:	1a000007 	bne	11cc <malloc+0x13c>
    11ac:	e51b0010 	ldr	r0, [fp, #-16]
    11b0:	ebffff94 	bl	1008 <morecore>
    11b4:	e50b0008 	str	r0, [fp, #-8]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e3530000 	cmp	r3, #0
    11c0:	1a000001 	bne	11cc <malloc+0x13c>
    11c4:	e3a03000 	mov	r3, #0
    11c8:	ea000005 	b	11e4 <malloc+0x154>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e50b300c 	str	r3, [fp, #-12]
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e5933000 	ldr	r3, [r3]
    11dc:	e50b3008 	str	r3, [fp, #-8]
    11e0:	eaffffc8 	b	1108 <malloc+0x78>
    11e4:	e1a00003 	mov	r0, r3
    11e8:	e24bd004 	sub	sp, fp, #4
    11ec:	e8bd8800 	pop	{fp, pc}
    11f0:	00001560 	.word	0x00001560
    11f4:	00001558 	.word	0x00001558

000011f8 <__udivsi3>:
    11f8:	e2512001 	subs	r2, r1, #1
    11fc:	012fff1e 	bxeq	lr
    1200:	3a000036 	bcc	12e0 <__udivsi3+0xe8>
    1204:	e1500001 	cmp	r0, r1
    1208:	9a000022 	bls	1298 <__udivsi3+0xa0>
    120c:	e1110002 	tst	r1, r2
    1210:	0a000023 	beq	12a4 <__udivsi3+0xac>
    1214:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1218:	01a01181 	lsleq	r1, r1, #3
    121c:	03a03008 	moveq	r3, #8
    1220:	13a03001 	movne	r3, #1
    1224:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1228:	31510000 	cmpcc	r1, r0
    122c:	31a01201 	lslcc	r1, r1, #4
    1230:	31a03203 	lslcc	r3, r3, #4
    1234:	3afffffa 	bcc	1224 <__udivsi3+0x2c>
    1238:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    123c:	31510000 	cmpcc	r1, r0
    1240:	31a01081 	lslcc	r1, r1, #1
    1244:	31a03083 	lslcc	r3, r3, #1
    1248:	3afffffa 	bcc	1238 <__udivsi3+0x40>
    124c:	e3a02000 	mov	r2, #0
    1250:	e1500001 	cmp	r0, r1
    1254:	20400001 	subcs	r0, r0, r1
    1258:	21822003 	orrcs	r2, r2, r3
    125c:	e15000a1 	cmp	r0, r1, lsr #1
    1260:	204000a1 	subcs	r0, r0, r1, lsr #1
    1264:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1268:	e1500121 	cmp	r0, r1, lsr #2
    126c:	20400121 	subcs	r0, r0, r1, lsr #2
    1270:	21822123 	orrcs	r2, r2, r3, lsr #2
    1274:	e15001a1 	cmp	r0, r1, lsr #3
    1278:	204001a1 	subcs	r0, r0, r1, lsr #3
    127c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1280:	e3500000 	cmp	r0, #0
    1284:	11b03223 	lsrsne	r3, r3, #4
    1288:	11a01221 	lsrne	r1, r1, #4
    128c:	1affffef 	bne	1250 <__udivsi3+0x58>
    1290:	e1a00002 	mov	r0, r2
    1294:	e12fff1e 	bx	lr
    1298:	03a00001 	moveq	r0, #1
    129c:	13a00000 	movne	r0, #0
    12a0:	e12fff1e 	bx	lr
    12a4:	e3510801 	cmp	r1, #65536	@ 0x10000
    12a8:	21a01821 	lsrcs	r1, r1, #16
    12ac:	23a02010 	movcs	r2, #16
    12b0:	33a02000 	movcc	r2, #0
    12b4:	e3510c01 	cmp	r1, #256	@ 0x100
    12b8:	21a01421 	lsrcs	r1, r1, #8
    12bc:	22822008 	addcs	r2, r2, #8
    12c0:	e3510010 	cmp	r1, #16
    12c4:	21a01221 	lsrcs	r1, r1, #4
    12c8:	22822004 	addcs	r2, r2, #4
    12cc:	e3510004 	cmp	r1, #4
    12d0:	82822003 	addhi	r2, r2, #3
    12d4:	908220a1 	addls	r2, r2, r1, lsr #1
    12d8:	e1a00230 	lsr	r0, r0, r2
    12dc:	e12fff1e 	bx	lr
    12e0:	e3500000 	cmp	r0, #0
    12e4:	13e00000 	mvnne	r0, #0
    12e8:	ea000007 	b	130c <__aeabi_idiv0>

000012ec <__aeabi_uidivmod>:
    12ec:	e3510000 	cmp	r1, #0
    12f0:	0afffffa 	beq	12e0 <__udivsi3+0xe8>
    12f4:	e92d4003 	push	{r0, r1, lr}
    12f8:	ebffffbe 	bl	11f8 <__udivsi3>
    12fc:	e8bd4006 	pop	{r1, r2, lr}
    1300:	e0030092 	mul	r3, r2, r0
    1304:	e0411003 	sub	r1, r1, r3
    1308:	e12fff1e 	bx	lr

0000130c <__aeabi_idiv0>:
    130c:	e12fff1e 	bx	lr
