
_ppttest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	eb00003b 	bl	108 <print_pt>
      18:	eb000066 	bl	1b8 <ugetpid_test>
      1c:	eb000098 	bl	284 <print_kpt>
      20:	eb0000f6 	bl	400 <superpg_test>
      24:	e59f1008 	ldr	r1, [pc, #8]	@ 34 <main+0x34>
      28:	e3a00001 	mov	r0, #1
      2c:	eb0003f1 	bl	ff8 <printf>
      30:	eb000298 	bl	a98 <exit>
      34:	000016b8 	.word	0x000016b8

00000038 <err>:
      38:	e92d4810 	push	{r4, fp, lr}
      3c:	e28db008 	add	fp, sp, #8
      40:	e24dd014 	sub	sp, sp, #20
      44:	e50b0010 	str	r0, [fp, #-16]
      48:	e59f3024 	ldr	r3, [pc, #36]	@ 74 <err+0x3c>
      4c:	e5934000 	ldr	r4, [r3]
      50:	eb000320 	bl	cd8 <getpid>
      54:	e1a03000 	mov	r3, r0
      58:	e58d3000 	str	r3, [sp]
      5c:	e51b3010 	ldr	r3, [fp, #-16]
      60:	e1a02004 	mov	r2, r4
      64:	e59f100c 	ldr	r1, [pc, #12]	@ 78 <err+0x40>
      68:	e3a00001 	mov	r0, #1
      6c:	eb0003e1 	bl	ff8 <printf>
      70:	eb000288 	bl	a98 <exit>
      74:	00001860 	.word	0x00001860
      78:	000016d8 	.word	0x000016d8

0000007c <print_pte>:
      7c:	e92d4800 	push	{fp, lr}
      80:	e28db004 	add	fp, sp, #4
      84:	e24dd018 	sub	sp, sp, #24
      88:	e50b0010 	str	r0, [fp, #-16]
      8c:	e51b3010 	ldr	r3, [fp, #-16]
      90:	e1a00003 	mov	r0, r3
      94:	eb000360 	bl	e1c <pgpte>
      98:	e1a03000 	mov	r3, r0
      9c:	e50b3008 	str	r3, [fp, #-8]
      a0:	e51b3008 	ldr	r3, [fp, #-8]
      a4:	e3530000 	cmp	r3, #0
      a8:	1a000004 	bne	c0 <print_pte+0x44>
      ac:	e51b2010 	ldr	r2, [fp, #-16]
      b0:	e59f1048 	ldr	r1, [pc, #72]	@ 100 <print_pte+0x84>
      b4:	e3a00001 	mov	r0, #1
      b8:	eb0003ce 	bl	ff8 <printf>
      bc:	ea00000c 	b	f4 <print_pte+0x78>
      c0:	e51b3008 	ldr	r3, [fp, #-8]
      c4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
      c8:	e3c3300f 	bic	r3, r3, #15
      cc:	e51b2008 	ldr	r2, [fp, #-8]
      d0:	e1a02222 	lsr	r2, r2, #4
      d4:	e2022003 	and	r2, r2, #3
      d8:	e58d2004 	str	r2, [sp, #4]
      dc:	e58d3000 	str	r3, [sp]
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e51b2010 	ldr	r2, [fp, #-16]
      e8:	e59f1014 	ldr	r1, [pc, #20]	@ 104 <print_pte+0x88>
      ec:	e3a00001 	mov	r0, #1
      f0:	eb0003c0 	bl	ff8 <printf>
      f4:	e1a00000 	nop			@ (mov r0, r0)
      f8:	e24bd004 	sub	sp, fp, #4
      fc:	e8bd8800 	pop	{fp, pc}
     100:	000016f8 	.word	0x000016f8
     104:	0000170c 	.word	0x0000170c

00000108 <print_pt>:
     108:	e92d4800 	push	{fp, lr}
     10c:	e28db004 	add	fp, sp, #4
     110:	e24dd010 	sub	sp, sp, #16
     114:	e59f1094 	ldr	r1, [pc, #148]	@ 1b0 <print_pt+0xa8>
     118:	e3a00001 	mov	r0, #1
     11c:	eb0003b5 	bl	ff8 <printf>
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000006 	b	148 <print_pt+0x40>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e1a03603 	lsl	r3, r3, #12
     134:	e1a00003 	mov	r0, r3
     138:	ebffffcf 	bl	7c <print_pte>
     13c:	e51b3008 	ldr	r3, [fp, #-8]
     140:	e2833001 	add	r3, r3, #1
     144:	e50b3008 	str	r3, [fp, #-8]
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e3530009 	cmp	r3, #9
     150:	9afffff5 	bls	12c <print_pt+0x24>
     154:	e3a03801 	mov	r3, #65536	@ 0x10000
     158:	e50b3010 	str	r3, [fp, #-16]
     15c:	e51b3010 	ldr	r3, [fp, #-16]
     160:	e243300a 	sub	r3, r3, #10
     164:	e50b300c 	str	r3, [fp, #-12]
     168:	ea000006 	b	188 <print_pt+0x80>
     16c:	e51b300c 	ldr	r3, [fp, #-12]
     170:	e1a03603 	lsl	r3, r3, #12
     174:	e1a00003 	mov	r0, r3
     178:	ebffffbf 	bl	7c <print_pte>
     17c:	e51b300c 	ldr	r3, [fp, #-12]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b300c 	str	r3, [fp, #-12]
     188:	e51b200c 	ldr	r2, [fp, #-12]
     18c:	e51b3010 	ldr	r3, [fp, #-16]
     190:	e1520003 	cmp	r2, r3
     194:	3afffff4 	bcc	16c <print_pt+0x64>
     198:	e59f1014 	ldr	r1, [pc, #20]	@ 1b4 <print_pt+0xac>
     19c:	e3a00001 	mov	r0, #1
     1a0:	eb000394 	bl	ff8 <printf>
     1a4:	e1a00000 	nop			@ (mov r0, r0)
     1a8:	e24bd004 	sub	sp, fp, #4
     1ac:	e8bd8800 	pop	{fp, pc}
     1b0:	00001730 	.word	0x00001730
     1b4:	00001744 	.word	0x00001744

000001b8 <ugetpid_test>:
     1b8:	e92d4810 	push	{r4, fp, lr}
     1bc:	e28db008 	add	fp, sp, #8
     1c0:	e24dd00c 	sub	sp, sp, #12
     1c4:	e59f10a0 	ldr	r1, [pc, #160]	@ 26c <ugetpid_test+0xb4>
     1c8:	e3a00001 	mov	r0, #1
     1cc:	eb000389 	bl	ff8 <printf>
     1d0:	e59f3098 	ldr	r3, [pc, #152]	@ 270 <ugetpid_test+0xb8>
     1d4:	e59f2098 	ldr	r2, [pc, #152]	@ 274 <ugetpid_test+0xbc>
     1d8:	e5832000 	str	r2, [r3]
     1dc:	e3a03000 	mov	r3, #0
     1e0:	e50b3010 	str	r3, [fp, #-16]
     1e4:	ea000017 	b	248 <ugetpid_test+0x90>
     1e8:	eb000221 	bl	a74 <fork>
     1ec:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     1f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     1f4:	e3530000 	cmp	r3, #0
     1f8:	da000001 	ble	204 <ugetpid_test+0x4c>
     1fc:	eb00022e 	bl	abc <wait>
     200:	ea00000d 	b	23c <ugetpid_test+0x84>
     204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     208:	e3530000 	cmp	r3, #0
     20c:	1a000008 	bne	234 <ugetpid_test+0x7c>
     210:	eb0002b0 	bl	cd8 <getpid>
     214:	e1a04000 	mov	r4, r0
     218:	eb000308 	bl	e40 <ugetpid>
     21c:	e1a03000 	mov	r3, r0
     220:	e1540003 	cmp	r4, r3
     224:	0a000001 	beq	230 <ugetpid_test+0x78>
     228:	e59f0048 	ldr	r0, [pc, #72]	@ 278 <ugetpid_test+0xc0>
     22c:	ebffff81 	bl	38 <err>
     230:	eb000218 	bl	a98 <exit>
     234:	e59f0040 	ldr	r0, [pc, #64]	@ 27c <ugetpid_test+0xc4>
     238:	ebffff7e 	bl	38 <err>
     23c:	e51b3010 	ldr	r3, [fp, #-16]
     240:	e2833001 	add	r3, r3, #1
     244:	e50b3010 	str	r3, [fp, #-16]
     248:	e51b3010 	ldr	r3, [fp, #-16]
     24c:	e353003f 	cmp	r3, #63	@ 0x3f
     250:	daffffe4 	ble	1e8 <ugetpid_test+0x30>
     254:	e59f1024 	ldr	r1, [pc, #36]	@ 280 <ugetpid_test+0xc8>
     258:	e3a00001 	mov	r0, #1
     25c:	eb000365 	bl	ff8 <printf>
     260:	e1a00000 	nop			@ (mov r0, r0)
     264:	e24bd008 	sub	sp, fp, #8
     268:	e8bd8810 	pop	{r4, fp, pc}
     26c:	00001754 	.word	0x00001754
     270:	00001860 	.word	0x00001860
     274:	0000176c 	.word	0x0000176c
     278:	0000177c 	.word	0x0000177c
     27c:	0000178c 	.word	0x0000178c
     280:	00001798 	.word	0x00001798

00000284 <print_kpt>:
     284:	e92d4800 	push	{fp, lr}
     288:	e28db004 	add	fp, sp, #4
     28c:	e59f101c 	ldr	r1, [pc, #28]	@ 2b0 <print_kpt+0x2c>
     290:	e3a00001 	mov	r0, #1
     294:	eb000357 	bl	ff8 <printf>
     298:	eb0002f1 	bl	e64 <kpt>
     29c:	e59f1010 	ldr	r1, [pc, #16]	@ 2b4 <print_kpt+0x30>
     2a0:	e3a00001 	mov	r0, #1
     2a4:	eb000353 	bl	ff8 <printf>
     2a8:	e1a00000 	nop			@ (mov r0, r0)
     2ac:	e8bd8800 	pop	{fp, pc}
     2b0:	000017ac 	.word	0x000017ac
     2b4:	000017c0 	.word	0x000017c0

000002b8 <supercheck>:
     2b8:	e92d4800 	push	{fp, lr}
     2bc:	e28db004 	add	fp, sp, #4
     2c0:	e24dd018 	sub	sp, sp, #24
     2c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	ea00001c 	b	348 <supercheck+0x90>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e1a00003 	mov	r0, r3
     2dc:	eb0002ce 	bl	e1c <pgpte>
     2e0:	e1a03000 	mov	r3, r0
     2e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     2ec:	e3530000 	cmp	r3, #0
     2f0:	1a000001 	bne	2fc <supercheck+0x44>
     2f4:	e59f00f4 	ldr	r0, [pc, #244]	@ 3f0 <supercheck+0x138>
     2f8:	ebffff4e 	bl	38 <err>
     2fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     300:	e2033003 	and	r3, r3, #3
     304:	e3530000 	cmp	r3, #0
     308:	1a000001 	bne	314 <supercheck+0x5c>
     30c:	e59f00e0 	ldr	r0, [pc, #224]	@ 3f4 <supercheck+0x13c>
     310:	ebffff48 	bl	38 <err>
     314:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     318:	e2033030 	and	r3, r3, #48	@ 0x30
     31c:	e3530030 	cmp	r3, #48	@ 0x30
     320:	0a000005 	beq	33c <supercheck+0x84>
     324:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     328:	e2033030 	and	r3, r3, #48	@ 0x30
     32c:	e3530010 	cmp	r3, #16
     330:	0a000001 	beq	33c <supercheck+0x84>
     334:	e59f00bc 	ldr	r0, [pc, #188]	@ 3f8 <supercheck+0x140>
     338:	ebffff3e 	bl	38 <err>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833a01 	add	r3, r3, #4096	@ 0x1000
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     34c:	e2833602 	add	r3, r3, #2097152	@ 0x200000
     350:	e51b2008 	ldr	r2, [fp, #-8]
     354:	e1520003 	cmp	r2, r3
     358:	3affffdd 	bcc	2d4 <supercheck+0x1c>
     35c:	e3a03000 	mov	r3, #0
     360:	e50b300c 	str	r3, [fp, #-12]
     364:	ea000008 	b	38c <supercheck+0xd4>
     368:	e51b200c 	ldr	r2, [fp, #-12]
     36c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     370:	e0823003 	add	r3, r2, r3
     374:	e1a02003 	mov	r2, r3
     378:	e51b300c 	ldr	r3, [fp, #-12]
     37c:	e5823000 	str	r3, [r2]
     380:	e51b300c 	ldr	r3, [fp, #-12]
     384:	e2833a01 	add	r3, r3, #4096	@ 0x1000
     388:	e50b300c 	str	r3, [fp, #-12]
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e3530602 	cmp	r3, #2097152	@ 0x200000
     394:	bafffff3 	blt	368 <supercheck+0xb0>
     398:	e3a03000 	mov	r3, #0
     39c:	e50b3010 	str	r3, [fp, #-16]
     3a0:	ea00000b 	b	3d4 <supercheck+0x11c>
     3a4:	e51b2010 	ldr	r2, [fp, #-16]
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e0823003 	add	r3, r2, r3
     3b0:	e5933000 	ldr	r3, [r3]
     3b4:	e51b2010 	ldr	r2, [fp, #-16]
     3b8:	e1520003 	cmp	r2, r3
     3bc:	0a000001 	beq	3c8 <supercheck+0x110>
     3c0:	e59f0034 	ldr	r0, [pc, #52]	@ 3fc <supercheck+0x144>
     3c4:	ebffff1b 	bl	38 <err>
     3c8:	e51b3010 	ldr	r3, [fp, #-16]
     3cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
     3d0:	e50b3010 	str	r3, [fp, #-16]
     3d4:	e51b3010 	ldr	r3, [fp, #-16]
     3d8:	e3530602 	cmp	r3, #2097152	@ 0x200000
     3dc:	bafffff0 	blt	3a4 <supercheck+0xec>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e1a00000 	nop			@ (mov r0, r0)
     3e8:	e24bd004 	sub	sp, fp, #4
     3ec:	e8bd8800 	pop	{fp, pc}
     3f0:	000017d0 	.word	0x000017d0
     3f4:	000017d8 	.word	0x000017d8
     3f8:	000017e8 	.word	0x000017e8
     3fc:	000017fc 	.word	0x000017fc

00000400 <superpg_test>:
     400:	e92d4800 	push	{fp, lr}
     404:	e28db004 	add	fp, sp, #4
     408:	e24dd010 	sub	sp, sp, #16
     40c:	e59f10b0 	ldr	r1, [pc, #176]	@ 4c4 <superpg_test+0xc4>
     410:	e3a00001 	mov	r0, #1
     414:	eb0002f7 	bl	ff8 <printf>
     418:	e59f30a8 	ldr	r3, [pc, #168]	@ 4c8 <superpg_test+0xc8>
     41c:	e59f20a8 	ldr	r2, [pc, #168]	@ 4cc <superpg_test+0xcc>
     420:	e5832000 	str	r2, [r3]
     424:	e3a00502 	mov	r0, #8388608	@ 0x800000
     428:	eb000233 	bl	cfc <sbrk>
     42c:	e50b0008 	str	r0, [fp, #-8]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e3530000 	cmp	r3, #0
     438:	0a000002 	beq	448 <superpg_test+0x48>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e3730001 	cmn	r3, #1
     444:	1a000001 	bne	450 <superpg_test+0x50>
     448:	e59f0080 	ldr	r0, [pc, #128]	@ 4d0 <superpg_test+0xd0>
     44c:	ebfffef9 	bl	38 <err>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
     458:	e243363e 	sub	r3, r3, #65011712	@ 0x3e00000
     45c:	e1a03aa3 	lsr	r3, r3, #21
     460:	e1a03a83 	lsl	r3, r3, #21
     464:	e50b300c 	str	r3, [fp, #-12]
     468:	e51b000c 	ldr	r0, [fp, #-12]
     46c:	ebffff91 	bl	2b8 <supercheck>
     470:	eb00017f 	bl	a74 <fork>
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e51b3010 	ldr	r3, [fp, #-16]
     47c:	e3530000 	cmp	r3, #0
     480:	aa000002 	bge	490 <superpg_test+0x90>
     484:	e59f0048 	ldr	r0, [pc, #72]	@ 4d4 <superpg_test+0xd4>
     488:	ebfffeea 	bl	38 <err>
     48c:	ea000006 	b	4ac <superpg_test+0xac>
     490:	e51b3010 	ldr	r3, [fp, #-16]
     494:	e3530000 	cmp	r3, #0
     498:	1a000002 	bne	4a8 <superpg_test+0xa8>
     49c:	e51b000c 	ldr	r0, [fp, #-12]
     4a0:	ebffff84 	bl	2b8 <supercheck>
     4a4:	eb00017b 	bl	a98 <exit>
     4a8:	eb000183 	bl	abc <wait>
     4ac:	e59f1024 	ldr	r1, [pc, #36]	@ 4d8 <superpg_test+0xd8>
     4b0:	e3a00001 	mov	r0, #1
     4b4:	eb0002cf 	bl	ff8 <printf>
     4b8:	e1a00000 	nop			@ (mov r0, r0)
     4bc:	e24bd004 	sub	sp, fp, #4
     4c0:	e8bd8800 	pop	{fp, pc}
     4c4:	00001808 	.word	0x00001808
     4c8:	00001860 	.word	0x00001860
     4cc:	00001820 	.word	0x00001820
     4d0:	00001830 	.word	0x00001830
     4d4:	0000183c 	.word	0x0000183c
     4d8:	00001844 	.word	0x00001844

000004dc <strcpy>:
     4dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4e0:	e28db000 	add	fp, sp, #0
     4e4:	e24dd014 	sub	sp, sp, #20
     4e8:	e50b0010 	str	r0, [fp, #-16]
     4ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e1a00000 	nop			@ (mov r0, r0)
     4fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     500:	e2823001 	add	r3, r2, #1
     504:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     508:	e51b3010 	ldr	r3, [fp, #-16]
     50c:	e2831001 	add	r1, r3, #1
     510:	e50b1010 	str	r1, [fp, #-16]
     514:	e5d22000 	ldrb	r2, [r2]
     518:	e5c32000 	strb	r2, [r3]
     51c:	e5d33000 	ldrb	r3, [r3]
     520:	e3530000 	cmp	r3, #0
     524:	1afffff4 	bne	4fc <strcpy+0x20>
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e1a00003 	mov	r0, r3
     530:	e28bd000 	add	sp, fp, #0
     534:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     538:	e12fff1e 	bx	lr

0000053c <strncmp>:
     53c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     540:	e28db000 	add	fp, sp, #0
     544:	e24dd014 	sub	sp, sp, #20
     548:	e50b0008 	str	r0, [fp, #-8]
     54c:	e50b100c 	str	r1, [fp, #-12]
     550:	e50b2010 	str	r2, [fp, #-16]
     554:	ea000008 	b	57c <strncmp+0x40>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b300c 	ldr	r3, [fp, #-12]
     568:	e2833001 	add	r3, r3, #1
     56c:	e50b300c 	str	r3, [fp, #-12]
     570:	e51b3010 	ldr	r3, [fp, #-16]
     574:	e2433001 	sub	r3, r3, #1
     578:	e50b3010 	str	r3, [fp, #-16]
     57c:	e51b3010 	ldr	r3, [fp, #-16]
     580:	e3530000 	cmp	r3, #0
     584:	da00000d 	ble	5c0 <strncmp+0x84>
     588:	e51b3008 	ldr	r3, [fp, #-8]
     58c:	e5d33000 	ldrb	r3, [r3]
     590:	e3530000 	cmp	r3, #0
     594:	0a000009 	beq	5c0 <strncmp+0x84>
     598:	e51b300c 	ldr	r3, [fp, #-12]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e3530000 	cmp	r3, #0
     5a4:	0a000005 	beq	5c0 <strncmp+0x84>
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e5d32000 	ldrb	r2, [r3]
     5b0:	e51b300c 	ldr	r3, [fp, #-12]
     5b4:	e5d33000 	ldrb	r3, [r3]
     5b8:	e1520003 	cmp	r2, r3
     5bc:	0affffe5 	beq	558 <strncmp+0x1c>
     5c0:	e51b3010 	ldr	r3, [fp, #-16]
     5c4:	e3530000 	cmp	r3, #0
     5c8:	1a000001 	bne	5d4 <strncmp+0x98>
     5cc:	e3a03000 	mov	r3, #0
     5d0:	ea000005 	b	5ec <strncmp+0xb0>
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

000005fc <strcmp>:
     5fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     600:	e28db000 	add	fp, sp, #0
     604:	e24dd00c 	sub	sp, sp, #12
     608:	e50b0008 	str	r0, [fp, #-8]
     60c:	e50b100c 	str	r1, [fp, #-12]
     610:	ea000005 	b	62c <strcmp+0x30>
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e2833001 	add	r3, r3, #1
     61c:	e50b3008 	str	r3, [fp, #-8]
     620:	e51b300c 	ldr	r3, [fp, #-12]
     624:	e2833001 	add	r3, r3, #1
     628:	e50b300c 	str	r3, [fp, #-12]
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e5d33000 	ldrb	r3, [r3]
     634:	e3530000 	cmp	r3, #0
     638:	0a000005 	beq	654 <strcmp+0x58>
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5d32000 	ldrb	r2, [r3]
     644:	e51b300c 	ldr	r3, [fp, #-12]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e1520003 	cmp	r2, r3
     650:	0affffef 	beq	614 <strcmp+0x18>
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e5d33000 	ldrb	r3, [r3]
     65c:	e1a02003 	mov	r2, r3
     660:	e51b300c 	ldr	r3, [fp, #-12]
     664:	e5d33000 	ldrb	r3, [r3]
     668:	e0423003 	sub	r3, r2, r3
     66c:	e1a00003 	mov	r0, r3
     670:	e28bd000 	add	sp, fp, #0
     674:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <strlen>:
     67c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     680:	e28db000 	add	fp, sp, #0
     684:	e24dd014 	sub	sp, sp, #20
     688:	e50b0010 	str	r0, [fp, #-16]
     68c:	e3a03000 	mov	r3, #0
     690:	e50b3008 	str	r3, [fp, #-8]
     694:	ea000002 	b	6a4 <strlen+0x28>
     698:	e51b3008 	ldr	r3, [fp, #-8]
     69c:	e2833001 	add	r3, r3, #1
     6a0:	e50b3008 	str	r3, [fp, #-8]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e51b2010 	ldr	r2, [fp, #-16]
     6ac:	e0823003 	add	r3, r2, r3
     6b0:	e5d33000 	ldrb	r3, [r3]
     6b4:	e3530000 	cmp	r3, #0
     6b8:	1afffff6 	bne	698 <strlen+0x1c>
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e1a00003 	mov	r0, r3
     6c4:	e28bd000 	add	sp, fp, #0
     6c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <memset>:
     6d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6d4:	e28db000 	add	fp, sp, #0
     6d8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     6dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     6e0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     6e4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     6e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6ec:	e50b3008 	str	r3, [fp, #-8]
     6f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     6f4:	e54b300d 	strb	r3, [fp, #-13]
     6f8:	e55b200d 	ldrb	r2, [fp, #-13]
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a03403 	lsl	r3, r3, #8
     704:	e0833002 	add	r3, r3, r2
     708:	e1a03803 	lsl	r3, r3, #16
     70c:	e1a02003 	mov	r2, r3
     710:	e55b300d 	ldrb	r3, [fp, #-13]
     714:	e1a03403 	lsl	r3, r3, #8
     718:	e1822003 	orr	r2, r2, r3
     71c:	e55b300d 	ldrb	r3, [fp, #-13]
     720:	e1823003 	orr	r3, r2, r3
     724:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     728:	ea000008 	b	750 <memset+0x80>
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e55b200d 	ldrb	r2, [fp, #-13]
     734:	e5c32000 	strb	r2, [r3]
     738:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     73c:	e2433001 	sub	r3, r3, #1
     740:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e2833001 	add	r3, r3, #1
     74c:	e50b3008 	str	r3, [fp, #-8]
     750:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     754:	e3530000 	cmp	r3, #0
     758:	0a000003 	beq	76c <memset+0x9c>
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e2033003 	and	r3, r3, #3
     764:	e3530000 	cmp	r3, #0
     768:	1affffef 	bne	72c <memset+0x5c>
     76c:	e51b3008 	ldr	r3, [fp, #-8]
     770:	e50b300c 	str	r3, [fp, #-12]
     774:	ea000008 	b	79c <memset+0xcc>
     778:	e51b300c 	ldr	r3, [fp, #-12]
     77c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     780:	e5832000 	str	r2, [r3]
     784:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     788:	e2433004 	sub	r3, r3, #4
     78c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     790:	e51b300c 	ldr	r3, [fp, #-12]
     794:	e2833004 	add	r3, r3, #4
     798:	e50b300c 	str	r3, [fp, #-12]
     79c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     7a0:	e3530003 	cmp	r3, #3
     7a4:	8afffff3 	bhi	778 <memset+0xa8>
     7a8:	e51b300c 	ldr	r3, [fp, #-12]
     7ac:	e50b3008 	str	r3, [fp, #-8]
     7b0:	ea000008 	b	7d8 <memset+0x108>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e55b200d 	ldrb	r2, [fp, #-13]
     7bc:	e5c32000 	strb	r2, [r3]
     7c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     7c4:	e2433001 	sub	r3, r3, #1
     7c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e2833001 	add	r3, r3, #1
     7d4:	e50b3008 	str	r3, [fp, #-8]
     7d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     7dc:	e3530000 	cmp	r3, #0
     7e0:	1afffff3 	bne	7b4 <memset+0xe4>
     7e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7e8:	e1a00003 	mov	r0, r3
     7ec:	e28bd000 	add	sp, fp, #0
     7f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <strchr>:
     7f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7fc:	e28db000 	add	fp, sp, #0
     800:	e24dd00c 	sub	sp, sp, #12
     804:	e50b0008 	str	r0, [fp, #-8]
     808:	e1a03001 	mov	r3, r1
     80c:	e54b3009 	strb	r3, [fp, #-9]
     810:	ea000009 	b	83c <strchr+0x44>
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5d33000 	ldrb	r3, [r3]
     81c:	e55b2009 	ldrb	r2, [fp, #-9]
     820:	e1520003 	cmp	r2, r3
     824:	1a000001 	bne	830 <strchr+0x38>
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	ea000007 	b	850 <strchr+0x58>
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e2833001 	add	r3, r3, #1
     838:	e50b3008 	str	r3, [fp, #-8]
     83c:	e51b3008 	ldr	r3, [fp, #-8]
     840:	e5d33000 	ldrb	r3, [r3]
     844:	e3530000 	cmp	r3, #0
     848:	1afffff1 	bne	814 <strchr+0x1c>
     84c:	e3a03000 	mov	r3, #0
     850:	e1a00003 	mov	r0, r3
     854:	e28bd000 	add	sp, fp, #0
     858:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <gets>:
     860:	e92d4800 	push	{fp, lr}
     864:	e28db004 	add	fp, sp, #4
     868:	e24dd018 	sub	sp, sp, #24
     86c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     870:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     874:	e3a03000 	mov	r3, #0
     878:	e50b3008 	str	r3, [fp, #-8]
     87c:	ea000016 	b	8dc <gets+0x7c>
     880:	e24b300d 	sub	r3, fp, #13
     884:	e3a02001 	mov	r2, #1
     888:	e1a01003 	mov	r1, r3
     88c:	e3a00000 	mov	r0, #0
     890:	eb00009b 	bl	b04 <read>
     894:	e50b000c 	str	r0, [fp, #-12]
     898:	e51b300c 	ldr	r3, [fp, #-12]
     89c:	e3530000 	cmp	r3, #0
     8a0:	da000013 	ble	8f4 <gets+0x94>
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e2832001 	add	r2, r3, #1
     8ac:	e50b2008 	str	r2, [fp, #-8]
     8b0:	e1a02003 	mov	r2, r3
     8b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8b8:	e0833002 	add	r3, r3, r2
     8bc:	e55b200d 	ldrb	r2, [fp, #-13]
     8c0:	e5c32000 	strb	r2, [r3]
     8c4:	e55b300d 	ldrb	r3, [fp, #-13]
     8c8:	e353000a 	cmp	r3, #10
     8cc:	0a000009 	beq	8f8 <gets+0x98>
     8d0:	e55b300d 	ldrb	r3, [fp, #-13]
     8d4:	e353000d 	cmp	r3, #13
     8d8:	0a000006 	beq	8f8 <gets+0x98>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e2833001 	add	r3, r3, #1
     8e4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     8e8:	e1520003 	cmp	r2, r3
     8ec:	caffffe3 	bgt	880 <gets+0x20>
     8f0:	ea000000 	b	8f8 <gets+0x98>
     8f4:	e1a00000 	nop			@ (mov r0, r0)
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     900:	e0823003 	add	r3, r2, r3
     904:	e3a02000 	mov	r2, #0
     908:	e5c32000 	strb	r2, [r3]
     90c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     910:	e1a00003 	mov	r0, r3
     914:	e24bd004 	sub	sp, fp, #4
     918:	e8bd8800 	pop	{fp, pc}

0000091c <stat>:
     91c:	e92d4800 	push	{fp, lr}
     920:	e28db004 	add	fp, sp, #4
     924:	e24dd010 	sub	sp, sp, #16
     928:	e50b0010 	str	r0, [fp, #-16]
     92c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     930:	e3a01000 	mov	r1, #0
     934:	e51b0010 	ldr	r0, [fp, #-16]
     938:	eb00009e 	bl	bb8 <open>
     93c:	e50b0008 	str	r0, [fp, #-8]
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e3530000 	cmp	r3, #0
     948:	aa000001 	bge	954 <stat+0x38>
     94c:	e3e03000 	mvn	r3, #0
     950:	ea000006 	b	970 <stat+0x54>
     954:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     958:	e51b0008 	ldr	r0, [fp, #-8]
     95c:	eb0000b0 	bl	c24 <fstat>
     960:	e50b000c 	str	r0, [fp, #-12]
     964:	e51b0008 	ldr	r0, [fp, #-8]
     968:	eb000077 	bl	b4c <close>
     96c:	e51b300c 	ldr	r3, [fp, #-12]
     970:	e1a00003 	mov	r0, r3
     974:	e24bd004 	sub	sp, fp, #4
     978:	e8bd8800 	pop	{fp, pc}

0000097c <atoi>:
     97c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     980:	e28db000 	add	fp, sp, #0
     984:	e24dd014 	sub	sp, sp, #20
     988:	e50b0010 	str	r0, [fp, #-16]
     98c:	e3a03000 	mov	r3, #0
     990:	e50b3008 	str	r3, [fp, #-8]
     994:	ea00000c 	b	9cc <atoi+0x50>
     998:	e51b2008 	ldr	r2, [fp, #-8]
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a03103 	lsl	r3, r3, #2
     9a4:	e0833002 	add	r3, r3, r2
     9a8:	e1a03083 	lsl	r3, r3, #1
     9ac:	e1a01003 	mov	r1, r3
     9b0:	e51b3010 	ldr	r3, [fp, #-16]
     9b4:	e2832001 	add	r2, r3, #1
     9b8:	e50b2010 	str	r2, [fp, #-16]
     9bc:	e5d33000 	ldrb	r3, [r3]
     9c0:	e0813003 	add	r3, r1, r3
     9c4:	e2433030 	sub	r3, r3, #48	@ 0x30
     9c8:	e50b3008 	str	r3, [fp, #-8]
     9cc:	e51b3010 	ldr	r3, [fp, #-16]
     9d0:	e5d33000 	ldrb	r3, [r3]
     9d4:	e353002f 	cmp	r3, #47	@ 0x2f
     9d8:	9a000003 	bls	9ec <atoi+0x70>
     9dc:	e51b3010 	ldr	r3, [fp, #-16]
     9e0:	e5d33000 	ldrb	r3, [r3]
     9e4:	e3530039 	cmp	r3, #57	@ 0x39
     9e8:	9affffea 	bls	998 <atoi+0x1c>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e1a00003 	mov	r0, r3
     9f4:	e28bd000 	add	sp, fp, #0
     9f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <memmove>:
     a00:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a04:	e28db000 	add	fp, sp, #0
     a08:	e24dd01c 	sub	sp, sp, #28
     a0c:	e50b0010 	str	r0, [fp, #-16]
     a10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a14:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a18:	e51b3010 	ldr	r3, [fp, #-16]
     a1c:	e50b3008 	str	r3, [fp, #-8]
     a20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a24:	e50b300c 	str	r3, [fp, #-12]
     a28:	ea000007 	b	a4c <memmove+0x4c>
     a2c:	e51b200c 	ldr	r2, [fp, #-12]
     a30:	e2823001 	add	r3, r2, #1
     a34:	e50b300c 	str	r3, [fp, #-12]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2831001 	add	r1, r3, #1
     a40:	e50b1008 	str	r1, [fp, #-8]
     a44:	e5d22000 	ldrb	r2, [r2]
     a48:	e5c32000 	strb	r2, [r3]
     a4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a50:	e2432001 	sub	r2, r3, #1
     a54:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a58:	e3530000 	cmp	r3, #0
     a5c:	cafffff2 	bgt	a2c <memmove+0x2c>
     a60:	e51b3010 	ldr	r3, [fp, #-16]
     a64:	e1a00003 	mov	r0, r3
     a68:	e28bd000 	add	sp, fp, #0
     a6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <fork>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00001 	mov	r0, #1
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <exit>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00002 	mov	r0, #2
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <wait>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00003 	mov	r0, #3
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <pipe>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00004 	mov	r0, #4
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <read>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00005 	mov	r0, #5
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <write>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00010 	mov	r0, #16
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <close>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a00015 	mov	r0, #21
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <kill>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00006 	mov	r0, #6
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <exec>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00007 	mov	r0, #7
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <open>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a0000f 	mov	r0, #15
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <mknod>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a00011 	mov	r0, #17
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <unlink>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00012 	mov	r0, #18
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <fstat>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00008 	mov	r0, #8
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <link>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00013 	mov	r0, #19
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <mkdir>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00014 	mov	r0, #20
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <chdir>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00009 	mov	r0, #9
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <dup>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a0000a 	mov	r0, #10
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <getpid>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a0000b 	mov	r0, #11
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <sbrk>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a0000c 	mov	r0, #12
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <sleep>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a0000d 	mov	r0, #13
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <uptime>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a0000e 	mov	r0, #14
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <ps>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00016 	mov	r0, #22
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <settickets>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00017 	mov	r0, #23
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <srand>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a00018 	mov	r0, #24
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <getpinfo>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00019 	mov	r0, #25
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <printpt>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a0001a 	mov	r0, #26
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <pgpte>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a0001b 	mov	r0, #27
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <ugetpid>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a0001c 	mov	r0, #28
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <kpt>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a0001d 	mov	r0, #29
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <putc>:
     e88:	e92d4800 	push	{fp, lr}
     e8c:	e28db004 	add	fp, sp, #4
     e90:	e24dd008 	sub	sp, sp, #8
     e94:	e50b0008 	str	r0, [fp, #-8]
     e98:	e1a03001 	mov	r3, r1
     e9c:	e54b3009 	strb	r3, [fp, #-9]
     ea0:	e24b3009 	sub	r3, fp, #9
     ea4:	e3a02001 	mov	r2, #1
     ea8:	e1a01003 	mov	r1, r3
     eac:	e51b0008 	ldr	r0, [fp, #-8]
     eb0:	ebffff1c 	bl	b28 <write>
     eb4:	e1a00000 	nop			@ (mov r0, r0)
     eb8:	e24bd004 	sub	sp, fp, #4
     ebc:	e8bd8800 	pop	{fp, pc}

00000ec0 <printint>:
     ec0:	e92d4800 	push	{fp, lr}
     ec4:	e28db004 	add	fp, sp, #4
     ec8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ecc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ed0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ed4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ed8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     edc:	e3a03000 	mov	r3, #0
     ee0:	e50b300c 	str	r3, [fp, #-12]
     ee4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ee8:	e3530000 	cmp	r3, #0
     eec:	0a000008 	beq	f14 <printint+0x54>
     ef0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ef4:	e3530000 	cmp	r3, #0
     ef8:	aa000005 	bge	f14 <printint+0x54>
     efc:	e3a03001 	mov	r3, #1
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f08:	e2633000 	rsb	r3, r3, #0
     f0c:	e50b3010 	str	r3, [fp, #-16]
     f10:	ea000001 	b	f1c <printint+0x5c>
     f14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f18:	e50b3010 	str	r3, [fp, #-16]
     f1c:	e3a03000 	mov	r3, #0
     f20:	e50b3008 	str	r3, [fp, #-8]
     f24:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f28:	e51b3010 	ldr	r3, [fp, #-16]
     f2c:	e1a01002 	mov	r1, r2
     f30:	e1a00003 	mov	r0, r3
     f34:	eb0001d5 	bl	1690 <__aeabi_uidivmod>
     f38:	e1a03001 	mov	r3, r1
     f3c:	e1a01003 	mov	r1, r3
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e2832001 	add	r2, r3, #1
     f48:	e50b2008 	str	r2, [fp, #-8]
     f4c:	e59f20a0 	ldr	r2, [pc, #160]	@ ff4 <printint+0x134>
     f50:	e7d22001 	ldrb	r2, [r2, r1]
     f54:	e2433004 	sub	r3, r3, #4
     f58:	e083300b 	add	r3, r3, fp
     f5c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f60:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f64:	e1a01003 	mov	r1, r3
     f68:	e51b0010 	ldr	r0, [fp, #-16]
     f6c:	eb00018a 	bl	159c <__udivsi3>
     f70:	e1a03000 	mov	r3, r0
     f74:	e50b3010 	str	r3, [fp, #-16]
     f78:	e51b3010 	ldr	r3, [fp, #-16]
     f7c:	e3530000 	cmp	r3, #0
     f80:	1affffe7 	bne	f24 <printint+0x64>
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e3530000 	cmp	r3, #0
     f8c:	0a00000e 	beq	fcc <printint+0x10c>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e2832001 	add	r2, r3, #1
     f98:	e50b2008 	str	r2, [fp, #-8]
     f9c:	e2433004 	sub	r3, r3, #4
     fa0:	e083300b 	add	r3, r3, fp
     fa4:	e3a0202d 	mov	r2, #45	@ 0x2d
     fa8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fac:	ea000006 	b	fcc <printint+0x10c>
     fb0:	e24b2020 	sub	r2, fp, #32
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e0823003 	add	r3, r2, r3
     fbc:	e5d33000 	ldrb	r3, [r3]
     fc0:	e1a01003 	mov	r1, r3
     fc4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fc8:	ebffffae 	bl	e88 <putc>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e2433001 	sub	r3, r3, #1
     fd4:	e50b3008 	str	r3, [fp, #-8]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	aafffff2 	bge	fb0 <printint+0xf0>
     fe4:	e1a00000 	nop			@ (mov r0, r0)
     fe8:	e1a00000 	nop			@ (mov r0, r0)
     fec:	e24bd004 	sub	sp, fp, #4
     ff0:	e8bd8800 	pop	{fp, pc}
     ff4:	00001864 	.word	0x00001864

00000ff8 <printf>:
     ff8:	e92d000e 	push	{r1, r2, r3}
     ffc:	e92d4800 	push	{fp, lr}
    1000:	e28db004 	add	fp, sp, #4
    1004:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1008:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    100c:	e3a03000 	mov	r3, #0
    1010:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1014:	e28b3008 	add	r3, fp, #8
    1018:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    101c:	e3a03000 	mov	r3, #0
    1020:	e50b3010 	str	r3, [fp, #-16]
    1024:	ea000074 	b	11fc <printf+0x204>
    1028:	e59b2004 	ldr	r2, [fp, #4]
    102c:	e51b3010 	ldr	r3, [fp, #-16]
    1030:	e0823003 	add	r3, r2, r3
    1034:	e5d33000 	ldrb	r3, [r3]
    1038:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    103c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1040:	e3530000 	cmp	r3, #0
    1044:	1a00000b 	bne	1078 <printf+0x80>
    1048:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    104c:	e3530025 	cmp	r3, #37	@ 0x25
    1050:	1a000002 	bne	1060 <printf+0x68>
    1054:	e3a03025 	mov	r3, #37	@ 0x25
    1058:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    105c:	ea000063 	b	11f0 <printf+0x1f8>
    1060:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1064:	e6ef3073 	uxtb	r3, r3
    1068:	e1a01003 	mov	r1, r3
    106c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1070:	ebffff84 	bl	e88 <putc>
    1074:	ea00005d 	b	11f0 <printf+0x1f8>
    1078:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    107c:	e3530025 	cmp	r3, #37	@ 0x25
    1080:	1a00005a 	bne	11f0 <printf+0x1f8>
    1084:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1088:	e3530064 	cmp	r3, #100	@ 0x64
    108c:	1a00000a 	bne	10bc <printf+0xc4>
    1090:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1094:	e5933000 	ldr	r3, [r3]
    1098:	e1a01003 	mov	r1, r3
    109c:	e3a03001 	mov	r3, #1
    10a0:	e3a0200a 	mov	r2, #10
    10a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10a8:	ebffff84 	bl	ec0 <printint>
    10ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b0:	e2833004 	add	r3, r3, #4
    10b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10b8:	ea00004a 	b	11e8 <printf+0x1f0>
    10bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c0:	e3530078 	cmp	r3, #120	@ 0x78
    10c4:	0a000002 	beq	10d4 <printf+0xdc>
    10c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10cc:	e3530070 	cmp	r3, #112	@ 0x70
    10d0:	1a00000a 	bne	1100 <printf+0x108>
    10d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d8:	e5933000 	ldr	r3, [r3]
    10dc:	e1a01003 	mov	r1, r3
    10e0:	e3a03000 	mov	r3, #0
    10e4:	e3a02010 	mov	r2, #16
    10e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10ec:	ebffff73 	bl	ec0 <printint>
    10f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f4:	e2833004 	add	r3, r3, #4
    10f8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10fc:	ea000039 	b	11e8 <printf+0x1f0>
    1100:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1104:	e3530073 	cmp	r3, #115	@ 0x73
    1108:	1a000018 	bne	1170 <printf+0x178>
    110c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1110:	e5933000 	ldr	r3, [r3]
    1114:	e50b300c 	str	r3, [fp, #-12]
    1118:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    111c:	e2833004 	add	r3, r3, #4
    1120:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e3530000 	cmp	r3, #0
    112c:	1a00000a 	bne	115c <printf+0x164>
    1130:	e59f30f4 	ldr	r3, [pc, #244]	@ 122c <printf+0x234>
    1134:	e50b300c 	str	r3, [fp, #-12]
    1138:	ea000007 	b	115c <printf+0x164>
    113c:	e51b300c 	ldr	r3, [fp, #-12]
    1140:	e5d33000 	ldrb	r3, [r3]
    1144:	e1a01003 	mov	r1, r3
    1148:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    114c:	ebffff4d 	bl	e88 <putc>
    1150:	e51b300c 	ldr	r3, [fp, #-12]
    1154:	e2833001 	add	r3, r3, #1
    1158:	e50b300c 	str	r3, [fp, #-12]
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e5d33000 	ldrb	r3, [r3]
    1164:	e3530000 	cmp	r3, #0
    1168:	1afffff3 	bne	113c <printf+0x144>
    116c:	ea00001d 	b	11e8 <printf+0x1f0>
    1170:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1174:	e3530063 	cmp	r3, #99	@ 0x63
    1178:	1a000009 	bne	11a4 <printf+0x1ac>
    117c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e5933000 	ldr	r3, [r3]
    1184:	e6ef3073 	uxtb	r3, r3
    1188:	e1a01003 	mov	r1, r3
    118c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1190:	ebffff3c 	bl	e88 <putc>
    1194:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1198:	e2833004 	add	r3, r3, #4
    119c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11a0:	ea000010 	b	11e8 <printf+0x1f0>
    11a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a8:	e3530025 	cmp	r3, #37	@ 0x25
    11ac:	1a000005 	bne	11c8 <printf+0x1d0>
    11b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11b4:	e6ef3073 	uxtb	r3, r3
    11b8:	e1a01003 	mov	r1, r3
    11bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c0:	ebffff30 	bl	e88 <putc>
    11c4:	ea000007 	b	11e8 <printf+0x1f0>
    11c8:	e3a01025 	mov	r1, #37	@ 0x25
    11cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d0:	ebffff2c 	bl	e88 <putc>
    11d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d8:	e6ef3073 	uxtb	r3, r3
    11dc:	e1a01003 	mov	r1, r3
    11e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e4:	ebffff27 	bl	e88 <putc>
    11e8:	e3a03000 	mov	r3, #0
    11ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f0:	e51b3010 	ldr	r3, [fp, #-16]
    11f4:	e2833001 	add	r3, r3, #1
    11f8:	e50b3010 	str	r3, [fp, #-16]
    11fc:	e59b2004 	ldr	r2, [fp, #4]
    1200:	e51b3010 	ldr	r3, [fp, #-16]
    1204:	e0823003 	add	r3, r2, r3
    1208:	e5d33000 	ldrb	r3, [r3]
    120c:	e3530000 	cmp	r3, #0
    1210:	1affff84 	bne	1028 <printf+0x30>
    1214:	e1a00000 	nop			@ (mov r0, r0)
    1218:	e1a00000 	nop			@ (mov r0, r0)
    121c:	e24bd004 	sub	sp, fp, #4
    1220:	e8bd4800 	pop	{fp, lr}
    1224:	e28dd00c 	add	sp, sp, #12
    1228:	e12fff1e 	bx	lr
    122c:	00001858 	.word	0x00001858

00001230 <free>:
    1230:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1234:	e28db000 	add	fp, sp, #0
    1238:	e24dd014 	sub	sp, sp, #20
    123c:	e50b0010 	str	r0, [fp, #-16]
    1240:	e51b3010 	ldr	r3, [fp, #-16]
    1244:	e2433008 	sub	r3, r3, #8
    1248:	e50b300c 	str	r3, [fp, #-12]
    124c:	e59f3154 	ldr	r3, [pc, #340]	@ 13a8 <free+0x178>
    1250:	e5933000 	ldr	r3, [r3]
    1254:	e50b3008 	str	r3, [fp, #-8]
    1258:	ea000010 	b	12a0 <free+0x70>
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e5933000 	ldr	r3, [r3]
    1264:	e51b2008 	ldr	r2, [fp, #-8]
    1268:	e1520003 	cmp	r2, r3
    126c:	3a000008 	bcc	1294 <free+0x64>
    1270:	e51b200c 	ldr	r2, [fp, #-12]
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e1520003 	cmp	r2, r3
    127c:	8a000010 	bhi	12c4 <free+0x94>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5933000 	ldr	r3, [r3]
    1288:	e51b200c 	ldr	r2, [fp, #-12]
    128c:	e1520003 	cmp	r2, r3
    1290:	3a00000b 	bcc	12c4 <free+0x94>
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e50b3008 	str	r3, [fp, #-8]
    12a0:	e51b200c 	ldr	r2, [fp, #-12]
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e1520003 	cmp	r2, r3
    12ac:	9affffea 	bls	125c <free+0x2c>
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5933000 	ldr	r3, [r3]
    12b8:	e51b200c 	ldr	r2, [fp, #-12]
    12bc:	e1520003 	cmp	r2, r3
    12c0:	2affffe5 	bcs	125c <free+0x2c>
    12c4:	e51b300c 	ldr	r3, [fp, #-12]
    12c8:	e5933004 	ldr	r3, [r3, #4]
    12cc:	e1a03183 	lsl	r3, r3, #3
    12d0:	e51b200c 	ldr	r2, [fp, #-12]
    12d4:	e0822003 	add	r2, r2, r3
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e1520003 	cmp	r2, r3
    12e4:	1a00000d 	bne	1320 <free+0xf0>
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e5932004 	ldr	r2, [r3, #4]
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5933000 	ldr	r3, [r3]
    12f8:	e5933004 	ldr	r3, [r3, #4]
    12fc:	e0822003 	add	r2, r2, r3
    1300:	e51b300c 	ldr	r3, [fp, #-12]
    1304:	e5832004 	str	r2, [r3, #4]
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5933000 	ldr	r3, [r3]
    1310:	e5932000 	ldr	r2, [r3]
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e5832000 	str	r2, [r3]
    131c:	ea000003 	b	1330 <free+0x100>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5932000 	ldr	r2, [r3]
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5832000 	str	r2, [r3]
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5933004 	ldr	r3, [r3, #4]
    1338:	e1a03183 	lsl	r3, r3, #3
    133c:	e51b2008 	ldr	r2, [fp, #-8]
    1340:	e0823003 	add	r3, r2, r3
    1344:	e51b200c 	ldr	r2, [fp, #-12]
    1348:	e1520003 	cmp	r2, r3
    134c:	1a00000b 	bne	1380 <free+0x150>
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5932004 	ldr	r2, [r3, #4]
    1358:	e51b300c 	ldr	r3, [fp, #-12]
    135c:	e5933004 	ldr	r3, [r3, #4]
    1360:	e0822003 	add	r2, r2, r3
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e5832004 	str	r2, [r3, #4]
    136c:	e51b300c 	ldr	r3, [fp, #-12]
    1370:	e5932000 	ldr	r2, [r3]
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5832000 	str	r2, [r3]
    137c:	ea000002 	b	138c <free+0x15c>
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e51b200c 	ldr	r2, [fp, #-12]
    1388:	e5832000 	str	r2, [r3]
    138c:	e59f2014 	ldr	r2, [pc, #20]	@ 13a8 <free+0x178>
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5823000 	str	r3, [r2]
    1398:	e1a00000 	nop			@ (mov r0, r0)
    139c:	e28bd000 	add	sp, fp, #0
    13a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13a4:	e12fff1e 	bx	lr
    13a8:	00001880 	.word	0x00001880

000013ac <morecore>:
    13ac:	e92d4800 	push	{fp, lr}
    13b0:	e28db004 	add	fp, sp, #4
    13b4:	e24dd010 	sub	sp, sp, #16
    13b8:	e50b0010 	str	r0, [fp, #-16]
    13bc:	e51b3010 	ldr	r3, [fp, #-16]
    13c0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13c4:	2a000001 	bcs	13d0 <morecore+0x24>
    13c8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13cc:	e50b3010 	str	r3, [fp, #-16]
    13d0:	e51b3010 	ldr	r3, [fp, #-16]
    13d4:	e1a03183 	lsl	r3, r3, #3
    13d8:	e1a00003 	mov	r0, r3
    13dc:	ebfffe46 	bl	cfc <sbrk>
    13e0:	e50b0008 	str	r0, [fp, #-8]
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e3730001 	cmn	r3, #1
    13ec:	1a000001 	bne	13f8 <morecore+0x4c>
    13f0:	e3a03000 	mov	r3, #0
    13f4:	ea00000a 	b	1424 <morecore+0x78>
    13f8:	e51b3008 	ldr	r3, [fp, #-8]
    13fc:	e50b300c 	str	r3, [fp, #-12]
    1400:	e51b300c 	ldr	r3, [fp, #-12]
    1404:	e51b2010 	ldr	r2, [fp, #-16]
    1408:	e5832004 	str	r2, [r3, #4]
    140c:	e51b300c 	ldr	r3, [fp, #-12]
    1410:	e2833008 	add	r3, r3, #8
    1414:	e1a00003 	mov	r0, r3
    1418:	ebffff84 	bl	1230 <free>
    141c:	e59f300c 	ldr	r3, [pc, #12]	@ 1430 <morecore+0x84>
    1420:	e5933000 	ldr	r3, [r3]
    1424:	e1a00003 	mov	r0, r3
    1428:	e24bd004 	sub	sp, fp, #4
    142c:	e8bd8800 	pop	{fp, pc}
    1430:	00001880 	.word	0x00001880

00001434 <malloc>:
    1434:	e92d4800 	push	{fp, lr}
    1438:	e28db004 	add	fp, sp, #4
    143c:	e24dd018 	sub	sp, sp, #24
    1440:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1444:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1448:	e2833007 	add	r3, r3, #7
    144c:	e1a031a3 	lsr	r3, r3, #3
    1450:	e2833001 	add	r3, r3, #1
    1454:	e50b3010 	str	r3, [fp, #-16]
    1458:	e59f3134 	ldr	r3, [pc, #308]	@ 1594 <malloc+0x160>
    145c:	e5933000 	ldr	r3, [r3]
    1460:	e50b300c 	str	r3, [fp, #-12]
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e3530000 	cmp	r3, #0
    146c:	1a00000b 	bne	14a0 <malloc+0x6c>
    1470:	e59f3120 	ldr	r3, [pc, #288]	@ 1598 <malloc+0x164>
    1474:	e50b300c 	str	r3, [fp, #-12]
    1478:	e59f2114 	ldr	r2, [pc, #276]	@ 1594 <malloc+0x160>
    147c:	e51b300c 	ldr	r3, [fp, #-12]
    1480:	e5823000 	str	r3, [r2]
    1484:	e59f3108 	ldr	r3, [pc, #264]	@ 1594 <malloc+0x160>
    1488:	e5933000 	ldr	r3, [r3]
    148c:	e59f2104 	ldr	r2, [pc, #260]	@ 1598 <malloc+0x164>
    1490:	e5823000 	str	r3, [r2]
    1494:	e59f30fc 	ldr	r3, [pc, #252]	@ 1598 <malloc+0x164>
    1498:	e3a02000 	mov	r2, #0
    149c:	e5832004 	str	r2, [r3, #4]
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e5933000 	ldr	r3, [r3]
    14a8:	e50b3008 	str	r3, [fp, #-8]
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933004 	ldr	r3, [r3, #4]
    14b4:	e51b2010 	ldr	r2, [fp, #-16]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	8a00001e 	bhi	153c <malloc+0x108>
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e5933004 	ldr	r3, [r3, #4]
    14c8:	e51b2010 	ldr	r2, [fp, #-16]
    14cc:	e1520003 	cmp	r2, r3
    14d0:	1a000004 	bne	14e8 <malloc+0xb4>
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e5932000 	ldr	r2, [r3]
    14dc:	e51b300c 	ldr	r3, [fp, #-12]
    14e0:	e5832000 	str	r2, [r3]
    14e4:	ea00000e 	b	1524 <malloc+0xf0>
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e5932004 	ldr	r2, [r3, #4]
    14f0:	e51b3010 	ldr	r3, [fp, #-16]
    14f4:	e0422003 	sub	r2, r2, r3
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5832004 	str	r2, [r3, #4]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933004 	ldr	r3, [r3, #4]
    1508:	e1a03183 	lsl	r3, r3, #3
    150c:	e51b2008 	ldr	r2, [fp, #-8]
    1510:	e0823003 	add	r3, r2, r3
    1514:	e50b3008 	str	r3, [fp, #-8]
    1518:	e51b3008 	ldr	r3, [fp, #-8]
    151c:	e51b2010 	ldr	r2, [fp, #-16]
    1520:	e5832004 	str	r2, [r3, #4]
    1524:	e59f2068 	ldr	r2, [pc, #104]	@ 1594 <malloc+0x160>
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e5823000 	str	r3, [r2]
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e2833008 	add	r3, r3, #8
    1538:	ea000012 	b	1588 <malloc+0x154>
    153c:	e59f3050 	ldr	r3, [pc, #80]	@ 1594 <malloc+0x160>
    1540:	e5933000 	ldr	r3, [r3]
    1544:	e51b2008 	ldr	r2, [fp, #-8]
    1548:	e1520003 	cmp	r2, r3
    154c:	1a000007 	bne	1570 <malloc+0x13c>
    1550:	e51b0010 	ldr	r0, [fp, #-16]
    1554:	ebffff94 	bl	13ac <morecore>
    1558:	e50b0008 	str	r0, [fp, #-8]
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e3530000 	cmp	r3, #0
    1564:	1a000001 	bne	1570 <malloc+0x13c>
    1568:	e3a03000 	mov	r3, #0
    156c:	ea000005 	b	1588 <malloc+0x154>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e50b300c 	str	r3, [fp, #-12]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e5933000 	ldr	r3, [r3]
    1580:	e50b3008 	str	r3, [fp, #-8]
    1584:	eaffffc8 	b	14ac <malloc+0x78>
    1588:	e1a00003 	mov	r0, r3
    158c:	e24bd004 	sub	sp, fp, #4
    1590:	e8bd8800 	pop	{fp, pc}
    1594:	00001880 	.word	0x00001880
    1598:	00001878 	.word	0x00001878

0000159c <__udivsi3>:
    159c:	e2512001 	subs	r2, r1, #1
    15a0:	012fff1e 	bxeq	lr
    15a4:	3a000036 	bcc	1684 <__udivsi3+0xe8>
    15a8:	e1500001 	cmp	r0, r1
    15ac:	9a000022 	bls	163c <__udivsi3+0xa0>
    15b0:	e1110002 	tst	r1, r2
    15b4:	0a000023 	beq	1648 <__udivsi3+0xac>
    15b8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15bc:	01a01181 	lsleq	r1, r1, #3
    15c0:	03a03008 	moveq	r3, #8
    15c4:	13a03001 	movne	r3, #1
    15c8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15cc:	31510000 	cmpcc	r1, r0
    15d0:	31a01201 	lslcc	r1, r1, #4
    15d4:	31a03203 	lslcc	r3, r3, #4
    15d8:	3afffffa 	bcc	15c8 <__udivsi3+0x2c>
    15dc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15e0:	31510000 	cmpcc	r1, r0
    15e4:	31a01081 	lslcc	r1, r1, #1
    15e8:	31a03083 	lslcc	r3, r3, #1
    15ec:	3afffffa 	bcc	15dc <__udivsi3+0x40>
    15f0:	e3a02000 	mov	r2, #0
    15f4:	e1500001 	cmp	r0, r1
    15f8:	20400001 	subcs	r0, r0, r1
    15fc:	21822003 	orrcs	r2, r2, r3
    1600:	e15000a1 	cmp	r0, r1, lsr #1
    1604:	204000a1 	subcs	r0, r0, r1, lsr #1
    1608:	218220a3 	orrcs	r2, r2, r3, lsr #1
    160c:	e1500121 	cmp	r0, r1, lsr #2
    1610:	20400121 	subcs	r0, r0, r1, lsr #2
    1614:	21822123 	orrcs	r2, r2, r3, lsr #2
    1618:	e15001a1 	cmp	r0, r1, lsr #3
    161c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1620:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1624:	e3500000 	cmp	r0, #0
    1628:	11b03223 	lsrsne	r3, r3, #4
    162c:	11a01221 	lsrne	r1, r1, #4
    1630:	1affffef 	bne	15f4 <__udivsi3+0x58>
    1634:	e1a00002 	mov	r0, r2
    1638:	e12fff1e 	bx	lr
    163c:	03a00001 	moveq	r0, #1
    1640:	13a00000 	movne	r0, #0
    1644:	e12fff1e 	bx	lr
    1648:	e3510801 	cmp	r1, #65536	@ 0x10000
    164c:	21a01821 	lsrcs	r1, r1, #16
    1650:	23a02010 	movcs	r2, #16
    1654:	33a02000 	movcc	r2, #0
    1658:	e3510c01 	cmp	r1, #256	@ 0x100
    165c:	21a01421 	lsrcs	r1, r1, #8
    1660:	22822008 	addcs	r2, r2, #8
    1664:	e3510010 	cmp	r1, #16
    1668:	21a01221 	lsrcs	r1, r1, #4
    166c:	22822004 	addcs	r2, r2, #4
    1670:	e3510004 	cmp	r1, #4
    1674:	82822003 	addhi	r2, r2, #3
    1678:	908220a1 	addls	r2, r2, r1, lsr #1
    167c:	e1a00230 	lsr	r0, r0, r2
    1680:	e12fff1e 	bx	lr
    1684:	e3500000 	cmp	r0, #0
    1688:	13e00000 	mvnne	r0, #0
    168c:	ea000007 	b	16b0 <__aeabi_idiv0>

00001690 <__aeabi_uidivmod>:
    1690:	e3510000 	cmp	r1, #0
    1694:	0afffffa 	beq	1684 <__udivsi3+0xe8>
    1698:	e92d4003 	push	{r0, r1, lr}
    169c:	ebffffbe 	bl	159c <__udivsi3>
    16a0:	e8bd4006 	pop	{r1, r2, lr}
    16a4:	e0030092 	mul	r3, r2, r0
    16a8:	e0411003 	sub	r1, r1, r3
    16ac:	e12fff1e 	bx	lr

000016b0 <__aeabi_idiv0>:
    16b0:	e12fff1e 	bx	lr
