
_lotterytest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <busy_ticks>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e3a03000 	mov	r3, #0
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	ea00000d 	b	54 <busy_ticks+0x54>
      1c:	e3a03000 	mov	r3, #0
      20:	e50b300c 	str	r3, [fp, #-12]
      24:	ea000002 	b	34 <busy_ticks+0x34>
      28:	e51b300c 	ldr	r3, [fp, #-12]
      2c:	e2833001 	add	r3, r3, #1
      30:	e50b300c 	str	r3, [fp, #-12]
      34:	e51b300c 	ldr	r3, [fp, #-12]
      38:	e3530e7d 	cmp	r3, #2000	@ 0x7d0
      3c:	bafffff9 	blt	28 <busy_ticks+0x28>
      40:	e3a00001 	mov	r0, #1
      44:	eb0003bd 	bl	f40 <sleep>
      48:	e51b3008 	ldr	r3, [fp, #-8]
      4c:	e2833001 	add	r3, r3, #1
      50:	e50b3008 	str	r3, [fp, #-8]
      54:	e51b2008 	ldr	r2, [fp, #-8]
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e1520003 	cmp	r2, r3
      60:	baffffed 	blt	1c <busy_ticks+0x1c>
      64:	e1a00000 	nop			@ (mov r0, r0)
      68:	e1a00000 	nop			@ (mov r0, r0)
      6c:	e24bd004 	sub	sp, fp, #4
      70:	e8bd8800 	pop	{fp, pc}

00000074 <main>:
      74:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
      78:	e28db020 	add	fp, sp, #32
      7c:	e24dde56 	sub	sp, sp, #1376	@ 0x560
      80:	e24dd00c 	sub	sp, sp, #12
      84:	e50b0570 	str	r0, [fp, #-1392]	@ 0xfffffa90
      88:	e50b1574 	str	r1, [fp, #-1396]	@ 0xfffffa8c
      8c:	e59f3644 	ldr	r3, [pc, #1604]	@ 6d8 <main+0x664>
      90:	e24bce55 	sub	ip, fp, #1360	@ 0x550
      94:	e24cc004 	sub	ip, ip, #4
      98:	e24cc004 	sub	ip, ip, #4
      9c:	e893000f 	ldm	r3, {r0, r1, r2, r3}
      a0:	e88c000f 	stm	ip, {r0, r1, r2, r3}
      a4:	e59f0630 	ldr	r0, [pc, #1584]	@ 6dc <main+0x668>
      a8:	eb0003c8 	bl	fd0 <srand>
      ac:	e59f162c 	ldr	r1, [pc, #1580]	@ 6e0 <main+0x66c>
      b0:	e3a00001 	mov	r0, #1
      b4:	eb000457 	bl	1218 <printf>
      b8:	eb00038e 	bl	ef8 <getpid>
      bc:	e1a03000 	mov	r3, r0
      c0:	e3a01064 	mov	r1, #100	@ 0x64
      c4:	e1a00003 	mov	r0, r3
      c8:	eb0003b7 	bl	fac <settickets>
      cc:	eb0002f0 	bl	c94 <fork>
      d0:	e1a03000 	mov	r3, r0
      d4:	e50b3558 	str	r3, [fp, #-1368]	@ 0xfffffaa8
      d8:	e51b3558 	ldr	r3, [fp, #-1368]	@ 0xfffffaa8
      dc:	e3530000 	cmp	r3, #0
      e0:	1a00000a 	bne	110 <main+0x9c>
      e4:	eb000383 	bl	ef8 <getpid>
      e8:	e1a03000 	mov	r3, r0
      ec:	e3a01001 	mov	r1, #1
      f0:	e1a00003 	mov	r0, r3
      f4:	eb0003ac 	bl	fac <settickets>
      f8:	e3a00003 	mov	r0, #3
      fc:	ebffffbf 	bl	0 <busy_ticks>
     100:	e3a00003 	mov	r0, #3
     104:	eb00038d 	bl	f40 <sleep>
     108:	e1a00000 	nop			@ (mov r0, r0)
     10c:	eafffff9 	b	f8 <main+0x84>
     110:	eb0002df 	bl	c94 <fork>
     114:	e1a03000 	mov	r3, r0
     118:	e50b3554 	str	r3, [fp, #-1364]	@ 0xfffffaac
     11c:	e51b3554 	ldr	r3, [fp, #-1364]	@ 0xfffffaac
     120:	e3530000 	cmp	r3, #0
     124:	1a00000a 	bne	154 <main+0xe0>
     128:	eb000372 	bl	ef8 <getpid>
     12c:	e1a03000 	mov	r3, r0
     130:	e3a01005 	mov	r1, #5
     134:	e1a00003 	mov	r0, r3
     138:	eb00039b 	bl	fac <settickets>
     13c:	e3a00005 	mov	r0, #5
     140:	ebffffae 	bl	0 <busy_ticks>
     144:	e3a0000a 	mov	r0, #10
     148:	eb00037c 	bl	f40 <sleep>
     14c:	e1a00000 	nop			@ (mov r0, r0)
     150:	eafffff9 	b	13c <main+0xc8>
     154:	eb0002ce 	bl	c94 <fork>
     158:	e1a03000 	mov	r3, r0
     15c:	e50b3550 	str	r3, [fp, #-1360]	@ 0xfffffab0
     160:	e51b3550 	ldr	r3, [fp, #-1360]	@ 0xfffffab0
     164:	e3530000 	cmp	r3, #0
     168:	1a00000a 	bne	198 <main+0x124>
     16c:	eb000361 	bl	ef8 <getpid>
     170:	e1a03000 	mov	r3, r0
     174:	e3a0100a 	mov	r1, #10
     178:	e1a00003 	mov	r0, r3
     17c:	eb00038a 	bl	fac <settickets>
     180:	e3a00006 	mov	r0, #6
     184:	ebffff9d 	bl	0 <busy_ticks>
     188:	e3a00002 	mov	r0, #2
     18c:	eb00036b 	bl	f40 <sleep>
     190:	e1a00000 	nop			@ (mov r0, r0)
     194:	eafffff9 	b	180 <main+0x10c>
     198:	eb0002bd 	bl	c94 <fork>
     19c:	e1a03000 	mov	r3, r0
     1a0:	e50b354c 	str	r3, [fp, #-1356]	@ 0xfffffab4
     1a4:	e51b354c 	ldr	r3, [fp, #-1356]	@ 0xfffffab4
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1a000007 	bne	1d0 <main+0x15c>
     1b0:	eb000350 	bl	ef8 <getpid>
     1b4:	e1a03000 	mov	r3, r0
     1b8:	e3a01008 	mov	r1, #8
     1bc:	e1a00003 	mov	r0, r3
     1c0:	eb000379 	bl	fac <settickets>
     1c4:	e3a00006 	mov	r0, #6
     1c8:	ebffff8c 	bl	0 <busy_ticks>
     1cc:	eafffffc 	b	1c4 <main+0x150>
     1d0:	e3a03000 	mov	r3, #0
     1d4:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
     1d8:	ea00006a 	b	388 <main+0x314>
     1dc:	e3a00014 	mov	r0, #20
     1e0:	eb000356 	bl	f40 <sleep>
     1e4:	e24b3d15 	sub	r3, fp, #1344	@ 0x540
     1e8:	e2433004 	sub	r3, r3, #4
     1ec:	e2433004 	sub	r3, r3, #4
     1f0:	e1a00003 	mov	r0, r3
     1f4:	eb00037e 	bl	ff4 <getpinfo>
     1f8:	e1a03000 	mov	r3, r0
     1fc:	e3530000 	cmp	r3, #0
     200:	1a00005d 	bne	37c <main+0x308>
     204:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
     208:	e59f14d4 	ldr	r1, [pc, #1236]	@ 6e4 <main+0x670>
     20c:	e3a00001 	mov	r0, #1
     210:	eb000400 	bl	1218 <printf>
     214:	e3a03000 	mov	r3, #0
     218:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
     21c:	ea000053 	b	370 <main+0x2fc>
     220:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     224:	e1a03103 	lsl	r3, r3, #2
     228:	e2433024 	sub	r3, r3, #36	@ 0x24
     22c:	e083300b 	add	r3, r3, fp
     230:	e5133524 	ldr	r3, [r3, #-1316]	@ 0xfffffadc
     234:	e3530000 	cmp	r3, #0
     238:	0a000046 	beq	358 <main+0x2e4>
     23c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     240:	e2833040 	add	r3, r3, #64	@ 0x40
     244:	e1a03103 	lsl	r3, r3, #2
     248:	e2433024 	sub	r3, r3, #36	@ 0x24
     24c:	e083300b 	add	r3, r3, fp
     250:	e5133524 	ldr	r3, [r3, #-1316]	@ 0xfffffadc
     254:	e50b3048 	str	r3, [fp, #-72]	@ 0xffffffb8
     258:	e51b3048 	ldr	r3, [fp, #-72]	@ 0xffffffb8
     25c:	e3530001 	cmp	r3, #1
     260:	0a000002 	beq	270 <main+0x1fc>
     264:	e51b3048 	ldr	r3, [fp, #-72]	@ 0xffffffb8
     268:	e3530002 	cmp	r3, #2
     26c:	1a000001 	bne	278 <main+0x204>
     270:	e3a03001 	mov	r3, #1
     274:	ea000000 	b	27c <main+0x208>
     278:	e3a03000 	mov	r3, #0
     27c:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
     280:	e3a03000 	mov	r3, #0
     284:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     288:	ea00000c 	b	2c0 <main+0x24c>
     28c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     290:	e1a03103 	lsl	r3, r3, #2
     294:	e2433024 	sub	r3, r3, #36	@ 0x24
     298:	e083300b 	add	r3, r3, fp
     29c:	e5133534 	ldr	r3, [r3, #-1332]	@ 0xfffffacc
     2a0:	e51b2048 	ldr	r2, [fp, #-72]	@ 0xffffffb8
     2a4:	e1520003 	cmp	r2, r3
     2a8:	1a000001 	bne	2b4 <main+0x240>
     2ac:	e3a03001 	mov	r3, #1
     2b0:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
     2b4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     2c0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     2c4:	e3530003 	cmp	r3, #3
     2c8:	daffffef 	ble	28c <main+0x218>
     2cc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     2d0:	e3530000 	cmp	r3, #0
     2d4:	0a000021 	beq	360 <main+0x2ec>
     2d8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     2dc:	e2833040 	add	r3, r3, #64	@ 0x40
     2e0:	e1a03103 	lsl	r3, r3, #2
     2e4:	e2433024 	sub	r3, r3, #36	@ 0x24
     2e8:	e083300b 	add	r3, r3, fp
     2ec:	e5131524 	ldr	r1, [r3, #-1316]	@ 0xfffffadc
     2f0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     2f4:	e2833080 	add	r3, r3, #128	@ 0x80
     2f8:	e1a03103 	lsl	r3, r3, #2
     2fc:	e2433024 	sub	r3, r3, #36	@ 0x24
     300:	e083300b 	add	r3, r3, fp
     304:	e5130524 	ldr	r0, [r3, #-1316]	@ 0xfffffadc
     308:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     30c:	e28330c0 	add	r3, r3, #192	@ 0xc0
     310:	e1a03103 	lsl	r3, r3, #2
     314:	e2433024 	sub	r3, r3, #36	@ 0x24
     318:	e083300b 	add	r3, r3, fp
     31c:	e5132524 	ldr	r2, [r3, #-1316]	@ 0xfffffadc
     320:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     324:	e2833c01 	add	r3, r3, #256	@ 0x100
     328:	e1a03103 	lsl	r3, r3, #2
     32c:	e2433024 	sub	r3, r3, #36	@ 0x24
     330:	e083300b 	add	r3, r3, fp
     334:	e5133524 	ldr	r3, [r3, #-1316]	@ 0xfffffadc
     338:	e58d3004 	str	r3, [sp, #4]
     33c:	e58d2000 	str	r2, [sp]
     340:	e1a03000 	mov	r3, r0
     344:	e1a02001 	mov	r2, r1
     348:	e59f1398 	ldr	r1, [pc, #920]	@ 6e8 <main+0x674>
     34c:	e3a00001 	mov	r0, #1
     350:	eb0003b0 	bl	1218 <printf>
     354:	ea000002 	b	364 <main+0x2f0>
     358:	e1a00000 	nop			@ (mov r0, r0)
     35c:	ea000000 	b	364 <main+0x2f0>
     360:	e1a00000 	nop			@ (mov r0, r0)
     364:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     368:	e2833001 	add	r3, r3, #1
     36c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
     370:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     374:	e353003f 	cmp	r3, #63	@ 0x3f
     378:	daffffa8 	ble	220 <main+0x1ac>
     37c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     380:	e2833001 	add	r3, r3, #1
     384:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
     388:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     38c:	e353000b 	cmp	r3, #11
     390:	daffff91 	ble	1dc <main+0x168>
     394:	e3a03000 	mov	r3, #0
     398:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
     39c:	ea000010 	b	3e4 <main+0x370>
     3a0:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
     3a4:	e1a03103 	lsl	r3, r3, #2
     3a8:	e2433024 	sub	r3, r3, #36	@ 0x24
     3ac:	e083300b 	add	r3, r3, fp
     3b0:	e5133534 	ldr	r3, [r3, #-1332]	@ 0xfffffacc
     3b4:	e3530000 	cmp	r3, #0
     3b8:	da000006 	ble	3d8 <main+0x364>
     3bc:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
     3c0:	e1a03103 	lsl	r3, r3, #2
     3c4:	e2433024 	sub	r3, r3, #36	@ 0x24
     3c8:	e083300b 	add	r3, r3, fp
     3cc:	e5133534 	ldr	r3, [r3, #-1332]	@ 0xfffffacc
     3d0:	e1a00003 	mov	r0, r3
     3d4:	eb00026d 	bl	d90 <kill>
     3d8:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
     3dc:	e2833001 	add	r3, r3, #1
     3e0:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
     3e4:	e51b3038 	ldr	r3, [fp, #-56]	@ 0xffffffc8
     3e8:	e3530003 	cmp	r3, #3
     3ec:	daffffeb 	ble	3a0 <main+0x32c>
     3f0:	e1a00000 	nop			@ (mov r0, r0)
     3f4:	eb000238 	bl	cdc <wait>
     3f8:	e1a03000 	mov	r3, r0
     3fc:	e3530000 	cmp	r3, #0
     400:	cafffffb 	bgt	3f4 <main+0x380>
     404:	e24b3d15 	sub	r3, fp, #1344	@ 0x540
     408:	e2433004 	sub	r3, r3, #4
     40c:	e2433004 	sub	r3, r3, #4
     410:	e1a00003 	mov	r0, r3
     414:	eb0002f6 	bl	ff4 <getpinfo>
     418:	e1a03000 	mov	r3, r0
     41c:	e3530000 	cmp	r3, #0
     420:	1a0000a8 	bne	6c8 <main+0x654>
     424:	e24b3e56 	sub	r3, fp, #1376	@ 0x560
     428:	e2433004 	sub	r3, r3, #4
     42c:	e2433004 	sub	r3, r3, #4
     430:	e3a02000 	mov	r2, #0
     434:	e5832000 	str	r2, [r3]
     438:	e5832004 	str	r2, [r3, #4]
     43c:	e5832008 	str	r2, [r3, #8]
     440:	e583200c 	str	r2, [r3, #12]
     444:	e3a03000 	mov	r3, #0
     448:	e50b303c 	str	r3, [fp, #-60]	@ 0xffffffc4
     44c:	ea00002a 	b	4fc <main+0x488>
     450:	e3a03000 	mov	r3, #0
     454:	e50b3040 	str	r3, [fp, #-64]	@ 0xffffffc0
     458:	ea000021 	b	4e4 <main+0x470>
     45c:	e51b303c 	ldr	r3, [fp, #-60]	@ 0xffffffc4
     460:	e1a03103 	lsl	r3, r3, #2
     464:	e2433024 	sub	r3, r3, #36	@ 0x24
     468:	e083300b 	add	r3, r3, fp
     46c:	e5133524 	ldr	r3, [r3, #-1316]	@ 0xfffffadc
     470:	e3530000 	cmp	r3, #0
     474:	0a000017 	beq	4d8 <main+0x464>
     478:	e51b303c 	ldr	r3, [fp, #-60]	@ 0xffffffc4
     47c:	e2833040 	add	r3, r3, #64	@ 0x40
     480:	e1a03103 	lsl	r3, r3, #2
     484:	e2433024 	sub	r3, r3, #36	@ 0x24
     488:	e083300b 	add	r3, r3, fp
     48c:	e5132524 	ldr	r2, [r3, #-1316]	@ 0xfffffadc
     490:	e51b3040 	ldr	r3, [fp, #-64]	@ 0xffffffc0
     494:	e1a03103 	lsl	r3, r3, #2
     498:	e2433024 	sub	r3, r3, #36	@ 0x24
     49c:	e083300b 	add	r3, r3, fp
     4a0:	e5133534 	ldr	r3, [r3, #-1332]	@ 0xfffffacc
     4a4:	e1520003 	cmp	r2, r3
     4a8:	1a00000a 	bne	4d8 <main+0x464>
     4ac:	e51b303c 	ldr	r3, [fp, #-60]	@ 0xffffffc4
     4b0:	e28330c0 	add	r3, r3, #192	@ 0xc0
     4b4:	e1a03103 	lsl	r3, r3, #2
     4b8:	e2433024 	sub	r3, r3, #36	@ 0x24
     4bc:	e083300b 	add	r3, r3, fp
     4c0:	e5132524 	ldr	r2, [r3, #-1316]	@ 0xfffffadc
     4c4:	e51b3040 	ldr	r3, [fp, #-64]	@ 0xffffffc0
     4c8:	e1a03103 	lsl	r3, r3, #2
     4cc:	e2433024 	sub	r3, r3, #36	@ 0x24
     4d0:	e083300b 	add	r3, r3, fp
     4d4:	e5032544 	str	r2, [r3, #-1348]	@ 0xfffffabc
     4d8:	e51b3040 	ldr	r3, [fp, #-64]	@ 0xffffffc0
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3040 	str	r3, [fp, #-64]	@ 0xffffffc0
     4e4:	e51b3040 	ldr	r3, [fp, #-64]	@ 0xffffffc0
     4e8:	e3530003 	cmp	r3, #3
     4ec:	daffffda 	ble	45c <main+0x3e8>
     4f0:	e51b303c 	ldr	r3, [fp, #-60]	@ 0xffffffc4
     4f4:	e2833001 	add	r3, r3, #1
     4f8:	e50b303c 	str	r3, [fp, #-60]	@ 0xffffffc4
     4fc:	e51b303c 	ldr	r3, [fp, #-60]	@ 0xffffffc4
     500:	e353003f 	cmp	r3, #63	@ 0x3f
     504:	daffffd1 	ble	450 <main+0x3dc>
     508:	e51b2568 	ldr	r2, [fp, #-1384]	@ 0xfffffa98
     50c:	e51b3564 	ldr	r3, [fp, #-1380]	@ 0xfffffa9c
     510:	e0822003 	add	r2, r2, r3
     514:	e51b3560 	ldr	r3, [fp, #-1376]	@ 0xfffffaa0
     518:	e0822003 	add	r2, r2, r3
     51c:	e51b355c 	ldr	r3, [fp, #-1372]	@ 0xfffffaa4
     520:	e0823003 	add	r3, r2, r3
     524:	e50b3044 	str	r3, [fp, #-68]	@ 0xffffffbc
     528:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     52c:	e3530000 	cmp	r3, #0
     530:	da000064 	ble	6c8 <main+0x654>
     534:	e51b0568 	ldr	r0, [fp, #-1384]	@ 0xfffffa98
     538:	e51bc564 	ldr	ip, [fp, #-1380]	@ 0xfffffa9c
     53c:	e51b3560 	ldr	r3, [fp, #-1376]	@ 0xfffffaa0
     540:	e51b255c 	ldr	r2, [fp, #-1372]	@ 0xfffffaa4
     544:	e51b1044 	ldr	r1, [fp, #-68]	@ 0xffffffbc
     548:	e58d1008 	str	r1, [sp, #8]
     54c:	e58d2004 	str	r2, [sp, #4]
     550:	e58d3000 	str	r3, [sp]
     554:	e1a0300c 	mov	r3, ip
     558:	e1a02000 	mov	r2, r0
     55c:	e59f1188 	ldr	r1, [pc, #392]	@ 6ec <main+0x678>
     560:	e3a00001 	mov	r0, #1
     564:	eb00032b 	bl	1218 <printf>
     568:	e51b3568 	ldr	r3, [fp, #-1384]	@ 0xfffffa98
     56c:	e1a00003 	mov	r0, r3
     570:	eb0006ba 	bl	2060 <__aeabi_i2f>
     574:	e1a03000 	mov	r3, r0
     578:	e59f1170 	ldr	r1, [pc, #368]	@ 6f0 <main+0x67c>
     57c:	e1a00003 	mov	r0, r3
     580:	eb0006ed 	bl	213c <__aeabi_fmul>
     584:	e1a03000 	mov	r3, r0
     588:	e1a04003 	mov	r4, r3
     58c:	e51b0044 	ldr	r0, [fp, #-68]	@ 0xffffffbc
     590:	eb0006b2 	bl	2060 <__aeabi_i2f>
     594:	e1a03000 	mov	r3, r0
     598:	e1a01003 	mov	r1, r3
     59c:	e1a00004 	mov	r0, r4
     5a0:	eb00074b 	bl	22d4 <__aeabi_fdiv>
     5a4:	e1a03000 	mov	r3, r0
     5a8:	e1a00003 	mov	r0, r3
     5ac:	eb000608 	bl	1dd4 <__aeabi_f2d>
     5b0:	e1a08000 	mov	r8, r0
     5b4:	e1a09001 	mov	r9, r1
     5b8:	e51b3564 	ldr	r3, [fp, #-1380]	@ 0xfffffa9c
     5bc:	e1a00003 	mov	r0, r3
     5c0:	eb0006a6 	bl	2060 <__aeabi_i2f>
     5c4:	e1a03000 	mov	r3, r0
     5c8:	e59f1120 	ldr	r1, [pc, #288]	@ 6f0 <main+0x67c>
     5cc:	e1a00003 	mov	r0, r3
     5d0:	eb0006d9 	bl	213c <__aeabi_fmul>
     5d4:	e1a03000 	mov	r3, r0
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e51b0044 	ldr	r0, [fp, #-68]	@ 0xffffffbc
     5e0:	eb00069e 	bl	2060 <__aeabi_i2f>
     5e4:	e1a03000 	mov	r3, r0
     5e8:	e1a01003 	mov	r1, r3
     5ec:	e1a00004 	mov	r0, r4
     5f0:	eb000737 	bl	22d4 <__aeabi_fdiv>
     5f4:	e1a03000 	mov	r3, r0
     5f8:	e1a00003 	mov	r0, r3
     5fc:	eb0005f4 	bl	1dd4 <__aeabi_f2d>
     600:	e1a04000 	mov	r4, r0
     604:	e1a05001 	mov	r5, r1
     608:	e51b3560 	ldr	r3, [fp, #-1376]	@ 0xfffffaa0
     60c:	e1a00003 	mov	r0, r3
     610:	eb000692 	bl	2060 <__aeabi_i2f>
     614:	e1a03000 	mov	r3, r0
     618:	e59f10d0 	ldr	r1, [pc, #208]	@ 6f0 <main+0x67c>
     61c:	e1a00003 	mov	r0, r3
     620:	eb0006c5 	bl	213c <__aeabi_fmul>
     624:	e1a03000 	mov	r3, r0
     628:	e1a06003 	mov	r6, r3
     62c:	e51b0044 	ldr	r0, [fp, #-68]	@ 0xffffffbc
     630:	eb00068a 	bl	2060 <__aeabi_i2f>
     634:	e1a03000 	mov	r3, r0
     638:	e1a01003 	mov	r1, r3
     63c:	e1a00006 	mov	r0, r6
     640:	eb000723 	bl	22d4 <__aeabi_fdiv>
     644:	e1a03000 	mov	r3, r0
     648:	e1a00003 	mov	r0, r3
     64c:	eb0005e0 	bl	1dd4 <__aeabi_f2d>
     650:	e1a06000 	mov	r6, r0
     654:	e1a07001 	mov	r7, r1
     658:	e51b355c 	ldr	r3, [fp, #-1372]	@ 0xfffffaa4
     65c:	e1a00003 	mov	r0, r3
     660:	eb00067e 	bl	2060 <__aeabi_i2f>
     664:	e1a03000 	mov	r3, r0
     668:	e59f1080 	ldr	r1, [pc, #128]	@ 6f0 <main+0x67c>
     66c:	e1a00003 	mov	r0, r3
     670:	eb0006b1 	bl	213c <__aeabi_fmul>
     674:	e1a03000 	mov	r3, r0
     678:	e1a0a003 	mov	sl, r3
     67c:	e51b0044 	ldr	r0, [fp, #-68]	@ 0xffffffbc
     680:	eb000676 	bl	2060 <__aeabi_i2f>
     684:	e1a03000 	mov	r3, r0
     688:	e1a01003 	mov	r1, r3
     68c:	e1a0000a 	mov	r0, sl
     690:	eb00070f 	bl	22d4 <__aeabi_fdiv>
     694:	e1a03000 	mov	r3, r0
     698:	e1a00003 	mov	r0, r3
     69c:	eb0005cc 	bl	1dd4 <__aeabi_f2d>
     6a0:	e1a02000 	mov	r2, r0
     6a4:	e1a03001 	mov	r3, r1
     6a8:	e1cd21f0 	strd	r2, [sp, #16]
     6ac:	e1cd60f8 	strd	r6, [sp, #8]
     6b0:	e1cd40f0 	strd	r4, [sp]
     6b4:	e1a02008 	mov	r2, r8
     6b8:	e1a03009 	mov	r3, r9
     6bc:	e59f1030 	ldr	r1, [pc, #48]	@ 6f4 <main+0x680>
     6c0:	e3a00001 	mov	r0, #1
     6c4:	eb0002d3 	bl	1218 <printf>
     6c8:	e59f1028 	ldr	r1, [pc, #40]	@ 6f8 <main+0x684>
     6cc:	e3a00001 	mov	r0, #1
     6d0:	eb0002d0 	bl	1218 <printf>
     6d4:	eb000177 	bl	cb8 <exit>
     6d8:	00002534 	.word	0x00002534
     6dc:	00000141 	.word	0x00000141
     6e0:	00002434 	.word	0x00002434
     6e4:	00002470 	.word	0x00002470
     6e8:	00002484 	.word	0x00002484
     6ec:	000024b4 	.word	0x000024b4
     6f0:	42c80000 	.word	0x42c80000
     6f4:	000024f0 	.word	0x000024f0
     6f8:	0000251c 	.word	0x0000251c

000006fc <strcpy>:
     6fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     700:	e28db000 	add	fp, sp, #0
     704:	e24dd014 	sub	sp, sp, #20
     708:	e50b0010 	str	r0, [fp, #-16]
     70c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     710:	e51b3010 	ldr	r3, [fp, #-16]
     714:	e50b3008 	str	r3, [fp, #-8]
     718:	e1a00000 	nop			@ (mov r0, r0)
     71c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     720:	e2823001 	add	r3, r2, #1
     724:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     728:	e51b3010 	ldr	r3, [fp, #-16]
     72c:	e2831001 	add	r1, r3, #1
     730:	e50b1010 	str	r1, [fp, #-16]
     734:	e5d22000 	ldrb	r2, [r2]
     738:	e5c32000 	strb	r2, [r3]
     73c:	e5d33000 	ldrb	r3, [r3]
     740:	e3530000 	cmp	r3, #0
     744:	1afffff4 	bne	71c <strcpy+0x20>
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e1a00003 	mov	r0, r3
     750:	e28bd000 	add	sp, fp, #0
     754:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <strncmp>:
     75c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     760:	e28db000 	add	fp, sp, #0
     764:	e24dd014 	sub	sp, sp, #20
     768:	e50b0008 	str	r0, [fp, #-8]
     76c:	e50b100c 	str	r1, [fp, #-12]
     770:	e50b2010 	str	r2, [fp, #-16]
     774:	ea000008 	b	79c <strncmp+0x40>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e2833001 	add	r3, r3, #1
     780:	e50b3008 	str	r3, [fp, #-8]
     784:	e51b300c 	ldr	r3, [fp, #-12]
     788:	e2833001 	add	r3, r3, #1
     78c:	e50b300c 	str	r3, [fp, #-12]
     790:	e51b3010 	ldr	r3, [fp, #-16]
     794:	e2433001 	sub	r3, r3, #1
     798:	e50b3010 	str	r3, [fp, #-16]
     79c:	e51b3010 	ldr	r3, [fp, #-16]
     7a0:	e3530000 	cmp	r3, #0
     7a4:	da00000d 	ble	7e0 <strncmp+0x84>
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5d33000 	ldrb	r3, [r3]
     7b0:	e3530000 	cmp	r3, #0
     7b4:	0a000009 	beq	7e0 <strncmp+0x84>
     7b8:	e51b300c 	ldr	r3, [fp, #-12]
     7bc:	e5d33000 	ldrb	r3, [r3]
     7c0:	e3530000 	cmp	r3, #0
     7c4:	0a000005 	beq	7e0 <strncmp+0x84>
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e5d32000 	ldrb	r2, [r3]
     7d0:	e51b300c 	ldr	r3, [fp, #-12]
     7d4:	e5d33000 	ldrb	r3, [r3]
     7d8:	e1520003 	cmp	r2, r3
     7dc:	0affffe5 	beq	778 <strncmp+0x1c>
     7e0:	e51b3010 	ldr	r3, [fp, #-16]
     7e4:	e3530000 	cmp	r3, #0
     7e8:	1a000001 	bne	7f4 <strncmp+0x98>
     7ec:	e3a03000 	mov	r3, #0
     7f0:	ea000005 	b	80c <strncmp+0xb0>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e5d33000 	ldrb	r3, [r3]
     7fc:	e1a02003 	mov	r2, r3
     800:	e51b300c 	ldr	r3, [fp, #-12]
     804:	e5d33000 	ldrb	r3, [r3]
     808:	e0423003 	sub	r3, r2, r3
     80c:	e1a00003 	mov	r0, r3
     810:	e28bd000 	add	sp, fp, #0
     814:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <strcmp>:
     81c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     820:	e28db000 	add	fp, sp, #0
     824:	e24dd00c 	sub	sp, sp, #12
     828:	e50b0008 	str	r0, [fp, #-8]
     82c:	e50b100c 	str	r1, [fp, #-12]
     830:	ea000005 	b	84c <strcmp+0x30>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e2833001 	add	r3, r3, #1
     83c:	e50b3008 	str	r3, [fp, #-8]
     840:	e51b300c 	ldr	r3, [fp, #-12]
     844:	e2833001 	add	r3, r3, #1
     848:	e50b300c 	str	r3, [fp, #-12]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5d33000 	ldrb	r3, [r3]
     854:	e3530000 	cmp	r3, #0
     858:	0a000005 	beq	874 <strcmp+0x58>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e5d32000 	ldrb	r2, [r3]
     864:	e51b300c 	ldr	r3, [fp, #-12]
     868:	e5d33000 	ldrb	r3, [r3]
     86c:	e1520003 	cmp	r2, r3
     870:	0affffef 	beq	834 <strcmp+0x18>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5d33000 	ldrb	r3, [r3]
     87c:	e1a02003 	mov	r2, r3
     880:	e51b300c 	ldr	r3, [fp, #-12]
     884:	e5d33000 	ldrb	r3, [r3]
     888:	e0423003 	sub	r3, r2, r3
     88c:	e1a00003 	mov	r0, r3
     890:	e28bd000 	add	sp, fp, #0
     894:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <strlen>:
     89c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8a0:	e28db000 	add	fp, sp, #0
     8a4:	e24dd014 	sub	sp, sp, #20
     8a8:	e50b0010 	str	r0, [fp, #-16]
     8ac:	e3a03000 	mov	r3, #0
     8b0:	e50b3008 	str	r3, [fp, #-8]
     8b4:	ea000002 	b	8c4 <strlen+0x28>
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e2833001 	add	r3, r3, #1
     8c0:	e50b3008 	str	r3, [fp, #-8]
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e51b2010 	ldr	r2, [fp, #-16]
     8cc:	e0823003 	add	r3, r2, r3
     8d0:	e5d33000 	ldrb	r3, [r3]
     8d4:	e3530000 	cmp	r3, #0
     8d8:	1afffff6 	bne	8b8 <strlen+0x1c>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e1a00003 	mov	r0, r3
     8e4:	e28bd000 	add	sp, fp, #0
     8e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <memset>:
     8f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8f4:	e28db000 	add	fp, sp, #0
     8f8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     8fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     900:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     904:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     908:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     90c:	e50b3008 	str	r3, [fp, #-8]
     910:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     914:	e54b300d 	strb	r3, [fp, #-13]
     918:	e55b200d 	ldrb	r2, [fp, #-13]
     91c:	e1a03002 	mov	r3, r2
     920:	e1a03403 	lsl	r3, r3, #8
     924:	e0833002 	add	r3, r3, r2
     928:	e1a03803 	lsl	r3, r3, #16
     92c:	e1a02003 	mov	r2, r3
     930:	e55b300d 	ldrb	r3, [fp, #-13]
     934:	e1a03403 	lsl	r3, r3, #8
     938:	e1822003 	orr	r2, r2, r3
     93c:	e55b300d 	ldrb	r3, [fp, #-13]
     940:	e1823003 	orr	r3, r2, r3
     944:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     948:	ea000008 	b	970 <memset+0x80>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e55b200d 	ldrb	r2, [fp, #-13]
     954:	e5c32000 	strb	r2, [r3]
     958:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     95c:	e2433001 	sub	r3, r3, #1
     960:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e2833001 	add	r3, r3, #1
     96c:	e50b3008 	str	r3, [fp, #-8]
     970:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     974:	e3530000 	cmp	r3, #0
     978:	0a000003 	beq	98c <memset+0x9c>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e2033003 	and	r3, r3, #3
     984:	e3530000 	cmp	r3, #0
     988:	1affffef 	bne	94c <memset+0x5c>
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e50b300c 	str	r3, [fp, #-12]
     994:	ea000008 	b	9bc <memset+0xcc>
     998:	e51b300c 	ldr	r3, [fp, #-12]
     99c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     9a0:	e5832000 	str	r2, [r3]
     9a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     9a8:	e2433004 	sub	r3, r3, #4
     9ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     9b0:	e51b300c 	ldr	r3, [fp, #-12]
     9b4:	e2833004 	add	r3, r3, #4
     9b8:	e50b300c 	str	r3, [fp, #-12]
     9bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     9c0:	e3530003 	cmp	r3, #3
     9c4:	8afffff3 	bhi	998 <memset+0xa8>
     9c8:	e51b300c 	ldr	r3, [fp, #-12]
     9cc:	e50b3008 	str	r3, [fp, #-8]
     9d0:	ea000008 	b	9f8 <memset+0x108>
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e55b200d 	ldrb	r2, [fp, #-13]
     9dc:	e5c32000 	strb	r2, [r3]
     9e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     9e4:	e2433001 	sub	r3, r3, #1
     9e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e2833001 	add	r3, r3, #1
     9f4:	e50b3008 	str	r3, [fp, #-8]
     9f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     9fc:	e3530000 	cmp	r3, #0
     a00:	1afffff3 	bne	9d4 <memset+0xe4>
     a04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a08:	e1a00003 	mov	r0, r3
     a0c:	e28bd000 	add	sp, fp, #0
     a10:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <strchr>:
     a18:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     a1c:	e28db000 	add	fp, sp, #0
     a20:	e24dd00c 	sub	sp, sp, #12
     a24:	e50b0008 	str	r0, [fp, #-8]
     a28:	e1a03001 	mov	r3, r1
     a2c:	e54b3009 	strb	r3, [fp, #-9]
     a30:	ea000009 	b	a5c <strchr+0x44>
     a34:	e51b3008 	ldr	r3, [fp, #-8]
     a38:	e5d33000 	ldrb	r3, [r3]
     a3c:	e55b2009 	ldrb	r2, [fp, #-9]
     a40:	e1520003 	cmp	r2, r3
     a44:	1a000001 	bne	a50 <strchr+0x38>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	ea000007 	b	a70 <strchr+0x58>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e2833001 	add	r3, r3, #1
     a58:	e50b3008 	str	r3, [fp, #-8]
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e5d33000 	ldrb	r3, [r3]
     a64:	e3530000 	cmp	r3, #0
     a68:	1afffff1 	bne	a34 <strchr+0x1c>
     a6c:	e3a03000 	mov	r3, #0
     a70:	e1a00003 	mov	r0, r3
     a74:	e28bd000 	add	sp, fp, #0
     a78:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     a7c:	e12fff1e 	bx	lr

00000a80 <gets>:
     a80:	e92d4800 	push	{fp, lr}
     a84:	e28db004 	add	fp, sp, #4
     a88:	e24dd018 	sub	sp, sp, #24
     a8c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     a90:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     a94:	e3a03000 	mov	r3, #0
     a98:	e50b3008 	str	r3, [fp, #-8]
     a9c:	ea000016 	b	afc <gets+0x7c>
     aa0:	e24b300d 	sub	r3, fp, #13
     aa4:	e3a02001 	mov	r2, #1
     aa8:	e1a01003 	mov	r1, r3
     aac:	e3a00000 	mov	r0, #0
     ab0:	eb00009b 	bl	d24 <read>
     ab4:	e50b000c 	str	r0, [fp, #-12]
     ab8:	e51b300c 	ldr	r3, [fp, #-12]
     abc:	e3530000 	cmp	r3, #0
     ac0:	da000013 	ble	b14 <gets+0x94>
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e2832001 	add	r2, r3, #1
     acc:	e50b2008 	str	r2, [fp, #-8]
     ad0:	e1a02003 	mov	r2, r3
     ad4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad8:	e0833002 	add	r3, r3, r2
     adc:	e55b200d 	ldrb	r2, [fp, #-13]
     ae0:	e5c32000 	strb	r2, [r3]
     ae4:	e55b300d 	ldrb	r3, [fp, #-13]
     ae8:	e353000a 	cmp	r3, #10
     aec:	0a000009 	beq	b18 <gets+0x98>
     af0:	e55b300d 	ldrb	r3, [fp, #-13]
     af4:	e353000d 	cmp	r3, #13
     af8:	0a000006 	beq	b18 <gets+0x98>
     afc:	e51b3008 	ldr	r3, [fp, #-8]
     b00:	e2833001 	add	r3, r3, #1
     b04:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     b08:	e1520003 	cmp	r2, r3
     b0c:	caffffe3 	bgt	aa0 <gets+0x20>
     b10:	ea000000 	b	b18 <gets+0x98>
     b14:	e1a00000 	nop			@ (mov r0, r0)
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     b20:	e0823003 	add	r3, r2, r3
     b24:	e3a02000 	mov	r2, #0
     b28:	e5c32000 	strb	r2, [r3]
     b2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b30:	e1a00003 	mov	r0, r3
     b34:	e24bd004 	sub	sp, fp, #4
     b38:	e8bd8800 	pop	{fp, pc}

00000b3c <stat>:
     b3c:	e92d4800 	push	{fp, lr}
     b40:	e28db004 	add	fp, sp, #4
     b44:	e24dd010 	sub	sp, sp, #16
     b48:	e50b0010 	str	r0, [fp, #-16]
     b4c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     b50:	e3a01000 	mov	r1, #0
     b54:	e51b0010 	ldr	r0, [fp, #-16]
     b58:	eb00009e 	bl	dd8 <open>
     b5c:	e50b0008 	str	r0, [fp, #-8]
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e3530000 	cmp	r3, #0
     b68:	aa000001 	bge	b74 <stat+0x38>
     b6c:	e3e03000 	mvn	r3, #0
     b70:	ea000006 	b	b90 <stat+0x54>
     b74:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b78:	e51b0008 	ldr	r0, [fp, #-8]
     b7c:	eb0000b0 	bl	e44 <fstat>
     b80:	e50b000c 	str	r0, [fp, #-12]
     b84:	e51b0008 	ldr	r0, [fp, #-8]
     b88:	eb000077 	bl	d6c <close>
     b8c:	e51b300c 	ldr	r3, [fp, #-12]
     b90:	e1a00003 	mov	r0, r3
     b94:	e24bd004 	sub	sp, fp, #4
     b98:	e8bd8800 	pop	{fp, pc}

00000b9c <atoi>:
     b9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     ba0:	e28db000 	add	fp, sp, #0
     ba4:	e24dd014 	sub	sp, sp, #20
     ba8:	e50b0010 	str	r0, [fp, #-16]
     bac:	e3a03000 	mov	r3, #0
     bb0:	e50b3008 	str	r3, [fp, #-8]
     bb4:	ea00000c 	b	bec <atoi+0x50>
     bb8:	e51b2008 	ldr	r2, [fp, #-8]
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a03103 	lsl	r3, r3, #2
     bc4:	e0833002 	add	r3, r3, r2
     bc8:	e1a03083 	lsl	r3, r3, #1
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b3010 	ldr	r3, [fp, #-16]
     bd4:	e2832001 	add	r2, r3, #1
     bd8:	e50b2010 	str	r2, [fp, #-16]
     bdc:	e5d33000 	ldrb	r3, [r3]
     be0:	e0813003 	add	r3, r1, r3
     be4:	e2433030 	sub	r3, r3, #48	@ 0x30
     be8:	e50b3008 	str	r3, [fp, #-8]
     bec:	e51b3010 	ldr	r3, [fp, #-16]
     bf0:	e5d33000 	ldrb	r3, [r3]
     bf4:	e353002f 	cmp	r3, #47	@ 0x2f
     bf8:	9a000003 	bls	c0c <atoi+0x70>
     bfc:	e51b3010 	ldr	r3, [fp, #-16]
     c00:	e5d33000 	ldrb	r3, [r3]
     c04:	e3530039 	cmp	r3, #57	@ 0x39
     c08:	9affffea 	bls	bb8 <atoi+0x1c>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e1a00003 	mov	r0, r3
     c14:	e28bd000 	add	sp, fp, #0
     c18:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <memmove>:
     c20:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c24:	e28db000 	add	fp, sp, #0
     c28:	e24dd01c 	sub	sp, sp, #28
     c2c:	e50b0010 	str	r0, [fp, #-16]
     c30:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     c34:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     c38:	e51b3010 	ldr	r3, [fp, #-16]
     c3c:	e50b3008 	str	r3, [fp, #-8]
     c40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c44:	e50b300c 	str	r3, [fp, #-12]
     c48:	ea000007 	b	c6c <memmove+0x4c>
     c4c:	e51b200c 	ldr	r2, [fp, #-12]
     c50:	e2823001 	add	r3, r2, #1
     c54:	e50b300c 	str	r3, [fp, #-12]
     c58:	e51b3008 	ldr	r3, [fp, #-8]
     c5c:	e2831001 	add	r1, r3, #1
     c60:	e50b1008 	str	r1, [fp, #-8]
     c64:	e5d22000 	ldrb	r2, [r2]
     c68:	e5c32000 	strb	r2, [r3]
     c6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c70:	e2432001 	sub	r2, r3, #1
     c74:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     c78:	e3530000 	cmp	r3, #0
     c7c:	cafffff2 	bgt	c4c <memmove+0x2c>
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e1a00003 	mov	r0, r3
     c88:	e28bd000 	add	sp, fp, #0
     c8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <fork>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00001 	mov	r0, #1
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <exit>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00002 	mov	r0, #2
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <wait>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00003 	mov	r0, #3
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <pipe>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00004 	mov	r0, #4
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <read>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00005 	mov	r0, #5
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <write>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00010 	mov	r0, #16
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <close>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a00015 	mov	r0, #21
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <kill>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a00006 	mov	r0, #6
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <exec>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a00007 	mov	r0, #7
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <open>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a0000f 	mov	r0, #15
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <mknod>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00011 	mov	r0, #17
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <unlink>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00012 	mov	r0, #18
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <fstat>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00008 	mov	r0, #8
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <link>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00013 	mov	r0, #19
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <mkdir>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a00014 	mov	r0, #20
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <chdir>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a00009 	mov	r0, #9
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <dup>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a0000a 	mov	r0, #10
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <getpid>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a0000b 	mov	r0, #11
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <sbrk>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a0000c 	mov	r0, #12
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <sleep>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a0000d 	mov	r0, #13
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <uptime>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a0000e 	mov	r0, #14
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <ps>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00016 	mov	r0, #22
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <settickets>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00017 	mov	r0, #23
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <srand>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00018 	mov	r0, #24
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <getpinfo>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00019 	mov	r0, #25
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <printpt>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a0001a 	mov	r0, #26
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <pgpte>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a0001b 	mov	r0, #27
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <ugetpid>:
    1060:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1064:	e1a04003 	mov	r4, r3
    1068:	e1a03002 	mov	r3, r2
    106c:	e1a02001 	mov	r2, r1
    1070:	e1a01000 	mov	r1, r0
    1074:	e3a0001c 	mov	r0, #28
    1078:	ef000000 	svc	0x00000000
    107c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1080:	e12fff1e 	bx	lr

00001084 <kpt>:
    1084:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1088:	e1a04003 	mov	r4, r3
    108c:	e1a03002 	mov	r3, r2
    1090:	e1a02001 	mov	r2, r1
    1094:	e1a01000 	mov	r1, r0
    1098:	e3a0001d 	mov	r0, #29
    109c:	ef000000 	svc	0x00000000
    10a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a4:	e12fff1e 	bx	lr

000010a8 <putc>:
    10a8:	e92d4800 	push	{fp, lr}
    10ac:	e28db004 	add	fp, sp, #4
    10b0:	e24dd008 	sub	sp, sp, #8
    10b4:	e50b0008 	str	r0, [fp, #-8]
    10b8:	e1a03001 	mov	r3, r1
    10bc:	e54b3009 	strb	r3, [fp, #-9]
    10c0:	e24b3009 	sub	r3, fp, #9
    10c4:	e3a02001 	mov	r2, #1
    10c8:	e1a01003 	mov	r1, r3
    10cc:	e51b0008 	ldr	r0, [fp, #-8]
    10d0:	ebffff1c 	bl	d48 <write>
    10d4:	e1a00000 	nop			@ (mov r0, r0)
    10d8:	e24bd004 	sub	sp, fp, #4
    10dc:	e8bd8800 	pop	{fp, pc}

000010e0 <printint>:
    10e0:	e92d4800 	push	{fp, lr}
    10e4:	e28db004 	add	fp, sp, #4
    10e8:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10ec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10f0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10f4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10f8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10fc:	e3a03000 	mov	r3, #0
    1100:	e50b300c 	str	r3, [fp, #-12]
    1104:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1108:	e3530000 	cmp	r3, #0
    110c:	0a000008 	beq	1134 <printint+0x54>
    1110:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1114:	e3530000 	cmp	r3, #0
    1118:	aa000005 	bge	1134 <printint+0x54>
    111c:	e3a03001 	mov	r3, #1
    1120:	e50b300c 	str	r3, [fp, #-12]
    1124:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1128:	e2633000 	rsb	r3, r3, #0
    112c:	e50b3010 	str	r3, [fp, #-16]
    1130:	ea000001 	b	113c <printint+0x5c>
    1134:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1138:	e50b3010 	str	r3, [fp, #-16]
    113c:	e3a03000 	mov	r3, #0
    1140:	e50b3008 	str	r3, [fp, #-8]
    1144:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1148:	e51b3010 	ldr	r3, [fp, #-16]
    114c:	e1a01002 	mov	r1, r2
    1150:	e1a00003 	mov	r0, r3
    1154:	eb00023b 	bl	1a48 <__aeabi_uidivmod>
    1158:	e1a03001 	mov	r3, r1
    115c:	e1a01003 	mov	r1, r3
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e2832001 	add	r2, r3, #1
    1168:	e50b2008 	str	r2, [fp, #-8]
    116c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1214 <printint+0x134>
    1170:	e7d22001 	ldrb	r2, [r2, r1]
    1174:	e2433004 	sub	r3, r3, #4
    1178:	e083300b 	add	r3, r3, fp
    117c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1180:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1184:	e1a01003 	mov	r1, r3
    1188:	e51b0010 	ldr	r0, [fp, #-16]
    118c:	eb0001f0 	bl	1954 <__udivsi3>
    1190:	e1a03000 	mov	r3, r0
    1194:	e50b3010 	str	r3, [fp, #-16]
    1198:	e51b3010 	ldr	r3, [fp, #-16]
    119c:	e3530000 	cmp	r3, #0
    11a0:	1affffe7 	bne	1144 <printint+0x64>
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e3530000 	cmp	r3, #0
    11ac:	0a00000e 	beq	11ec <printint+0x10c>
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e2832001 	add	r2, r3, #1
    11b8:	e50b2008 	str	r2, [fp, #-8]
    11bc:	e2433004 	sub	r3, r3, #4
    11c0:	e083300b 	add	r3, r3, fp
    11c4:	e3a0202d 	mov	r2, #45	@ 0x2d
    11c8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11cc:	ea000006 	b	11ec <printint+0x10c>
    11d0:	e24b2020 	sub	r2, fp, #32
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e0823003 	add	r3, r2, r3
    11dc:	e5d33000 	ldrb	r3, [r3]
    11e0:	e1a01003 	mov	r1, r3
    11e4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11e8:	ebffffae 	bl	10a8 <putc>
    11ec:	e51b3008 	ldr	r3, [fp, #-8]
    11f0:	e2433001 	sub	r3, r3, #1
    11f4:	e50b3008 	str	r3, [fp, #-8]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e3530000 	cmp	r3, #0
    1200:	aafffff2 	bge	11d0 <printint+0xf0>
    1204:	e1a00000 	nop			@ (mov r0, r0)
    1208:	e1a00000 	nop			@ (mov r0, r0)
    120c:	e24bd004 	sub	sp, fp, #4
    1210:	e8bd8800 	pop	{fp, pc}
    1214:	0000254c 	.word	0x0000254c

00001218 <printf>:
    1218:	e92d000e 	push	{r1, r2, r3}
    121c:	e92d4800 	push	{fp, lr}
    1220:	e28db004 	add	fp, sp, #4
    1224:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1228:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    122c:	e3a03000 	mov	r3, #0
    1230:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1234:	e28b3008 	add	r3, fp, #8
    1238:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    123c:	e3a03000 	mov	r3, #0
    1240:	e50b3010 	str	r3, [fp, #-16]
    1244:	ea000074 	b	141c <printf+0x204>
    1248:	e59b2004 	ldr	r2, [fp, #4]
    124c:	e51b3010 	ldr	r3, [fp, #-16]
    1250:	e0823003 	add	r3, r2, r3
    1254:	e5d33000 	ldrb	r3, [r3]
    1258:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    125c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1260:	e3530000 	cmp	r3, #0
    1264:	1a00000b 	bne	1298 <printf+0x80>
    1268:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    126c:	e3530025 	cmp	r3, #37	@ 0x25
    1270:	1a000002 	bne	1280 <printf+0x68>
    1274:	e3a03025 	mov	r3, #37	@ 0x25
    1278:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    127c:	ea000063 	b	1410 <printf+0x1f8>
    1280:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1284:	e6ef3073 	uxtb	r3, r3
    1288:	e1a01003 	mov	r1, r3
    128c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1290:	ebffff84 	bl	10a8 <putc>
    1294:	ea00005d 	b	1410 <printf+0x1f8>
    1298:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    129c:	e3530025 	cmp	r3, #37	@ 0x25
    12a0:	1a00005a 	bne	1410 <printf+0x1f8>
    12a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a8:	e3530064 	cmp	r3, #100	@ 0x64
    12ac:	1a00000a 	bne	12dc <printf+0xc4>
    12b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b4:	e5933000 	ldr	r3, [r3]
    12b8:	e1a01003 	mov	r1, r3
    12bc:	e3a03001 	mov	r3, #1
    12c0:	e3a0200a 	mov	r2, #10
    12c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c8:	ebffff84 	bl	10e0 <printint>
    12cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12d0:	e2833004 	add	r3, r3, #4
    12d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12d8:	ea00004a 	b	1408 <printf+0x1f0>
    12dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e0:	e3530078 	cmp	r3, #120	@ 0x78
    12e4:	0a000002 	beq	12f4 <printf+0xdc>
    12e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12ec:	e3530070 	cmp	r3, #112	@ 0x70
    12f0:	1a00000a 	bne	1320 <printf+0x108>
    12f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e1a01003 	mov	r1, r3
    1300:	e3a03000 	mov	r3, #0
    1304:	e3a02010 	mov	r2, #16
    1308:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    130c:	ebffff73 	bl	10e0 <printint>
    1310:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1314:	e2833004 	add	r3, r3, #4
    1318:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    131c:	ea000039 	b	1408 <printf+0x1f0>
    1320:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1324:	e3530073 	cmp	r3, #115	@ 0x73
    1328:	1a000018 	bne	1390 <printf+0x178>
    132c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1330:	e5933000 	ldr	r3, [r3]
    1334:	e50b300c 	str	r3, [fp, #-12]
    1338:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    133c:	e2833004 	add	r3, r3, #4
    1340:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1344:	e51b300c 	ldr	r3, [fp, #-12]
    1348:	e3530000 	cmp	r3, #0
    134c:	1a00000a 	bne	137c <printf+0x164>
    1350:	e59f30f4 	ldr	r3, [pc, #244]	@ 144c <printf+0x234>
    1354:	e50b300c 	str	r3, [fp, #-12]
    1358:	ea000007 	b	137c <printf+0x164>
    135c:	e51b300c 	ldr	r3, [fp, #-12]
    1360:	e5d33000 	ldrb	r3, [r3]
    1364:	e1a01003 	mov	r1, r3
    1368:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    136c:	ebffff4d 	bl	10a8 <putc>
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e2833001 	add	r3, r3, #1
    1378:	e50b300c 	str	r3, [fp, #-12]
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e5d33000 	ldrb	r3, [r3]
    1384:	e3530000 	cmp	r3, #0
    1388:	1afffff3 	bne	135c <printf+0x144>
    138c:	ea00001d 	b	1408 <printf+0x1f0>
    1390:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1394:	e3530063 	cmp	r3, #99	@ 0x63
    1398:	1a000009 	bne	13c4 <printf+0x1ac>
    139c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a0:	e5933000 	ldr	r3, [r3]
    13a4:	e6ef3073 	uxtb	r3, r3
    13a8:	e1a01003 	mov	r1, r3
    13ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13b0:	ebffff3c 	bl	10a8 <putc>
    13b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13b8:	e2833004 	add	r3, r3, #4
    13bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13c0:	ea000010 	b	1408 <printf+0x1f0>
    13c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c8:	e3530025 	cmp	r3, #37	@ 0x25
    13cc:	1a000005 	bne	13e8 <printf+0x1d0>
    13d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d4:	e6ef3073 	uxtb	r3, r3
    13d8:	e1a01003 	mov	r1, r3
    13dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e0:	ebffff30 	bl	10a8 <putc>
    13e4:	ea000007 	b	1408 <printf+0x1f0>
    13e8:	e3a01025 	mov	r1, #37	@ 0x25
    13ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13f0:	ebffff2c 	bl	10a8 <putc>
    13f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f8:	e6ef3073 	uxtb	r3, r3
    13fc:	e1a01003 	mov	r1, r3
    1400:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1404:	ebffff27 	bl	10a8 <putc>
    1408:	e3a03000 	mov	r3, #0
    140c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1410:	e51b3010 	ldr	r3, [fp, #-16]
    1414:	e2833001 	add	r3, r3, #1
    1418:	e50b3010 	str	r3, [fp, #-16]
    141c:	e59b2004 	ldr	r2, [fp, #4]
    1420:	e51b3010 	ldr	r3, [fp, #-16]
    1424:	e0823003 	add	r3, r2, r3
    1428:	e5d33000 	ldrb	r3, [r3]
    142c:	e3530000 	cmp	r3, #0
    1430:	1affff84 	bne	1248 <printf+0x30>
    1434:	e1a00000 	nop			@ (mov r0, r0)
    1438:	e1a00000 	nop			@ (mov r0, r0)
    143c:	e24bd004 	sub	sp, fp, #4
    1440:	e8bd4800 	pop	{fp, lr}
    1444:	e28dd00c 	add	sp, sp, #12
    1448:	e12fff1e 	bx	lr
    144c:	00002544 	.word	0x00002544

00001450 <free>:
    1450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1454:	e28db000 	add	fp, sp, #0
    1458:	e24dd014 	sub	sp, sp, #20
    145c:	e50b0010 	str	r0, [fp, #-16]
    1460:	e51b3010 	ldr	r3, [fp, #-16]
    1464:	e2433008 	sub	r3, r3, #8
    1468:	e50b300c 	str	r3, [fp, #-12]
    146c:	e59f3154 	ldr	r3, [pc, #340]	@ 15c8 <free+0x178>
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e50b3008 	str	r3, [fp, #-8]
    1478:	ea000010 	b	14c0 <free+0x70>
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933000 	ldr	r3, [r3]
    1484:	e51b2008 	ldr	r2, [fp, #-8]
    1488:	e1520003 	cmp	r2, r3
    148c:	3a000008 	bcc	14b4 <free+0x64>
    1490:	e51b200c 	ldr	r2, [fp, #-12]
    1494:	e51b3008 	ldr	r3, [fp, #-8]
    1498:	e1520003 	cmp	r2, r3
    149c:	8a000010 	bhi	14e4 <free+0x94>
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5933000 	ldr	r3, [r3]
    14a8:	e51b200c 	ldr	r2, [fp, #-12]
    14ac:	e1520003 	cmp	r2, r3
    14b0:	3a00000b 	bcc	14e4 <free+0x94>
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e5933000 	ldr	r3, [r3]
    14bc:	e50b3008 	str	r3, [fp, #-8]
    14c0:	e51b200c 	ldr	r2, [fp, #-12]
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e1520003 	cmp	r2, r3
    14cc:	9affffea 	bls	147c <free+0x2c>
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e51b200c 	ldr	r2, [fp, #-12]
    14dc:	e1520003 	cmp	r2, r3
    14e0:	2affffe5 	bcs	147c <free+0x2c>
    14e4:	e51b300c 	ldr	r3, [fp, #-12]
    14e8:	e5933004 	ldr	r3, [r3, #4]
    14ec:	e1a03183 	lsl	r3, r3, #3
    14f0:	e51b200c 	ldr	r2, [fp, #-12]
    14f4:	e0822003 	add	r2, r2, r3
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5933000 	ldr	r3, [r3]
    1500:	e1520003 	cmp	r2, r3
    1504:	1a00000d 	bne	1540 <free+0xf0>
    1508:	e51b300c 	ldr	r3, [fp, #-12]
    150c:	e5932004 	ldr	r2, [r3, #4]
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e5933004 	ldr	r3, [r3, #4]
    151c:	e0822003 	add	r2, r2, r3
    1520:	e51b300c 	ldr	r3, [fp, #-12]
    1524:	e5832004 	str	r2, [r3, #4]
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5933000 	ldr	r3, [r3]
    1530:	e5932000 	ldr	r2, [r3]
    1534:	e51b300c 	ldr	r3, [fp, #-12]
    1538:	e5832000 	str	r2, [r3]
    153c:	ea000003 	b	1550 <free+0x100>
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5932000 	ldr	r2, [r3]
    1548:	e51b300c 	ldr	r3, [fp, #-12]
    154c:	e5832000 	str	r2, [r3]
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e5933004 	ldr	r3, [r3, #4]
    1558:	e1a03183 	lsl	r3, r3, #3
    155c:	e51b2008 	ldr	r2, [fp, #-8]
    1560:	e0823003 	add	r3, r2, r3
    1564:	e51b200c 	ldr	r2, [fp, #-12]
    1568:	e1520003 	cmp	r2, r3
    156c:	1a00000b 	bne	15a0 <free+0x150>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5932004 	ldr	r2, [r3, #4]
    1578:	e51b300c 	ldr	r3, [fp, #-12]
    157c:	e5933004 	ldr	r3, [r3, #4]
    1580:	e0822003 	add	r2, r2, r3
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5832004 	str	r2, [r3, #4]
    158c:	e51b300c 	ldr	r3, [fp, #-12]
    1590:	e5932000 	ldr	r2, [r3]
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e5832000 	str	r2, [r3]
    159c:	ea000002 	b	15ac <free+0x15c>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e51b200c 	ldr	r2, [fp, #-12]
    15a8:	e5832000 	str	r2, [r3]
    15ac:	e59f2014 	ldr	r2, [pc, #20]	@ 15c8 <free+0x178>
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e5823000 	str	r3, [r2]
    15b8:	e1a00000 	nop			@ (mov r0, r0)
    15bc:	e28bd000 	add	sp, fp, #0
    15c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15c4:	e12fff1e 	bx	lr
    15c8:	00002568 	.word	0x00002568

000015cc <morecore>:
    15cc:	e92d4800 	push	{fp, lr}
    15d0:	e28db004 	add	fp, sp, #4
    15d4:	e24dd010 	sub	sp, sp, #16
    15d8:	e50b0010 	str	r0, [fp, #-16]
    15dc:	e51b3010 	ldr	r3, [fp, #-16]
    15e0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    15e4:	2a000001 	bcs	15f0 <morecore+0x24>
    15e8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15ec:	e50b3010 	str	r3, [fp, #-16]
    15f0:	e51b3010 	ldr	r3, [fp, #-16]
    15f4:	e1a03183 	lsl	r3, r3, #3
    15f8:	e1a00003 	mov	r0, r3
    15fc:	ebfffe46 	bl	f1c <sbrk>
    1600:	e50b0008 	str	r0, [fp, #-8]
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e3730001 	cmn	r3, #1
    160c:	1a000001 	bne	1618 <morecore+0x4c>
    1610:	e3a03000 	mov	r3, #0
    1614:	ea00000a 	b	1644 <morecore+0x78>
    1618:	e51b3008 	ldr	r3, [fp, #-8]
    161c:	e50b300c 	str	r3, [fp, #-12]
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e51b2010 	ldr	r2, [fp, #-16]
    1628:	e5832004 	str	r2, [r3, #4]
    162c:	e51b300c 	ldr	r3, [fp, #-12]
    1630:	e2833008 	add	r3, r3, #8
    1634:	e1a00003 	mov	r0, r3
    1638:	ebffff84 	bl	1450 <free>
    163c:	e59f300c 	ldr	r3, [pc, #12]	@ 1650 <morecore+0x84>
    1640:	e5933000 	ldr	r3, [r3]
    1644:	e1a00003 	mov	r0, r3
    1648:	e24bd004 	sub	sp, fp, #4
    164c:	e8bd8800 	pop	{fp, pc}
    1650:	00002568 	.word	0x00002568

00001654 <malloc>:
    1654:	e92d4800 	push	{fp, lr}
    1658:	e28db004 	add	fp, sp, #4
    165c:	e24dd018 	sub	sp, sp, #24
    1660:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1664:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1668:	e2833007 	add	r3, r3, #7
    166c:	e1a031a3 	lsr	r3, r3, #3
    1670:	e2833001 	add	r3, r3, #1
    1674:	e50b3010 	str	r3, [fp, #-16]
    1678:	e59f3134 	ldr	r3, [pc, #308]	@ 17b4 <malloc+0x160>
    167c:	e5933000 	ldr	r3, [r3]
    1680:	e50b300c 	str	r3, [fp, #-12]
    1684:	e51b300c 	ldr	r3, [fp, #-12]
    1688:	e3530000 	cmp	r3, #0
    168c:	1a00000b 	bne	16c0 <malloc+0x6c>
    1690:	e59f3120 	ldr	r3, [pc, #288]	@ 17b8 <malloc+0x164>
    1694:	e50b300c 	str	r3, [fp, #-12]
    1698:	e59f2114 	ldr	r2, [pc, #276]	@ 17b4 <malloc+0x160>
    169c:	e51b300c 	ldr	r3, [fp, #-12]
    16a0:	e5823000 	str	r3, [r2]
    16a4:	e59f3108 	ldr	r3, [pc, #264]	@ 17b4 <malloc+0x160>
    16a8:	e5933000 	ldr	r3, [r3]
    16ac:	e59f2104 	ldr	r2, [pc, #260]	@ 17b8 <malloc+0x164>
    16b0:	e5823000 	str	r3, [r2]
    16b4:	e59f30fc 	ldr	r3, [pc, #252]	@ 17b8 <malloc+0x164>
    16b8:	e3a02000 	mov	r2, #0
    16bc:	e5832004 	str	r2, [r3, #4]
    16c0:	e51b300c 	ldr	r3, [fp, #-12]
    16c4:	e5933000 	ldr	r3, [r3]
    16c8:	e50b3008 	str	r3, [fp, #-8]
    16cc:	e51b3008 	ldr	r3, [fp, #-8]
    16d0:	e5933004 	ldr	r3, [r3, #4]
    16d4:	e51b2010 	ldr	r2, [fp, #-16]
    16d8:	e1520003 	cmp	r2, r3
    16dc:	8a00001e 	bhi	175c <malloc+0x108>
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e5933004 	ldr	r3, [r3, #4]
    16e8:	e51b2010 	ldr	r2, [fp, #-16]
    16ec:	e1520003 	cmp	r2, r3
    16f0:	1a000004 	bne	1708 <malloc+0xb4>
    16f4:	e51b3008 	ldr	r3, [fp, #-8]
    16f8:	e5932000 	ldr	r2, [r3]
    16fc:	e51b300c 	ldr	r3, [fp, #-12]
    1700:	e5832000 	str	r2, [r3]
    1704:	ea00000e 	b	1744 <malloc+0xf0>
    1708:	e51b3008 	ldr	r3, [fp, #-8]
    170c:	e5932004 	ldr	r2, [r3, #4]
    1710:	e51b3010 	ldr	r3, [fp, #-16]
    1714:	e0422003 	sub	r2, r2, r3
    1718:	e51b3008 	ldr	r3, [fp, #-8]
    171c:	e5832004 	str	r2, [r3, #4]
    1720:	e51b3008 	ldr	r3, [fp, #-8]
    1724:	e5933004 	ldr	r3, [r3, #4]
    1728:	e1a03183 	lsl	r3, r3, #3
    172c:	e51b2008 	ldr	r2, [fp, #-8]
    1730:	e0823003 	add	r3, r2, r3
    1734:	e50b3008 	str	r3, [fp, #-8]
    1738:	e51b3008 	ldr	r3, [fp, #-8]
    173c:	e51b2010 	ldr	r2, [fp, #-16]
    1740:	e5832004 	str	r2, [r3, #4]
    1744:	e59f2068 	ldr	r2, [pc, #104]	@ 17b4 <malloc+0x160>
    1748:	e51b300c 	ldr	r3, [fp, #-12]
    174c:	e5823000 	str	r3, [r2]
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e2833008 	add	r3, r3, #8
    1758:	ea000012 	b	17a8 <malloc+0x154>
    175c:	e59f3050 	ldr	r3, [pc, #80]	@ 17b4 <malloc+0x160>
    1760:	e5933000 	ldr	r3, [r3]
    1764:	e51b2008 	ldr	r2, [fp, #-8]
    1768:	e1520003 	cmp	r2, r3
    176c:	1a000007 	bne	1790 <malloc+0x13c>
    1770:	e51b0010 	ldr	r0, [fp, #-16]
    1774:	ebffff94 	bl	15cc <morecore>
    1778:	e50b0008 	str	r0, [fp, #-8]
    177c:	e51b3008 	ldr	r3, [fp, #-8]
    1780:	e3530000 	cmp	r3, #0
    1784:	1a000001 	bne	1790 <malloc+0x13c>
    1788:	e3a03000 	mov	r3, #0
    178c:	ea000005 	b	17a8 <malloc+0x154>
    1790:	e51b3008 	ldr	r3, [fp, #-8]
    1794:	e50b300c 	str	r3, [fp, #-12]
    1798:	e51b3008 	ldr	r3, [fp, #-8]
    179c:	e5933000 	ldr	r3, [r3]
    17a0:	e50b3008 	str	r3, [fp, #-8]
    17a4:	eaffffc8 	b	16cc <malloc+0x78>
    17a8:	e1a00003 	mov	r0, r3
    17ac:	e24bd004 	sub	sp, fp, #4
    17b0:	e8bd8800 	pop	{fp, pc}
    17b4:	00002568 	.word	0x00002568
    17b8:	00002560 	.word	0x00002560
    17bc:	e3a0c0ff 	mov	ip, #255	@ 0xff
    17c0:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    17c4:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    17c8:	1132000c 	teqne	r2, ip
    17cc:	1133000c 	teqne	r3, ip
    17d0:	0a00003e 	beq	18d0 <malloc+0x27c>
    17d4:	e0822003 	add	r2, r2, r3
    17d8:	e020c001 	eor	ip, r0, r1
    17dc:	e1b00480 	lsls	r0, r0, #9
    17e0:	11b01481 	lslsne	r1, r1, #9
    17e4:	0a000010 	beq	182c <malloc+0x1d8>
    17e8:	e3a03302 	mov	r3, #134217728	@ 0x8000000
    17ec:	e18302a0 	orr	r0, r3, r0, lsr #5
    17f0:	e18312a1 	orr	r1, r3, r1, lsr #5
    17f4:	e0813190 	umull	r3, r1, r0, r1
    17f8:	e20c0102 	and	r0, ip, #-2147483648	@ 0x80000000
    17fc:	e3510502 	cmp	r1, #8388608	@ 0x800000
    1800:	31a01081 	lslcc	r1, r1, #1
    1804:	31811fa3 	orrcc	r1, r1, r3, lsr #31
    1808:	31a03083 	lslcc	r3, r3, #1
    180c:	e1800001 	orr	r0, r0, r1
    1810:	e2c2207f 	sbc	r2, r2, #127	@ 0x7f
    1814:	e35200fd 	cmp	r2, #253	@ 0xfd
    1818:	8a00000f 	bhi	185c <malloc+0x208>
    181c:	e3530102 	cmp	r3, #-2147483648	@ 0x80000000
    1820:	e0a00b82 	adc	r0, r0, r2, lsl #23
    1824:	03c00001 	biceq	r0, r0, #1
    1828:	e12fff1e 	bx	lr
    182c:	e3300000 	teq	r0, #0
    1830:	e20cc102 	and	ip, ip, #-2147483648	@ 0x80000000
    1834:	01a01481 	lsleq	r1, r1, #9
    1838:	e18c04a0 	orr	r0, ip, r0, lsr #9
    183c:	e18004a1 	orr	r0, r0, r1, lsr #9
    1840:	e252207f 	subs	r2, r2, #127	@ 0x7f
    1844:	c27230ff 	rsbsgt	r3, r2, #255	@ 0xff
    1848:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    184c:	c12fff1e 	bxgt	lr
    1850:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    1854:	e3a03000 	mov	r3, #0
    1858:	e2522001 	subs	r2, r2, #1
    185c:	ca000035 	bgt	1938 <malloc+0x2e4>
    1860:	e3720019 	cmn	r2, #25
    1864:	d2000102 	andle	r0, r0, #-2147483648	@ 0x80000000
    1868:	d12fff1e 	bxle	lr
    186c:	e2622000 	rsb	r2, r2, #0
    1870:	e1b01080 	lsls	r1, r0, #1
    1874:	e1a01231 	lsr	r1, r1, r2
    1878:	e2622020 	rsb	r2, r2, #32
    187c:	e1a0c210 	lsl	ip, r0, r2
    1880:	e1b00061 	rrxs	r0, r1
    1884:	e2a00000 	adc	r0, r0, #0
    1888:	e193308c 	orrs	r3, r3, ip, lsl #1
    188c:	01c00fac 	biceq	r0, r0, ip, lsr #31
    1890:	e12fff1e 	bx	lr
    1894:	e3320000 	teq	r2, #0
    1898:	e200c102 	and	ip, r0, #-2147483648	@ 0x80000000
    189c:	01a00080 	lsleq	r0, r0, #1
    18a0:	03100502 	tsteq	r0, #8388608	@ 0x800000
    18a4:	02422001 	subeq	r2, r2, #1
    18a8:	0afffffb 	beq	189c <malloc+0x248>
    18ac:	e180000c 	orr	r0, r0, ip
    18b0:	e3330000 	teq	r3, #0
    18b4:	e201c102 	and	ip, r1, #-2147483648	@ 0x80000000
    18b8:	01a01081 	lsleq	r1, r1, #1
    18bc:	03110502 	tsteq	r1, #8388608	@ 0x800000
    18c0:	02433001 	subeq	r3, r3, #1
    18c4:	0afffffb 	beq	18b8 <malloc+0x264>
    18c8:	e181100c 	orr	r1, r1, ip
    18cc:	eaffffc0 	b	17d4 <malloc+0x180>
    18d0:	e00c3ba1 	and	r3, ip, r1, lsr #23
    18d4:	e132000c 	teq	r2, ip
    18d8:	1133000c 	teqne	r3, ip
    18dc:	0a000005 	beq	18f8 <malloc+0x2a4>
    18e0:	e3d0c102 	bics	ip, r0, #-2147483648	@ 0x80000000
    18e4:	13d1c102 	bicsne	ip, r1, #-2147483648	@ 0x80000000
    18e8:	1affffe9 	bne	1894 <malloc+0x240>
    18ec:	e0200001 	eor	r0, r0, r1
    18f0:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    18f4:	e12fff1e 	bx	lr
    18f8:	e3300000 	teq	r0, #0
    18fc:	13300102 	teqne	r0, #-2147483648	@ 0x80000000
    1900:	01a00001 	moveq	r0, r1
    1904:	13310000 	teqne	r1, #0
    1908:	13310102 	teqne	r1, #-2147483648	@ 0x80000000
    190c:	0a00000d 	beq	1948 <malloc+0x2f4>
    1910:	e132000c 	teq	r2, ip
    1914:	1a000001 	bne	1920 <malloc+0x2cc>
    1918:	e1b02480 	lsls	r2, r0, #9
    191c:	1a000009 	bne	1948 <malloc+0x2f4>
    1920:	e133000c 	teq	r3, ip
    1924:	1a000002 	bne	1934 <malloc+0x2e0>
    1928:	e1b03481 	lsls	r3, r1, #9
    192c:	11a00001 	movne	r0, r1
    1930:	1a000004 	bne	1948 <malloc+0x2f4>
    1934:	e0200001 	eor	r0, r0, r1
    1938:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    193c:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    1940:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    1944:	e12fff1e 	bx	lr
    1948:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    194c:	e3800503 	orr	r0, r0, #12582912	@ 0xc00000
    1950:	e12fff1e 	bx	lr

00001954 <__udivsi3>:
    1954:	e2512001 	subs	r2, r1, #1
    1958:	012fff1e 	bxeq	lr
    195c:	3a000036 	bcc	1a3c <__udivsi3+0xe8>
    1960:	e1500001 	cmp	r0, r1
    1964:	9a000022 	bls	19f4 <__udivsi3+0xa0>
    1968:	e1110002 	tst	r1, r2
    196c:	0a000023 	beq	1a00 <__udivsi3+0xac>
    1970:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1974:	01a01181 	lsleq	r1, r1, #3
    1978:	03a03008 	moveq	r3, #8
    197c:	13a03001 	movne	r3, #1
    1980:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1984:	31510000 	cmpcc	r1, r0
    1988:	31a01201 	lslcc	r1, r1, #4
    198c:	31a03203 	lslcc	r3, r3, #4
    1990:	3afffffa 	bcc	1980 <__udivsi3+0x2c>
    1994:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1998:	31510000 	cmpcc	r1, r0
    199c:	31a01081 	lslcc	r1, r1, #1
    19a0:	31a03083 	lslcc	r3, r3, #1
    19a4:	3afffffa 	bcc	1994 <__udivsi3+0x40>
    19a8:	e3a02000 	mov	r2, #0
    19ac:	e1500001 	cmp	r0, r1
    19b0:	20400001 	subcs	r0, r0, r1
    19b4:	21822003 	orrcs	r2, r2, r3
    19b8:	e15000a1 	cmp	r0, r1, lsr #1
    19bc:	204000a1 	subcs	r0, r0, r1, lsr #1
    19c0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    19c4:	e1500121 	cmp	r0, r1, lsr #2
    19c8:	20400121 	subcs	r0, r0, r1, lsr #2
    19cc:	21822123 	orrcs	r2, r2, r3, lsr #2
    19d0:	e15001a1 	cmp	r0, r1, lsr #3
    19d4:	204001a1 	subcs	r0, r0, r1, lsr #3
    19d8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    19dc:	e3500000 	cmp	r0, #0
    19e0:	11b03223 	lsrsne	r3, r3, #4
    19e4:	11a01221 	lsrne	r1, r1, #4
    19e8:	1affffef 	bne	19ac <__udivsi3+0x58>
    19ec:	e1a00002 	mov	r0, r2
    19f0:	e12fff1e 	bx	lr
    19f4:	03a00001 	moveq	r0, #1
    19f8:	13a00000 	movne	r0, #0
    19fc:	e12fff1e 	bx	lr
    1a00:	e3510801 	cmp	r1, #65536	@ 0x10000
    1a04:	21a01821 	lsrcs	r1, r1, #16
    1a08:	23a02010 	movcs	r2, #16
    1a0c:	33a02000 	movcc	r2, #0
    1a10:	e3510c01 	cmp	r1, #256	@ 0x100
    1a14:	21a01421 	lsrcs	r1, r1, #8
    1a18:	22822008 	addcs	r2, r2, #8
    1a1c:	e3510010 	cmp	r1, #16
    1a20:	21a01221 	lsrcs	r1, r1, #4
    1a24:	22822004 	addcs	r2, r2, #4
    1a28:	e3510004 	cmp	r1, #4
    1a2c:	82822003 	addhi	r2, r2, #3
    1a30:	908220a1 	addls	r2, r2, r1, lsr #1
    1a34:	e1a00230 	lsr	r0, r0, r2
    1a38:	e12fff1e 	bx	lr
    1a3c:	e3500000 	cmp	r0, #0
    1a40:	13e00000 	mvnne	r0, #0
    1a44:	ea000007 	b	1a68 <__aeabi_idiv0>

00001a48 <__aeabi_uidivmod>:
    1a48:	e3510000 	cmp	r1, #0
    1a4c:	0afffffa 	beq	1a3c <__udivsi3+0xe8>
    1a50:	e92d4003 	push	{r0, r1, lr}
    1a54:	ebffffbe 	bl	1954 <__udivsi3>
    1a58:	e8bd4006 	pop	{r1, r2, lr}
    1a5c:	e0030092 	mul	r3, r2, r0
    1a60:	e0411003 	sub	r1, r1, r3
    1a64:	e12fff1e 	bx	lr

00001a68 <__aeabi_idiv0>:
    1a68:	e12fff1e 	bx	lr

00001a6c <__aeabi_drsub>:
    1a6c:	e2211102 	eor	r1, r1, #-2147483648	@ 0x80000000
    1a70:	ea000000 	b	1a78 <__adddf3>

00001a74 <__aeabi_dsub>:
    1a74:	e2233102 	eor	r3, r3, #-2147483648	@ 0x80000000

00001a78 <__adddf3>:
    1a78:	e92d4030 	push	{r4, r5, lr}
    1a7c:	e1a04081 	lsl	r4, r1, #1
    1a80:	e1a05083 	lsl	r5, r3, #1
    1a84:	e1340005 	teq	r4, r5
    1a88:	01300002 	teqeq	r0, r2
    1a8c:	1194c000 	orrsne	ip, r4, r0
    1a90:	1195c002 	orrsne	ip, r5, r2
    1a94:	11f0cac4 	mvnsne	ip, r4, asr #21
    1a98:	11f0cac5 	mvnsne	ip, r5, asr #21
    1a9c:	0a00008c 	beq	1cd4 <__adddf3+0x25c>
    1aa0:	e1a04aa4 	lsr	r4, r4, #21
    1aa4:	e0745aa5 	rsbs	r5, r4, r5, lsr #21
    1aa8:	b2655000 	rsblt	r5, r5, #0
    1aac:	da000006 	ble	1acc <__adddf3+0x54>
    1ab0:	e0844005 	add	r4, r4, r5
    1ab4:	e0202002 	eor	r2, r0, r2
    1ab8:	e0213003 	eor	r3, r1, r3
    1abc:	e0220000 	eor	r0, r2, r0
    1ac0:	e0231001 	eor	r1, r3, r1
    1ac4:	e0202002 	eor	r2, r0, r2
    1ac8:	e0213003 	eor	r3, r1, r3
    1acc:	e3550036 	cmp	r5, #54	@ 0x36
    1ad0:	88bd4030 	pophi	{r4, r5, lr}
    1ad4:	812fff1e 	bxhi	lr
    1ad8:	e3110102 	tst	r1, #-2147483648	@ 0x80000000
    1adc:	e1a01601 	lsl	r1, r1, #12
    1ae0:	e3a0c601 	mov	ip, #1048576	@ 0x100000
    1ae4:	e18c1621 	orr	r1, ip, r1, lsr #12
    1ae8:	0a000001 	beq	1af4 <__adddf3+0x7c>
    1aec:	e2700000 	rsbs	r0, r0, #0
    1af0:	e2e11000 	rsc	r1, r1, #0
    1af4:	e3130102 	tst	r3, #-2147483648	@ 0x80000000
    1af8:	e1a03603 	lsl	r3, r3, #12
    1afc:	e18c3623 	orr	r3, ip, r3, lsr #12
    1b00:	0a000001 	beq	1b0c <__adddf3+0x94>
    1b04:	e2722000 	rsbs	r2, r2, #0
    1b08:	e2e33000 	rsc	r3, r3, #0
    1b0c:	e1340005 	teq	r4, r5
    1b10:	0a000069 	beq	1cbc <__adddf3+0x244>
    1b14:	e2444001 	sub	r4, r4, #1
    1b18:	e275e020 	rsbs	lr, r5, #32
    1b1c:	ba000005 	blt	1b38 <__adddf3+0xc0>
    1b20:	e1a0ce12 	lsl	ip, r2, lr
    1b24:	e0900532 	adds	r0, r0, r2, lsr r5
    1b28:	e2a11000 	adc	r1, r1, #0
    1b2c:	e0900e13 	adds	r0, r0, r3, lsl lr
    1b30:	e0b11553 	adcs	r1, r1, r3, asr r5
    1b34:	ea000006 	b	1b54 <__adddf3+0xdc>
    1b38:	e2455020 	sub	r5, r5, #32
    1b3c:	e28ee020 	add	lr, lr, #32
    1b40:	e3520001 	cmp	r2, #1
    1b44:	e1a0ce13 	lsl	ip, r3, lr
    1b48:	238cc002 	orrcs	ip, ip, #2
    1b4c:	e0900553 	adds	r0, r0, r3, asr r5
    1b50:	e0b11fc3 	adcs	r1, r1, r3, asr #31
    1b54:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    1b58:	5a000002 	bpl	1b68 <__adddf3+0xf0>
    1b5c:	e27cc000 	rsbs	ip, ip, #0
    1b60:	e2f00000 	rscs	r0, r0, #0
    1b64:	e2e11000 	rsc	r1, r1, #0
    1b68:	e3510601 	cmp	r1, #1048576	@ 0x100000
    1b6c:	3a00000f 	bcc	1bb0 <__adddf3+0x138>
    1b70:	e3510602 	cmp	r1, #2097152	@ 0x200000
    1b74:	3a000006 	bcc	1b94 <__adddf3+0x11c>
    1b78:	e1b010a1 	lsrs	r1, r1, #1
    1b7c:	e1b00060 	rrxs	r0, r0
    1b80:	e1a0c06c 	rrx	ip, ip
    1b84:	e2844001 	add	r4, r4, #1
    1b88:	e1a02a84 	lsl	r2, r4, #21
    1b8c:	e3720501 	cmn	r2, #4194304	@ 0x400000
    1b90:	2a00006b 	bcs	1d44 <__adddf3+0x2cc>
    1b94:	e35c0102 	cmp	ip, #-2147483648	@ 0x80000000
    1b98:	01b0c0a0 	lsrseq	ip, r0, #1
    1b9c:	e2b00000 	adcs	r0, r0, #0
    1ba0:	e0a11a04 	adc	r1, r1, r4, lsl #20
    1ba4:	e1811005 	orr	r1, r1, r5
    1ba8:	e8bd4030 	pop	{r4, r5, lr}
    1bac:	e12fff1e 	bx	lr
    1bb0:	e1b0c08c 	lsls	ip, ip, #1
    1bb4:	e0b00000 	adcs	r0, r0, r0
    1bb8:	e0a11001 	adc	r1, r1, r1
    1bbc:	e2544001 	subs	r4, r4, #1
    1bc0:	23510601 	cmpcs	r1, #1048576	@ 0x100000
    1bc4:	2afffff2 	bcs	1b94 <__adddf3+0x11c>
    1bc8:	e3310000 	teq	r1, #0
    1bcc:	13a03014 	movne	r3, #20
    1bd0:	03a03034 	moveq	r3, #52	@ 0x34
    1bd4:	01a01000 	moveq	r1, r0
    1bd8:	03a00000 	moveq	r0, #0
    1bdc:	e1a02001 	mov	r2, r1
    1be0:	e3520801 	cmp	r2, #65536	@ 0x10000
    1be4:	21a02822 	lsrcs	r2, r2, #16
    1be8:	22433010 	subcs	r3, r3, #16
    1bec:	e3520c01 	cmp	r2, #256	@ 0x100
    1bf0:	21a02422 	lsrcs	r2, r2, #8
    1bf4:	22433008 	subcs	r3, r3, #8
    1bf8:	e3520010 	cmp	r2, #16
    1bfc:	21a02222 	lsrcs	r2, r2, #4
    1c00:	22433004 	subcs	r3, r3, #4
    1c04:	e3520004 	cmp	r2, #4
    1c08:	22433002 	subcs	r3, r3, #2
    1c0c:	304330a2 	subcc	r3, r3, r2, lsr #1
    1c10:	e04331a2 	sub	r3, r3, r2, lsr #3
    1c14:	e2532020 	subs	r2, r3, #32
    1c18:	aa000007 	bge	1c3c <__adddf3+0x1c4>
    1c1c:	e292200c 	adds	r2, r2, #12
    1c20:	da000004 	ble	1c38 <__adddf3+0x1c0>
    1c24:	e282c014 	add	ip, r2, #20
    1c28:	e262200c 	rsb	r2, r2, #12
    1c2c:	e1a00c11 	lsl	r0, r1, ip
    1c30:	e1a01231 	lsr	r1, r1, r2
    1c34:	ea000004 	b	1c4c <__adddf3+0x1d4>
    1c38:	e2822014 	add	r2, r2, #20
    1c3c:	d262c020 	rsble	ip, r2, #32
    1c40:	e1a01211 	lsl	r1, r1, r2
    1c44:	d1811c30 	orrle	r1, r1, r0, lsr ip
    1c48:	d1a00210 	lslle	r0, r0, r2
    1c4c:	e0544003 	subs	r4, r4, r3
    1c50:	a0811a04 	addge	r1, r1, r4, lsl #20
    1c54:	a1811005 	orrge	r1, r1, r5
    1c58:	a8bd4030 	popge	{r4, r5, lr}
    1c5c:	a12fff1e 	bxge	lr
    1c60:	e1e04004 	mvn	r4, r4
    1c64:	e254401f 	subs	r4, r4, #31
    1c68:	aa00000f 	bge	1cac <__adddf3+0x234>
    1c6c:	e294400c 	adds	r4, r4, #12
    1c70:	ca000006 	bgt	1c90 <__adddf3+0x218>
    1c74:	e2844014 	add	r4, r4, #20
    1c78:	e2642020 	rsb	r2, r4, #32
    1c7c:	e1a00430 	lsr	r0, r0, r4
    1c80:	e1800211 	orr	r0, r0, r1, lsl r2
    1c84:	e1851431 	orr	r1, r5, r1, lsr r4
    1c88:	e8bd4030 	pop	{r4, r5, lr}
    1c8c:	e12fff1e 	bx	lr
    1c90:	e264400c 	rsb	r4, r4, #12
    1c94:	e2642020 	rsb	r2, r4, #32
    1c98:	e1a00230 	lsr	r0, r0, r2
    1c9c:	e1800411 	orr	r0, r0, r1, lsl r4
    1ca0:	e1a01005 	mov	r1, r5
    1ca4:	e8bd4030 	pop	{r4, r5, lr}
    1ca8:	e12fff1e 	bx	lr
    1cac:	e1a00431 	lsr	r0, r1, r4
    1cb0:	e1a01005 	mov	r1, r5
    1cb4:	e8bd4030 	pop	{r4, r5, lr}
    1cb8:	e12fff1e 	bx	lr
    1cbc:	e3340000 	teq	r4, #0
    1cc0:	e2233601 	eor	r3, r3, #1048576	@ 0x100000
    1cc4:	02211601 	eoreq	r1, r1, #1048576	@ 0x100000
    1cc8:	02844001 	addeq	r4, r4, #1
    1ccc:	12455001 	subne	r5, r5, #1
    1cd0:	eaffff8f 	b	1b14 <__adddf3+0x9c>
    1cd4:	e1f0cac4 	mvns	ip, r4, asr #21
    1cd8:	11f0cac5 	mvnsne	ip, r5, asr #21
    1cdc:	0a00001d 	beq	1d58 <__adddf3+0x2e0>
    1ce0:	e1340005 	teq	r4, r5
    1ce4:	01300002 	teqeq	r0, r2
    1ce8:	0a000004 	beq	1d00 <__adddf3+0x288>
    1cec:	e194c000 	orrs	ip, r4, r0
    1cf0:	01a01003 	moveq	r1, r3
    1cf4:	01a00002 	moveq	r0, r2
    1cf8:	e8bd4030 	pop	{r4, r5, lr}
    1cfc:	e12fff1e 	bx	lr
    1d00:	e1310003 	teq	r1, r3
    1d04:	13a01000 	movne	r1, #0
    1d08:	13a00000 	movne	r0, #0
    1d0c:	18bd4030 	popne	{r4, r5, lr}
    1d10:	112fff1e 	bxne	lr
    1d14:	e1b0caa4 	lsrs	ip, r4, #21
    1d18:	1a000004 	bne	1d30 <__adddf3+0x2b8>
    1d1c:	e1b00080 	lsls	r0, r0, #1
    1d20:	e0b11001 	adcs	r1, r1, r1
    1d24:	23811102 	orrcs	r1, r1, #-2147483648	@ 0x80000000
    1d28:	e8bd4030 	pop	{r4, r5, lr}
    1d2c:	e12fff1e 	bx	lr
    1d30:	e2944501 	adds	r4, r4, #4194304	@ 0x400000
    1d34:	32811601 	addcc	r1, r1, #1048576	@ 0x100000
    1d38:	38bd4030 	popcc	{r4, r5, lr}
    1d3c:	312fff1e 	bxcc	lr
    1d40:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    1d44:	e385147f 	orr	r1, r5, #2130706432	@ 0x7f000000
    1d48:	e381160f 	orr	r1, r1, #15728640	@ 0xf00000
    1d4c:	e3a00000 	mov	r0, #0
    1d50:	e8bd4030 	pop	{r4, r5, lr}
    1d54:	e12fff1e 	bx	lr
    1d58:	e1f0cac4 	mvns	ip, r4, asr #21
    1d5c:	11a01003 	movne	r1, r3
    1d60:	11a00002 	movne	r0, r2
    1d64:	01f0cac5 	mvnseq	ip, r5, asr #21
    1d68:	11a03001 	movne	r3, r1
    1d6c:	11a02000 	movne	r2, r0
    1d70:	e1904601 	orrs	r4, r0, r1, lsl #12
    1d74:	01925603 	orrseq	r5, r2, r3, lsl #12
    1d78:	01310003 	teqeq	r1, r3
    1d7c:	13811702 	orrne	r1, r1, #524288	@ 0x80000
    1d80:	e8bd4030 	pop	{r4, r5, lr}
    1d84:	e12fff1e 	bx	lr

00001d88 <__aeabi_ui2d>:
    1d88:	e3300000 	teq	r0, #0
    1d8c:	03a01000 	moveq	r1, #0
    1d90:	012fff1e 	bxeq	lr
    1d94:	e92d4030 	push	{r4, r5, lr}
    1d98:	e3a04b01 	mov	r4, #1024	@ 0x400
    1d9c:	e2844032 	add	r4, r4, #50	@ 0x32
    1da0:	e3a05000 	mov	r5, #0
    1da4:	e3a01000 	mov	r1, #0
    1da8:	eaffff86 	b	1bc8 <__adddf3+0x150>

00001dac <__aeabi_i2d>:
    1dac:	e3300000 	teq	r0, #0
    1db0:	03a01000 	moveq	r1, #0
    1db4:	012fff1e 	bxeq	lr
    1db8:	e92d4030 	push	{r4, r5, lr}
    1dbc:	e3a04b01 	mov	r4, #1024	@ 0x400
    1dc0:	e2844032 	add	r4, r4, #50	@ 0x32
    1dc4:	e2105102 	ands	r5, r0, #-2147483648	@ 0x80000000
    1dc8:	42600000 	rsbmi	r0, r0, #0
    1dcc:	e3a01000 	mov	r1, #0
    1dd0:	eaffff7c 	b	1bc8 <__adddf3+0x150>

00001dd4 <__aeabi_f2d>:
    1dd4:	e1b02080 	lsls	r2, r0, #1
    1dd8:	e1a011c2 	asr	r1, r2, #3
    1ddc:	e1a01061 	rrx	r1, r1
    1de0:	e1a00e02 	lsl	r0, r2, #28
    1de4:	121234ff 	andsne	r3, r2, #-16777216	@ 0xff000000
    1de8:	133304ff 	teqne	r3, #-16777216	@ 0xff000000
    1dec:	1221130e 	eorne	r1, r1, #939524096	@ 0x38000000
    1df0:	112fff1e 	bxne	lr
    1df4:	e3d224ff 	bics	r2, r2, #-16777216	@ 0xff000000
    1df8:	012fff1e 	bxeq	lr
    1dfc:	e33304ff 	teq	r3, #-16777216	@ 0xff000000
    1e00:	03811702 	orreq	r1, r1, #524288	@ 0x80000
    1e04:	012fff1e 	bxeq	lr
    1e08:	e92d4030 	push	{r4, r5, lr}
    1e0c:	e3a04d0e 	mov	r4, #896	@ 0x380
    1e10:	e2015102 	and	r5, r1, #-2147483648	@ 0x80000000
    1e14:	e3c11102 	bic	r1, r1, #-2147483648	@ 0x80000000
    1e18:	eaffff6a 	b	1bc8 <__adddf3+0x150>

00001e1c <__aeabi_ul2d>:
    1e1c:	e1902001 	orrs	r2, r0, r1
    1e20:	012fff1e 	bxeq	lr
    1e24:	e92d4030 	push	{r4, r5, lr}
    1e28:	e3a05000 	mov	r5, #0
    1e2c:	ea000006 	b	1e4c <__aeabi_l2d+0x1c>

00001e30 <__aeabi_l2d>:
    1e30:	e1902001 	orrs	r2, r0, r1
    1e34:	012fff1e 	bxeq	lr
    1e38:	e92d4030 	push	{r4, r5, lr}
    1e3c:	e2115102 	ands	r5, r1, #-2147483648	@ 0x80000000
    1e40:	5a000001 	bpl	1e4c <__aeabi_l2d+0x1c>
    1e44:	e2700000 	rsbs	r0, r0, #0
    1e48:	e2e11000 	rsc	r1, r1, #0
    1e4c:	e3a04b01 	mov	r4, #1024	@ 0x400
    1e50:	e2844032 	add	r4, r4, #50	@ 0x32
    1e54:	e1b0cb21 	lsrs	ip, r1, #22
    1e58:	0affff42 	beq	1b68 <__adddf3+0xf0>
    1e5c:	e3a02003 	mov	r2, #3
    1e60:	e1b0c1ac 	lsrs	ip, ip, #3
    1e64:	12822003 	addne	r2, r2, #3
    1e68:	e1b0c1ac 	lsrs	ip, ip, #3
    1e6c:	12822003 	addne	r2, r2, #3
    1e70:	e08221ac 	add	r2, r2, ip, lsr #3
    1e74:	e2623020 	rsb	r3, r2, #32
    1e78:	e1a0c310 	lsl	ip, r0, r3
    1e7c:	e1a00230 	lsr	r0, r0, r2
    1e80:	e1800311 	orr	r0, r0, r1, lsl r3
    1e84:	e1a01231 	lsr	r1, r1, r2
    1e88:	e0844002 	add	r4, r4, r2
    1e8c:	eaffff35 	b	1b68 <__adddf3+0xf0>

00001e90 <__aeabi_frsub>:
    1e90:	e2200102 	eor	r0, r0, #-2147483648	@ 0x80000000
    1e94:	ea000000 	b	1e9c <__addsf3>

00001e98 <__aeabi_fsub>:
    1e98:	e2211102 	eor	r1, r1, #-2147483648	@ 0x80000000

00001e9c <__addsf3>:
    1e9c:	e1b02080 	lsls	r2, r0, #1
    1ea0:	11b03081 	lslsne	r3, r1, #1
    1ea4:	11320003 	teqne	r2, r3
    1ea8:	11f0cc42 	mvnsne	ip, r2, asr #24
    1eac:	11f0cc43 	mvnsne	ip, r3, asr #24
    1eb0:	0a000047 	beq	1fd4 <__addsf3+0x138>
    1eb4:	e1a02c22 	lsr	r2, r2, #24
    1eb8:	e0723c23 	rsbs	r3, r2, r3, lsr #24
    1ebc:	c0822003 	addgt	r2, r2, r3
    1ec0:	c0201001 	eorgt	r1, r0, r1
    1ec4:	c0210000 	eorgt	r0, r1, r0
    1ec8:	c0201001 	eorgt	r1, r0, r1
    1ecc:	b2633000 	rsblt	r3, r3, #0
    1ed0:	e3530019 	cmp	r3, #25
    1ed4:	812fff1e 	bxhi	lr
    1ed8:	e3100102 	tst	r0, #-2147483648	@ 0x80000000
    1edc:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    1ee0:	e3c004ff 	bic	r0, r0, #-16777216	@ 0xff000000
    1ee4:	12600000 	rsbne	r0, r0, #0
    1ee8:	e3110102 	tst	r1, #-2147483648	@ 0x80000000
    1eec:	e3811502 	orr	r1, r1, #8388608	@ 0x800000
    1ef0:	e3c114ff 	bic	r1, r1, #-16777216	@ 0xff000000
    1ef4:	12611000 	rsbne	r1, r1, #0
    1ef8:	e1320003 	teq	r2, r3
    1efc:	0a00002e 	beq	1fbc <__addsf3+0x120>
    1f00:	e2422001 	sub	r2, r2, #1
    1f04:	e0900351 	adds	r0, r0, r1, asr r3
    1f08:	e2633020 	rsb	r3, r3, #32
    1f0c:	e1a01311 	lsl	r1, r1, r3
    1f10:	e2003102 	and	r3, r0, #-2147483648	@ 0x80000000
    1f14:	5a000001 	bpl	1f20 <__addsf3+0x84>
    1f18:	e2711000 	rsbs	r1, r1, #0
    1f1c:	e2e00000 	rsc	r0, r0, #0
    1f20:	e3500502 	cmp	r0, #8388608	@ 0x800000
    1f24:	3a00000b 	bcc	1f58 <__addsf3+0xbc>
    1f28:	e3500401 	cmp	r0, #16777216	@ 0x1000000
    1f2c:	3a000004 	bcc	1f44 <__addsf3+0xa8>
    1f30:	e1b000a0 	lsrs	r0, r0, #1
    1f34:	e1a01061 	rrx	r1, r1
    1f38:	e2822001 	add	r2, r2, #1
    1f3c:	e35200fe 	cmp	r2, #254	@ 0xfe
    1f40:	2a000038 	bcs	2028 <__addsf3+0x18c>
    1f44:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1f48:	e0a00b82 	adc	r0, r0, r2, lsl #23
    1f4c:	03c00001 	biceq	r0, r0, #1
    1f50:	e1800003 	orr	r0, r0, r3
    1f54:	e12fff1e 	bx	lr
    1f58:	e1b01081 	lsls	r1, r1, #1
    1f5c:	e0a00000 	adc	r0, r0, r0
    1f60:	e2522001 	subs	r2, r2, #1
    1f64:	23500502 	cmpcs	r0, #8388608	@ 0x800000
    1f68:	2afffff5 	bcs	1f44 <__addsf3+0xa8>
    1f6c:	e1b0c620 	lsrs	ip, r0, #12
    1f70:	01a00600 	lsleq	r0, r0, #12
    1f74:	0242200c 	subeq	r2, r2, #12
    1f78:	e31008ff 	tst	r0, #16711680	@ 0xff0000
    1f7c:	01a00400 	lsleq	r0, r0, #8
    1f80:	02422008 	subeq	r2, r2, #8
    1f84:	e310060f 	tst	r0, #15728640	@ 0xf00000
    1f88:	01a00200 	lsleq	r0, r0, #4
    1f8c:	02422004 	subeq	r2, r2, #4
    1f90:	e3100503 	tst	r0, #12582912	@ 0xc00000
    1f94:	01a00100 	lsleq	r0, r0, #2
    1f98:	02422002 	subeq	r2, r2, #2
    1f9c:	e3500502 	cmp	r0, #8388608	@ 0x800000
    1fa0:	31a00080 	lslcc	r0, r0, #1
    1fa4:	e2d22000 	sbcs	r2, r2, #0
    1fa8:	a0800b82 	addge	r0, r0, r2, lsl #23
    1fac:	b2622000 	rsblt	r2, r2, #0
    1fb0:	a1800003 	orrge	r0, r0, r3
    1fb4:	b1830230 	orrlt	r0, r3, r0, lsr r2
    1fb8:	e12fff1e 	bx	lr
    1fbc:	e3320000 	teq	r2, #0
    1fc0:	e2211502 	eor	r1, r1, #8388608	@ 0x800000
    1fc4:	02200502 	eoreq	r0, r0, #8388608	@ 0x800000
    1fc8:	02822001 	addeq	r2, r2, #1
    1fcc:	12433001 	subne	r3, r3, #1
    1fd0:	eaffffca 	b	1f00 <__addsf3+0x64>
    1fd4:	e1a03081 	lsl	r3, r1, #1
    1fd8:	e1f0cc42 	mvns	ip, r2, asr #24
    1fdc:	11f0cc43 	mvnsne	ip, r3, asr #24
    1fe0:	0a000013 	beq	2034 <__addsf3+0x198>
    1fe4:	e1320003 	teq	r2, r3
    1fe8:	0a000002 	beq	1ff8 <__addsf3+0x15c>
    1fec:	e3320000 	teq	r2, #0
    1ff0:	01a00001 	moveq	r0, r1
    1ff4:	e12fff1e 	bx	lr
    1ff8:	e1300001 	teq	r0, r1
    1ffc:	13a00000 	movne	r0, #0
    2000:	112fff1e 	bxne	lr
    2004:	e31204ff 	tst	r2, #-16777216	@ 0xff000000
    2008:	1a000002 	bne	2018 <__addsf3+0x17c>
    200c:	e1b00080 	lsls	r0, r0, #1
    2010:	23800102 	orrcs	r0, r0, #-2147483648	@ 0x80000000
    2014:	e12fff1e 	bx	lr
    2018:	e2922402 	adds	r2, r2, #33554432	@ 0x2000000
    201c:	32800502 	addcc	r0, r0, #8388608	@ 0x800000
    2020:	312fff1e 	bxcc	lr
    2024:	e2003102 	and	r3, r0, #-2147483648	@ 0x80000000
    2028:	e383047f 	orr	r0, r3, #2130706432	@ 0x7f000000
    202c:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    2030:	e12fff1e 	bx	lr
    2034:	e1f02c42 	mvns	r2, r2, asr #24
    2038:	11a00001 	movne	r0, r1
    203c:	01f03c43 	mvnseq	r3, r3, asr #24
    2040:	11a01000 	movne	r1, r0
    2044:	e1b02480 	lsls	r2, r0, #9
    2048:	01b03481 	lslseq	r3, r1, #9
    204c:	01300001 	teqeq	r0, r1
    2050:	13800501 	orrne	r0, r0, #4194304	@ 0x400000
    2054:	e12fff1e 	bx	lr

00002058 <__aeabi_ui2f>:
    2058:	e3a03000 	mov	r3, #0
    205c:	ea000001 	b	2068 <__aeabi_i2f+0x8>

00002060 <__aeabi_i2f>:
    2060:	e2103102 	ands	r3, r0, #-2147483648	@ 0x80000000
    2064:	42600000 	rsbmi	r0, r0, #0
    2068:	e1b0c000 	movs	ip, r0
    206c:	012fff1e 	bxeq	lr
    2070:	e383344b 	orr	r3, r3, #1258291200	@ 0x4b000000
    2074:	e1a01000 	mov	r1, r0
    2078:	e3a00000 	mov	r0, #0
    207c:	ea00000f 	b	20c0 <__aeabi_l2f+0x30>

00002080 <__aeabi_ul2f>:
    2080:	e1902001 	orrs	r2, r0, r1
    2084:	012fff1e 	bxeq	lr
    2088:	e3a03000 	mov	r3, #0
    208c:	ea000005 	b	20a8 <__aeabi_l2f+0x18>

00002090 <__aeabi_l2f>:
    2090:	e1902001 	orrs	r2, r0, r1
    2094:	012fff1e 	bxeq	lr
    2098:	e2113102 	ands	r3, r1, #-2147483648	@ 0x80000000
    209c:	5a000001 	bpl	20a8 <__aeabi_l2f+0x18>
    20a0:	e2700000 	rsbs	r0, r0, #0
    20a4:	e2e11000 	rsc	r1, r1, #0
    20a8:	e1b0c001 	movs	ip, r1
    20ac:	01a0c000 	moveq	ip, r0
    20b0:	01a01000 	moveq	r1, r0
    20b4:	03a00000 	moveq	r0, #0
    20b8:	e383345b 	orr	r3, r3, #1526726656	@ 0x5b000000
    20bc:	02433201 	subeq	r3, r3, #268435456	@ 0x10000000
    20c0:	e2433502 	sub	r3, r3, #8388608	@ 0x800000
    20c4:	e3a02017 	mov	r2, #23
    20c8:	e35c0801 	cmp	ip, #65536	@ 0x10000
    20cc:	21a0c82c 	lsrcs	ip, ip, #16
    20d0:	22422010 	subcs	r2, r2, #16
    20d4:	e35c0c01 	cmp	ip, #256	@ 0x100
    20d8:	21a0c42c 	lsrcs	ip, ip, #8
    20dc:	22422008 	subcs	r2, r2, #8
    20e0:	e35c0010 	cmp	ip, #16
    20e4:	21a0c22c 	lsrcs	ip, ip, #4
    20e8:	22422004 	subcs	r2, r2, #4
    20ec:	e35c0004 	cmp	ip, #4
    20f0:	22422002 	subcs	r2, r2, #2
    20f4:	304220ac 	subcc	r2, r2, ip, lsr #1
    20f8:	e05221ac 	subs	r2, r2, ip, lsr #3
    20fc:	e0433b82 	sub	r3, r3, r2, lsl #23
    2100:	ba000006 	blt	2120 <__aeabi_l2f+0x90>
    2104:	e0833211 	add	r3, r3, r1, lsl r2
    2108:	e1a0c210 	lsl	ip, r0, r2
    210c:	e2622020 	rsb	r2, r2, #32
    2110:	e35c0102 	cmp	ip, #-2147483648	@ 0x80000000
    2114:	e0a30230 	adc	r0, r3, r0, lsr r2
    2118:	03c00001 	biceq	r0, r0, #1
    211c:	e12fff1e 	bx	lr
    2120:	e2822020 	add	r2, r2, #32
    2124:	e1a0c211 	lsl	ip, r1, r2
    2128:	e2622020 	rsb	r2, r2, #32
    212c:	e190008c 	orrs	r0, r0, ip, lsl #1
    2130:	e0a30231 	adc	r0, r3, r1, lsr r2
    2134:	01c00fac 	biceq	r0, r0, ip, lsr #31
    2138:	e12fff1e 	bx	lr

0000213c <__aeabi_fmul>:
    213c:	e3a0c0ff 	mov	ip, #255	@ 0xff
    2140:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    2144:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    2148:	1132000c 	teqne	r2, ip
    214c:	1133000c 	teqne	r3, ip
    2150:	0a00003e 	beq	2250 <__aeabi_fmul+0x114>
    2154:	e0822003 	add	r2, r2, r3
    2158:	e020c001 	eor	ip, r0, r1
    215c:	e1b00480 	lsls	r0, r0, #9
    2160:	11b01481 	lslsne	r1, r1, #9
    2164:	0a000010 	beq	21ac <__aeabi_fmul+0x70>
    2168:	e3a03302 	mov	r3, #134217728	@ 0x8000000
    216c:	e18302a0 	orr	r0, r3, r0, lsr #5
    2170:	e18312a1 	orr	r1, r3, r1, lsr #5
    2174:	e0813190 	umull	r3, r1, r0, r1
    2178:	e20c0102 	and	r0, ip, #-2147483648	@ 0x80000000
    217c:	e3510502 	cmp	r1, #8388608	@ 0x800000
    2180:	31a01081 	lslcc	r1, r1, #1
    2184:	31811fa3 	orrcc	r1, r1, r3, lsr #31
    2188:	31a03083 	lslcc	r3, r3, #1
    218c:	e1800001 	orr	r0, r0, r1
    2190:	e2c2207f 	sbc	r2, r2, #127	@ 0x7f
    2194:	e35200fd 	cmp	r2, #253	@ 0xfd
    2198:	8a00000f 	bhi	21dc <__aeabi_fmul+0xa0>
    219c:	e3530102 	cmp	r3, #-2147483648	@ 0x80000000
    21a0:	e0a00b82 	adc	r0, r0, r2, lsl #23
    21a4:	03c00001 	biceq	r0, r0, #1
    21a8:	e12fff1e 	bx	lr
    21ac:	e3300000 	teq	r0, #0
    21b0:	e20cc102 	and	ip, ip, #-2147483648	@ 0x80000000
    21b4:	01a01481 	lsleq	r1, r1, #9
    21b8:	e18c04a0 	orr	r0, ip, r0, lsr #9
    21bc:	e18004a1 	orr	r0, r0, r1, lsr #9
    21c0:	e252207f 	subs	r2, r2, #127	@ 0x7f
    21c4:	c27230ff 	rsbsgt	r3, r2, #255	@ 0xff
    21c8:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    21cc:	c12fff1e 	bxgt	lr
    21d0:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    21d4:	e3a03000 	mov	r3, #0
    21d8:	e2522001 	subs	r2, r2, #1
    21dc:	ca000035 	bgt	22b8 <__aeabi_fmul+0x17c>
    21e0:	e3720019 	cmn	r2, #25
    21e4:	d2000102 	andle	r0, r0, #-2147483648	@ 0x80000000
    21e8:	d12fff1e 	bxle	lr
    21ec:	e2622000 	rsb	r2, r2, #0
    21f0:	e1b01080 	lsls	r1, r0, #1
    21f4:	e1a01231 	lsr	r1, r1, r2
    21f8:	e2622020 	rsb	r2, r2, #32
    21fc:	e1a0c210 	lsl	ip, r0, r2
    2200:	e1b00061 	rrxs	r0, r1
    2204:	e2a00000 	adc	r0, r0, #0
    2208:	e193308c 	orrs	r3, r3, ip, lsl #1
    220c:	01c00fac 	biceq	r0, r0, ip, lsr #31
    2210:	e12fff1e 	bx	lr
    2214:	e3320000 	teq	r2, #0
    2218:	e200c102 	and	ip, r0, #-2147483648	@ 0x80000000
    221c:	01a00080 	lsleq	r0, r0, #1
    2220:	03100502 	tsteq	r0, #8388608	@ 0x800000
    2224:	02422001 	subeq	r2, r2, #1
    2228:	0afffffb 	beq	221c <__aeabi_fmul+0xe0>
    222c:	e180000c 	orr	r0, r0, ip
    2230:	e3330000 	teq	r3, #0
    2234:	e201c102 	and	ip, r1, #-2147483648	@ 0x80000000
    2238:	01a01081 	lsleq	r1, r1, #1
    223c:	03110502 	tsteq	r1, #8388608	@ 0x800000
    2240:	02433001 	subeq	r3, r3, #1
    2244:	0afffffb 	beq	2238 <__aeabi_fmul+0xfc>
    2248:	e181100c 	orr	r1, r1, ip
    224c:	eaffffc0 	b	2154 <__aeabi_fmul+0x18>
    2250:	e00c3ba1 	and	r3, ip, r1, lsr #23
    2254:	e132000c 	teq	r2, ip
    2258:	1133000c 	teqne	r3, ip
    225c:	0a000005 	beq	2278 <__aeabi_fmul+0x13c>
    2260:	e3d0c102 	bics	ip, r0, #-2147483648	@ 0x80000000
    2264:	13d1c102 	bicsne	ip, r1, #-2147483648	@ 0x80000000
    2268:	1affffe9 	bne	2214 <__aeabi_fmul+0xd8>
    226c:	e0200001 	eor	r0, r0, r1
    2270:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    2274:	e12fff1e 	bx	lr
    2278:	e3300000 	teq	r0, #0
    227c:	13300102 	teqne	r0, #-2147483648	@ 0x80000000
    2280:	01a00001 	moveq	r0, r1
    2284:	13310000 	teqne	r1, #0
    2288:	13310102 	teqne	r1, #-2147483648	@ 0x80000000
    228c:	0a00000d 	beq	22c8 <__aeabi_fmul+0x18c>
    2290:	e132000c 	teq	r2, ip
    2294:	1a000001 	bne	22a0 <__aeabi_fmul+0x164>
    2298:	e1b02480 	lsls	r2, r0, #9
    229c:	1a000009 	bne	22c8 <__aeabi_fmul+0x18c>
    22a0:	e133000c 	teq	r3, ip
    22a4:	1a000002 	bne	22b4 <__aeabi_fmul+0x178>
    22a8:	e1b03481 	lsls	r3, r1, #9
    22ac:	11a00001 	movne	r0, r1
    22b0:	1a000004 	bne	22c8 <__aeabi_fmul+0x18c>
    22b4:	e0200001 	eor	r0, r0, r1
    22b8:	e2000102 	and	r0, r0, #-2147483648	@ 0x80000000
    22bc:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    22c0:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    22c4:	e12fff1e 	bx	lr
    22c8:	e380047f 	orr	r0, r0, #2130706432	@ 0x7f000000
    22cc:	e3800503 	orr	r0, r0, #12582912	@ 0xc00000
    22d0:	e12fff1e 	bx	lr

000022d4 <__aeabi_fdiv>:
    22d4:	e3a0c0ff 	mov	ip, #255	@ 0xff
    22d8:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    22dc:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    22e0:	1132000c 	teqne	r2, ip
    22e4:	1133000c 	teqne	r3, ip
    22e8:	0a00003a 	beq	23d8 <__aeabi_fdiv+0x104>
    22ec:	e0422003 	sub	r2, r2, r3
    22f0:	e020c001 	eor	ip, r0, r1
    22f4:	e1b01481 	lsls	r1, r1, #9
    22f8:	e1a00480 	lsl	r0, r0, #9
    22fc:	0a00001c 	beq	2374 <__aeabi_fdiv+0xa0>
    2300:	e3a03201 	mov	r3, #268435456	@ 0x10000000
    2304:	e1831221 	orr	r1, r3, r1, lsr #4
    2308:	e1833220 	orr	r3, r3, r0, lsr #4
    230c:	e20c0102 	and	r0, ip, #-2147483648	@ 0x80000000
    2310:	e1530001 	cmp	r3, r1
    2314:	31a03083 	lslcc	r3, r3, #1
    2318:	e2a2207d 	adc	r2, r2, #125	@ 0x7d
    231c:	e3a0c502 	mov	ip, #8388608	@ 0x800000
    2320:	e1530001 	cmp	r3, r1
    2324:	20433001 	subcs	r3, r3, r1
    2328:	2180000c 	orrcs	r0, r0, ip
    232c:	e15300a1 	cmp	r3, r1, lsr #1
    2330:	204330a1 	subcs	r3, r3, r1, lsr #1
    2334:	218000ac 	orrcs	r0, r0, ip, lsr #1
    2338:	e1530121 	cmp	r3, r1, lsr #2
    233c:	20433121 	subcs	r3, r3, r1, lsr #2
    2340:	2180012c 	orrcs	r0, r0, ip, lsr #2
    2344:	e15301a1 	cmp	r3, r1, lsr #3
    2348:	204331a1 	subcs	r3, r3, r1, lsr #3
    234c:	218001ac 	orrcs	r0, r0, ip, lsr #3
    2350:	e1b03203 	lsls	r3, r3, #4
    2354:	11b0c22c 	lsrsne	ip, ip, #4
    2358:	1afffff0 	bne	2320 <__aeabi_fdiv+0x4c>
    235c:	e35200fd 	cmp	r2, #253	@ 0xfd
    2360:	8affff9d 	bhi	21dc <__aeabi_fmul+0xa0>
    2364:	e1530001 	cmp	r3, r1
    2368:	e0a00b82 	adc	r0, r0, r2, lsl #23
    236c:	03c00001 	biceq	r0, r0, #1
    2370:	e12fff1e 	bx	lr
    2374:	e20cc102 	and	ip, ip, #-2147483648	@ 0x80000000
    2378:	e18c04a0 	orr	r0, ip, r0, lsr #9
    237c:	e292207f 	adds	r2, r2, #127	@ 0x7f
    2380:	c27230ff 	rsbsgt	r3, r2, #255	@ 0xff
    2384:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    2388:	c12fff1e 	bxgt	lr
    238c:	e3800502 	orr	r0, r0, #8388608	@ 0x800000
    2390:	e3a03000 	mov	r3, #0
    2394:	e2522001 	subs	r2, r2, #1
    2398:	eaffff8f 	b	21dc <__aeabi_fmul+0xa0>
    239c:	e3320000 	teq	r2, #0
    23a0:	e200c102 	and	ip, r0, #-2147483648	@ 0x80000000
    23a4:	01a00080 	lsleq	r0, r0, #1
    23a8:	03100502 	tsteq	r0, #8388608	@ 0x800000
    23ac:	02422001 	subeq	r2, r2, #1
    23b0:	0afffffb 	beq	23a4 <__aeabi_fdiv+0xd0>
    23b4:	e180000c 	orr	r0, r0, ip
    23b8:	e3330000 	teq	r3, #0
    23bc:	e201c102 	and	ip, r1, #-2147483648	@ 0x80000000
    23c0:	01a01081 	lsleq	r1, r1, #1
    23c4:	03110502 	tsteq	r1, #8388608	@ 0x800000
    23c8:	02433001 	subeq	r3, r3, #1
    23cc:	0afffffb 	beq	23c0 <__aeabi_fdiv+0xec>
    23d0:	e181100c 	orr	r1, r1, ip
    23d4:	eaffffc4 	b	22ec <__aeabi_fdiv+0x18>
    23d8:	e00c3ba1 	and	r3, ip, r1, lsr #23
    23dc:	e132000c 	teq	r2, ip
    23e0:	1a000005 	bne	23fc <__aeabi_fdiv+0x128>
    23e4:	e1b02480 	lsls	r2, r0, #9
    23e8:	1affffb6 	bne	22c8 <__aeabi_fmul+0x18c>
    23ec:	e133000c 	teq	r3, ip
    23f0:	1affffaf 	bne	22b4 <__aeabi_fmul+0x178>
    23f4:	e1a00001 	mov	r0, r1
    23f8:	eaffffb2 	b	22c8 <__aeabi_fmul+0x18c>
    23fc:	e133000c 	teq	r3, ip
    2400:	1a000003 	bne	2414 <__aeabi_fdiv+0x140>
    2404:	e1b03481 	lsls	r3, r1, #9
    2408:	0affff97 	beq	226c <__aeabi_fmul+0x130>
    240c:	e1a00001 	mov	r0, r1
    2410:	eaffffac 	b	22c8 <__aeabi_fmul+0x18c>
    2414:	e3d0c102 	bics	ip, r0, #-2147483648	@ 0x80000000
    2418:	13d1c102 	bicsne	ip, r1, #-2147483648	@ 0x80000000
    241c:	1affffde 	bne	239c <__aeabi_fdiv+0xc8>
    2420:	e3d02102 	bics	r2, r0, #-2147483648	@ 0x80000000
    2424:	1affffa2 	bne	22b4 <__aeabi_fmul+0x178>
    2428:	e3d13102 	bics	r3, r1, #-2147483648	@ 0x80000000
    242c:	1affff8e 	bne	226c <__aeabi_fmul+0x130>
    2430:	eaffffa4 	b	22c8 <__aeabi_fmul+0x18c>
