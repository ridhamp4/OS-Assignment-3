
_sleepcheck:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde52 	sub	sp, sp, #1312	@ 0x520
       c:	e24dd008 	sub	sp, sp, #8
      10:	e50b0520 	str	r0, [fp, #-1312]	@ 0xfffffae0
      14:	e50b1524 	str	r1, [fp, #-1316]	@ 0xfffffadc
      18:	e59f11f4 	ldr	r1, [pc, #500]	@ 214 <main+0x214>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000325 	bl	cbc <printf>
      24:	eb0001e7 	bl	7c8 <fork>
      28:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      30:	e3530000 	cmp	r3, #0
      34:	1a000023 	bne	c8 <main+0xc8>
      38:	eb00027b 	bl	a2c <getpid>
      3c:	e1a03000 	mov	r3, r0
      40:	e3a01001 	mov	r1, #1
      44:	e1a00003 	mov	r0, r3
      48:	eb0002a4 	bl	ae0 <settickets>
      4c:	eb000276 	bl	a2c <getpid>
      50:	e1a03000 	mov	r3, r0
      54:	e1a02003 	mov	r2, r3
      58:	e59f11b8 	ldr	r1, [pc, #440]	@ 218 <main+0x218>
      5c:	e3a00001 	mov	r0, #1
      60:	eb000315 	bl	cbc <printf>
      64:	e3a00032 	mov	r0, #50	@ 0x32
      68:	eb000281 	bl	a74 <sleep>
      6c:	eb00026e 	bl	a2c <getpid>
      70:	e1a03000 	mov	r3, r0
      74:	e1a02003 	mov	r2, r3
      78:	e59f119c 	ldr	r1, [pc, #412]	@ 21c <main+0x21c>
      7c:	e3a00001 	mov	r0, #1
      80:	eb00030d 	bl	cbc <printf>
      84:	e3a03000 	mov	r3, #0
      88:	e50b3518 	str	r3, [fp, #-1304]	@ 0xfffffae8
      8c:	e3a03000 	mov	r3, #0
      90:	e50b3008 	str	r3, [fp, #-8]
      94:	ea000006 	b	b4 <main+0xb4>
      98:	e51b2518 	ldr	r2, [fp, #-1304]	@ 0xfffffae8
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e0823003 	add	r3, r2, r3
      a4:	e50b3518 	str	r3, [fp, #-1304]	@ 0xfffffae8
      a8:	e51b3008 	ldr	r3, [fp, #-8]
      ac:	e2833001 	add	r3, r3, #1
      b0:	e50b3008 	str	r3, [fp, #-8]
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e59f2160 	ldr	r2, [pc, #352]	@ 220 <main+0x220>
      bc:	e1530002 	cmp	r3, r2
      c0:	dafffff4 	ble	98 <main+0x98>
      c4:	eb0001c8 	bl	7ec <exit>
      c8:	e3a03000 	mov	r3, #0
      cc:	e50b300c 	str	r3, [fp, #-12]
      d0:	ea000047 	b	1f4 <main+0x1f4>
      d4:	e3a00014 	mov	r0, #20
      d8:	eb000265 	bl	a74 <sleep>
      dc:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
      e0:	e2433004 	sub	r3, r3, #4
      e4:	e1a00003 	mov	r0, r3
      e8:	eb00028e 	bl	b28 <getpinfo>
      ec:	e1a03000 	mov	r3, r0
      f0:	e3530000 	cmp	r3, #0
      f4:	1a00003b 	bne	1e8 <main+0x1e8>
      f8:	e51b200c 	ldr	r2, [fp, #-12]
      fc:	e59f1120 	ldr	r1, [pc, #288]	@ 224 <main+0x224>
     100:	e3a00001 	mov	r0, #1
     104:	eb0002ec 	bl	cbc <printf>
     108:	e3a03000 	mov	r3, #0
     10c:	e50b3010 	str	r3, [fp, #-16]
     110:	ea000031 	b	1dc <main+0x1dc>
     114:	e51b3010 	ldr	r3, [fp, #-16]
     118:	e1a03103 	lsl	r3, r3, #2
     11c:	e2433004 	sub	r3, r3, #4
     120:	e083300b 	add	r3, r3, fp
     124:	e5133510 	ldr	r3, [r3, #-1296]	@ 0xfffffaf0
     128:	e3530000 	cmp	r3, #0
     12c:	0a000027 	beq	1d0 <main+0x1d0>
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e2833040 	add	r3, r3, #64	@ 0x40
     138:	e1a03103 	lsl	r3, r3, #2
     13c:	e2433004 	sub	r3, r3, #4
     140:	e083300b 	add	r3, r3, fp
     144:	e5133510 	ldr	r3, [r3, #-1296]	@ 0xfffffaf0
     148:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     14c:	e1520003 	cmp	r2, r3
     150:	1a00001e 	bne	1d0 <main+0x1d0>
     154:	e51b3010 	ldr	r3, [fp, #-16]
     158:	e2833040 	add	r3, r3, #64	@ 0x40
     15c:	e1a03103 	lsl	r3, r3, #2
     160:	e2433004 	sub	r3, r3, #4
     164:	e083300b 	add	r3, r3, fp
     168:	e5131510 	ldr	r1, [r3, #-1296]	@ 0xfffffaf0
     16c:	e51b3010 	ldr	r3, [fp, #-16]
     170:	e2833080 	add	r3, r3, #128	@ 0x80
     174:	e1a03103 	lsl	r3, r3, #2
     178:	e2433004 	sub	r3, r3, #4
     17c:	e083300b 	add	r3, r3, fp
     180:	e5130510 	ldr	r0, [r3, #-1296]	@ 0xfffffaf0
     184:	e51b3010 	ldr	r3, [fp, #-16]
     188:	e28330c0 	add	r3, r3, #192	@ 0xc0
     18c:	e1a03103 	lsl	r3, r3, #2
     190:	e2433004 	sub	r3, r3, #4
     194:	e083300b 	add	r3, r3, fp
     198:	e5132510 	ldr	r2, [r3, #-1296]	@ 0xfffffaf0
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e2833c01 	add	r3, r3, #256	@ 0x100
     1a4:	e1a03103 	lsl	r3, r3, #2
     1a8:	e2433004 	sub	r3, r3, #4
     1ac:	e083300b 	add	r3, r3, fp
     1b0:	e5133510 	ldr	r3, [r3, #-1296]	@ 0xfffffaf0
     1b4:	e58d3004 	str	r3, [sp, #4]
     1b8:	e58d2000 	str	r2, [sp]
     1bc:	e1a03000 	mov	r3, r0
     1c0:	e1a02001 	mov	r2, r1
     1c4:	e59f105c 	ldr	r1, [pc, #92]	@ 228 <main+0x228>
     1c8:	e3a00001 	mov	r0, #1
     1cc:	eb0002ba 	bl	cbc <printf>
     1d0:	e51b3010 	ldr	r3, [fp, #-16]
     1d4:	e2833001 	add	r3, r3, #1
     1d8:	e50b3010 	str	r3, [fp, #-16]
     1dc:	e51b3010 	ldr	r3, [fp, #-16]
     1e0:	e353003f 	cmp	r3, #63	@ 0x3f
     1e4:	daffffca 	ble	114 <main+0x114>
     1e8:	e51b300c 	ldr	r3, [fp, #-12]
     1ec:	e2833001 	add	r3, r3, #1
     1f0:	e50b300c 	str	r3, [fp, #-12]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e353000e 	cmp	r3, #14
     1fc:	daffffb4 	ble	d4 <main+0xd4>
     200:	eb000182 	bl	810 <wait>
     204:	e59f1020 	ldr	r1, [pc, #32]	@ 22c <main+0x22c>
     208:	e3a00001 	mov	r0, #1
     20c:	eb0002aa 	bl	cbc <printf>
     210:	eb000175 	bl	7ec <exit>
     214:	00001378 	.word	0x00001378
     218:	00001398 	.word	0x00001398
     21c:	000013bc 	.word	0x000013bc
     220:	0bebc1ff 	.word	0x0bebc1ff
     224:	000013f8 	.word	0x000013f8
     228:	0000140c 	.word	0x0000140c
     22c:	0000143c 	.word	0x0000143c

00000230 <strcpy>:
     230:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     234:	e28db000 	add	fp, sp, #0
     238:	e24dd014 	sub	sp, sp, #20
     23c:	e50b0010 	str	r0, [fp, #-16]
     240:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     244:	e51b3010 	ldr	r3, [fp, #-16]
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e1a00000 	nop			@ (mov r0, r0)
     250:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     254:	e2823001 	add	r3, r2, #1
     258:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     25c:	e51b3010 	ldr	r3, [fp, #-16]
     260:	e2831001 	add	r1, r3, #1
     264:	e50b1010 	str	r1, [fp, #-16]
     268:	e5d22000 	ldrb	r2, [r2]
     26c:	e5c32000 	strb	r2, [r3]
     270:	e5d33000 	ldrb	r3, [r3]
     274:	e3530000 	cmp	r3, #0
     278:	1afffff4 	bne	250 <strcpy+0x20>
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e1a00003 	mov	r0, r3
     284:	e28bd000 	add	sp, fp, #0
     288:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     28c:	e12fff1e 	bx	lr

00000290 <strncmp>:
     290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     294:	e28db000 	add	fp, sp, #0
     298:	e24dd014 	sub	sp, sp, #20
     29c:	e50b0008 	str	r0, [fp, #-8]
     2a0:	e50b100c 	str	r1, [fp, #-12]
     2a4:	e50b2010 	str	r2, [fp, #-16]
     2a8:	ea000008 	b	2d0 <strncmp+0x40>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e2833001 	add	r3, r3, #1
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	e51b300c 	ldr	r3, [fp, #-12]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b300c 	str	r3, [fp, #-12]
     2c4:	e51b3010 	ldr	r3, [fp, #-16]
     2c8:	e2433001 	sub	r3, r3, #1
     2cc:	e50b3010 	str	r3, [fp, #-16]
     2d0:	e51b3010 	ldr	r3, [fp, #-16]
     2d4:	e3530000 	cmp	r3, #0
     2d8:	da00000d 	ble	314 <strncmp+0x84>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e5d33000 	ldrb	r3, [r3]
     2e4:	e3530000 	cmp	r3, #0
     2e8:	0a000009 	beq	314 <strncmp+0x84>
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e3530000 	cmp	r3, #0
     2f8:	0a000005 	beq	314 <strncmp+0x84>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e5d32000 	ldrb	r2, [r3]
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1520003 	cmp	r2, r3
     310:	0affffe5 	beq	2ac <strncmp+0x1c>
     314:	e51b3010 	ldr	r3, [fp, #-16]
     318:	e3530000 	cmp	r3, #0
     31c:	1a000001 	bne	328 <strncmp+0x98>
     320:	e3a03000 	mov	r3, #0
     324:	ea000005 	b	340 <strncmp+0xb0>
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e1a02003 	mov	r2, r3
     334:	e51b300c 	ldr	r3, [fp, #-12]
     338:	e5d33000 	ldrb	r3, [r3]
     33c:	e0423003 	sub	r3, r2, r3
     340:	e1a00003 	mov	r0, r3
     344:	e28bd000 	add	sp, fp, #0
     348:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     34c:	e12fff1e 	bx	lr

00000350 <strcmp>:
     350:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     354:	e28db000 	add	fp, sp, #0
     358:	e24dd00c 	sub	sp, sp, #12
     35c:	e50b0008 	str	r0, [fp, #-8]
     360:	e50b100c 	str	r1, [fp, #-12]
     364:	ea000005 	b	380 <strcmp+0x30>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2833001 	add	r3, r3, #1
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	e51b300c 	ldr	r3, [fp, #-12]
     378:	e2833001 	add	r3, r3, #1
     37c:	e50b300c 	str	r3, [fp, #-12]
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e5d33000 	ldrb	r3, [r3]
     388:	e3530000 	cmp	r3, #0
     38c:	0a000005 	beq	3a8 <strcmp+0x58>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e5d32000 	ldrb	r2, [r3]
     398:	e51b300c 	ldr	r3, [fp, #-12]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e1520003 	cmp	r2, r3
     3a4:	0affffef 	beq	368 <strcmp+0x18>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e5d33000 	ldrb	r3, [r3]
     3b0:	e1a02003 	mov	r2, r3
     3b4:	e51b300c 	ldr	r3, [fp, #-12]
     3b8:	e5d33000 	ldrb	r3, [r3]
     3bc:	e0423003 	sub	r3, r2, r3
     3c0:	e1a00003 	mov	r0, r3
     3c4:	e28bd000 	add	sp, fp, #0
     3c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3cc:	e12fff1e 	bx	lr

000003d0 <strlen>:
     3d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d4:	e28db000 	add	fp, sp, #0
     3d8:	e24dd014 	sub	sp, sp, #20
     3dc:	e50b0010 	str	r0, [fp, #-16]
     3e0:	e3a03000 	mov	r3, #0
     3e4:	e50b3008 	str	r3, [fp, #-8]
     3e8:	ea000002 	b	3f8 <strlen+0x28>
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	e51b2010 	ldr	r2, [fp, #-16]
     400:	e0823003 	add	r3, r2, r3
     404:	e5d33000 	ldrb	r3, [r3]
     408:	e3530000 	cmp	r3, #0
     40c:	1afffff6 	bne	3ec <strlen+0x1c>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e1a00003 	mov	r0, r3
     418:	e28bd000 	add	sp, fp, #0
     41c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     420:	e12fff1e 	bx	lr

00000424 <memset>:
     424:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     428:	e28db000 	add	fp, sp, #0
     42c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     430:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     434:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     438:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     43c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     440:	e50b3008 	str	r3, [fp, #-8]
     444:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     448:	e54b300d 	strb	r3, [fp, #-13]
     44c:	e55b200d 	ldrb	r2, [fp, #-13]
     450:	e1a03002 	mov	r3, r2
     454:	e1a03403 	lsl	r3, r3, #8
     458:	e0833002 	add	r3, r3, r2
     45c:	e1a03803 	lsl	r3, r3, #16
     460:	e1a02003 	mov	r2, r3
     464:	e55b300d 	ldrb	r3, [fp, #-13]
     468:	e1a03403 	lsl	r3, r3, #8
     46c:	e1822003 	orr	r2, r2, r3
     470:	e55b300d 	ldrb	r3, [fp, #-13]
     474:	e1823003 	orr	r3, r2, r3
     478:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     47c:	ea000008 	b	4a4 <memset+0x80>
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e55b200d 	ldrb	r2, [fp, #-13]
     488:	e5c32000 	strb	r2, [r3]
     48c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     490:	e2433001 	sub	r3, r3, #1
     494:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e2833001 	add	r3, r3, #1
     4a0:	e50b3008 	str	r3, [fp, #-8]
     4a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4a8:	e3530000 	cmp	r3, #0
     4ac:	0a000003 	beq	4c0 <memset+0x9c>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e2033003 	and	r3, r3, #3
     4b8:	e3530000 	cmp	r3, #0
     4bc:	1affffef 	bne	480 <memset+0x5c>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e50b300c 	str	r3, [fp, #-12]
     4c8:	ea000008 	b	4f0 <memset+0xcc>
     4cc:	e51b300c 	ldr	r3, [fp, #-12]
     4d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4d4:	e5832000 	str	r2, [r3]
     4d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4dc:	e2433004 	sub	r3, r3, #4
     4e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4e4:	e51b300c 	ldr	r3, [fp, #-12]
     4e8:	e2833004 	add	r3, r3, #4
     4ec:	e50b300c 	str	r3, [fp, #-12]
     4f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4f4:	e3530003 	cmp	r3, #3
     4f8:	8afffff3 	bhi	4cc <memset+0xa8>
     4fc:	e51b300c 	ldr	r3, [fp, #-12]
     500:	e50b3008 	str	r3, [fp, #-8]
     504:	ea000008 	b	52c <memset+0x108>
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e55b200d 	ldrb	r2, [fp, #-13]
     510:	e5c32000 	strb	r2, [r3]
     514:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     518:	e2433001 	sub	r3, r3, #1
     51c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e2833001 	add	r3, r3, #1
     528:	e50b3008 	str	r3, [fp, #-8]
     52c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     530:	e3530000 	cmp	r3, #0
     534:	1afffff3 	bne	508 <memset+0xe4>
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e1a00003 	mov	r0, r3
     540:	e28bd000 	add	sp, fp, #0
     544:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     548:	e12fff1e 	bx	lr

0000054c <strchr>:
     54c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     550:	e28db000 	add	fp, sp, #0
     554:	e24dd00c 	sub	sp, sp, #12
     558:	e50b0008 	str	r0, [fp, #-8]
     55c:	e1a03001 	mov	r3, r1
     560:	e54b3009 	strb	r3, [fp, #-9]
     564:	ea000009 	b	590 <strchr+0x44>
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e5d33000 	ldrb	r3, [r3]
     570:	e55b2009 	ldrb	r2, [fp, #-9]
     574:	e1520003 	cmp	r2, r3
     578:	1a000001 	bne	584 <strchr+0x38>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	ea000007 	b	5a4 <strchr+0x58>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2833001 	add	r3, r3, #1
     58c:	e50b3008 	str	r3, [fp, #-8]
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	e5d33000 	ldrb	r3, [r3]
     598:	e3530000 	cmp	r3, #0
     59c:	1afffff1 	bne	568 <strchr+0x1c>
     5a0:	e3a03000 	mov	r3, #0
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <gets>:
     5b4:	e92d4800 	push	{fp, lr}
     5b8:	e28db004 	add	fp, sp, #4
     5bc:	e24dd018 	sub	sp, sp, #24
     5c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5c4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5c8:	e3a03000 	mov	r3, #0
     5cc:	e50b3008 	str	r3, [fp, #-8]
     5d0:	ea000016 	b	630 <gets+0x7c>
     5d4:	e24b300d 	sub	r3, fp, #13
     5d8:	e3a02001 	mov	r2, #1
     5dc:	e1a01003 	mov	r1, r3
     5e0:	e3a00000 	mov	r0, #0
     5e4:	eb00009b 	bl	858 <read>
     5e8:	e50b000c 	str	r0, [fp, #-12]
     5ec:	e51b300c 	ldr	r3, [fp, #-12]
     5f0:	e3530000 	cmp	r3, #0
     5f4:	da000013 	ble	648 <gets+0x94>
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	e2832001 	add	r2, r3, #1
     600:	e50b2008 	str	r2, [fp, #-8]
     604:	e1a02003 	mov	r2, r3
     608:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     60c:	e0833002 	add	r3, r3, r2
     610:	e55b200d 	ldrb	r2, [fp, #-13]
     614:	e5c32000 	strb	r2, [r3]
     618:	e55b300d 	ldrb	r3, [fp, #-13]
     61c:	e353000a 	cmp	r3, #10
     620:	0a000009 	beq	64c <gets+0x98>
     624:	e55b300d 	ldrb	r3, [fp, #-13]
     628:	e353000d 	cmp	r3, #13
     62c:	0a000006 	beq	64c <gets+0x98>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e2833001 	add	r3, r3, #1
     638:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     63c:	e1520003 	cmp	r2, r3
     640:	caffffe3 	bgt	5d4 <gets+0x20>
     644:	ea000000 	b	64c <gets+0x98>
     648:	e1a00000 	nop			@ (mov r0, r0)
     64c:	e51b3008 	ldr	r3, [fp, #-8]
     650:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     654:	e0823003 	add	r3, r2, r3
     658:	e3a02000 	mov	r2, #0
     65c:	e5c32000 	strb	r2, [r3]
     660:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     664:	e1a00003 	mov	r0, r3
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}

00000670 <stat>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e24dd010 	sub	sp, sp, #16
     67c:	e50b0010 	str	r0, [fp, #-16]
     680:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     684:	e3a01000 	mov	r1, #0
     688:	e51b0010 	ldr	r0, [fp, #-16]
     68c:	eb00009e 	bl	90c <open>
     690:	e50b0008 	str	r0, [fp, #-8]
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e3530000 	cmp	r3, #0
     69c:	aa000001 	bge	6a8 <stat+0x38>
     6a0:	e3e03000 	mvn	r3, #0
     6a4:	ea000006 	b	6c4 <stat+0x54>
     6a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     6ac:	e51b0008 	ldr	r0, [fp, #-8]
     6b0:	eb0000b0 	bl	978 <fstat>
     6b4:	e50b000c 	str	r0, [fp, #-12]
     6b8:	e51b0008 	ldr	r0, [fp, #-8]
     6bc:	eb000077 	bl	8a0 <close>
     6c0:	e51b300c 	ldr	r3, [fp, #-12]
     6c4:	e1a00003 	mov	r0, r3
     6c8:	e24bd004 	sub	sp, fp, #4
     6cc:	e8bd8800 	pop	{fp, pc}

000006d0 <atoi>:
     6d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d4:	e28db000 	add	fp, sp, #0
     6d8:	e24dd014 	sub	sp, sp, #20
     6dc:	e50b0010 	str	r0, [fp, #-16]
     6e0:	e3a03000 	mov	r3, #0
     6e4:	e50b3008 	str	r3, [fp, #-8]
     6e8:	ea00000c 	b	720 <atoi+0x50>
     6ec:	e51b2008 	ldr	r2, [fp, #-8]
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a03103 	lsl	r3, r3, #2
     6f8:	e0833002 	add	r3, r3, r2
     6fc:	e1a03083 	lsl	r3, r3, #1
     700:	e1a01003 	mov	r1, r3
     704:	e51b3010 	ldr	r3, [fp, #-16]
     708:	e2832001 	add	r2, r3, #1
     70c:	e50b2010 	str	r2, [fp, #-16]
     710:	e5d33000 	ldrb	r3, [r3]
     714:	e0813003 	add	r3, r1, r3
     718:	e2433030 	sub	r3, r3, #48	@ 0x30
     71c:	e50b3008 	str	r3, [fp, #-8]
     720:	e51b3010 	ldr	r3, [fp, #-16]
     724:	e5d33000 	ldrb	r3, [r3]
     728:	e353002f 	cmp	r3, #47	@ 0x2f
     72c:	9a000003 	bls	740 <atoi+0x70>
     730:	e51b3010 	ldr	r3, [fp, #-16]
     734:	e5d33000 	ldrb	r3, [r3]
     738:	e3530039 	cmp	r3, #57	@ 0x39
     73c:	9affffea 	bls	6ec <atoi+0x1c>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e1a00003 	mov	r0, r3
     748:	e28bd000 	add	sp, fp, #0
     74c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <memmove>:
     754:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     758:	e28db000 	add	fp, sp, #0
     75c:	e24dd01c 	sub	sp, sp, #28
     760:	e50b0010 	str	r0, [fp, #-16]
     764:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     768:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     76c:	e51b3010 	ldr	r3, [fp, #-16]
     770:	e50b3008 	str	r3, [fp, #-8]
     774:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     778:	e50b300c 	str	r3, [fp, #-12]
     77c:	ea000007 	b	7a0 <memmove+0x4c>
     780:	e51b200c 	ldr	r2, [fp, #-12]
     784:	e2823001 	add	r3, r2, #1
     788:	e50b300c 	str	r3, [fp, #-12]
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e2831001 	add	r1, r3, #1
     794:	e50b1008 	str	r1, [fp, #-8]
     798:	e5d22000 	ldrb	r2, [r2]
     79c:	e5c32000 	strb	r2, [r3]
     7a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7a4:	e2432001 	sub	r2, r3, #1
     7a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7ac:	e3530000 	cmp	r3, #0
     7b0:	cafffff2 	bgt	780 <memmove+0x2c>
     7b4:	e51b3010 	ldr	r3, [fp, #-16]
     7b8:	e1a00003 	mov	r0, r3
     7bc:	e28bd000 	add	sp, fp, #0
     7c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <fork>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00001 	mov	r0, #1
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <exit>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00002 	mov	r0, #2
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <wait>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00003 	mov	r0, #3
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <pipe>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a00004 	mov	r0, #4
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <read>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00005 	mov	r0, #5
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <write>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00010 	mov	r0, #16
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <close>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00015 	mov	r0, #21
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <kill>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00006 	mov	r0, #6
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <exec>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00007 	mov	r0, #7
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <open>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a0000f 	mov	r0, #15
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <mknod>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00011 	mov	r0, #17
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <unlink>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00012 	mov	r0, #18
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <fstat>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00008 	mov	r0, #8
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <link>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00013 	mov	r0, #19
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <mkdir>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00014 	mov	r0, #20
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <chdir>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00009 	mov	r0, #9
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <dup>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a0000a 	mov	r0, #10
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <getpid>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a0000b 	mov	r0, #11
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <sbrk>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a0000c 	mov	r0, #12
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <sleep>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a0000d 	mov	r0, #13
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <uptime>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a0000e 	mov	r0, #14
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <ps>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00016 	mov	r0, #22
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <settickets>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00017 	mov	r0, #23
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <srand>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00018 	mov	r0, #24
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <getpinfo>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00019 	mov	r0, #25
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <putc>:
     b4c:	e92d4800 	push	{fp, lr}
     b50:	e28db004 	add	fp, sp, #4
     b54:	e24dd008 	sub	sp, sp, #8
     b58:	e50b0008 	str	r0, [fp, #-8]
     b5c:	e1a03001 	mov	r3, r1
     b60:	e54b3009 	strb	r3, [fp, #-9]
     b64:	e24b3009 	sub	r3, fp, #9
     b68:	e3a02001 	mov	r2, #1
     b6c:	e1a01003 	mov	r1, r3
     b70:	e51b0008 	ldr	r0, [fp, #-8]
     b74:	ebffff40 	bl	87c <write>
     b78:	e1a00000 	nop			@ (mov r0, r0)
     b7c:	e24bd004 	sub	sp, fp, #4
     b80:	e8bd8800 	pop	{fp, pc}

00000b84 <printint>:
     b84:	e92d4800 	push	{fp, lr}
     b88:	e28db004 	add	fp, sp, #4
     b8c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b90:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b94:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b98:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b9c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ba0:	e3a03000 	mov	r3, #0
     ba4:	e50b300c 	str	r3, [fp, #-12]
     ba8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     bac:	e3530000 	cmp	r3, #0
     bb0:	0a000008 	beq	bd8 <printint+0x54>
     bb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bb8:	e3530000 	cmp	r3, #0
     bbc:	aa000005 	bge	bd8 <printint+0x54>
     bc0:	e3a03001 	mov	r3, #1
     bc4:	e50b300c 	str	r3, [fp, #-12]
     bc8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bcc:	e2633000 	rsb	r3, r3, #0
     bd0:	e50b3010 	str	r3, [fp, #-16]
     bd4:	ea000001 	b	be0 <printint+0x5c>
     bd8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bdc:	e50b3010 	str	r3, [fp, #-16]
     be0:	e3a03000 	mov	r3, #0
     be4:	e50b3008 	str	r3, [fp, #-8]
     be8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     bec:	e51b3010 	ldr	r3, [fp, #-16]
     bf0:	e1a01002 	mov	r1, r2
     bf4:	e1a00003 	mov	r0, r3
     bf8:	eb0001d5 	bl	1354 <__aeabi_uidivmod>
     bfc:	e1a03001 	mov	r3, r1
     c00:	e1a01003 	mov	r1, r3
     c04:	e51b3008 	ldr	r3, [fp, #-8]
     c08:	e2832001 	add	r2, r3, #1
     c0c:	e50b2008 	str	r2, [fp, #-8]
     c10:	e59f20a0 	ldr	r2, [pc, #160]	@ cb8 <printint+0x134>
     c14:	e7d22001 	ldrb	r2, [r2, r1]
     c18:	e2433004 	sub	r3, r3, #4
     c1c:	e083300b 	add	r3, r3, fp
     c20:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c24:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c28:	e1a01003 	mov	r1, r3
     c2c:	e51b0010 	ldr	r0, [fp, #-16]
     c30:	eb00018a 	bl	1260 <__udivsi3>
     c34:	e1a03000 	mov	r3, r0
     c38:	e50b3010 	str	r3, [fp, #-16]
     c3c:	e51b3010 	ldr	r3, [fp, #-16]
     c40:	e3530000 	cmp	r3, #0
     c44:	1affffe7 	bne	be8 <printint+0x64>
     c48:	e51b300c 	ldr	r3, [fp, #-12]
     c4c:	e3530000 	cmp	r3, #0
     c50:	0a00000e 	beq	c90 <printint+0x10c>
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e2832001 	add	r2, r3, #1
     c5c:	e50b2008 	str	r2, [fp, #-8]
     c60:	e2433004 	sub	r3, r3, #4
     c64:	e083300b 	add	r3, r3, fp
     c68:	e3a0202d 	mov	r2, #45	@ 0x2d
     c6c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c70:	ea000006 	b	c90 <printint+0x10c>
     c74:	e24b2020 	sub	r2, fp, #32
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e0823003 	add	r3, r2, r3
     c80:	e5d33000 	ldrb	r3, [r3]
     c84:	e1a01003 	mov	r1, r3
     c88:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c8c:	ebffffae 	bl	b4c <putc>
     c90:	e51b3008 	ldr	r3, [fp, #-8]
     c94:	e2433001 	sub	r3, r3, #1
     c98:	e50b3008 	str	r3, [fp, #-8]
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e3530000 	cmp	r3, #0
     ca4:	aafffff2 	bge	c74 <printint+0xf0>
     ca8:	e1a00000 	nop			@ (mov r0, r0)
     cac:	e1a00000 	nop			@ (mov r0, r0)
     cb0:	e24bd004 	sub	sp, fp, #4
     cb4:	e8bd8800 	pop	{fp, pc}
     cb8:	00001460 	.word	0x00001460

00000cbc <printf>:
     cbc:	e92d000e 	push	{r1, r2, r3}
     cc0:	e92d4800 	push	{fp, lr}
     cc4:	e28db004 	add	fp, sp, #4
     cc8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ccc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cd0:	e3a03000 	mov	r3, #0
     cd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd8:	e28b3008 	add	r3, fp, #8
     cdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ce0:	e3a03000 	mov	r3, #0
     ce4:	e50b3010 	str	r3, [fp, #-16]
     ce8:	ea000074 	b	ec0 <printf+0x204>
     cec:	e59b2004 	ldr	r2, [fp, #4]
     cf0:	e51b3010 	ldr	r3, [fp, #-16]
     cf4:	e0823003 	add	r3, r2, r3
     cf8:	e5d33000 	ldrb	r3, [r3]
     cfc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d04:	e3530000 	cmp	r3, #0
     d08:	1a00000b 	bne	d3c <printf+0x80>
     d0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d10:	e3530025 	cmp	r3, #37	@ 0x25
     d14:	1a000002 	bne	d24 <printf+0x68>
     d18:	e3a03025 	mov	r3, #37	@ 0x25
     d1c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d20:	ea000063 	b	eb4 <printf+0x1f8>
     d24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d28:	e6ef3073 	uxtb	r3, r3
     d2c:	e1a01003 	mov	r1, r3
     d30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d34:	ebffff84 	bl	b4c <putc>
     d38:	ea00005d 	b	eb4 <printf+0x1f8>
     d3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d40:	e3530025 	cmp	r3, #37	@ 0x25
     d44:	1a00005a 	bne	eb4 <printf+0x1f8>
     d48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d4c:	e3530064 	cmp	r3, #100	@ 0x64
     d50:	1a00000a 	bne	d80 <printf+0xc4>
     d54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d58:	e5933000 	ldr	r3, [r3]
     d5c:	e1a01003 	mov	r1, r3
     d60:	e3a03001 	mov	r3, #1
     d64:	e3a0200a 	mov	r2, #10
     d68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d6c:	ebffff84 	bl	b84 <printint>
     d70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d74:	e2833004 	add	r3, r3, #4
     d78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d7c:	ea00004a 	b	eac <printf+0x1f0>
     d80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d84:	e3530078 	cmp	r3, #120	@ 0x78
     d88:	0a000002 	beq	d98 <printf+0xdc>
     d8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d90:	e3530070 	cmp	r3, #112	@ 0x70
     d94:	1a00000a 	bne	dc4 <printf+0x108>
     d98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e1a01003 	mov	r1, r3
     da4:	e3a03000 	mov	r3, #0
     da8:	e3a02010 	mov	r2, #16
     dac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db0:	ebffff73 	bl	b84 <printint>
     db4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db8:	e2833004 	add	r3, r3, #4
     dbc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dc0:	ea000039 	b	eac <printf+0x1f0>
     dc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dc8:	e3530073 	cmp	r3, #115	@ 0x73
     dcc:	1a000018 	bne	e34 <printf+0x178>
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e5933000 	ldr	r3, [r3]
     dd8:	e50b300c 	str	r3, [fp, #-12]
     ddc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de0:	e2833004 	add	r3, r3, #4
     de4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e3530000 	cmp	r3, #0
     df0:	1a00000a 	bne	e20 <printf+0x164>
     df4:	e59f30f4 	ldr	r3, [pc, #244]	@ ef0 <printf+0x234>
     df8:	e50b300c 	str	r3, [fp, #-12]
     dfc:	ea000007 	b	e20 <printf+0x164>
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e5d33000 	ldrb	r3, [r3]
     e08:	e1a01003 	mov	r1, r3
     e0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e10:	ebffff4d 	bl	b4c <putc>
     e14:	e51b300c 	ldr	r3, [fp, #-12]
     e18:	e2833001 	add	r3, r3, #1
     e1c:	e50b300c 	str	r3, [fp, #-12]
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e5d33000 	ldrb	r3, [r3]
     e28:	e3530000 	cmp	r3, #0
     e2c:	1afffff3 	bne	e00 <printf+0x144>
     e30:	ea00001d 	b	eac <printf+0x1f0>
     e34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e38:	e3530063 	cmp	r3, #99	@ 0x63
     e3c:	1a000009 	bne	e68 <printf+0x1ac>
     e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e6ef3073 	uxtb	r3, r3
     e4c:	e1a01003 	mov	r1, r3
     e50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e54:	ebffff3c 	bl	b4c <putc>
     e58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e5c:	e2833004 	add	r3, r3, #4
     e60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e64:	ea000010 	b	eac <printf+0x1f0>
     e68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e6c:	e3530025 	cmp	r3, #37	@ 0x25
     e70:	1a000005 	bne	e8c <printf+0x1d0>
     e74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e78:	e6ef3073 	uxtb	r3, r3
     e7c:	e1a01003 	mov	r1, r3
     e80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e84:	ebffff30 	bl	b4c <putc>
     e88:	ea000007 	b	eac <printf+0x1f0>
     e8c:	e3a01025 	mov	r1, #37	@ 0x25
     e90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e94:	ebffff2c 	bl	b4c <putc>
     e98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e9c:	e6ef3073 	uxtb	r3, r3
     ea0:	e1a01003 	mov	r1, r3
     ea4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea8:	ebffff27 	bl	b4c <putc>
     eac:	e3a03000 	mov	r3, #0
     eb0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     eb4:	e51b3010 	ldr	r3, [fp, #-16]
     eb8:	e2833001 	add	r3, r3, #1
     ebc:	e50b3010 	str	r3, [fp, #-16]
     ec0:	e59b2004 	ldr	r2, [fp, #4]
     ec4:	e51b3010 	ldr	r3, [fp, #-16]
     ec8:	e0823003 	add	r3, r2, r3
     ecc:	e5d33000 	ldrb	r3, [r3]
     ed0:	e3530000 	cmp	r3, #0
     ed4:	1affff84 	bne	cec <printf+0x30>
     ed8:	e1a00000 	nop			@ (mov r0, r0)
     edc:	e1a00000 	nop			@ (mov r0, r0)
     ee0:	e24bd004 	sub	sp, fp, #4
     ee4:	e8bd4800 	pop	{fp, lr}
     ee8:	e28dd00c 	add	sp, sp, #12
     eec:	e12fff1e 	bx	lr
     ef0:	00001458 	.word	0x00001458

00000ef4 <free>:
     ef4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ef8:	e28db000 	add	fp, sp, #0
     efc:	e24dd014 	sub	sp, sp, #20
     f00:	e50b0010 	str	r0, [fp, #-16]
     f04:	e51b3010 	ldr	r3, [fp, #-16]
     f08:	e2433008 	sub	r3, r3, #8
     f0c:	e50b300c 	str	r3, [fp, #-12]
     f10:	e59f3154 	ldr	r3, [pc, #340]	@ 106c <free+0x178>
     f14:	e5933000 	ldr	r3, [r3]
     f18:	e50b3008 	str	r3, [fp, #-8]
     f1c:	ea000010 	b	f64 <free+0x70>
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e51b2008 	ldr	r2, [fp, #-8]
     f2c:	e1520003 	cmp	r2, r3
     f30:	3a000008 	bcc	f58 <free+0x64>
     f34:	e51b200c 	ldr	r2, [fp, #-12]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e1520003 	cmp	r2, r3
     f40:	8a000010 	bhi	f88 <free+0x94>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e51b200c 	ldr	r2, [fp, #-12]
     f50:	e1520003 	cmp	r2, r3
     f54:	3a00000b 	bcc	f88 <free+0x94>
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e50b3008 	str	r3, [fp, #-8]
     f64:	e51b200c 	ldr	r2, [fp, #-12]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e1520003 	cmp	r2, r3
     f70:	9affffea 	bls	f20 <free+0x2c>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e51b200c 	ldr	r2, [fp, #-12]
     f80:	e1520003 	cmp	r2, r3
     f84:	2affffe5 	bcs	f20 <free+0x2c>
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5933004 	ldr	r3, [r3, #4]
     f90:	e1a03183 	lsl	r3, r3, #3
     f94:	e51b200c 	ldr	r2, [fp, #-12]
     f98:	e0822003 	add	r2, r2, r3
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e5933000 	ldr	r3, [r3]
     fa4:	e1520003 	cmp	r2, r3
     fa8:	1a00000d 	bne	fe4 <free+0xf0>
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e5932004 	ldr	r2, [r3, #4]
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e5933004 	ldr	r3, [r3, #4]
     fc0:	e0822003 	add	r2, r2, r3
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5832004 	str	r2, [r3, #4]
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e5932000 	ldr	r2, [r3]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5832000 	str	r2, [r3]
     fe0:	ea000003 	b	ff4 <free+0x100>
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5932000 	ldr	r2, [r3]
     fec:	e51b300c 	ldr	r3, [fp, #-12]
     ff0:	e5832000 	str	r2, [r3]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5933004 	ldr	r3, [r3, #4]
     ffc:	e1a03183 	lsl	r3, r3, #3
    1000:	e51b2008 	ldr	r2, [fp, #-8]
    1004:	e0823003 	add	r3, r2, r3
    1008:	e51b200c 	ldr	r2, [fp, #-12]
    100c:	e1520003 	cmp	r2, r3
    1010:	1a00000b 	bne	1044 <free+0x150>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5932004 	ldr	r2, [r3, #4]
    101c:	e51b300c 	ldr	r3, [fp, #-12]
    1020:	e5933004 	ldr	r3, [r3, #4]
    1024:	e0822003 	add	r2, r2, r3
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e5832004 	str	r2, [r3, #4]
    1030:	e51b300c 	ldr	r3, [fp, #-12]
    1034:	e5932000 	ldr	r2, [r3]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5832000 	str	r2, [r3]
    1040:	ea000002 	b	1050 <free+0x15c>
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e51b200c 	ldr	r2, [fp, #-12]
    104c:	e5832000 	str	r2, [r3]
    1050:	e59f2014 	ldr	r2, [pc, #20]	@ 106c <free+0x178>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e5823000 	str	r3, [r2]
    105c:	e1a00000 	nop			@ (mov r0, r0)
    1060:	e28bd000 	add	sp, fp, #0
    1064:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1068:	e12fff1e 	bx	lr
    106c:	0000147c 	.word	0x0000147c

00001070 <morecore>:
    1070:	e92d4800 	push	{fp, lr}
    1074:	e28db004 	add	fp, sp, #4
    1078:	e24dd010 	sub	sp, sp, #16
    107c:	e50b0010 	str	r0, [fp, #-16]
    1080:	e51b3010 	ldr	r3, [fp, #-16]
    1084:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1088:	2a000001 	bcs	1094 <morecore+0x24>
    108c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1090:	e50b3010 	str	r3, [fp, #-16]
    1094:	e51b3010 	ldr	r3, [fp, #-16]
    1098:	e1a03183 	lsl	r3, r3, #3
    109c:	e1a00003 	mov	r0, r3
    10a0:	ebfffe6a 	bl	a50 <sbrk>
    10a4:	e50b0008 	str	r0, [fp, #-8]
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e3730001 	cmn	r3, #1
    10b0:	1a000001 	bne	10bc <morecore+0x4c>
    10b4:	e3a03000 	mov	r3, #0
    10b8:	ea00000a 	b	10e8 <morecore+0x78>
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e50b300c 	str	r3, [fp, #-12]
    10c4:	e51b300c 	ldr	r3, [fp, #-12]
    10c8:	e51b2010 	ldr	r2, [fp, #-16]
    10cc:	e5832004 	str	r2, [r3, #4]
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e2833008 	add	r3, r3, #8
    10d8:	e1a00003 	mov	r0, r3
    10dc:	ebffff84 	bl	ef4 <free>
    10e0:	e59f300c 	ldr	r3, [pc, #12]	@ 10f4 <morecore+0x84>
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e1a00003 	mov	r0, r3
    10ec:	e24bd004 	sub	sp, fp, #4
    10f0:	e8bd8800 	pop	{fp, pc}
    10f4:	0000147c 	.word	0x0000147c

000010f8 <malloc>:
    10f8:	e92d4800 	push	{fp, lr}
    10fc:	e28db004 	add	fp, sp, #4
    1100:	e24dd018 	sub	sp, sp, #24
    1104:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1108:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    110c:	e2833007 	add	r3, r3, #7
    1110:	e1a031a3 	lsr	r3, r3, #3
    1114:	e2833001 	add	r3, r3, #1
    1118:	e50b3010 	str	r3, [fp, #-16]
    111c:	e59f3134 	ldr	r3, [pc, #308]	@ 1258 <malloc+0x160>
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e50b300c 	str	r3, [fp, #-12]
    1128:	e51b300c 	ldr	r3, [fp, #-12]
    112c:	e3530000 	cmp	r3, #0
    1130:	1a00000b 	bne	1164 <malloc+0x6c>
    1134:	e59f3120 	ldr	r3, [pc, #288]	@ 125c <malloc+0x164>
    1138:	e50b300c 	str	r3, [fp, #-12]
    113c:	e59f2114 	ldr	r2, [pc, #276]	@ 1258 <malloc+0x160>
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e5823000 	str	r3, [r2]
    1148:	e59f3108 	ldr	r3, [pc, #264]	@ 1258 <malloc+0x160>
    114c:	e5933000 	ldr	r3, [r3]
    1150:	e59f2104 	ldr	r2, [pc, #260]	@ 125c <malloc+0x164>
    1154:	e5823000 	str	r3, [r2]
    1158:	e59f30fc 	ldr	r3, [pc, #252]	@ 125c <malloc+0x164>
    115c:	e3a02000 	mov	r2, #0
    1160:	e5832004 	str	r2, [r3, #4]
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5933000 	ldr	r3, [r3]
    116c:	e50b3008 	str	r3, [fp, #-8]
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e5933004 	ldr	r3, [r3, #4]
    1178:	e51b2010 	ldr	r2, [fp, #-16]
    117c:	e1520003 	cmp	r2, r3
    1180:	8a00001e 	bhi	1200 <malloc+0x108>
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e5933004 	ldr	r3, [r3, #4]
    118c:	e51b2010 	ldr	r2, [fp, #-16]
    1190:	e1520003 	cmp	r2, r3
    1194:	1a000004 	bne	11ac <malloc+0xb4>
    1198:	e51b3008 	ldr	r3, [fp, #-8]
    119c:	e5932000 	ldr	r2, [r3]
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5832000 	str	r2, [r3]
    11a8:	ea00000e 	b	11e8 <malloc+0xf0>
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5932004 	ldr	r2, [r3, #4]
    11b4:	e51b3010 	ldr	r3, [fp, #-16]
    11b8:	e0422003 	sub	r2, r2, r3
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5832004 	str	r2, [r3, #4]
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5933004 	ldr	r3, [r3, #4]
    11cc:	e1a03183 	lsl	r3, r3, #3
    11d0:	e51b2008 	ldr	r2, [fp, #-8]
    11d4:	e0823003 	add	r3, r2, r3
    11d8:	e50b3008 	str	r3, [fp, #-8]
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e51b2010 	ldr	r2, [fp, #-16]
    11e4:	e5832004 	str	r2, [r3, #4]
    11e8:	e59f2068 	ldr	r2, [pc, #104]	@ 1258 <malloc+0x160>
    11ec:	e51b300c 	ldr	r3, [fp, #-12]
    11f0:	e5823000 	str	r3, [r2]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e2833008 	add	r3, r3, #8
    11fc:	ea000012 	b	124c <malloc+0x154>
    1200:	e59f3050 	ldr	r3, [pc, #80]	@ 1258 <malloc+0x160>
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e51b2008 	ldr	r2, [fp, #-8]
    120c:	e1520003 	cmp	r2, r3
    1210:	1a000007 	bne	1234 <malloc+0x13c>
    1214:	e51b0010 	ldr	r0, [fp, #-16]
    1218:	ebffff94 	bl	1070 <morecore>
    121c:	e50b0008 	str	r0, [fp, #-8]
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e3530000 	cmp	r3, #0
    1228:	1a000001 	bne	1234 <malloc+0x13c>
    122c:	e3a03000 	mov	r3, #0
    1230:	ea000005 	b	124c <malloc+0x154>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e50b300c 	str	r3, [fp, #-12]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5933000 	ldr	r3, [r3]
    1244:	e50b3008 	str	r3, [fp, #-8]
    1248:	eaffffc8 	b	1170 <malloc+0x78>
    124c:	e1a00003 	mov	r0, r3
    1250:	e24bd004 	sub	sp, fp, #4
    1254:	e8bd8800 	pop	{fp, pc}
    1258:	0000147c 	.word	0x0000147c
    125c:	00001474 	.word	0x00001474

00001260 <__udivsi3>:
    1260:	e2512001 	subs	r2, r1, #1
    1264:	012fff1e 	bxeq	lr
    1268:	3a000036 	bcc	1348 <__udivsi3+0xe8>
    126c:	e1500001 	cmp	r0, r1
    1270:	9a000022 	bls	1300 <__udivsi3+0xa0>
    1274:	e1110002 	tst	r1, r2
    1278:	0a000023 	beq	130c <__udivsi3+0xac>
    127c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1280:	01a01181 	lsleq	r1, r1, #3
    1284:	03a03008 	moveq	r3, #8
    1288:	13a03001 	movne	r3, #1
    128c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1290:	31510000 	cmpcc	r1, r0
    1294:	31a01201 	lslcc	r1, r1, #4
    1298:	31a03203 	lslcc	r3, r3, #4
    129c:	3afffffa 	bcc	128c <__udivsi3+0x2c>
    12a0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12a4:	31510000 	cmpcc	r1, r0
    12a8:	31a01081 	lslcc	r1, r1, #1
    12ac:	31a03083 	lslcc	r3, r3, #1
    12b0:	3afffffa 	bcc	12a0 <__udivsi3+0x40>
    12b4:	e3a02000 	mov	r2, #0
    12b8:	e1500001 	cmp	r0, r1
    12bc:	20400001 	subcs	r0, r0, r1
    12c0:	21822003 	orrcs	r2, r2, r3
    12c4:	e15000a1 	cmp	r0, r1, lsr #1
    12c8:	204000a1 	subcs	r0, r0, r1, lsr #1
    12cc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12d0:	e1500121 	cmp	r0, r1, lsr #2
    12d4:	20400121 	subcs	r0, r0, r1, lsr #2
    12d8:	21822123 	orrcs	r2, r2, r3, lsr #2
    12dc:	e15001a1 	cmp	r0, r1, lsr #3
    12e0:	204001a1 	subcs	r0, r0, r1, lsr #3
    12e4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    12e8:	e3500000 	cmp	r0, #0
    12ec:	11b03223 	lsrsne	r3, r3, #4
    12f0:	11a01221 	lsrne	r1, r1, #4
    12f4:	1affffef 	bne	12b8 <__udivsi3+0x58>
    12f8:	e1a00002 	mov	r0, r2
    12fc:	e12fff1e 	bx	lr
    1300:	03a00001 	moveq	r0, #1
    1304:	13a00000 	movne	r0, #0
    1308:	e12fff1e 	bx	lr
    130c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1310:	21a01821 	lsrcs	r1, r1, #16
    1314:	23a02010 	movcs	r2, #16
    1318:	33a02000 	movcc	r2, #0
    131c:	e3510c01 	cmp	r1, #256	@ 0x100
    1320:	21a01421 	lsrcs	r1, r1, #8
    1324:	22822008 	addcs	r2, r2, #8
    1328:	e3510010 	cmp	r1, #16
    132c:	21a01221 	lsrcs	r1, r1, #4
    1330:	22822004 	addcs	r2, r2, #4
    1334:	e3510004 	cmp	r1, #4
    1338:	82822003 	addhi	r2, r2, #3
    133c:	908220a1 	addls	r2, r2, r1, lsr #1
    1340:	e1a00230 	lsr	r0, r0, r2
    1344:	e12fff1e 	bx	lr
    1348:	e3500000 	cmp	r0, #0
    134c:	13e00000 	mvnne	r0, #0
    1350:	ea000007 	b	1374 <__aeabi_idiv0>

00001354 <__aeabi_uidivmod>:
    1354:	e3510000 	cmp	r1, #0
    1358:	0afffffa 	beq	1348 <__udivsi3+0xe8>
    135c:	e92d4003 	push	{r0, r1, lr}
    1360:	ebffffbe 	bl	1260 <__udivsi3>
    1364:	e8bd4006 	pop	{r1, r2, lr}
    1368:	e0030092 	mul	r3, r2, r0
    136c:	e0411003 	sub	r1, r1, r3
    1370:	e12fff1e 	bx	lr

00001374 <__aeabi_idiv0>:
    1374:	e12fff1e 	bx	lr
