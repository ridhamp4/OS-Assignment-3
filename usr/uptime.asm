
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd020 	sub	sp, sp, #32
       c:	eb000259 	bl	978 <uptime>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e59f20e0 	ldr	r2, [pc, #224]	@ 100 <main+0x100>
      1c:	e0c21392 	smull	r1, r2, r2, r3
      20:	e1a02142 	asr	r2, r2, #2
      24:	e1a03fc3 	asr	r3, r3, #31
      28:	e0423003 	sub	r3, r2, r3
      2c:	e50b300c 	str	r3, [fp, #-12]
      30:	e51b300c 	ldr	r3, [fp, #-12]
      34:	e59f20c8 	ldr	r2, [pc, #200]	@ 104 <main+0x104>
      38:	e0c21392 	smull	r1, r2, r2, r3
      3c:	e0822003 	add	r2, r2, r3
      40:	e1a025c2 	asr	r2, r2, #11
      44:	e1a03fc3 	asr	r3, r3, #31
      48:	e0423003 	sub	r3, r2, r3
      4c:	e50b3010 	str	r3, [fp, #-16]
      50:	e51b100c 	ldr	r1, [fp, #-12]
      54:	e59f30a8 	ldr	r3, [pc, #168]	@ 104 <main+0x104>
      58:	e0c32193 	smull	r2, r3, r3, r1
      5c:	e0833001 	add	r3, r3, r1
      60:	e1a025c3 	asr	r2, r3, #11
      64:	e1a03fc1 	asr	r3, r1, #31
      68:	e0423003 	sub	r3, r2, r3
      6c:	e1a02003 	mov	r2, r3
      70:	e1a02202 	lsl	r2, r2, #4
      74:	e0422003 	sub	r2, r2, r3
      78:	e1a03202 	lsl	r3, r2, #4
      7c:	e0433002 	sub	r3, r3, r2
      80:	e1a03203 	lsl	r3, r3, #4
      84:	e0413003 	sub	r3, r1, r3
      88:	e59f2078 	ldr	r2, [pc, #120]	@ 108 <main+0x108>
      8c:	e0c21392 	smull	r1, r2, r2, r3
      90:	e0822003 	add	r2, r2, r3
      94:	e1a022c2 	asr	r2, r2, #5
      98:	e1a03fc3 	asr	r3, r3, #31
      9c:	e0423003 	sub	r3, r2, r3
      a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      a4:	e51b200c 	ldr	r2, [fp, #-12]
      a8:	e59f3058 	ldr	r3, [pc, #88]	@ 108 <main+0x108>
      ac:	e0c31293 	smull	r1, r3, r3, r2
      b0:	e0833002 	add	r3, r3, r2
      b4:	e1a012c3 	asr	r1, r3, #5
      b8:	e1a03fc2 	asr	r3, r2, #31
      bc:	e0411003 	sub	r1, r1, r3
      c0:	e1a03001 	mov	r3, r1
      c4:	e1a03203 	lsl	r3, r3, #4
      c8:	e0433001 	sub	r3, r3, r1
      cc:	e1a03103 	lsl	r3, r3, #2
      d0:	e0423003 	sub	r3, r2, r3
      d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      dc:	e58d3004 	str	r3, [sp, #4]
      e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e4:	e58d3000 	str	r3, [sp]
      e8:	e51b3010 	ldr	r3, [fp, #-16]
      ec:	e51b2008 	ldr	r2, [fp, #-8]
      f0:	e59f1014 	ldr	r1, [pc, #20]	@ 10c <main+0x10c>
      f4:	e3a00001 	mov	r0, #1
      f8:	eb0002cb 	bl	c2c <printf>
      fc:	eb000172 	bl	6cc <exit>
     100:	66666667 	.word	0x66666667
     104:	91a2b3c5 	.word	0x91a2b3c5
     108:	88888889 	.word	0x88888889
     10c:	000012e8 	.word	0x000012e8

00000110 <strcpy>:
     110:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     114:	e28db000 	add	fp, sp, #0
     118:	e24dd014 	sub	sp, sp, #20
     11c:	e50b0010 	str	r0, [fp, #-16]
     120:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	e1a00000 	nop			@ (mov r0, r0)
     130:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     134:	e2823001 	add	r3, r2, #1
     138:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     13c:	e51b3010 	ldr	r3, [fp, #-16]
     140:	e2831001 	add	r1, r3, #1
     144:	e50b1010 	str	r1, [fp, #-16]
     148:	e5d22000 	ldrb	r2, [r2]
     14c:	e5c32000 	strb	r2, [r3]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e3530000 	cmp	r3, #0
     158:	1afffff4 	bne	130 <strcpy+0x20>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strncmp>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0008 	str	r0, [fp, #-8]
     180:	e50b100c 	str	r1, [fp, #-12]
     184:	e50b2010 	str	r2, [fp, #-16]
     188:	ea000008 	b	1b0 <strncmp+0x40>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b300c 	ldr	r3, [fp, #-12]
     19c:	e2833001 	add	r3, r3, #1
     1a0:	e50b300c 	str	r3, [fp, #-12]
     1a4:	e51b3010 	ldr	r3, [fp, #-16]
     1a8:	e2433001 	sub	r3, r3, #1
     1ac:	e50b3010 	str	r3, [fp, #-16]
     1b0:	e51b3010 	ldr	r3, [fp, #-16]
     1b4:	e3530000 	cmp	r3, #0
     1b8:	da00000d 	ble	1f4 <strncmp+0x84>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	0a000009 	beq	1f4 <strncmp+0x84>
     1cc:	e51b300c 	ldr	r3, [fp, #-12]
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e3530000 	cmp	r3, #0
     1d8:	0a000005 	beq	1f4 <strncmp+0x84>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e5d32000 	ldrb	r2, [r3]
     1e4:	e51b300c 	ldr	r3, [fp, #-12]
     1e8:	e5d33000 	ldrb	r3, [r3]
     1ec:	e1520003 	cmp	r2, r3
     1f0:	0affffe5 	beq	18c <strncmp+0x1c>
     1f4:	e51b3010 	ldr	r3, [fp, #-16]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	1a000001 	bne	208 <strncmp+0x98>
     200:	e3a03000 	mov	r3, #0
     204:	ea000005 	b	220 <strncmp+0xb0>
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e1a02003 	mov	r2, r3
     214:	e51b300c 	ldr	r3, [fp, #-12]
     218:	e5d33000 	ldrb	r3, [r3]
     21c:	e0423003 	sub	r3, r2, r3
     220:	e1a00003 	mov	r0, r3
     224:	e28bd000 	add	sp, fp, #0
     228:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     22c:	e12fff1e 	bx	lr

00000230 <strcmp>:
     230:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     234:	e28db000 	add	fp, sp, #0
     238:	e24dd00c 	sub	sp, sp, #12
     23c:	e50b0008 	str	r0, [fp, #-8]
     240:	e50b100c 	str	r1, [fp, #-12]
     244:	ea000005 	b	260 <strcmp+0x30>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2833001 	add	r3, r3, #1
     250:	e50b3008 	str	r3, [fp, #-8]
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e2833001 	add	r3, r3, #1
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e3530000 	cmp	r3, #0
     26c:	0a000005 	beq	288 <strcmp+0x58>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e5d32000 	ldrb	r2, [r3]
     278:	e51b300c 	ldr	r3, [fp, #-12]
     27c:	e5d33000 	ldrb	r3, [r3]
     280:	e1520003 	cmp	r2, r3
     284:	0affffef 	beq	248 <strcmp+0x18>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e5d33000 	ldrb	r3, [r3]
     290:	e1a02003 	mov	r2, r3
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e5d33000 	ldrb	r3, [r3]
     29c:	e0423003 	sub	r3, r2, r3
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <strlen>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd014 	sub	sp, sp, #20
     2bc:	e50b0010 	str	r0, [fp, #-16]
     2c0:	e3a03000 	mov	r3, #0
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	ea000002 	b	2d8 <strlen+0x28>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e2833001 	add	r3, r3, #1
     2d4:	e50b3008 	str	r3, [fp, #-8]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e51b2010 	ldr	r2, [fp, #-16]
     2e0:	e0823003 	add	r3, r2, r3
     2e4:	e5d33000 	ldrb	r3, [r3]
     2e8:	e3530000 	cmp	r3, #0
     2ec:	1afffff6 	bne	2cc <strlen+0x1c>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e1a00003 	mov	r0, r3
     2f8:	e28bd000 	add	sp, fp, #0
     2fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     300:	e12fff1e 	bx	lr

00000304 <memset>:
     304:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     308:	e28db000 	add	fp, sp, #0
     30c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     318:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     31c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     320:	e50b3008 	str	r3, [fp, #-8]
     324:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     328:	e54b300d 	strb	r3, [fp, #-13]
     32c:	e55b200d 	ldrb	r2, [fp, #-13]
     330:	e1a03002 	mov	r3, r2
     334:	e1a03403 	lsl	r3, r3, #8
     338:	e0833002 	add	r3, r3, r2
     33c:	e1a03803 	lsl	r3, r3, #16
     340:	e1a02003 	mov	r2, r3
     344:	e55b300d 	ldrb	r3, [fp, #-13]
     348:	e1a03403 	lsl	r3, r3, #8
     34c:	e1822003 	orr	r2, r2, r3
     350:	e55b300d 	ldrb	r3, [fp, #-13]
     354:	e1823003 	orr	r3, r2, r3
     358:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     35c:	ea000008 	b	384 <memset+0x80>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e55b200d 	ldrb	r2, [fp, #-13]
     368:	e5c32000 	strb	r2, [r3]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e2433001 	sub	r3, r3, #1
     374:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2833001 	add	r3, r3, #1
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     388:	e3530000 	cmp	r3, #0
     38c:	0a000003 	beq	3a0 <memset+0x9c>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2033003 	and	r3, r3, #3
     398:	e3530000 	cmp	r3, #0
     39c:	1affffef 	bne	360 <memset+0x5c>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e50b300c 	str	r3, [fp, #-12]
     3a8:	ea000008 	b	3d0 <memset+0xcc>
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3b4:	e5832000 	str	r2, [r3]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e2433004 	sub	r3, r3, #4
     3c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e2833004 	add	r3, r3, #4
     3cc:	e50b300c 	str	r3, [fp, #-12]
     3d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d4:	e3530003 	cmp	r3, #3
     3d8:	8afffff3 	bhi	3ac <memset+0xa8>
     3dc:	e51b300c 	ldr	r3, [fp, #-12]
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	ea000008 	b	40c <memset+0x108>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e55b200d 	ldrb	r2, [fp, #-13]
     3f0:	e5c32000 	strb	r2, [r3]
     3f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e2433001 	sub	r3, r3, #1
     3fc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2833001 	add	r3, r3, #1
     408:	e50b3008 	str	r3, [fp, #-8]
     40c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     410:	e3530000 	cmp	r3, #0
     414:	1afffff3 	bne	3e8 <memset+0xe4>
     418:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     41c:	e1a00003 	mov	r0, r3
     420:	e28bd000 	add	sp, fp, #0
     424:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     428:	e12fff1e 	bx	lr

0000042c <strchr>:
     42c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     430:	e28db000 	add	fp, sp, #0
     434:	e24dd00c 	sub	sp, sp, #12
     438:	e50b0008 	str	r0, [fp, #-8]
     43c:	e1a03001 	mov	r3, r1
     440:	e54b3009 	strb	r3, [fp, #-9]
     444:	ea000009 	b	470 <strchr+0x44>
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e5d33000 	ldrb	r3, [r3]
     450:	e55b2009 	ldrb	r2, [fp, #-9]
     454:	e1520003 	cmp	r2, r3
     458:	1a000001 	bne	464 <strchr+0x38>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	ea000007 	b	484 <strchr+0x58>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e2833001 	add	r3, r3, #1
     46c:	e50b3008 	str	r3, [fp, #-8]
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e5d33000 	ldrb	r3, [r3]
     478:	e3530000 	cmp	r3, #0
     47c:	1afffff1 	bne	448 <strchr+0x1c>
     480:	e3a03000 	mov	r3, #0
     484:	e1a00003 	mov	r0, r3
     488:	e28bd000 	add	sp, fp, #0
     48c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     490:	e12fff1e 	bx	lr

00000494 <gets>:
     494:	e92d4800 	push	{fp, lr}
     498:	e28db004 	add	fp, sp, #4
     49c:	e24dd018 	sub	sp, sp, #24
     4a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4a4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4a8:	e3a03000 	mov	r3, #0
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	ea000016 	b	510 <gets+0x7c>
     4b4:	e24b300d 	sub	r3, fp, #13
     4b8:	e3a02001 	mov	r2, #1
     4bc:	e1a01003 	mov	r1, r3
     4c0:	e3a00000 	mov	r0, #0
     4c4:	eb00009b 	bl	738 <read>
     4c8:	e50b000c 	str	r0, [fp, #-12]
     4cc:	e51b300c 	ldr	r3, [fp, #-12]
     4d0:	e3530000 	cmp	r3, #0
     4d4:	da000013 	ble	528 <gets+0x94>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2832001 	add	r2, r3, #1
     4e0:	e50b2008 	str	r2, [fp, #-8]
     4e4:	e1a02003 	mov	r2, r3
     4e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ec:	e0833002 	add	r3, r3, r2
     4f0:	e55b200d 	ldrb	r2, [fp, #-13]
     4f4:	e5c32000 	strb	r2, [r3]
     4f8:	e55b300d 	ldrb	r3, [fp, #-13]
     4fc:	e353000a 	cmp	r3, #10
     500:	0a000009 	beq	52c <gets+0x98>
     504:	e55b300d 	ldrb	r3, [fp, #-13]
     508:	e353000d 	cmp	r3, #13
     50c:	0a000006 	beq	52c <gets+0x98>
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e2833001 	add	r3, r3, #1
     518:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     51c:	e1520003 	cmp	r2, r3
     520:	caffffe3 	bgt	4b4 <gets+0x20>
     524:	ea000000 	b	52c <gets+0x98>
     528:	e1a00000 	nop			@ (mov r0, r0)
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     534:	e0823003 	add	r3, r2, r3
     538:	e3a02000 	mov	r2, #0
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     544:	e1a00003 	mov	r0, r3
     548:	e24bd004 	sub	sp, fp, #4
     54c:	e8bd8800 	pop	{fp, pc}

00000550 <stat>:
     550:	e92d4800 	push	{fp, lr}
     554:	e28db004 	add	fp, sp, #4
     558:	e24dd010 	sub	sp, sp, #16
     55c:	e50b0010 	str	r0, [fp, #-16]
     560:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     564:	e3a01000 	mov	r1, #0
     568:	e51b0010 	ldr	r0, [fp, #-16]
     56c:	eb00009e 	bl	7ec <open>
     570:	e50b0008 	str	r0, [fp, #-8]
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e3530000 	cmp	r3, #0
     57c:	aa000001 	bge	588 <stat+0x38>
     580:	e3e03000 	mvn	r3, #0
     584:	ea000006 	b	5a4 <stat+0x54>
     588:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     58c:	e51b0008 	ldr	r0, [fp, #-8]
     590:	eb0000b0 	bl	858 <fstat>
     594:	e50b000c 	str	r0, [fp, #-12]
     598:	e51b0008 	ldr	r0, [fp, #-8]
     59c:	eb000077 	bl	780 <close>
     5a0:	e51b300c 	ldr	r3, [fp, #-12]
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e24bd004 	sub	sp, fp, #4
     5ac:	e8bd8800 	pop	{fp, pc}

000005b0 <atoi>:
     5b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b4:	e28db000 	add	fp, sp, #0
     5b8:	e24dd014 	sub	sp, sp, #20
     5bc:	e50b0010 	str	r0, [fp, #-16]
     5c0:	e3a03000 	mov	r3, #0
     5c4:	e50b3008 	str	r3, [fp, #-8]
     5c8:	ea00000c 	b	600 <atoi+0x50>
     5cc:	e51b2008 	ldr	r2, [fp, #-8]
     5d0:	e1a03002 	mov	r3, r2
     5d4:	e1a03103 	lsl	r3, r3, #2
     5d8:	e0833002 	add	r3, r3, r2
     5dc:	e1a03083 	lsl	r3, r3, #1
     5e0:	e1a01003 	mov	r1, r3
     5e4:	e51b3010 	ldr	r3, [fp, #-16]
     5e8:	e2832001 	add	r2, r3, #1
     5ec:	e50b2010 	str	r2, [fp, #-16]
     5f0:	e5d33000 	ldrb	r3, [r3]
     5f4:	e0813003 	add	r3, r1, r3
     5f8:	e2433030 	sub	r3, r3, #48	@ 0x30
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3010 	ldr	r3, [fp, #-16]
     604:	e5d33000 	ldrb	r3, [r3]
     608:	e353002f 	cmp	r3, #47	@ 0x2f
     60c:	9a000003 	bls	620 <atoi+0x70>
     610:	e51b3010 	ldr	r3, [fp, #-16]
     614:	e5d33000 	ldrb	r3, [r3]
     618:	e3530039 	cmp	r3, #57	@ 0x39
     61c:	9affffea 	bls	5cc <atoi+0x1c>
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e1a00003 	mov	r0, r3
     628:	e28bd000 	add	sp, fp, #0
     62c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <memmove>:
     634:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     638:	e28db000 	add	fp, sp, #0
     63c:	e24dd01c 	sub	sp, sp, #28
     640:	e50b0010 	str	r0, [fp, #-16]
     644:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     648:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e50b3008 	str	r3, [fp, #-8]
     654:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	ea000007 	b	680 <memmove+0x4c>
     660:	e51b200c 	ldr	r2, [fp, #-12]
     664:	e2823001 	add	r3, r2, #1
     668:	e50b300c 	str	r3, [fp, #-12]
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e2831001 	add	r1, r3, #1
     674:	e50b1008 	str	r1, [fp, #-8]
     678:	e5d22000 	ldrb	r2, [r2]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     684:	e2432001 	sub	r2, r3, #1
     688:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     68c:	e3530000 	cmp	r3, #0
     690:	cafffff2 	bgt	660 <memmove+0x2c>
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <fork>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00001 	mov	r0, #1
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <exit>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00002 	mov	r0, #2
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <wait>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00003 	mov	r0, #3
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <pipe>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00004 	mov	r0, #4
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <read>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00005 	mov	r0, #5
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <write>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00010 	mov	r0, #16
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <close>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00015 	mov	r0, #21
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <kill>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00006 	mov	r0, #6
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <exec>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00007 	mov	r0, #7
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <open>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a0000f 	mov	r0, #15
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <mknod>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00011 	mov	r0, #17
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <unlink>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a00012 	mov	r0, #18
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <fstat>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00008 	mov	r0, #8
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <link>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00013 	mov	r0, #19
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <mkdir>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00014 	mov	r0, #20
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <chdir>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00009 	mov	r0, #9
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <dup>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a0000a 	mov	r0, #10
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <getpid>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a0000b 	mov	r0, #11
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <sbrk>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a0000c 	mov	r0, #12
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <sleep>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a0000d 	mov	r0, #13
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <uptime>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a0000e 	mov	r0, #14
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <ps>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00016 	mov	r0, #22
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <settickets>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00017 	mov	r0, #23
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <srand>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00018 	mov	r0, #24
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <getpinfo>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00019 	mov	r0, #25
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <printpt>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a0001a 	mov	r0, #26
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <pgpte>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a0001b 	mov	r0, #27
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <ugetpid>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a0001c 	mov	r0, #28
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <kpt>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a0001d 	mov	r0, #29
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <putc>:
     abc:	e92d4800 	push	{fp, lr}
     ac0:	e28db004 	add	fp, sp, #4
     ac4:	e24dd008 	sub	sp, sp, #8
     ac8:	e50b0008 	str	r0, [fp, #-8]
     acc:	e1a03001 	mov	r3, r1
     ad0:	e54b3009 	strb	r3, [fp, #-9]
     ad4:	e24b3009 	sub	r3, fp, #9
     ad8:	e3a02001 	mov	r2, #1
     adc:	e1a01003 	mov	r1, r3
     ae0:	e51b0008 	ldr	r0, [fp, #-8]
     ae4:	ebffff1c 	bl	75c <write>
     ae8:	e1a00000 	nop			@ (mov r0, r0)
     aec:	e24bd004 	sub	sp, fp, #4
     af0:	e8bd8800 	pop	{fp, pc}

00000af4 <printint>:
     af4:	e92d4800 	push	{fp, lr}
     af8:	e28db004 	add	fp, sp, #4
     afc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b00:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b04:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b08:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b0c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b10:	e3a03000 	mov	r3, #0
     b14:	e50b300c 	str	r3, [fp, #-12]
     b18:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b1c:	e3530000 	cmp	r3, #0
     b20:	0a000008 	beq	b48 <printint+0x54>
     b24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b28:	e3530000 	cmp	r3, #0
     b2c:	aa000005 	bge	b48 <printint+0x54>
     b30:	e3a03001 	mov	r3, #1
     b34:	e50b300c 	str	r3, [fp, #-12]
     b38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b3c:	e2633000 	rsb	r3, r3, #0
     b40:	e50b3010 	str	r3, [fp, #-16]
     b44:	ea000001 	b	b50 <printint+0x5c>
     b48:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b4c:	e50b3010 	str	r3, [fp, #-16]
     b50:	e3a03000 	mov	r3, #0
     b54:	e50b3008 	str	r3, [fp, #-8]
     b58:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b5c:	e51b3010 	ldr	r3, [fp, #-16]
     b60:	e1a01002 	mov	r1, r2
     b64:	e1a00003 	mov	r0, r3
     b68:	eb0001d5 	bl	12c4 <__aeabi_uidivmod>
     b6c:	e1a03001 	mov	r3, r1
     b70:	e1a01003 	mov	r1, r3
     b74:	e51b3008 	ldr	r3, [fp, #-8]
     b78:	e2832001 	add	r2, r3, #1
     b7c:	e50b2008 	str	r2, [fp, #-8]
     b80:	e59f20a0 	ldr	r2, [pc, #160]	@ c28 <printint+0x134>
     b84:	e7d22001 	ldrb	r2, [r2, r1]
     b88:	e2433004 	sub	r3, r3, #4
     b8c:	e083300b 	add	r3, r3, fp
     b90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b94:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b98:	e1a01003 	mov	r1, r3
     b9c:	e51b0010 	ldr	r0, [fp, #-16]
     ba0:	eb00018a 	bl	11d0 <__udivsi3>
     ba4:	e1a03000 	mov	r3, r0
     ba8:	e50b3010 	str	r3, [fp, #-16]
     bac:	e51b3010 	ldr	r3, [fp, #-16]
     bb0:	e3530000 	cmp	r3, #0
     bb4:	1affffe7 	bne	b58 <printint+0x64>
     bb8:	e51b300c 	ldr	r3, [fp, #-12]
     bbc:	e3530000 	cmp	r3, #0
     bc0:	0a00000e 	beq	c00 <printint+0x10c>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e2832001 	add	r2, r3, #1
     bcc:	e50b2008 	str	r2, [fp, #-8]
     bd0:	e2433004 	sub	r3, r3, #4
     bd4:	e083300b 	add	r3, r3, fp
     bd8:	e3a0202d 	mov	r2, #45	@ 0x2d
     bdc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     be0:	ea000006 	b	c00 <printint+0x10c>
     be4:	e24b2020 	sub	r2, fp, #32
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e0823003 	add	r3, r2, r3
     bf0:	e5d33000 	ldrb	r3, [r3]
     bf4:	e1a01003 	mov	r1, r3
     bf8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     bfc:	ebffffae 	bl	abc <putc>
     c00:	e51b3008 	ldr	r3, [fp, #-8]
     c04:	e2433001 	sub	r3, r3, #1
     c08:	e50b3008 	str	r3, [fp, #-8]
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e3530000 	cmp	r3, #0
     c14:	aafffff2 	bge	be4 <printint+0xf0>
     c18:	e1a00000 	nop			@ (mov r0, r0)
     c1c:	e1a00000 	nop			@ (mov r0, r0)
     c20:	e24bd004 	sub	sp, fp, #4
     c24:	e8bd8800 	pop	{fp, pc}
     c28:	00001318 	.word	0x00001318

00000c2c <printf>:
     c2c:	e92d000e 	push	{r1, r2, r3}
     c30:	e92d4800 	push	{fp, lr}
     c34:	e28db004 	add	fp, sp, #4
     c38:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c3c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c40:	e3a03000 	mov	r3, #0
     c44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c48:	e28b3008 	add	r3, fp, #8
     c4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c50:	e3a03000 	mov	r3, #0
     c54:	e50b3010 	str	r3, [fp, #-16]
     c58:	ea000074 	b	e30 <printf+0x204>
     c5c:	e59b2004 	ldr	r2, [fp, #4]
     c60:	e51b3010 	ldr	r3, [fp, #-16]
     c64:	e0823003 	add	r3, r2, r3
     c68:	e5d33000 	ldrb	r3, [r3]
     c6c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c74:	e3530000 	cmp	r3, #0
     c78:	1a00000b 	bne	cac <printf+0x80>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c80:	e3530025 	cmp	r3, #37	@ 0x25
     c84:	1a000002 	bne	c94 <printf+0x68>
     c88:	e3a03025 	mov	r3, #37	@ 0x25
     c8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c90:	ea000063 	b	e24 <printf+0x1f8>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e6ef3073 	uxtb	r3, r3
     c9c:	e1a01003 	mov	r1, r3
     ca0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca4:	ebffff84 	bl	abc <putc>
     ca8:	ea00005d 	b	e24 <printf+0x1f8>
     cac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cb0:	e3530025 	cmp	r3, #37	@ 0x25
     cb4:	1a00005a 	bne	e24 <printf+0x1f8>
     cb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cbc:	e3530064 	cmp	r3, #100	@ 0x64
     cc0:	1a00000a 	bne	cf0 <printf+0xc4>
     cc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc8:	e5933000 	ldr	r3, [r3]
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e3a03001 	mov	r3, #1
     cd4:	e3a0200a 	mov	r2, #10
     cd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cdc:	ebffff84 	bl	af4 <printint>
     ce0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce4:	e2833004 	add	r3, r3, #4
     ce8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cec:	ea00004a 	b	e1c <printf+0x1f0>
     cf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf4:	e3530078 	cmp	r3, #120	@ 0x78
     cf8:	0a000002 	beq	d08 <printf+0xdc>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e3530070 	cmp	r3, #112	@ 0x70
     d04:	1a00000a 	bne	d34 <printf+0x108>
     d08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e1a01003 	mov	r1, r3
     d14:	e3a03000 	mov	r3, #0
     d18:	e3a02010 	mov	r2, #16
     d1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d20:	ebffff73 	bl	af4 <printint>
     d24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d28:	e2833004 	add	r3, r3, #4
     d2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d30:	ea000039 	b	e1c <printf+0x1f0>
     d34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d38:	e3530073 	cmp	r3, #115	@ 0x73
     d3c:	1a000018 	bne	da4 <printf+0x178>
     d40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e50b300c 	str	r3, [fp, #-12]
     d4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d50:	e2833004 	add	r3, r3, #4
     d54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d58:	e51b300c 	ldr	r3, [fp, #-12]
     d5c:	e3530000 	cmp	r3, #0
     d60:	1a00000a 	bne	d90 <printf+0x164>
     d64:	e59f30f4 	ldr	r3, [pc, #244]	@ e60 <printf+0x234>
     d68:	e50b300c 	str	r3, [fp, #-12]
     d6c:	ea000007 	b	d90 <printf+0x164>
     d70:	e51b300c 	ldr	r3, [fp, #-12]
     d74:	e5d33000 	ldrb	r3, [r3]
     d78:	e1a01003 	mov	r1, r3
     d7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d80:	ebffff4d 	bl	abc <putc>
     d84:	e51b300c 	ldr	r3, [fp, #-12]
     d88:	e2833001 	add	r3, r3, #1
     d8c:	e50b300c 	str	r3, [fp, #-12]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5d33000 	ldrb	r3, [r3]
     d98:	e3530000 	cmp	r3, #0
     d9c:	1afffff3 	bne	d70 <printf+0x144>
     da0:	ea00001d 	b	e1c <printf+0x1f0>
     da4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da8:	e3530063 	cmp	r3, #99	@ 0x63
     dac:	1a000009 	bne	dd8 <printf+0x1ac>
     db0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db4:	e5933000 	ldr	r3, [r3]
     db8:	e6ef3073 	uxtb	r3, r3
     dbc:	e1a01003 	mov	r1, r3
     dc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc4:	ebffff3c 	bl	abc <putc>
     dc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dcc:	e2833004 	add	r3, r3, #4
     dd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	ea000010 	b	e1c <printf+0x1f0>
     dd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ddc:	e3530025 	cmp	r3, #37	@ 0x25
     de0:	1a000005 	bne	dfc <printf+0x1d0>
     de4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     de8:	e6ef3073 	uxtb	r3, r3
     dec:	e1a01003 	mov	r1, r3
     df0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     df4:	ebffff30 	bl	abc <putc>
     df8:	ea000007 	b	e1c <printf+0x1f0>
     dfc:	e3a01025 	mov	r1, #37	@ 0x25
     e00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e04:	ebffff2c 	bl	abc <putc>
     e08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e0c:	e6ef3073 	uxtb	r3, r3
     e10:	e1a01003 	mov	r1, r3
     e14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e18:	ebffff27 	bl	abc <putc>
     e1c:	e3a03000 	mov	r3, #0
     e20:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e24:	e51b3010 	ldr	r3, [fp, #-16]
     e28:	e2833001 	add	r3, r3, #1
     e2c:	e50b3010 	str	r3, [fp, #-16]
     e30:	e59b2004 	ldr	r2, [fp, #4]
     e34:	e51b3010 	ldr	r3, [fp, #-16]
     e38:	e0823003 	add	r3, r2, r3
     e3c:	e5d33000 	ldrb	r3, [r3]
     e40:	e3530000 	cmp	r3, #0
     e44:	1affff84 	bne	c5c <printf+0x30>
     e48:	e1a00000 	nop			@ (mov r0, r0)
     e4c:	e1a00000 	nop			@ (mov r0, r0)
     e50:	e24bd004 	sub	sp, fp, #4
     e54:	e8bd4800 	pop	{fp, lr}
     e58:	e28dd00c 	add	sp, sp, #12
     e5c:	e12fff1e 	bx	lr
     e60:	00001310 	.word	0x00001310

00000e64 <free>:
     e64:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e68:	e28db000 	add	fp, sp, #0
     e6c:	e24dd014 	sub	sp, sp, #20
     e70:	e50b0010 	str	r0, [fp, #-16]
     e74:	e51b3010 	ldr	r3, [fp, #-16]
     e78:	e2433008 	sub	r3, r3, #8
     e7c:	e50b300c 	str	r3, [fp, #-12]
     e80:	e59f3154 	ldr	r3, [pc, #340]	@ fdc <free+0x178>
     e84:	e5933000 	ldr	r3, [r3]
     e88:	e50b3008 	str	r3, [fp, #-8]
     e8c:	ea000010 	b	ed4 <free+0x70>
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5933000 	ldr	r3, [r3]
     e98:	e51b2008 	ldr	r2, [fp, #-8]
     e9c:	e1520003 	cmp	r2, r3
     ea0:	3a000008 	bcc	ec8 <free+0x64>
     ea4:	e51b200c 	ldr	r2, [fp, #-12]
     ea8:	e51b3008 	ldr	r3, [fp, #-8]
     eac:	e1520003 	cmp	r2, r3
     eb0:	8a000010 	bhi	ef8 <free+0x94>
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5933000 	ldr	r3, [r3]
     ebc:	e51b200c 	ldr	r2, [fp, #-12]
     ec0:	e1520003 	cmp	r2, r3
     ec4:	3a00000b 	bcc	ef8 <free+0x94>
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e50b3008 	str	r3, [fp, #-8]
     ed4:	e51b200c 	ldr	r2, [fp, #-12]
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e1520003 	cmp	r2, r3
     ee0:	9affffea 	bls	e90 <free+0x2c>
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e51b200c 	ldr	r2, [fp, #-12]
     ef0:	e1520003 	cmp	r2, r3
     ef4:	2affffe5 	bcs	e90 <free+0x2c>
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5933004 	ldr	r3, [r3, #4]
     f00:	e1a03183 	lsl	r3, r3, #3
     f04:	e51b200c 	ldr	r2, [fp, #-12]
     f08:	e0822003 	add	r2, r2, r3
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e1520003 	cmp	r2, r3
     f18:	1a00000d 	bne	f54 <free+0xf0>
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5932004 	ldr	r2, [r3, #4]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e5933004 	ldr	r3, [r3, #4]
     f30:	e0822003 	add	r2, r2, r3
     f34:	e51b300c 	ldr	r3, [fp, #-12]
     f38:	e5832004 	str	r2, [r3, #4]
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e5932000 	ldr	r2, [r3]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5832000 	str	r2, [r3]
     f50:	ea000003 	b	f64 <free+0x100>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5932000 	ldr	r2, [r3]
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e5832000 	str	r2, [r3]
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5933004 	ldr	r3, [r3, #4]
     f6c:	e1a03183 	lsl	r3, r3, #3
     f70:	e51b2008 	ldr	r2, [fp, #-8]
     f74:	e0823003 	add	r3, r2, r3
     f78:	e51b200c 	ldr	r2, [fp, #-12]
     f7c:	e1520003 	cmp	r2, r3
     f80:	1a00000b 	bne	fb4 <free+0x150>
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e5932004 	ldr	r2, [r3, #4]
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e5933004 	ldr	r3, [r3, #4]
     f94:	e0822003 	add	r2, r2, r3
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5832004 	str	r2, [r3, #4]
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e5932000 	ldr	r2, [r3]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5832000 	str	r2, [r3]
     fb0:	ea000002 	b	fc0 <free+0x15c>
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e51b200c 	ldr	r2, [fp, #-12]
     fbc:	e5832000 	str	r2, [r3]
     fc0:	e59f2014 	ldr	r2, [pc, #20]	@ fdc <free+0x178>
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e5823000 	str	r3, [r2]
     fcc:	e1a00000 	nop			@ (mov r0, r0)
     fd0:	e28bd000 	add	sp, fp, #0
     fd4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fd8:	e12fff1e 	bx	lr
     fdc:	00001334 	.word	0x00001334

00000fe0 <morecore>:
     fe0:	e92d4800 	push	{fp, lr}
     fe4:	e28db004 	add	fp, sp, #4
     fe8:	e24dd010 	sub	sp, sp, #16
     fec:	e50b0010 	str	r0, [fp, #-16]
     ff0:	e51b3010 	ldr	r3, [fp, #-16]
     ff4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ff8:	2a000001 	bcs	1004 <morecore+0x24>
     ffc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1000:	e50b3010 	str	r3, [fp, #-16]
    1004:	e51b3010 	ldr	r3, [fp, #-16]
    1008:	e1a03183 	lsl	r3, r3, #3
    100c:	e1a00003 	mov	r0, r3
    1010:	ebfffe46 	bl	930 <sbrk>
    1014:	e50b0008 	str	r0, [fp, #-8]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e3730001 	cmn	r3, #1
    1020:	1a000001 	bne	102c <morecore+0x4c>
    1024:	e3a03000 	mov	r3, #0
    1028:	ea00000a 	b	1058 <morecore+0x78>
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e50b300c 	str	r3, [fp, #-12]
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e51b2010 	ldr	r2, [fp, #-16]
    103c:	e5832004 	str	r2, [r3, #4]
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e2833008 	add	r3, r3, #8
    1048:	e1a00003 	mov	r0, r3
    104c:	ebffff84 	bl	e64 <free>
    1050:	e59f300c 	ldr	r3, [pc, #12]	@ 1064 <morecore+0x84>
    1054:	e5933000 	ldr	r3, [r3]
    1058:	e1a00003 	mov	r0, r3
    105c:	e24bd004 	sub	sp, fp, #4
    1060:	e8bd8800 	pop	{fp, pc}
    1064:	00001334 	.word	0x00001334

00001068 <malloc>:
    1068:	e92d4800 	push	{fp, lr}
    106c:	e28db004 	add	fp, sp, #4
    1070:	e24dd018 	sub	sp, sp, #24
    1074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    107c:	e2833007 	add	r3, r3, #7
    1080:	e1a031a3 	lsr	r3, r3, #3
    1084:	e2833001 	add	r3, r3, #1
    1088:	e50b3010 	str	r3, [fp, #-16]
    108c:	e59f3134 	ldr	r3, [pc, #308]	@ 11c8 <malloc+0x160>
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e50b300c 	str	r3, [fp, #-12]
    1098:	e51b300c 	ldr	r3, [fp, #-12]
    109c:	e3530000 	cmp	r3, #0
    10a0:	1a00000b 	bne	10d4 <malloc+0x6c>
    10a4:	e59f3120 	ldr	r3, [pc, #288]	@ 11cc <malloc+0x164>
    10a8:	e50b300c 	str	r3, [fp, #-12]
    10ac:	e59f2114 	ldr	r2, [pc, #276]	@ 11c8 <malloc+0x160>
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5823000 	str	r3, [r2]
    10b8:	e59f3108 	ldr	r3, [pc, #264]	@ 11c8 <malloc+0x160>
    10bc:	e5933000 	ldr	r3, [r3]
    10c0:	e59f2104 	ldr	r2, [pc, #260]	@ 11cc <malloc+0x164>
    10c4:	e5823000 	str	r3, [r2]
    10c8:	e59f30fc 	ldr	r3, [pc, #252]	@ 11cc <malloc+0x164>
    10cc:	e3a02000 	mov	r2, #0
    10d0:	e5832004 	str	r2, [r3, #4]
    10d4:	e51b300c 	ldr	r3, [fp, #-12]
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e50b3008 	str	r3, [fp, #-8]
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5933004 	ldr	r3, [r3, #4]
    10e8:	e51b2010 	ldr	r2, [fp, #-16]
    10ec:	e1520003 	cmp	r2, r3
    10f0:	8a00001e 	bhi	1170 <malloc+0x108>
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5933004 	ldr	r3, [r3, #4]
    10fc:	e51b2010 	ldr	r2, [fp, #-16]
    1100:	e1520003 	cmp	r2, r3
    1104:	1a000004 	bne	111c <malloc+0xb4>
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e5932000 	ldr	r2, [r3]
    1110:	e51b300c 	ldr	r3, [fp, #-12]
    1114:	e5832000 	str	r2, [r3]
    1118:	ea00000e 	b	1158 <malloc+0xf0>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5932004 	ldr	r2, [r3, #4]
    1124:	e51b3010 	ldr	r3, [fp, #-16]
    1128:	e0422003 	sub	r2, r2, r3
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e5832004 	str	r2, [r3, #4]
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e5933004 	ldr	r3, [r3, #4]
    113c:	e1a03183 	lsl	r3, r3, #3
    1140:	e51b2008 	ldr	r2, [fp, #-8]
    1144:	e0823003 	add	r3, r2, r3
    1148:	e50b3008 	str	r3, [fp, #-8]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e51b2010 	ldr	r2, [fp, #-16]
    1154:	e5832004 	str	r2, [r3, #4]
    1158:	e59f2068 	ldr	r2, [pc, #104]	@ 11c8 <malloc+0x160>
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e5823000 	str	r3, [r2]
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e2833008 	add	r3, r3, #8
    116c:	ea000012 	b	11bc <malloc+0x154>
    1170:	e59f3050 	ldr	r3, [pc, #80]	@ 11c8 <malloc+0x160>
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e51b2008 	ldr	r2, [fp, #-8]
    117c:	e1520003 	cmp	r2, r3
    1180:	1a000007 	bne	11a4 <malloc+0x13c>
    1184:	e51b0010 	ldr	r0, [fp, #-16]
    1188:	ebffff94 	bl	fe0 <morecore>
    118c:	e50b0008 	str	r0, [fp, #-8]
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e3530000 	cmp	r3, #0
    1198:	1a000001 	bne	11a4 <malloc+0x13c>
    119c:	e3a03000 	mov	r3, #0
    11a0:	ea000005 	b	11bc <malloc+0x154>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e50b300c 	str	r3, [fp, #-12]
    11ac:	e51b3008 	ldr	r3, [fp, #-8]
    11b0:	e5933000 	ldr	r3, [r3]
    11b4:	e50b3008 	str	r3, [fp, #-8]
    11b8:	eaffffc8 	b	10e0 <malloc+0x78>
    11bc:	e1a00003 	mov	r0, r3
    11c0:	e24bd004 	sub	sp, fp, #4
    11c4:	e8bd8800 	pop	{fp, pc}
    11c8:	00001334 	.word	0x00001334
    11cc:	0000132c 	.word	0x0000132c

000011d0 <__udivsi3>:
    11d0:	e2512001 	subs	r2, r1, #1
    11d4:	012fff1e 	bxeq	lr
    11d8:	3a000036 	bcc	12b8 <__udivsi3+0xe8>
    11dc:	e1500001 	cmp	r0, r1
    11e0:	9a000022 	bls	1270 <__udivsi3+0xa0>
    11e4:	e1110002 	tst	r1, r2
    11e8:	0a000023 	beq	127c <__udivsi3+0xac>
    11ec:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11f0:	01a01181 	lsleq	r1, r1, #3
    11f4:	03a03008 	moveq	r3, #8
    11f8:	13a03001 	movne	r3, #1
    11fc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1200:	31510000 	cmpcc	r1, r0
    1204:	31a01201 	lslcc	r1, r1, #4
    1208:	31a03203 	lslcc	r3, r3, #4
    120c:	3afffffa 	bcc	11fc <__udivsi3+0x2c>
    1210:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1214:	31510000 	cmpcc	r1, r0
    1218:	31a01081 	lslcc	r1, r1, #1
    121c:	31a03083 	lslcc	r3, r3, #1
    1220:	3afffffa 	bcc	1210 <__udivsi3+0x40>
    1224:	e3a02000 	mov	r2, #0
    1228:	e1500001 	cmp	r0, r1
    122c:	20400001 	subcs	r0, r0, r1
    1230:	21822003 	orrcs	r2, r2, r3
    1234:	e15000a1 	cmp	r0, r1, lsr #1
    1238:	204000a1 	subcs	r0, r0, r1, lsr #1
    123c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1240:	e1500121 	cmp	r0, r1, lsr #2
    1244:	20400121 	subcs	r0, r0, r1, lsr #2
    1248:	21822123 	orrcs	r2, r2, r3, lsr #2
    124c:	e15001a1 	cmp	r0, r1, lsr #3
    1250:	204001a1 	subcs	r0, r0, r1, lsr #3
    1254:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1258:	e3500000 	cmp	r0, #0
    125c:	11b03223 	lsrsne	r3, r3, #4
    1260:	11a01221 	lsrne	r1, r1, #4
    1264:	1affffef 	bne	1228 <__udivsi3+0x58>
    1268:	e1a00002 	mov	r0, r2
    126c:	e12fff1e 	bx	lr
    1270:	03a00001 	moveq	r0, #1
    1274:	13a00000 	movne	r0, #0
    1278:	e12fff1e 	bx	lr
    127c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1280:	21a01821 	lsrcs	r1, r1, #16
    1284:	23a02010 	movcs	r2, #16
    1288:	33a02000 	movcc	r2, #0
    128c:	e3510c01 	cmp	r1, #256	@ 0x100
    1290:	21a01421 	lsrcs	r1, r1, #8
    1294:	22822008 	addcs	r2, r2, #8
    1298:	e3510010 	cmp	r1, #16
    129c:	21a01221 	lsrcs	r1, r1, #4
    12a0:	22822004 	addcs	r2, r2, #4
    12a4:	e3510004 	cmp	r1, #4
    12a8:	82822003 	addhi	r2, r2, #3
    12ac:	908220a1 	addls	r2, r2, r1, lsr #1
    12b0:	e1a00230 	lsr	r0, r0, r2
    12b4:	e12fff1e 	bx	lr
    12b8:	e3500000 	cmp	r0, #0
    12bc:	13e00000 	mvnne	r0, #0
    12c0:	ea000007 	b	12e4 <__aeabi_idiv0>

000012c4 <__aeabi_uidivmod>:
    12c4:	e3510000 	cmp	r1, #0
    12c8:	0afffffa 	beq	12b8 <__udivsi3+0xe8>
    12cc:	e92d4003 	push	{r0, r1, lr}
    12d0:	ebffffbe 	bl	11d0 <__udivsi3>
    12d4:	e8bd4006 	pop	{r1, r2, lr}
    12d8:	e0030092 	mul	r3, r2, r0
    12dc:	e0411003 	sub	r1, r1, r3
    12e0:	e12fff1e 	bx	lr

000012e4 <__aeabi_idiv0>:
    12e4:	e12fff1e 	bx	lr
