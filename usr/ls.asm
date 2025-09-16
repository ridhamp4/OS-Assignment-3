
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      14:	eb00014a 	bl	544 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	@ 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000135 	bl	544 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb00012e 	bl	544 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	@ e0 <fmtname+0xe0>
      98:	eb00020a 	bl	8c8 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb000127 	bl	544 <strlen>
      a4:	e1a03000 	mov	r3, r0
      a8:	e59f2030 	ldr	r2, [pc, #48]	@ e0 <fmtname+0xe0>
      ac:	e0834002 	add	r4, r3, r2
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb000122 	bl	544 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000131 	bl	598 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	@ e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	000015e8 	.word	0x000015e8

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb00025f 	bl	a80 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb000367 	bl	ec0 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb00026d 	bl	aec <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb00035b 	bl	ec0 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb00022e 	bl	a14 <close>
     158:	ea00006d 	b	314 <ls+0x230>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     164:	e1d330f0 	ldrsh	r3, [r3]
     168:	e3530001 	cmp	r3, #1
     16c:	0a000012 	beq	1bc <ls+0xd8>
     170:	e3530002 	cmp	r3, #2
     174:	1a000064 	bne	30c <ls+0x228>
     178:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     17c:	ebffff9f 	bl	0 <fmtname>
     180:	e1a01000 	mov	r1, r0
     184:	e24b3004 	sub	r3, fp, #4
     188:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     18c:	e1d330f0 	ldrsh	r3, [r3]
     190:	e1a00003 	mov	r0, r3
     194:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     198:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     19c:	e58d2004 	str	r2, [sp, #4]
     1a0:	e58d3000 	str	r3, [sp]
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a02001 	mov	r2, r1
     1ac:	e59f1170 	ldr	r1, [pc, #368]	@ 324 <ls+0x240>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb000341 	bl	ec0 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000df 	bl	544 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb000337 	bl	ec0 <printf>
     1e0:	ea000049 	b	30c <ls+0x228>
     1e4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	@ 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00006b 	bl	3a4 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb0000d0 	bl	544 <strlen>
     200:	e1a02000 	mov	r2, r0
     204:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     208:	e0833002 	add	r3, r3, r2
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2832001 	add	r2, r3, #1
     218:	e50b200c 	str	r2, [fp, #-12]
     21c:	e3a0202f 	mov	r2, #47	@ 0x2f
     220:	e5c32000 	strb	r2, [r3]
     224:	ea00002f 	b	2e8 <ls+0x204>
     228:	e24b3004 	sub	r3, fp, #4
     22c:	e2433f86 	sub	r3, r3, #536	@ 0x218
     230:	e1d330b0 	ldrh	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	0a000029 	beq	2e4 <ls+0x200>
     23c:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     240:	e2833002 	add	r3, r3, #2
     244:	e3a0200e 	mov	r2, #14
     248:	e1a01003 	mov	r1, r3
     24c:	e51b000c 	ldr	r0, [fp, #-12]
     250:	eb00019c 	bl	8c8 <memmove>
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e283300e 	add	r3, r3, #14
     25c:	e3a02000 	mov	r2, #0
     260:	e5c32000 	strb	r2, [r3]
     264:	e24b2e23 	sub	r2, fp, #560	@ 0x230
     268:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     26c:	e1a01002 	mov	r1, r2
     270:	e1a00003 	mov	r0, r3
     274:	eb00015a 	bl	7e4 <stat>
     278:	e1a03000 	mov	r3, r0
     27c:	e3530000 	cmp	r3, #0
     280:	aa000005 	bge	29c <ls+0x1b8>
     284:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     288:	e1a02003 	mov	r2, r3
     28c:	e59f108c 	ldr	r1, [pc, #140]	@ 320 <ls+0x23c>
     290:	e3a00001 	mov	r0, #1
     294:	eb000309 	bl	ec0 <printf>
     298:	ea000012 	b	2e8 <ls+0x204>
     29c:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     2a0:	e1a00003 	mov	r0, r3
     2a4:	ebffff55 	bl	0 <fmtname>
     2a8:	e1a01000 	mov	r1, r0
     2ac:	e24b3004 	sub	r3, fp, #4
     2b0:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     2b4:	e1d330f0 	ldrsh	r3, [r3]
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     2c0:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     2c4:	e58d2004 	str	r2, [sp, #4]
     2c8:	e58d3000 	str	r3, [sp]
     2cc:	e1a03000 	mov	r3, r0
     2d0:	e1a02001 	mov	r2, r1
     2d4:	e59f1048 	ldr	r1, [pc, #72]	@ 324 <ls+0x240>
     2d8:	e3a00001 	mov	r0, #1
     2dc:	eb0002f7 	bl	ec0 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb0001b3 	bl	9cc <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb0001bf 	bl	a14 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	0000157c 	.word	0x0000157c
     320:	00001590 	.word	0x00001590
     324:	000015a4 	.word	0x000015a4
     328:	000015b4 	.word	0x000015b4

0000032c <main>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd010 	sub	sp, sp, #16
     338:	e50b0010 	str	r0, [fp, #-16]
     33c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e3530001 	cmp	r3, #1
     348:	ca000002 	bgt	358 <main+0x2c>
     34c:	e59f004c 	ldr	r0, [pc, #76]	@ 3a0 <main+0x74>
     350:	ebffff63 	bl	e4 <ls>
     354:	eb000181 	bl	960 <exit>
     358:	e3a03001 	mov	r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000009 	b	38c <main+0x60>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a03103 	lsl	r3, r3, #2
     36c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     370:	e0823003 	add	r3, r2, r3
     374:	e5933000 	ldr	r3, [r3]
     378:	e1a00003 	mov	r0, r3
     37c:	ebffff58 	bl	e4 <ls>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b2008 	ldr	r2, [fp, #-8]
     390:	e51b3010 	ldr	r3, [fp, #-16]
     394:	e1520003 	cmp	r2, r3
     398:	bafffff1 	blt	364 <main+0x38>
     39c:	eb00016f 	bl	960 <exit>
     3a0:	000015c8 	.word	0x000015c8

000003a4 <strcpy>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e51b3010 	ldr	r3, [fp, #-16]
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e1a00000 	nop			@ (mov r0, r0)
     3c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3c8:	e2823001 	add	r3, r2, #1
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	e51b3010 	ldr	r3, [fp, #-16]
     3d4:	e2831001 	add	r1, r3, #1
     3d8:	e50b1010 	str	r1, [fp, #-16]
     3dc:	e5d22000 	ldrb	r2, [r2]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e5d33000 	ldrb	r3, [r3]
     3e8:	e3530000 	cmp	r3, #0
     3ec:	1afffff4 	bne	3c4 <strcpy+0x20>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e28bd000 	add	sp, fp, #0
     3fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     400:	e12fff1e 	bx	lr

00000404 <strncmp>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd014 	sub	sp, sp, #20
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e50b100c 	str	r1, [fp, #-12]
     418:	e50b2010 	str	r2, [fp, #-16]
     41c:	ea000008 	b	444 <strncmp+0x40>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2833001 	add	r3, r3, #1
     428:	e50b3008 	str	r3, [fp, #-8]
     42c:	e51b300c 	ldr	r3, [fp, #-12]
     430:	e2833001 	add	r3, r3, #1
     434:	e50b300c 	str	r3, [fp, #-12]
     438:	e51b3010 	ldr	r3, [fp, #-16]
     43c:	e2433001 	sub	r3, r3, #1
     440:	e50b3010 	str	r3, [fp, #-16]
     444:	e51b3010 	ldr	r3, [fp, #-16]
     448:	e3530000 	cmp	r3, #0
     44c:	da00000d 	ble	488 <strncmp+0x84>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e5d33000 	ldrb	r3, [r3]
     458:	e3530000 	cmp	r3, #0
     45c:	0a000009 	beq	488 <strncmp+0x84>
     460:	e51b300c 	ldr	r3, [fp, #-12]
     464:	e5d33000 	ldrb	r3, [r3]
     468:	e3530000 	cmp	r3, #0
     46c:	0a000005 	beq	488 <strncmp+0x84>
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e5d32000 	ldrb	r2, [r3]
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e5d33000 	ldrb	r3, [r3]
     480:	e1520003 	cmp	r2, r3
     484:	0affffe5 	beq	420 <strncmp+0x1c>
     488:	e51b3010 	ldr	r3, [fp, #-16]
     48c:	e3530000 	cmp	r3, #0
     490:	1a000001 	bne	49c <strncmp+0x98>
     494:	e3a03000 	mov	r3, #0
     498:	ea000005 	b	4b4 <strncmp+0xb0>
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e5d33000 	ldrb	r3, [r3]
     4a4:	e1a02003 	mov	r2, r3
     4a8:	e51b300c 	ldr	r3, [fp, #-12]
     4ac:	e5d33000 	ldrb	r3, [r3]
     4b0:	e0423003 	sub	r3, r2, r3
     4b4:	e1a00003 	mov	r0, r3
     4b8:	e28bd000 	add	sp, fp, #0
     4bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4c0:	e12fff1e 	bx	lr

000004c4 <strcmp>:
     4c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c8:	e28db000 	add	fp, sp, #0
     4cc:	e24dd00c 	sub	sp, sp, #12
     4d0:	e50b0008 	str	r0, [fp, #-8]
     4d4:	e50b100c 	str	r1, [fp, #-12]
     4d8:	ea000005 	b	4f4 <strcmp+0x30>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e2833001 	add	r3, r3, #1
     4e4:	e50b3008 	str	r3, [fp, #-8]
     4e8:	e51b300c 	ldr	r3, [fp, #-12]
     4ec:	e2833001 	add	r3, r3, #1
     4f0:	e50b300c 	str	r3, [fp, #-12]
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e3530000 	cmp	r3, #0
     500:	0a000005 	beq	51c <strcmp+0x58>
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e5d32000 	ldrb	r2, [r3]
     50c:	e51b300c 	ldr	r3, [fp, #-12]
     510:	e5d33000 	ldrb	r3, [r3]
     514:	e1520003 	cmp	r2, r3
     518:	0affffef 	beq	4dc <strcmp+0x18>
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e5d33000 	ldrb	r3, [r3]
     524:	e1a02003 	mov	r2, r3
     528:	e51b300c 	ldr	r3, [fp, #-12]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e0423003 	sub	r3, r2, r3
     534:	e1a00003 	mov	r0, r3
     538:	e28bd000 	add	sp, fp, #0
     53c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     540:	e12fff1e 	bx	lr

00000544 <strlen>:
     544:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     548:	e28db000 	add	fp, sp, #0
     54c:	e24dd014 	sub	sp, sp, #20
     550:	e50b0010 	str	r0, [fp, #-16]
     554:	e3a03000 	mov	r3, #0
     558:	e50b3008 	str	r3, [fp, #-8]
     55c:	ea000002 	b	56c <strlen+0x28>
     560:	e51b3008 	ldr	r3, [fp, #-8]
     564:	e2833001 	add	r3, r3, #1
     568:	e50b3008 	str	r3, [fp, #-8]
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e51b2010 	ldr	r2, [fp, #-16]
     574:	e0823003 	add	r3, r2, r3
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e3530000 	cmp	r3, #0
     580:	1afffff6 	bne	560 <strlen+0x1c>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e1a00003 	mov	r0, r3
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <memset>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     5a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5a8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5ac:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     5b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     5bc:	e54b300d 	strb	r3, [fp, #-13]
     5c0:	e55b200d 	ldrb	r2, [fp, #-13]
     5c4:	e1a03002 	mov	r3, r2
     5c8:	e1a03403 	lsl	r3, r3, #8
     5cc:	e0833002 	add	r3, r3, r2
     5d0:	e1a03803 	lsl	r3, r3, #16
     5d4:	e1a02003 	mov	r2, r3
     5d8:	e55b300d 	ldrb	r3, [fp, #-13]
     5dc:	e1a03403 	lsl	r3, r3, #8
     5e0:	e1822003 	orr	r2, r2, r3
     5e4:	e55b300d 	ldrb	r3, [fp, #-13]
     5e8:	e1823003 	orr	r3, r2, r3
     5ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5f0:	ea000008 	b	618 <memset+0x80>
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e55b200d 	ldrb	r2, [fp, #-13]
     5fc:	e5c32000 	strb	r2, [r3]
     600:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     604:	e2433001 	sub	r3, r3, #1
     608:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e2833001 	add	r3, r3, #1
     614:	e50b3008 	str	r3, [fp, #-8]
     618:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     61c:	e3530000 	cmp	r3, #0
     620:	0a000003 	beq	634 <memset+0x9c>
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e2033003 	and	r3, r3, #3
     62c:	e3530000 	cmp	r3, #0
     630:	1affffef 	bne	5f4 <memset+0x5c>
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e50b300c 	str	r3, [fp, #-12]
     63c:	ea000008 	b	664 <memset+0xcc>
     640:	e51b300c 	ldr	r3, [fp, #-12]
     644:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     648:	e5832000 	str	r2, [r3]
     64c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     650:	e2433004 	sub	r3, r3, #4
     654:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     658:	e51b300c 	ldr	r3, [fp, #-12]
     65c:	e2833004 	add	r3, r3, #4
     660:	e50b300c 	str	r3, [fp, #-12]
     664:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     668:	e3530003 	cmp	r3, #3
     66c:	8afffff3 	bhi	640 <memset+0xa8>
     670:	e51b300c 	ldr	r3, [fp, #-12]
     674:	e50b3008 	str	r3, [fp, #-8]
     678:	ea000008 	b	6a0 <memset+0x108>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e55b200d 	ldrb	r2, [fp, #-13]
     684:	e5c32000 	strb	r2, [r3]
     688:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     68c:	e2433001 	sub	r3, r3, #1
     690:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e2833001 	add	r3, r3, #1
     69c:	e50b3008 	str	r3, [fp, #-8]
     6a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6a4:	e3530000 	cmp	r3, #0
     6a8:	1afffff3 	bne	67c <memset+0xe4>
     6ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b0:	e1a00003 	mov	r0, r3
     6b4:	e28bd000 	add	sp, fp, #0
     6b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <strchr>:
     6c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6c4:	e28db000 	add	fp, sp, #0
     6c8:	e24dd00c 	sub	sp, sp, #12
     6cc:	e50b0008 	str	r0, [fp, #-8]
     6d0:	e1a03001 	mov	r3, r1
     6d4:	e54b3009 	strb	r3, [fp, #-9]
     6d8:	ea000009 	b	704 <strchr+0x44>
     6dc:	e51b3008 	ldr	r3, [fp, #-8]
     6e0:	e5d33000 	ldrb	r3, [r3]
     6e4:	e55b2009 	ldrb	r2, [fp, #-9]
     6e8:	e1520003 	cmp	r2, r3
     6ec:	1a000001 	bne	6f8 <strchr+0x38>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	ea000007 	b	718 <strchr+0x58>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e2833001 	add	r3, r3, #1
     700:	e50b3008 	str	r3, [fp, #-8]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e5d33000 	ldrb	r3, [r3]
     70c:	e3530000 	cmp	r3, #0
     710:	1afffff1 	bne	6dc <strchr+0x1c>
     714:	e3a03000 	mov	r3, #0
     718:	e1a00003 	mov	r0, r3
     71c:	e28bd000 	add	sp, fp, #0
     720:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <gets>:
     728:	e92d4800 	push	{fp, lr}
     72c:	e28db004 	add	fp, sp, #4
     730:	e24dd018 	sub	sp, sp, #24
     734:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     738:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     73c:	e3a03000 	mov	r3, #0
     740:	e50b3008 	str	r3, [fp, #-8]
     744:	ea000016 	b	7a4 <gets+0x7c>
     748:	e24b300d 	sub	r3, fp, #13
     74c:	e3a02001 	mov	r2, #1
     750:	e1a01003 	mov	r1, r3
     754:	e3a00000 	mov	r0, #0
     758:	eb00009b 	bl	9cc <read>
     75c:	e50b000c 	str	r0, [fp, #-12]
     760:	e51b300c 	ldr	r3, [fp, #-12]
     764:	e3530000 	cmp	r3, #0
     768:	da000013 	ble	7bc <gets+0x94>
     76c:	e51b3008 	ldr	r3, [fp, #-8]
     770:	e2832001 	add	r2, r3, #1
     774:	e50b2008 	str	r2, [fp, #-8]
     778:	e1a02003 	mov	r2, r3
     77c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     780:	e0833002 	add	r3, r3, r2
     784:	e55b200d 	ldrb	r2, [fp, #-13]
     788:	e5c32000 	strb	r2, [r3]
     78c:	e55b300d 	ldrb	r3, [fp, #-13]
     790:	e353000a 	cmp	r3, #10
     794:	0a000009 	beq	7c0 <gets+0x98>
     798:	e55b300d 	ldrb	r3, [fp, #-13]
     79c:	e353000d 	cmp	r3, #13
     7a0:	0a000006 	beq	7c0 <gets+0x98>
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e2833001 	add	r3, r3, #1
     7ac:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     7b0:	e1520003 	cmp	r2, r3
     7b4:	caffffe3 	bgt	748 <gets+0x20>
     7b8:	ea000000 	b	7c0 <gets+0x98>
     7bc:	e1a00000 	nop			@ (mov r0, r0)
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     7c8:	e0823003 	add	r3, r2, r3
     7cc:	e3a02000 	mov	r2, #0
     7d0:	e5c32000 	strb	r2, [r3]
     7d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d8:	e1a00003 	mov	r0, r3
     7dc:	e24bd004 	sub	sp, fp, #4
     7e0:	e8bd8800 	pop	{fp, pc}

000007e4 <stat>:
     7e4:	e92d4800 	push	{fp, lr}
     7e8:	e28db004 	add	fp, sp, #4
     7ec:	e24dd010 	sub	sp, sp, #16
     7f0:	e50b0010 	str	r0, [fp, #-16]
     7f4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f8:	e3a01000 	mov	r1, #0
     7fc:	e51b0010 	ldr	r0, [fp, #-16]
     800:	eb00009e 	bl	a80 <open>
     804:	e50b0008 	str	r0, [fp, #-8]
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e3530000 	cmp	r3, #0
     810:	aa000001 	bge	81c <stat+0x38>
     814:	e3e03000 	mvn	r3, #0
     818:	ea000006 	b	838 <stat+0x54>
     81c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     820:	e51b0008 	ldr	r0, [fp, #-8]
     824:	eb0000b0 	bl	aec <fstat>
     828:	e50b000c 	str	r0, [fp, #-12]
     82c:	e51b0008 	ldr	r0, [fp, #-8]
     830:	eb000077 	bl	a14 <close>
     834:	e51b300c 	ldr	r3, [fp, #-12]
     838:	e1a00003 	mov	r0, r3
     83c:	e24bd004 	sub	sp, fp, #4
     840:	e8bd8800 	pop	{fp, pc}

00000844 <atoi>:
     844:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     848:	e28db000 	add	fp, sp, #0
     84c:	e24dd014 	sub	sp, sp, #20
     850:	e50b0010 	str	r0, [fp, #-16]
     854:	e3a03000 	mov	r3, #0
     858:	e50b3008 	str	r3, [fp, #-8]
     85c:	ea00000c 	b	894 <atoi+0x50>
     860:	e51b2008 	ldr	r2, [fp, #-8]
     864:	e1a03002 	mov	r3, r2
     868:	e1a03103 	lsl	r3, r3, #2
     86c:	e0833002 	add	r3, r3, r2
     870:	e1a03083 	lsl	r3, r3, #1
     874:	e1a01003 	mov	r1, r3
     878:	e51b3010 	ldr	r3, [fp, #-16]
     87c:	e2832001 	add	r2, r3, #1
     880:	e50b2010 	str	r2, [fp, #-16]
     884:	e5d33000 	ldrb	r3, [r3]
     888:	e0813003 	add	r3, r1, r3
     88c:	e2433030 	sub	r3, r3, #48	@ 0x30
     890:	e50b3008 	str	r3, [fp, #-8]
     894:	e51b3010 	ldr	r3, [fp, #-16]
     898:	e5d33000 	ldrb	r3, [r3]
     89c:	e353002f 	cmp	r3, #47	@ 0x2f
     8a0:	9a000003 	bls	8b4 <atoi+0x70>
     8a4:	e51b3010 	ldr	r3, [fp, #-16]
     8a8:	e5d33000 	ldrb	r3, [r3]
     8ac:	e3530039 	cmp	r3, #57	@ 0x39
     8b0:	9affffea 	bls	860 <atoi+0x1c>
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e1a00003 	mov	r0, r3
     8bc:	e28bd000 	add	sp, fp, #0
     8c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <memmove>:
     8c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8cc:	e28db000 	add	fp, sp, #0
     8d0:	e24dd01c 	sub	sp, sp, #28
     8d4:	e50b0010 	str	r0, [fp, #-16]
     8d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8e0:	e51b3010 	ldr	r3, [fp, #-16]
     8e4:	e50b3008 	str	r3, [fp, #-8]
     8e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8ec:	e50b300c 	str	r3, [fp, #-12]
     8f0:	ea000007 	b	914 <memmove+0x4c>
     8f4:	e51b200c 	ldr	r2, [fp, #-12]
     8f8:	e2823001 	add	r3, r2, #1
     8fc:	e50b300c 	str	r3, [fp, #-12]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e2831001 	add	r1, r3, #1
     908:	e50b1008 	str	r1, [fp, #-8]
     90c:	e5d22000 	ldrb	r2, [r2]
     910:	e5c32000 	strb	r2, [r3]
     914:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     918:	e2432001 	sub	r2, r3, #1
     91c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     920:	e3530000 	cmp	r3, #0
     924:	cafffff2 	bgt	8f4 <memmove+0x2c>
     928:	e51b3010 	ldr	r3, [fp, #-16]
     92c:	e1a00003 	mov	r0, r3
     930:	e28bd000 	add	sp, fp, #0
     934:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     938:	e12fff1e 	bx	lr

0000093c <fork>:
     93c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     940:	e1a04003 	mov	r4, r3
     944:	e1a03002 	mov	r3, r2
     948:	e1a02001 	mov	r2, r1
     94c:	e1a01000 	mov	r1, r0
     950:	e3a00001 	mov	r0, #1
     954:	ef000000 	svc	0x00000000
     958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     95c:	e12fff1e 	bx	lr

00000960 <exit>:
     960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     964:	e1a04003 	mov	r4, r3
     968:	e1a03002 	mov	r3, r2
     96c:	e1a02001 	mov	r2, r1
     970:	e1a01000 	mov	r1, r0
     974:	e3a00002 	mov	r0, #2
     978:	ef000000 	svc	0x00000000
     97c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     980:	e12fff1e 	bx	lr

00000984 <wait>:
     984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     988:	e1a04003 	mov	r4, r3
     98c:	e1a03002 	mov	r3, r2
     990:	e1a02001 	mov	r2, r1
     994:	e1a01000 	mov	r1, r0
     998:	e3a00003 	mov	r0, #3
     99c:	ef000000 	svc	0x00000000
     9a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a4:	e12fff1e 	bx	lr

000009a8 <pipe>:
     9a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ac:	e1a04003 	mov	r4, r3
     9b0:	e1a03002 	mov	r3, r2
     9b4:	e1a02001 	mov	r2, r1
     9b8:	e1a01000 	mov	r1, r0
     9bc:	e3a00004 	mov	r0, #4
     9c0:	ef000000 	svc	0x00000000
     9c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c8:	e12fff1e 	bx	lr

000009cc <read>:
     9cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d0:	e1a04003 	mov	r4, r3
     9d4:	e1a03002 	mov	r3, r2
     9d8:	e1a02001 	mov	r2, r1
     9dc:	e1a01000 	mov	r1, r0
     9e0:	e3a00005 	mov	r0, #5
     9e4:	ef000000 	svc	0x00000000
     9e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ec:	e12fff1e 	bx	lr

000009f0 <write>:
     9f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f4:	e1a04003 	mov	r4, r3
     9f8:	e1a03002 	mov	r3, r2
     9fc:	e1a02001 	mov	r2, r1
     a00:	e1a01000 	mov	r1, r0
     a04:	e3a00010 	mov	r0, #16
     a08:	ef000000 	svc	0x00000000
     a0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a10:	e12fff1e 	bx	lr

00000a14 <close>:
     a14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a18:	e1a04003 	mov	r4, r3
     a1c:	e1a03002 	mov	r3, r2
     a20:	e1a02001 	mov	r2, r1
     a24:	e1a01000 	mov	r1, r0
     a28:	e3a00015 	mov	r0, #21
     a2c:	ef000000 	svc	0x00000000
     a30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a34:	e12fff1e 	bx	lr

00000a38 <kill>:
     a38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a3c:	e1a04003 	mov	r4, r3
     a40:	e1a03002 	mov	r3, r2
     a44:	e1a02001 	mov	r2, r1
     a48:	e1a01000 	mov	r1, r0
     a4c:	e3a00006 	mov	r0, #6
     a50:	ef000000 	svc	0x00000000
     a54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a58:	e12fff1e 	bx	lr

00000a5c <exec>:
     a5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a60:	e1a04003 	mov	r4, r3
     a64:	e1a03002 	mov	r3, r2
     a68:	e1a02001 	mov	r2, r1
     a6c:	e1a01000 	mov	r1, r0
     a70:	e3a00007 	mov	r0, #7
     a74:	ef000000 	svc	0x00000000
     a78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <open>:
     a80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a84:	e1a04003 	mov	r4, r3
     a88:	e1a03002 	mov	r3, r2
     a8c:	e1a02001 	mov	r2, r1
     a90:	e1a01000 	mov	r1, r0
     a94:	e3a0000f 	mov	r0, #15
     a98:	ef000000 	svc	0x00000000
     a9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa0:	e12fff1e 	bx	lr

00000aa4 <mknod>:
     aa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa8:	e1a04003 	mov	r4, r3
     aac:	e1a03002 	mov	r3, r2
     ab0:	e1a02001 	mov	r2, r1
     ab4:	e1a01000 	mov	r1, r0
     ab8:	e3a00011 	mov	r0, #17
     abc:	ef000000 	svc	0x00000000
     ac0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac4:	e12fff1e 	bx	lr

00000ac8 <unlink>:
     ac8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     acc:	e1a04003 	mov	r4, r3
     ad0:	e1a03002 	mov	r3, r2
     ad4:	e1a02001 	mov	r2, r1
     ad8:	e1a01000 	mov	r1, r0
     adc:	e3a00012 	mov	r0, #18
     ae0:	ef000000 	svc	0x00000000
     ae4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae8:	e12fff1e 	bx	lr

00000aec <fstat>:
     aec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af0:	e1a04003 	mov	r4, r3
     af4:	e1a03002 	mov	r3, r2
     af8:	e1a02001 	mov	r2, r1
     afc:	e1a01000 	mov	r1, r0
     b00:	e3a00008 	mov	r0, #8
     b04:	ef000000 	svc	0x00000000
     b08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b0c:	e12fff1e 	bx	lr

00000b10 <link>:
     b10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b14:	e1a04003 	mov	r4, r3
     b18:	e1a03002 	mov	r3, r2
     b1c:	e1a02001 	mov	r2, r1
     b20:	e1a01000 	mov	r1, r0
     b24:	e3a00013 	mov	r0, #19
     b28:	ef000000 	svc	0x00000000
     b2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b30:	e12fff1e 	bx	lr

00000b34 <mkdir>:
     b34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b38:	e1a04003 	mov	r4, r3
     b3c:	e1a03002 	mov	r3, r2
     b40:	e1a02001 	mov	r2, r1
     b44:	e1a01000 	mov	r1, r0
     b48:	e3a00014 	mov	r0, #20
     b4c:	ef000000 	svc	0x00000000
     b50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b54:	e12fff1e 	bx	lr

00000b58 <chdir>:
     b58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b5c:	e1a04003 	mov	r4, r3
     b60:	e1a03002 	mov	r3, r2
     b64:	e1a02001 	mov	r2, r1
     b68:	e1a01000 	mov	r1, r0
     b6c:	e3a00009 	mov	r0, #9
     b70:	ef000000 	svc	0x00000000
     b74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b78:	e12fff1e 	bx	lr

00000b7c <dup>:
     b7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b80:	e1a04003 	mov	r4, r3
     b84:	e1a03002 	mov	r3, r2
     b88:	e1a02001 	mov	r2, r1
     b8c:	e1a01000 	mov	r1, r0
     b90:	e3a0000a 	mov	r0, #10
     b94:	ef000000 	svc	0x00000000
     b98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b9c:	e12fff1e 	bx	lr

00000ba0 <getpid>:
     ba0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba4:	e1a04003 	mov	r4, r3
     ba8:	e1a03002 	mov	r3, r2
     bac:	e1a02001 	mov	r2, r1
     bb0:	e1a01000 	mov	r1, r0
     bb4:	e3a0000b 	mov	r0, #11
     bb8:	ef000000 	svc	0x00000000
     bbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc0:	e12fff1e 	bx	lr

00000bc4 <sbrk>:
     bc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc8:	e1a04003 	mov	r4, r3
     bcc:	e1a03002 	mov	r3, r2
     bd0:	e1a02001 	mov	r2, r1
     bd4:	e1a01000 	mov	r1, r0
     bd8:	e3a0000c 	mov	r0, #12
     bdc:	ef000000 	svc	0x00000000
     be0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be4:	e12fff1e 	bx	lr

00000be8 <sleep>:
     be8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bec:	e1a04003 	mov	r4, r3
     bf0:	e1a03002 	mov	r3, r2
     bf4:	e1a02001 	mov	r2, r1
     bf8:	e1a01000 	mov	r1, r0
     bfc:	e3a0000d 	mov	r0, #13
     c00:	ef000000 	svc	0x00000000
     c04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c08:	e12fff1e 	bx	lr

00000c0c <uptime>:
     c0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c10:	e1a04003 	mov	r4, r3
     c14:	e1a03002 	mov	r3, r2
     c18:	e1a02001 	mov	r2, r1
     c1c:	e1a01000 	mov	r1, r0
     c20:	e3a0000e 	mov	r0, #14
     c24:	ef000000 	svc	0x00000000
     c28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c2c:	e12fff1e 	bx	lr

00000c30 <ps>:
     c30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c34:	e1a04003 	mov	r4, r3
     c38:	e1a03002 	mov	r3, r2
     c3c:	e1a02001 	mov	r2, r1
     c40:	e1a01000 	mov	r1, r0
     c44:	e3a00016 	mov	r0, #22
     c48:	ef000000 	svc	0x00000000
     c4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c50:	e12fff1e 	bx	lr

00000c54 <settickets>:
     c54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c58:	e1a04003 	mov	r4, r3
     c5c:	e1a03002 	mov	r3, r2
     c60:	e1a02001 	mov	r2, r1
     c64:	e1a01000 	mov	r1, r0
     c68:	e3a00017 	mov	r0, #23
     c6c:	ef000000 	svc	0x00000000
     c70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c74:	e12fff1e 	bx	lr

00000c78 <srand>:
     c78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c7c:	e1a04003 	mov	r4, r3
     c80:	e1a03002 	mov	r3, r2
     c84:	e1a02001 	mov	r2, r1
     c88:	e1a01000 	mov	r1, r0
     c8c:	e3a00018 	mov	r0, #24
     c90:	ef000000 	svc	0x00000000
     c94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c98:	e12fff1e 	bx	lr

00000c9c <getpinfo>:
     c9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca0:	e1a04003 	mov	r4, r3
     ca4:	e1a03002 	mov	r3, r2
     ca8:	e1a02001 	mov	r2, r1
     cac:	e1a01000 	mov	r1, r0
     cb0:	e3a00019 	mov	r0, #25
     cb4:	ef000000 	svc	0x00000000
     cb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cbc:	e12fff1e 	bx	lr

00000cc0 <printpt>:
     cc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc4:	e1a04003 	mov	r4, r3
     cc8:	e1a03002 	mov	r3, r2
     ccc:	e1a02001 	mov	r2, r1
     cd0:	e1a01000 	mov	r1, r0
     cd4:	e3a0001a 	mov	r0, #26
     cd8:	ef000000 	svc	0x00000000
     cdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce0:	e12fff1e 	bx	lr

00000ce4 <pgpte>:
     ce4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce8:	e1a04003 	mov	r4, r3
     cec:	e1a03002 	mov	r3, r2
     cf0:	e1a02001 	mov	r2, r1
     cf4:	e1a01000 	mov	r1, r0
     cf8:	e3a0001b 	mov	r0, #27
     cfc:	ef000000 	svc	0x00000000
     d00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d04:	e12fff1e 	bx	lr

00000d08 <ugetpid>:
     d08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d0c:	e1a04003 	mov	r4, r3
     d10:	e1a03002 	mov	r3, r2
     d14:	e1a02001 	mov	r2, r1
     d18:	e1a01000 	mov	r1, r0
     d1c:	e3a0001c 	mov	r0, #28
     d20:	ef000000 	svc	0x00000000
     d24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d28:	e12fff1e 	bx	lr

00000d2c <kpt>:
     d2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d30:	e1a04003 	mov	r4, r3
     d34:	e1a03002 	mov	r3, r2
     d38:	e1a02001 	mov	r2, r1
     d3c:	e1a01000 	mov	r1, r0
     d40:	e3a0001d 	mov	r0, #29
     d44:	ef000000 	svc	0x00000000
     d48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d4c:	e12fff1e 	bx	lr

00000d50 <putc>:
     d50:	e92d4800 	push	{fp, lr}
     d54:	e28db004 	add	fp, sp, #4
     d58:	e24dd008 	sub	sp, sp, #8
     d5c:	e50b0008 	str	r0, [fp, #-8]
     d60:	e1a03001 	mov	r3, r1
     d64:	e54b3009 	strb	r3, [fp, #-9]
     d68:	e24b3009 	sub	r3, fp, #9
     d6c:	e3a02001 	mov	r2, #1
     d70:	e1a01003 	mov	r1, r3
     d74:	e51b0008 	ldr	r0, [fp, #-8]
     d78:	ebffff1c 	bl	9f0 <write>
     d7c:	e1a00000 	nop			@ (mov r0, r0)
     d80:	e24bd004 	sub	sp, fp, #4
     d84:	e8bd8800 	pop	{fp, pc}

00000d88 <printint>:
     d88:	e92d4800 	push	{fp, lr}
     d8c:	e28db004 	add	fp, sp, #4
     d90:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d94:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d98:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d9c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     da0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     da4:	e3a03000 	mov	r3, #0
     da8:	e50b300c 	str	r3, [fp, #-12]
     dac:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     db0:	e3530000 	cmp	r3, #0
     db4:	0a000008 	beq	ddc <printint+0x54>
     db8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     dbc:	e3530000 	cmp	r3, #0
     dc0:	aa000005 	bge	ddc <printint+0x54>
     dc4:	e3a03001 	mov	r3, #1
     dc8:	e50b300c 	str	r3, [fp, #-12]
     dcc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     dd0:	e2633000 	rsb	r3, r3, #0
     dd4:	e50b3010 	str	r3, [fp, #-16]
     dd8:	ea000001 	b	de4 <printint+0x5c>
     ddc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     de0:	e50b3010 	str	r3, [fp, #-16]
     de4:	e3a03000 	mov	r3, #0
     de8:	e50b3008 	str	r3, [fp, #-8]
     dec:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     df0:	e51b3010 	ldr	r3, [fp, #-16]
     df4:	e1a01002 	mov	r1, r2
     df8:	e1a00003 	mov	r0, r3
     dfc:	eb0001d5 	bl	1558 <__aeabi_uidivmod>
     e00:	e1a03001 	mov	r3, r1
     e04:	e1a01003 	mov	r1, r3
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e2832001 	add	r2, r3, #1
     e10:	e50b2008 	str	r2, [fp, #-8]
     e14:	e59f20a0 	ldr	r2, [pc, #160]	@ ebc <printint+0x134>
     e18:	e7d22001 	ldrb	r2, [r2, r1]
     e1c:	e2433004 	sub	r3, r3, #4
     e20:	e083300b 	add	r3, r3, fp
     e24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e28:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     e2c:	e1a01003 	mov	r1, r3
     e30:	e51b0010 	ldr	r0, [fp, #-16]
     e34:	eb00018a 	bl	1464 <__udivsi3>
     e38:	e1a03000 	mov	r3, r0
     e3c:	e50b3010 	str	r3, [fp, #-16]
     e40:	e51b3010 	ldr	r3, [fp, #-16]
     e44:	e3530000 	cmp	r3, #0
     e48:	1affffe7 	bne	dec <printint+0x64>
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e3530000 	cmp	r3, #0
     e54:	0a00000e 	beq	e94 <printint+0x10c>
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e2832001 	add	r2, r3, #1
     e60:	e50b2008 	str	r2, [fp, #-8]
     e64:	e2433004 	sub	r3, r3, #4
     e68:	e083300b 	add	r3, r3, fp
     e6c:	e3a0202d 	mov	r2, #45	@ 0x2d
     e70:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e74:	ea000006 	b	e94 <printint+0x10c>
     e78:	e24b2020 	sub	r2, fp, #32
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e0823003 	add	r3, r2, r3
     e84:	e5d33000 	ldrb	r3, [r3]
     e88:	e1a01003 	mov	r1, r3
     e8c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e90:	ebffffae 	bl	d50 <putc>
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e2433001 	sub	r3, r3, #1
     e9c:	e50b3008 	str	r3, [fp, #-8]
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e3530000 	cmp	r3, #0
     ea8:	aafffff2 	bge	e78 <printint+0xf0>
     eac:	e1a00000 	nop			@ (mov r0, r0)
     eb0:	e1a00000 	nop			@ (mov r0, r0)
     eb4:	e24bd004 	sub	sp, fp, #4
     eb8:	e8bd8800 	pop	{fp, pc}
     ebc:	000015d4 	.word	0x000015d4

00000ec0 <printf>:
     ec0:	e92d000e 	push	{r1, r2, r3}
     ec4:	e92d4800 	push	{fp, lr}
     ec8:	e28db004 	add	fp, sp, #4
     ecc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ed0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ed4:	e3a03000 	mov	r3, #0
     ed8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     edc:	e28b3008 	add	r3, fp, #8
     ee0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ee4:	e3a03000 	mov	r3, #0
     ee8:	e50b3010 	str	r3, [fp, #-16]
     eec:	ea000074 	b	10c4 <printf+0x204>
     ef0:	e59b2004 	ldr	r2, [fp, #4]
     ef4:	e51b3010 	ldr	r3, [fp, #-16]
     ef8:	e0823003 	add	r3, r2, r3
     efc:	e5d33000 	ldrb	r3, [r3]
     f00:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f08:	e3530000 	cmp	r3, #0
     f0c:	1a00000b 	bne	f40 <printf+0x80>
     f10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f14:	e3530025 	cmp	r3, #37	@ 0x25
     f18:	1a000002 	bne	f28 <printf+0x68>
     f1c:	e3a03025 	mov	r3, #37	@ 0x25
     f20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f24:	ea000063 	b	10b8 <printf+0x1f8>
     f28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f2c:	e6ef3073 	uxtb	r3, r3
     f30:	e1a01003 	mov	r1, r3
     f34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f38:	ebffff84 	bl	d50 <putc>
     f3c:	ea00005d 	b	10b8 <printf+0x1f8>
     f40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f44:	e3530025 	cmp	r3, #37	@ 0x25
     f48:	1a00005a 	bne	10b8 <printf+0x1f8>
     f4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f50:	e3530064 	cmp	r3, #100	@ 0x64
     f54:	1a00000a 	bne	f84 <printf+0xc4>
     f58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e1a01003 	mov	r1, r3
     f64:	e3a03001 	mov	r3, #1
     f68:	e3a0200a 	mov	r2, #10
     f6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f70:	ebffff84 	bl	d88 <printint>
     f74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f78:	e2833004 	add	r3, r3, #4
     f7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f80:	ea00004a 	b	10b0 <printf+0x1f0>
     f84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f88:	e3530078 	cmp	r3, #120	@ 0x78
     f8c:	0a000002 	beq	f9c <printf+0xdc>
     f90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f94:	e3530070 	cmp	r3, #112	@ 0x70
     f98:	1a00000a 	bne	fc8 <printf+0x108>
     f9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa0:	e5933000 	ldr	r3, [r3]
     fa4:	e1a01003 	mov	r1, r3
     fa8:	e3a03000 	mov	r3, #0
     fac:	e3a02010 	mov	r2, #16
     fb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fb4:	ebffff73 	bl	d88 <printint>
     fb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e2833004 	add	r3, r3, #4
     fc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fc4:	ea000039 	b	10b0 <printf+0x1f0>
     fc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fcc:	e3530073 	cmp	r3, #115	@ 0x73
     fd0:	1a000018 	bne	1038 <printf+0x178>
     fd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e50b300c 	str	r3, [fp, #-12]
     fe0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fe4:	e2833004 	add	r3, r3, #4
     fe8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fec:	e51b300c 	ldr	r3, [fp, #-12]
     ff0:	e3530000 	cmp	r3, #0
     ff4:	1a00000a 	bne	1024 <printf+0x164>
     ff8:	e59f30f4 	ldr	r3, [pc, #244]	@ 10f4 <printf+0x234>
     ffc:	e50b300c 	str	r3, [fp, #-12]
    1000:	ea000007 	b	1024 <printf+0x164>
    1004:	e51b300c 	ldr	r3, [fp, #-12]
    1008:	e5d33000 	ldrb	r3, [r3]
    100c:	e1a01003 	mov	r1, r3
    1010:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1014:	ebffff4d 	bl	d50 <putc>
    1018:	e51b300c 	ldr	r3, [fp, #-12]
    101c:	e2833001 	add	r3, r3, #1
    1020:	e50b300c 	str	r3, [fp, #-12]
    1024:	e51b300c 	ldr	r3, [fp, #-12]
    1028:	e5d33000 	ldrb	r3, [r3]
    102c:	e3530000 	cmp	r3, #0
    1030:	1afffff3 	bne	1004 <printf+0x144>
    1034:	ea00001d 	b	10b0 <printf+0x1f0>
    1038:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    103c:	e3530063 	cmp	r3, #99	@ 0x63
    1040:	1a000009 	bne	106c <printf+0x1ac>
    1044:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1048:	e5933000 	ldr	r3, [r3]
    104c:	e6ef3073 	uxtb	r3, r3
    1050:	e1a01003 	mov	r1, r3
    1054:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1058:	ebffff3c 	bl	d50 <putc>
    105c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1060:	e2833004 	add	r3, r3, #4
    1064:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1068:	ea000010 	b	10b0 <printf+0x1f0>
    106c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1070:	e3530025 	cmp	r3, #37	@ 0x25
    1074:	1a000005 	bne	1090 <printf+0x1d0>
    1078:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    107c:	e6ef3073 	uxtb	r3, r3
    1080:	e1a01003 	mov	r1, r3
    1084:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1088:	ebffff30 	bl	d50 <putc>
    108c:	ea000007 	b	10b0 <printf+0x1f0>
    1090:	e3a01025 	mov	r1, #37	@ 0x25
    1094:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1098:	ebffff2c 	bl	d50 <putc>
    109c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a0:	e6ef3073 	uxtb	r3, r3
    10a4:	e1a01003 	mov	r1, r3
    10a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10ac:	ebffff27 	bl	d50 <putc>
    10b0:	e3a03000 	mov	r3, #0
    10b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10b8:	e51b3010 	ldr	r3, [fp, #-16]
    10bc:	e2833001 	add	r3, r3, #1
    10c0:	e50b3010 	str	r3, [fp, #-16]
    10c4:	e59b2004 	ldr	r2, [fp, #4]
    10c8:	e51b3010 	ldr	r3, [fp, #-16]
    10cc:	e0823003 	add	r3, r2, r3
    10d0:	e5d33000 	ldrb	r3, [r3]
    10d4:	e3530000 	cmp	r3, #0
    10d8:	1affff84 	bne	ef0 <printf+0x30>
    10dc:	e1a00000 	nop			@ (mov r0, r0)
    10e0:	e1a00000 	nop			@ (mov r0, r0)
    10e4:	e24bd004 	sub	sp, fp, #4
    10e8:	e8bd4800 	pop	{fp, lr}
    10ec:	e28dd00c 	add	sp, sp, #12
    10f0:	e12fff1e 	bx	lr
    10f4:	000015cc 	.word	0x000015cc

000010f8 <free>:
    10f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10fc:	e28db000 	add	fp, sp, #0
    1100:	e24dd014 	sub	sp, sp, #20
    1104:	e50b0010 	str	r0, [fp, #-16]
    1108:	e51b3010 	ldr	r3, [fp, #-16]
    110c:	e2433008 	sub	r3, r3, #8
    1110:	e50b300c 	str	r3, [fp, #-12]
    1114:	e59f3154 	ldr	r3, [pc, #340]	@ 1270 <free+0x178>
    1118:	e5933000 	ldr	r3, [r3]
    111c:	e50b3008 	str	r3, [fp, #-8]
    1120:	ea000010 	b	1168 <free+0x70>
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e5933000 	ldr	r3, [r3]
    112c:	e51b2008 	ldr	r2, [fp, #-8]
    1130:	e1520003 	cmp	r2, r3
    1134:	3a000008 	bcc	115c <free+0x64>
    1138:	e51b200c 	ldr	r2, [fp, #-12]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e1520003 	cmp	r2, r3
    1144:	8a000010 	bhi	118c <free+0x94>
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e5933000 	ldr	r3, [r3]
    1150:	e51b200c 	ldr	r2, [fp, #-12]
    1154:	e1520003 	cmp	r2, r3
    1158:	3a00000b 	bcc	118c <free+0x94>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e50b3008 	str	r3, [fp, #-8]
    1168:	e51b200c 	ldr	r2, [fp, #-12]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e1520003 	cmp	r2, r3
    1174:	9affffea 	bls	1124 <free+0x2c>
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e5933000 	ldr	r3, [r3]
    1180:	e51b200c 	ldr	r2, [fp, #-12]
    1184:	e1520003 	cmp	r2, r3
    1188:	2affffe5 	bcs	1124 <free+0x2c>
    118c:	e51b300c 	ldr	r3, [fp, #-12]
    1190:	e5933004 	ldr	r3, [r3, #4]
    1194:	e1a03183 	lsl	r3, r3, #3
    1198:	e51b200c 	ldr	r2, [fp, #-12]
    119c:	e0822003 	add	r2, r2, r3
    11a0:	e51b3008 	ldr	r3, [fp, #-8]
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e1520003 	cmp	r2, r3
    11ac:	1a00000d 	bne	11e8 <free+0xf0>
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e5932004 	ldr	r2, [r3, #4]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e5933000 	ldr	r3, [r3]
    11c0:	e5933004 	ldr	r3, [r3, #4]
    11c4:	e0822003 	add	r2, r2, r3
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5832004 	str	r2, [r3, #4]
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e5933000 	ldr	r3, [r3]
    11d8:	e5932000 	ldr	r2, [r3]
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e5832000 	str	r2, [r3]
    11e4:	ea000003 	b	11f8 <free+0x100>
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e5932000 	ldr	r2, [r3]
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e5832000 	str	r2, [r3]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5933004 	ldr	r3, [r3, #4]
    1200:	e1a03183 	lsl	r3, r3, #3
    1204:	e51b2008 	ldr	r2, [fp, #-8]
    1208:	e0823003 	add	r3, r2, r3
    120c:	e51b200c 	ldr	r2, [fp, #-12]
    1210:	e1520003 	cmp	r2, r3
    1214:	1a00000b 	bne	1248 <free+0x150>
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e5932004 	ldr	r2, [r3, #4]
    1220:	e51b300c 	ldr	r3, [fp, #-12]
    1224:	e5933004 	ldr	r3, [r3, #4]
    1228:	e0822003 	add	r2, r2, r3
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5832004 	str	r2, [r3, #4]
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e5932000 	ldr	r2, [r3]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5832000 	str	r2, [r3]
    1244:	ea000002 	b	1254 <free+0x15c>
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e51b200c 	ldr	r2, [fp, #-12]
    1250:	e5832000 	str	r2, [r3]
    1254:	e59f2014 	ldr	r2, [pc, #20]	@ 1270 <free+0x178>
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e5823000 	str	r3, [r2]
    1260:	e1a00000 	nop			@ (mov r0, r0)
    1264:	e28bd000 	add	sp, fp, #0
    1268:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    126c:	e12fff1e 	bx	lr
    1270:	00001600 	.word	0x00001600

00001274 <morecore>:
    1274:	e92d4800 	push	{fp, lr}
    1278:	e28db004 	add	fp, sp, #4
    127c:	e24dd010 	sub	sp, sp, #16
    1280:	e50b0010 	str	r0, [fp, #-16]
    1284:	e51b3010 	ldr	r3, [fp, #-16]
    1288:	e3530a01 	cmp	r3, #4096	@ 0x1000
    128c:	2a000001 	bcs	1298 <morecore+0x24>
    1290:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1294:	e50b3010 	str	r3, [fp, #-16]
    1298:	e51b3010 	ldr	r3, [fp, #-16]
    129c:	e1a03183 	lsl	r3, r3, #3
    12a0:	e1a00003 	mov	r0, r3
    12a4:	ebfffe46 	bl	bc4 <sbrk>
    12a8:	e50b0008 	str	r0, [fp, #-8]
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e3730001 	cmn	r3, #1
    12b4:	1a000001 	bne	12c0 <morecore+0x4c>
    12b8:	e3a03000 	mov	r3, #0
    12bc:	ea00000a 	b	12ec <morecore+0x78>
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e50b300c 	str	r3, [fp, #-12]
    12c8:	e51b300c 	ldr	r3, [fp, #-12]
    12cc:	e51b2010 	ldr	r2, [fp, #-16]
    12d0:	e5832004 	str	r2, [r3, #4]
    12d4:	e51b300c 	ldr	r3, [fp, #-12]
    12d8:	e2833008 	add	r3, r3, #8
    12dc:	e1a00003 	mov	r0, r3
    12e0:	ebffff84 	bl	10f8 <free>
    12e4:	e59f300c 	ldr	r3, [pc, #12]	@ 12f8 <morecore+0x84>
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e1a00003 	mov	r0, r3
    12f0:	e24bd004 	sub	sp, fp, #4
    12f4:	e8bd8800 	pop	{fp, pc}
    12f8:	00001600 	.word	0x00001600

000012fc <malloc>:
    12fc:	e92d4800 	push	{fp, lr}
    1300:	e28db004 	add	fp, sp, #4
    1304:	e24dd018 	sub	sp, sp, #24
    1308:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    130c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1310:	e2833007 	add	r3, r3, #7
    1314:	e1a031a3 	lsr	r3, r3, #3
    1318:	e2833001 	add	r3, r3, #1
    131c:	e50b3010 	str	r3, [fp, #-16]
    1320:	e59f3134 	ldr	r3, [pc, #308]	@ 145c <malloc+0x160>
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e50b300c 	str	r3, [fp, #-12]
    132c:	e51b300c 	ldr	r3, [fp, #-12]
    1330:	e3530000 	cmp	r3, #0
    1334:	1a00000b 	bne	1368 <malloc+0x6c>
    1338:	e59f3120 	ldr	r3, [pc, #288]	@ 1460 <malloc+0x164>
    133c:	e50b300c 	str	r3, [fp, #-12]
    1340:	e59f2114 	ldr	r2, [pc, #276]	@ 145c <malloc+0x160>
    1344:	e51b300c 	ldr	r3, [fp, #-12]
    1348:	e5823000 	str	r3, [r2]
    134c:	e59f3108 	ldr	r3, [pc, #264]	@ 145c <malloc+0x160>
    1350:	e5933000 	ldr	r3, [r3]
    1354:	e59f2104 	ldr	r2, [pc, #260]	@ 1460 <malloc+0x164>
    1358:	e5823000 	str	r3, [r2]
    135c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1460 <malloc+0x164>
    1360:	e3a02000 	mov	r2, #0
    1364:	e5832004 	str	r2, [r3, #4]
    1368:	e51b300c 	ldr	r3, [fp, #-12]
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e50b3008 	str	r3, [fp, #-8]
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5933004 	ldr	r3, [r3, #4]
    137c:	e51b2010 	ldr	r2, [fp, #-16]
    1380:	e1520003 	cmp	r2, r3
    1384:	8a00001e 	bhi	1404 <malloc+0x108>
    1388:	e51b3008 	ldr	r3, [fp, #-8]
    138c:	e5933004 	ldr	r3, [r3, #4]
    1390:	e51b2010 	ldr	r2, [fp, #-16]
    1394:	e1520003 	cmp	r2, r3
    1398:	1a000004 	bne	13b0 <malloc+0xb4>
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e5932000 	ldr	r2, [r3]
    13a4:	e51b300c 	ldr	r3, [fp, #-12]
    13a8:	e5832000 	str	r2, [r3]
    13ac:	ea00000e 	b	13ec <malloc+0xf0>
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5932004 	ldr	r2, [r3, #4]
    13b8:	e51b3010 	ldr	r3, [fp, #-16]
    13bc:	e0422003 	sub	r2, r2, r3
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5832004 	str	r2, [r3, #4]
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e5933004 	ldr	r3, [r3, #4]
    13d0:	e1a03183 	lsl	r3, r3, #3
    13d4:	e51b2008 	ldr	r2, [fp, #-8]
    13d8:	e0823003 	add	r3, r2, r3
    13dc:	e50b3008 	str	r3, [fp, #-8]
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e51b2010 	ldr	r2, [fp, #-16]
    13e8:	e5832004 	str	r2, [r3, #4]
    13ec:	e59f2068 	ldr	r2, [pc, #104]	@ 145c <malloc+0x160>
    13f0:	e51b300c 	ldr	r3, [fp, #-12]
    13f4:	e5823000 	str	r3, [r2]
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e2833008 	add	r3, r3, #8
    1400:	ea000012 	b	1450 <malloc+0x154>
    1404:	e59f3050 	ldr	r3, [pc, #80]	@ 145c <malloc+0x160>
    1408:	e5933000 	ldr	r3, [r3]
    140c:	e51b2008 	ldr	r2, [fp, #-8]
    1410:	e1520003 	cmp	r2, r3
    1414:	1a000007 	bne	1438 <malloc+0x13c>
    1418:	e51b0010 	ldr	r0, [fp, #-16]
    141c:	ebffff94 	bl	1274 <morecore>
    1420:	e50b0008 	str	r0, [fp, #-8]
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e3530000 	cmp	r3, #0
    142c:	1a000001 	bne	1438 <malloc+0x13c>
    1430:	e3a03000 	mov	r3, #0
    1434:	ea000005 	b	1450 <malloc+0x154>
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e50b300c 	str	r3, [fp, #-12]
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e5933000 	ldr	r3, [r3]
    1448:	e50b3008 	str	r3, [fp, #-8]
    144c:	eaffffc8 	b	1374 <malloc+0x78>
    1450:	e1a00003 	mov	r0, r3
    1454:	e24bd004 	sub	sp, fp, #4
    1458:	e8bd8800 	pop	{fp, pc}
    145c:	00001600 	.word	0x00001600
    1460:	000015f8 	.word	0x000015f8

00001464 <__udivsi3>:
    1464:	e2512001 	subs	r2, r1, #1
    1468:	012fff1e 	bxeq	lr
    146c:	3a000036 	bcc	154c <__udivsi3+0xe8>
    1470:	e1500001 	cmp	r0, r1
    1474:	9a000022 	bls	1504 <__udivsi3+0xa0>
    1478:	e1110002 	tst	r1, r2
    147c:	0a000023 	beq	1510 <__udivsi3+0xac>
    1480:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1484:	01a01181 	lsleq	r1, r1, #3
    1488:	03a03008 	moveq	r3, #8
    148c:	13a03001 	movne	r3, #1
    1490:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1494:	31510000 	cmpcc	r1, r0
    1498:	31a01201 	lslcc	r1, r1, #4
    149c:	31a03203 	lslcc	r3, r3, #4
    14a0:	3afffffa 	bcc	1490 <__udivsi3+0x2c>
    14a4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    14a8:	31510000 	cmpcc	r1, r0
    14ac:	31a01081 	lslcc	r1, r1, #1
    14b0:	31a03083 	lslcc	r3, r3, #1
    14b4:	3afffffa 	bcc	14a4 <__udivsi3+0x40>
    14b8:	e3a02000 	mov	r2, #0
    14bc:	e1500001 	cmp	r0, r1
    14c0:	20400001 	subcs	r0, r0, r1
    14c4:	21822003 	orrcs	r2, r2, r3
    14c8:	e15000a1 	cmp	r0, r1, lsr #1
    14cc:	204000a1 	subcs	r0, r0, r1, lsr #1
    14d0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    14d4:	e1500121 	cmp	r0, r1, lsr #2
    14d8:	20400121 	subcs	r0, r0, r1, lsr #2
    14dc:	21822123 	orrcs	r2, r2, r3, lsr #2
    14e0:	e15001a1 	cmp	r0, r1, lsr #3
    14e4:	204001a1 	subcs	r0, r0, r1, lsr #3
    14e8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14ec:	e3500000 	cmp	r0, #0
    14f0:	11b03223 	lsrsne	r3, r3, #4
    14f4:	11a01221 	lsrne	r1, r1, #4
    14f8:	1affffef 	bne	14bc <__udivsi3+0x58>
    14fc:	e1a00002 	mov	r0, r2
    1500:	e12fff1e 	bx	lr
    1504:	03a00001 	moveq	r0, #1
    1508:	13a00000 	movne	r0, #0
    150c:	e12fff1e 	bx	lr
    1510:	e3510801 	cmp	r1, #65536	@ 0x10000
    1514:	21a01821 	lsrcs	r1, r1, #16
    1518:	23a02010 	movcs	r2, #16
    151c:	33a02000 	movcc	r2, #0
    1520:	e3510c01 	cmp	r1, #256	@ 0x100
    1524:	21a01421 	lsrcs	r1, r1, #8
    1528:	22822008 	addcs	r2, r2, #8
    152c:	e3510010 	cmp	r1, #16
    1530:	21a01221 	lsrcs	r1, r1, #4
    1534:	22822004 	addcs	r2, r2, #4
    1538:	e3510004 	cmp	r1, #4
    153c:	82822003 	addhi	r2, r2, #3
    1540:	908220a1 	addls	r2, r2, r1, lsr #1
    1544:	e1a00230 	lsr	r0, r0, r2
    1548:	e12fff1e 	bx	lr
    154c:	e3500000 	cmp	r0, #0
    1550:	13e00000 	mvnne	r0, #0
    1554:	ea000007 	b	1578 <__aeabi_idiv0>

00001558 <__aeabi_uidivmod>:
    1558:	e3510000 	cmp	r1, #0
    155c:	0afffffa 	beq	154c <__udivsi3+0xe8>
    1560:	e92d4003 	push	{r0, r1, lr}
    1564:	ebffffbe 	bl	1464 <__udivsi3>
    1568:	e8bd4006 	pop	{r1, r2, lr}
    156c:	e0030092 	mul	r3, r2, r0
    1570:	e0411003 	sub	r1, r1, r3
    1574:	e12fff1e 	bx	lr

00001578 <__aeabi_idiv0>:
    1578:	e12fff1e 	bx	lr
