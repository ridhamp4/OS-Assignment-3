
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
      1c:	eb00057f 	bl	1620 <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e2433001 	sub	r3, r3, #1
      2c:	e3530004 	cmp	r3, #4
      30:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
      34:	ea000004 	b	4c <runcmd+0x4c>
      38:	00000054 	.word	0x00000054
      3c:	000000a8 	.word	0x000000a8
      40:	00000150 	.word	0x00000150
      44:	00000114 	.word	0x00000114
      48:	00000234 	.word	0x00000234
      4c:	e59f0210 	ldr	r0, [pc, #528]	@ 264 <runcmd+0x264>
      50:	eb0000ea 	bl	400 <panic>
      54:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      60:	e5933004 	ldr	r3, [r3, #4]
      64:	e3530000 	cmp	r3, #0
      68:	1a000000 	bne	70 <runcmd+0x70>
      6c:	eb00056b 	bl	1620 <exit>
      70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      74:	e5932004 	ldr	r2, [r3, #4]
      78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      7c:	e2833004 	add	r3, r3, #4
      80:	e1a01003 	mov	r1, r3
      84:	e1a00002 	mov	r0, r2
      88:	eb0005a3 	bl	171c <exec>
      8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      90:	e5933004 	ldr	r3, [r3, #4]
      94:	e1a02003 	mov	r2, r3
      98:	e59f11c8 	ldr	r1, [pc, #456]	@ 268 <runcmd+0x268>
      9c:	e3a00002 	mov	r0, #2
      a0:	eb0006b6 	bl	1b80 <printf>
      a4:	ea00006d 	b	260 <runcmd+0x260>
      a8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b4:	e5933014 	ldr	r3, [r3, #20]
      b8:	e1a00003 	mov	r0, r3
      bc:	eb000584 	bl	16d4 <close>
      c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      c4:	e5932008 	ldr	r2, [r3, #8]
      c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      cc:	e5933010 	ldr	r3, [r3, #16]
      d0:	e1a01003 	mov	r1, r3
      d4:	e1a00002 	mov	r0, r2
      d8:	eb000598 	bl	1740 <open>
      dc:	e1a03000 	mov	r3, r0
      e0:	e3530000 	cmp	r3, #0
      e4:	aa000006 	bge	104 <runcmd+0x104>
      e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ec:	e5933008 	ldr	r3, [r3, #8]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1170 	ldr	r1, [pc, #368]	@ 26c <runcmd+0x26c>
      f8:	e3a00002 	mov	r0, #2
      fc:	eb00069f 	bl	1b80 <printf>
     100:	eb000546 	bl	1620 <exit>
     104:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     108:	e5933004 	ldr	r3, [r3, #4]
     10c:	e1a00003 	mov	r0, r3
     110:	ebffffba 	bl	0 <runcmd>
     114:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     118:	e50b300c 	str	r3, [fp, #-12]
     11c:	eb0000c1 	bl	428 <fork1>
     120:	e1a03000 	mov	r3, r0
     124:	e3530000 	cmp	r3, #0
     128:	1a000003 	bne	13c <runcmd+0x13c>
     12c:	e51b300c 	ldr	r3, [fp, #-12]
     130:	e5933004 	ldr	r3, [r3, #4]
     134:	e1a00003 	mov	r0, r3
     138:	ebffffb0 	bl	0 <runcmd>
     13c:	eb000540 	bl	1644 <wait>
     140:	e51b300c 	ldr	r3, [fp, #-12]
     144:	e5933008 	ldr	r3, [r3, #8]
     148:	e1a00003 	mov	r0, r3
     14c:	ebffffab 	bl	0 <runcmd>
     150:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     154:	e50b3010 	str	r3, [fp, #-16]
     158:	e24b3020 	sub	r3, fp, #32
     15c:	e1a00003 	mov	r0, r3
     160:	eb000540 	bl	1668 <pipe>
     164:	e1a03000 	mov	r3, r0
     168:	e3530000 	cmp	r3, #0
     16c:	aa000001 	bge	178 <runcmd+0x178>
     170:	e59f00f8 	ldr	r0, [pc, #248]	@ 270 <runcmd+0x270>
     174:	eb0000a1 	bl	400 <panic>
     178:	eb0000aa 	bl	428 <fork1>
     17c:	e1a03000 	mov	r3, r0
     180:	e3530000 	cmp	r3, #0
     184:	1a00000e 	bne	1c4 <runcmd+0x1c4>
     188:	e3a00001 	mov	r0, #1
     18c:	eb000550 	bl	16d4 <close>
     190:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     194:	e1a00003 	mov	r0, r3
     198:	eb0005a7 	bl	183c <dup>
     19c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1a0:	e1a00003 	mov	r0, r3
     1a4:	eb00054a 	bl	16d4 <close>
     1a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1ac:	e1a00003 	mov	r0, r3
     1b0:	eb000547 	bl	16d4 <close>
     1b4:	e51b3010 	ldr	r3, [fp, #-16]
     1b8:	e5933004 	ldr	r3, [r3, #4]
     1bc:	e1a00003 	mov	r0, r3
     1c0:	ebffff8e 	bl	0 <runcmd>
     1c4:	eb000097 	bl	428 <fork1>
     1c8:	e1a03000 	mov	r3, r0
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1a00000e 	bne	210 <runcmd+0x210>
     1d4:	e3a00000 	mov	r0, #0
     1d8:	eb00053d 	bl	16d4 <close>
     1dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1e0:	e1a00003 	mov	r0, r3
     1e4:	eb000594 	bl	183c <dup>
     1e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb000537 	bl	16d4 <close>
     1f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb000534 	bl	16d4 <close>
     200:	e51b3010 	ldr	r3, [fp, #-16]
     204:	e5933008 	ldr	r3, [r3, #8]
     208:	e1a00003 	mov	r0, r3
     20c:	ebffff7b 	bl	0 <runcmd>
     210:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     214:	e1a00003 	mov	r0, r3
     218:	eb00052d 	bl	16d4 <close>
     21c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     220:	e1a00003 	mov	r0, r3
     224:	eb00052a 	bl	16d4 <close>
     228:	eb000505 	bl	1644 <wait>
     22c:	eb000504 	bl	1644 <wait>
     230:	ea00000a 	b	260 <runcmd+0x260>
     234:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	eb000079 	bl	428 <fork1>
     240:	e1a03000 	mov	r3, r0
     244:	e3530000 	cmp	r3, #0
     248:	1a000003 	bne	25c <runcmd+0x25c>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e5933004 	ldr	r3, [r3, #4]
     254:	e1a00003 	mov	r0, r3
     258:	ebffff68 	bl	0 <runcmd>
     25c:	e1a00000 	nop			@ (mov r0, r0)
     260:	eb0004ee 	bl	1620 <exit>
     264:	0000223c 	.word	0x0000223c
     268:	00002244 	.word	0x00002244
     26c:	00002254 	.word	0x00002254
     270:	00002264 	.word	0x00002264

00000274 <getcmd>:
     274:	e92d4800 	push	{fp, lr}
     278:	e28db004 	add	fp, sp, #4
     27c:	e24dd008 	sub	sp, sp, #8
     280:	e50b0008 	str	r0, [fp, #-8]
     284:	e50b100c 	str	r1, [fp, #-12]
     288:	e59f104c 	ldr	r1, [pc, #76]	@ 2dc <getcmd+0x68>
     28c:	e3a00002 	mov	r0, #2
     290:	eb00063a 	bl	1b80 <printf>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e1a02003 	mov	r2, r3
     29c:	e3a01000 	mov	r1, #0
     2a0:	e51b0008 	ldr	r0, [fp, #-8]
     2a4:	eb0003eb 	bl	1258 <memset>
     2a8:	e51b100c 	ldr	r1, [fp, #-12]
     2ac:	e51b0008 	ldr	r0, [fp, #-8]
     2b0:	eb00044c 	bl	13e8 <gets>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e5d33000 	ldrb	r3, [r3]
     2bc:	e3530000 	cmp	r3, #0
     2c0:	1a000001 	bne	2cc <getcmd+0x58>
     2c4:	e3e03000 	mvn	r3, #0
     2c8:	ea000000 	b	2d0 <getcmd+0x5c>
     2cc:	e3a03000 	mov	r3, #0
     2d0:	e1a00003 	mov	r0, r3
     2d4:	e24bd004 	sub	sp, fp, #4
     2d8:	e8bd8800 	pop	{fp, pc}
     2dc:	0000226c 	.word	0x0000226c

000002e0 <main>:
     2e0:	e92d4800 	push	{fp, lr}
     2e4:	e28db004 	add	fp, sp, #4
     2e8:	e24dd008 	sub	sp, sp, #8
     2ec:	ea000005 	b	308 <main+0x28>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e3530002 	cmp	r3, #2
     2f8:	da000002 	ble	308 <main+0x28>
     2fc:	e51b0008 	ldr	r0, [fp, #-8]
     300:	eb0004f3 	bl	16d4 <close>
     304:	ea000006 	b	324 <main+0x44>
     308:	e3a01002 	mov	r1, #2
     30c:	e59f00dc 	ldr	r0, [pc, #220]	@ 3f0 <main+0x110>
     310:	eb00050a 	bl	1740 <open>
     314:	e50b0008 	str	r0, [fp, #-8]
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e3530000 	cmp	r3, #0
     320:	aafffff2 	bge	2f0 <main+0x10>
     324:	ea00002a 	b	3d4 <main+0xf4>
     328:	e59f30c4 	ldr	r3, [pc, #196]	@ 3f4 <main+0x114>
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530063 	cmp	r3, #99	@ 0x63
     334:	1a00001a 	bne	3a4 <main+0xc4>
     338:	e59f30b4 	ldr	r3, [pc, #180]	@ 3f4 <main+0x114>
     33c:	e5d33001 	ldrb	r3, [r3, #1]
     340:	e3530064 	cmp	r3, #100	@ 0x64
     344:	1a000016 	bne	3a4 <main+0xc4>
     348:	e59f30a4 	ldr	r3, [pc, #164]	@ 3f4 <main+0x114>
     34c:	e5d33002 	ldrb	r3, [r3, #2]
     350:	e3530020 	cmp	r3, #32
     354:	1a000012 	bne	3a4 <main+0xc4>
     358:	e59f0094 	ldr	r0, [pc, #148]	@ 3f4 <main+0x114>
     35c:	eb0003a8 	bl	1204 <strlen>
     360:	e1a03000 	mov	r3, r0
     364:	e2433001 	sub	r3, r3, #1
     368:	e59f2084 	ldr	r2, [pc, #132]	@ 3f4 <main+0x114>
     36c:	e3a01000 	mov	r1, #0
     370:	e7c21003 	strb	r1, [r2, r3]
     374:	e59f307c 	ldr	r3, [pc, #124]	@ 3f8 <main+0x118>
     378:	e1a00003 	mov	r0, r3
     37c:	eb000525 	bl	1818 <chdir>
     380:	e1a03000 	mov	r3, r0
     384:	e3530000 	cmp	r3, #0
     388:	aa000010 	bge	3d0 <main+0xf0>
     38c:	e59f3064 	ldr	r3, [pc, #100]	@ 3f8 <main+0x118>
     390:	e1a02003 	mov	r2, r3
     394:	e59f1060 	ldr	r1, [pc, #96]	@ 3fc <main+0x11c>
     398:	e3a00002 	mov	r0, #2
     39c:	eb0005f7 	bl	1b80 <printf>
     3a0:	ea00000a 	b	3d0 <main+0xf0>
     3a4:	eb00001f 	bl	428 <fork1>
     3a8:	e1a03000 	mov	r3, r0
     3ac:	e3530000 	cmp	r3, #0
     3b0:	1a000004 	bne	3c8 <main+0xe8>
     3b4:	e59f0038 	ldr	r0, [pc, #56]	@ 3f4 <main+0x114>
     3b8:	eb000172 	bl	988 <parsecmd>
     3bc:	e1a03000 	mov	r3, r0
     3c0:	e1a00003 	mov	r0, r3
     3c4:	ebffff0d 	bl	0 <runcmd>
     3c8:	eb00049d 	bl	1644 <wait>
     3cc:	ea000000 	b	3d4 <main+0xf4>
     3d0:	e1a00000 	nop			@ (mov r0, r0)
     3d4:	e3a01064 	mov	r1, #100	@ 0x64
     3d8:	e59f0014 	ldr	r0, [pc, #20]	@ 3f4 <main+0x114>
     3dc:	ebffffa4 	bl	274 <getcmd>
     3e0:	e1a03000 	mov	r3, r0
     3e4:	e3530000 	cmp	r3, #0
     3e8:	aaffffce 	bge	328 <main+0x48>
     3ec:	eb00048b 	bl	1620 <exit>
     3f0:	00002270 	.word	0x00002270
     3f4:	0000234c 	.word	0x0000234c
     3f8:	0000234f 	.word	0x0000234f
     3fc:	00002278 	.word	0x00002278

00000400 <panic>:
     400:	e92d4800 	push	{fp, lr}
     404:	e28db004 	add	fp, sp, #4
     408:	e24dd008 	sub	sp, sp, #8
     40c:	e50b0008 	str	r0, [fp, #-8]
     410:	e51b2008 	ldr	r2, [fp, #-8]
     414:	e59f1008 	ldr	r1, [pc, #8]	@ 424 <panic+0x24>
     418:	e3a00002 	mov	r0, #2
     41c:	eb0005d7 	bl	1b80 <printf>
     420:	eb00047e 	bl	1620 <exit>
     424:	00002288 	.word	0x00002288

00000428 <fork1>:
     428:	e92d4800 	push	{fp, lr}
     42c:	e28db004 	add	fp, sp, #4
     430:	e24dd008 	sub	sp, sp, #8
     434:	eb000470 	bl	15fc <fork>
     438:	e50b0008 	str	r0, [fp, #-8]
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e3730001 	cmn	r3, #1
     444:	1a000001 	bne	450 <fork1+0x28>
     448:	e59f0010 	ldr	r0, [pc, #16]	@ 460 <fork1+0x38>
     44c:	ebffffeb 	bl	400 <panic>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}
     460:	0000228c 	.word	0x0000228c

00000464 <execcmd>:
     464:	e92d4800 	push	{fp, lr}
     468:	e28db004 	add	fp, sp, #4
     46c:	e24dd008 	sub	sp, sp, #8
     470:	e3a00054 	mov	r0, #84	@ 0x54
     474:	eb0006d0 	bl	1fbc <malloc>
     478:	e50b0008 	str	r0, [fp, #-8]
     47c:	e3a02054 	mov	r2, #84	@ 0x54
     480:	e3a01000 	mov	r1, #0
     484:	e51b0008 	ldr	r0, [fp, #-8]
     488:	eb000372 	bl	1258 <memset>
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e3a02001 	mov	r2, #1
     494:	e5832000 	str	r2, [r3]
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e1a00003 	mov	r0, r3
     4a0:	e24bd004 	sub	sp, fp, #4
     4a4:	e8bd8800 	pop	{fp, pc}

000004a8 <redircmd>:
     4a8:	e92d4800 	push	{fp, lr}
     4ac:	e28db004 	add	fp, sp, #4
     4b0:	e24dd018 	sub	sp, sp, #24
     4b4:	e50b0010 	str	r0, [fp, #-16]
     4b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4c0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     4c4:	e3a00018 	mov	r0, #24
     4c8:	eb0006bb 	bl	1fbc <malloc>
     4cc:	e50b0008 	str	r0, [fp, #-8]
     4d0:	e3a02018 	mov	r2, #24
     4d4:	e3a01000 	mov	r1, #0
     4d8:	e51b0008 	ldr	r0, [fp, #-8]
     4dc:	eb00035d 	bl	1258 <memset>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e3a02002 	mov	r2, #2
     4e8:	e5832000 	str	r2, [r3]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e51b2010 	ldr	r2, [fp, #-16]
     4f4:	e5832004 	str	r2, [r3, #4]
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     500:	e5832008 	str	r2, [r3, #8]
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     50c:	e583200c 	str	r2, [r3, #12]
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     518:	e5832010 	str	r2, [r3, #16]
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e59b2004 	ldr	r2, [fp, #4]
     524:	e5832014 	str	r2, [r3, #20]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e1a00003 	mov	r0, r3
     530:	e24bd004 	sub	sp, fp, #4
     534:	e8bd8800 	pop	{fp, pc}

00000538 <pipecmd>:
     538:	e92d4800 	push	{fp, lr}
     53c:	e28db004 	add	fp, sp, #4
     540:	e24dd010 	sub	sp, sp, #16
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e3a0000c 	mov	r0, #12
     550:	eb000699 	bl	1fbc <malloc>
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e3a0200c 	mov	r2, #12
     55c:	e3a01000 	mov	r1, #0
     560:	e51b0008 	ldr	r0, [fp, #-8]
     564:	eb00033b 	bl	1258 <memset>
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e3a02003 	mov	r2, #3
     570:	e5832000 	str	r2, [r3]
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e51b2010 	ldr	r2, [fp, #-16]
     57c:	e5832004 	str	r2, [r3, #4]
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     588:	e5832008 	str	r2, [r3, #8]
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e1a00003 	mov	r0, r3
     594:	e24bd004 	sub	sp, fp, #4
     598:	e8bd8800 	pop	{fp, pc}

0000059c <listcmd>:
     59c:	e92d4800 	push	{fp, lr}
     5a0:	e28db004 	add	fp, sp, #4
     5a4:	e24dd010 	sub	sp, sp, #16
     5a8:	e50b0010 	str	r0, [fp, #-16]
     5ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5b0:	e3a0000c 	mov	r0, #12
     5b4:	eb000680 	bl	1fbc <malloc>
     5b8:	e50b0008 	str	r0, [fp, #-8]
     5bc:	e3a0200c 	mov	r2, #12
     5c0:	e3a01000 	mov	r1, #0
     5c4:	e51b0008 	ldr	r0, [fp, #-8]
     5c8:	eb000322 	bl	1258 <memset>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e3a02004 	mov	r2, #4
     5d4:	e5832000 	str	r2, [r3]
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e51b2010 	ldr	r2, [fp, #-16]
     5e0:	e5832004 	str	r2, [r3, #4]
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5ec:	e5832008 	str	r2, [r3, #8]
     5f0:	e51b3008 	ldr	r3, [fp, #-8]
     5f4:	e1a00003 	mov	r0, r3
     5f8:	e24bd004 	sub	sp, fp, #4
     5fc:	e8bd8800 	pop	{fp, pc}

00000600 <backcmd>:
     600:	e92d4800 	push	{fp, lr}
     604:	e28db004 	add	fp, sp, #4
     608:	e24dd010 	sub	sp, sp, #16
     60c:	e50b0010 	str	r0, [fp, #-16]
     610:	e3a00008 	mov	r0, #8
     614:	eb000668 	bl	1fbc <malloc>
     618:	e50b0008 	str	r0, [fp, #-8]
     61c:	e3a02008 	mov	r2, #8
     620:	e3a01000 	mov	r1, #0
     624:	e51b0008 	ldr	r0, [fp, #-8]
     628:	eb00030a 	bl	1258 <memset>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e3a02005 	mov	r2, #5
     634:	e5832000 	str	r2, [r3]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e51b2010 	ldr	r2, [fp, #-16]
     640:	e5832004 	str	r2, [r3, #4]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e1a00003 	mov	r0, r3
     64c:	e24bd004 	sub	sp, fp, #4
     650:	e8bd8800 	pop	{fp, pc}

00000654 <gettoken>:
     654:	e92d4800 	push	{fp, lr}
     658:	e28db004 	add	fp, sp, #4
     65c:	e24dd018 	sub	sp, sp, #24
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     668:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     670:	e51b3010 	ldr	r3, [fp, #-16]
     674:	e5933000 	ldr	r3, [r3]
     678:	e50b3008 	str	r3, [fp, #-8]
     67c:	ea000002 	b	68c <gettoken+0x38>
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	e2833001 	add	r3, r3, #1
     688:	e50b3008 	str	r3, [fp, #-8]
     68c:	e51b2008 	ldr	r2, [fp, #-8]
     690:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     694:	e1520003 	cmp	r2, r3
     698:	2a000007 	bcs	6bc <gettoken+0x68>
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e5d33000 	ldrb	r3, [r3]
     6a4:	e1a01003 	mov	r1, r3
     6a8:	e59f0214 	ldr	r0, [pc, #532]	@ 8c4 <gettoken+0x270>
     6ac:	eb000333 	bl	1380 <strchr>
     6b0:	e1a03000 	mov	r3, r0
     6b4:	e3530000 	cmp	r3, #0
     6b8:	1afffff0 	bne	680 <gettoken+0x2c>
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e3530000 	cmp	r3, #0
     6c4:	0a000002 	beq	6d4 <gettoken+0x80>
     6c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6cc:	e51b2008 	ldr	r2, [fp, #-8]
     6d0:	e5832000 	str	r2, [r3]
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e50b300c 	str	r3, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5d33000 	ldrb	r3, [r3]
     6e8:	e353007c 	cmp	r3, #124	@ 0x7c
     6ec:	0a000026 	beq	78c <gettoken+0x138>
     6f0:	e353007c 	cmp	r3, #124	@ 0x7c
     6f4:	ca000035 	bgt	7d0 <gettoken+0x17c>
     6f8:	e3530000 	cmp	r3, #0
     6fc:	0a00004e 	beq	83c <gettoken+0x1e8>
     700:	e3530000 	cmp	r3, #0
     704:	ba000031 	blt	7d0 <gettoken+0x17c>
     708:	e353003e 	cmp	r3, #62	@ 0x3e
     70c:	ca00002f 	bgt	7d0 <gettoken+0x17c>
     710:	e3530026 	cmp	r3, #38	@ 0x26
     714:	ba00002d 	blt	7d0 <gettoken+0x17c>
     718:	e2433026 	sub	r3, r3, #38	@ 0x26
     71c:	e3530018 	cmp	r3, #24
     720:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     724:	ea000029 	b	7d0 <gettoken+0x17c>
     728:	0000078c 	.word	0x0000078c
     72c:	000007d0 	.word	0x000007d0
     730:	0000078c 	.word	0x0000078c
     734:	0000078c 	.word	0x0000078c
     738:	000007d0 	.word	0x000007d0
     73c:	000007d0 	.word	0x000007d0
     740:	000007d0 	.word	0x000007d0
     744:	000007d0 	.word	0x000007d0
     748:	000007d0 	.word	0x000007d0
     74c:	000007d0 	.word	0x000007d0
     750:	000007d0 	.word	0x000007d0
     754:	000007d0 	.word	0x000007d0
     758:	000007d0 	.word	0x000007d0
     75c:	000007d0 	.word	0x000007d0
     760:	000007d0 	.word	0x000007d0
     764:	000007d0 	.word	0x000007d0
     768:	000007d0 	.word	0x000007d0
     76c:	000007d0 	.word	0x000007d0
     770:	000007d0 	.word	0x000007d0
     774:	000007d0 	.word	0x000007d0
     778:	000007d0 	.word	0x000007d0
     77c:	0000078c 	.word	0x0000078c
     780:	0000078c 	.word	0x0000078c
     784:	000007d0 	.word	0x000007d0
     788:	0000079c 	.word	0x0000079c
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e2833001 	add	r3, r3, #1
     794:	e50b3008 	str	r3, [fp, #-8]
     798:	ea00002c 	b	850 <gettoken+0x1fc>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833001 	add	r3, r3, #1
     7a4:	e50b3008 	str	r3, [fp, #-8]
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5d33000 	ldrb	r3, [r3]
     7b0:	e353003e 	cmp	r3, #62	@ 0x3e
     7b4:	1a000022 	bne	844 <gettoken+0x1f0>
     7b8:	e3a0302b 	mov	r3, #43	@ 0x2b
     7bc:	e50b300c 	str	r3, [fp, #-12]
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e2833001 	add	r3, r3, #1
     7c8:	e50b3008 	str	r3, [fp, #-8]
     7cc:	ea00001c 	b	844 <gettoken+0x1f0>
     7d0:	e3a03061 	mov	r3, #97	@ 0x61
     7d4:	e50b300c 	str	r3, [fp, #-12]
     7d8:	ea000002 	b	7e8 <gettoken+0x194>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e2833001 	add	r3, r3, #1
     7e4:	e50b3008 	str	r3, [fp, #-8]
     7e8:	e51b2008 	ldr	r2, [fp, #-8]
     7ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7f0:	e1520003 	cmp	r2, r3
     7f4:	2a000014 	bcs	84c <gettoken+0x1f8>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5d33000 	ldrb	r3, [r3]
     800:	e1a01003 	mov	r1, r3
     804:	e59f00b8 	ldr	r0, [pc, #184]	@ 8c4 <gettoken+0x270>
     808:	eb0002dc 	bl	1380 <strchr>
     80c:	e1a03000 	mov	r3, r0
     810:	e3530000 	cmp	r3, #0
     814:	1a00000c 	bne	84c <gettoken+0x1f8>
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e5d33000 	ldrb	r3, [r3]
     820:	e1a01003 	mov	r1, r3
     824:	e59f009c 	ldr	r0, [pc, #156]	@ 8c8 <gettoken+0x274>
     828:	eb0002d4 	bl	1380 <strchr>
     82c:	e1a03000 	mov	r3, r0
     830:	e3530000 	cmp	r3, #0
     834:	0affffe8 	beq	7dc <gettoken+0x188>
     838:	ea000003 	b	84c <gettoken+0x1f8>
     83c:	e1a00000 	nop			@ (mov r0, r0)
     840:	ea000002 	b	850 <gettoken+0x1fc>
     844:	e1a00000 	nop			@ (mov r0, r0)
     848:	ea000000 	b	850 <gettoken+0x1fc>
     84c:	e1a00000 	nop			@ (mov r0, r0)
     850:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     854:	e3530000 	cmp	r3, #0
     858:	0a000006 	beq	878 <gettoken+0x224>
     85c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     860:	e51b2008 	ldr	r2, [fp, #-8]
     864:	e5832000 	str	r2, [r3]
     868:	ea000002 	b	878 <gettoken+0x224>
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e2833001 	add	r3, r3, #1
     874:	e50b3008 	str	r3, [fp, #-8]
     878:	e51b2008 	ldr	r2, [fp, #-8]
     87c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     880:	e1520003 	cmp	r2, r3
     884:	2a000007 	bcs	8a8 <gettoken+0x254>
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5d33000 	ldrb	r3, [r3]
     890:	e1a01003 	mov	r1, r3
     894:	e59f0028 	ldr	r0, [pc, #40]	@ 8c4 <gettoken+0x270>
     898:	eb0002b8 	bl	1380 <strchr>
     89c:	e1a03000 	mov	r3, r0
     8a0:	e3530000 	cmp	r3, #0
     8a4:	1afffff0 	bne	86c <gettoken+0x218>
     8a8:	e51b3010 	ldr	r3, [fp, #-16]
     8ac:	e51b2008 	ldr	r2, [fp, #-8]
     8b0:	e5832000 	str	r2, [r3]
     8b4:	e51b300c 	ldr	r3, [fp, #-12]
     8b8:	e1a00003 	mov	r0, r3
     8bc:	e24bd004 	sub	sp, fp, #4
     8c0:	e8bd8800 	pop	{fp, pc}
     8c4:	00002328 	.word	0x00002328
     8c8:	00002330 	.word	0x00002330

000008cc <peek>:
     8cc:	e92d4800 	push	{fp, lr}
     8d0:	e28db004 	add	fp, sp, #4
     8d4:	e24dd018 	sub	sp, sp, #24
     8d8:	e50b0010 	str	r0, [fp, #-16]
     8dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8e0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8e4:	e51b3010 	ldr	r3, [fp, #-16]
     8e8:	e5933000 	ldr	r3, [r3]
     8ec:	e50b3008 	str	r3, [fp, #-8]
     8f0:	ea000002 	b	900 <peek+0x34>
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e2833001 	add	r3, r3, #1
     8fc:	e50b3008 	str	r3, [fp, #-8]
     900:	e51b2008 	ldr	r2, [fp, #-8]
     904:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     908:	e1520003 	cmp	r2, r3
     90c:	2a000007 	bcs	930 <peek+0x64>
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5d33000 	ldrb	r3, [r3]
     918:	e1a01003 	mov	r1, r3
     91c:	e59f0060 	ldr	r0, [pc, #96]	@ 984 <peek+0xb8>
     920:	eb000296 	bl	1380 <strchr>
     924:	e1a03000 	mov	r3, r0
     928:	e3530000 	cmp	r3, #0
     92c:	1afffff0 	bne	8f4 <peek+0x28>
     930:	e51b3010 	ldr	r3, [fp, #-16]
     934:	e51b2008 	ldr	r2, [fp, #-8]
     938:	e5832000 	str	r2, [r3]
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5d33000 	ldrb	r3, [r3]
     944:	e3530000 	cmp	r3, #0
     948:	0a000009 	beq	974 <peek+0xa8>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5d33000 	ldrb	r3, [r3]
     954:	e1a01003 	mov	r1, r3
     958:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     95c:	eb000287 	bl	1380 <strchr>
     960:	e1a03000 	mov	r3, r0
     964:	e3530000 	cmp	r3, #0
     968:	0a000001 	beq	974 <peek+0xa8>
     96c:	e3a03001 	mov	r3, #1
     970:	ea000000 	b	978 <peek+0xac>
     974:	e3a03000 	mov	r3, #0
     978:	e1a00003 	mov	r0, r3
     97c:	e24bd004 	sub	sp, fp, #4
     980:	e8bd8800 	pop	{fp, pc}
     984:	00002328 	.word	0x00002328

00000988 <parsecmd>:
     988:	e92d4810 	push	{r4, fp, lr}
     98c:	e28db008 	add	fp, sp, #8
     990:	e24dd014 	sub	sp, sp, #20
     994:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     998:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     99c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9a0:	e1a00003 	mov	r0, r3
     9a4:	eb000216 	bl	1204 <strlen>
     9a8:	e1a03000 	mov	r3, r0
     9ac:	e0843003 	add	r3, r4, r3
     9b0:	e50b3010 	str	r3, [fp, #-16]
     9b4:	e24b3018 	sub	r3, fp, #24
     9b8:	e51b1010 	ldr	r1, [fp, #-16]
     9bc:	e1a00003 	mov	r0, r3
     9c0:	eb000019 	bl	a2c <parseline>
     9c4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     9c8:	e24b3018 	sub	r3, fp, #24
     9cc:	e59f204c 	ldr	r2, [pc, #76]	@ a20 <parsecmd+0x98>
     9d0:	e51b1010 	ldr	r1, [fp, #-16]
     9d4:	e1a00003 	mov	r0, r3
     9d8:	ebffffbb 	bl	8cc <peek>
     9dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9e0:	e51b2010 	ldr	r2, [fp, #-16]
     9e4:	e1520003 	cmp	r2, r3
     9e8:	0a000006 	beq	a08 <parsecmd+0x80>
     9ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9f0:	e1a02003 	mov	r2, r3
     9f4:	e59f1028 	ldr	r1, [pc, #40]	@ a24 <parsecmd+0x9c>
     9f8:	e3a00002 	mov	r0, #2
     9fc:	eb00045f 	bl	1b80 <printf>
     a00:	e59f0020 	ldr	r0, [pc, #32]	@ a28 <parsecmd+0xa0>
     a04:	ebfffe7d 	bl	400 <panic>
     a08:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     a0c:	eb00013c 	bl	f04 <nulterminate>
     a10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a14:	e1a00003 	mov	r0, r3
     a18:	e24bd008 	sub	sp, fp, #8
     a1c:	e8bd8810 	pop	{r4, fp, pc}
     a20:	00002294 	.word	0x00002294
     a24:	00002298 	.word	0x00002298
     a28:	000022a8 	.word	0x000022a8

00000a2c <parseline>:
     a2c:	e92d4800 	push	{fp, lr}
     a30:	e28db004 	add	fp, sp, #4
     a34:	e24dd010 	sub	sp, sp, #16
     a38:	e50b0010 	str	r0, [fp, #-16]
     a3c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a40:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a44:	e51b0010 	ldr	r0, [fp, #-16]
     a48:	eb00002a 	bl	af8 <parsepipe>
     a4c:	e50b0008 	str	r0, [fp, #-8]
     a50:	ea000007 	b	a74 <parseline+0x48>
     a54:	e3a03000 	mov	r3, #0
     a58:	e3a02000 	mov	r2, #0
     a5c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a60:	e51b0010 	ldr	r0, [fp, #-16]
     a64:	ebfffefa 	bl	654 <gettoken>
     a68:	e51b0008 	ldr	r0, [fp, #-8]
     a6c:	ebfffee3 	bl	600 <backcmd>
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e59f2074 	ldr	r2, [pc, #116]	@ af0 <parseline+0xc4>
     a78:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a7c:	e51b0010 	ldr	r0, [fp, #-16]
     a80:	ebffff91 	bl	8cc <peek>
     a84:	e1a03000 	mov	r3, r0
     a88:	e3530000 	cmp	r3, #0
     a8c:	1afffff0 	bne	a54 <parseline+0x28>
     a90:	e59f205c 	ldr	r2, [pc, #92]	@ af4 <parseline+0xc8>
     a94:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a98:	e51b0010 	ldr	r0, [fp, #-16]
     a9c:	ebffff8a 	bl	8cc <peek>
     aa0:	e1a03000 	mov	r3, r0
     aa4:	e3530000 	cmp	r3, #0
     aa8:	0a00000c 	beq	ae0 <parseline+0xb4>
     aac:	e3a03000 	mov	r3, #0
     ab0:	e3a02000 	mov	r2, #0
     ab4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ab8:	e51b0010 	ldr	r0, [fp, #-16]
     abc:	ebfffee4 	bl	654 <gettoken>
     ac0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ac4:	e51b0010 	ldr	r0, [fp, #-16]
     ac8:	ebffffd7 	bl	a2c <parseline>
     acc:	e1a03000 	mov	r3, r0
     ad0:	e1a01003 	mov	r1, r3
     ad4:	e51b0008 	ldr	r0, [fp, #-8]
     ad8:	ebfffeaf 	bl	59c <listcmd>
     adc:	e50b0008 	str	r0, [fp, #-8]
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e1a00003 	mov	r0, r3
     ae8:	e24bd004 	sub	sp, fp, #4
     aec:	e8bd8800 	pop	{fp, pc}
     af0:	000022b0 	.word	0x000022b0
     af4:	000022b4 	.word	0x000022b4

00000af8 <parsepipe>:
     af8:	e92d4800 	push	{fp, lr}
     afc:	e28db004 	add	fp, sp, #4
     b00:	e24dd010 	sub	sp, sp, #16
     b04:	e50b0010 	str	r0, [fp, #-16]
     b08:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     b0c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b10:	e51b0010 	ldr	r0, [fp, #-16]
     b14:	eb000097 	bl	d78 <parseexec>
     b18:	e50b0008 	str	r0, [fp, #-8]
     b1c:	e59f2058 	ldr	r2, [pc, #88]	@ b7c <parsepipe+0x84>
     b20:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b24:	e51b0010 	ldr	r0, [fp, #-16]
     b28:	ebffff67 	bl	8cc <peek>
     b2c:	e1a03000 	mov	r3, r0
     b30:	e3530000 	cmp	r3, #0
     b34:	0a00000c 	beq	b6c <parsepipe+0x74>
     b38:	e3a03000 	mov	r3, #0
     b3c:	e3a02000 	mov	r2, #0
     b40:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b44:	e51b0010 	ldr	r0, [fp, #-16]
     b48:	ebfffec1 	bl	654 <gettoken>
     b4c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b50:	e51b0010 	ldr	r0, [fp, #-16]
     b54:	ebffffe7 	bl	af8 <parsepipe>
     b58:	e1a03000 	mov	r3, r0
     b5c:	e1a01003 	mov	r1, r3
     b60:	e51b0008 	ldr	r0, [fp, #-8]
     b64:	ebfffe73 	bl	538 <pipecmd>
     b68:	e50b0008 	str	r0, [fp, #-8]
     b6c:	e51b3008 	ldr	r3, [fp, #-8]
     b70:	e1a00003 	mov	r0, r3
     b74:	e24bd004 	sub	sp, fp, #4
     b78:	e8bd8800 	pop	{fp, pc}
     b7c:	000022b8 	.word	0x000022b8

00000b80 <parseredirs>:
     b80:	e92d4800 	push	{fp, lr}
     b84:	e28db004 	add	fp, sp, #4
     b88:	e24dd028 	sub	sp, sp, #40	@ 0x28
     b8c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     b90:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     b94:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     b98:	ea000036 	b	c78 <parseredirs+0xf8>
     b9c:	e3a03000 	mov	r3, #0
     ba0:	e3a02000 	mov	r2, #0
     ba4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     ba8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     bac:	ebfffea8 	bl	654 <gettoken>
     bb0:	e50b0008 	str	r0, [fp, #-8]
     bb4:	e24b3010 	sub	r3, fp, #16
     bb8:	e24b200c 	sub	r2, fp, #12
     bbc:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     bc0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     bc4:	ebfffea2 	bl	654 <gettoken>
     bc8:	e1a03000 	mov	r3, r0
     bcc:	e3530061 	cmp	r3, #97	@ 0x61
     bd0:	0a000001 	beq	bdc <parseredirs+0x5c>
     bd4:	e59f00c8 	ldr	r0, [pc, #200]	@ ca4 <parseredirs+0x124>
     bd8:	ebfffe08 	bl	400 <panic>
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e353003e 	cmp	r3, #62	@ 0x3e
     be4:	0a000011 	beq	c30 <parseredirs+0xb0>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e353003e 	cmp	r3, #62	@ 0x3e
     bf0:	ca000020 	bgt	c78 <parseredirs+0xf8>
     bf4:	e51b3008 	ldr	r3, [fp, #-8]
     bf8:	e353002b 	cmp	r3, #43	@ 0x2b
     bfc:	0a000014 	beq	c54 <parseredirs+0xd4>
     c00:	e51b3008 	ldr	r3, [fp, #-8]
     c04:	e353003c 	cmp	r3, #60	@ 0x3c
     c08:	1a00001a 	bne	c78 <parseredirs+0xf8>
     c0c:	e51b100c 	ldr	r1, [fp, #-12]
     c10:	e51b2010 	ldr	r2, [fp, #-16]
     c14:	e3a03000 	mov	r3, #0
     c18:	e58d3000 	str	r3, [sp]
     c1c:	e3a03000 	mov	r3, #0
     c20:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c24:	ebfffe1f 	bl	4a8 <redircmd>
     c28:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c2c:	ea000011 	b	c78 <parseredirs+0xf8>
     c30:	e51b100c 	ldr	r1, [fp, #-12]
     c34:	e51b2010 	ldr	r2, [fp, #-16]
     c38:	e3a03001 	mov	r3, #1
     c3c:	e58d3000 	str	r3, [sp]
     c40:	e59f3060 	ldr	r3, [pc, #96]	@ ca8 <parseredirs+0x128>
     c44:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c48:	ebfffe16 	bl	4a8 <redircmd>
     c4c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c50:	ea000008 	b	c78 <parseredirs+0xf8>
     c54:	e51b100c 	ldr	r1, [fp, #-12]
     c58:	e51b2010 	ldr	r2, [fp, #-16]
     c5c:	e3a03001 	mov	r3, #1
     c60:	e58d3000 	str	r3, [sp]
     c64:	e59f303c 	ldr	r3, [pc, #60]	@ ca8 <parseredirs+0x128>
     c68:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c6c:	ebfffe0d 	bl	4a8 <redircmd>
     c70:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c74:	e1a00000 	nop			@ (mov r0, r0)
     c78:	e59f202c 	ldr	r2, [pc, #44]	@ cac <parseredirs+0x12c>
     c7c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     c80:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     c84:	ebffff10 	bl	8cc <peek>
     c88:	e1a03000 	mov	r3, r0
     c8c:	e3530000 	cmp	r3, #0
     c90:	1affffc1 	bne	b9c <parseredirs+0x1c>
     c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c98:	e1a00003 	mov	r0, r3
     c9c:	e24bd004 	sub	sp, fp, #4
     ca0:	e8bd8800 	pop	{fp, pc}
     ca4:	000022bc 	.word	0x000022bc
     ca8:	00000201 	.word	0x00000201
     cac:	000022dc 	.word	0x000022dc

00000cb0 <parseblock>:
     cb0:	e92d4800 	push	{fp, lr}
     cb4:	e28db004 	add	fp, sp, #4
     cb8:	e24dd010 	sub	sp, sp, #16
     cbc:	e50b0010 	str	r0, [fp, #-16]
     cc0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     cc4:	e59f209c 	ldr	r2, [pc, #156]	@ d68 <parseblock+0xb8>
     cc8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ccc:	e51b0010 	ldr	r0, [fp, #-16]
     cd0:	ebfffefd 	bl	8cc <peek>
     cd4:	e1a03000 	mov	r3, r0
     cd8:	e3530000 	cmp	r3, #0
     cdc:	1a000001 	bne	ce8 <parseblock+0x38>
     ce0:	e59f0084 	ldr	r0, [pc, #132]	@ d6c <parseblock+0xbc>
     ce4:	ebfffdc5 	bl	400 <panic>
     ce8:	e3a03000 	mov	r3, #0
     cec:	e3a02000 	mov	r2, #0
     cf0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     cf4:	e51b0010 	ldr	r0, [fp, #-16]
     cf8:	ebfffe55 	bl	654 <gettoken>
     cfc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     d00:	e51b0010 	ldr	r0, [fp, #-16]
     d04:	ebffff48 	bl	a2c <parseline>
     d08:	e50b0008 	str	r0, [fp, #-8]
     d0c:	e59f205c 	ldr	r2, [pc, #92]	@ d70 <parseblock+0xc0>
     d10:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     d14:	e51b0010 	ldr	r0, [fp, #-16]
     d18:	ebfffeeb 	bl	8cc <peek>
     d1c:	e1a03000 	mov	r3, r0
     d20:	e3530000 	cmp	r3, #0
     d24:	1a000001 	bne	d30 <parseblock+0x80>
     d28:	e59f0044 	ldr	r0, [pc, #68]	@ d74 <parseblock+0xc4>
     d2c:	ebfffdb3 	bl	400 <panic>
     d30:	e3a03000 	mov	r3, #0
     d34:	e3a02000 	mov	r2, #0
     d38:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     d3c:	e51b0010 	ldr	r0, [fp, #-16]
     d40:	ebfffe43 	bl	654 <gettoken>
     d44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     d48:	e51b1010 	ldr	r1, [fp, #-16]
     d4c:	e51b0008 	ldr	r0, [fp, #-8]
     d50:	ebffff8a 	bl	b80 <parseredirs>
     d54:	e50b0008 	str	r0, [fp, #-8]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e1a00003 	mov	r0, r3
     d60:	e24bd004 	sub	sp, fp, #4
     d64:	e8bd8800 	pop	{fp, pc}
     d68:	000022e0 	.word	0x000022e0
     d6c:	000022e4 	.word	0x000022e4
     d70:	000022f0 	.word	0x000022f0
     d74:	000022f4 	.word	0x000022f4

00000d78 <parseexec>:
     d78:	e92d4800 	push	{fp, lr}
     d7c:	e28db004 	add	fp, sp, #4
     d80:	e24dd020 	sub	sp, sp, #32
     d84:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     d88:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
     d8c:	e59f2160 	ldr	r2, [pc, #352]	@ ef4 <parseexec+0x17c>
     d90:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d94:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d98:	ebfffecb 	bl	8cc <peek>
     d9c:	e1a03000 	mov	r3, r0
     da0:	e3530000 	cmp	r3, #0
     da4:	0a000004 	beq	dbc <parseexec+0x44>
     da8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     dac:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     db0:	ebffffbe 	bl	cb0 <parseblock>
     db4:	e1a03000 	mov	r3, r0
     db8:	ea00004a 	b	ee8 <parseexec+0x170>
     dbc:	ebfffda8 	bl	464 <execcmd>
     dc0:	e50b000c 	str	r0, [fp, #-12]
     dc4:	e51b300c 	ldr	r3, [fp, #-12]
     dc8:	e50b3010 	str	r3, [fp, #-16]
     dcc:	e3a03000 	mov	r3, #0
     dd0:	e50b3008 	str	r3, [fp, #-8]
     dd4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     dd8:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     ddc:	e51b000c 	ldr	r0, [fp, #-12]
     de0:	ebffff66 	bl	b80 <parseredirs>
     de4:	e50b000c 	str	r0, [fp, #-12]
     de8:	ea000027 	b	e8c <parseexec+0x114>
     dec:	e24b301c 	sub	r3, fp, #28
     df0:	e24b2018 	sub	r2, fp, #24
     df4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     df8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     dfc:	ebfffe14 	bl	654 <gettoken>
     e00:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     e04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e08:	e3530000 	cmp	r3, #0
     e0c:	0a000026 	beq	eac <parseexec+0x134>
     e10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e14:	e3530061 	cmp	r3, #97	@ 0x61
     e18:	0a000001 	beq	e24 <parseexec+0xac>
     e1c:	e59f00d4 	ldr	r0, [pc, #212]	@ ef8 <parseexec+0x180>
     e20:	ebfffd76 	bl	400 <panic>
     e24:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     e28:	e51b1010 	ldr	r1, [fp, #-16]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e1a03103 	lsl	r3, r3, #2
     e34:	e0813003 	add	r3, r1, r3
     e38:	e5832004 	str	r2, [r3, #4]
     e3c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     e40:	e51b1010 	ldr	r1, [fp, #-16]
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e283300a 	add	r3, r3, #10
     e4c:	e1a03103 	lsl	r3, r3, #2
     e50:	e0813003 	add	r3, r1, r3
     e54:	e5832004 	str	r2, [r3, #4]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e2833001 	add	r3, r3, #1
     e60:	e50b3008 	str	r3, [fp, #-8]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e3530009 	cmp	r3, #9
     e6c:	da000001 	ble	e78 <parseexec+0x100>
     e70:	e59f0084 	ldr	r0, [pc, #132]	@ efc <parseexec+0x184>
     e74:	ebfffd61 	bl	400 <panic>
     e78:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     e7c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     e80:	e51b000c 	ldr	r0, [fp, #-12]
     e84:	ebffff3d 	bl	b80 <parseredirs>
     e88:	e50b000c 	str	r0, [fp, #-12]
     e8c:	e59f206c 	ldr	r2, [pc, #108]	@ f00 <parseexec+0x188>
     e90:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     e94:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     e98:	ebfffe8b 	bl	8cc <peek>
     e9c:	e1a03000 	mov	r3, r0
     ea0:	e3530000 	cmp	r3, #0
     ea4:	0affffd0 	beq	dec <parseexec+0x74>
     ea8:	ea000000 	b	eb0 <parseexec+0x138>
     eac:	e1a00000 	nop			@ (mov r0, r0)
     eb0:	e51b2010 	ldr	r2, [fp, #-16]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e1a03103 	lsl	r3, r3, #2
     ebc:	e0823003 	add	r3, r2, r3
     ec0:	e3a02000 	mov	r2, #0
     ec4:	e5832004 	str	r2, [r3, #4]
     ec8:	e51b2010 	ldr	r2, [fp, #-16]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e283300a 	add	r3, r3, #10
     ed4:	e1a03103 	lsl	r3, r3, #2
     ed8:	e0823003 	add	r3, r2, r3
     edc:	e3a02000 	mov	r2, #0
     ee0:	e5832004 	str	r2, [r3, #4]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e1a00003 	mov	r0, r3
     eec:	e24bd004 	sub	sp, fp, #4
     ef0:	e8bd8800 	pop	{fp, pc}
     ef4:	000022e0 	.word	0x000022e0
     ef8:	000022a8 	.word	0x000022a8
     efc:	00002308 	.word	0x00002308
     f00:	00002318 	.word	0x00002318

00000f04 <nulterminate>:
     f04:	e92d4800 	push	{fp, lr}
     f08:	e28db004 	add	fp, sp, #4
     f0c:	e24dd020 	sub	sp, sp, #32
     f10:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     f14:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f18:	e3530000 	cmp	r3, #0
     f1c:	1a000001 	bne	f28 <nulterminate+0x24>
     f20:	e3a03000 	mov	r3, #0
     f24:	ea00004b 	b	1058 <nulterminate+0x154>
     f28:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e2433001 	sub	r3, r3, #1
     f34:	e3530004 	cmp	r3, #4
     f38:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     f3c:	ea000044 	b	1054 <nulterminate+0x150>
     f40:	00000f54 	.word	0x00000f54
     f44:	00000fb4 	.word	0x00000fb4
     f48:	00000fe0 	.word	0x00000fe0
     f4c:	0000100c 	.word	0x0000100c
     f50:	00001038 	.word	0x00001038
     f54:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f58:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f5c:	e3a03000 	mov	r3, #0
     f60:	e50b3008 	str	r3, [fp, #-8]
     f64:	ea00000a 	b	f94 <nulterminate+0x90>
     f68:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e283300a 	add	r3, r3, #10
     f74:	e1a03103 	lsl	r3, r3, #2
     f78:	e0823003 	add	r3, r2, r3
     f7c:	e5933004 	ldr	r3, [r3, #4]
     f80:	e3a02000 	mov	r2, #0
     f84:	e5c32000 	strb	r2, [r3]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e2833001 	add	r3, r3, #1
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e1a03103 	lsl	r3, r3, #2
     fa0:	e0823003 	add	r3, r2, r3
     fa4:	e5933004 	ldr	r3, [r3, #4]
     fa8:	e3530000 	cmp	r3, #0
     fac:	1affffed 	bne	f68 <nulterminate+0x64>
     fb0:	ea000027 	b	1054 <nulterminate+0x150>
     fb4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc0:	e5933004 	ldr	r3, [r3, #4]
     fc4:	e1a00003 	mov	r0, r3
     fc8:	ebffffcd 	bl	f04 <nulterminate>
     fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	e593300c 	ldr	r3, [r3, #12]
     fd4:	e3a02000 	mov	r2, #0
     fd8:	e5c32000 	strb	r2, [r3]
     fdc:	ea00001c 	b	1054 <nulterminate+0x150>
     fe0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fe4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fe8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fec:	e5933004 	ldr	r3, [r3, #4]
     ff0:	e1a00003 	mov	r0, r3
     ff4:	ebffffc2 	bl	f04 <nulterminate>
     ff8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ffc:	e5933008 	ldr	r3, [r3, #8]
    1000:	e1a00003 	mov	r0, r3
    1004:	ebffffbe 	bl	f04 <nulterminate>
    1008:	ea000011 	b	1054 <nulterminate+0x150>
    100c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1010:	e50b3010 	str	r3, [fp, #-16]
    1014:	e51b3010 	ldr	r3, [fp, #-16]
    1018:	e5933004 	ldr	r3, [r3, #4]
    101c:	e1a00003 	mov	r0, r3
    1020:	ebffffb7 	bl	f04 <nulterminate>
    1024:	e51b3010 	ldr	r3, [fp, #-16]
    1028:	e5933008 	ldr	r3, [r3, #8]
    102c:	e1a00003 	mov	r0, r3
    1030:	ebffffb3 	bl	f04 <nulterminate>
    1034:	ea000006 	b	1054 <nulterminate+0x150>
    1038:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    103c:	e50b300c 	str	r3, [fp, #-12]
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e5933004 	ldr	r3, [r3, #4]
    1048:	e1a00003 	mov	r0, r3
    104c:	ebffffac 	bl	f04 <nulterminate>
    1050:	e1a00000 	nop			@ (mov r0, r0)
    1054:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1058:	e1a00003 	mov	r0, r3
    105c:	e24bd004 	sub	sp, fp, #4
    1060:	e8bd8800 	pop	{fp, pc}

00001064 <strcpy>:
    1064:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1068:	e28db000 	add	fp, sp, #0
    106c:	e24dd014 	sub	sp, sp, #20
    1070:	e50b0010 	str	r0, [fp, #-16]
    1074:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1078:	e51b3010 	ldr	r3, [fp, #-16]
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	e1a00000 	nop			@ (mov r0, r0)
    1084:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1088:	e2823001 	add	r3, r2, #1
    108c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1090:	e51b3010 	ldr	r3, [fp, #-16]
    1094:	e2831001 	add	r1, r3, #1
    1098:	e50b1010 	str	r1, [fp, #-16]
    109c:	e5d22000 	ldrb	r2, [r2]
    10a0:	e5c32000 	strb	r2, [r3]
    10a4:	e5d33000 	ldrb	r3, [r3]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1afffff4 	bne	1084 <strcpy+0x20>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e1a00003 	mov	r0, r3
    10b8:	e28bd000 	add	sp, fp, #0
    10bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10c0:	e12fff1e 	bx	lr

000010c4 <strncmp>:
    10c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10c8:	e28db000 	add	fp, sp, #0
    10cc:	e24dd014 	sub	sp, sp, #20
    10d0:	e50b0008 	str	r0, [fp, #-8]
    10d4:	e50b100c 	str	r1, [fp, #-12]
    10d8:	e50b2010 	str	r2, [fp, #-16]
    10dc:	ea000008 	b	1104 <strncmp+0x40>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e2833001 	add	r3, r3, #1
    10e8:	e50b3008 	str	r3, [fp, #-8]
    10ec:	e51b300c 	ldr	r3, [fp, #-12]
    10f0:	e2833001 	add	r3, r3, #1
    10f4:	e50b300c 	str	r3, [fp, #-12]
    10f8:	e51b3010 	ldr	r3, [fp, #-16]
    10fc:	e2433001 	sub	r3, r3, #1
    1100:	e50b3010 	str	r3, [fp, #-16]
    1104:	e51b3010 	ldr	r3, [fp, #-16]
    1108:	e3530000 	cmp	r3, #0
    110c:	da00000d 	ble	1148 <strncmp+0x84>
    1110:	e51b3008 	ldr	r3, [fp, #-8]
    1114:	e5d33000 	ldrb	r3, [r3]
    1118:	e3530000 	cmp	r3, #0
    111c:	0a000009 	beq	1148 <strncmp+0x84>
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e5d33000 	ldrb	r3, [r3]
    1128:	e3530000 	cmp	r3, #0
    112c:	0a000005 	beq	1148 <strncmp+0x84>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e5d32000 	ldrb	r2, [r3]
    1138:	e51b300c 	ldr	r3, [fp, #-12]
    113c:	e5d33000 	ldrb	r3, [r3]
    1140:	e1520003 	cmp	r2, r3
    1144:	0affffe5 	beq	10e0 <strncmp+0x1c>
    1148:	e51b3010 	ldr	r3, [fp, #-16]
    114c:	e3530000 	cmp	r3, #0
    1150:	1a000001 	bne	115c <strncmp+0x98>
    1154:	e3a03000 	mov	r3, #0
    1158:	ea000005 	b	1174 <strncmp+0xb0>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5d33000 	ldrb	r3, [r3]
    1164:	e1a02003 	mov	r2, r3
    1168:	e51b300c 	ldr	r3, [fp, #-12]
    116c:	e5d33000 	ldrb	r3, [r3]
    1170:	e0423003 	sub	r3, r2, r3
    1174:	e1a00003 	mov	r0, r3
    1178:	e28bd000 	add	sp, fp, #0
    117c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1180:	e12fff1e 	bx	lr

00001184 <strcmp>:
    1184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1188:	e28db000 	add	fp, sp, #0
    118c:	e24dd00c 	sub	sp, sp, #12
    1190:	e50b0008 	str	r0, [fp, #-8]
    1194:	e50b100c 	str	r1, [fp, #-12]
    1198:	ea000005 	b	11b4 <strcmp+0x30>
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e2833001 	add	r3, r3, #1
    11a4:	e50b3008 	str	r3, [fp, #-8]
    11a8:	e51b300c 	ldr	r3, [fp, #-12]
    11ac:	e2833001 	add	r3, r3, #1
    11b0:	e50b300c 	str	r3, [fp, #-12]
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5d33000 	ldrb	r3, [r3]
    11bc:	e3530000 	cmp	r3, #0
    11c0:	0a000005 	beq	11dc <strcmp+0x58>
    11c4:	e51b3008 	ldr	r3, [fp, #-8]
    11c8:	e5d32000 	ldrb	r2, [r3]
    11cc:	e51b300c 	ldr	r3, [fp, #-12]
    11d0:	e5d33000 	ldrb	r3, [r3]
    11d4:	e1520003 	cmp	r2, r3
    11d8:	0affffef 	beq	119c <strcmp+0x18>
    11dc:	e51b3008 	ldr	r3, [fp, #-8]
    11e0:	e5d33000 	ldrb	r3, [r3]
    11e4:	e1a02003 	mov	r2, r3
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5d33000 	ldrb	r3, [r3]
    11f0:	e0423003 	sub	r3, r2, r3
    11f4:	e1a00003 	mov	r0, r3
    11f8:	e28bd000 	add	sp, fp, #0
    11fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1200:	e12fff1e 	bx	lr

00001204 <strlen>:
    1204:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1208:	e28db000 	add	fp, sp, #0
    120c:	e24dd014 	sub	sp, sp, #20
    1210:	e50b0010 	str	r0, [fp, #-16]
    1214:	e3a03000 	mov	r3, #0
    1218:	e50b3008 	str	r3, [fp, #-8]
    121c:	ea000002 	b	122c <strlen+0x28>
    1220:	e51b3008 	ldr	r3, [fp, #-8]
    1224:	e2833001 	add	r3, r3, #1
    1228:	e50b3008 	str	r3, [fp, #-8]
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e51b2010 	ldr	r2, [fp, #-16]
    1234:	e0823003 	add	r3, r2, r3
    1238:	e5d33000 	ldrb	r3, [r3]
    123c:	e3530000 	cmp	r3, #0
    1240:	1afffff6 	bne	1220 <strlen+0x1c>
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e1a00003 	mov	r0, r3
    124c:	e28bd000 	add	sp, fp, #0
    1250:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1254:	e12fff1e 	bx	lr

00001258 <memset>:
    1258:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    125c:	e28db000 	add	fp, sp, #0
    1260:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1264:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1268:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    126c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    1270:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1274:	e50b3008 	str	r3, [fp, #-8]
    1278:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    127c:	e54b300d 	strb	r3, [fp, #-13]
    1280:	e55b200d 	ldrb	r2, [fp, #-13]
    1284:	e1a03002 	mov	r3, r2
    1288:	e1a03403 	lsl	r3, r3, #8
    128c:	e0833002 	add	r3, r3, r2
    1290:	e1a03803 	lsl	r3, r3, #16
    1294:	e1a02003 	mov	r2, r3
    1298:	e55b300d 	ldrb	r3, [fp, #-13]
    129c:	e1a03403 	lsl	r3, r3, #8
    12a0:	e1822003 	orr	r2, r2, r3
    12a4:	e55b300d 	ldrb	r3, [fp, #-13]
    12a8:	e1823003 	orr	r3, r2, r3
    12ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12b0:	ea000008 	b	12d8 <memset+0x80>
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e55b200d 	ldrb	r2, [fp, #-13]
    12bc:	e5c32000 	strb	r2, [r3]
    12c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    12c4:	e2433001 	sub	r3, r3, #1
    12c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e2833001 	add	r3, r3, #1
    12d4:	e50b3008 	str	r3, [fp, #-8]
    12d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    12dc:	e3530000 	cmp	r3, #0
    12e0:	0a000003 	beq	12f4 <memset+0x9c>
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e2033003 	and	r3, r3, #3
    12ec:	e3530000 	cmp	r3, #0
    12f0:	1affffef 	bne	12b4 <memset+0x5c>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e50b300c 	str	r3, [fp, #-12]
    12fc:	ea000008 	b	1324 <memset+0xcc>
    1300:	e51b300c 	ldr	r3, [fp, #-12]
    1304:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1308:	e5832000 	str	r2, [r3]
    130c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1310:	e2433004 	sub	r3, r3, #4
    1314:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e2833004 	add	r3, r3, #4
    1320:	e50b300c 	str	r3, [fp, #-12]
    1324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1328:	e3530003 	cmp	r3, #3
    132c:	8afffff3 	bhi	1300 <memset+0xa8>
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e50b3008 	str	r3, [fp, #-8]
    1338:	ea000008 	b	1360 <memset+0x108>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e55b200d 	ldrb	r2, [fp, #-13]
    1344:	e5c32000 	strb	r2, [r3]
    1348:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    134c:	e2433001 	sub	r3, r3, #1
    1350:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e2833001 	add	r3, r3, #1
    135c:	e50b3008 	str	r3, [fp, #-8]
    1360:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1364:	e3530000 	cmp	r3, #0
    1368:	1afffff3 	bne	133c <memset+0xe4>
    136c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1370:	e1a00003 	mov	r0, r3
    1374:	e28bd000 	add	sp, fp, #0
    1378:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    137c:	e12fff1e 	bx	lr

00001380 <strchr>:
    1380:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1384:	e28db000 	add	fp, sp, #0
    1388:	e24dd00c 	sub	sp, sp, #12
    138c:	e50b0008 	str	r0, [fp, #-8]
    1390:	e1a03001 	mov	r3, r1
    1394:	e54b3009 	strb	r3, [fp, #-9]
    1398:	ea000009 	b	13c4 <strchr+0x44>
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e5d33000 	ldrb	r3, [r3]
    13a4:	e55b2009 	ldrb	r2, [fp, #-9]
    13a8:	e1520003 	cmp	r2, r3
    13ac:	1a000001 	bne	13b8 <strchr+0x38>
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	ea000007 	b	13d8 <strchr+0x58>
    13b8:	e51b3008 	ldr	r3, [fp, #-8]
    13bc:	e2833001 	add	r3, r3, #1
    13c0:	e50b3008 	str	r3, [fp, #-8]
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e5d33000 	ldrb	r3, [r3]
    13cc:	e3530000 	cmp	r3, #0
    13d0:	1afffff1 	bne	139c <strchr+0x1c>
    13d4:	e3a03000 	mov	r3, #0
    13d8:	e1a00003 	mov	r0, r3
    13dc:	e28bd000 	add	sp, fp, #0
    13e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13e4:	e12fff1e 	bx	lr

000013e8 <gets>:
    13e8:	e92d4800 	push	{fp, lr}
    13ec:	e28db004 	add	fp, sp, #4
    13f0:	e24dd018 	sub	sp, sp, #24
    13f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    13fc:	e3a03000 	mov	r3, #0
    1400:	e50b3008 	str	r3, [fp, #-8]
    1404:	ea000016 	b	1464 <gets+0x7c>
    1408:	e24b300d 	sub	r3, fp, #13
    140c:	e3a02001 	mov	r2, #1
    1410:	e1a01003 	mov	r1, r3
    1414:	e3a00000 	mov	r0, #0
    1418:	eb00009b 	bl	168c <read>
    141c:	e50b000c 	str	r0, [fp, #-12]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e3530000 	cmp	r3, #0
    1428:	da000013 	ble	147c <gets+0x94>
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e2832001 	add	r2, r3, #1
    1434:	e50b2008 	str	r2, [fp, #-8]
    1438:	e1a02003 	mov	r2, r3
    143c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1440:	e0833002 	add	r3, r3, r2
    1444:	e55b200d 	ldrb	r2, [fp, #-13]
    1448:	e5c32000 	strb	r2, [r3]
    144c:	e55b300d 	ldrb	r3, [fp, #-13]
    1450:	e353000a 	cmp	r3, #10
    1454:	0a000009 	beq	1480 <gets+0x98>
    1458:	e55b300d 	ldrb	r3, [fp, #-13]
    145c:	e353000d 	cmp	r3, #13
    1460:	0a000006 	beq	1480 <gets+0x98>
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e2833001 	add	r3, r3, #1
    146c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1470:	e1520003 	cmp	r2, r3
    1474:	caffffe3 	bgt	1408 <gets+0x20>
    1478:	ea000000 	b	1480 <gets+0x98>
    147c:	e1a00000 	nop			@ (mov r0, r0)
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1488:	e0823003 	add	r3, r2, r3
    148c:	e3a02000 	mov	r2, #0
    1490:	e5c32000 	strb	r2, [r3]
    1494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1498:	e1a00003 	mov	r0, r3
    149c:	e24bd004 	sub	sp, fp, #4
    14a0:	e8bd8800 	pop	{fp, pc}

000014a4 <stat>:
    14a4:	e92d4800 	push	{fp, lr}
    14a8:	e28db004 	add	fp, sp, #4
    14ac:	e24dd010 	sub	sp, sp, #16
    14b0:	e50b0010 	str	r0, [fp, #-16]
    14b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    14b8:	e3a01000 	mov	r1, #0
    14bc:	e51b0010 	ldr	r0, [fp, #-16]
    14c0:	eb00009e 	bl	1740 <open>
    14c4:	e50b0008 	str	r0, [fp, #-8]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e3530000 	cmp	r3, #0
    14d0:	aa000001 	bge	14dc <stat+0x38>
    14d4:	e3e03000 	mvn	r3, #0
    14d8:	ea000006 	b	14f8 <stat+0x54>
    14dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    14e0:	e51b0008 	ldr	r0, [fp, #-8]
    14e4:	eb0000b0 	bl	17ac <fstat>
    14e8:	e50b000c 	str	r0, [fp, #-12]
    14ec:	e51b0008 	ldr	r0, [fp, #-8]
    14f0:	eb000077 	bl	16d4 <close>
    14f4:	e51b300c 	ldr	r3, [fp, #-12]
    14f8:	e1a00003 	mov	r0, r3
    14fc:	e24bd004 	sub	sp, fp, #4
    1500:	e8bd8800 	pop	{fp, pc}

00001504 <atoi>:
    1504:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1508:	e28db000 	add	fp, sp, #0
    150c:	e24dd014 	sub	sp, sp, #20
    1510:	e50b0010 	str	r0, [fp, #-16]
    1514:	e3a03000 	mov	r3, #0
    1518:	e50b3008 	str	r3, [fp, #-8]
    151c:	ea00000c 	b	1554 <atoi+0x50>
    1520:	e51b2008 	ldr	r2, [fp, #-8]
    1524:	e1a03002 	mov	r3, r2
    1528:	e1a03103 	lsl	r3, r3, #2
    152c:	e0833002 	add	r3, r3, r2
    1530:	e1a03083 	lsl	r3, r3, #1
    1534:	e1a01003 	mov	r1, r3
    1538:	e51b3010 	ldr	r3, [fp, #-16]
    153c:	e2832001 	add	r2, r3, #1
    1540:	e50b2010 	str	r2, [fp, #-16]
    1544:	e5d33000 	ldrb	r3, [r3]
    1548:	e0813003 	add	r3, r1, r3
    154c:	e2433030 	sub	r3, r3, #48	@ 0x30
    1550:	e50b3008 	str	r3, [fp, #-8]
    1554:	e51b3010 	ldr	r3, [fp, #-16]
    1558:	e5d33000 	ldrb	r3, [r3]
    155c:	e353002f 	cmp	r3, #47	@ 0x2f
    1560:	9a000003 	bls	1574 <atoi+0x70>
    1564:	e51b3010 	ldr	r3, [fp, #-16]
    1568:	e5d33000 	ldrb	r3, [r3]
    156c:	e3530039 	cmp	r3, #57	@ 0x39
    1570:	9affffea 	bls	1520 <atoi+0x1c>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e1a00003 	mov	r0, r3
    157c:	e28bd000 	add	sp, fp, #0
    1580:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1584:	e12fff1e 	bx	lr

00001588 <memmove>:
    1588:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    158c:	e28db000 	add	fp, sp, #0
    1590:	e24dd01c 	sub	sp, sp, #28
    1594:	e50b0010 	str	r0, [fp, #-16]
    1598:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    159c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    15a0:	e51b3010 	ldr	r3, [fp, #-16]
    15a4:	e50b3008 	str	r3, [fp, #-8]
    15a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    15ac:	e50b300c 	str	r3, [fp, #-12]
    15b0:	ea000007 	b	15d4 <memmove+0x4c>
    15b4:	e51b200c 	ldr	r2, [fp, #-12]
    15b8:	e2823001 	add	r3, r2, #1
    15bc:	e50b300c 	str	r3, [fp, #-12]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e2831001 	add	r1, r3, #1
    15c8:	e50b1008 	str	r1, [fp, #-8]
    15cc:	e5d22000 	ldrb	r2, [r2]
    15d0:	e5c32000 	strb	r2, [r3]
    15d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15d8:	e2432001 	sub	r2, r3, #1
    15dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    15e0:	e3530000 	cmp	r3, #0
    15e4:	cafffff2 	bgt	15b4 <memmove+0x2c>
    15e8:	e51b3010 	ldr	r3, [fp, #-16]
    15ec:	e1a00003 	mov	r0, r3
    15f0:	e28bd000 	add	sp, fp, #0
    15f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15f8:	e12fff1e 	bx	lr

000015fc <fork>:
    15fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1600:	e1a04003 	mov	r4, r3
    1604:	e1a03002 	mov	r3, r2
    1608:	e1a02001 	mov	r2, r1
    160c:	e1a01000 	mov	r1, r0
    1610:	e3a00001 	mov	r0, #1
    1614:	ef000000 	svc	0x00000000
    1618:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    161c:	e12fff1e 	bx	lr

00001620 <exit>:
    1620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1624:	e1a04003 	mov	r4, r3
    1628:	e1a03002 	mov	r3, r2
    162c:	e1a02001 	mov	r2, r1
    1630:	e1a01000 	mov	r1, r0
    1634:	e3a00002 	mov	r0, #2
    1638:	ef000000 	svc	0x00000000
    163c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1640:	e12fff1e 	bx	lr

00001644 <wait>:
    1644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1648:	e1a04003 	mov	r4, r3
    164c:	e1a03002 	mov	r3, r2
    1650:	e1a02001 	mov	r2, r1
    1654:	e1a01000 	mov	r1, r0
    1658:	e3a00003 	mov	r0, #3
    165c:	ef000000 	svc	0x00000000
    1660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1664:	e12fff1e 	bx	lr

00001668 <pipe>:
    1668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    166c:	e1a04003 	mov	r4, r3
    1670:	e1a03002 	mov	r3, r2
    1674:	e1a02001 	mov	r2, r1
    1678:	e1a01000 	mov	r1, r0
    167c:	e3a00004 	mov	r0, #4
    1680:	ef000000 	svc	0x00000000
    1684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1688:	e12fff1e 	bx	lr

0000168c <read>:
    168c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1690:	e1a04003 	mov	r4, r3
    1694:	e1a03002 	mov	r3, r2
    1698:	e1a02001 	mov	r2, r1
    169c:	e1a01000 	mov	r1, r0
    16a0:	e3a00005 	mov	r0, #5
    16a4:	ef000000 	svc	0x00000000
    16a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16ac:	e12fff1e 	bx	lr

000016b0 <write>:
    16b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16b4:	e1a04003 	mov	r4, r3
    16b8:	e1a03002 	mov	r3, r2
    16bc:	e1a02001 	mov	r2, r1
    16c0:	e1a01000 	mov	r1, r0
    16c4:	e3a00010 	mov	r0, #16
    16c8:	ef000000 	svc	0x00000000
    16cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16d0:	e12fff1e 	bx	lr

000016d4 <close>:
    16d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16d8:	e1a04003 	mov	r4, r3
    16dc:	e1a03002 	mov	r3, r2
    16e0:	e1a02001 	mov	r2, r1
    16e4:	e1a01000 	mov	r1, r0
    16e8:	e3a00015 	mov	r0, #21
    16ec:	ef000000 	svc	0x00000000
    16f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16f4:	e12fff1e 	bx	lr

000016f8 <kill>:
    16f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16fc:	e1a04003 	mov	r4, r3
    1700:	e1a03002 	mov	r3, r2
    1704:	e1a02001 	mov	r2, r1
    1708:	e1a01000 	mov	r1, r0
    170c:	e3a00006 	mov	r0, #6
    1710:	ef000000 	svc	0x00000000
    1714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1718:	e12fff1e 	bx	lr

0000171c <exec>:
    171c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1720:	e1a04003 	mov	r4, r3
    1724:	e1a03002 	mov	r3, r2
    1728:	e1a02001 	mov	r2, r1
    172c:	e1a01000 	mov	r1, r0
    1730:	e3a00007 	mov	r0, #7
    1734:	ef000000 	svc	0x00000000
    1738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    173c:	e12fff1e 	bx	lr

00001740 <open>:
    1740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1744:	e1a04003 	mov	r4, r3
    1748:	e1a03002 	mov	r3, r2
    174c:	e1a02001 	mov	r2, r1
    1750:	e1a01000 	mov	r1, r0
    1754:	e3a0000f 	mov	r0, #15
    1758:	ef000000 	svc	0x00000000
    175c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1760:	e12fff1e 	bx	lr

00001764 <mknod>:
    1764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1768:	e1a04003 	mov	r4, r3
    176c:	e1a03002 	mov	r3, r2
    1770:	e1a02001 	mov	r2, r1
    1774:	e1a01000 	mov	r1, r0
    1778:	e3a00011 	mov	r0, #17
    177c:	ef000000 	svc	0x00000000
    1780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1784:	e12fff1e 	bx	lr

00001788 <unlink>:
    1788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    178c:	e1a04003 	mov	r4, r3
    1790:	e1a03002 	mov	r3, r2
    1794:	e1a02001 	mov	r2, r1
    1798:	e1a01000 	mov	r1, r0
    179c:	e3a00012 	mov	r0, #18
    17a0:	ef000000 	svc	0x00000000
    17a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17a8:	e12fff1e 	bx	lr

000017ac <fstat>:
    17ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17b0:	e1a04003 	mov	r4, r3
    17b4:	e1a03002 	mov	r3, r2
    17b8:	e1a02001 	mov	r2, r1
    17bc:	e1a01000 	mov	r1, r0
    17c0:	e3a00008 	mov	r0, #8
    17c4:	ef000000 	svc	0x00000000
    17c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17cc:	e12fff1e 	bx	lr

000017d0 <link>:
    17d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17d4:	e1a04003 	mov	r4, r3
    17d8:	e1a03002 	mov	r3, r2
    17dc:	e1a02001 	mov	r2, r1
    17e0:	e1a01000 	mov	r1, r0
    17e4:	e3a00013 	mov	r0, #19
    17e8:	ef000000 	svc	0x00000000
    17ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17f0:	e12fff1e 	bx	lr

000017f4 <mkdir>:
    17f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17f8:	e1a04003 	mov	r4, r3
    17fc:	e1a03002 	mov	r3, r2
    1800:	e1a02001 	mov	r2, r1
    1804:	e1a01000 	mov	r1, r0
    1808:	e3a00014 	mov	r0, #20
    180c:	ef000000 	svc	0x00000000
    1810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1814:	e12fff1e 	bx	lr

00001818 <chdir>:
    1818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    181c:	e1a04003 	mov	r4, r3
    1820:	e1a03002 	mov	r3, r2
    1824:	e1a02001 	mov	r2, r1
    1828:	e1a01000 	mov	r1, r0
    182c:	e3a00009 	mov	r0, #9
    1830:	ef000000 	svc	0x00000000
    1834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1838:	e12fff1e 	bx	lr

0000183c <dup>:
    183c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1840:	e1a04003 	mov	r4, r3
    1844:	e1a03002 	mov	r3, r2
    1848:	e1a02001 	mov	r2, r1
    184c:	e1a01000 	mov	r1, r0
    1850:	e3a0000a 	mov	r0, #10
    1854:	ef000000 	svc	0x00000000
    1858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    185c:	e12fff1e 	bx	lr

00001860 <getpid>:
    1860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1864:	e1a04003 	mov	r4, r3
    1868:	e1a03002 	mov	r3, r2
    186c:	e1a02001 	mov	r2, r1
    1870:	e1a01000 	mov	r1, r0
    1874:	e3a0000b 	mov	r0, #11
    1878:	ef000000 	svc	0x00000000
    187c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1880:	e12fff1e 	bx	lr

00001884 <sbrk>:
    1884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1888:	e1a04003 	mov	r4, r3
    188c:	e1a03002 	mov	r3, r2
    1890:	e1a02001 	mov	r2, r1
    1894:	e1a01000 	mov	r1, r0
    1898:	e3a0000c 	mov	r0, #12
    189c:	ef000000 	svc	0x00000000
    18a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18a4:	e12fff1e 	bx	lr

000018a8 <sleep>:
    18a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    18ac:	e1a04003 	mov	r4, r3
    18b0:	e1a03002 	mov	r3, r2
    18b4:	e1a02001 	mov	r2, r1
    18b8:	e1a01000 	mov	r1, r0
    18bc:	e3a0000d 	mov	r0, #13
    18c0:	ef000000 	svc	0x00000000
    18c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18c8:	e12fff1e 	bx	lr

000018cc <uptime>:
    18cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    18d0:	e1a04003 	mov	r4, r3
    18d4:	e1a03002 	mov	r3, r2
    18d8:	e1a02001 	mov	r2, r1
    18dc:	e1a01000 	mov	r1, r0
    18e0:	e3a0000e 	mov	r0, #14
    18e4:	ef000000 	svc	0x00000000
    18e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    18ec:	e12fff1e 	bx	lr

000018f0 <ps>:
    18f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    18f4:	e1a04003 	mov	r4, r3
    18f8:	e1a03002 	mov	r3, r2
    18fc:	e1a02001 	mov	r2, r1
    1900:	e1a01000 	mov	r1, r0
    1904:	e3a00016 	mov	r0, #22
    1908:	ef000000 	svc	0x00000000
    190c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1910:	e12fff1e 	bx	lr

00001914 <settickets>:
    1914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1918:	e1a04003 	mov	r4, r3
    191c:	e1a03002 	mov	r3, r2
    1920:	e1a02001 	mov	r2, r1
    1924:	e1a01000 	mov	r1, r0
    1928:	e3a00017 	mov	r0, #23
    192c:	ef000000 	svc	0x00000000
    1930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1934:	e12fff1e 	bx	lr

00001938 <srand>:
    1938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    193c:	e1a04003 	mov	r4, r3
    1940:	e1a03002 	mov	r3, r2
    1944:	e1a02001 	mov	r2, r1
    1948:	e1a01000 	mov	r1, r0
    194c:	e3a00018 	mov	r0, #24
    1950:	ef000000 	svc	0x00000000
    1954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1958:	e12fff1e 	bx	lr

0000195c <getpinfo>:
    195c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1960:	e1a04003 	mov	r4, r3
    1964:	e1a03002 	mov	r3, r2
    1968:	e1a02001 	mov	r2, r1
    196c:	e1a01000 	mov	r1, r0
    1970:	e3a00019 	mov	r0, #25
    1974:	ef000000 	svc	0x00000000
    1978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    197c:	e12fff1e 	bx	lr

00001980 <printpt>:
    1980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1984:	e1a04003 	mov	r4, r3
    1988:	e1a03002 	mov	r3, r2
    198c:	e1a02001 	mov	r2, r1
    1990:	e1a01000 	mov	r1, r0
    1994:	e3a0001a 	mov	r0, #26
    1998:	ef000000 	svc	0x00000000
    199c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    19a0:	e12fff1e 	bx	lr

000019a4 <pgpte>:
    19a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    19a8:	e1a04003 	mov	r4, r3
    19ac:	e1a03002 	mov	r3, r2
    19b0:	e1a02001 	mov	r2, r1
    19b4:	e1a01000 	mov	r1, r0
    19b8:	e3a0001b 	mov	r0, #27
    19bc:	ef000000 	svc	0x00000000
    19c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    19c4:	e12fff1e 	bx	lr

000019c8 <ugetpid>:
    19c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    19cc:	e1a04003 	mov	r4, r3
    19d0:	e1a03002 	mov	r3, r2
    19d4:	e1a02001 	mov	r2, r1
    19d8:	e1a01000 	mov	r1, r0
    19dc:	e3a0001c 	mov	r0, #28
    19e0:	ef000000 	svc	0x00000000
    19e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    19e8:	e12fff1e 	bx	lr

000019ec <kpt>:
    19ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    19f0:	e1a04003 	mov	r4, r3
    19f4:	e1a03002 	mov	r3, r2
    19f8:	e1a02001 	mov	r2, r1
    19fc:	e1a01000 	mov	r1, r0
    1a00:	e3a0001d 	mov	r0, #29
    1a04:	ef000000 	svc	0x00000000
    1a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1a0c:	e12fff1e 	bx	lr

00001a10 <putc>:
    1a10:	e92d4800 	push	{fp, lr}
    1a14:	e28db004 	add	fp, sp, #4
    1a18:	e24dd008 	sub	sp, sp, #8
    1a1c:	e50b0008 	str	r0, [fp, #-8]
    1a20:	e1a03001 	mov	r3, r1
    1a24:	e54b3009 	strb	r3, [fp, #-9]
    1a28:	e24b3009 	sub	r3, fp, #9
    1a2c:	e3a02001 	mov	r2, #1
    1a30:	e1a01003 	mov	r1, r3
    1a34:	e51b0008 	ldr	r0, [fp, #-8]
    1a38:	ebffff1c 	bl	16b0 <write>
    1a3c:	e1a00000 	nop			@ (mov r0, r0)
    1a40:	e24bd004 	sub	sp, fp, #4
    1a44:	e8bd8800 	pop	{fp, pc}

00001a48 <printint>:
    1a48:	e92d4800 	push	{fp, lr}
    1a4c:	e28db004 	add	fp, sp, #4
    1a50:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1a54:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1a58:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1a5c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1a60:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1a64:	e3a03000 	mov	r3, #0
    1a68:	e50b300c 	str	r3, [fp, #-12]
    1a6c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1a70:	e3530000 	cmp	r3, #0
    1a74:	0a000008 	beq	1a9c <printint+0x54>
    1a78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1a7c:	e3530000 	cmp	r3, #0
    1a80:	aa000005 	bge	1a9c <printint+0x54>
    1a84:	e3a03001 	mov	r3, #1
    1a88:	e50b300c 	str	r3, [fp, #-12]
    1a8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1a90:	e2633000 	rsb	r3, r3, #0
    1a94:	e50b3010 	str	r3, [fp, #-16]
    1a98:	ea000001 	b	1aa4 <printint+0x5c>
    1a9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1aa0:	e50b3010 	str	r3, [fp, #-16]
    1aa4:	e3a03000 	mov	r3, #0
    1aa8:	e50b3008 	str	r3, [fp, #-8]
    1aac:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1ab0:	e51b3010 	ldr	r3, [fp, #-16]
    1ab4:	e1a01002 	mov	r1, r2
    1ab8:	e1a00003 	mov	r0, r3
    1abc:	eb0001d5 	bl	2218 <__aeabi_uidivmod>
    1ac0:	e1a03001 	mov	r3, r1
    1ac4:	e1a01003 	mov	r1, r3
    1ac8:	e51b3008 	ldr	r3, [fp, #-8]
    1acc:	e2832001 	add	r2, r3, #1
    1ad0:	e50b2008 	str	r2, [fp, #-8]
    1ad4:	e59f20a0 	ldr	r2, [pc, #160]	@ 1b7c <printint+0x134>
    1ad8:	e7d22001 	ldrb	r2, [r2, r1]
    1adc:	e2433004 	sub	r3, r3, #4
    1ae0:	e083300b 	add	r3, r3, fp
    1ae4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1ae8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1aec:	e1a01003 	mov	r1, r3
    1af0:	e51b0010 	ldr	r0, [fp, #-16]
    1af4:	eb00018a 	bl	2124 <__udivsi3>
    1af8:	e1a03000 	mov	r3, r0
    1afc:	e50b3010 	str	r3, [fp, #-16]
    1b00:	e51b3010 	ldr	r3, [fp, #-16]
    1b04:	e3530000 	cmp	r3, #0
    1b08:	1affffe7 	bne	1aac <printint+0x64>
    1b0c:	e51b300c 	ldr	r3, [fp, #-12]
    1b10:	e3530000 	cmp	r3, #0
    1b14:	0a00000e 	beq	1b54 <printint+0x10c>
    1b18:	e51b3008 	ldr	r3, [fp, #-8]
    1b1c:	e2832001 	add	r2, r3, #1
    1b20:	e50b2008 	str	r2, [fp, #-8]
    1b24:	e2433004 	sub	r3, r3, #4
    1b28:	e083300b 	add	r3, r3, fp
    1b2c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1b30:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1b34:	ea000006 	b	1b54 <printint+0x10c>
    1b38:	e24b2020 	sub	r2, fp, #32
    1b3c:	e51b3008 	ldr	r3, [fp, #-8]
    1b40:	e0823003 	add	r3, r2, r3
    1b44:	e5d33000 	ldrb	r3, [r3]
    1b48:	e1a01003 	mov	r1, r3
    1b4c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1b50:	ebffffae 	bl	1a10 <putc>
    1b54:	e51b3008 	ldr	r3, [fp, #-8]
    1b58:	e2433001 	sub	r3, r3, #1
    1b5c:	e50b3008 	str	r3, [fp, #-8]
    1b60:	e51b3008 	ldr	r3, [fp, #-8]
    1b64:	e3530000 	cmp	r3, #0
    1b68:	aafffff2 	bge	1b38 <printint+0xf0>
    1b6c:	e1a00000 	nop			@ (mov r0, r0)
    1b70:	e1a00000 	nop			@ (mov r0, r0)
    1b74:	e24bd004 	sub	sp, fp, #4
    1b78:	e8bd8800 	pop	{fp, pc}
    1b7c:	00002338 	.word	0x00002338

00001b80 <printf>:
    1b80:	e92d000e 	push	{r1, r2, r3}
    1b84:	e92d4800 	push	{fp, lr}
    1b88:	e28db004 	add	fp, sp, #4
    1b8c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1b90:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1b94:	e3a03000 	mov	r3, #0
    1b98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1b9c:	e28b3008 	add	r3, fp, #8
    1ba0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1ba4:	e3a03000 	mov	r3, #0
    1ba8:	e50b3010 	str	r3, [fp, #-16]
    1bac:	ea000074 	b	1d84 <printf+0x204>
    1bb0:	e59b2004 	ldr	r2, [fp, #4]
    1bb4:	e51b3010 	ldr	r3, [fp, #-16]
    1bb8:	e0823003 	add	r3, r2, r3
    1bbc:	e5d33000 	ldrb	r3, [r3]
    1bc0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1bc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1bc8:	e3530000 	cmp	r3, #0
    1bcc:	1a00000b 	bne	1c00 <printf+0x80>
    1bd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bd4:	e3530025 	cmp	r3, #37	@ 0x25
    1bd8:	1a000002 	bne	1be8 <printf+0x68>
    1bdc:	e3a03025 	mov	r3, #37	@ 0x25
    1be0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1be4:	ea000063 	b	1d78 <printf+0x1f8>
    1be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bec:	e6ef3073 	uxtb	r3, r3
    1bf0:	e1a01003 	mov	r1, r3
    1bf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1bf8:	ebffff84 	bl	1a10 <putc>
    1bfc:	ea00005d 	b	1d78 <printf+0x1f8>
    1c00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1c04:	e3530025 	cmp	r3, #37	@ 0x25
    1c08:	1a00005a 	bne	1d78 <printf+0x1f8>
    1c0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1c10:	e3530064 	cmp	r3, #100	@ 0x64
    1c14:	1a00000a 	bne	1c44 <printf+0xc4>
    1c18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c1c:	e5933000 	ldr	r3, [r3]
    1c20:	e1a01003 	mov	r1, r3
    1c24:	e3a03001 	mov	r3, #1
    1c28:	e3a0200a 	mov	r2, #10
    1c2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1c30:	ebffff84 	bl	1a48 <printint>
    1c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c38:	e2833004 	add	r3, r3, #4
    1c3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1c40:	ea00004a 	b	1d70 <printf+0x1f0>
    1c44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1c48:	e3530078 	cmp	r3, #120	@ 0x78
    1c4c:	0a000002 	beq	1c5c <printf+0xdc>
    1c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1c54:	e3530070 	cmp	r3, #112	@ 0x70
    1c58:	1a00000a 	bne	1c88 <printf+0x108>
    1c5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c60:	e5933000 	ldr	r3, [r3]
    1c64:	e1a01003 	mov	r1, r3
    1c68:	e3a03000 	mov	r3, #0
    1c6c:	e3a02010 	mov	r2, #16
    1c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1c74:	ebffff73 	bl	1a48 <printint>
    1c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c7c:	e2833004 	add	r3, r3, #4
    1c80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1c84:	ea000039 	b	1d70 <printf+0x1f0>
    1c88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1c8c:	e3530073 	cmp	r3, #115	@ 0x73
    1c90:	1a000018 	bne	1cf8 <printf+0x178>
    1c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c98:	e5933000 	ldr	r3, [r3]
    1c9c:	e50b300c 	str	r3, [fp, #-12]
    1ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1ca4:	e2833004 	add	r3, r3, #4
    1ca8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1cac:	e51b300c 	ldr	r3, [fp, #-12]
    1cb0:	e3530000 	cmp	r3, #0
    1cb4:	1a00000a 	bne	1ce4 <printf+0x164>
    1cb8:	e59f30f4 	ldr	r3, [pc, #244]	@ 1db4 <printf+0x234>
    1cbc:	e50b300c 	str	r3, [fp, #-12]
    1cc0:	ea000007 	b	1ce4 <printf+0x164>
    1cc4:	e51b300c 	ldr	r3, [fp, #-12]
    1cc8:	e5d33000 	ldrb	r3, [r3]
    1ccc:	e1a01003 	mov	r1, r3
    1cd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1cd4:	ebffff4d 	bl	1a10 <putc>
    1cd8:	e51b300c 	ldr	r3, [fp, #-12]
    1cdc:	e2833001 	add	r3, r3, #1
    1ce0:	e50b300c 	str	r3, [fp, #-12]
    1ce4:	e51b300c 	ldr	r3, [fp, #-12]
    1ce8:	e5d33000 	ldrb	r3, [r3]
    1cec:	e3530000 	cmp	r3, #0
    1cf0:	1afffff3 	bne	1cc4 <printf+0x144>
    1cf4:	ea00001d 	b	1d70 <printf+0x1f0>
    1cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1cfc:	e3530063 	cmp	r3, #99	@ 0x63
    1d00:	1a000009 	bne	1d2c <printf+0x1ac>
    1d04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1d08:	e5933000 	ldr	r3, [r3]
    1d0c:	e6ef3073 	uxtb	r3, r3
    1d10:	e1a01003 	mov	r1, r3
    1d14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1d18:	ebffff3c 	bl	1a10 <putc>
    1d1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1d20:	e2833004 	add	r3, r3, #4
    1d24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1d28:	ea000010 	b	1d70 <printf+0x1f0>
    1d2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1d30:	e3530025 	cmp	r3, #37	@ 0x25
    1d34:	1a000005 	bne	1d50 <printf+0x1d0>
    1d38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1d3c:	e6ef3073 	uxtb	r3, r3
    1d40:	e1a01003 	mov	r1, r3
    1d44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1d48:	ebffff30 	bl	1a10 <putc>
    1d4c:	ea000007 	b	1d70 <printf+0x1f0>
    1d50:	e3a01025 	mov	r1, #37	@ 0x25
    1d54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1d58:	ebffff2c 	bl	1a10 <putc>
    1d5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1d60:	e6ef3073 	uxtb	r3, r3
    1d64:	e1a01003 	mov	r1, r3
    1d68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1d6c:	ebffff27 	bl	1a10 <putc>
    1d70:	e3a03000 	mov	r3, #0
    1d74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1d78:	e51b3010 	ldr	r3, [fp, #-16]
    1d7c:	e2833001 	add	r3, r3, #1
    1d80:	e50b3010 	str	r3, [fp, #-16]
    1d84:	e59b2004 	ldr	r2, [fp, #4]
    1d88:	e51b3010 	ldr	r3, [fp, #-16]
    1d8c:	e0823003 	add	r3, r2, r3
    1d90:	e5d33000 	ldrb	r3, [r3]
    1d94:	e3530000 	cmp	r3, #0
    1d98:	1affff84 	bne	1bb0 <printf+0x30>
    1d9c:	e1a00000 	nop			@ (mov r0, r0)
    1da0:	e1a00000 	nop			@ (mov r0, r0)
    1da4:	e24bd004 	sub	sp, fp, #4
    1da8:	e8bd4800 	pop	{fp, lr}
    1dac:	e28dd00c 	add	sp, sp, #12
    1db0:	e12fff1e 	bx	lr
    1db4:	00002320 	.word	0x00002320

00001db8 <free>:
    1db8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1dbc:	e28db000 	add	fp, sp, #0
    1dc0:	e24dd014 	sub	sp, sp, #20
    1dc4:	e50b0010 	str	r0, [fp, #-16]
    1dc8:	e51b3010 	ldr	r3, [fp, #-16]
    1dcc:	e2433008 	sub	r3, r3, #8
    1dd0:	e50b300c 	str	r3, [fp, #-12]
    1dd4:	e59f3154 	ldr	r3, [pc, #340]	@ 1f30 <free+0x178>
    1dd8:	e5933000 	ldr	r3, [r3]
    1ddc:	e50b3008 	str	r3, [fp, #-8]
    1de0:	ea000010 	b	1e28 <free+0x70>
    1de4:	e51b3008 	ldr	r3, [fp, #-8]
    1de8:	e5933000 	ldr	r3, [r3]
    1dec:	e51b2008 	ldr	r2, [fp, #-8]
    1df0:	e1520003 	cmp	r2, r3
    1df4:	3a000008 	bcc	1e1c <free+0x64>
    1df8:	e51b200c 	ldr	r2, [fp, #-12]
    1dfc:	e51b3008 	ldr	r3, [fp, #-8]
    1e00:	e1520003 	cmp	r2, r3
    1e04:	8a000010 	bhi	1e4c <free+0x94>
    1e08:	e51b3008 	ldr	r3, [fp, #-8]
    1e0c:	e5933000 	ldr	r3, [r3]
    1e10:	e51b200c 	ldr	r2, [fp, #-12]
    1e14:	e1520003 	cmp	r2, r3
    1e18:	3a00000b 	bcc	1e4c <free+0x94>
    1e1c:	e51b3008 	ldr	r3, [fp, #-8]
    1e20:	e5933000 	ldr	r3, [r3]
    1e24:	e50b3008 	str	r3, [fp, #-8]
    1e28:	e51b200c 	ldr	r2, [fp, #-12]
    1e2c:	e51b3008 	ldr	r3, [fp, #-8]
    1e30:	e1520003 	cmp	r2, r3
    1e34:	9affffea 	bls	1de4 <free+0x2c>
    1e38:	e51b3008 	ldr	r3, [fp, #-8]
    1e3c:	e5933000 	ldr	r3, [r3]
    1e40:	e51b200c 	ldr	r2, [fp, #-12]
    1e44:	e1520003 	cmp	r2, r3
    1e48:	2affffe5 	bcs	1de4 <free+0x2c>
    1e4c:	e51b300c 	ldr	r3, [fp, #-12]
    1e50:	e5933004 	ldr	r3, [r3, #4]
    1e54:	e1a03183 	lsl	r3, r3, #3
    1e58:	e51b200c 	ldr	r2, [fp, #-12]
    1e5c:	e0822003 	add	r2, r2, r3
    1e60:	e51b3008 	ldr	r3, [fp, #-8]
    1e64:	e5933000 	ldr	r3, [r3]
    1e68:	e1520003 	cmp	r2, r3
    1e6c:	1a00000d 	bne	1ea8 <free+0xf0>
    1e70:	e51b300c 	ldr	r3, [fp, #-12]
    1e74:	e5932004 	ldr	r2, [r3, #4]
    1e78:	e51b3008 	ldr	r3, [fp, #-8]
    1e7c:	e5933000 	ldr	r3, [r3]
    1e80:	e5933004 	ldr	r3, [r3, #4]
    1e84:	e0822003 	add	r2, r2, r3
    1e88:	e51b300c 	ldr	r3, [fp, #-12]
    1e8c:	e5832004 	str	r2, [r3, #4]
    1e90:	e51b3008 	ldr	r3, [fp, #-8]
    1e94:	e5933000 	ldr	r3, [r3]
    1e98:	e5932000 	ldr	r2, [r3]
    1e9c:	e51b300c 	ldr	r3, [fp, #-12]
    1ea0:	e5832000 	str	r2, [r3]
    1ea4:	ea000003 	b	1eb8 <free+0x100>
    1ea8:	e51b3008 	ldr	r3, [fp, #-8]
    1eac:	e5932000 	ldr	r2, [r3]
    1eb0:	e51b300c 	ldr	r3, [fp, #-12]
    1eb4:	e5832000 	str	r2, [r3]
    1eb8:	e51b3008 	ldr	r3, [fp, #-8]
    1ebc:	e5933004 	ldr	r3, [r3, #4]
    1ec0:	e1a03183 	lsl	r3, r3, #3
    1ec4:	e51b2008 	ldr	r2, [fp, #-8]
    1ec8:	e0823003 	add	r3, r2, r3
    1ecc:	e51b200c 	ldr	r2, [fp, #-12]
    1ed0:	e1520003 	cmp	r2, r3
    1ed4:	1a00000b 	bne	1f08 <free+0x150>
    1ed8:	e51b3008 	ldr	r3, [fp, #-8]
    1edc:	e5932004 	ldr	r2, [r3, #4]
    1ee0:	e51b300c 	ldr	r3, [fp, #-12]
    1ee4:	e5933004 	ldr	r3, [r3, #4]
    1ee8:	e0822003 	add	r2, r2, r3
    1eec:	e51b3008 	ldr	r3, [fp, #-8]
    1ef0:	e5832004 	str	r2, [r3, #4]
    1ef4:	e51b300c 	ldr	r3, [fp, #-12]
    1ef8:	e5932000 	ldr	r2, [r3]
    1efc:	e51b3008 	ldr	r3, [fp, #-8]
    1f00:	e5832000 	str	r2, [r3]
    1f04:	ea000002 	b	1f14 <free+0x15c>
    1f08:	e51b3008 	ldr	r3, [fp, #-8]
    1f0c:	e51b200c 	ldr	r2, [fp, #-12]
    1f10:	e5832000 	str	r2, [r3]
    1f14:	e59f2014 	ldr	r2, [pc, #20]	@ 1f30 <free+0x178>
    1f18:	e51b3008 	ldr	r3, [fp, #-8]
    1f1c:	e5823000 	str	r3, [r2]
    1f20:	e1a00000 	nop			@ (mov r0, r0)
    1f24:	e28bd000 	add	sp, fp, #0
    1f28:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1f2c:	e12fff1e 	bx	lr
    1f30:	000023b8 	.word	0x000023b8

00001f34 <morecore>:
    1f34:	e92d4800 	push	{fp, lr}
    1f38:	e28db004 	add	fp, sp, #4
    1f3c:	e24dd010 	sub	sp, sp, #16
    1f40:	e50b0010 	str	r0, [fp, #-16]
    1f44:	e51b3010 	ldr	r3, [fp, #-16]
    1f48:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1f4c:	2a000001 	bcs	1f58 <morecore+0x24>
    1f50:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1f54:	e50b3010 	str	r3, [fp, #-16]
    1f58:	e51b3010 	ldr	r3, [fp, #-16]
    1f5c:	e1a03183 	lsl	r3, r3, #3
    1f60:	e1a00003 	mov	r0, r3
    1f64:	ebfffe46 	bl	1884 <sbrk>
    1f68:	e50b0008 	str	r0, [fp, #-8]
    1f6c:	e51b3008 	ldr	r3, [fp, #-8]
    1f70:	e3730001 	cmn	r3, #1
    1f74:	1a000001 	bne	1f80 <morecore+0x4c>
    1f78:	e3a03000 	mov	r3, #0
    1f7c:	ea00000a 	b	1fac <morecore+0x78>
    1f80:	e51b3008 	ldr	r3, [fp, #-8]
    1f84:	e50b300c 	str	r3, [fp, #-12]
    1f88:	e51b300c 	ldr	r3, [fp, #-12]
    1f8c:	e51b2010 	ldr	r2, [fp, #-16]
    1f90:	e5832004 	str	r2, [r3, #4]
    1f94:	e51b300c 	ldr	r3, [fp, #-12]
    1f98:	e2833008 	add	r3, r3, #8
    1f9c:	e1a00003 	mov	r0, r3
    1fa0:	ebffff84 	bl	1db8 <free>
    1fa4:	e59f300c 	ldr	r3, [pc, #12]	@ 1fb8 <morecore+0x84>
    1fa8:	e5933000 	ldr	r3, [r3]
    1fac:	e1a00003 	mov	r0, r3
    1fb0:	e24bd004 	sub	sp, fp, #4
    1fb4:	e8bd8800 	pop	{fp, pc}
    1fb8:	000023b8 	.word	0x000023b8

00001fbc <malloc>:
    1fbc:	e92d4800 	push	{fp, lr}
    1fc0:	e28db004 	add	fp, sp, #4
    1fc4:	e24dd018 	sub	sp, sp, #24
    1fc8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1fd0:	e2833007 	add	r3, r3, #7
    1fd4:	e1a031a3 	lsr	r3, r3, #3
    1fd8:	e2833001 	add	r3, r3, #1
    1fdc:	e50b3010 	str	r3, [fp, #-16]
    1fe0:	e59f3134 	ldr	r3, [pc, #308]	@ 211c <malloc+0x160>
    1fe4:	e5933000 	ldr	r3, [r3]
    1fe8:	e50b300c 	str	r3, [fp, #-12]
    1fec:	e51b300c 	ldr	r3, [fp, #-12]
    1ff0:	e3530000 	cmp	r3, #0
    1ff4:	1a00000b 	bne	2028 <malloc+0x6c>
    1ff8:	e59f3120 	ldr	r3, [pc, #288]	@ 2120 <malloc+0x164>
    1ffc:	e50b300c 	str	r3, [fp, #-12]
    2000:	e59f2114 	ldr	r2, [pc, #276]	@ 211c <malloc+0x160>
    2004:	e51b300c 	ldr	r3, [fp, #-12]
    2008:	e5823000 	str	r3, [r2]
    200c:	e59f3108 	ldr	r3, [pc, #264]	@ 211c <malloc+0x160>
    2010:	e5933000 	ldr	r3, [r3]
    2014:	e59f2104 	ldr	r2, [pc, #260]	@ 2120 <malloc+0x164>
    2018:	e5823000 	str	r3, [r2]
    201c:	e59f30fc 	ldr	r3, [pc, #252]	@ 2120 <malloc+0x164>
    2020:	e3a02000 	mov	r2, #0
    2024:	e5832004 	str	r2, [r3, #4]
    2028:	e51b300c 	ldr	r3, [fp, #-12]
    202c:	e5933000 	ldr	r3, [r3]
    2030:	e50b3008 	str	r3, [fp, #-8]
    2034:	e51b3008 	ldr	r3, [fp, #-8]
    2038:	e5933004 	ldr	r3, [r3, #4]
    203c:	e51b2010 	ldr	r2, [fp, #-16]
    2040:	e1520003 	cmp	r2, r3
    2044:	8a00001e 	bhi	20c4 <malloc+0x108>
    2048:	e51b3008 	ldr	r3, [fp, #-8]
    204c:	e5933004 	ldr	r3, [r3, #4]
    2050:	e51b2010 	ldr	r2, [fp, #-16]
    2054:	e1520003 	cmp	r2, r3
    2058:	1a000004 	bne	2070 <malloc+0xb4>
    205c:	e51b3008 	ldr	r3, [fp, #-8]
    2060:	e5932000 	ldr	r2, [r3]
    2064:	e51b300c 	ldr	r3, [fp, #-12]
    2068:	e5832000 	str	r2, [r3]
    206c:	ea00000e 	b	20ac <malloc+0xf0>
    2070:	e51b3008 	ldr	r3, [fp, #-8]
    2074:	e5932004 	ldr	r2, [r3, #4]
    2078:	e51b3010 	ldr	r3, [fp, #-16]
    207c:	e0422003 	sub	r2, r2, r3
    2080:	e51b3008 	ldr	r3, [fp, #-8]
    2084:	e5832004 	str	r2, [r3, #4]
    2088:	e51b3008 	ldr	r3, [fp, #-8]
    208c:	e5933004 	ldr	r3, [r3, #4]
    2090:	e1a03183 	lsl	r3, r3, #3
    2094:	e51b2008 	ldr	r2, [fp, #-8]
    2098:	e0823003 	add	r3, r2, r3
    209c:	e50b3008 	str	r3, [fp, #-8]
    20a0:	e51b3008 	ldr	r3, [fp, #-8]
    20a4:	e51b2010 	ldr	r2, [fp, #-16]
    20a8:	e5832004 	str	r2, [r3, #4]
    20ac:	e59f2068 	ldr	r2, [pc, #104]	@ 211c <malloc+0x160>
    20b0:	e51b300c 	ldr	r3, [fp, #-12]
    20b4:	e5823000 	str	r3, [r2]
    20b8:	e51b3008 	ldr	r3, [fp, #-8]
    20bc:	e2833008 	add	r3, r3, #8
    20c0:	ea000012 	b	2110 <malloc+0x154>
    20c4:	e59f3050 	ldr	r3, [pc, #80]	@ 211c <malloc+0x160>
    20c8:	e5933000 	ldr	r3, [r3]
    20cc:	e51b2008 	ldr	r2, [fp, #-8]
    20d0:	e1520003 	cmp	r2, r3
    20d4:	1a000007 	bne	20f8 <malloc+0x13c>
    20d8:	e51b0010 	ldr	r0, [fp, #-16]
    20dc:	ebffff94 	bl	1f34 <morecore>
    20e0:	e50b0008 	str	r0, [fp, #-8]
    20e4:	e51b3008 	ldr	r3, [fp, #-8]
    20e8:	e3530000 	cmp	r3, #0
    20ec:	1a000001 	bne	20f8 <malloc+0x13c>
    20f0:	e3a03000 	mov	r3, #0
    20f4:	ea000005 	b	2110 <malloc+0x154>
    20f8:	e51b3008 	ldr	r3, [fp, #-8]
    20fc:	e50b300c 	str	r3, [fp, #-12]
    2100:	e51b3008 	ldr	r3, [fp, #-8]
    2104:	e5933000 	ldr	r3, [r3]
    2108:	e50b3008 	str	r3, [fp, #-8]
    210c:	eaffffc8 	b	2034 <malloc+0x78>
    2110:	e1a00003 	mov	r0, r3
    2114:	e24bd004 	sub	sp, fp, #4
    2118:	e8bd8800 	pop	{fp, pc}
    211c:	000023b8 	.word	0x000023b8
    2120:	000023b0 	.word	0x000023b0

00002124 <__udivsi3>:
    2124:	e2512001 	subs	r2, r1, #1
    2128:	012fff1e 	bxeq	lr
    212c:	3a000036 	bcc	220c <__udivsi3+0xe8>
    2130:	e1500001 	cmp	r0, r1
    2134:	9a000022 	bls	21c4 <__udivsi3+0xa0>
    2138:	e1110002 	tst	r1, r2
    213c:	0a000023 	beq	21d0 <__udivsi3+0xac>
    2140:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    2144:	01a01181 	lsleq	r1, r1, #3
    2148:	03a03008 	moveq	r3, #8
    214c:	13a03001 	movne	r3, #1
    2150:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    2154:	31510000 	cmpcc	r1, r0
    2158:	31a01201 	lslcc	r1, r1, #4
    215c:	31a03203 	lslcc	r3, r3, #4
    2160:	3afffffa 	bcc	2150 <__udivsi3+0x2c>
    2164:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    2168:	31510000 	cmpcc	r1, r0
    216c:	31a01081 	lslcc	r1, r1, #1
    2170:	31a03083 	lslcc	r3, r3, #1
    2174:	3afffffa 	bcc	2164 <__udivsi3+0x40>
    2178:	e3a02000 	mov	r2, #0
    217c:	e1500001 	cmp	r0, r1
    2180:	20400001 	subcs	r0, r0, r1
    2184:	21822003 	orrcs	r2, r2, r3
    2188:	e15000a1 	cmp	r0, r1, lsr #1
    218c:	204000a1 	subcs	r0, r0, r1, lsr #1
    2190:	218220a3 	orrcs	r2, r2, r3, lsr #1
    2194:	e1500121 	cmp	r0, r1, lsr #2
    2198:	20400121 	subcs	r0, r0, r1, lsr #2
    219c:	21822123 	orrcs	r2, r2, r3, lsr #2
    21a0:	e15001a1 	cmp	r0, r1, lsr #3
    21a4:	204001a1 	subcs	r0, r0, r1, lsr #3
    21a8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    21ac:	e3500000 	cmp	r0, #0
    21b0:	11b03223 	lsrsne	r3, r3, #4
    21b4:	11a01221 	lsrne	r1, r1, #4
    21b8:	1affffef 	bne	217c <__udivsi3+0x58>
    21bc:	e1a00002 	mov	r0, r2
    21c0:	e12fff1e 	bx	lr
    21c4:	03a00001 	moveq	r0, #1
    21c8:	13a00000 	movne	r0, #0
    21cc:	e12fff1e 	bx	lr
    21d0:	e3510801 	cmp	r1, #65536	@ 0x10000
    21d4:	21a01821 	lsrcs	r1, r1, #16
    21d8:	23a02010 	movcs	r2, #16
    21dc:	33a02000 	movcc	r2, #0
    21e0:	e3510c01 	cmp	r1, #256	@ 0x100
    21e4:	21a01421 	lsrcs	r1, r1, #8
    21e8:	22822008 	addcs	r2, r2, #8
    21ec:	e3510010 	cmp	r1, #16
    21f0:	21a01221 	lsrcs	r1, r1, #4
    21f4:	22822004 	addcs	r2, r2, #4
    21f8:	e3510004 	cmp	r1, #4
    21fc:	82822003 	addhi	r2, r2, #3
    2200:	908220a1 	addls	r2, r2, r1, lsr #1
    2204:	e1a00230 	lsr	r0, r0, r2
    2208:	e12fff1e 	bx	lr
    220c:	e3500000 	cmp	r0, #0
    2210:	13e00000 	mvnne	r0, #0
    2214:	ea000007 	b	2238 <__aeabi_idiv0>

00002218 <__aeabi_uidivmod>:
    2218:	e3510000 	cmp	r1, #0
    221c:	0afffffa 	beq	220c <__udivsi3+0xe8>
    2220:	e92d4003 	push	{r0, r1, lr}
    2224:	ebffffbe 	bl	2124 <__udivsi3>
    2228:	e8bd4006 	pop	{r1, r2, lr}
    222c:	e0030092 	mul	r3, r2, r0
    2230:	e0411003 	sub	r1, r1, r3
    2234:	e12fff1e 	bx	lr

00002238 <__aeabi_idiv0>:
    2238:	e12fff1e 	bx	lr
