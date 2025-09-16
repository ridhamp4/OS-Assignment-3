
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <runcmd>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
      10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      14:	e3530000 	cmp	r3, #0
      18:	1a000000 	bne	20 <runcmd+0x20>
      1c:	eb000565 	bl	15b8 <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e2432001 	sub	r2, r3, #1
      2c:	e59f3224 	ldr	r3, [pc, #548]	@ 258 <runcmd+0x258>
      30:	e3520004 	cmp	r2, #4
      34:	8a000001 	bhi	40 <runcmd+0x40>
      38:	e793f102 	ldr	pc, [r3, r2, lsl #2]
      3c:	e1a00000 	nop			@ (mov r0, r0)
      40:	e59f0214 	ldr	r0, [pc, #532]	@ 25c <runcmd+0x25c>
      44:	eb0000eb 	bl	3f8 <panic>
      48:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      54:	e5933004 	ldr	r3, [r3, #4]
      58:	e3530000 	cmp	r3, #0
      5c:	1a000000 	bne	64 <runcmd+0x64>
      60:	eb000554 	bl	15b8 <exit>
      64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      68:	e5932004 	ldr	r2, [r3, #4]
      6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      70:	e2833004 	add	r3, r3, #4
      74:	e1a01003 	mov	r1, r3
      78:	e1a00002 	mov	r0, r2
      7c:	eb00058c 	bl	16b4 <exec>
      80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      84:	e5933004 	ldr	r3, [r3, #4]
      88:	e1a02003 	mov	r2, r3
      8c:	e59f11cc 	ldr	r1, [pc, #460]	@ 260 <runcmd+0x260>
      90:	e3a00002 	mov	r0, #2
      94:	eb00069f 	bl	1b18 <printf>
      98:	ea00006d 	b	254 <runcmd+0x254>
      9c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      a8:	e5933014 	ldr	r3, [r3, #20]
      ac:	e1a00003 	mov	r0, r3
      b0:	eb00056d 	bl	166c <close>
      b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b8:	e5932008 	ldr	r2, [r3, #8]
      bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      c0:	e5933010 	ldr	r3, [r3, #16]
      c4:	e1a01003 	mov	r1, r3
      c8:	e1a00002 	mov	r0, r2
      cc:	eb000581 	bl	16d8 <open>
      d0:	e1a03000 	mov	r3, r0
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000006 	bge	f8 <runcmd+0xf8>
      dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e0:	e5933008 	ldr	r3, [r3, #8]
      e4:	e1a02003 	mov	r2, r3
      e8:	e59f1174 	ldr	r1, [pc, #372]	@ 264 <runcmd+0x264>
      ec:	e3a00002 	mov	r0, #2
      f0:	eb000688 	bl	1b18 <printf>
      f4:	eb00052f 	bl	15b8 <exit>
      f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      fc:	e5933004 	ldr	r3, [r3, #4]
     100:	e1a00003 	mov	r0, r3
     104:	ebffffbd 	bl	0 <runcmd>
     108:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     10c:	e50b300c 	str	r3, [fp, #-12]
     110:	eb0000c2 	bl	420 <fork1>
     114:	e1a03000 	mov	r3, r0
     118:	e3530000 	cmp	r3, #0
     11c:	1a000003 	bne	130 <runcmd+0x130>
     120:	e51b300c 	ldr	r3, [fp, #-12]
     124:	e5933004 	ldr	r3, [r3, #4]
     128:	e1a00003 	mov	r0, r3
     12c:	ebffffb3 	bl	0 <runcmd>
     130:	eb000529 	bl	15dc <wait>
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5933008 	ldr	r3, [r3, #8]
     13c:	e1a00003 	mov	r0, r3
     140:	ebffffae 	bl	0 <runcmd>
     144:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     148:	e50b3010 	str	r3, [fp, #-16]
     14c:	e24b3020 	sub	r3, fp, #32
     150:	e1a00003 	mov	r0, r3
     154:	eb000529 	bl	1600 <pipe>
     158:	e1a03000 	mov	r3, r0
     15c:	e3530000 	cmp	r3, #0
     160:	aa000001 	bge	16c <runcmd+0x16c>
     164:	e59f00fc 	ldr	r0, [pc, #252]	@ 268 <runcmd+0x268>
     168:	eb0000a2 	bl	3f8 <panic>
     16c:	eb0000ab 	bl	420 <fork1>
     170:	e1a03000 	mov	r3, r0
     174:	e3530000 	cmp	r3, #0
     178:	1a00000e 	bne	1b8 <runcmd+0x1b8>
     17c:	e3a00001 	mov	r0, #1
     180:	eb000539 	bl	166c <close>
     184:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     188:	e1a00003 	mov	r0, r3
     18c:	eb000590 	bl	17d4 <dup>
     190:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     194:	e1a00003 	mov	r0, r3
     198:	eb000533 	bl	166c <close>
     19c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1a0:	e1a00003 	mov	r0, r3
     1a4:	eb000530 	bl	166c <close>
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e5933004 	ldr	r3, [r3, #4]
     1b0:	e1a00003 	mov	r0, r3
     1b4:	ebffff91 	bl	0 <runcmd>
     1b8:	eb000098 	bl	420 <fork1>
     1bc:	e1a03000 	mov	r3, r0
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1a00000e 	bne	204 <runcmd+0x204>
     1c8:	e3a00000 	mov	r0, #0
     1cc:	eb000526 	bl	166c <close>
     1d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1d4:	e1a00003 	mov	r0, r3
     1d8:	eb00057d 	bl	17d4 <dup>
     1dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1e0:	e1a00003 	mov	r0, r3
     1e4:	eb000520 	bl	166c <close>
     1e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00051d 	bl	166c <close>
     1f4:	e51b3010 	ldr	r3, [fp, #-16]
     1f8:	e5933008 	ldr	r3, [r3, #8]
     1fc:	e1a00003 	mov	r0, r3
     200:	ebffff7e 	bl	0 <runcmd>
     204:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     208:	e1a00003 	mov	r0, r3
     20c:	eb000516 	bl	166c <close>
     210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     214:	e1a00003 	mov	r0, r3
     218:	eb000513 	bl	166c <close>
     21c:	eb0004ee 	bl	15dc <wait>
     220:	eb0004ed 	bl	15dc <wait>
     224:	ea00000a 	b	254 <runcmd+0x254>
     228:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	eb00007a 	bl	420 <fork1>
     234:	e1a03000 	mov	r3, r0
     238:	e3530000 	cmp	r3, #0
     23c:	1a000003 	bne	250 <runcmd+0x250>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5933004 	ldr	r3, [r3, #4]
     248:	e1a00003 	mov	r0, r3
     24c:	ebffff6b 	bl	0 <runcmd>
     250:	e1a00000 	nop			@ (mov r0, r0)
     254:	eb0004d7 	bl	15b8 <exit>
     258:	00002204 	.word	0x00002204
     25c:	000021d4 	.word	0x000021d4
     260:	000021dc 	.word	0x000021dc
     264:	000021ec 	.word	0x000021ec
     268:	000021fc 	.word	0x000021fc

0000026c <getcmd>:
     26c:	e92d4800 	push	{fp, lr}
     270:	e28db004 	add	fp, sp, #4
     274:	e24dd008 	sub	sp, sp, #8
     278:	e50b0008 	str	r0, [fp, #-8]
     27c:	e50b100c 	str	r1, [fp, #-12]
     280:	e59f104c 	ldr	r1, [pc, #76]	@ 2d4 <getcmd+0x68>
     284:	e3a00002 	mov	r0, #2
     288:	eb000622 	bl	1b18 <printf>
     28c:	e51b300c 	ldr	r3, [fp, #-12]
     290:	e1a02003 	mov	r2, r3
     294:	e3a01000 	mov	r1, #0
     298:	e51b0008 	ldr	r0, [fp, #-8]
     29c:	eb0003d3 	bl	11f0 <memset>
     2a0:	e51b100c 	ldr	r1, [fp, #-12]
     2a4:	e51b0008 	ldr	r0, [fp, #-8]
     2a8:	eb000434 	bl	1380 <gets>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e5d33000 	ldrb	r3, [r3]
     2b4:	e3530000 	cmp	r3, #0
     2b8:	1a000001 	bne	2c4 <getcmd+0x58>
     2bc:	e3e03000 	mvn	r3, #0
     2c0:	ea000000 	b	2c8 <getcmd+0x5c>
     2c4:	e3a03000 	mov	r3, #0
     2c8:	e1a00003 	mov	r0, r3
     2cc:	e24bd004 	sub	sp, fp, #4
     2d0:	e8bd8800 	pop	{fp, pc}
     2d4:	00002218 	.word	0x00002218

000002d8 <main>:
     2d8:	e92d4800 	push	{fp, lr}
     2dc:	e28db004 	add	fp, sp, #4
     2e0:	e24dd008 	sub	sp, sp, #8
     2e4:	ea000005 	b	300 <main+0x28>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e3530002 	cmp	r3, #2
     2f0:	da000002 	ble	300 <main+0x28>
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb0004db 	bl	166c <close>
     2fc:	ea000006 	b	31c <main+0x44>
     300:	e3a01002 	mov	r1, #2
     304:	e59f00dc 	ldr	r0, [pc, #220]	@ 3e8 <main+0x110>
     308:	eb0004f2 	bl	16d8 <open>
     30c:	e50b0008 	str	r0, [fp, #-8]
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e3530000 	cmp	r3, #0
     318:	aafffff2 	bge	2e8 <main+0x10>
     31c:	ea00002a 	b	3cc <main+0xf4>
     320:	e59f30c4 	ldr	r3, [pc, #196]	@ 3ec <main+0x114>
     324:	e5d33000 	ldrb	r3, [r3]
     328:	e3530063 	cmp	r3, #99	@ 0x63
     32c:	1a00001a 	bne	39c <main+0xc4>
     330:	e59f30b4 	ldr	r3, [pc, #180]	@ 3ec <main+0x114>
     334:	e5d33001 	ldrb	r3, [r3, #1]
     338:	e3530064 	cmp	r3, #100	@ 0x64
     33c:	1a000016 	bne	39c <main+0xc4>
     340:	e59f30a4 	ldr	r3, [pc, #164]	@ 3ec <main+0x114>
     344:	e5d33002 	ldrb	r3, [r3, #2]
     348:	e3530020 	cmp	r3, #32
     34c:	1a000012 	bne	39c <main+0xc4>
     350:	e59f0094 	ldr	r0, [pc, #148]	@ 3ec <main+0x114>
     354:	eb000390 	bl	119c <strlen>
     358:	e1a03000 	mov	r3, r0
     35c:	e2433001 	sub	r3, r3, #1
     360:	e59f2084 	ldr	r2, [pc, #132]	@ 3ec <main+0x114>
     364:	e3a01000 	mov	r1, #0
     368:	e7c21003 	strb	r1, [r2, r3]
     36c:	e59f307c 	ldr	r3, [pc, #124]	@ 3f0 <main+0x118>
     370:	e1a00003 	mov	r0, r3
     374:	eb00050d 	bl	17b0 <chdir>
     378:	e1a03000 	mov	r3, r0
     37c:	e3530000 	cmp	r3, #0
     380:	aa000010 	bge	3c8 <main+0xf0>
     384:	e59f3064 	ldr	r3, [pc, #100]	@ 3f0 <main+0x118>
     388:	e1a02003 	mov	r2, r3
     38c:	e59f1060 	ldr	r1, [pc, #96]	@ 3f4 <main+0x11c>
     390:	e3a00002 	mov	r0, #2
     394:	eb0005df 	bl	1b18 <printf>
     398:	ea00000a 	b	3c8 <main+0xf0>
     39c:	eb00001f 	bl	420 <fork1>
     3a0:	e1a03000 	mov	r3, r0
     3a4:	e3530000 	cmp	r3, #0
     3a8:	1a000004 	bne	3c0 <main+0xe8>
     3ac:	e59f0038 	ldr	r0, [pc, #56]	@ 3ec <main+0x114>
     3b0:	eb00015c 	bl	928 <parsecmd>
     3b4:	e1a03000 	mov	r3, r0
     3b8:	e1a00003 	mov	r0, r3
     3bc:	ebffff0f 	bl	0 <runcmd>
     3c0:	eb000485 	bl	15dc <wait>
     3c4:	ea000000 	b	3cc <main+0xf4>
     3c8:	e1a00000 	nop			@ (mov r0, r0)
     3cc:	e3a01064 	mov	r1, #100	@ 0x64
     3d0:	e59f0014 	ldr	r0, [pc, #20]	@ 3ec <main+0x114>
     3d4:	ebffffa4 	bl	26c <getcmd>
     3d8:	e1a03000 	mov	r3, r0
     3dc:	e3530000 	cmp	r3, #0
     3e0:	aaffffce 	bge	320 <main+0x48>
     3e4:	eb000473 	bl	15b8 <exit>
     3e8:	0000221c 	.word	0x0000221c
     3ec:	00002370 	.word	0x00002370
     3f0:	00002373 	.word	0x00002373
     3f4:	00002224 	.word	0x00002224

000003f8 <panic>:
     3f8:	e92d4800 	push	{fp, lr}
     3fc:	e28db004 	add	fp, sp, #4
     400:	e24dd008 	sub	sp, sp, #8
     404:	e50b0008 	str	r0, [fp, #-8]
     408:	e51b2008 	ldr	r2, [fp, #-8]
     40c:	e59f1008 	ldr	r1, [pc, #8]	@ 41c <panic+0x24>
     410:	e3a00002 	mov	r0, #2
     414:	eb0005bf 	bl	1b18 <printf>
     418:	eb000466 	bl	15b8 <exit>
     41c:	00002234 	.word	0x00002234

00000420 <fork1>:
     420:	e92d4800 	push	{fp, lr}
     424:	e28db004 	add	fp, sp, #4
     428:	e24dd008 	sub	sp, sp, #8
     42c:	eb000458 	bl	1594 <fork>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3730001 	cmn	r3, #1
     43c:	1a000001 	bne	448 <fork1+0x28>
     440:	e59f0010 	ldr	r0, [pc, #16]	@ 458 <fork1+0x38>
     444:	ebffffeb 	bl	3f8 <panic>
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e1a00003 	mov	r0, r3
     450:	e24bd004 	sub	sp, fp, #4
     454:	e8bd8800 	pop	{fp, pc}
     458:	00002238 	.word	0x00002238

0000045c <execcmd>:
     45c:	e92d4800 	push	{fp, lr}
     460:	e28db004 	add	fp, sp, #4
     464:	e24dd008 	sub	sp, sp, #8
     468:	e3a00054 	mov	r0, #84	@ 0x54
     46c:	eb0006b8 	bl	1f54 <malloc>
     470:	e50b0008 	str	r0, [fp, #-8]
     474:	e3a02054 	mov	r2, #84	@ 0x54
     478:	e3a01000 	mov	r1, #0
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb00035a 	bl	11f0 <memset>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e3a02001 	mov	r2, #1
     48c:	e5832000 	str	r2, [r3]
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e1a00003 	mov	r0, r3
     498:	e24bd004 	sub	sp, fp, #4
     49c:	e8bd8800 	pop	{fp, pc}

000004a0 <redircmd>:
     4a0:	e92d4800 	push	{fp, lr}
     4a4:	e28db004 	add	fp, sp, #4
     4a8:	e24dd018 	sub	sp, sp, #24
     4ac:	e50b0010 	str	r0, [fp, #-16]
     4b0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4b8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     4bc:	e3a00018 	mov	r0, #24
     4c0:	eb0006a3 	bl	1f54 <malloc>
     4c4:	e50b0008 	str	r0, [fp, #-8]
     4c8:	e3a02018 	mov	r2, #24
     4cc:	e3a01000 	mov	r1, #0
     4d0:	e51b0008 	ldr	r0, [fp, #-8]
     4d4:	eb000345 	bl	11f0 <memset>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e3a02002 	mov	r2, #2
     4e0:	e5832000 	str	r2, [r3]
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e51b2010 	ldr	r2, [fp, #-16]
     4ec:	e5832004 	str	r2, [r3, #4]
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4f8:	e5832008 	str	r2, [r3, #8]
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     504:	e583200c 	str	r2, [r3, #12]
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     510:	e5832010 	str	r2, [r3, #16]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e59b2004 	ldr	r2, [fp, #4]
     51c:	e5832014 	str	r2, [r3, #20]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e1a00003 	mov	r0, r3
     528:	e24bd004 	sub	sp, fp, #4
     52c:	e8bd8800 	pop	{fp, pc}

00000530 <pipecmd>:
     530:	e92d4800 	push	{fp, lr}
     534:	e28db004 	add	fp, sp, #4
     538:	e24dd010 	sub	sp, sp, #16
     53c:	e50b0010 	str	r0, [fp, #-16]
     540:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     544:	e3a0000c 	mov	r0, #12
     548:	eb000681 	bl	1f54 <malloc>
     54c:	e50b0008 	str	r0, [fp, #-8]
     550:	e3a0200c 	mov	r2, #12
     554:	e3a01000 	mov	r1, #0
     558:	e51b0008 	ldr	r0, [fp, #-8]
     55c:	eb000323 	bl	11f0 <memset>
     560:	e51b3008 	ldr	r3, [fp, #-8]
     564:	e3a02003 	mov	r2, #3
     568:	e5832000 	str	r2, [r3]
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e51b2010 	ldr	r2, [fp, #-16]
     574:	e5832004 	str	r2, [r3, #4]
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     580:	e5832008 	str	r2, [r3, #8]
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e1a00003 	mov	r0, r3
     58c:	e24bd004 	sub	sp, fp, #4
     590:	e8bd8800 	pop	{fp, pc}

00000594 <listcmd>:
     594:	e92d4800 	push	{fp, lr}
     598:	e28db004 	add	fp, sp, #4
     59c:	e24dd010 	sub	sp, sp, #16
     5a0:	e50b0010 	str	r0, [fp, #-16]
     5a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5a8:	e3a0000c 	mov	r0, #12
     5ac:	eb000668 	bl	1f54 <malloc>
     5b0:	e50b0008 	str	r0, [fp, #-8]
     5b4:	e3a0200c 	mov	r2, #12
     5b8:	e3a01000 	mov	r1, #0
     5bc:	e51b0008 	ldr	r0, [fp, #-8]
     5c0:	eb00030a 	bl	11f0 <memset>
     5c4:	e51b3008 	ldr	r3, [fp, #-8]
     5c8:	e3a02004 	mov	r2, #4
     5cc:	e5832000 	str	r2, [r3]
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e51b2010 	ldr	r2, [fp, #-16]
     5d8:	e5832004 	str	r2, [r3, #4]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5e4:	e5832008 	str	r2, [r3, #8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e1a00003 	mov	r0, r3
     5f0:	e24bd004 	sub	sp, fp, #4
     5f4:	e8bd8800 	pop	{fp, pc}

000005f8 <backcmd>:
     5f8:	e92d4800 	push	{fp, lr}
     5fc:	e28db004 	add	fp, sp, #4
     600:	e24dd010 	sub	sp, sp, #16
     604:	e50b0010 	str	r0, [fp, #-16]
     608:	e3a00008 	mov	r0, #8
     60c:	eb000650 	bl	1f54 <malloc>
     610:	e50b0008 	str	r0, [fp, #-8]
     614:	e3a02008 	mov	r2, #8
     618:	e3a01000 	mov	r1, #0
     61c:	e51b0008 	ldr	r0, [fp, #-8]
     620:	eb0002f2 	bl	11f0 <memset>
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e3a02005 	mov	r2, #5
     62c:	e5832000 	str	r2, [r3]
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e51b2010 	ldr	r2, [fp, #-16]
     638:	e5832004 	str	r2, [r3, #4]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e1a00003 	mov	r0, r3
     644:	e24bd004 	sub	sp, fp, #4
     648:	e8bd8800 	pop	{fp, pc}

0000064c <gettoken>:
     64c:	e92d4800 	push	{fp, lr}
     650:	e28db004 	add	fp, sp, #4
     654:	e24dd018 	sub	sp, sp, #24
     658:	e50b0010 	str	r0, [fp, #-16]
     65c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     660:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     664:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e5933000 	ldr	r3, [r3]
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	ea000002 	b	684 <gettoken+0x38>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e2833001 	add	r3, r3, #1
     680:	e50b3008 	str	r3, [fp, #-8]
     684:	e51b2008 	ldr	r2, [fp, #-8]
     688:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     68c:	e1520003 	cmp	r2, r3
     690:	2a000007 	bcs	6b4 <gettoken+0x68>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e5d33000 	ldrb	r3, [r3]
     69c:	e1a01003 	mov	r1, r3
     6a0:	e59f01b8 	ldr	r0, [pc, #440]	@ 860 <gettoken+0x214>
     6a4:	eb00031b 	bl	1318 <strchr>
     6a8:	e1a03000 	mov	r3, r0
     6ac:	e3530000 	cmp	r3, #0
     6b0:	1afffff0 	bne	678 <gettoken+0x2c>
     6b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b8:	e3530000 	cmp	r3, #0
     6bc:	0a000002 	beq	6cc <gettoken+0x80>
     6c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c4:	e51b2008 	ldr	r2, [fp, #-8]
     6c8:	e5832000 	str	r2, [r3]
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e5d33000 	ldrb	r3, [r3]
     6d4:	e50b300c 	str	r3, [fp, #-12]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e5d33000 	ldrb	r3, [r3]
     6e0:	e353007c 	cmp	r3, #124	@ 0x7c
     6e4:	0a00000f 	beq	728 <gettoken+0xdc>
     6e8:	e353007c 	cmp	r3, #124	@ 0x7c
     6ec:	ca00001e 	bgt	76c <gettoken+0x120>
     6f0:	e3530000 	cmp	r3, #0
     6f4:	0a000037 	beq	7d8 <gettoken+0x18c>
     6f8:	e3530000 	cmp	r3, #0
     6fc:	ba00001a 	blt	76c <gettoken+0x120>
     700:	e353003e 	cmp	r3, #62	@ 0x3e
     704:	ca000018 	bgt	76c <gettoken+0x120>
     708:	e3530026 	cmp	r3, #38	@ 0x26
     70c:	ba000016 	blt	76c <gettoken+0x120>
     710:	e2432026 	sub	r2, r3, #38	@ 0x26
     714:	e59f3148 	ldr	r3, [pc, #328]	@ 864 <gettoken+0x218>
     718:	e3520018 	cmp	r2, #24
     71c:	8a000012 	bhi	76c <gettoken+0x120>
     720:	e793f102 	ldr	pc, [r3, r2, lsl #2]
     724:	e1a00000 	nop			@ (mov r0, r0)
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e2833001 	add	r3, r3, #1
     730:	e50b3008 	str	r3, [fp, #-8]
     734:	ea00002c 	b	7ec <gettoken+0x1a0>
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e2833001 	add	r3, r3, #1
     740:	e50b3008 	str	r3, [fp, #-8]
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e5d33000 	ldrb	r3, [r3]
     74c:	e353003e 	cmp	r3, #62	@ 0x3e
     750:	1a000022 	bne	7e0 <gettoken+0x194>
     754:	e3a0302b 	mov	r3, #43	@ 0x2b
     758:	e50b300c 	str	r3, [fp, #-12]
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e2833001 	add	r3, r3, #1
     764:	e50b3008 	str	r3, [fp, #-8]
     768:	ea00001c 	b	7e0 <gettoken+0x194>
     76c:	e3a03061 	mov	r3, #97	@ 0x61
     770:	e50b300c 	str	r3, [fp, #-12]
     774:	ea000002 	b	784 <gettoken+0x138>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e2833001 	add	r3, r3, #1
     780:	e50b3008 	str	r3, [fp, #-8]
     784:	e51b2008 	ldr	r2, [fp, #-8]
     788:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     78c:	e1520003 	cmp	r2, r3
     790:	2a000014 	bcs	7e8 <gettoken+0x19c>
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5d33000 	ldrb	r3, [r3]
     79c:	e1a01003 	mov	r1, r3
     7a0:	e59f00b8 	ldr	r0, [pc, #184]	@ 860 <gettoken+0x214>
     7a4:	eb0002db 	bl	1318 <strchr>
     7a8:	e1a03000 	mov	r3, r0
     7ac:	e3530000 	cmp	r3, #0
     7b0:	1a00000c 	bne	7e8 <gettoken+0x19c>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5d33000 	ldrb	r3, [r3]
     7bc:	e1a01003 	mov	r1, r3
     7c0:	e59f00a0 	ldr	r0, [pc, #160]	@ 868 <gettoken+0x21c>
     7c4:	eb0002d3 	bl	1318 <strchr>
     7c8:	e1a03000 	mov	r3, r0
     7cc:	e3530000 	cmp	r3, #0
     7d0:	0affffe8 	beq	778 <gettoken+0x12c>
     7d4:	ea000003 	b	7e8 <gettoken+0x19c>
     7d8:	e1a00000 	nop			@ (mov r0, r0)
     7dc:	ea000002 	b	7ec <gettoken+0x1a0>
     7e0:	e1a00000 	nop			@ (mov r0, r0)
     7e4:	ea000000 	b	7ec <gettoken+0x1a0>
     7e8:	e1a00000 	nop			@ (mov r0, r0)
     7ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     7f0:	e3530000 	cmp	r3, #0
     7f4:	0a000006 	beq	814 <gettoken+0x1c8>
     7f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     7fc:	e51b2008 	ldr	r2, [fp, #-8]
     800:	e5832000 	str	r2, [r3]
     804:	ea000002 	b	814 <gettoken+0x1c8>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e2833001 	add	r3, r3, #1
     810:	e50b3008 	str	r3, [fp, #-8]
     814:	e51b2008 	ldr	r2, [fp, #-8]
     818:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     81c:	e1520003 	cmp	r2, r3
     820:	2a000007 	bcs	844 <gettoken+0x1f8>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e5d33000 	ldrb	r3, [r3]
     82c:	e1a01003 	mov	r1, r3
     830:	e59f0028 	ldr	r0, [pc, #40]	@ 860 <gettoken+0x214>
     834:	eb0002b7 	bl	1318 <strchr>
     838:	e1a03000 	mov	r3, r0
     83c:	e3530000 	cmp	r3, #0
     840:	1afffff0 	bne	808 <gettoken+0x1bc>
     844:	e51b3010 	ldr	r3, [fp, #-16]
     848:	e51b2008 	ldr	r2, [fp, #-8]
     84c:	e5832000 	str	r2, [r3]
     850:	e51b300c 	ldr	r3, [fp, #-12]
     854:	e1a00003 	mov	r0, r3
     858:	e24bd004 	sub	sp, fp, #4
     85c:	e8bd8800 	pop	{fp, pc}
     860:	0000234c 	.word	0x0000234c
     864:	00002240 	.word	0x00002240
     868:	00002354 	.word	0x00002354

0000086c <peek>:
     86c:	e92d4800 	push	{fp, lr}
     870:	e28db004 	add	fp, sp, #4
     874:	e24dd018 	sub	sp, sp, #24
     878:	e50b0010 	str	r0, [fp, #-16]
     87c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     880:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     884:	e51b3010 	ldr	r3, [fp, #-16]
     888:	e5933000 	ldr	r3, [r3]
     88c:	e50b3008 	str	r3, [fp, #-8]
     890:	ea000002 	b	8a0 <peek+0x34>
     894:	e51b3008 	ldr	r3, [fp, #-8]
     898:	e2833001 	add	r3, r3, #1
     89c:	e50b3008 	str	r3, [fp, #-8]
     8a0:	e51b2008 	ldr	r2, [fp, #-8]
     8a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8a8:	e1520003 	cmp	r2, r3
     8ac:	2a000007 	bcs	8d0 <peek+0x64>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5d33000 	ldrb	r3, [r3]
     8b8:	e1a01003 	mov	r1, r3
     8bc:	e59f0060 	ldr	r0, [pc, #96]	@ 924 <peek+0xb8>
     8c0:	eb000294 	bl	1318 <strchr>
     8c4:	e1a03000 	mov	r3, r0
     8c8:	e3530000 	cmp	r3, #0
     8cc:	1afffff0 	bne	894 <peek+0x28>
     8d0:	e51b3010 	ldr	r3, [fp, #-16]
     8d4:	e51b2008 	ldr	r2, [fp, #-8]
     8d8:	e5832000 	str	r2, [r3]
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5d33000 	ldrb	r3, [r3]
     8e4:	e3530000 	cmp	r3, #0
     8e8:	0a000009 	beq	914 <peek+0xa8>
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5d33000 	ldrb	r3, [r3]
     8f4:	e1a01003 	mov	r1, r3
     8f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     8fc:	eb000285 	bl	1318 <strchr>
     900:	e1a03000 	mov	r3, r0
     904:	e3530000 	cmp	r3, #0
     908:	0a000001 	beq	914 <peek+0xa8>
     90c:	e3a03001 	mov	r3, #1
     910:	ea000000 	b	918 <peek+0xac>
     914:	e3a03000 	mov	r3, #0
     918:	e1a00003 	mov	r0, r3
     91c:	e24bd004 	sub	sp, fp, #4
     920:	e8bd8800 	pop	{fp, pc}
     924:	0000234c 	.word	0x0000234c

00000928 <parsecmd>:
     928:	e92d4810 	push	{r4, fp, lr}
     92c:	e28db008 	add	fp, sp, #8
     930:	e24dd014 	sub	sp, sp, #20
     934:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     938:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     93c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     940:	e1a00003 	mov	r0, r3
     944:	eb000214 	bl	119c <strlen>
     948:	e1a03000 	mov	r3, r0
     94c:	e0843003 	add	r3, r4, r3
     950:	e50b3010 	str	r3, [fp, #-16]
     954:	e24b3018 	sub	r3, fp, #24
     958:	e51b1010 	ldr	r1, [fp, #-16]
     95c:	e1a00003 	mov	r0, r3
     960:	eb000019 	bl	9cc <parseline>
     964:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     968:	e24b3018 	sub	r3, fp, #24
     96c:	e59f204c 	ldr	r2, [pc, #76]	@ 9c0 <parsecmd+0x98>
     970:	e51b1010 	ldr	r1, [fp, #-16]
     974:	e1a00003 	mov	r0, r3
     978:	ebffffbb 	bl	86c <peek>
     97c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     980:	e51b2010 	ldr	r2, [fp, #-16]
     984:	e1520003 	cmp	r2, r3
     988:	0a000006 	beq	9a8 <parsecmd+0x80>
     98c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     990:	e1a02003 	mov	r2, r3
     994:	e59f1028 	ldr	r1, [pc, #40]	@ 9c4 <parsecmd+0x9c>
     998:	e3a00002 	mov	r0, #2
     99c:	eb00045d 	bl	1b18 <printf>
     9a0:	e59f0020 	ldr	r0, [pc, #32]	@ 9c8 <parsecmd+0xa0>
     9a4:	ebfffe93 	bl	3f8 <panic>
     9a8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     9ac:	eb00013c 	bl	ea4 <nulterminate>
     9b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9b4:	e1a00003 	mov	r0, r3
     9b8:	e24bd008 	sub	sp, fp, #8
     9bc:	e8bd8810 	pop	{r4, fp, pc}
     9c0:	000022a4 	.word	0x000022a4
     9c4:	000022a8 	.word	0x000022a8
     9c8:	000022b8 	.word	0x000022b8

000009cc <parseline>:
     9cc:	e92d4800 	push	{fp, lr}
     9d0:	e28db004 	add	fp, sp, #4
     9d4:	e24dd010 	sub	sp, sp, #16
     9d8:	e50b0010 	str	r0, [fp, #-16]
     9dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9e0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     9e4:	e51b0010 	ldr	r0, [fp, #-16]
     9e8:	eb00002a 	bl	a98 <parsepipe>
     9ec:	e50b0008 	str	r0, [fp, #-8]
     9f0:	ea000007 	b	a14 <parseline+0x48>
     9f4:	e3a03000 	mov	r3, #0
     9f8:	e3a02000 	mov	r2, #0
     9fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a00:	e51b0010 	ldr	r0, [fp, #-16]
     a04:	ebffff10 	bl	64c <gettoken>
     a08:	e51b0008 	ldr	r0, [fp, #-8]
     a0c:	ebfffef9 	bl	5f8 <backcmd>
     a10:	e50b0008 	str	r0, [fp, #-8]
     a14:	e59f2074 	ldr	r2, [pc, #116]	@ a90 <parseline+0xc4>
     a18:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a1c:	e51b0010 	ldr	r0, [fp, #-16]
     a20:	ebffff91 	bl	86c <peek>
     a24:	e1a03000 	mov	r3, r0
     a28:	e3530000 	cmp	r3, #0
     a2c:	1afffff0 	bne	9f4 <parseline+0x28>
     a30:	e59f205c 	ldr	r2, [pc, #92]	@ a94 <parseline+0xc8>
     a34:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a38:	e51b0010 	ldr	r0, [fp, #-16]
     a3c:	ebffff8a 	bl	86c <peek>
     a40:	e1a03000 	mov	r3, r0
     a44:	e3530000 	cmp	r3, #0
     a48:	0a00000c 	beq	a80 <parseline+0xb4>
     a4c:	e3a03000 	mov	r3, #0
     a50:	e3a02000 	mov	r2, #0
     a54:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a58:	e51b0010 	ldr	r0, [fp, #-16]
     a5c:	ebfffefa 	bl	64c <gettoken>
     a60:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a64:	e51b0010 	ldr	r0, [fp, #-16]
     a68:	ebffffd7 	bl	9cc <parseline>
     a6c:	e1a03000 	mov	r3, r0
     a70:	e1a01003 	mov	r1, r3
     a74:	e51b0008 	ldr	r0, [fp, #-8]
     a78:	ebfffec5 	bl	594 <listcmd>
     a7c:	e50b0008 	str	r0, [fp, #-8]
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e1a00003 	mov	r0, r3
     a88:	e24bd004 	sub	sp, fp, #4
     a8c:	e8bd8800 	pop	{fp, pc}
     a90:	000022c0 	.word	0x000022c0
     a94:	000022c4 	.word	0x000022c4

00000a98 <parsepipe>:
     a98:	e92d4800 	push	{fp, lr}
     a9c:	e28db004 	add	fp, sp, #4
     aa0:	e24dd010 	sub	sp, sp, #16
     aa4:	e50b0010 	str	r0, [fp, #-16]
     aa8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     aac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ab0:	e51b0010 	ldr	r0, [fp, #-16]
     ab4:	eb000097 	bl	d18 <parseexec>
     ab8:	e50b0008 	str	r0, [fp, #-8]
     abc:	e59f2058 	ldr	r2, [pc, #88]	@ b1c <parsepipe+0x84>
     ac0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ac4:	e51b0010 	ldr	r0, [fp, #-16]
     ac8:	ebffff67 	bl	86c <peek>
     acc:	e1a03000 	mov	r3, r0
     ad0:	e3530000 	cmp	r3, #0
     ad4:	0a00000c 	beq	b0c <parsepipe+0x74>
     ad8:	e3a03000 	mov	r3, #0
     adc:	e3a02000 	mov	r2, #0
     ae0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ae4:	e51b0010 	ldr	r0, [fp, #-16]
     ae8:	ebfffed7 	bl	64c <gettoken>
     aec:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     af0:	e51b0010 	ldr	r0, [fp, #-16]
     af4:	ebffffe7 	bl	a98 <parsepipe>
     af8:	e1a03000 	mov	r3, r0
     afc:	e1a01003 	mov	r1, r3
     b00:	e51b0008 	ldr	r0, [fp, #-8]
     b04:	ebfffe89 	bl	530 <pipecmd>
     b08:	e50b0008 	str	r0, [fp, #-8]
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e1a00003 	mov	r0, r3
     b14:	e24bd004 	sub	sp, fp, #4
     b18:	e8bd8800 	pop	{fp, pc}
     b1c:	000022c8 	.word	0x000022c8

00000b20 <parseredirs>:
     b20:	e92d4800 	push	{fp, lr}
     b24:	e28db004 	add	fp, sp, #4
     b28:	e24dd028 	sub	sp, sp, #40	@ 0x28
     b2c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     b30:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     b34:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     b38:	ea000036 	b	c18 <parseredirs+0xf8>
     b3c:	e3a03000 	mov	r3, #0
     b40:	e3a02000 	mov	r2, #0
     b44:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     b48:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     b4c:	ebfffebe 	bl	64c <gettoken>
     b50:	e50b0008 	str	r0, [fp, #-8]
     b54:	e24b3010 	sub	r3, fp, #16
     b58:	e24b200c 	sub	r2, fp, #12
     b5c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     b60:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     b64:	ebfffeb8 	bl	64c <gettoken>
     b68:	e1a03000 	mov	r3, r0
     b6c:	e3530061 	cmp	r3, #97	@ 0x61
     b70:	0a000001 	beq	b7c <parseredirs+0x5c>
     b74:	e59f00c8 	ldr	r0, [pc, #200]	@ c44 <parseredirs+0x124>
     b78:	ebfffe1e 	bl	3f8 <panic>
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e353003e 	cmp	r3, #62	@ 0x3e
     b84:	0a000011 	beq	bd0 <parseredirs+0xb0>
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e353003e 	cmp	r3, #62	@ 0x3e
     b90:	ca000020 	bgt	c18 <parseredirs+0xf8>
     b94:	e51b3008 	ldr	r3, [fp, #-8]
     b98:	e353002b 	cmp	r3, #43	@ 0x2b
     b9c:	0a000014 	beq	bf4 <parseredirs+0xd4>
     ba0:	e51b3008 	ldr	r3, [fp, #-8]
     ba4:	e353003c 	cmp	r3, #60	@ 0x3c
     ba8:	1a00001a 	bne	c18 <parseredirs+0xf8>
     bac:	e51b100c 	ldr	r1, [fp, #-12]
     bb0:	e51b2010 	ldr	r2, [fp, #-16]
     bb4:	e3a03000 	mov	r3, #0
     bb8:	e58d3000 	str	r3, [sp]
     bbc:	e3a03000 	mov	r3, #0
     bc0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     bc4:	ebfffe35 	bl	4a0 <redircmd>
     bc8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     bcc:	ea000011 	b	c18 <parseredirs+0xf8>
     bd0:	e51b100c 	ldr	r1, [fp, #-12]
     bd4:	e51b2010 	ldr	r2, [fp, #-16]
     bd8:	e3a03001 	mov	r3, #1
     bdc:	e58d3000 	str	r3, [sp]
     be0:	e59f3060 	ldr	r3, [pc, #96]	@ c48 <parseredirs+0x128>
     be4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     be8:	ebfffe2c 	bl	4a0 <redircmd>
     bec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     bf0:	ea000008 	b	c18 <parseredirs+0xf8>
     bf4:	e51b100c 	ldr	r1, [fp, #-12]
     bf8:	e51b2010 	ldr	r2, [fp, #-16]
     bfc:	e3a03001 	mov	r3, #1
     c00:	e58d3000 	str	r3, [sp]
     c04:	e59f303c 	ldr	r3, [pc, #60]	@ c48 <parseredirs+0x128>
     c08:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c0c:	ebfffe23 	bl	4a0 <redircmd>
     c10:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c14:	e1a00000 	nop			@ (mov r0, r0)
     c18:	e59f202c 	ldr	r2, [pc, #44]	@ c4c <parseredirs+0x12c>
     c1c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     c20:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     c24:	ebffff10 	bl	86c <peek>
     c28:	e1a03000 	mov	r3, r0
     c2c:	e3530000 	cmp	r3, #0
     c30:	1affffc1 	bne	b3c <parseredirs+0x1c>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e1a00003 	mov	r0, r3
     c3c:	e24bd004 	sub	sp, fp, #4
     c40:	e8bd8800 	pop	{fp, pc}
     c44:	000022cc 	.word	0x000022cc
     c48:	00000201 	.word	0x00000201
     c4c:	000022ec 	.word	0x000022ec

00000c50 <parseblock>:
     c50:	e92d4800 	push	{fp, lr}
     c54:	e28db004 	add	fp, sp, #4
     c58:	e24dd010 	sub	sp, sp, #16
     c5c:	e50b0010 	str	r0, [fp, #-16]
     c60:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     c64:	e59f209c 	ldr	r2, [pc, #156]	@ d08 <parseblock+0xb8>
     c68:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c6c:	e51b0010 	ldr	r0, [fp, #-16]
     c70:	ebfffefd 	bl	86c <peek>
     c74:	e1a03000 	mov	r3, r0
     c78:	e3530000 	cmp	r3, #0
     c7c:	1a000001 	bne	c88 <parseblock+0x38>
     c80:	e59f0084 	ldr	r0, [pc, #132]	@ d0c <parseblock+0xbc>
     c84:	ebfffddb 	bl	3f8 <panic>
     c88:	e3a03000 	mov	r3, #0
     c8c:	e3a02000 	mov	r2, #0
     c90:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c94:	e51b0010 	ldr	r0, [fp, #-16]
     c98:	ebfffe6b 	bl	64c <gettoken>
     c9c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ca0:	e51b0010 	ldr	r0, [fp, #-16]
     ca4:	ebffff48 	bl	9cc <parseline>
     ca8:	e50b0008 	str	r0, [fp, #-8]
     cac:	e59f205c 	ldr	r2, [pc, #92]	@ d10 <parseblock+0xc0>
     cb0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     cb4:	e51b0010 	ldr	r0, [fp, #-16]
     cb8:	ebfffeeb 	bl	86c <peek>
     cbc:	e1a03000 	mov	r3, r0
     cc0:	e3530000 	cmp	r3, #0
     cc4:	1a000001 	bne	cd0 <parseblock+0x80>
     cc8:	e59f0044 	ldr	r0, [pc, #68]	@ d14 <parseblock+0xc4>
     ccc:	ebfffdc9 	bl	3f8 <panic>
     cd0:	e3a03000 	mov	r3, #0
     cd4:	e3a02000 	mov	r2, #0
     cd8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     cdc:	e51b0010 	ldr	r0, [fp, #-16]
     ce0:	ebfffe59 	bl	64c <gettoken>
     ce4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     ce8:	e51b1010 	ldr	r1, [fp, #-16]
     cec:	e51b0008 	ldr	r0, [fp, #-8]
     cf0:	ebffff8a 	bl	b20 <parseredirs>
     cf4:	e50b0008 	str	r0, [fp, #-8]
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e1a00003 	mov	r0, r3
     d00:	e24bd004 	sub	sp, fp, #4
     d04:	e8bd8800 	pop	{fp, pc}
     d08:	000022f0 	.word	0x000022f0
     d0c:	000022f4 	.word	0x000022f4
     d10:	00002300 	.word	0x00002300
     d14:	00002304 	.word	0x00002304

00000d18 <parseexec>:
     d18:	e92d4800 	push	{fp, lr}
     d1c:	e28db004 	add	fp, sp, #4
     d20:	e24dd020 	sub	sp, sp, #32
     d24:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     d28:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
     d2c:	e59f2160 	ldr	r2, [pc, #352]	@ e94 <parseexec+0x17c>
     d30:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d34:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d38:	ebfffecb 	bl	86c <peek>
     d3c:	e1a03000 	mov	r3, r0
     d40:	e3530000 	cmp	r3, #0
     d44:	0a000004 	beq	d5c <parseexec+0x44>
     d48:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d4c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d50:	ebffffbe 	bl	c50 <parseblock>
     d54:	e1a03000 	mov	r3, r0
     d58:	ea00004a 	b	e88 <parseexec+0x170>
     d5c:	ebfffdbe 	bl	45c <execcmd>
     d60:	e50b000c 	str	r0, [fp, #-12]
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e50b3010 	str	r3, [fp, #-16]
     d6c:	e3a03000 	mov	r3, #0
     d70:	e50b3008 	str	r3, [fp, #-8]
     d74:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     d78:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     d7c:	e51b000c 	ldr	r0, [fp, #-12]
     d80:	ebffff66 	bl	b20 <parseredirs>
     d84:	e50b000c 	str	r0, [fp, #-12]
     d88:	ea000027 	b	e2c <parseexec+0x114>
     d8c:	e24b301c 	sub	r3, fp, #28
     d90:	e24b2018 	sub	r2, fp, #24
     d94:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d98:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d9c:	ebfffe2a 	bl	64c <gettoken>
     da0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     da4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da8:	e3530000 	cmp	r3, #0
     dac:	0a000026 	beq	e4c <parseexec+0x134>
     db0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     db4:	e3530061 	cmp	r3, #97	@ 0x61
     db8:	0a000001 	beq	dc4 <parseexec+0xac>
     dbc:	e59f00d4 	ldr	r0, [pc, #212]	@ e98 <parseexec+0x180>
     dc0:	ebfffd8c 	bl	3f8 <panic>
     dc4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     dc8:	e51b1010 	ldr	r1, [fp, #-16]
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e1a03103 	lsl	r3, r3, #2
     dd4:	e0813003 	add	r3, r1, r3
     dd8:	e5832004 	str	r2, [r3, #4]
     ddc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     de0:	e51b1010 	ldr	r1, [fp, #-16]
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e283300a 	add	r3, r3, #10
     dec:	e1a03103 	lsl	r3, r3, #2
     df0:	e0813003 	add	r3, r1, r3
     df4:	e5832004 	str	r2, [r3, #4]
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e2833001 	add	r3, r3, #1
     e00:	e50b3008 	str	r3, [fp, #-8]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e3530009 	cmp	r3, #9
     e0c:	da000001 	ble	e18 <parseexec+0x100>
     e10:	e59f0084 	ldr	r0, [pc, #132]	@ e9c <parseexec+0x184>
     e14:	ebfffd77 	bl	3f8 <panic>
     e18:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     e1c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     e20:	e51b000c 	ldr	r0, [fp, #-12]
     e24:	ebffff3d 	bl	b20 <parseredirs>
     e28:	e50b000c 	str	r0, [fp, #-12]
     e2c:	e59f206c 	ldr	r2, [pc, #108]	@ ea0 <parseexec+0x188>
     e30:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     e34:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     e38:	ebfffe8b 	bl	86c <peek>
     e3c:	e1a03000 	mov	r3, r0
     e40:	e3530000 	cmp	r3, #0
     e44:	0affffd0 	beq	d8c <parseexec+0x74>
     e48:	ea000000 	b	e50 <parseexec+0x138>
     e4c:	e1a00000 	nop			@ (mov r0, r0)
     e50:	e51b2010 	ldr	r2, [fp, #-16]
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e1a03103 	lsl	r3, r3, #2
     e5c:	e0823003 	add	r3, r2, r3
     e60:	e3a02000 	mov	r2, #0
     e64:	e5832004 	str	r2, [r3, #4]
     e68:	e51b2010 	ldr	r2, [fp, #-16]
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e283300a 	add	r3, r3, #10
     e74:	e1a03103 	lsl	r3, r3, #2
     e78:	e0823003 	add	r3, r2, r3
     e7c:	e3a02000 	mov	r2, #0
     e80:	e5832004 	str	r2, [r3, #4]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e1a00003 	mov	r0, r3
     e8c:	e24bd004 	sub	sp, fp, #4
     e90:	e8bd8800 	pop	{fp, pc}
     e94:	000022f0 	.word	0x000022f0
     e98:	000022b8 	.word	0x000022b8
     e9c:	00002318 	.word	0x00002318
     ea0:	00002328 	.word	0x00002328

00000ea4 <nulterminate>:
     ea4:	e92d4800 	push	{fp, lr}
     ea8:	e28db004 	add	fp, sp, #4
     eac:	e24dd020 	sub	sp, sp, #32
     eb0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     eb4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1a000001 	bne	ec8 <nulterminate+0x24>
     ec0:	e3a03000 	mov	r3, #0
     ec4:	ea000048 	b	fec <nulterminate+0x148>
     ec8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e2432001 	sub	r2, r3, #1
     ed4:	e59f311c 	ldr	r3, [pc, #284]	@ ff8 <nulterminate+0x154>
     ed8:	e3520004 	cmp	r2, #4
     edc:	8a000041 	bhi	fe8 <nulterminate+0x144>
     ee0:	e793f102 	ldr	pc, [r3, r2, lsl #2]
     ee4:	e1a00000 	nop			@ (mov r0, r0)
     ee8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     eec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ef0:	e3a03000 	mov	r3, #0
     ef4:	e50b3008 	str	r3, [fp, #-8]
     ef8:	ea00000a 	b	f28 <nulterminate+0x84>
     efc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e283300a 	add	r3, r3, #10
     f08:	e1a03103 	lsl	r3, r3, #2
     f0c:	e0823003 	add	r3, r2, r3
     f10:	e5933004 	ldr	r3, [r3, #4]
     f14:	e3a02000 	mov	r2, #0
     f18:	e5c32000 	strb	r2, [r3]
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e2833001 	add	r3, r3, #1
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e1a03103 	lsl	r3, r3, #2
     f34:	e0823003 	add	r3, r2, r3
     f38:	e5933004 	ldr	r3, [r3, #4]
     f3c:	e3530000 	cmp	r3, #0
     f40:	1affffed 	bne	efc <nulterminate+0x58>
     f44:	ea000027 	b	fe8 <nulterminate+0x144>
     f48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e1a00003 	mov	r0, r3
     f5c:	ebffffd0 	bl	ea4 <nulterminate>
     f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f64:	e593300c 	ldr	r3, [r3, #12]
     f68:	e3a02000 	mov	r2, #0
     f6c:	e5c32000 	strb	r2, [r3]
     f70:	ea00001c 	b	fe8 <nulterminate+0x144>
     f74:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f80:	e5933004 	ldr	r3, [r3, #4]
     f84:	e1a00003 	mov	r0, r3
     f88:	ebffffc5 	bl	ea4 <nulterminate>
     f8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f90:	e5933008 	ldr	r3, [r3, #8]
     f94:	e1a00003 	mov	r0, r3
     f98:	ebffffc1 	bl	ea4 <nulterminate>
     f9c:	ea000011 	b	fe8 <nulterminate+0x144>
     fa0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fa4:	e50b3010 	str	r3, [fp, #-16]
     fa8:	e51b3010 	ldr	r3, [fp, #-16]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e1a00003 	mov	r0, r3
     fb4:	ebffffba 	bl	ea4 <nulterminate>
     fb8:	e51b3010 	ldr	r3, [fp, #-16]
     fbc:	e5933008 	ldr	r3, [r3, #8]
     fc0:	e1a00003 	mov	r0, r3
     fc4:	ebffffb6 	bl	ea4 <nulterminate>
     fc8:	ea000006 	b	fe8 <nulterminate+0x144>
     fcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e5933004 	ldr	r3, [r3, #4]
     fdc:	e1a00003 	mov	r0, r3
     fe0:	ebffffaf 	bl	ea4 <nulterminate>
     fe4:	e1a00000 	nop			@ (mov r0, r0)
     fe8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fec:	e1a00003 	mov	r0, r3
     ff0:	e24bd004 	sub	sp, fp, #4
     ff4:	e8bd8800 	pop	{fp, pc}
     ff8:	00002330 	.word	0x00002330

00000ffc <strcpy>:
     ffc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1000:	e28db000 	add	fp, sp, #0
    1004:	e24dd014 	sub	sp, sp, #20
    1008:	e50b0010 	str	r0, [fp, #-16]
    100c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1010:	e51b3010 	ldr	r3, [fp, #-16]
    1014:	e50b3008 	str	r3, [fp, #-8]
    1018:	e1a00000 	nop			@ (mov r0, r0)
    101c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1020:	e2823001 	add	r3, r2, #1
    1024:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1028:	e51b3010 	ldr	r3, [fp, #-16]
    102c:	e2831001 	add	r1, r3, #1
    1030:	e50b1010 	str	r1, [fp, #-16]
    1034:	e5d22000 	ldrb	r2, [r2]
    1038:	e5c32000 	strb	r2, [r3]
    103c:	e5d33000 	ldrb	r3, [r3]
    1040:	e3530000 	cmp	r3, #0
    1044:	1afffff4 	bne	101c <strcpy+0x20>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e1a00003 	mov	r0, r3
    1050:	e28bd000 	add	sp, fp, #0
    1054:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1058:	e12fff1e 	bx	lr

0000105c <strncmp>:
    105c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1060:	e28db000 	add	fp, sp, #0
    1064:	e24dd014 	sub	sp, sp, #20
    1068:	e50b0008 	str	r0, [fp, #-8]
    106c:	e50b100c 	str	r1, [fp, #-12]
    1070:	e50b2010 	str	r2, [fp, #-16]
    1074:	ea000008 	b	109c <strncmp+0x40>
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e2833001 	add	r3, r3, #1
    1080:	e50b3008 	str	r3, [fp, #-8]
    1084:	e51b300c 	ldr	r3, [fp, #-12]
    1088:	e2833001 	add	r3, r3, #1
    108c:	e50b300c 	str	r3, [fp, #-12]
    1090:	e51b3010 	ldr	r3, [fp, #-16]
    1094:	e2433001 	sub	r3, r3, #1
    1098:	e50b3010 	str	r3, [fp, #-16]
    109c:	e51b3010 	ldr	r3, [fp, #-16]
    10a0:	e3530000 	cmp	r3, #0
    10a4:	da00000d 	ble	10e0 <strncmp+0x84>
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e5d33000 	ldrb	r3, [r3]
    10b0:	e3530000 	cmp	r3, #0
    10b4:	0a000009 	beq	10e0 <strncmp+0x84>
    10b8:	e51b300c 	ldr	r3, [fp, #-12]
    10bc:	e5d33000 	ldrb	r3, [r3]
    10c0:	e3530000 	cmp	r3, #0
    10c4:	0a000005 	beq	10e0 <strncmp+0x84>
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5d32000 	ldrb	r2, [r3]
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5d33000 	ldrb	r3, [r3]
    10d8:	e1520003 	cmp	r2, r3
    10dc:	0affffe5 	beq	1078 <strncmp+0x1c>
    10e0:	e51b3010 	ldr	r3, [fp, #-16]
    10e4:	e3530000 	cmp	r3, #0
    10e8:	1a000001 	bne	10f4 <strncmp+0x98>
    10ec:	e3a03000 	mov	r3, #0
    10f0:	ea000005 	b	110c <strncmp+0xb0>
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5d33000 	ldrb	r3, [r3]
    10fc:	e1a02003 	mov	r2, r3
    1100:	e51b300c 	ldr	r3, [fp, #-12]
    1104:	e5d33000 	ldrb	r3, [r3]
    1108:	e0423003 	sub	r3, r2, r3
    110c:	e1a00003 	mov	r0, r3
    1110:	e28bd000 	add	sp, fp, #0
    1114:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1118:	e12fff1e 	bx	lr

0000111c <strcmp>:
    111c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1120:	e28db000 	add	fp, sp, #0
    1124:	e24dd00c 	sub	sp, sp, #12
    1128:	e50b0008 	str	r0, [fp, #-8]
    112c:	e50b100c 	str	r1, [fp, #-12]
    1130:	ea000005 	b	114c <strcmp+0x30>
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e2833001 	add	r3, r3, #1
    113c:	e50b3008 	str	r3, [fp, #-8]
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e2833001 	add	r3, r3, #1
    1148:	e50b300c 	str	r3, [fp, #-12]
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e5d33000 	ldrb	r3, [r3]
    1154:	e3530000 	cmp	r3, #0
    1158:	0a000005 	beq	1174 <strcmp+0x58>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5d32000 	ldrb	r2, [r3]
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5d33000 	ldrb	r3, [r3]
    116c:	e1520003 	cmp	r2, r3
    1170:	0affffef 	beq	1134 <strcmp+0x18>
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5d33000 	ldrb	r3, [r3]
    117c:	e1a02003 	mov	r2, r3
    1180:	e51b300c 	ldr	r3, [fp, #-12]
    1184:	e5d33000 	ldrb	r3, [r3]
    1188:	e0423003 	sub	r3, r2, r3
    118c:	e1a00003 	mov	r0, r3
    1190:	e28bd000 	add	sp, fp, #0
    1194:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1198:	e12fff1e 	bx	lr

0000119c <strlen>:
    119c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11a0:	e28db000 	add	fp, sp, #0
    11a4:	e24dd014 	sub	sp, sp, #20
    11a8:	e50b0010 	str	r0, [fp, #-16]
    11ac:	e3a03000 	mov	r3, #0
    11b0:	e50b3008 	str	r3, [fp, #-8]
    11b4:	ea000002 	b	11c4 <strlen+0x28>
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e2833001 	add	r3, r3, #1
    11c0:	e50b3008 	str	r3, [fp, #-8]
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e51b2010 	ldr	r2, [fp, #-16]
    11cc:	e0823003 	add	r3, r2, r3
    11d0:	e5d33000 	ldrb	r3, [r3]
    11d4:	e3530000 	cmp	r3, #0
    11d8:	1afffff6 	bne	11b8 <strlen+0x1c>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e1a00003 	mov	r0, r3
    11e4:	e28bd000 	add	sp, fp, #0
    11e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11ec:	e12fff1e 	bx	lr

000011f0 <memset>:
    11f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11f4:	e28db000 	add	fp, sp, #0
    11f8:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1200:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1204:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    1208:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    120c:	e50b3008 	str	r3, [fp, #-8]
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e54b300d 	strb	r3, [fp, #-13]
    1218:	e55b200d 	ldrb	r2, [fp, #-13]
    121c:	e1a03002 	mov	r3, r2
    1220:	e1a03403 	lsl	r3, r3, #8
    1224:	e0833002 	add	r3, r3, r2
    1228:	e1a03803 	lsl	r3, r3, #16
    122c:	e1a02003 	mov	r2, r3
    1230:	e55b300d 	ldrb	r3, [fp, #-13]
    1234:	e1a03403 	lsl	r3, r3, #8
    1238:	e1822003 	orr	r2, r2, r3
    123c:	e55b300d 	ldrb	r3, [fp, #-13]
    1240:	e1823003 	orr	r3, r2, r3
    1244:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1248:	ea000008 	b	1270 <memset+0x80>
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e55b200d 	ldrb	r2, [fp, #-13]
    1254:	e5c32000 	strb	r2, [r3]
    1258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    125c:	e2433001 	sub	r3, r3, #1
    1260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e2833001 	add	r3, r3, #1
    126c:	e50b3008 	str	r3, [fp, #-8]
    1270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1274:	e3530000 	cmp	r3, #0
    1278:	0a000003 	beq	128c <memset+0x9c>
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e2033003 	and	r3, r3, #3
    1284:	e3530000 	cmp	r3, #0
    1288:	1affffef 	bne	124c <memset+0x5c>
    128c:	e51b3008 	ldr	r3, [fp, #-8]
    1290:	e50b300c 	str	r3, [fp, #-12]
    1294:	ea000008 	b	12bc <memset+0xcc>
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    12a0:	e5832000 	str	r2, [r3]
    12a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    12a8:	e2433004 	sub	r3, r3, #4
    12ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e2833004 	add	r3, r3, #4
    12b8:	e50b300c 	str	r3, [fp, #-12]
    12bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    12c0:	e3530003 	cmp	r3, #3
    12c4:	8afffff3 	bhi	1298 <memset+0xa8>
    12c8:	e51b300c 	ldr	r3, [fp, #-12]
    12cc:	e50b3008 	str	r3, [fp, #-8]
    12d0:	ea000008 	b	12f8 <memset+0x108>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e55b200d 	ldrb	r2, [fp, #-13]
    12dc:	e5c32000 	strb	r2, [r3]
    12e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    12e4:	e2433001 	sub	r3, r3, #1
    12e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e2833001 	add	r3, r3, #1
    12f4:	e50b3008 	str	r3, [fp, #-8]
    12f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    12fc:	e3530000 	cmp	r3, #0
    1300:	1afffff3 	bne	12d4 <memset+0xe4>
    1304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1308:	e1a00003 	mov	r0, r3
    130c:	e28bd000 	add	sp, fp, #0
    1310:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1314:	e12fff1e 	bx	lr

00001318 <strchr>:
    1318:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    131c:	e28db000 	add	fp, sp, #0
    1320:	e24dd00c 	sub	sp, sp, #12
    1324:	e50b0008 	str	r0, [fp, #-8]
    1328:	e1a03001 	mov	r3, r1
    132c:	e54b3009 	strb	r3, [fp, #-9]
    1330:	ea000009 	b	135c <strchr+0x44>
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5d33000 	ldrb	r3, [r3]
    133c:	e55b2009 	ldrb	r2, [fp, #-9]
    1340:	e1520003 	cmp	r2, r3
    1344:	1a000001 	bne	1350 <strchr+0x38>
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	ea000007 	b	1370 <strchr+0x58>
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e2833001 	add	r3, r3, #1
    1358:	e50b3008 	str	r3, [fp, #-8]
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e5d33000 	ldrb	r3, [r3]
    1364:	e3530000 	cmp	r3, #0
    1368:	1afffff1 	bne	1334 <strchr+0x1c>
    136c:	e3a03000 	mov	r3, #0
    1370:	e1a00003 	mov	r0, r3
    1374:	e28bd000 	add	sp, fp, #0
    1378:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    137c:	e12fff1e 	bx	lr

00001380 <gets>:
    1380:	e92d4800 	push	{fp, lr}
    1384:	e28db004 	add	fp, sp, #4
    1388:	e24dd018 	sub	sp, sp, #24
    138c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1390:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1394:	e3a03000 	mov	r3, #0
    1398:	e50b3008 	str	r3, [fp, #-8]
    139c:	ea000016 	b	13fc <gets+0x7c>
    13a0:	e24b300d 	sub	r3, fp, #13
    13a4:	e3a02001 	mov	r2, #1
    13a8:	e1a01003 	mov	r1, r3
    13ac:	e3a00000 	mov	r0, #0
    13b0:	eb00009b 	bl	1624 <read>
    13b4:	e50b000c 	str	r0, [fp, #-12]
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e3530000 	cmp	r3, #0
    13c0:	da000013 	ble	1414 <gets+0x94>
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e2832001 	add	r2, r3, #1
    13cc:	e50b2008 	str	r2, [fp, #-8]
    13d0:	e1a02003 	mov	r2, r3
    13d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d8:	e0833002 	add	r3, r3, r2
    13dc:	e55b200d 	ldrb	r2, [fp, #-13]
    13e0:	e5c32000 	strb	r2, [r3]
    13e4:	e55b300d 	ldrb	r3, [fp, #-13]
    13e8:	e353000a 	cmp	r3, #10
    13ec:	0a000009 	beq	1418 <gets+0x98>
    13f0:	e55b300d 	ldrb	r3, [fp, #-13]
    13f4:	e353000d 	cmp	r3, #13
    13f8:	0a000006 	beq	1418 <gets+0x98>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e2833001 	add	r3, r3, #1
    1404:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1408:	e1520003 	cmp	r2, r3
    140c:	caffffe3 	bgt	13a0 <gets+0x20>
    1410:	ea000000 	b	1418 <gets+0x98>
    1414:	e1a00000 	nop			@ (mov r0, r0)
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1420:	e0823003 	add	r3, r2, r3
    1424:	e3a02000 	mov	r2, #0
    1428:	e5c32000 	strb	r2, [r3]
    142c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1430:	e1a00003 	mov	r0, r3
    1434:	e24bd004 	sub	sp, fp, #4
    1438:	e8bd8800 	pop	{fp, pc}

0000143c <stat>:
    143c:	e92d4800 	push	{fp, lr}
    1440:	e28db004 	add	fp, sp, #4
    1444:	e24dd010 	sub	sp, sp, #16
    1448:	e50b0010 	str	r0, [fp, #-16]
    144c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1450:	e3a01000 	mov	r1, #0
    1454:	e51b0010 	ldr	r0, [fp, #-16]
    1458:	eb00009e 	bl	16d8 <open>
    145c:	e50b0008 	str	r0, [fp, #-8]
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e3530000 	cmp	r3, #0
    1468:	aa000001 	bge	1474 <stat+0x38>
    146c:	e3e03000 	mvn	r3, #0
    1470:	ea000006 	b	1490 <stat+0x54>
    1474:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1478:	e51b0008 	ldr	r0, [fp, #-8]
    147c:	eb0000b0 	bl	1744 <fstat>
    1480:	e50b000c 	str	r0, [fp, #-12]
    1484:	e51b0008 	ldr	r0, [fp, #-8]
    1488:	eb000077 	bl	166c <close>
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e1a00003 	mov	r0, r3
    1494:	e24bd004 	sub	sp, fp, #4
    1498:	e8bd8800 	pop	{fp, pc}

0000149c <atoi>:
    149c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14a0:	e28db000 	add	fp, sp, #0
    14a4:	e24dd014 	sub	sp, sp, #20
    14a8:	e50b0010 	str	r0, [fp, #-16]
    14ac:	e3a03000 	mov	r3, #0
    14b0:	e50b3008 	str	r3, [fp, #-8]
    14b4:	ea00000c 	b	14ec <atoi+0x50>
    14b8:	e51b2008 	ldr	r2, [fp, #-8]
    14bc:	e1a03002 	mov	r3, r2
    14c0:	e1a03103 	lsl	r3, r3, #2
    14c4:	e0833002 	add	r3, r3, r2
    14c8:	e1a03083 	lsl	r3, r3, #1
    14cc:	e1a01003 	mov	r1, r3
    14d0:	e51b3010 	ldr	r3, [fp, #-16]
    14d4:	e2832001 	add	r2, r3, #1
    14d8:	e50b2010 	str	r2, [fp, #-16]
    14dc:	e5d33000 	ldrb	r3, [r3]
    14e0:	e0813003 	add	r3, r1, r3
    14e4:	e2433030 	sub	r3, r3, #48	@ 0x30
    14e8:	e50b3008 	str	r3, [fp, #-8]
    14ec:	e51b3010 	ldr	r3, [fp, #-16]
    14f0:	e5d33000 	ldrb	r3, [r3]
    14f4:	e353002f 	cmp	r3, #47	@ 0x2f
    14f8:	9a000003 	bls	150c <atoi+0x70>
    14fc:	e51b3010 	ldr	r3, [fp, #-16]
    1500:	e5d33000 	ldrb	r3, [r3]
    1504:	e3530039 	cmp	r3, #57	@ 0x39
    1508:	9affffea 	bls	14b8 <atoi+0x1c>
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e1a00003 	mov	r0, r3
    1514:	e28bd000 	add	sp, fp, #0
    1518:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    151c:	e12fff1e 	bx	lr

00001520 <memmove>:
    1520:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1524:	e28db000 	add	fp, sp, #0
    1528:	e24dd01c 	sub	sp, sp, #28
    152c:	e50b0010 	str	r0, [fp, #-16]
    1530:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1534:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1538:	e51b3010 	ldr	r3, [fp, #-16]
    153c:	e50b3008 	str	r3, [fp, #-8]
    1540:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1544:	e50b300c 	str	r3, [fp, #-12]
    1548:	ea000007 	b	156c <memmove+0x4c>
    154c:	e51b200c 	ldr	r2, [fp, #-12]
    1550:	e2823001 	add	r3, r2, #1
    1554:	e50b300c 	str	r3, [fp, #-12]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e2831001 	add	r1, r3, #1
    1560:	e50b1008 	str	r1, [fp, #-8]
    1564:	e5d22000 	ldrb	r2, [r2]
    1568:	e5c32000 	strb	r2, [r3]
    156c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1570:	e2432001 	sub	r2, r3, #1
    1574:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1578:	e3530000 	cmp	r3, #0
    157c:	cafffff2 	bgt	154c <memmove+0x2c>
    1580:	e51b3010 	ldr	r3, [fp, #-16]
    1584:	e1a00003 	mov	r0, r3
    1588:	e28bd000 	add	sp, fp, #0
    158c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1590:	e12fff1e 	bx	lr

00001594 <fork>:
    1594:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1598:	e1a04003 	mov	r4, r3
    159c:	e1a03002 	mov	r3, r2
    15a0:	e1a02001 	mov	r2, r1
    15a4:	e1a01000 	mov	r1, r0
    15a8:	e3a00001 	mov	r0, #1
    15ac:	ef000000 	svc	0x00000000
    15b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15b4:	e12fff1e 	bx	lr

000015b8 <exit>:
    15b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15bc:	e1a04003 	mov	r4, r3
    15c0:	e1a03002 	mov	r3, r2
    15c4:	e1a02001 	mov	r2, r1
    15c8:	e1a01000 	mov	r1, r0
    15cc:	e3a00002 	mov	r0, #2
    15d0:	ef000000 	svc	0x00000000
    15d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15d8:	e12fff1e 	bx	lr

000015dc <wait>:
    15dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15e0:	e1a04003 	mov	r4, r3
    15e4:	e1a03002 	mov	r3, r2
    15e8:	e1a02001 	mov	r2, r1
    15ec:	e1a01000 	mov	r1, r0
    15f0:	e3a00003 	mov	r0, #3
    15f4:	ef000000 	svc	0x00000000
    15f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15fc:	e12fff1e 	bx	lr

00001600 <pipe>:
    1600:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1604:	e1a04003 	mov	r4, r3
    1608:	e1a03002 	mov	r3, r2
    160c:	e1a02001 	mov	r2, r1
    1610:	e1a01000 	mov	r1, r0
    1614:	e3a00004 	mov	r0, #4
    1618:	ef000000 	svc	0x00000000
    161c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1620:	e12fff1e 	bx	lr

00001624 <read>:
    1624:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1628:	e1a04003 	mov	r4, r3
    162c:	e1a03002 	mov	r3, r2
    1630:	e1a02001 	mov	r2, r1
    1634:	e1a01000 	mov	r1, r0
    1638:	e3a00005 	mov	r0, #5
    163c:	ef000000 	svc	0x00000000
    1640:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1644:	e12fff1e 	bx	lr

00001648 <write>:
    1648:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    164c:	e1a04003 	mov	r4, r3
    1650:	e1a03002 	mov	r3, r2
    1654:	e1a02001 	mov	r2, r1
    1658:	e1a01000 	mov	r1, r0
    165c:	e3a00010 	mov	r0, #16
    1660:	ef000000 	svc	0x00000000
    1664:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1668:	e12fff1e 	bx	lr

0000166c <close>:
    166c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1670:	e1a04003 	mov	r4, r3
    1674:	e1a03002 	mov	r3, r2
    1678:	e1a02001 	mov	r2, r1
    167c:	e1a01000 	mov	r1, r0
    1680:	e3a00015 	mov	r0, #21
    1684:	ef000000 	svc	0x00000000
    1688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    168c:	e12fff1e 	bx	lr

00001690 <kill>:
    1690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1694:	e1a04003 	mov	r4, r3
    1698:	e1a03002 	mov	r3, r2
    169c:	e1a02001 	mov	r2, r1
    16a0:	e1a01000 	mov	r1, r0
    16a4:	e3a00006 	mov	r0, #6
    16a8:	ef000000 	svc	0x00000000
    16ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16b0:	e12fff1e 	bx	lr

000016b4 <exec>:
    16b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16b8:	e1a04003 	mov	r4, r3
    16bc:	e1a03002 	mov	r3, r2
    16c0:	e1a02001 	mov	r2, r1
    16c4:	e1a01000 	mov	r1, r0
    16c8:	e3a00007 	mov	r0, #7
    16cc:	ef000000 	svc	0x00000000
    16d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16d4:	e12fff1e 	bx	lr

000016d8 <open>:
    16d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16dc:	e1a04003 	mov	r4, r3
    16e0:	e1a03002 	mov	r3, r2
    16e4:	e1a02001 	mov	r2, r1
    16e8:	e1a01000 	mov	r1, r0
    16ec:	e3a0000f 	mov	r0, #15
    16f0:	ef000000 	svc	0x00000000
    16f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16f8:	e12fff1e 	bx	lr

000016fc <mknod>:
    16fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1700:	e1a04003 	mov	r4, r3
    1704:	e1a03002 	mov	r3, r2
    1708:	e1a02001 	mov	r2, r1
    170c:	e1a01000 	mov	r1, r0
    1710:	e3a00011 	mov	r0, #17
    1714:	ef000000 	svc	0x00000000
    1718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    171c:	e12fff1e 	bx	lr

00001720 <unlink>:
    1720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1724:	e1a04003 	mov	r4, r3
    1728:	e1a03002 	mov	r3, r2
    172c:	e1a02001 	mov	r2, r1
    1730:	e1a01000 	mov	r1, r0
    1734:	e3a00012 	mov	r0, #18
    1738:	ef000000 	svc	0x00000000
    173c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1740:	e12fff1e 	bx	lr

00001744 <fstat>:
    1744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1748:	e1a04003 	mov	r4, r3
    174c:	e1a03002 	mov	r3, r2
    1750:	e1a02001 	mov	r2, r1
    1754:	e1a01000 	mov	r1, r0
    1758:	e3a00008 	mov	r0, #8
    175c:	ef000000 	svc	0x00000000
    1760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1764:	e12fff1e 	bx	lr

00001768 <link>:
    1768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    176c:	e1a04003 	mov	r4, r3
    1770:	e1a03002 	mov	r3, r2
    1774:	e1a02001 	mov	r2, r1
    1778:	e1a01000 	mov	r1, r0
    177c:	e3a00013 	mov	r0, #19
    1780:	ef000000 	svc	0x00000000
    1784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1788:	e12fff1e 	bx	lr

0000178c <mkdir>:
    178c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1790:	e1a04003 	mov	r4, r3
    1794:	e1a03002 	mov	r3, r2
    1798:	e1a02001 	mov	r2, r1
    179c:	e1a01000 	mov	r1, r0
    17a0:	e3a00014 	mov	r0, #20
    17a4:	ef000000 	svc	0x00000000
    17a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17ac:	e12fff1e 	bx	lr

000017b0 <chdir>:
    17b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17b4:	e1a04003 	mov	r4, r3
    17b8:	e1a03002 	mov	r3, r2
    17bc:	e1a02001 	mov	r2, r1
    17c0:	e1a01000 	mov	r1, r0
    17c4:	e3a00009 	mov	r0, #9
    17c8:	ef000000 	svc	0x00000000
    17cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17d0:	e12fff1e 	bx	lr

000017d4 <dup>:
    17d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17d8:	e1a04003 	mov	r4, r3
    17dc:	e1a03002 	mov	r3, r2
    17e0:	e1a02001 	mov	r2, r1
    17e4:	e1a01000 	mov	r1, r0
    17e8:	e3a0000a 	mov	r0, #10
    17ec:	ef000000 	svc	0x00000000
    17f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17f4:	e12fff1e 	bx	lr

000017f8 <getpid>:
    17f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17fc:	e1a04003 	mov	r4, r3
    1800:	e1a03002 	mov	r3, r2
    1804:	e1a02001 	mov	r2, r1
    1808:	e1a01000 	mov	r1, r0
    180c:	e3a0000b 	mov	r0, #11
    1810:	ef000000 	svc	0x00000000
    1814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1818:	e12fff1e 	bx	lr

0000181c <sbrk>:
    181c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1820:	e1a04003 	mov	r4, r3
    1824:	e1a03002 	mov	r3, r2
    1828:	e1a02001 	mov	r2, r1
    182c:	e1a01000 	mov	r1, r0
    1830:	e3a0000c 	mov	r0, #12
    1834:	ef000000 	svc	0x00000000
    1838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    183c:	e12fff1e 	bx	lr

00001840 <sleep>:
    1840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1844:	e1a04003 	mov	r4, r3
    1848:	e1a03002 	mov	r3, r2
    184c:	e1a02001 	mov	r2, r1
    1850:	e1a01000 	mov	r1, r0
    1854:	e3a0000d 	mov	r0, #13
    1858:	ef000000 	svc	0x00000000
    185c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1860:	e12fff1e 	bx	lr

00001864 <uptime>:
    1864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1868:	e1a04003 	mov	r4, r3
    186c:	e1a03002 	mov	r3, r2
    1870:	e1a02001 	mov	r2, r1
    1874:	e1a01000 	mov	r1, r0
    1878:	e3a0000e 	mov	r0, #14
    187c:	ef000000 	svc	0x00000000
    1880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1884:	e12fff1e 	bx	lr

00001888 <ps>:
    1888:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    188c:	e1a04003 	mov	r4, r3
    1890:	e1a03002 	mov	r3, r2
    1894:	e1a02001 	mov	r2, r1
    1898:	e1a01000 	mov	r1, r0
    189c:	e3a00016 	mov	r0, #22
    18a0:	ef000000 	svc	0x00000000
    18a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18a8:	e12fff1e 	bx	lr

000018ac <settickets>:
    18ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    18b0:	e1a04003 	mov	r4, r3
    18b4:	e1a03002 	mov	r3, r2
    18b8:	e1a02001 	mov	r2, r1
    18bc:	e1a01000 	mov	r1, r0
    18c0:	e3a00017 	mov	r0, #23
    18c4:	ef000000 	svc	0x00000000
    18c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18cc:	e12fff1e 	bx	lr

000018d0 <srand>:
    18d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    18d4:	e1a04003 	mov	r4, r3
    18d8:	e1a03002 	mov	r3, r2
    18dc:	e1a02001 	mov	r2, r1
    18e0:	e1a01000 	mov	r1, r0
    18e4:	e3a00018 	mov	r0, #24
    18e8:	ef000000 	svc	0x00000000
    18ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18f0:	e12fff1e 	bx	lr

000018f4 <getpinfo>:
    18f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    18f8:	e1a04003 	mov	r4, r3
    18fc:	e1a03002 	mov	r3, r2
    1900:	e1a02001 	mov	r2, r1
    1904:	e1a01000 	mov	r1, r0
    1908:	e3a00019 	mov	r0, #25
    190c:	ef000000 	svc	0x00000000
    1910:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1914:	e12fff1e 	bx	lr

00001918 <printpt>:
    1918:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    191c:	e1a04003 	mov	r4, r3
    1920:	e1a03002 	mov	r3, r2
    1924:	e1a02001 	mov	r2, r1
    1928:	e1a01000 	mov	r1, r0
    192c:	e3a0001a 	mov	r0, #26
    1930:	ef000000 	svc	0x00000000
    1934:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1938:	e12fff1e 	bx	lr

0000193c <pgpte>:
    193c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1940:	e1a04003 	mov	r4, r3
    1944:	e1a03002 	mov	r3, r2
    1948:	e1a02001 	mov	r2, r1
    194c:	e1a01000 	mov	r1, r0
    1950:	e3a0001b 	mov	r0, #27
    1954:	ef000000 	svc	0x00000000
    1958:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    195c:	e12fff1e 	bx	lr

00001960 <ugetpid>:
    1960:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1964:	e1a04003 	mov	r4, r3
    1968:	e1a03002 	mov	r3, r2
    196c:	e1a02001 	mov	r2, r1
    1970:	e1a01000 	mov	r1, r0
    1974:	e3a0001c 	mov	r0, #28
    1978:	ef000000 	svc	0x00000000
    197c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1980:	e12fff1e 	bx	lr

00001984 <kpt>:
    1984:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1988:	e1a04003 	mov	r4, r3
    198c:	e1a03002 	mov	r3, r2
    1990:	e1a02001 	mov	r2, r1
    1994:	e1a01000 	mov	r1, r0
    1998:	e3a0001d 	mov	r0, #29
    199c:	ef000000 	svc	0x00000000
    19a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    19a4:	e12fff1e 	bx	lr

000019a8 <putc>:
    19a8:	e92d4800 	push	{fp, lr}
    19ac:	e28db004 	add	fp, sp, #4
    19b0:	e24dd008 	sub	sp, sp, #8
    19b4:	e50b0008 	str	r0, [fp, #-8]
    19b8:	e1a03001 	mov	r3, r1
    19bc:	e54b3009 	strb	r3, [fp, #-9]
    19c0:	e24b3009 	sub	r3, fp, #9
    19c4:	e3a02001 	mov	r2, #1
    19c8:	e1a01003 	mov	r1, r3
    19cc:	e51b0008 	ldr	r0, [fp, #-8]
    19d0:	ebffff1c 	bl	1648 <write>
    19d4:	e1a00000 	nop			@ (mov r0, r0)
    19d8:	e24bd004 	sub	sp, fp, #4
    19dc:	e8bd8800 	pop	{fp, pc}

000019e0 <printint>:
    19e0:	e92d4800 	push	{fp, lr}
    19e4:	e28db004 	add	fp, sp, #4
    19e8:	e24dd030 	sub	sp, sp, #48	@ 0x30
    19ec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    19f0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    19f4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    19f8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    19fc:	e3a03000 	mov	r3, #0
    1a00:	e50b300c 	str	r3, [fp, #-12]
    1a04:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1a08:	e3530000 	cmp	r3, #0
    1a0c:	0a000008 	beq	1a34 <printint+0x54>
    1a10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1a14:	e3530000 	cmp	r3, #0
    1a18:	aa000005 	bge	1a34 <printint+0x54>
    1a1c:	e3a03001 	mov	r3, #1
    1a20:	e50b300c 	str	r3, [fp, #-12]
    1a24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1a28:	e2633000 	rsb	r3, r3, #0
    1a2c:	e50b3010 	str	r3, [fp, #-16]
    1a30:	ea000001 	b	1a3c <printint+0x5c>
    1a34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1a38:	e50b3010 	str	r3, [fp, #-16]
    1a3c:	e3a03000 	mov	r3, #0
    1a40:	e50b3008 	str	r3, [fp, #-8]
    1a44:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1a48:	e51b3010 	ldr	r3, [fp, #-16]
    1a4c:	e1a01002 	mov	r1, r2
    1a50:	e1a00003 	mov	r0, r3
    1a54:	eb0001d5 	bl	21b0 <__aeabi_uidivmod>
    1a58:	e1a03001 	mov	r3, r1
    1a5c:	e1a01003 	mov	r1, r3
    1a60:	e51b3008 	ldr	r3, [fp, #-8]
    1a64:	e2832001 	add	r2, r3, #1
    1a68:	e50b2008 	str	r2, [fp, #-8]
    1a6c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1b14 <printint+0x134>
    1a70:	e7d22001 	ldrb	r2, [r2, r1]
    1a74:	e2433004 	sub	r3, r3, #4
    1a78:	e083300b 	add	r3, r3, fp
    1a7c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1a80:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1a84:	e1a01003 	mov	r1, r3
    1a88:	e51b0010 	ldr	r0, [fp, #-16]
    1a8c:	eb00018a 	bl	20bc <__udivsi3>
    1a90:	e1a03000 	mov	r3, r0
    1a94:	e50b3010 	str	r3, [fp, #-16]
    1a98:	e51b3010 	ldr	r3, [fp, #-16]
    1a9c:	e3530000 	cmp	r3, #0
    1aa0:	1affffe7 	bne	1a44 <printint+0x64>
    1aa4:	e51b300c 	ldr	r3, [fp, #-12]
    1aa8:	e3530000 	cmp	r3, #0
    1aac:	0a00000e 	beq	1aec <printint+0x10c>
    1ab0:	e51b3008 	ldr	r3, [fp, #-8]
    1ab4:	e2832001 	add	r2, r3, #1
    1ab8:	e50b2008 	str	r2, [fp, #-8]
    1abc:	e2433004 	sub	r3, r3, #4
    1ac0:	e083300b 	add	r3, r3, fp
    1ac4:	e3a0202d 	mov	r2, #45	@ 0x2d
    1ac8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1acc:	ea000006 	b	1aec <printint+0x10c>
    1ad0:	e24b2020 	sub	r2, fp, #32
    1ad4:	e51b3008 	ldr	r3, [fp, #-8]
    1ad8:	e0823003 	add	r3, r2, r3
    1adc:	e5d33000 	ldrb	r3, [r3]
    1ae0:	e1a01003 	mov	r1, r3
    1ae4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1ae8:	ebffffae 	bl	19a8 <putc>
    1aec:	e51b3008 	ldr	r3, [fp, #-8]
    1af0:	e2433001 	sub	r3, r3, #1
    1af4:	e50b3008 	str	r3, [fp, #-8]
    1af8:	e51b3008 	ldr	r3, [fp, #-8]
    1afc:	e3530000 	cmp	r3, #0
    1b00:	aafffff2 	bge	1ad0 <printint+0xf0>
    1b04:	e1a00000 	nop			@ (mov r0, r0)
    1b08:	e1a00000 	nop			@ (mov r0, r0)
    1b0c:	e24bd004 	sub	sp, fp, #4
    1b10:	e8bd8800 	pop	{fp, pc}
    1b14:	0000235c 	.word	0x0000235c

00001b18 <printf>:
    1b18:	e92d000e 	push	{r1, r2, r3}
    1b1c:	e92d4800 	push	{fp, lr}
    1b20:	e28db004 	add	fp, sp, #4
    1b24:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1b28:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1b2c:	e3a03000 	mov	r3, #0
    1b30:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1b34:	e28b3008 	add	r3, fp, #8
    1b38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b3c:	e3a03000 	mov	r3, #0
    1b40:	e50b3010 	str	r3, [fp, #-16]
    1b44:	ea000074 	b	1d1c <printf+0x204>
    1b48:	e59b2004 	ldr	r2, [fp, #4]
    1b4c:	e51b3010 	ldr	r3, [fp, #-16]
    1b50:	e0823003 	add	r3, r2, r3
    1b54:	e5d33000 	ldrb	r3, [r3]
    1b58:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1b5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1b60:	e3530000 	cmp	r3, #0
    1b64:	1a00000b 	bne	1b98 <printf+0x80>
    1b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b6c:	e3530025 	cmp	r3, #37	@ 0x25
    1b70:	1a000002 	bne	1b80 <printf+0x68>
    1b74:	e3a03025 	mov	r3, #37	@ 0x25
    1b78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1b7c:	ea000063 	b	1d10 <printf+0x1f8>
    1b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b84:	e6ef3073 	uxtb	r3, r3
    1b88:	e1a01003 	mov	r1, r3
    1b8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b90:	ebffff84 	bl	19a8 <putc>
    1b94:	ea00005d 	b	1d10 <printf+0x1f8>
    1b98:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1b9c:	e3530025 	cmp	r3, #37	@ 0x25
    1ba0:	1a00005a 	bne	1d10 <printf+0x1f8>
    1ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1ba8:	e3530064 	cmp	r3, #100	@ 0x64
    1bac:	1a00000a 	bne	1bdc <printf+0xc4>
    1bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1bb4:	e5933000 	ldr	r3, [r3]
    1bb8:	e1a01003 	mov	r1, r3
    1bbc:	e3a03001 	mov	r3, #1
    1bc0:	e3a0200a 	mov	r2, #10
    1bc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1bc8:	ebffff84 	bl	19e0 <printint>
    1bcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1bd0:	e2833004 	add	r3, r3, #4
    1bd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1bd8:	ea00004a 	b	1d08 <printf+0x1f0>
    1bdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1be0:	e3530078 	cmp	r3, #120	@ 0x78
    1be4:	0a000002 	beq	1bf4 <printf+0xdc>
    1be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bec:	e3530070 	cmp	r3, #112	@ 0x70
    1bf0:	1a00000a 	bne	1c20 <printf+0x108>
    1bf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1bf8:	e5933000 	ldr	r3, [r3]
    1bfc:	e1a01003 	mov	r1, r3
    1c00:	e3a03000 	mov	r3, #0
    1c04:	e3a02010 	mov	r2, #16
    1c08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1c0c:	ebffff73 	bl	19e0 <printint>
    1c10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c14:	e2833004 	add	r3, r3, #4
    1c18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1c1c:	ea000039 	b	1d08 <printf+0x1f0>
    1c20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1c24:	e3530073 	cmp	r3, #115	@ 0x73
    1c28:	1a000018 	bne	1c90 <printf+0x178>
    1c2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c30:	e5933000 	ldr	r3, [r3]
    1c34:	e50b300c 	str	r3, [fp, #-12]
    1c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c3c:	e2833004 	add	r3, r3, #4
    1c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1c44:	e51b300c 	ldr	r3, [fp, #-12]
    1c48:	e3530000 	cmp	r3, #0
    1c4c:	1a00000a 	bne	1c7c <printf+0x164>
    1c50:	e59f30f4 	ldr	r3, [pc, #244]	@ 1d4c <printf+0x234>
    1c54:	e50b300c 	str	r3, [fp, #-12]
    1c58:	ea000007 	b	1c7c <printf+0x164>
    1c5c:	e51b300c 	ldr	r3, [fp, #-12]
    1c60:	e5d33000 	ldrb	r3, [r3]
    1c64:	e1a01003 	mov	r1, r3
    1c68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1c6c:	ebffff4d 	bl	19a8 <putc>
    1c70:	e51b300c 	ldr	r3, [fp, #-12]
    1c74:	e2833001 	add	r3, r3, #1
    1c78:	e50b300c 	str	r3, [fp, #-12]
    1c7c:	e51b300c 	ldr	r3, [fp, #-12]
    1c80:	e5d33000 	ldrb	r3, [r3]
    1c84:	e3530000 	cmp	r3, #0
    1c88:	1afffff3 	bne	1c5c <printf+0x144>
    1c8c:	ea00001d 	b	1d08 <printf+0x1f0>
    1c90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1c94:	e3530063 	cmp	r3, #99	@ 0x63
    1c98:	1a000009 	bne	1cc4 <printf+0x1ac>
    1c9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1ca0:	e5933000 	ldr	r3, [r3]
    1ca4:	e6ef3073 	uxtb	r3, r3
    1ca8:	e1a01003 	mov	r1, r3
    1cac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1cb0:	ebffff3c 	bl	19a8 <putc>
    1cb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1cb8:	e2833004 	add	r3, r3, #4
    1cbc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1cc0:	ea000010 	b	1d08 <printf+0x1f0>
    1cc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1cc8:	e3530025 	cmp	r3, #37	@ 0x25
    1ccc:	1a000005 	bne	1ce8 <printf+0x1d0>
    1cd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1cd4:	e6ef3073 	uxtb	r3, r3
    1cd8:	e1a01003 	mov	r1, r3
    1cdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1ce0:	ebffff30 	bl	19a8 <putc>
    1ce4:	ea000007 	b	1d08 <printf+0x1f0>
    1ce8:	e3a01025 	mov	r1, #37	@ 0x25
    1cec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1cf0:	ebffff2c 	bl	19a8 <putc>
    1cf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1cf8:	e6ef3073 	uxtb	r3, r3
    1cfc:	e1a01003 	mov	r1, r3
    1d00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1d04:	ebffff27 	bl	19a8 <putc>
    1d08:	e3a03000 	mov	r3, #0
    1d0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1d10:	e51b3010 	ldr	r3, [fp, #-16]
    1d14:	e2833001 	add	r3, r3, #1
    1d18:	e50b3010 	str	r3, [fp, #-16]
    1d1c:	e59b2004 	ldr	r2, [fp, #4]
    1d20:	e51b3010 	ldr	r3, [fp, #-16]
    1d24:	e0823003 	add	r3, r2, r3
    1d28:	e5d33000 	ldrb	r3, [r3]
    1d2c:	e3530000 	cmp	r3, #0
    1d30:	1affff84 	bne	1b48 <printf+0x30>
    1d34:	e1a00000 	nop			@ (mov r0, r0)
    1d38:	e1a00000 	nop			@ (mov r0, r0)
    1d3c:	e24bd004 	sub	sp, fp, #4
    1d40:	e8bd4800 	pop	{fp, lr}
    1d44:	e28dd00c 	add	sp, sp, #12
    1d48:	e12fff1e 	bx	lr
    1d4c:	00002344 	.word	0x00002344

00001d50 <free>:
    1d50:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1d54:	e28db000 	add	fp, sp, #0
    1d58:	e24dd014 	sub	sp, sp, #20
    1d5c:	e50b0010 	str	r0, [fp, #-16]
    1d60:	e51b3010 	ldr	r3, [fp, #-16]
    1d64:	e2433008 	sub	r3, r3, #8
    1d68:	e50b300c 	str	r3, [fp, #-12]
    1d6c:	e59f3154 	ldr	r3, [pc, #340]	@ 1ec8 <free+0x178>
    1d70:	e5933000 	ldr	r3, [r3]
    1d74:	e50b3008 	str	r3, [fp, #-8]
    1d78:	ea000010 	b	1dc0 <free+0x70>
    1d7c:	e51b3008 	ldr	r3, [fp, #-8]
    1d80:	e5933000 	ldr	r3, [r3]
    1d84:	e51b2008 	ldr	r2, [fp, #-8]
    1d88:	e1520003 	cmp	r2, r3
    1d8c:	3a000008 	bcc	1db4 <free+0x64>
    1d90:	e51b200c 	ldr	r2, [fp, #-12]
    1d94:	e51b3008 	ldr	r3, [fp, #-8]
    1d98:	e1520003 	cmp	r2, r3
    1d9c:	8a000010 	bhi	1de4 <free+0x94>
    1da0:	e51b3008 	ldr	r3, [fp, #-8]
    1da4:	e5933000 	ldr	r3, [r3]
    1da8:	e51b200c 	ldr	r2, [fp, #-12]
    1dac:	e1520003 	cmp	r2, r3
    1db0:	3a00000b 	bcc	1de4 <free+0x94>
    1db4:	e51b3008 	ldr	r3, [fp, #-8]
    1db8:	e5933000 	ldr	r3, [r3]
    1dbc:	e50b3008 	str	r3, [fp, #-8]
    1dc0:	e51b200c 	ldr	r2, [fp, #-12]
    1dc4:	e51b3008 	ldr	r3, [fp, #-8]
    1dc8:	e1520003 	cmp	r2, r3
    1dcc:	9affffea 	bls	1d7c <free+0x2c>
    1dd0:	e51b3008 	ldr	r3, [fp, #-8]
    1dd4:	e5933000 	ldr	r3, [r3]
    1dd8:	e51b200c 	ldr	r2, [fp, #-12]
    1ddc:	e1520003 	cmp	r2, r3
    1de0:	2affffe5 	bcs	1d7c <free+0x2c>
    1de4:	e51b300c 	ldr	r3, [fp, #-12]
    1de8:	e5933004 	ldr	r3, [r3, #4]
    1dec:	e1a03183 	lsl	r3, r3, #3
    1df0:	e51b200c 	ldr	r2, [fp, #-12]
    1df4:	e0822003 	add	r2, r2, r3
    1df8:	e51b3008 	ldr	r3, [fp, #-8]
    1dfc:	e5933000 	ldr	r3, [r3]
    1e00:	e1520003 	cmp	r2, r3
    1e04:	1a00000d 	bne	1e40 <free+0xf0>
    1e08:	e51b300c 	ldr	r3, [fp, #-12]
    1e0c:	e5932004 	ldr	r2, [r3, #4]
    1e10:	e51b3008 	ldr	r3, [fp, #-8]
    1e14:	e5933000 	ldr	r3, [r3]
    1e18:	e5933004 	ldr	r3, [r3, #4]
    1e1c:	e0822003 	add	r2, r2, r3
    1e20:	e51b300c 	ldr	r3, [fp, #-12]
    1e24:	e5832004 	str	r2, [r3, #4]
    1e28:	e51b3008 	ldr	r3, [fp, #-8]
    1e2c:	e5933000 	ldr	r3, [r3]
    1e30:	e5932000 	ldr	r2, [r3]
    1e34:	e51b300c 	ldr	r3, [fp, #-12]
    1e38:	e5832000 	str	r2, [r3]
    1e3c:	ea000003 	b	1e50 <free+0x100>
    1e40:	e51b3008 	ldr	r3, [fp, #-8]
    1e44:	e5932000 	ldr	r2, [r3]
    1e48:	e51b300c 	ldr	r3, [fp, #-12]
    1e4c:	e5832000 	str	r2, [r3]
    1e50:	e51b3008 	ldr	r3, [fp, #-8]
    1e54:	e5933004 	ldr	r3, [r3, #4]
    1e58:	e1a03183 	lsl	r3, r3, #3
    1e5c:	e51b2008 	ldr	r2, [fp, #-8]
    1e60:	e0823003 	add	r3, r2, r3
    1e64:	e51b200c 	ldr	r2, [fp, #-12]
    1e68:	e1520003 	cmp	r2, r3
    1e6c:	1a00000b 	bne	1ea0 <free+0x150>
    1e70:	e51b3008 	ldr	r3, [fp, #-8]
    1e74:	e5932004 	ldr	r2, [r3, #4]
    1e78:	e51b300c 	ldr	r3, [fp, #-12]
    1e7c:	e5933004 	ldr	r3, [r3, #4]
    1e80:	e0822003 	add	r2, r2, r3
    1e84:	e51b3008 	ldr	r3, [fp, #-8]
    1e88:	e5832004 	str	r2, [r3, #4]
    1e8c:	e51b300c 	ldr	r3, [fp, #-12]
    1e90:	e5932000 	ldr	r2, [r3]
    1e94:	e51b3008 	ldr	r3, [fp, #-8]
    1e98:	e5832000 	str	r2, [r3]
    1e9c:	ea000002 	b	1eac <free+0x15c>
    1ea0:	e51b3008 	ldr	r3, [fp, #-8]
    1ea4:	e51b200c 	ldr	r2, [fp, #-12]
    1ea8:	e5832000 	str	r2, [r3]
    1eac:	e59f2014 	ldr	r2, [pc, #20]	@ 1ec8 <free+0x178>
    1eb0:	e51b3008 	ldr	r3, [fp, #-8]
    1eb4:	e5823000 	str	r3, [r2]
    1eb8:	e1a00000 	nop			@ (mov r0, r0)
    1ebc:	e28bd000 	add	sp, fp, #0
    1ec0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1ec4:	e12fff1e 	bx	lr
    1ec8:	000023dc 	.word	0x000023dc

00001ecc <morecore>:
    1ecc:	e92d4800 	push	{fp, lr}
    1ed0:	e28db004 	add	fp, sp, #4
    1ed4:	e24dd010 	sub	sp, sp, #16
    1ed8:	e50b0010 	str	r0, [fp, #-16]
    1edc:	e51b3010 	ldr	r3, [fp, #-16]
    1ee0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1ee4:	2a000001 	bcs	1ef0 <morecore+0x24>
    1ee8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1eec:	e50b3010 	str	r3, [fp, #-16]
    1ef0:	e51b3010 	ldr	r3, [fp, #-16]
    1ef4:	e1a03183 	lsl	r3, r3, #3
    1ef8:	e1a00003 	mov	r0, r3
    1efc:	ebfffe46 	bl	181c <sbrk>
    1f00:	e50b0008 	str	r0, [fp, #-8]
    1f04:	e51b3008 	ldr	r3, [fp, #-8]
    1f08:	e3730001 	cmn	r3, #1
    1f0c:	1a000001 	bne	1f18 <morecore+0x4c>
    1f10:	e3a03000 	mov	r3, #0
    1f14:	ea00000a 	b	1f44 <morecore+0x78>
    1f18:	e51b3008 	ldr	r3, [fp, #-8]
    1f1c:	e50b300c 	str	r3, [fp, #-12]
    1f20:	e51b300c 	ldr	r3, [fp, #-12]
    1f24:	e51b2010 	ldr	r2, [fp, #-16]
    1f28:	e5832004 	str	r2, [r3, #4]
    1f2c:	e51b300c 	ldr	r3, [fp, #-12]
    1f30:	e2833008 	add	r3, r3, #8
    1f34:	e1a00003 	mov	r0, r3
    1f38:	ebffff84 	bl	1d50 <free>
    1f3c:	e59f300c 	ldr	r3, [pc, #12]	@ 1f50 <morecore+0x84>
    1f40:	e5933000 	ldr	r3, [r3]
    1f44:	e1a00003 	mov	r0, r3
    1f48:	e24bd004 	sub	sp, fp, #4
    1f4c:	e8bd8800 	pop	{fp, pc}
    1f50:	000023dc 	.word	0x000023dc

00001f54 <malloc>:
    1f54:	e92d4800 	push	{fp, lr}
    1f58:	e28db004 	add	fp, sp, #4
    1f5c:	e24dd018 	sub	sp, sp, #24
    1f60:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1f64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1f68:	e2833007 	add	r3, r3, #7
    1f6c:	e1a031a3 	lsr	r3, r3, #3
    1f70:	e2833001 	add	r3, r3, #1
    1f74:	e50b3010 	str	r3, [fp, #-16]
    1f78:	e59f3134 	ldr	r3, [pc, #308]	@ 20b4 <malloc+0x160>
    1f7c:	e5933000 	ldr	r3, [r3]
    1f80:	e50b300c 	str	r3, [fp, #-12]
    1f84:	e51b300c 	ldr	r3, [fp, #-12]
    1f88:	e3530000 	cmp	r3, #0
    1f8c:	1a00000b 	bne	1fc0 <malloc+0x6c>
    1f90:	e59f3120 	ldr	r3, [pc, #288]	@ 20b8 <malloc+0x164>
    1f94:	e50b300c 	str	r3, [fp, #-12]
    1f98:	e59f2114 	ldr	r2, [pc, #276]	@ 20b4 <malloc+0x160>
    1f9c:	e51b300c 	ldr	r3, [fp, #-12]
    1fa0:	e5823000 	str	r3, [r2]
    1fa4:	e59f3108 	ldr	r3, [pc, #264]	@ 20b4 <malloc+0x160>
    1fa8:	e5933000 	ldr	r3, [r3]
    1fac:	e59f2104 	ldr	r2, [pc, #260]	@ 20b8 <malloc+0x164>
    1fb0:	e5823000 	str	r3, [r2]
    1fb4:	e59f30fc 	ldr	r3, [pc, #252]	@ 20b8 <malloc+0x164>
    1fb8:	e3a02000 	mov	r2, #0
    1fbc:	e5832004 	str	r2, [r3, #4]
    1fc0:	e51b300c 	ldr	r3, [fp, #-12]
    1fc4:	e5933000 	ldr	r3, [r3]
    1fc8:	e50b3008 	str	r3, [fp, #-8]
    1fcc:	e51b3008 	ldr	r3, [fp, #-8]
    1fd0:	e5933004 	ldr	r3, [r3, #4]
    1fd4:	e51b2010 	ldr	r2, [fp, #-16]
    1fd8:	e1520003 	cmp	r2, r3
    1fdc:	8a00001e 	bhi	205c <malloc+0x108>
    1fe0:	e51b3008 	ldr	r3, [fp, #-8]
    1fe4:	e5933004 	ldr	r3, [r3, #4]
    1fe8:	e51b2010 	ldr	r2, [fp, #-16]
    1fec:	e1520003 	cmp	r2, r3
    1ff0:	1a000004 	bne	2008 <malloc+0xb4>
    1ff4:	e51b3008 	ldr	r3, [fp, #-8]
    1ff8:	e5932000 	ldr	r2, [r3]
    1ffc:	e51b300c 	ldr	r3, [fp, #-12]
    2000:	e5832000 	str	r2, [r3]
    2004:	ea00000e 	b	2044 <malloc+0xf0>
    2008:	e51b3008 	ldr	r3, [fp, #-8]
    200c:	e5932004 	ldr	r2, [r3, #4]
    2010:	e51b3010 	ldr	r3, [fp, #-16]
    2014:	e0422003 	sub	r2, r2, r3
    2018:	e51b3008 	ldr	r3, [fp, #-8]
    201c:	e5832004 	str	r2, [r3, #4]
    2020:	e51b3008 	ldr	r3, [fp, #-8]
    2024:	e5933004 	ldr	r3, [r3, #4]
    2028:	e1a03183 	lsl	r3, r3, #3
    202c:	e51b2008 	ldr	r2, [fp, #-8]
    2030:	e0823003 	add	r3, r2, r3
    2034:	e50b3008 	str	r3, [fp, #-8]
    2038:	e51b3008 	ldr	r3, [fp, #-8]
    203c:	e51b2010 	ldr	r2, [fp, #-16]
    2040:	e5832004 	str	r2, [r3, #4]
    2044:	e59f2068 	ldr	r2, [pc, #104]	@ 20b4 <malloc+0x160>
    2048:	e51b300c 	ldr	r3, [fp, #-12]
    204c:	e5823000 	str	r3, [r2]
    2050:	e51b3008 	ldr	r3, [fp, #-8]
    2054:	e2833008 	add	r3, r3, #8
    2058:	ea000012 	b	20a8 <malloc+0x154>
    205c:	e59f3050 	ldr	r3, [pc, #80]	@ 20b4 <malloc+0x160>
    2060:	e5933000 	ldr	r3, [r3]
    2064:	e51b2008 	ldr	r2, [fp, #-8]
    2068:	e1520003 	cmp	r2, r3
    206c:	1a000007 	bne	2090 <malloc+0x13c>
    2070:	e51b0010 	ldr	r0, [fp, #-16]
    2074:	ebffff94 	bl	1ecc <morecore>
    2078:	e50b0008 	str	r0, [fp, #-8]
    207c:	e51b3008 	ldr	r3, [fp, #-8]
    2080:	e3530000 	cmp	r3, #0
    2084:	1a000001 	bne	2090 <malloc+0x13c>
    2088:	e3a03000 	mov	r3, #0
    208c:	ea000005 	b	20a8 <malloc+0x154>
    2090:	e51b3008 	ldr	r3, [fp, #-8]
    2094:	e50b300c 	str	r3, [fp, #-12]
    2098:	e51b3008 	ldr	r3, [fp, #-8]
    209c:	e5933000 	ldr	r3, [r3]
    20a0:	e50b3008 	str	r3, [fp, #-8]
    20a4:	eaffffc8 	b	1fcc <malloc+0x78>
    20a8:	e1a00003 	mov	r0, r3
    20ac:	e24bd004 	sub	sp, fp, #4
    20b0:	e8bd8800 	pop	{fp, pc}
    20b4:	000023dc 	.word	0x000023dc
    20b8:	000023d4 	.word	0x000023d4

000020bc <__udivsi3>:
    20bc:	e2512001 	subs	r2, r1, #1
    20c0:	012fff1e 	bxeq	lr
    20c4:	3a000036 	bcc	21a4 <__udivsi3+0xe8>
    20c8:	e1500001 	cmp	r0, r1
    20cc:	9a000022 	bls	215c <__udivsi3+0xa0>
    20d0:	e1110002 	tst	r1, r2
    20d4:	0a000023 	beq	2168 <__udivsi3+0xac>
    20d8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    20dc:	01a01181 	lsleq	r1, r1, #3
    20e0:	03a03008 	moveq	r3, #8
    20e4:	13a03001 	movne	r3, #1
    20e8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    20ec:	31510000 	cmpcc	r1, r0
    20f0:	31a01201 	lslcc	r1, r1, #4
    20f4:	31a03203 	lslcc	r3, r3, #4
    20f8:	3afffffa 	bcc	20e8 <__udivsi3+0x2c>
    20fc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    2100:	31510000 	cmpcc	r1, r0
    2104:	31a01081 	lslcc	r1, r1, #1
    2108:	31a03083 	lslcc	r3, r3, #1
    210c:	3afffffa 	bcc	20fc <__udivsi3+0x40>
    2110:	e3a02000 	mov	r2, #0
    2114:	e1500001 	cmp	r0, r1
    2118:	20400001 	subcs	r0, r0, r1
    211c:	21822003 	orrcs	r2, r2, r3
    2120:	e15000a1 	cmp	r0, r1, lsr #1
    2124:	204000a1 	subcs	r0, r0, r1, lsr #1
    2128:	218220a3 	orrcs	r2, r2, r3, lsr #1
    212c:	e1500121 	cmp	r0, r1, lsr #2
    2130:	20400121 	subcs	r0, r0, r1, lsr #2
    2134:	21822123 	orrcs	r2, r2, r3, lsr #2
    2138:	e15001a1 	cmp	r0, r1, lsr #3
    213c:	204001a1 	subcs	r0, r0, r1, lsr #3
    2140:	218221a3 	orrcs	r2, r2, r3, lsr #3
    2144:	e3500000 	cmp	r0, #0
    2148:	11b03223 	lsrsne	r3, r3, #4
    214c:	11a01221 	lsrne	r1, r1, #4
    2150:	1affffef 	bne	2114 <__udivsi3+0x58>
    2154:	e1a00002 	mov	r0, r2
    2158:	e12fff1e 	bx	lr
    215c:	03a00001 	moveq	r0, #1
    2160:	13a00000 	movne	r0, #0
    2164:	e12fff1e 	bx	lr
    2168:	e3510801 	cmp	r1, #65536	@ 0x10000
    216c:	21a01821 	lsrcs	r1, r1, #16
    2170:	23a02010 	movcs	r2, #16
    2174:	33a02000 	movcc	r2, #0
    2178:	e3510c01 	cmp	r1, #256	@ 0x100
    217c:	21a01421 	lsrcs	r1, r1, #8
    2180:	22822008 	addcs	r2, r2, #8
    2184:	e3510010 	cmp	r1, #16
    2188:	21a01221 	lsrcs	r1, r1, #4
    218c:	22822004 	addcs	r2, r2, #4
    2190:	e3510004 	cmp	r1, #4
    2194:	82822003 	addhi	r2, r2, #3
    2198:	908220a1 	addls	r2, r2, r1, lsr #1
    219c:	e1a00230 	lsr	r0, r0, r2
    21a0:	e12fff1e 	bx	lr
    21a4:	e3500000 	cmp	r0, #0
    21a8:	13e00000 	mvnne	r0, #0
    21ac:	ea000007 	b	21d0 <__aeabi_idiv0>

000021b0 <__aeabi_uidivmod>:
    21b0:	e3510000 	cmp	r1, #0
    21b4:	0afffffa 	beq	21a4 <__udivsi3+0xe8>
    21b8:	e92d4003 	push	{r0, r1, lr}
    21bc:	ebffffbe 	bl	20bc <__udivsi3>
    21c0:	e8bd4006 	pop	{r1, r2, lr}
    21c4:	e0030092 	mul	r3, r2, r0
    21c8:	e0411003 	sub	r1, r1, r3
    21cc:	e12fff1e 	bx	lr

000021d0 <__aeabi_idiv0>:
    21d0:	e12fff1e 	bx	lr
