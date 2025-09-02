
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
      e0:	00001558 	.word	0x00001558

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
     11c:	eb000343 	bl	e30 <printf>
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
     14c:	eb000337 	bl	e30 <printf>
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
     1b4:	eb00031d 	bl	e30 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000df 	bl	544 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb000313 	bl	e30 <printf>
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
     294:	eb0002e5 	bl	e30 <printf>
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
     2dc:	eb0002d3 	bl	e30 <printf>
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
     31c:	000014ec 	.word	0x000014ec
     320:	00001500 	.word	0x00001500
     324:	00001514 	.word	0x00001514
     328:	00001524 	.word	0x00001524

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
     3a0:	00001538 	.word	0x00001538

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

00000cc0 <putc>:
     cc0:	e92d4800 	push	{fp, lr}
     cc4:	e28db004 	add	fp, sp, #4
     cc8:	e24dd008 	sub	sp, sp, #8
     ccc:	e50b0008 	str	r0, [fp, #-8]
     cd0:	e1a03001 	mov	r3, r1
     cd4:	e54b3009 	strb	r3, [fp, #-9]
     cd8:	e24b3009 	sub	r3, fp, #9
     cdc:	e3a02001 	mov	r2, #1
     ce0:	e1a01003 	mov	r1, r3
     ce4:	e51b0008 	ldr	r0, [fp, #-8]
     ce8:	ebffff40 	bl	9f0 <write>
     cec:	e1a00000 	nop			@ (mov r0, r0)
     cf0:	e24bd004 	sub	sp, fp, #4
     cf4:	e8bd8800 	pop	{fp, pc}

00000cf8 <printint>:
     cf8:	e92d4800 	push	{fp, lr}
     cfc:	e28db004 	add	fp, sp, #4
     d00:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d04:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d08:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d0c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d10:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d14:	e3a03000 	mov	r3, #0
     d18:	e50b300c 	str	r3, [fp, #-12]
     d1c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d20:	e3530000 	cmp	r3, #0
     d24:	0a000008 	beq	d4c <printint+0x54>
     d28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d2c:	e3530000 	cmp	r3, #0
     d30:	aa000005 	bge	d4c <printint+0x54>
     d34:	e3a03001 	mov	r3, #1
     d38:	e50b300c 	str	r3, [fp, #-12]
     d3c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d40:	e2633000 	rsb	r3, r3, #0
     d44:	e50b3010 	str	r3, [fp, #-16]
     d48:	ea000001 	b	d54 <printint+0x5c>
     d4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d50:	e50b3010 	str	r3, [fp, #-16]
     d54:	e3a03000 	mov	r3, #0
     d58:	e50b3008 	str	r3, [fp, #-8]
     d5c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d60:	e51b3010 	ldr	r3, [fp, #-16]
     d64:	e1a01002 	mov	r1, r2
     d68:	e1a00003 	mov	r0, r3
     d6c:	eb0001d5 	bl	14c8 <__aeabi_uidivmod>
     d70:	e1a03001 	mov	r3, r1
     d74:	e1a01003 	mov	r1, r3
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e2832001 	add	r2, r3, #1
     d80:	e50b2008 	str	r2, [fp, #-8]
     d84:	e59f20a0 	ldr	r2, [pc, #160]	@ e2c <printint+0x134>
     d88:	e7d22001 	ldrb	r2, [r2, r1]
     d8c:	e2433004 	sub	r3, r3, #4
     d90:	e083300b 	add	r3, r3, fp
     d94:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d98:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d9c:	e1a01003 	mov	r1, r3
     da0:	e51b0010 	ldr	r0, [fp, #-16]
     da4:	eb00018a 	bl	13d4 <__udivsi3>
     da8:	e1a03000 	mov	r3, r0
     dac:	e50b3010 	str	r3, [fp, #-16]
     db0:	e51b3010 	ldr	r3, [fp, #-16]
     db4:	e3530000 	cmp	r3, #0
     db8:	1affffe7 	bne	d5c <printint+0x64>
     dbc:	e51b300c 	ldr	r3, [fp, #-12]
     dc0:	e3530000 	cmp	r3, #0
     dc4:	0a00000e 	beq	e04 <printint+0x10c>
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e2832001 	add	r2, r3, #1
     dd0:	e50b2008 	str	r2, [fp, #-8]
     dd4:	e2433004 	sub	r3, r3, #4
     dd8:	e083300b 	add	r3, r3, fp
     ddc:	e3a0202d 	mov	r2, #45	@ 0x2d
     de0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     de4:	ea000006 	b	e04 <printint+0x10c>
     de8:	e24b2020 	sub	r2, fp, #32
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e0823003 	add	r3, r2, r3
     df4:	e5d33000 	ldrb	r3, [r3]
     df8:	e1a01003 	mov	r1, r3
     dfc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e00:	ebffffae 	bl	cc0 <putc>
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e2433001 	sub	r3, r3, #1
     e0c:	e50b3008 	str	r3, [fp, #-8]
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e3530000 	cmp	r3, #0
     e18:	aafffff2 	bge	de8 <printint+0xf0>
     e1c:	e1a00000 	nop			@ (mov r0, r0)
     e20:	e1a00000 	nop			@ (mov r0, r0)
     e24:	e24bd004 	sub	sp, fp, #4
     e28:	e8bd8800 	pop	{fp, pc}
     e2c:	00001544 	.word	0x00001544

00000e30 <printf>:
     e30:	e92d000e 	push	{r1, r2, r3}
     e34:	e92d4800 	push	{fp, lr}
     e38:	e28db004 	add	fp, sp, #4
     e3c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e40:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e44:	e3a03000 	mov	r3, #0
     e48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e4c:	e28b3008 	add	r3, fp, #8
     e50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e54:	e3a03000 	mov	r3, #0
     e58:	e50b3010 	str	r3, [fp, #-16]
     e5c:	ea000074 	b	1034 <printf+0x204>
     e60:	e59b2004 	ldr	r2, [fp, #4]
     e64:	e51b3010 	ldr	r3, [fp, #-16]
     e68:	e0823003 	add	r3, r2, r3
     e6c:	e5d33000 	ldrb	r3, [r3]
     e70:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e78:	e3530000 	cmp	r3, #0
     e7c:	1a00000b 	bne	eb0 <printf+0x80>
     e80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e84:	e3530025 	cmp	r3, #37	@ 0x25
     e88:	1a000002 	bne	e98 <printf+0x68>
     e8c:	e3a03025 	mov	r3, #37	@ 0x25
     e90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e94:	ea000063 	b	1028 <printf+0x1f8>
     e98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e9c:	e6ef3073 	uxtb	r3, r3
     ea0:	e1a01003 	mov	r1, r3
     ea4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea8:	ebffff84 	bl	cc0 <putc>
     eac:	ea00005d 	b	1028 <printf+0x1f8>
     eb0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     eb4:	e3530025 	cmp	r3, #37	@ 0x25
     eb8:	1a00005a 	bne	1028 <printf+0x1f8>
     ebc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec0:	e3530064 	cmp	r3, #100	@ 0x64
     ec4:	1a00000a 	bne	ef4 <printf+0xc4>
     ec8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e1a01003 	mov	r1, r3
     ed4:	e3a03001 	mov	r3, #1
     ed8:	e3a0200a 	mov	r2, #10
     edc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ee0:	ebffff84 	bl	cf8 <printint>
     ee4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee8:	e2833004 	add	r3, r3, #4
     eec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ef0:	ea00004a 	b	1020 <printf+0x1f0>
     ef4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ef8:	e3530078 	cmp	r3, #120	@ 0x78
     efc:	0a000002 	beq	f0c <printf+0xdc>
     f00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f04:	e3530070 	cmp	r3, #112	@ 0x70
     f08:	1a00000a 	bne	f38 <printf+0x108>
     f0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e1a01003 	mov	r1, r3
     f18:	e3a03000 	mov	r3, #0
     f1c:	e3a02010 	mov	r2, #16
     f20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f24:	ebffff73 	bl	cf8 <printint>
     f28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	e2833004 	add	r3, r3, #4
     f30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f34:	ea000039 	b	1020 <printf+0x1f0>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e3530073 	cmp	r3, #115	@ 0x73
     f40:	1a000018 	bne	fa8 <printf+0x178>
     f44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e50b300c 	str	r3, [fp, #-12]
     f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e2833004 	add	r3, r3, #4
     f58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e3530000 	cmp	r3, #0
     f64:	1a00000a 	bne	f94 <printf+0x164>
     f68:	e59f30f4 	ldr	r3, [pc, #244]	@ 1064 <printf+0x234>
     f6c:	e50b300c 	str	r3, [fp, #-12]
     f70:	ea000007 	b	f94 <printf+0x164>
     f74:	e51b300c 	ldr	r3, [fp, #-12]
     f78:	e5d33000 	ldrb	r3, [r3]
     f7c:	e1a01003 	mov	r1, r3
     f80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f84:	ebffff4d 	bl	cc0 <putc>
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e2833001 	add	r3, r3, #1
     f90:	e50b300c 	str	r3, [fp, #-12]
     f94:	e51b300c 	ldr	r3, [fp, #-12]
     f98:	e5d33000 	ldrb	r3, [r3]
     f9c:	e3530000 	cmp	r3, #0
     fa0:	1afffff3 	bne	f74 <printf+0x144>
     fa4:	ea00001d 	b	1020 <printf+0x1f0>
     fa8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fac:	e3530063 	cmp	r3, #99	@ 0x63
     fb0:	1a000009 	bne	fdc <printf+0x1ac>
     fb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e6ef3073 	uxtb	r3, r3
     fc0:	e1a01003 	mov	r1, r3
     fc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fc8:	ebffff3c 	bl	cc0 <putc>
     fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	e2833004 	add	r3, r3, #4
     fd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd8:	ea000010 	b	1020 <printf+0x1f0>
     fdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe0:	e3530025 	cmp	r3, #37	@ 0x25
     fe4:	1a000005 	bne	1000 <printf+0x1d0>
     fe8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fec:	e6ef3073 	uxtb	r3, r3
     ff0:	e1a01003 	mov	r1, r3
     ff4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff8:	ebffff30 	bl	cc0 <putc>
     ffc:	ea000007 	b	1020 <printf+0x1f0>
    1000:	e3a01025 	mov	r1, #37	@ 0x25
    1004:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1008:	ebffff2c 	bl	cc0 <putc>
    100c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1010:	e6ef3073 	uxtb	r3, r3
    1014:	e1a01003 	mov	r1, r3
    1018:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    101c:	ebffff27 	bl	cc0 <putc>
    1020:	e3a03000 	mov	r3, #0
    1024:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1028:	e51b3010 	ldr	r3, [fp, #-16]
    102c:	e2833001 	add	r3, r3, #1
    1030:	e50b3010 	str	r3, [fp, #-16]
    1034:	e59b2004 	ldr	r2, [fp, #4]
    1038:	e51b3010 	ldr	r3, [fp, #-16]
    103c:	e0823003 	add	r3, r2, r3
    1040:	e5d33000 	ldrb	r3, [r3]
    1044:	e3530000 	cmp	r3, #0
    1048:	1affff84 	bne	e60 <printf+0x30>
    104c:	e1a00000 	nop			@ (mov r0, r0)
    1050:	e1a00000 	nop			@ (mov r0, r0)
    1054:	e24bd004 	sub	sp, fp, #4
    1058:	e8bd4800 	pop	{fp, lr}
    105c:	e28dd00c 	add	sp, sp, #12
    1060:	e12fff1e 	bx	lr
    1064:	0000153c 	.word	0x0000153c

00001068 <free>:
    1068:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    106c:	e28db000 	add	fp, sp, #0
    1070:	e24dd014 	sub	sp, sp, #20
    1074:	e50b0010 	str	r0, [fp, #-16]
    1078:	e51b3010 	ldr	r3, [fp, #-16]
    107c:	e2433008 	sub	r3, r3, #8
    1080:	e50b300c 	str	r3, [fp, #-12]
    1084:	e59f3154 	ldr	r3, [pc, #340]	@ 11e0 <free+0x178>
    1088:	e5933000 	ldr	r3, [r3]
    108c:	e50b3008 	str	r3, [fp, #-8]
    1090:	ea000010 	b	10d8 <free+0x70>
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e51b2008 	ldr	r2, [fp, #-8]
    10a0:	e1520003 	cmp	r2, r3
    10a4:	3a000008 	bcc	10cc <free+0x64>
    10a8:	e51b200c 	ldr	r2, [fp, #-12]
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e1520003 	cmp	r2, r3
    10b4:	8a000010 	bhi	10fc <free+0x94>
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e51b200c 	ldr	r2, [fp, #-12]
    10c4:	e1520003 	cmp	r2, r3
    10c8:	3a00000b 	bcc	10fc <free+0x94>
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e5933000 	ldr	r3, [r3]
    10d4:	e50b3008 	str	r3, [fp, #-8]
    10d8:	e51b200c 	ldr	r2, [fp, #-12]
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e1520003 	cmp	r2, r3
    10e4:	9affffea 	bls	1094 <free+0x2c>
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e5933000 	ldr	r3, [r3]
    10f0:	e51b200c 	ldr	r2, [fp, #-12]
    10f4:	e1520003 	cmp	r2, r3
    10f8:	2affffe5 	bcs	1094 <free+0x2c>
    10fc:	e51b300c 	ldr	r3, [fp, #-12]
    1100:	e5933004 	ldr	r3, [r3, #4]
    1104:	e1a03183 	lsl	r3, r3, #3
    1108:	e51b200c 	ldr	r2, [fp, #-12]
    110c:	e0822003 	add	r2, r2, r3
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e1520003 	cmp	r2, r3
    111c:	1a00000d 	bne	1158 <free+0xf0>
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e5932004 	ldr	r2, [r3, #4]
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e5933000 	ldr	r3, [r3]
    1130:	e5933004 	ldr	r3, [r3, #4]
    1134:	e0822003 	add	r2, r2, r3
    1138:	e51b300c 	ldr	r3, [fp, #-12]
    113c:	e5832004 	str	r2, [r3, #4]
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e5932000 	ldr	r2, [r3]
    114c:	e51b300c 	ldr	r3, [fp, #-12]
    1150:	e5832000 	str	r2, [r3]
    1154:	ea000003 	b	1168 <free+0x100>
    1158:	e51b3008 	ldr	r3, [fp, #-8]
    115c:	e5932000 	ldr	r2, [r3]
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e5832000 	str	r2, [r3]
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e5933004 	ldr	r3, [r3, #4]
    1170:	e1a03183 	lsl	r3, r3, #3
    1174:	e51b2008 	ldr	r2, [fp, #-8]
    1178:	e0823003 	add	r3, r2, r3
    117c:	e51b200c 	ldr	r2, [fp, #-12]
    1180:	e1520003 	cmp	r2, r3
    1184:	1a00000b 	bne	11b8 <free+0x150>
    1188:	e51b3008 	ldr	r3, [fp, #-8]
    118c:	e5932004 	ldr	r2, [r3, #4]
    1190:	e51b300c 	ldr	r3, [fp, #-12]
    1194:	e5933004 	ldr	r3, [r3, #4]
    1198:	e0822003 	add	r2, r2, r3
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e5832004 	str	r2, [r3, #4]
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e5932000 	ldr	r2, [r3]
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5832000 	str	r2, [r3]
    11b4:	ea000002 	b	11c4 <free+0x15c>
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e51b200c 	ldr	r2, [fp, #-12]
    11c0:	e5832000 	str	r2, [r3]
    11c4:	e59f2014 	ldr	r2, [pc, #20]	@ 11e0 <free+0x178>
    11c8:	e51b3008 	ldr	r3, [fp, #-8]
    11cc:	e5823000 	str	r3, [r2]
    11d0:	e1a00000 	nop			@ (mov r0, r0)
    11d4:	e28bd000 	add	sp, fp, #0
    11d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11dc:	e12fff1e 	bx	lr
    11e0:	00001570 	.word	0x00001570

000011e4 <morecore>:
    11e4:	e92d4800 	push	{fp, lr}
    11e8:	e28db004 	add	fp, sp, #4
    11ec:	e24dd010 	sub	sp, sp, #16
    11f0:	e50b0010 	str	r0, [fp, #-16]
    11f4:	e51b3010 	ldr	r3, [fp, #-16]
    11f8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    11fc:	2a000001 	bcs	1208 <morecore+0x24>
    1200:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1204:	e50b3010 	str	r3, [fp, #-16]
    1208:	e51b3010 	ldr	r3, [fp, #-16]
    120c:	e1a03183 	lsl	r3, r3, #3
    1210:	e1a00003 	mov	r0, r3
    1214:	ebfffe6a 	bl	bc4 <sbrk>
    1218:	e50b0008 	str	r0, [fp, #-8]
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e3730001 	cmn	r3, #1
    1224:	1a000001 	bne	1230 <morecore+0x4c>
    1228:	e3a03000 	mov	r3, #0
    122c:	ea00000a 	b	125c <morecore+0x78>
    1230:	e51b3008 	ldr	r3, [fp, #-8]
    1234:	e50b300c 	str	r3, [fp, #-12]
    1238:	e51b300c 	ldr	r3, [fp, #-12]
    123c:	e51b2010 	ldr	r2, [fp, #-16]
    1240:	e5832004 	str	r2, [r3, #4]
    1244:	e51b300c 	ldr	r3, [fp, #-12]
    1248:	e2833008 	add	r3, r3, #8
    124c:	e1a00003 	mov	r0, r3
    1250:	ebffff84 	bl	1068 <free>
    1254:	e59f300c 	ldr	r3, [pc, #12]	@ 1268 <morecore+0x84>
    1258:	e5933000 	ldr	r3, [r3]
    125c:	e1a00003 	mov	r0, r3
    1260:	e24bd004 	sub	sp, fp, #4
    1264:	e8bd8800 	pop	{fp, pc}
    1268:	00001570 	.word	0x00001570

0000126c <malloc>:
    126c:	e92d4800 	push	{fp, lr}
    1270:	e28db004 	add	fp, sp, #4
    1274:	e24dd018 	sub	sp, sp, #24
    1278:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    127c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1280:	e2833007 	add	r3, r3, #7
    1284:	e1a031a3 	lsr	r3, r3, #3
    1288:	e2833001 	add	r3, r3, #1
    128c:	e50b3010 	str	r3, [fp, #-16]
    1290:	e59f3134 	ldr	r3, [pc, #308]	@ 13cc <malloc+0x160>
    1294:	e5933000 	ldr	r3, [r3]
    1298:	e50b300c 	str	r3, [fp, #-12]
    129c:	e51b300c 	ldr	r3, [fp, #-12]
    12a0:	e3530000 	cmp	r3, #0
    12a4:	1a00000b 	bne	12d8 <malloc+0x6c>
    12a8:	e59f3120 	ldr	r3, [pc, #288]	@ 13d0 <malloc+0x164>
    12ac:	e50b300c 	str	r3, [fp, #-12]
    12b0:	e59f2114 	ldr	r2, [pc, #276]	@ 13cc <malloc+0x160>
    12b4:	e51b300c 	ldr	r3, [fp, #-12]
    12b8:	e5823000 	str	r3, [r2]
    12bc:	e59f3108 	ldr	r3, [pc, #264]	@ 13cc <malloc+0x160>
    12c0:	e5933000 	ldr	r3, [r3]
    12c4:	e59f2104 	ldr	r2, [pc, #260]	@ 13d0 <malloc+0x164>
    12c8:	e5823000 	str	r3, [r2]
    12cc:	e59f30fc 	ldr	r3, [pc, #252]	@ 13d0 <malloc+0x164>
    12d0:	e3a02000 	mov	r2, #0
    12d4:	e5832004 	str	r2, [r3, #4]
    12d8:	e51b300c 	ldr	r3, [fp, #-12]
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e50b3008 	str	r3, [fp, #-8]
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5933004 	ldr	r3, [r3, #4]
    12ec:	e51b2010 	ldr	r2, [fp, #-16]
    12f0:	e1520003 	cmp	r2, r3
    12f4:	8a00001e 	bhi	1374 <malloc+0x108>
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5933004 	ldr	r3, [r3, #4]
    1300:	e51b2010 	ldr	r2, [fp, #-16]
    1304:	e1520003 	cmp	r2, r3
    1308:	1a000004 	bne	1320 <malloc+0xb4>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5932000 	ldr	r2, [r3]
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e5832000 	str	r2, [r3]
    131c:	ea00000e 	b	135c <malloc+0xf0>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5932004 	ldr	r2, [r3, #4]
    1328:	e51b3010 	ldr	r3, [fp, #-16]
    132c:	e0422003 	sub	r2, r2, r3
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5832004 	str	r2, [r3, #4]
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933004 	ldr	r3, [r3, #4]
    1340:	e1a03183 	lsl	r3, r3, #3
    1344:	e51b2008 	ldr	r2, [fp, #-8]
    1348:	e0823003 	add	r3, r2, r3
    134c:	e50b3008 	str	r3, [fp, #-8]
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e51b2010 	ldr	r2, [fp, #-16]
    1358:	e5832004 	str	r2, [r3, #4]
    135c:	e59f2068 	ldr	r2, [pc, #104]	@ 13cc <malloc+0x160>
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5823000 	str	r3, [r2]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e2833008 	add	r3, r3, #8
    1370:	ea000012 	b	13c0 <malloc+0x154>
    1374:	e59f3050 	ldr	r3, [pc, #80]	@ 13cc <malloc+0x160>
    1378:	e5933000 	ldr	r3, [r3]
    137c:	e51b2008 	ldr	r2, [fp, #-8]
    1380:	e1520003 	cmp	r2, r3
    1384:	1a000007 	bne	13a8 <malloc+0x13c>
    1388:	e51b0010 	ldr	r0, [fp, #-16]
    138c:	ebffff94 	bl	11e4 <morecore>
    1390:	e50b0008 	str	r0, [fp, #-8]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e3530000 	cmp	r3, #0
    139c:	1a000001 	bne	13a8 <malloc+0x13c>
    13a0:	e3a03000 	mov	r3, #0
    13a4:	ea000005 	b	13c0 <malloc+0x154>
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e50b300c 	str	r3, [fp, #-12]
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5933000 	ldr	r3, [r3]
    13b8:	e50b3008 	str	r3, [fp, #-8]
    13bc:	eaffffc8 	b	12e4 <malloc+0x78>
    13c0:	e1a00003 	mov	r0, r3
    13c4:	e24bd004 	sub	sp, fp, #4
    13c8:	e8bd8800 	pop	{fp, pc}
    13cc:	00001570 	.word	0x00001570
    13d0:	00001568 	.word	0x00001568

000013d4 <__udivsi3>:
    13d4:	e2512001 	subs	r2, r1, #1
    13d8:	012fff1e 	bxeq	lr
    13dc:	3a000036 	bcc	14bc <__udivsi3+0xe8>
    13e0:	e1500001 	cmp	r0, r1
    13e4:	9a000022 	bls	1474 <__udivsi3+0xa0>
    13e8:	e1110002 	tst	r1, r2
    13ec:	0a000023 	beq	1480 <__udivsi3+0xac>
    13f0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    13f4:	01a01181 	lsleq	r1, r1, #3
    13f8:	03a03008 	moveq	r3, #8
    13fc:	13a03001 	movne	r3, #1
    1400:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1404:	31510000 	cmpcc	r1, r0
    1408:	31a01201 	lslcc	r1, r1, #4
    140c:	31a03203 	lslcc	r3, r3, #4
    1410:	3afffffa 	bcc	1400 <__udivsi3+0x2c>
    1414:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1418:	31510000 	cmpcc	r1, r0
    141c:	31a01081 	lslcc	r1, r1, #1
    1420:	31a03083 	lslcc	r3, r3, #1
    1424:	3afffffa 	bcc	1414 <__udivsi3+0x40>
    1428:	e3a02000 	mov	r2, #0
    142c:	e1500001 	cmp	r0, r1
    1430:	20400001 	subcs	r0, r0, r1
    1434:	21822003 	orrcs	r2, r2, r3
    1438:	e15000a1 	cmp	r0, r1, lsr #1
    143c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1440:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1444:	e1500121 	cmp	r0, r1, lsr #2
    1448:	20400121 	subcs	r0, r0, r1, lsr #2
    144c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1450:	e15001a1 	cmp	r0, r1, lsr #3
    1454:	204001a1 	subcs	r0, r0, r1, lsr #3
    1458:	218221a3 	orrcs	r2, r2, r3, lsr #3
    145c:	e3500000 	cmp	r0, #0
    1460:	11b03223 	lsrsne	r3, r3, #4
    1464:	11a01221 	lsrne	r1, r1, #4
    1468:	1affffef 	bne	142c <__udivsi3+0x58>
    146c:	e1a00002 	mov	r0, r2
    1470:	e12fff1e 	bx	lr
    1474:	03a00001 	moveq	r0, #1
    1478:	13a00000 	movne	r0, #0
    147c:	e12fff1e 	bx	lr
    1480:	e3510801 	cmp	r1, #65536	@ 0x10000
    1484:	21a01821 	lsrcs	r1, r1, #16
    1488:	23a02010 	movcs	r2, #16
    148c:	33a02000 	movcc	r2, #0
    1490:	e3510c01 	cmp	r1, #256	@ 0x100
    1494:	21a01421 	lsrcs	r1, r1, #8
    1498:	22822008 	addcs	r2, r2, #8
    149c:	e3510010 	cmp	r1, #16
    14a0:	21a01221 	lsrcs	r1, r1, #4
    14a4:	22822004 	addcs	r2, r2, #4
    14a8:	e3510004 	cmp	r1, #4
    14ac:	82822003 	addhi	r2, r2, #3
    14b0:	908220a1 	addls	r2, r2, r1, lsr #1
    14b4:	e1a00230 	lsr	r0, r0, r2
    14b8:	e12fff1e 	bx	lr
    14bc:	e3500000 	cmp	r0, #0
    14c0:	13e00000 	mvnne	r0, #0
    14c4:	ea000007 	b	14e8 <__aeabi_idiv0>

000014c8 <__aeabi_uidivmod>:
    14c8:	e3510000 	cmp	r1, #0
    14cc:	0afffffa 	beq	14bc <__udivsi3+0xe8>
    14d0:	e92d4003 	push	{r0, r1, lr}
    14d4:	ebffffbe 	bl	13d4 <__udivsi3>
    14d8:	e8bd4006 	pop	{r1, r2, lr}
    14dc:	e0030092 	mul	r3, r2, r0
    14e0:	e0411003 	sub	r1, r1, r3
    14e4:	e12fff1e 	bx	lr

000014e8 <__aeabi_idiv0>:
    14e8:	e12fff1e 	bx	lr
