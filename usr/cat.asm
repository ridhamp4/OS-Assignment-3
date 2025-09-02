
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
      58:	eb0002d9 	bl	bc4 <printf>
      5c:	eb0001a4 	bl	6f4 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	000012c8 	.word	0x000012c8
      70:	00001280 	.word	0x00001280

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
      fc:	eb0002b0 	bl	bc4 <printf>
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
     134:	00001294 	.word	0x00001294

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

00000a54 <putc>:
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd008 	sub	sp, sp, #8
     a60:	e50b0008 	str	r0, [fp, #-8]
     a64:	e1a03001 	mov	r3, r1
     a68:	e54b3009 	strb	r3, [fp, #-9]
     a6c:	e24b3009 	sub	r3, fp, #9
     a70:	e3a02001 	mov	r2, #1
     a74:	e1a01003 	mov	r1, r3
     a78:	e51b0008 	ldr	r0, [fp, #-8]
     a7c:	ebffff40 	bl	784 <write>
     a80:	e1a00000 	nop			@ (mov r0, r0)
     a84:	e24bd004 	sub	sp, fp, #4
     a88:	e8bd8800 	pop	{fp, pc}

00000a8c <printint>:
     a8c:	e92d4800 	push	{fp, lr}
     a90:	e28db004 	add	fp, sp, #4
     a94:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a98:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a9c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     aa0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     aa4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     aa8:	e3a03000 	mov	r3, #0
     aac:	e50b300c 	str	r3, [fp, #-12]
     ab0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ab4:	e3530000 	cmp	r3, #0
     ab8:	0a000008 	beq	ae0 <printint+0x54>
     abc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ac0:	e3530000 	cmp	r3, #0
     ac4:	aa000005 	bge	ae0 <printint+0x54>
     ac8:	e3a03001 	mov	r3, #1
     acc:	e50b300c 	str	r3, [fp, #-12]
     ad0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ad4:	e2633000 	rsb	r3, r3, #0
     ad8:	e50b3010 	str	r3, [fp, #-16]
     adc:	ea000001 	b	ae8 <printint+0x5c>
     ae0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ae4:	e50b3010 	str	r3, [fp, #-16]
     ae8:	e3a03000 	mov	r3, #0
     aec:	e50b3008 	str	r3, [fp, #-8]
     af0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     af4:	e51b3010 	ldr	r3, [fp, #-16]
     af8:	e1a01002 	mov	r1, r2
     afc:	e1a00003 	mov	r0, r3
     b00:	eb0001d5 	bl	125c <__aeabi_uidivmod>
     b04:	e1a03001 	mov	r3, r1
     b08:	e1a01003 	mov	r1, r3
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e2832001 	add	r2, r3, #1
     b14:	e50b2008 	str	r2, [fp, #-8]
     b18:	e59f20a0 	ldr	r2, [pc, #160]	@ bc0 <printint+0x134>
     b1c:	e7d22001 	ldrb	r2, [r2, r1]
     b20:	e2433004 	sub	r3, r3, #4
     b24:	e083300b 	add	r3, r3, fp
     b28:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b2c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b30:	e1a01003 	mov	r1, r3
     b34:	e51b0010 	ldr	r0, [fp, #-16]
     b38:	eb00018a 	bl	1168 <__udivsi3>
     b3c:	e1a03000 	mov	r3, r0
     b40:	e50b3010 	str	r3, [fp, #-16]
     b44:	e51b3010 	ldr	r3, [fp, #-16]
     b48:	e3530000 	cmp	r3, #0
     b4c:	1affffe7 	bne	af0 <printint+0x64>
     b50:	e51b300c 	ldr	r3, [fp, #-12]
     b54:	e3530000 	cmp	r3, #0
     b58:	0a00000e 	beq	b98 <printint+0x10c>
     b5c:	e51b3008 	ldr	r3, [fp, #-8]
     b60:	e2832001 	add	r2, r3, #1
     b64:	e50b2008 	str	r2, [fp, #-8]
     b68:	e2433004 	sub	r3, r3, #4
     b6c:	e083300b 	add	r3, r3, fp
     b70:	e3a0202d 	mov	r2, #45	@ 0x2d
     b74:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b78:	ea000006 	b	b98 <printint+0x10c>
     b7c:	e24b2020 	sub	r2, fp, #32
     b80:	e51b3008 	ldr	r3, [fp, #-8]
     b84:	e0823003 	add	r3, r2, r3
     b88:	e5d33000 	ldrb	r3, [r3]
     b8c:	e1a01003 	mov	r1, r3
     b90:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b94:	ebffffae 	bl	a54 <putc>
     b98:	e51b3008 	ldr	r3, [fp, #-8]
     b9c:	e2433001 	sub	r3, r3, #1
     ba0:	e50b3008 	str	r3, [fp, #-8]
     ba4:	e51b3008 	ldr	r3, [fp, #-8]
     ba8:	e3530000 	cmp	r3, #0
     bac:	aafffff2 	bge	b7c <printint+0xf0>
     bb0:	e1a00000 	nop			@ (mov r0, r0)
     bb4:	e1a00000 	nop			@ (mov r0, r0)
     bb8:	e24bd004 	sub	sp, fp, #4
     bbc:	e8bd8800 	pop	{fp, pc}
     bc0:	000012b4 	.word	0x000012b4

00000bc4 <printf>:
     bc4:	e92d000e 	push	{r1, r2, r3}
     bc8:	e92d4800 	push	{fp, lr}
     bcc:	e28db004 	add	fp, sp, #4
     bd0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     bd4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     bd8:	e3a03000 	mov	r3, #0
     bdc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be0:	e28b3008 	add	r3, fp, #8
     be4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be8:	e3a03000 	mov	r3, #0
     bec:	e50b3010 	str	r3, [fp, #-16]
     bf0:	ea000074 	b	dc8 <printf+0x204>
     bf4:	e59b2004 	ldr	r2, [fp, #4]
     bf8:	e51b3010 	ldr	r3, [fp, #-16]
     bfc:	e0823003 	add	r3, r2, r3
     c00:	e5d33000 	ldrb	r3, [r3]
     c04:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c0c:	e3530000 	cmp	r3, #0
     c10:	1a00000b 	bne	c44 <printf+0x80>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e3530025 	cmp	r3, #37	@ 0x25
     c1c:	1a000002 	bne	c2c <printf+0x68>
     c20:	e3a03025 	mov	r3, #37	@ 0x25
     c24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c28:	ea000063 	b	dbc <printf+0x1f8>
     c2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c30:	e6ef3073 	uxtb	r3, r3
     c34:	e1a01003 	mov	r1, r3
     c38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c3c:	ebffff84 	bl	a54 <putc>
     c40:	ea00005d 	b	dbc <printf+0x1f8>
     c44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c48:	e3530025 	cmp	r3, #37	@ 0x25
     c4c:	1a00005a 	bne	dbc <printf+0x1f8>
     c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c54:	e3530064 	cmp	r3, #100	@ 0x64
     c58:	1a00000a 	bne	c88 <printf+0xc4>
     c5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c60:	e5933000 	ldr	r3, [r3]
     c64:	e1a01003 	mov	r1, r3
     c68:	e3a03001 	mov	r3, #1
     c6c:	e3a0200a 	mov	r2, #10
     c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c74:	ebffff84 	bl	a8c <printint>
     c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	e2833004 	add	r3, r3, #4
     c80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c84:	ea00004a 	b	db4 <printf+0x1f0>
     c88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c8c:	e3530078 	cmp	r3, #120	@ 0x78
     c90:	0a000002 	beq	ca0 <printf+0xdc>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e3530070 	cmp	r3, #112	@ 0x70
     c9c:	1a00000a 	bne	ccc <printf+0x108>
     ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e1a01003 	mov	r1, r3
     cac:	e3a03000 	mov	r3, #0
     cb0:	e3a02010 	mov	r2, #16
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb8:	ebffff73 	bl	a8c <printint>
     cbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc0:	e2833004 	add	r3, r3, #4
     cc4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cc8:	ea000039 	b	db4 <printf+0x1f0>
     ccc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd0:	e3530073 	cmp	r3, #115	@ 0x73
     cd4:	1a000018 	bne	d3c <printf+0x178>
     cd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e50b300c 	str	r3, [fp, #-12]
     ce4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e2833004 	add	r3, r3, #4
     cec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf0:	e51b300c 	ldr	r3, [fp, #-12]
     cf4:	e3530000 	cmp	r3, #0
     cf8:	1a00000a 	bne	d28 <printf+0x164>
     cfc:	e59f30f4 	ldr	r3, [pc, #244]	@ df8 <printf+0x234>
     d00:	e50b300c 	str	r3, [fp, #-12]
     d04:	ea000007 	b	d28 <printf+0x164>
     d08:	e51b300c 	ldr	r3, [fp, #-12]
     d0c:	e5d33000 	ldrb	r3, [r3]
     d10:	e1a01003 	mov	r1, r3
     d14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d18:	ebffff4d 	bl	a54 <putc>
     d1c:	e51b300c 	ldr	r3, [fp, #-12]
     d20:	e2833001 	add	r3, r3, #1
     d24:	e50b300c 	str	r3, [fp, #-12]
     d28:	e51b300c 	ldr	r3, [fp, #-12]
     d2c:	e5d33000 	ldrb	r3, [r3]
     d30:	e3530000 	cmp	r3, #0
     d34:	1afffff3 	bne	d08 <printf+0x144>
     d38:	ea00001d 	b	db4 <printf+0x1f0>
     d3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d40:	e3530063 	cmp	r3, #99	@ 0x63
     d44:	1a000009 	bne	d70 <printf+0x1ac>
     d48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e6ef3073 	uxtb	r3, r3
     d54:	e1a01003 	mov	r1, r3
     d58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d5c:	ebffff3c 	bl	a54 <putc>
     d60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d64:	e2833004 	add	r3, r3, #4
     d68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	ea000010 	b	db4 <printf+0x1f0>
     d70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d74:	e3530025 	cmp	r3, #37	@ 0x25
     d78:	1a000005 	bne	d94 <printf+0x1d0>
     d7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d80:	e6ef3073 	uxtb	r3, r3
     d84:	e1a01003 	mov	r1, r3
     d88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d8c:	ebffff30 	bl	a54 <putc>
     d90:	ea000007 	b	db4 <printf+0x1f0>
     d94:	e3a01025 	mov	r1, #37	@ 0x25
     d98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d9c:	ebffff2c 	bl	a54 <putc>
     da0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da4:	e6ef3073 	uxtb	r3, r3
     da8:	e1a01003 	mov	r1, r3
     dac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db0:	ebffff27 	bl	a54 <putc>
     db4:	e3a03000 	mov	r3, #0
     db8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     dbc:	e51b3010 	ldr	r3, [fp, #-16]
     dc0:	e2833001 	add	r3, r3, #1
     dc4:	e50b3010 	str	r3, [fp, #-16]
     dc8:	e59b2004 	ldr	r2, [fp, #4]
     dcc:	e51b3010 	ldr	r3, [fp, #-16]
     dd0:	e0823003 	add	r3, r2, r3
     dd4:	e5d33000 	ldrb	r3, [r3]
     dd8:	e3530000 	cmp	r3, #0
     ddc:	1affff84 	bne	bf4 <printf+0x30>
     de0:	e1a00000 	nop			@ (mov r0, r0)
     de4:	e1a00000 	nop			@ (mov r0, r0)
     de8:	e24bd004 	sub	sp, fp, #4
     dec:	e8bd4800 	pop	{fp, lr}
     df0:	e28dd00c 	add	sp, sp, #12
     df4:	e12fff1e 	bx	lr
     df8:	000012ac 	.word	0x000012ac

00000dfc <free>:
     dfc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e00:	e28db000 	add	fp, sp, #0
     e04:	e24dd014 	sub	sp, sp, #20
     e08:	e50b0010 	str	r0, [fp, #-16]
     e0c:	e51b3010 	ldr	r3, [fp, #-16]
     e10:	e2433008 	sub	r3, r3, #8
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e59f3154 	ldr	r3, [pc, #340]	@ f74 <free+0x178>
     e1c:	e5933000 	ldr	r3, [r3]
     e20:	e50b3008 	str	r3, [fp, #-8]
     e24:	ea000010 	b	e6c <free+0x70>
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e5933000 	ldr	r3, [r3]
     e30:	e51b2008 	ldr	r2, [fp, #-8]
     e34:	e1520003 	cmp	r2, r3
     e38:	3a000008 	bcc	e60 <free+0x64>
     e3c:	e51b200c 	ldr	r2, [fp, #-12]
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e1520003 	cmp	r2, r3
     e48:	8a000010 	bhi	e90 <free+0x94>
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5933000 	ldr	r3, [r3]
     e54:	e51b200c 	ldr	r2, [fp, #-12]
     e58:	e1520003 	cmp	r2, r3
     e5c:	3a00000b 	bcc	e90 <free+0x94>
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5933000 	ldr	r3, [r3]
     e68:	e50b3008 	str	r3, [fp, #-8]
     e6c:	e51b200c 	ldr	r2, [fp, #-12]
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e1520003 	cmp	r2, r3
     e78:	9affffea 	bls	e28 <free+0x2c>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e51b200c 	ldr	r2, [fp, #-12]
     e88:	e1520003 	cmp	r2, r3
     e8c:	2affffe5 	bcs	e28 <free+0x2c>
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5933004 	ldr	r3, [r3, #4]
     e98:	e1a03183 	lsl	r3, r3, #3
     e9c:	e51b200c 	ldr	r2, [fp, #-12]
     ea0:	e0822003 	add	r2, r2, r3
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e1520003 	cmp	r2, r3
     eb0:	1a00000d 	bne	eec <free+0xf0>
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5932004 	ldr	r2, [r3, #4]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e5933004 	ldr	r3, [r3, #4]
     ec8:	e0822003 	add	r2, r2, r3
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5832004 	str	r2, [r3, #4]
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e5932000 	ldr	r2, [r3]
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5832000 	str	r2, [r3]
     ee8:	ea000003 	b	efc <free+0x100>
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5932000 	ldr	r2, [r3]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5832000 	str	r2, [r3]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933004 	ldr	r3, [r3, #4]
     f04:	e1a03183 	lsl	r3, r3, #3
     f08:	e51b2008 	ldr	r2, [fp, #-8]
     f0c:	e0823003 	add	r3, r2, r3
     f10:	e51b200c 	ldr	r2, [fp, #-12]
     f14:	e1520003 	cmp	r2, r3
     f18:	1a00000b 	bne	f4c <free+0x150>
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e5932004 	ldr	r2, [r3, #4]
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e5933004 	ldr	r3, [r3, #4]
     f2c:	e0822003 	add	r2, r2, r3
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e5832004 	str	r2, [r3, #4]
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e5932000 	ldr	r2, [r3]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5832000 	str	r2, [r3]
     f48:	ea000002 	b	f58 <free+0x15c>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e51b200c 	ldr	r2, [fp, #-12]
     f54:	e5832000 	str	r2, [r3]
     f58:	e59f2014 	ldr	r2, [pc, #20]	@ f74 <free+0x178>
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5823000 	str	r3, [r2]
     f64:	e1a00000 	nop			@ (mov r0, r0)
     f68:	e28bd000 	add	sp, fp, #0
     f6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f70:	e12fff1e 	bx	lr
     f74:	000014d0 	.word	0x000014d0

00000f78 <morecore>:
     f78:	e92d4800 	push	{fp, lr}
     f7c:	e28db004 	add	fp, sp, #4
     f80:	e24dd010 	sub	sp, sp, #16
     f84:	e50b0010 	str	r0, [fp, #-16]
     f88:	e51b3010 	ldr	r3, [fp, #-16]
     f8c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f90:	2a000001 	bcs	f9c <morecore+0x24>
     f94:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f98:	e50b3010 	str	r3, [fp, #-16]
     f9c:	e51b3010 	ldr	r3, [fp, #-16]
     fa0:	e1a03183 	lsl	r3, r3, #3
     fa4:	e1a00003 	mov	r0, r3
     fa8:	ebfffe6a 	bl	958 <sbrk>
     fac:	e50b0008 	str	r0, [fp, #-8]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e3730001 	cmn	r3, #1
     fb8:	1a000001 	bne	fc4 <morecore+0x4c>
     fbc:	e3a03000 	mov	r3, #0
     fc0:	ea00000a 	b	ff0 <morecore+0x78>
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e50b300c 	str	r3, [fp, #-12]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e51b2010 	ldr	r2, [fp, #-16]
     fd4:	e5832004 	str	r2, [r3, #4]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e2833008 	add	r3, r3, #8
     fe0:	e1a00003 	mov	r0, r3
     fe4:	ebffff84 	bl	dfc <free>
     fe8:	e59f300c 	ldr	r3, [pc, #12]	@ ffc <morecore+0x84>
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e1a00003 	mov	r0, r3
     ff4:	e24bd004 	sub	sp, fp, #4
     ff8:	e8bd8800 	pop	{fp, pc}
     ffc:	000014d0 	.word	0x000014d0

00001000 <malloc>:
    1000:	e92d4800 	push	{fp, lr}
    1004:	e28db004 	add	fp, sp, #4
    1008:	e24dd018 	sub	sp, sp, #24
    100c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1010:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1014:	e2833007 	add	r3, r3, #7
    1018:	e1a031a3 	lsr	r3, r3, #3
    101c:	e2833001 	add	r3, r3, #1
    1020:	e50b3010 	str	r3, [fp, #-16]
    1024:	e59f3134 	ldr	r3, [pc, #308]	@ 1160 <malloc+0x160>
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e50b300c 	str	r3, [fp, #-12]
    1030:	e51b300c 	ldr	r3, [fp, #-12]
    1034:	e3530000 	cmp	r3, #0
    1038:	1a00000b 	bne	106c <malloc+0x6c>
    103c:	e59f3120 	ldr	r3, [pc, #288]	@ 1164 <malloc+0x164>
    1040:	e50b300c 	str	r3, [fp, #-12]
    1044:	e59f2114 	ldr	r2, [pc, #276]	@ 1160 <malloc+0x160>
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e5823000 	str	r3, [r2]
    1050:	e59f3108 	ldr	r3, [pc, #264]	@ 1160 <malloc+0x160>
    1054:	e5933000 	ldr	r3, [r3]
    1058:	e59f2104 	ldr	r2, [pc, #260]	@ 1164 <malloc+0x164>
    105c:	e5823000 	str	r3, [r2]
    1060:	e59f30fc 	ldr	r3, [pc, #252]	@ 1164 <malloc+0x164>
    1064:	e3a02000 	mov	r2, #0
    1068:	e5832004 	str	r2, [r3, #4]
    106c:	e51b300c 	ldr	r3, [fp, #-12]
    1070:	e5933000 	ldr	r3, [r3]
    1074:	e50b3008 	str	r3, [fp, #-8]
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e5933004 	ldr	r3, [r3, #4]
    1080:	e51b2010 	ldr	r2, [fp, #-16]
    1084:	e1520003 	cmp	r2, r3
    1088:	8a00001e 	bhi	1108 <malloc+0x108>
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5933004 	ldr	r3, [r3, #4]
    1094:	e51b2010 	ldr	r2, [fp, #-16]
    1098:	e1520003 	cmp	r2, r3
    109c:	1a000004 	bne	10b4 <malloc+0xb4>
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e5932000 	ldr	r2, [r3]
    10a8:	e51b300c 	ldr	r3, [fp, #-12]
    10ac:	e5832000 	str	r2, [r3]
    10b0:	ea00000e 	b	10f0 <malloc+0xf0>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e5932004 	ldr	r2, [r3, #4]
    10bc:	e51b3010 	ldr	r3, [fp, #-16]
    10c0:	e0422003 	sub	r2, r2, r3
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e5832004 	str	r2, [r3, #4]
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e5933004 	ldr	r3, [r3, #4]
    10d4:	e1a03183 	lsl	r3, r3, #3
    10d8:	e51b2008 	ldr	r2, [fp, #-8]
    10dc:	e0823003 	add	r3, r2, r3
    10e0:	e50b3008 	str	r3, [fp, #-8]
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e51b2010 	ldr	r2, [fp, #-16]
    10ec:	e5832004 	str	r2, [r3, #4]
    10f0:	e59f2068 	ldr	r2, [pc, #104]	@ 1160 <malloc+0x160>
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5823000 	str	r3, [r2]
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e2833008 	add	r3, r3, #8
    1104:	ea000012 	b	1154 <malloc+0x154>
    1108:	e59f3050 	ldr	r3, [pc, #80]	@ 1160 <malloc+0x160>
    110c:	e5933000 	ldr	r3, [r3]
    1110:	e51b2008 	ldr	r2, [fp, #-8]
    1114:	e1520003 	cmp	r2, r3
    1118:	1a000007 	bne	113c <malloc+0x13c>
    111c:	e51b0010 	ldr	r0, [fp, #-16]
    1120:	ebffff94 	bl	f78 <morecore>
    1124:	e50b0008 	str	r0, [fp, #-8]
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e3530000 	cmp	r3, #0
    1130:	1a000001 	bne	113c <malloc+0x13c>
    1134:	e3a03000 	mov	r3, #0
    1138:	ea000005 	b	1154 <malloc+0x154>
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e50b300c 	str	r3, [fp, #-12]
    1144:	e51b3008 	ldr	r3, [fp, #-8]
    1148:	e5933000 	ldr	r3, [r3]
    114c:	e50b3008 	str	r3, [fp, #-8]
    1150:	eaffffc8 	b	1078 <malloc+0x78>
    1154:	e1a00003 	mov	r0, r3
    1158:	e24bd004 	sub	sp, fp, #4
    115c:	e8bd8800 	pop	{fp, pc}
    1160:	000014d0 	.word	0x000014d0
    1164:	000014c8 	.word	0x000014c8

00001168 <__udivsi3>:
    1168:	e2512001 	subs	r2, r1, #1
    116c:	012fff1e 	bxeq	lr
    1170:	3a000036 	bcc	1250 <__udivsi3+0xe8>
    1174:	e1500001 	cmp	r0, r1
    1178:	9a000022 	bls	1208 <__udivsi3+0xa0>
    117c:	e1110002 	tst	r1, r2
    1180:	0a000023 	beq	1214 <__udivsi3+0xac>
    1184:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1188:	01a01181 	lsleq	r1, r1, #3
    118c:	03a03008 	moveq	r3, #8
    1190:	13a03001 	movne	r3, #1
    1194:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1198:	31510000 	cmpcc	r1, r0
    119c:	31a01201 	lslcc	r1, r1, #4
    11a0:	31a03203 	lslcc	r3, r3, #4
    11a4:	3afffffa 	bcc	1194 <__udivsi3+0x2c>
    11a8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11ac:	31510000 	cmpcc	r1, r0
    11b0:	31a01081 	lslcc	r1, r1, #1
    11b4:	31a03083 	lslcc	r3, r3, #1
    11b8:	3afffffa 	bcc	11a8 <__udivsi3+0x40>
    11bc:	e3a02000 	mov	r2, #0
    11c0:	e1500001 	cmp	r0, r1
    11c4:	20400001 	subcs	r0, r0, r1
    11c8:	21822003 	orrcs	r2, r2, r3
    11cc:	e15000a1 	cmp	r0, r1, lsr #1
    11d0:	204000a1 	subcs	r0, r0, r1, lsr #1
    11d4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    11d8:	e1500121 	cmp	r0, r1, lsr #2
    11dc:	20400121 	subcs	r0, r0, r1, lsr #2
    11e0:	21822123 	orrcs	r2, r2, r3, lsr #2
    11e4:	e15001a1 	cmp	r0, r1, lsr #3
    11e8:	204001a1 	subcs	r0, r0, r1, lsr #3
    11ec:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11f0:	e3500000 	cmp	r0, #0
    11f4:	11b03223 	lsrsne	r3, r3, #4
    11f8:	11a01221 	lsrne	r1, r1, #4
    11fc:	1affffef 	bne	11c0 <__udivsi3+0x58>
    1200:	e1a00002 	mov	r0, r2
    1204:	e12fff1e 	bx	lr
    1208:	03a00001 	moveq	r0, #1
    120c:	13a00000 	movne	r0, #0
    1210:	e12fff1e 	bx	lr
    1214:	e3510801 	cmp	r1, #65536	@ 0x10000
    1218:	21a01821 	lsrcs	r1, r1, #16
    121c:	23a02010 	movcs	r2, #16
    1220:	33a02000 	movcc	r2, #0
    1224:	e3510c01 	cmp	r1, #256	@ 0x100
    1228:	21a01421 	lsrcs	r1, r1, #8
    122c:	22822008 	addcs	r2, r2, #8
    1230:	e3510010 	cmp	r1, #16
    1234:	21a01221 	lsrcs	r1, r1, #4
    1238:	22822004 	addcs	r2, r2, #4
    123c:	e3510004 	cmp	r1, #4
    1240:	82822003 	addhi	r2, r2, #3
    1244:	908220a1 	addls	r2, r2, r1, lsr #1
    1248:	e1a00230 	lsr	r0, r0, r2
    124c:	e12fff1e 	bx	lr
    1250:	e3500000 	cmp	r0, #0
    1254:	13e00000 	mvnne	r0, #0
    1258:	ea000007 	b	127c <__aeabi_idiv0>

0000125c <__aeabi_uidivmod>:
    125c:	e3510000 	cmp	r1, #0
    1260:	0afffffa 	beq	1250 <__udivsi3+0xe8>
    1264:	e92d4003 	push	{r0, r1, lr}
    1268:	ebffffbe 	bl	1168 <__udivsi3>
    126c:	e8bd4006 	pop	{r1, r2, lr}
    1270:	e0030092 	mul	r3, r2, r0
    1274:	e0411003 	sub	r1, r1, r3
    1278:	e12fff1e 	bx	lr

0000127c <__aeabi_idiv0>:
    127c:	e12fff1e 	bx	lr
