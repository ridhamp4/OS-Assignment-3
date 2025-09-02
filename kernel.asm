
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010570 	.word	0x00010570
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	000104f8 	.word	0x000104f8

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010568 	.word	0x00010568

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b1000 	.word	0x800b1000
   10408:	800ab130 	.word	0x800ab130

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b1000 	.word	0x800b1000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	80021894 	.word	0x80021894

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	80024994 	.word	0x80024994
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e3530000 	cmp	r3, #0
80020610:	03a03001 	moveq	r3, #1
80020614:	13a03000 	movne	r3, #0
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800ae668 	.word	0x800ae668

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000514 	bl	80021af4 <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb00046c 	bl	80021894 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb000502 	bl	80021af4 <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	8002988c 	.word	0x8002988c
80020720:	800ae668 	.word	0x800ae668
80020724:	800298a4 	.word	0x800298a4
80020728:	800298b8 	.word	0x800298b8

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb00041a 	bl	80021894 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000407 	bl	80021894 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	800298cc 	.word	0x800298cc
800208a0:	800298d0 	.word	0x800298d0

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb00169a 	bl	80026354 <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	800298dc 	.word	0x800298dc
800209a0:	800ab130 	.word	0x800ab130
800209a4:	800ac654 	.word	0x800ac654
800209a8:	800ab164 	.word	0x800ab164

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb001674 	bl	8002639c <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb001664 	bl	800263c8 <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb001501 	bl	80025e50 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb00163d 	bl	800263c8 <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003fd 	bl	80021af4 <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800ab130 	.word	0x800ab130
80020b0c:	800ac654 	.word	0x800ac654
80020b10:	800298e4 	.word	0x800298e4

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb000fdc 	bl	80024ac8 <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003d8 	bl	80021af4 <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000fc6 	bl	80024ac8 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	800298f8 	.word	0x800298f8

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003c2 	bl	80021af4 <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb0015ea 	bl	8002639c <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb001508 	bl	800260a0 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb0015d0 	bl	800263c8 <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	80029900 	.word	0x80029900
80020c94:	800ab130 	.word	0x800ab130
80020c98:	800ac654 	.word	0x800ac654

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ac86c 	.word	0x800ac86c

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ac86c 	.word	0x800ac86c

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ac86c 	.word	0x800ac86c

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb001561 	bl	80026354 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	80029908 	.word	0x80029908
80020dd8:	800ac86c 	.word	0x800ac86c

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ac86c 	.word	0x800ac86c
80020f7c:	800ac8ac 	.word	0x800ac8ac
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002bf 	bl	80021af4 <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ac86c 	.word	0x800ac86c
8002111c:	80029910 	.word	0x80029910
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb000250 	bl	80021af4 <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ac86c 	.word	0x800ac86c
8002126c:	80029920 	.word	0x80029920
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb000208 	bl	80021af4 <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ac86c 	.word	0x800ac86c
80021360:	80029930 	.word	0x80029930

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ac86c 	.word	0x800ac86c
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb0001a7 	bl	80021af4 <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb0013cf 	bl	8002639c <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb0013d5 	bl	800263c8 <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	80029948 	.word	0x80029948
80021484:	800ac86c 	.word	0x800ac86c

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb000181 	bl	80021af4 <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	80029968 	.word	0x80029968

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd008 	sub	sp, sp, #8
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a000001 	beq	800215d8 <kfree+0x58>
800215d0:	e59f0028 	ldr	r0, [pc, #40]	@ 80021600 <kfree+0x80>
800215d4:	eb000146 	bl	80021af4 <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb00136e 	bl	8002639c <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb001374 	bl	800263c8 <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	8002997c 	.word	0x8002997c
80021604:	800ac86c 	.word	0x800ac86c

80021608 <free_page>:
80021608:	e92d4800 	push	{fp, lr}
8002160c:	e28db004 	add	fp, sp, #4
80021610:	e24dd008 	sub	sp, sp, #8
80021614:	e50b0008 	str	r0, [fp, #-8]
80021618:	e3a0100c 	mov	r1, #12
8002161c:	e51b0008 	ldr	r0, [fp, #-8]
80021620:	ebffffd6 	bl	80021580 <kfree>
80021624:	e1a00000 	nop			@ (mov r0, r0)
80021628:	e24bd004 	sub	sp, fp, #4
8002162c:	e8bd8800 	pop	{fp, pc}

80021630 <alloc_page>:
80021630:	e92d4800 	push	{fp, lr}
80021634:	e28db004 	add	fp, sp, #4
80021638:	e3a0000c 	mov	r0, #12
8002163c:	ebffff78 	bl	80021424 <kmalloc>
80021640:	e1a03000 	mov	r3, r0
80021644:	e1a00003 	mov	r0, r3
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <get_order>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd010 	sub	sp, sp, #16
80021658:	e50b0010 	str	r0, [fp, #-16]
8002165c:	e51b3010 	ldr	r3, [fp, #-16]
80021660:	e2433001 	sub	r3, r3, #1
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a030a3 	lsr	r3, r3, #1
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03123 	lsr	r3, r3, #2
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03223 	lsr	r3, r3, #4
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03423 	lsr	r3, r3, #8
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e1a03823 	lsr	r3, r3, #16
800216c0:	e51b2010 	ldr	r2, [fp, #-16]
800216c4:	e1823003 	orr	r3, r2, r3
800216c8:	e50b3010 	str	r3, [fp, #-16]
800216cc:	e51b3010 	ldr	r3, [fp, #-16]
800216d0:	e2833001 	add	r3, r3, #1
800216d4:	e50b3010 	str	r3, [fp, #-16]
800216d8:	e3a03000 	mov	r3, #0
800216dc:	e50b3008 	str	r3, [fp, #-8]
800216e0:	ea00000a 	b	80021710 <get_order+0xc4>
800216e4:	e3a02001 	mov	r2, #1
800216e8:	e51b3008 	ldr	r3, [fp, #-8]
800216ec:	e1a03312 	lsl	r3, r2, r3
800216f0:	e1a02003 	mov	r2, r3
800216f4:	e51b3010 	ldr	r3, [fp, #-16]
800216f8:	e0033002 	and	r3, r3, r2
800216fc:	e3530000 	cmp	r3, #0
80021700:	1a000006 	bne	80021720 <get_order+0xd4>
80021704:	e51b3008 	ldr	r3, [fp, #-8]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3008 	str	r3, [fp, #-8]
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e353001f 	cmp	r3, #31
80021718:	9afffff1 	bls	800216e4 <get_order+0x98>
8002171c:	ea000000 	b	80021724 <get_order+0xd8>
80021720:	e1a00000 	nop			@ (mov r0, r0)
80021724:	e51b3008 	ldr	r3, [fp, #-8]
80021728:	e3530005 	cmp	r3, #5
8002172c:	8a000002 	bhi	8002173c <get_order+0xf0>
80021730:	e3a03006 	mov	r3, #6
80021734:	e50b3008 	str	r3, [fp, #-8]
80021738:	ea000004 	b	80021750 <get_order+0x104>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e353000c 	cmp	r3, #12
80021744:	9a000001 	bls	80021750 <get_order+0x104>
80021748:	e59f0010 	ldr	r0, [pc, #16]	@ 80021760 <get_order+0x114>
8002174c:	eb0000e8 	bl	80021af4 <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	800299ac 	.word	0x800299ac

80021764 <printint>:
80021764:	e92d4800 	push	{fp, lr}
80021768:	e28db004 	add	fp, sp, #4
8002176c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80021770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021774:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80021778:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002177c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021780:	e3530000 	cmp	r3, #0
80021784:	0a00000a 	beq	800217b4 <printint+0x50>
80021788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002178c:	e1a03fa3 	lsr	r3, r3, #31
80021790:	e6ef3073 	uxtb	r3, r3
80021794:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021798:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002179c:	e3530000 	cmp	r3, #0
800217a0:	0a000003 	beq	800217b4 <printint+0x50>
800217a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217a8:	e2633000 	rsb	r3, r3, #0
800217ac:	e50b300c 	str	r3, [fp, #-12]
800217b0:	ea000001 	b	800217bc <printint+0x58>
800217b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217b8:	e50b300c 	str	r3, [fp, #-12]
800217bc:	e3a03000 	mov	r3, #0
800217c0:	e50b3008 	str	r3, [fp, #-8]
800217c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e1a01002 	mov	r1, r2
800217d0:	e1a00003 	mov	r0, r3
800217d4:	eb001fd1 	bl	80029720 <__aeabi_uidivmod>
800217d8:	e1a03001 	mov	r3, r1
800217dc:	e1a01003 	mov	r1, r3
800217e0:	e51b3008 	ldr	r3, [fp, #-8]
800217e4:	e2832001 	add	r2, r3, #1
800217e8:	e50b2008 	str	r2, [fp, #-8]
800217ec:	e59f209c 	ldr	r2, [pc, #156]	@ 80021890 <printint+0x12c>
800217f0:	e7d22001 	ldrb	r2, [r2, r1]
800217f4:	e2433004 	sub	r3, r3, #4
800217f8:	e083300b 	add	r3, r3, fp
800217fc:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021800:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021804:	e1a01003 	mov	r1, r3
80021808:	e51b000c 	ldr	r0, [fp, #-12]
8002180c:	eb001f86 	bl	8002962c <__udivsi3>
80021810:	e1a03000 	mov	r3, r0
80021814:	e50b300c 	str	r3, [fp, #-12]
80021818:	e51b300c 	ldr	r3, [fp, #-12]
8002181c:	e3530000 	cmp	r3, #0
80021820:	1affffe7 	bne	800217c4 <printint+0x60>
80021824:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021828:	e3530000 	cmp	r3, #0
8002182c:	0a00000d 	beq	80021868 <printint+0x104>
80021830:	e51b3008 	ldr	r3, [fp, #-8]
80021834:	e2832001 	add	r2, r3, #1
80021838:	e50b2008 	str	r2, [fp, #-8]
8002183c:	e2433004 	sub	r3, r3, #4
80021840:	e083300b 	add	r3, r3, fp
80021844:	e3a0202d 	mov	r2, #45	@ 0x2d
80021848:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002184c:	ea000005 	b	80021868 <printint+0x104>
80021850:	e24b201c 	sub	r2, fp, #28
80021854:	e51b3008 	ldr	r3, [fp, #-8]
80021858:	e0823003 	add	r3, r2, r3
8002185c:	e5d33000 	ldrb	r3, [r3]
80021860:	e1a00003 	mov	r0, r3
80021864:	eb0000bb 	bl	80021b58 <consputc>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2433001 	sub	r3, r3, #1
80021870:	e50b3008 	str	r3, [fp, #-8]
80021874:	e51b3008 	ldr	r3, [fp, #-8]
80021878:	e3530000 	cmp	r3, #0
8002187c:	aafffff3 	bge	80021850 <printint+0xec>
80021880:	e1a00000 	nop			@ (mov r0, r0)
80021884:	e1a00000 	nop			@ (mov r0, r0)
80021888:	e24bd004 	sub	sp, fp, #4
8002188c:	e8bd8800 	pop	{fp, pc}
80021890:	8002b048 	.word	0x8002b048

80021894 <cprintf>:
80021894:	e92d000f 	push	{r0, r1, r2, r3}
80021898:	e92d4800 	push	{fp, lr}
8002189c:	e28db004 	add	fp, sp, #4
800218a0:	e24dd018 	sub	sp, sp, #24
800218a4:	e59f323c 	ldr	r3, [pc, #572]	@ 80021ae8 <cprintf+0x254>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f0224 	ldr	r0, [pc, #548]	@ 80021ae8 <cprintf+0x254>
800218c0:	eb0012b5 	bl	8002639c <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f0214 	ldr	r0, [pc, #532]	@ 80021aec <cprintf+0x258>
800218d4:	eb000086 	bl	80021af4 <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea00006a 	b	80021a98 <cprintf+0x204>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000095 	bl	80021b58 <consputc>
80021900:	ea000061 	b	80021a8c <cprintf+0x1f8>
80021904:	e59b2004 	ldr	r2, [fp, #4]
80021908:	e51b3008 	ldr	r3, [fp, #-8]
8002190c:	e2833001 	add	r3, r3, #1
80021910:	e50b3008 	str	r3, [fp, #-8]
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e0823003 	add	r3, r2, r3
8002191c:	e5d33000 	ldrb	r3, [r3]
80021920:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021928:	e3530000 	cmp	r3, #0
8002192c:	0a000062 	beq	80021abc <cprintf+0x228>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530025 	cmp	r3, #37	@ 0x25
80021938:	0a00004b 	beq	80021a6c <cprintf+0x1d8>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530025 	cmp	r3, #37	@ 0x25
80021944:	ba00004b 	blt	80021a78 <cprintf+0x1e4>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530078 	cmp	r3, #120	@ 0x78
80021950:	ca000048 	bgt	80021a78 <cprintf+0x1e4>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530064 	cmp	r3, #100	@ 0x64
8002195c:	ba000045 	blt	80021a78 <cprintf+0x1e4>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e2433064 	sub	r3, r3, #100	@ 0x64
80021968:	e3530014 	cmp	r3, #20
8002196c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
80021970:	ea000040 	b	80021a78 <cprintf+0x1e4>
80021974:	800219c8 	.word	0x800219c8
80021978:	80021a78 	.word	0x80021a78
8002197c:	80021a78 	.word	0x80021a78
80021980:	80021a78 	.word	0x80021a78
80021984:	80021a78 	.word	0x80021a78
80021988:	80021a78 	.word	0x80021a78
8002198c:	80021a78 	.word	0x80021a78
80021990:	80021a78 	.word	0x80021a78
80021994:	80021a78 	.word	0x80021a78
80021998:	80021a78 	.word	0x80021a78
8002199c:	80021a78 	.word	0x80021a78
800219a0:	80021a78 	.word	0x80021a78
800219a4:	800219ec 	.word	0x800219ec
800219a8:	80021a78 	.word	0x80021a78
800219ac:	80021a78 	.word	0x80021a78
800219b0:	80021a10 	.word	0x80021a10
800219b4:	80021a78 	.word	0x80021a78
800219b8:	80021a78 	.word	0x80021a78
800219bc:	80021a78 	.word	0x80021a78
800219c0:	80021a78 	.word	0x80021a78
800219c4:	800219ec 	.word	0x800219ec
800219c8:	e51b300c 	ldr	r3, [fp, #-12]
800219cc:	e2832004 	add	r2, r3, #4
800219d0:	e50b200c 	str	r2, [fp, #-12]
800219d4:	e5933000 	ldr	r3, [r3]
800219d8:	e3a02001 	mov	r2, #1
800219dc:	e3a0100a 	mov	r1, #10
800219e0:	e1a00003 	mov	r0, r3
800219e4:	ebffff5e 	bl	80021764 <printint>
800219e8:	ea000027 	b	80021a8c <cprintf+0x1f8>
800219ec:	e51b300c 	ldr	r3, [fp, #-12]
800219f0:	e2832004 	add	r2, r3, #4
800219f4:	e50b200c 	str	r2, [fp, #-12]
800219f8:	e5933000 	ldr	r3, [r3]
800219fc:	e3a02000 	mov	r2, #0
80021a00:	e3a01010 	mov	r1, #16
80021a04:	e1a00003 	mov	r0, r3
80021a08:	ebffff55 	bl	80021764 <printint>
80021a0c:	ea00001e 	b	80021a8c <cprintf+0x1f8>
80021a10:	e51b300c 	ldr	r3, [fp, #-12]
80021a14:	e2832004 	add	r2, r3, #4
80021a18:	e50b200c 	str	r2, [fp, #-12]
80021a1c:	e5933000 	ldr	r3, [r3]
80021a20:	e50b3010 	str	r3, [fp, #-16]
80021a24:	e51b3010 	ldr	r3, [fp, #-16]
80021a28:	e3530000 	cmp	r3, #0
80021a2c:	1a000009 	bne	80021a58 <cprintf+0x1c4>
80021a30:	e59f30b8 	ldr	r3, [pc, #184]	@ 80021af0 <cprintf+0x25c>
80021a34:	e50b3010 	str	r3, [fp, #-16]
80021a38:	ea000006 	b	80021a58 <cprintf+0x1c4>
80021a3c:	e51b3010 	ldr	r3, [fp, #-16]
80021a40:	e5d33000 	ldrb	r3, [r3]
80021a44:	e1a00003 	mov	r0, r3
80021a48:	eb000042 	bl	80021b58 <consputc>
80021a4c:	e51b3010 	ldr	r3, [fp, #-16]
80021a50:	e2833001 	add	r3, r3, #1
80021a54:	e50b3010 	str	r3, [fp, #-16]
80021a58:	e51b3010 	ldr	r3, [fp, #-16]
80021a5c:	e5d33000 	ldrb	r3, [r3]
80021a60:	e3530000 	cmp	r3, #0
80021a64:	1afffff4 	bne	80021a3c <cprintf+0x1a8>
80021a68:	ea000007 	b	80021a8c <cprintf+0x1f8>
80021a6c:	e3a00025 	mov	r0, #37	@ 0x25
80021a70:	eb000038 	bl	80021b58 <consputc>
80021a74:	ea000004 	b	80021a8c <cprintf+0x1f8>
80021a78:	e3a00025 	mov	r0, #37	@ 0x25
80021a7c:	eb000035 	bl	80021b58 <consputc>
80021a80:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a84:	eb000033 	bl	80021b58 <consputc>
80021a88:	e1a00000 	nop			@ (mov r0, r0)
80021a8c:	e51b3008 	ldr	r3, [fp, #-8]
80021a90:	e2833001 	add	r3, r3, #1
80021a94:	e50b3008 	str	r3, [fp, #-8]
80021a98:	e59b2004 	ldr	r2, [fp, #4]
80021a9c:	e51b3008 	ldr	r3, [fp, #-8]
80021aa0:	e0823003 	add	r3, r2, r3
80021aa4:	e5d33000 	ldrb	r3, [r3]
80021aa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021aac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ab0:	e3530000 	cmp	r3, #0
80021ab4:	1affff8c 	bne	800218ec <cprintf+0x58>
80021ab8:	ea000000 	b	80021ac0 <cprintf+0x22c>
80021abc:	e1a00000 	nop			@ (mov r0, r0)
80021ac0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ac4:	e3530000 	cmp	r3, #0
80021ac8:	0a000001 	beq	80021ad4 <cprintf+0x240>
80021acc:	e59f0014 	ldr	r0, [pc, #20]	@ 80021ae8 <cprintf+0x254>
80021ad0:	eb00123c 	bl	800263c8 <release>
80021ad4:	e1a00000 	nop			@ (mov r0, r0)
80021ad8:	e24bd004 	sub	sp, fp, #4
80021adc:	e8bd4800 	pop	{fp, lr}
80021ae0:	e28dd010 	add	sp, sp, #16
80021ae4:	e12fff1e 	bx	lr
80021ae8:	800ac8e8 	.word	0x800ac8e8
80021aec:	800299bc 	.word	0x800299bc
80021af0:	800299c8 	.word	0x800299c8

80021af4 <panic>:
80021af4:	e92d4800 	push	{fp, lr}
80021af8:	e28db004 	add	fp, sp, #4
80021afc:	e24dd008 	sub	sp, sp, #8
80021b00:	e50b0008 	str	r0, [fp, #-8]
80021b04:	ebfffa8d 	bl	80020540 <cli>
80021b08:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b48 <panic+0x54>
80021b0c:	e3a02000 	mov	r2, #0
80021b10:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021b14:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b4c <panic+0x58>
80021b18:	e5933000 	ldr	r3, [r3]
80021b1c:	e5d33000 	ldrb	r3, [r3]
80021b20:	e1a01003 	mov	r1, r3
80021b24:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b50 <panic+0x5c>
80021b28:	ebffff59 	bl	80021894 <cprintf>
80021b2c:	e51b0008 	ldr	r0, [fp, #-8]
80021b30:	ebfffb35 	bl	8002080c <show_callstk>
80021b34:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b54 <panic+0x60>
80021b38:	e3a02001 	mov	r2, #1
80021b3c:	e5832000 	str	r2, [r3]
80021b40:	e1a00000 	nop			@ (mov r0, r0)
80021b44:	eafffffd 	b	80021b40 <panic+0x4c>
80021b48:	800ac8e8 	.word	0x800ac8e8
80021b4c:	800ae668 	.word	0x800ae668
80021b50:	800299d0 	.word	0x800299d0
80021b54:	800ac8e4 	.word	0x800ac8e4

80021b58 <consputc>:
80021b58:	e92d4800 	push	{fp, lr}
80021b5c:	e28db004 	add	fp, sp, #4
80021b60:	e24dd008 	sub	sp, sp, #8
80021b64:	e50b0008 	str	r0, [fp, #-8]
80021b68:	e59f3050 	ldr	r3, [pc, #80]	@ 80021bc0 <consputc+0x68>
80021b6c:	e5933000 	ldr	r3, [r3]
80021b70:	e3530000 	cmp	r3, #0
80021b74:	0a000002 	beq	80021b84 <consputc+0x2c>
80021b78:	ebfffa70 	bl	80020540 <cli>
80021b7c:	e1a00000 	nop			@ (mov r0, r0)
80021b80:	eafffffd 	b	80021b7c <consputc+0x24>
80021b84:	e51b3008 	ldr	r3, [fp, #-8]
80021b88:	e3530c01 	cmp	r3, #256	@ 0x100
80021b8c:	1a000006 	bne	80021bac <consputc+0x54>
80021b90:	e3a00008 	mov	r0, #8
80021b94:	eb001e63 	bl	80029528 <uartputc>
80021b98:	e3a00020 	mov	r0, #32
80021b9c:	eb001e61 	bl	80029528 <uartputc>
80021ba0:	e3a00008 	mov	r0, #8
80021ba4:	eb001e5f 	bl	80029528 <uartputc>
80021ba8:	ea000001 	b	80021bb4 <consputc+0x5c>
80021bac:	e51b0008 	ldr	r0, [fp, #-8]
80021bb0:	eb001e5c 	bl	80029528 <uartputc>
80021bb4:	e1a00000 	nop			@ (mov r0, r0)
80021bb8:	e24bd004 	sub	sp, fp, #4
80021bbc:	e8bd8800 	pop	{fp, pc}
80021bc0:	800ac8e4 	.word	0x800ac8e4

80021bc4 <input_buffer>:
80021bc4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80021bc8:	e28db000 	add	fp, sp, #0
80021bcc:	e24dd014 	sub	sp, sp, #20
80021bd0:	e50b0010 	str	r0, [fp, #-16]
80021bd4:	e59f30a8 	ldr	r3, [pc, #168]	@ 80021c84 <input_buffer+0xc0>
80021bd8:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021bdc:	e59f30a0 	ldr	r3, [pc, #160]	@ 80021c84 <input_buffer+0xc0>
80021be0:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021be4:	e0423003 	sub	r3, r2, r3
80021be8:	e50b3008 	str	r3, [fp, #-8]
80021bec:	e51b3008 	ldr	r3, [fp, #-8]
80021bf0:	e3530000 	cmp	r3, #0
80021bf4:	aa000001 	bge	80021c00 <input_buffer+0x3c>
80021bf8:	e3a03000 	mov	r3, #0
80021bfc:	e50b3008 	str	r3, [fp, #-8]
80021c00:	e3a03000 	mov	r3, #0
80021c04:	e50b300c 	str	r3, [fp, #-12]
80021c08:	ea00000f 	b	80021c4c <input_buffer+0x88>
80021c0c:	e59f3070 	ldr	r3, [pc, #112]	@ 80021c84 <input_buffer+0xc0>
80021c10:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80021c14:	e51b300c 	ldr	r3, [fp, #-12]
80021c18:	e0823003 	add	r3, r2, r3
80021c1c:	e1a03b83 	lsl	r3, r3, #23
80021c20:	e1a03ba3 	lsr	r3, r3, #23
80021c24:	e51b200c 	ldr	r2, [fp, #-12]
80021c28:	e51b1010 	ldr	r1, [fp, #-16]
80021c2c:	e0812002 	add	r2, r1, r2
80021c30:	e59f104c 	ldr	r1, [pc, #76]	@ 80021c84 <input_buffer+0xc0>
80021c34:	e0813003 	add	r3, r1, r3
80021c38:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021c3c:	e5c23000 	strb	r3, [r2]
80021c40:	e51b300c 	ldr	r3, [fp, #-12]
80021c44:	e2833001 	add	r3, r3, #1
80021c48:	e50b300c 	str	r3, [fp, #-12]
80021c4c:	e51b200c 	ldr	r2, [fp, #-12]
80021c50:	e51b3008 	ldr	r3, [fp, #-8]
80021c54:	e1520003 	cmp	r2, r3
80021c58:	baffffeb 	blt	80021c0c <input_buffer+0x48>
80021c5c:	e51b3008 	ldr	r3, [fp, #-8]
80021c60:	e51b2010 	ldr	r2, [fp, #-16]
80021c64:	e0823003 	add	r3, r2, r3
80021c68:	e3a02000 	mov	r2, #0
80021c6c:	e5c32000 	strb	r2, [r3]
80021c70:	e51b3008 	ldr	r3, [fp, #-8]
80021c74:	e1a00003 	mov	r0, r3
80021c78:	e28bd000 	add	sp, fp, #0
80021c7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80021c80:	e12fff1e 	bx	lr
80021c84:	800ac920 	.word	0x800ac920

80021c88 <input_append>:
80021c88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80021c8c:	e28db000 	add	fp, sp, #0
80021c90:	e24dd00c 	sub	sp, sp, #12
80021c94:	e1a03000 	mov	r3, r0
80021c98:	e54b3005 	strb	r3, [fp, #-5]
80021c9c:	e59f3034 	ldr	r3, [pc, #52]	@ 80021cd8 <input_append+0x50>
80021ca0:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021ca4:	e2832001 	add	r2, r3, #1
80021ca8:	e59f1028 	ldr	r1, [pc, #40]	@ 80021cd8 <input_append+0x50>
80021cac:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021cb0:	e1a03b83 	lsl	r3, r3, #23
80021cb4:	e1a03ba3 	lsr	r3, r3, #23
80021cb8:	e59f2018 	ldr	r2, [pc, #24]	@ 80021cd8 <input_append+0x50>
80021cbc:	e0823003 	add	r3, r2, r3
80021cc0:	e55b2005 	ldrb	r2, [fp, #-5]
80021cc4:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021cc8:	e1a00000 	nop			@ (mov r0, r0)
80021ccc:	e28bd000 	add	sp, fp, #0
80021cd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80021cd4:	e12fff1e 	bx	lr
80021cd8:	800ac920 	.word	0x800ac920

80021cdc <complete_command>:
80021cdc:	e92d4800 	push	{fp, lr}
80021ce0:	e28db004 	add	fp, sp, #4
80021ce4:	e24dd018 	sub	sp, sp, #24
80021ce8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021cec:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021cf0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021cf4:	ebfff9fc 	bl	800204ec <strlen>
80021cf8:	e50b0010 	str	r0, [fp, #-16]
80021cfc:	e3a03000 	mov	r3, #0
80021d00:	e50b3008 	str	r3, [fp, #-8]
80021d04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021d08:	e3a02000 	mov	r2, #0
80021d0c:	e5832000 	str	r2, [r3]
80021d10:	e3a03000 	mov	r3, #0
80021d14:	e50b300c 	str	r3, [fp, #-12]
80021d18:	ea000017 	b	80021d7c <complete_command+0xa0>
80021d1c:	e59f207c 	ldr	r2, [pc, #124]	@ 80021da0 <complete_command+0xc4>
80021d20:	e51b300c 	ldr	r3, [fp, #-12]
80021d24:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021d28:	e51b2010 	ldr	r2, [fp, #-16]
80021d2c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80021d30:	e1a00003 	mov	r0, r3
80021d34:	ebfff970 	bl	800202fc <strncmp>
80021d38:	e1a03000 	mov	r3, r0
80021d3c:	e3530000 	cmp	r3, #0
80021d40:	1a00000a 	bne	80021d70 <complete_command+0x94>
80021d44:	e51b3008 	ldr	r3, [fp, #-8]
80021d48:	e3530000 	cmp	r3, #0
80021d4c:	1a000004 	bne	80021d64 <complete_command+0x88>
80021d50:	e59f2048 	ldr	r2, [pc, #72]	@ 80021da0 <complete_command+0xc4>
80021d54:	e51b300c 	ldr	r3, [fp, #-12]
80021d58:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021d5c:	e50b3008 	str	r3, [fp, #-8]
80021d60:	ea000002 	b	80021d70 <complete_command+0x94>
80021d64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021d68:	e3a02001 	mov	r2, #1
80021d6c:	e5832000 	str	r2, [r3]
80021d70:	e51b300c 	ldr	r3, [fp, #-12]
80021d74:	e2833001 	add	r3, r3, #1
80021d78:	e50b300c 	str	r3, [fp, #-12]
80021d7c:	e59f201c 	ldr	r2, [pc, #28]	@ 80021da0 <complete_command+0xc4>
80021d80:	e51b300c 	ldr	r3, [fp, #-12]
80021d84:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021d88:	e3530000 	cmp	r3, #0
80021d8c:	1affffe2 	bne	80021d1c <complete_command+0x40>
80021d90:	e51b3008 	ldr	r3, [fp, #-8]
80021d94:	e1a00003 	mov	r0, r3
80021d98:	e24bd004 	sub	sp, fp, #4
80021d9c:	e8bd8800 	pop	{fp, pc}
80021da0:	8002b000 	.word	0x8002b000

80021da4 <consoleintr>:
80021da4:	e92d4800 	push	{fp, lr}
80021da8:	e28db004 	add	fp, sp, #4
80021dac:	e24dde22 	sub	sp, sp, #544	@ 0x220
80021db0:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
80021db4:	e59f0374 	ldr	r0, [pc, #884]	@ 80022130 <consoleintr+0x38c>
80021db8:	eb001177 	bl	8002639c <acquire>
80021dbc:	ea0000d0 	b	80022104 <consoleintr+0x360>
80021dc0:	e51b3010 	ldr	r3, [fp, #-16]
80021dc4:	e3530015 	cmp	r3, #21
80021dc8:	ca000015 	bgt	80021e24 <consoleintr+0x80>
80021dcc:	e51b3010 	ldr	r3, [fp, #-16]
80021dd0:	e3530008 	cmp	r3, #8
80021dd4:	ba00008f 	blt	80022018 <consoleintr+0x274>
80021dd8:	e51b3010 	ldr	r3, [fp, #-16]
80021ddc:	e2433008 	sub	r3, r3, #8
80021de0:	e353000d 	cmp	r3, #13
80021de4:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
80021de8:	ea00008a 	b	80022018 <consoleintr+0x274>
80021dec:	80021e9c 	.word	0x80021e9c
80021df0:	80021ed4 	.word	0x80021ed4
80021df4:	80022018 	.word	0x80022018
80021df8:	80022018 	.word	0x80022018
80021dfc:	80022018 	.word	0x80022018
80021e00:	80022018 	.word	0x80022018
80021e04:	80022018 	.word	0x80022018
80021e08:	80022018 	.word	0x80022018
80021e0c:	80021e34 	.word	0x80021e34
80021e10:	80022018 	.word	0x80022018
80021e14:	80022018 	.word	0x80022018
80021e18:	80022018 	.word	0x80022018
80021e1c:	80022018 	.word	0x80022018
80021e20:	80021e58 	.word	0x80021e58
80021e24:	e51b3010 	ldr	r3, [fp, #-16]
80021e28:	e353007f 	cmp	r3, #127	@ 0x7f
80021e2c:	0a00001a 	beq	80021e9c <consoleintr+0xf8>
80021e30:	ea000078 	b	80022018 <consoleintr+0x274>
80021e34:	eb0010d3 	bl	80026188 <procdump>
80021e38:	ea0000b1 	b	80022104 <consoleintr+0x360>
80021e3c:	e59f32ec 	ldr	r3, [pc, #748]	@ 80022130 <consoleintr+0x38c>
80021e40:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021e44:	e2433001 	sub	r3, r3, #1
80021e48:	e59f22e0 	ldr	r2, [pc, #736]	@ 80022130 <consoleintr+0x38c>
80021e4c:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021e50:	e3a00c01 	mov	r0, #256	@ 0x100
80021e54:	ebffff3f 	bl	80021b58 <consputc>
80021e58:	e59f32d0 	ldr	r3, [pc, #720]	@ 80022130 <consoleintr+0x38c>
80021e5c:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021e60:	e59f32c8 	ldr	r3, [pc, #712]	@ 80022130 <consoleintr+0x38c>
80021e64:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021e68:	e1520003 	cmp	r2, r3
80021e6c:	0a00009d 	beq	800220e8 <consoleintr+0x344>
80021e70:	e59f32b8 	ldr	r3, [pc, #696]	@ 80022130 <consoleintr+0x38c>
80021e74:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021e78:	e2433001 	sub	r3, r3, #1
80021e7c:	e1a03b83 	lsl	r3, r3, #23
80021e80:	e1a03ba3 	lsr	r3, r3, #23
80021e84:	e59f22a4 	ldr	r2, [pc, #676]	@ 80022130 <consoleintr+0x38c>
80021e88:	e0823003 	add	r3, r2, r3
80021e8c:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021e90:	e353000a 	cmp	r3, #10
80021e94:	1affffe8 	bne	80021e3c <consoleintr+0x98>
80021e98:	ea000092 	b	800220e8 <consoleintr+0x344>
80021e9c:	e59f328c 	ldr	r3, [pc, #652]	@ 80022130 <consoleintr+0x38c>
80021ea0:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021ea4:	e59f3284 	ldr	r3, [pc, #644]	@ 80022130 <consoleintr+0x38c>
80021ea8:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021eac:	e1520003 	cmp	r2, r3
80021eb0:	0a00008e 	beq	800220f0 <consoleintr+0x34c>
80021eb4:	e59f3274 	ldr	r3, [pc, #628]	@ 80022130 <consoleintr+0x38c>
80021eb8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021ebc:	e2433001 	sub	r3, r3, #1
80021ec0:	e59f2268 	ldr	r2, [pc, #616]	@ 80022130 <consoleintr+0x38c>
80021ec4:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021ec8:	e3a00c01 	mov	r0, #256	@ 0x100
80021ecc:	ebffff21 	bl	80021b58 <consputc>
80021ed0:	ea000086 	b	800220f0 <consoleintr+0x34c>
80021ed4:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
80021ed8:	e1a00003 	mov	r0, r3
80021edc:	ebffff38 	bl	80021bc4 <input_buffer>
80021ee0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021ee4:	e3a03000 	mov	r3, #0
80021ee8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80021eec:	e24b201c 	sub	r2, fp, #28
80021ef0:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
80021ef4:	e1a01002 	mov	r1, r2
80021ef8:	e1a00003 	mov	r0, r3
80021efc:	ebffff76 	bl	80021cdc <complete_command>
80021f00:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021f04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f08:	e3530000 	cmp	r3, #0
80021f0c:	0a00001b 	beq	80021f80 <consoleintr+0x1dc>
80021f10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021f14:	e3530000 	cmp	r3, #0
80021f18:	1a000018 	bne	80021f80 <consoleintr+0x1dc>
80021f1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021f20:	e50b3008 	str	r3, [fp, #-8]
80021f24:	ea00000e 	b	80021f64 <consoleintr+0x1c0>
80021f28:	e51b3008 	ldr	r3, [fp, #-8]
80021f2c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80021f30:	e0823003 	add	r3, r2, r3
80021f34:	e5d33000 	ldrb	r3, [r3]
80021f38:	e1a00003 	mov	r0, r3
80021f3c:	ebffff05 	bl	80021b58 <consputc>
80021f40:	e51b3008 	ldr	r3, [fp, #-8]
80021f44:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80021f48:	e0823003 	add	r3, r2, r3
80021f4c:	e5d33000 	ldrb	r3, [r3]
80021f50:	e1a00003 	mov	r0, r3
80021f54:	ebffff4b 	bl	80021c88 <input_append>
80021f58:	e51b3008 	ldr	r3, [fp, #-8]
80021f5c:	e2833001 	add	r3, r3, #1
80021f60:	e50b3008 	str	r3, [fp, #-8]
80021f64:	e51b3008 	ldr	r3, [fp, #-8]
80021f68:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80021f6c:	e0823003 	add	r3, r2, r3
80021f70:	e5d33000 	ldrb	r3, [r3]
80021f74:	e3530000 	cmp	r3, #0
80021f78:	1affffea 	bne	80021f28 <consoleintr+0x184>
80021f7c:	ea000024 	b	80022014 <consoleintr+0x270>
80021f80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021f84:	e3530000 	cmp	r3, #0
80021f88:	0a00005a 	beq	800220f8 <consoleintr+0x354>
80021f8c:	e59f01a0 	ldr	r0, [pc, #416]	@ 80022134 <consoleintr+0x390>
80021f90:	ebfffe3f 	bl	80021894 <cprintf>
80021f94:	e3a03000 	mov	r3, #0
80021f98:	e50b300c 	str	r3, [fp, #-12]
80021f9c:	ea000012 	b	80021fec <consoleintr+0x248>
80021fa0:	e59f2190 	ldr	r2, [pc, #400]	@ 80022138 <consoleintr+0x394>
80021fa4:	e51b300c 	ldr	r3, [fp, #-12]
80021fa8:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021fac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021fb0:	e24b1f87 	sub	r1, fp, #540	@ 0x21c
80021fb4:	e1a00003 	mov	r0, r3
80021fb8:	ebfff8cf 	bl	800202fc <strncmp>
80021fbc:	e1a03000 	mov	r3, r0
80021fc0:	e3530000 	cmp	r3, #0
80021fc4:	1a000005 	bne	80021fe0 <consoleintr+0x23c>
80021fc8:	e59f2168 	ldr	r2, [pc, #360]	@ 80022138 <consoleintr+0x394>
80021fcc:	e51b300c 	ldr	r3, [fp, #-12]
80021fd0:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021fd4:	e1a01003 	mov	r1, r3
80021fd8:	e59f015c 	ldr	r0, [pc, #348]	@ 8002213c <consoleintr+0x398>
80021fdc:	ebfffe2c 	bl	80021894 <cprintf>
80021fe0:	e51b300c 	ldr	r3, [fp, #-12]
80021fe4:	e2833001 	add	r3, r3, #1
80021fe8:	e50b300c 	str	r3, [fp, #-12]
80021fec:	e59f2144 	ldr	r2, [pc, #324]	@ 80022138 <consoleintr+0x394>
80021ff0:	e51b300c 	ldr	r3, [fp, #-12]
80021ff4:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021ff8:	e3530000 	cmp	r3, #0
80021ffc:	1affffe7 	bne	80021fa0 <consoleintr+0x1fc>
80022000:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
80022004:	e1a01003 	mov	r1, r3
80022008:	e59f0130 	ldr	r0, [pc, #304]	@ 80022140 <consoleintr+0x39c>
8002200c:	ebfffe20 	bl	80021894 <cprintf>
80022010:	ea000038 	b	800220f8 <consoleintr+0x354>
80022014:	ea000037 	b	800220f8 <consoleintr+0x354>
80022018:	e51b3010 	ldr	r3, [fp, #-16]
8002201c:	e3530000 	cmp	r3, #0
80022020:	0a000036 	beq	80022100 <consoleintr+0x35c>
80022024:	e59f3104 	ldr	r3, [pc, #260]	@ 80022130 <consoleintr+0x38c>
80022028:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
8002202c:	e59f30fc 	ldr	r3, [pc, #252]	@ 80022130 <consoleintr+0x38c>
80022030:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80022034:	e0423003 	sub	r3, r2, r3
80022038:	e3530c02 	cmp	r3, #512	@ 0x200
8002203c:	2a00002f 	bcs	80022100 <consoleintr+0x35c>
80022040:	e51b3010 	ldr	r3, [fp, #-16]
80022044:	e353000d 	cmp	r3, #13
80022048:	0a000001 	beq	80022054 <consoleintr+0x2b0>
8002204c:	e51b3010 	ldr	r3, [fp, #-16]
80022050:	ea000000 	b	80022058 <consoleintr+0x2b4>
80022054:	e3a0300a 	mov	r3, #10
80022058:	e50b3010 	str	r3, [fp, #-16]
8002205c:	e59f30cc 	ldr	r3, [pc, #204]	@ 80022130 <consoleintr+0x38c>
80022060:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80022064:	e2832001 	add	r2, r3, #1
80022068:	e59f10c0 	ldr	r1, [pc, #192]	@ 80022130 <consoleintr+0x38c>
8002206c:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80022070:	e1a03b83 	lsl	r3, r3, #23
80022074:	e1a03ba3 	lsr	r3, r3, #23
80022078:	e51b2010 	ldr	r2, [fp, #-16]
8002207c:	e6ef1072 	uxtb	r1, r2
80022080:	e59f20a8 	ldr	r2, [pc, #168]	@ 80022130 <consoleintr+0x38c>
80022084:	e0823003 	add	r3, r2, r3
80022088:	e1a02001 	mov	r2, r1
8002208c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80022090:	e51b0010 	ldr	r0, [fp, #-16]
80022094:	ebfffeaf 	bl	80021b58 <consputc>
80022098:	e51b3010 	ldr	r3, [fp, #-16]
8002209c:	e353000a 	cmp	r3, #10
800220a0:	0a000009 	beq	800220cc <consoleintr+0x328>
800220a4:	e51b3010 	ldr	r3, [fp, #-16]
800220a8:	e3530004 	cmp	r3, #4
800220ac:	0a000006 	beq	800220cc <consoleintr+0x328>
800220b0:	e59f3078 	ldr	r3, [pc, #120]	@ 80022130 <consoleintr+0x38c>
800220b4:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
800220b8:	e59f3070 	ldr	r3, [pc, #112]	@ 80022130 <consoleintr+0x38c>
800220bc:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
800220c0:	e2833c02 	add	r3, r3, #512	@ 0x200
800220c4:	e1520003 	cmp	r2, r3
800220c8:	1a00000c 	bne	80022100 <consoleintr+0x35c>
800220cc:	e59f305c 	ldr	r3, [pc, #92]	@ 80022130 <consoleintr+0x38c>
800220d0:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
800220d4:	e59f2054 	ldr	r2, [pc, #84]	@ 80022130 <consoleintr+0x38c>
800220d8:	e5823238 	str	r3, [r2, #568]	@ 0x238
800220dc:	e59f0060 	ldr	r0, [pc, #96]	@ 80022144 <consoleintr+0x3a0>
800220e0:	eb000fee 	bl	800260a0 <wakeup>
800220e4:	ea000005 	b	80022100 <consoleintr+0x35c>
800220e8:	e1a00000 	nop			@ (mov r0, r0)
800220ec:	ea000004 	b	80022104 <consoleintr+0x360>
800220f0:	e1a00000 	nop			@ (mov r0, r0)
800220f4:	ea000002 	b	80022104 <consoleintr+0x360>
800220f8:	e1a00000 	nop			@ (mov r0, r0)
800220fc:	ea000000 	b	80022104 <consoleintr+0x360>
80022100:	e1a00000 	nop			@ (mov r0, r0)
80022104:	e51b3220 	ldr	r3, [fp, #-544]	@ 0xfffffde0
80022108:	e12fff33 	blx	r3
8002210c:	e50b0010 	str	r0, [fp, #-16]
80022110:	e51b3010 	ldr	r3, [fp, #-16]
80022114:	e3530000 	cmp	r3, #0
80022118:	aaffff28 	bge	80021dc0 <consoleintr+0x1c>
8002211c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022130 <consoleintr+0x38c>
80022120:	eb0010a8 	bl	800263c8 <release>
80022124:	e1a00000 	nop			@ (mov r0, r0)
80022128:	e24bd004 	sub	sp, fp, #4
8002212c:	e8bd8800 	pop	{fp, pc}
80022130:	800ac920 	.word	0x800ac920
80022134:	80029a54 	.word	0x80029a54
80022138:	8002b000 	.word	0x8002b000
8002213c:	80029a58 	.word	0x80029a58
80022140:	80029a5c 	.word	0x80029a5c
80022144:	800acb54 	.word	0x800acb54

80022148 <consoleread>:
80022148:	e92d4800 	push	{fp, lr}
8002214c:	e28db004 	add	fp, sp, #4
80022150:	e24dd018 	sub	sp, sp, #24
80022154:	e50b0010 	str	r0, [fp, #-16]
80022158:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002215c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022160:	e51b0010 	ldr	r0, [fp, #-16]
80022164:	eb000534 	bl	8002363c <iunlock>
80022168:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002216c:	e50b3008 	str	r3, [fp, #-8]
80022170:	e59f0128 	ldr	r0, [pc, #296]	@ 800222a0 <consoleread+0x158>
80022174:	eb001088 	bl	8002639c <acquire>
80022178:	ea000037 	b	8002225c <consoleread+0x114>
8002217c:	e59f3120 	ldr	r3, [pc, #288]	@ 800222a4 <consoleread+0x15c>
80022180:	e5933000 	ldr	r3, [r3]
80022184:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80022188:	e3530000 	cmp	r3, #0
8002218c:	0a000005 	beq	800221a8 <consoleread+0x60>
80022190:	e59f0108 	ldr	r0, [pc, #264]	@ 800222a0 <consoleread+0x158>
80022194:	eb00108b 	bl	800263c8 <release>
80022198:	e51b0010 	ldr	r0, [fp, #-16]
8002219c:	eb0004c2 	bl	800234ac <ilock>
800221a0:	e3e03000 	mvn	r3, #0
800221a4:	ea00003a 	b	80022294 <consoleread+0x14c>
800221a8:	e59f10f0 	ldr	r1, [pc, #240]	@ 800222a0 <consoleread+0x158>
800221ac:	e59f00f4 	ldr	r0, [pc, #244]	@ 800222a8 <consoleread+0x160>
800221b0:	eb000f26 	bl	80025e50 <sleep>
800221b4:	e59f30e4 	ldr	r3, [pc, #228]	@ 800222a0 <consoleread+0x158>
800221b8:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
800221bc:	e59f30dc 	ldr	r3, [pc, #220]	@ 800222a0 <consoleread+0x158>
800221c0:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
800221c4:	e1520003 	cmp	r2, r3
800221c8:	0affffeb 	beq	8002217c <consoleread+0x34>
800221cc:	e59f30cc 	ldr	r3, [pc, #204]	@ 800222a0 <consoleread+0x158>
800221d0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
800221d4:	e2832001 	add	r2, r3, #1
800221d8:	e59f10c0 	ldr	r1, [pc, #192]	@ 800222a0 <consoleread+0x158>
800221dc:	e5812234 	str	r2, [r1, #564]	@ 0x234
800221e0:	e1a03b83 	lsl	r3, r3, #23
800221e4:	e1a03ba3 	lsr	r3, r3, #23
800221e8:	e59f20b0 	ldr	r2, [pc, #176]	@ 800222a0 <consoleread+0x158>
800221ec:	e0823003 	add	r3, r2, r3
800221f0:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
800221f4:	e50b300c 	str	r3, [fp, #-12]
800221f8:	e51b300c 	ldr	r3, [fp, #-12]
800221fc:	e3530004 	cmp	r3, #4
80022200:	1a000009 	bne	8002222c <consoleread+0xe4>
80022204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022208:	e51b2008 	ldr	r2, [fp, #-8]
8002220c:	e1520003 	cmp	r2, r3
80022210:	9a000015 	bls	8002226c <consoleread+0x124>
80022214:	e59f3084 	ldr	r3, [pc, #132]	@ 800222a0 <consoleread+0x158>
80022218:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
8002221c:	e2433001 	sub	r3, r3, #1
80022220:	e59f2078 	ldr	r2, [pc, #120]	@ 800222a0 <consoleread+0x158>
80022224:	e5823234 	str	r3, [r2, #564]	@ 0x234
80022228:	ea00000f 	b	8002226c <consoleread+0x124>
8002222c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022230:	e2832001 	add	r2, r3, #1
80022234:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
80022238:	e51b200c 	ldr	r2, [fp, #-12]
8002223c:	e6ef2072 	uxtb	r2, r2
80022240:	e5c32000 	strb	r2, [r3]
80022244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022248:	e2433001 	sub	r3, r3, #1
8002224c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022250:	e51b300c 	ldr	r3, [fp, #-12]
80022254:	e353000a 	cmp	r3, #10
80022258:	0a000005 	beq	80022274 <consoleread+0x12c>
8002225c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022260:	e3530000 	cmp	r3, #0
80022264:	caffffd2 	bgt	800221b4 <consoleread+0x6c>
80022268:	ea000002 	b	80022278 <consoleread+0x130>
8002226c:	e1a00000 	nop			@ (mov r0, r0)
80022270:	ea000000 	b	80022278 <consoleread+0x130>
80022274:	e1a00000 	nop			@ (mov r0, r0)
80022278:	e59f0020 	ldr	r0, [pc, #32]	@ 800222a0 <consoleread+0x158>
8002227c:	eb001051 	bl	800263c8 <release>
80022280:	e51b0010 	ldr	r0, [fp, #-16]
80022284:	eb000488 	bl	800234ac <ilock>
80022288:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002228c:	e51b2008 	ldr	r2, [fp, #-8]
80022290:	e0423003 	sub	r3, r2, r3
80022294:	e1a00003 	mov	r0, r3
80022298:	e24bd004 	sub	sp, fp, #4
8002229c:	e8bd8800 	pop	{fp, pc}
800222a0:	800ac920 	.word	0x800ac920
800222a4:	800b0db0 	.word	0x800b0db0
800222a8:	800acb54 	.word	0x800acb54

800222ac <consolewrite>:
800222ac:	e92d4800 	push	{fp, lr}
800222b0:	e28db004 	add	fp, sp, #4
800222b4:	e24dd018 	sub	sp, sp, #24
800222b8:	e50b0010 	str	r0, [fp, #-16]
800222bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800222c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800222c4:	e51b0010 	ldr	r0, [fp, #-16]
800222c8:	eb0004db 	bl	8002363c <iunlock>
800222cc:	e59f0060 	ldr	r0, [pc, #96]	@ 80022334 <consolewrite+0x88>
800222d0:	eb001031 	bl	8002639c <acquire>
800222d4:	e3a03000 	mov	r3, #0
800222d8:	e50b3008 	str	r3, [fp, #-8]
800222dc:	ea000008 	b	80022304 <consolewrite+0x58>
800222e0:	e51b3008 	ldr	r3, [fp, #-8]
800222e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800222e8:	e0823003 	add	r3, r2, r3
800222ec:	e5d33000 	ldrb	r3, [r3]
800222f0:	e1a00003 	mov	r0, r3
800222f4:	ebfffe17 	bl	80021b58 <consputc>
800222f8:	e51b3008 	ldr	r3, [fp, #-8]
800222fc:	e2833001 	add	r3, r3, #1
80022300:	e50b3008 	str	r3, [fp, #-8]
80022304:	e51b2008 	ldr	r2, [fp, #-8]
80022308:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002230c:	e1520003 	cmp	r2, r3
80022310:	bafffff2 	blt	800222e0 <consolewrite+0x34>
80022314:	e59f0018 	ldr	r0, [pc, #24]	@ 80022334 <consolewrite+0x88>
80022318:	eb00102a 	bl	800263c8 <release>
8002231c:	e51b0010 	ldr	r0, [fp, #-16]
80022320:	eb000461 	bl	800234ac <ilock>
80022324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022328:	e1a00003 	mov	r0, r3
8002232c:	e24bd004 	sub	sp, fp, #4
80022330:	e8bd8800 	pop	{fp, pc}
80022334:	800ac8e8 	.word	0x800ac8e8

80022338 <consoleinit>:
80022338:	e92d4800 	push	{fp, lr}
8002233c:	e28db004 	add	fp, sp, #4
80022340:	e59f103c 	ldr	r1, [pc, #60]	@ 80022384 <consoleinit+0x4c>
80022344:	e59f003c 	ldr	r0, [pc, #60]	@ 80022388 <consoleinit+0x50>
80022348:	eb001001 	bl	80026354 <initlock>
8002234c:	e59f1038 	ldr	r1, [pc, #56]	@ 8002238c <consoleinit+0x54>
80022350:	e59f0038 	ldr	r0, [pc, #56]	@ 80022390 <consoleinit+0x58>
80022354:	eb000ffe 	bl	80026354 <initlock>
80022358:	e59f3034 	ldr	r3, [pc, #52]	@ 80022394 <consoleinit+0x5c>
8002235c:	e59f2034 	ldr	r2, [pc, #52]	@ 80022398 <consoleinit+0x60>
80022360:	e583200c 	str	r2, [r3, #12]
80022364:	e59f3028 	ldr	r3, [pc, #40]	@ 80022394 <consoleinit+0x5c>
80022368:	e59f202c 	ldr	r2, [pc, #44]	@ 8002239c <consoleinit+0x64>
8002236c:	e5832008 	str	r2, [r3, #8]
80022370:	e59f3010 	ldr	r3, [pc, #16]	@ 80022388 <consoleinit+0x50>
80022374:	e3a02001 	mov	r2, #1
80022378:	e5832034 	str	r2, [r3, #52]	@ 0x34
8002237c:	e1a00000 	nop			@ (mov r0, r0)
80022380:	e8bd8800 	pop	{fp, pc}
80022384:	80029a60 	.word	0x80029a60
80022388:	800ac8e8 	.word	0x800ac8e8
8002238c:	80029a68 	.word	0x80029a68
80022390:	800ac920 	.word	0x800ac920
80022394:	800acb60 	.word	0x800acb60
80022398:	800222ac 	.word	0x800222ac
8002239c:	80022148 	.word	0x80022148

800223a0 <exec>:
800223a0:	e92d4810 	push	{r4, fp, lr}
800223a4:	e28db008 	add	fp, sp, #8
800223a8:	e24ddf49 	sub	sp, sp, #292	@ 0x124
800223ac:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
800223b0:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
800223b4:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
800223b8:	eb00080e 	bl	800243f8 <namei>
800223bc:	e50b0010 	str	r0, [fp, #-16]
800223c0:	e51b3010 	ldr	r3, [fp, #-16]
800223c4:	e3530000 	cmp	r3, #0
800223c8:	1a000001 	bne	800223d4 <exec+0x34>
800223cc:	e3e03000 	mvn	r3, #0
800223d0:	ea000120 	b	80022858 <exec+0x4b8>
800223d4:	e51b0010 	ldr	r0, [fp, #-16]
800223d8:	eb000433 	bl	800234ac <ilock>
800223dc:	e24b1068 	sub	r1, fp, #104	@ 0x68
800223e0:	e3a03034 	mov	r3, #52	@ 0x34
800223e4:	e3a02000 	mov	r2, #0
800223e8:	e51b0010 	ldr	r0, [fp, #-16]
800223ec:	eb0005da 	bl	80023b5c <readi>
800223f0:	e1a03000 	mov	r3, r0
800223f4:	e3530033 	cmp	r3, #51	@ 0x33
800223f8:	9a0000f6 	bls	800227d8 <exec+0x438>
800223fc:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
80022400:	e59f245c 	ldr	r2, [pc, #1116]	@ 80022864 <exec+0x4c4>
80022404:	e1530002 	cmp	r3, r2
80022408:	1a0000f4 	bne	800227e0 <exec+0x440>
8002240c:	e3a03000 	mov	r3, #0
80022410:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022414:	eb00184b 	bl	80028548 <kpt_alloc>
80022418:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002241c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022420:	e3530000 	cmp	r3, #0
80022424:	0a0000ef 	beq	800227e8 <exec+0x448>
80022428:	e3a03000 	mov	r3, #0
8002242c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022430:	e3a03000 	mov	r3, #0
80022434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80022438:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
8002243c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022440:	ea00002e 	b	80022500 <exec+0x160>
80022444:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022448:	e24b1088 	sub	r1, fp, #136	@ 0x88
8002244c:	e3a03020 	mov	r3, #32
80022450:	e51b0010 	ldr	r0, [fp, #-16]
80022454:	eb0005c0 	bl	80023b5c <readi>
80022458:	e1a03000 	mov	r3, r0
8002245c:	e3530020 	cmp	r3, #32
80022460:	1a0000e2 	bne	800227f0 <exec+0x450>
80022464:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
80022468:	e3530001 	cmp	r3, #1
8002246c:	1a00001c 	bne	800224e4 <exec+0x144>
80022470:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
80022474:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022478:	e1520003 	cmp	r2, r3
8002247c:	3a0000dd 	bcc	800227f8 <exec+0x458>
80022480:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
80022484:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
80022488:	e0823003 	add	r3, r2, r3
8002248c:	e1a02003 	mov	r2, r3
80022490:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022494:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022498:	eb001956 	bl	800289f8 <allocuvm>
8002249c:	e1a03000 	mov	r3, r0
800224a0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800224a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800224a8:	e3530000 	cmp	r3, #0
800224ac:	0a0000d3 	beq	80022800 <exec+0x460>
800224b0:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
800224b4:	e1a01003 	mov	r1, r3
800224b8:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
800224bc:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
800224c0:	e58d3000 	str	r3, [sp]
800224c4:	e1a03002 	mov	r3, r2
800224c8:	e51b2010 	ldr	r2, [fp, #-16]
800224cc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800224d0:	eb0018fc 	bl	800288c8 <loaduvm>
800224d4:	e1a03000 	mov	r3, r0
800224d8:	e3530000 	cmp	r3, #0
800224dc:	ba0000c9 	blt	80022808 <exec+0x468>
800224e0:	ea000000 	b	800224e8 <exec+0x148>
800224e4:	e1a00000 	nop			@ (mov r0, r0)
800224e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800224ec:	e2833001 	add	r3, r3, #1
800224f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800224f4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800224f8:	e2833020 	add	r3, r3, #32
800224fc:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022500:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
80022504:	e1a02003 	mov	r2, r3
80022508:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002250c:	e1530002 	cmp	r3, r2
80022510:	baffffcb 	blt	80022444 <exec+0xa4>
80022514:	e51b0010 	ldr	r0, [fp, #-16]
80022518:	eb0004a4 	bl	800237b0 <iunlockput>
8002251c:	e3a03000 	mov	r3, #0
80022520:	e50b3010 	str	r3, [fp, #-16]
80022524:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022528:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002252c:	e283300f 	add	r3, r3, #15
80022530:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80022534:	e3c3300f 	bic	r3, r3, #15
80022538:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002253c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022540:	e2833a02 	add	r3, r3, #8192	@ 0x2000
80022544:	e1a02003 	mov	r2, r3
80022548:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
8002254c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022550:	eb001928 	bl	800289f8 <allocuvm>
80022554:	e1a03000 	mov	r3, r0
80022558:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002255c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022560:	e3530000 	cmp	r3, #0
80022564:	0a0000a9 	beq	80022810 <exec+0x470>
80022568:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002256c:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
80022570:	e1a01003 	mov	r1, r3
80022574:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022578:	eb0019d3 	bl	80028ccc <clearpteu>
8002257c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022580:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022584:	e3a03000 	mov	r3, #0
80022588:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002258c:	ea00002e 	b	8002264c <exec+0x2ac>
80022590:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022594:	e353001f 	cmp	r3, #31
80022598:	8a00009e 	bhi	80022818 <exec+0x478>
8002259c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800225a0:	e1a03103 	lsl	r3, r3, #2
800225a4:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800225a8:	e0823003 	add	r3, r2, r3
800225ac:	e5933000 	ldr	r3, [r3]
800225b0:	e1a00003 	mov	r0, r3
800225b4:	ebfff7cc 	bl	800204ec <strlen>
800225b8:	e1a03000 	mov	r3, r0
800225bc:	e1a02003 	mov	r2, r3
800225c0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800225c4:	e0433002 	sub	r3, r3, r2
800225c8:	e2433001 	sub	r3, r3, #1
800225cc:	e3c33003 	bic	r3, r3, #3
800225d0:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800225d4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800225d8:	e1a03103 	lsl	r3, r3, #2
800225dc:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800225e0:	e0823003 	add	r3, r2, r3
800225e4:	e5934000 	ldr	r4, [r3]
800225e8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800225ec:	e1a03103 	lsl	r3, r3, #2
800225f0:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800225f4:	e0823003 	add	r3, r2, r3
800225f8:	e5933000 	ldr	r3, [r3]
800225fc:	e1a00003 	mov	r0, r3
80022600:	ebfff7b9 	bl	800204ec <strlen>
80022604:	e1a03000 	mov	r3, r0
80022608:	e2833001 	add	r3, r3, #1
8002260c:	e1a02004 	mov	r2, r4
80022610:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022614:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022618:	eb001a40 	bl	80028f20 <copyout>
8002261c:	e1a03000 	mov	r3, r0
80022620:	e3530000 	cmp	r3, #0
80022624:	ba00007d 	blt	80022820 <exec+0x480>
80022628:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002262c:	e1a03103 	lsl	r3, r3, #2
80022630:	e243300c 	sub	r3, r3, #12
80022634:	e083300b 	add	r3, r3, fp
80022638:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002263c:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022640:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022644:	e2833001 	add	r3, r3, #1
80022648:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002264c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022650:	e1a03103 	lsl	r3, r3, #2
80022654:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022658:	e0823003 	add	r3, r2, r3
8002265c:	e5933000 	ldr	r3, [r3]
80022660:	e3530000 	cmp	r3, #0
80022664:	1affffc9 	bne	80022590 <exec+0x1f0>
80022668:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002266c:	e1a03103 	lsl	r3, r3, #2
80022670:	e243300c 	sub	r3, r3, #12
80022674:	e083300b 	add	r3, r3, fp
80022678:	e3a02000 	mov	r2, #0
8002267c:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022680:	e59f31e0 	ldr	r3, [pc, #480]	@ 80022868 <exec+0x4c8>
80022684:	e5933000 	ldr	r3, [r3]
80022688:	e5933018 	ldr	r3, [r3, #24]
8002268c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022690:	e5832010 	str	r2, [r3, #16]
80022694:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022698:	e2833001 	add	r3, r3, #1
8002269c:	e1a02103 	lsl	r2, r3, #2
800226a0:	e59f31c0 	ldr	r3, [pc, #448]	@ 80022868 <exec+0x4c8>
800226a4:	e5933000 	ldr	r3, [r3]
800226a8:	e5933018 	ldr	r3, [r3, #24]
800226ac:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800226b0:	e0412002 	sub	r2, r1, r2
800226b4:	e5832014 	str	r2, [r3, #20]
800226b8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800226bc:	e2833001 	add	r3, r3, #1
800226c0:	e1a03103 	lsl	r3, r3, #2
800226c4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800226c8:	e0423003 	sub	r3, r2, r3
800226cc:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800226d0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800226d4:	e2833001 	add	r3, r3, #1
800226d8:	e1a03103 	lsl	r3, r3, #2
800226dc:	e24b2f46 	sub	r2, fp, #280	@ 0x118
800226e0:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800226e4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800226e8:	eb001a0c 	bl	80028f20 <copyout>
800226ec:	e1a03000 	mov	r3, r0
800226f0:	e3530000 	cmp	r3, #0
800226f4:	ba00004b 	blt	80022828 <exec+0x488>
800226f8:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
800226fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022700:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022704:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022708:	ea000009 	b	80022734 <exec+0x394>
8002270c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022710:	e5d33000 	ldrb	r3, [r3]
80022714:	e353002f 	cmp	r3, #47	@ 0x2f
80022718:	1a000002 	bne	80022728 <exec+0x388>
8002271c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022720:	e2833001 	add	r3, r3, #1
80022724:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022728:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002272c:	e2833001 	add	r3, r3, #1
80022730:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022734:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022738:	e5d33000 	ldrb	r3, [r3]
8002273c:	e3530000 	cmp	r3, #0
80022740:	1afffff1 	bne	8002270c <exec+0x36c>
80022744:	e59f311c 	ldr	r3, [pc, #284]	@ 80022868 <exec+0x4c8>
80022748:	e5933000 	ldr	r3, [r3]
8002274c:	e283306c 	add	r3, r3, #108	@ 0x6c
80022750:	e3a02010 	mov	r2, #16
80022754:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022758:	e1a00003 	mov	r0, r3
8002275c:	ebfff73b 	bl	80020450 <safestrcpy>
80022760:	e59f3100 	ldr	r3, [pc, #256]	@ 80022868 <exec+0x4c8>
80022764:	e5933000 	ldr	r3, [r3]
80022768:	e5933004 	ldr	r3, [r3, #4]
8002276c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80022770:	e59f30f0 	ldr	r3, [pc, #240]	@ 80022868 <exec+0x4c8>
80022774:	e5933000 	ldr	r3, [r3]
80022778:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002277c:	e5832004 	str	r2, [r3, #4]
80022780:	e59f30e0 	ldr	r3, [pc, #224]	@ 80022868 <exec+0x4c8>
80022784:	e5933000 	ldr	r3, [r3]
80022788:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
8002278c:	e5832000 	str	r2, [r3]
80022790:	e59f30d0 	ldr	r3, [pc, #208]	@ 80022868 <exec+0x4c8>
80022794:	e5933000 	ldr	r3, [r3]
80022798:	e5933018 	ldr	r3, [r3, #24]
8002279c:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
800227a0:	e5832044 	str	r2, [r3, #68]	@ 0x44
800227a4:	e59f30bc 	ldr	r3, [pc, #188]	@ 80022868 <exec+0x4c8>
800227a8:	e5933000 	ldr	r3, [r3]
800227ac:	e5933018 	ldr	r3, [r3, #24]
800227b0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800227b4:	e5832000 	str	r2, [r3]
800227b8:	e59f30a8 	ldr	r3, [pc, #168]	@ 80022868 <exec+0x4c8>
800227bc:	e5933000 	ldr	r3, [r3]
800227c0:	e1a00003 	mov	r0, r3
800227c4:	eb001806 	bl	800287e4 <switchuvm>
800227c8:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
800227cc:	eb00190e 	bl	80028c0c <freevm>
800227d0:	e3a03000 	mov	r3, #0
800227d4:	ea00001f 	b	80022858 <exec+0x4b8>
800227d8:	e1a00000 	nop			@ (mov r0, r0)
800227dc:	ea000012 	b	8002282c <exec+0x48c>
800227e0:	e1a00000 	nop			@ (mov r0, r0)
800227e4:	ea000010 	b	8002282c <exec+0x48c>
800227e8:	e1a00000 	nop			@ (mov r0, r0)
800227ec:	ea00000e 	b	8002282c <exec+0x48c>
800227f0:	e1a00000 	nop			@ (mov r0, r0)
800227f4:	ea00000c 	b	8002282c <exec+0x48c>
800227f8:	e1a00000 	nop			@ (mov r0, r0)
800227fc:	ea00000a 	b	8002282c <exec+0x48c>
80022800:	e1a00000 	nop			@ (mov r0, r0)
80022804:	ea000008 	b	8002282c <exec+0x48c>
80022808:	e1a00000 	nop			@ (mov r0, r0)
8002280c:	ea000006 	b	8002282c <exec+0x48c>
80022810:	e1a00000 	nop			@ (mov r0, r0)
80022814:	ea000004 	b	8002282c <exec+0x48c>
80022818:	e1a00000 	nop			@ (mov r0, r0)
8002281c:	ea000002 	b	8002282c <exec+0x48c>
80022820:	e1a00000 	nop			@ (mov r0, r0)
80022824:	ea000000 	b	8002282c <exec+0x48c>
80022828:	e1a00000 	nop			@ (mov r0, r0)
8002282c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022830:	e3530000 	cmp	r3, #0
80022834:	0a000001 	beq	80022840 <exec+0x4a0>
80022838:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002283c:	eb0018f2 	bl	80028c0c <freevm>
80022840:	e51b3010 	ldr	r3, [fp, #-16]
80022844:	e3530000 	cmp	r3, #0
80022848:	0a000001 	beq	80022854 <exec+0x4b4>
8002284c:	e51b0010 	ldr	r0, [fp, #-16]
80022850:	eb0003d6 	bl	800237b0 <iunlockput>
80022854:	e3e03000 	mvn	r3, #0
80022858:	e1a00003 	mov	r0, r3
8002285c:	e24bd008 	sub	sp, fp, #8
80022860:	e8bd8810 	pop	{r4, fp, pc}
80022864:	464c457f 	.word	0x464c457f
80022868:	800b0db0 	.word	0x800b0db0

8002286c <fileinit>:
8002286c:	e92d4800 	push	{fp, lr}
80022870:	e28db004 	add	fp, sp, #4
80022874:	e59f100c 	ldr	r1, [pc, #12]	@ 80022888 <fileinit+0x1c>
80022878:	e59f000c 	ldr	r0, [pc, #12]	@ 8002288c <fileinit+0x20>
8002287c:	eb000eb4 	bl	80026354 <initlock>
80022880:	e1a00000 	nop			@ (mov r0, r0)
80022884:	e8bd8800 	pop	{fp, pc}
80022888:	80029a70 	.word	0x80029a70
8002288c:	800acbb0 	.word	0x800acbb0

80022890 <filealloc>:
80022890:	e92d4800 	push	{fp, lr}
80022894:	e28db004 	add	fp, sp, #4
80022898:	e24dd008 	sub	sp, sp, #8
8002289c:	e59f006c 	ldr	r0, [pc, #108]	@ 80022910 <filealloc+0x80>
800228a0:	eb000ebd 	bl	8002639c <acquire>
800228a4:	e59f3068 	ldr	r3, [pc, #104]	@ 80022914 <filealloc+0x84>
800228a8:	e50b3008 	str	r3, [fp, #-8]
800228ac:	ea00000d 	b	800228e8 <filealloc+0x58>
800228b0:	e51b3008 	ldr	r3, [fp, #-8]
800228b4:	e5933004 	ldr	r3, [r3, #4]
800228b8:	e3530000 	cmp	r3, #0
800228bc:	1a000006 	bne	800228dc <filealloc+0x4c>
800228c0:	e51b3008 	ldr	r3, [fp, #-8]
800228c4:	e3a02001 	mov	r2, #1
800228c8:	e5832004 	str	r2, [r3, #4]
800228cc:	e59f003c 	ldr	r0, [pc, #60]	@ 80022910 <filealloc+0x80>
800228d0:	eb000ebc 	bl	800263c8 <release>
800228d4:	e51b3008 	ldr	r3, [fp, #-8]
800228d8:	ea000009 	b	80022904 <filealloc+0x74>
800228dc:	e51b3008 	ldr	r3, [fp, #-8]
800228e0:	e2833018 	add	r3, r3, #24
800228e4:	e50b3008 	str	r3, [fp, #-8]
800228e8:	e59f2028 	ldr	r2, [pc, #40]	@ 80022918 <filealloc+0x88>
800228ec:	e51b3008 	ldr	r3, [fp, #-8]
800228f0:	e1530002 	cmp	r3, r2
800228f4:	3affffed 	bcc	800228b0 <filealloc+0x20>
800228f8:	e59f0010 	ldr	r0, [pc, #16]	@ 80022910 <filealloc+0x80>
800228fc:	eb000eb1 	bl	800263c8 <release>
80022900:	e3a03000 	mov	r3, #0
80022904:	e1a00003 	mov	r0, r3
80022908:	e24bd004 	sub	sp, fp, #4
8002290c:	e8bd8800 	pop	{fp, pc}
80022910:	800acbb0 	.word	0x800acbb0
80022914:	800acbe4 	.word	0x800acbe4
80022918:	800ad544 	.word	0x800ad544

8002291c <filedup>:
8002291c:	e92d4800 	push	{fp, lr}
80022920:	e28db004 	add	fp, sp, #4
80022924:	e24dd008 	sub	sp, sp, #8
80022928:	e50b0008 	str	r0, [fp, #-8]
8002292c:	e59f0044 	ldr	r0, [pc, #68]	@ 80022978 <filedup+0x5c>
80022930:	eb000e99 	bl	8002639c <acquire>
80022934:	e51b3008 	ldr	r3, [fp, #-8]
80022938:	e5933004 	ldr	r3, [r3, #4]
8002293c:	e3530000 	cmp	r3, #0
80022940:	ca000001 	bgt	8002294c <filedup+0x30>
80022944:	e59f0030 	ldr	r0, [pc, #48]	@ 8002297c <filedup+0x60>
80022948:	ebfffc69 	bl	80021af4 <panic>
8002294c:	e51b3008 	ldr	r3, [fp, #-8]
80022950:	e5933004 	ldr	r3, [r3, #4]
80022954:	e2832001 	add	r2, r3, #1
80022958:	e51b3008 	ldr	r3, [fp, #-8]
8002295c:	e5832004 	str	r2, [r3, #4]
80022960:	e59f0010 	ldr	r0, [pc, #16]	@ 80022978 <filedup+0x5c>
80022964:	eb000e97 	bl	800263c8 <release>
80022968:	e51b3008 	ldr	r3, [fp, #-8]
8002296c:	e1a00003 	mov	r0, r3
80022970:	e24bd004 	sub	sp, fp, #4
80022974:	e8bd8800 	pop	{fp, pc}
80022978:	800acbb0 	.word	0x800acbb0
8002297c:	80029a78 	.word	0x80029a78

80022980 <fileclose>:
80022980:	e92d4800 	push	{fp, lr}
80022984:	e28db004 	add	fp, sp, #4
80022988:	e24dd020 	sub	sp, sp, #32
8002298c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022990:	e59f00d0 	ldr	r0, [pc, #208]	@ 80022a68 <fileclose+0xe8>
80022994:	eb000e80 	bl	8002639c <acquire>
80022998:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002299c:	e5933004 	ldr	r3, [r3, #4]
800229a0:	e3530000 	cmp	r3, #0
800229a4:	ca000001 	bgt	800229b0 <fileclose+0x30>
800229a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 80022a6c <fileclose+0xec>
800229ac:	ebfffc50 	bl	80021af4 <panic>
800229b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229b4:	e5933004 	ldr	r3, [r3, #4]
800229b8:	e2432001 	sub	r2, r3, #1
800229bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229c0:	e5832004 	str	r2, [r3, #4]
800229c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229c8:	e5933004 	ldr	r3, [r3, #4]
800229cc:	e3530000 	cmp	r3, #0
800229d0:	da000002 	ble	800229e0 <fileclose+0x60>
800229d4:	e59f008c 	ldr	r0, [pc, #140]	@ 80022a68 <fileclose+0xe8>
800229d8:	eb000e7a 	bl	800263c8 <release>
800229dc:	ea00001f 	b	80022a60 <fileclose+0xe0>
800229e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229e4:	e24bc01c 	sub	ip, fp, #28
800229e8:	e1a0e003 	mov	lr, r3
800229ec:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
800229f0:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
800229f4:	e89e0003 	ldm	lr, {r0, r1}
800229f8:	e88c0003 	stm	ip, {r0, r1}
800229fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a00:	e3a02000 	mov	r2, #0
80022a04:	e5832004 	str	r2, [r3, #4]
80022a08:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022a0c:	e3a02000 	mov	r2, #0
80022a10:	e5c32000 	strb	r2, [r3]
80022a14:	e59f004c 	ldr	r0, [pc, #76]	@ 80022a68 <fileclose+0xe8>
80022a18:	eb000e6a 	bl	800263c8 <release>
80022a1c:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022a20:	e3530001 	cmp	r3, #1
80022a24:	1a000005 	bne	80022a40 <fileclose+0xc0>
80022a28:	e51b3010 	ldr	r3, [fp, #-16]
80022a2c:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
80022a30:	e1a01002 	mov	r1, r2
80022a34:	e1a00003 	mov	r0, r3
80022a38:	eb0008e8 	bl	80024de0 <pipeclose>
80022a3c:	ea000007 	b	80022a60 <fileclose+0xe0>
80022a40:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022a44:	e3530002 	cmp	r3, #2
80022a48:	1a000004 	bne	80022a60 <fileclose+0xe0>
80022a4c:	eb000742 	bl	8002475c <begin_trans>
80022a50:	e51b300c 	ldr	r3, [fp, #-12]
80022a54:	e1a00003 	mov	r0, r3
80022a58:	eb000319 	bl	800236c4 <iput>
80022a5c:	eb000752 	bl	800247ac <commit_trans>
80022a60:	e24bd004 	sub	sp, fp, #4
80022a64:	e8bd8800 	pop	{fp, pc}
80022a68:	800acbb0 	.word	0x800acbb0
80022a6c:	80029a80 	.word	0x80029a80

80022a70 <filestat>:
80022a70:	e92d4800 	push	{fp, lr}
80022a74:	e28db004 	add	fp, sp, #4
80022a78:	e24dd008 	sub	sp, sp, #8
80022a7c:	e50b0008 	str	r0, [fp, #-8]
80022a80:	e50b100c 	str	r1, [fp, #-12]
80022a84:	e51b3008 	ldr	r3, [fp, #-8]
80022a88:	e5d33000 	ldrb	r3, [r3]
80022a8c:	e3530002 	cmp	r3, #2
80022a90:	1a00000e 	bne	80022ad0 <filestat+0x60>
80022a94:	e51b3008 	ldr	r3, [fp, #-8]
80022a98:	e5933010 	ldr	r3, [r3, #16]
80022a9c:	e1a00003 	mov	r0, r3
80022aa0:	eb000281 	bl	800234ac <ilock>
80022aa4:	e51b3008 	ldr	r3, [fp, #-8]
80022aa8:	e5933010 	ldr	r3, [r3, #16]
80022aac:	e51b100c 	ldr	r1, [fp, #-12]
80022ab0:	e1a00003 	mov	r0, r3
80022ab4:	eb00040a 	bl	80023ae4 <stati>
80022ab8:	e51b3008 	ldr	r3, [fp, #-8]
80022abc:	e5933010 	ldr	r3, [r3, #16]
80022ac0:	e1a00003 	mov	r0, r3
80022ac4:	eb0002dc 	bl	8002363c <iunlock>
80022ac8:	e3a03000 	mov	r3, #0
80022acc:	ea000000 	b	80022ad4 <filestat+0x64>
80022ad0:	e3e03000 	mvn	r3, #0
80022ad4:	e1a00003 	mov	r0, r3
80022ad8:	e24bd004 	sub	sp, fp, #4
80022adc:	e8bd8800 	pop	{fp, pc}

80022ae0 <fileread>:
80022ae0:	e92d4800 	push	{fp, lr}
80022ae4:	e28db004 	add	fp, sp, #4
80022ae8:	e24dd018 	sub	sp, sp, #24
80022aec:	e50b0010 	str	r0, [fp, #-16]
80022af0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022af4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022af8:	e51b3010 	ldr	r3, [fp, #-16]
80022afc:	e5d33008 	ldrb	r3, [r3, #8]
80022b00:	e3530000 	cmp	r3, #0
80022b04:	1a000001 	bne	80022b10 <fileread+0x30>
80022b08:	e3e03000 	mvn	r3, #0
80022b0c:	ea00002c 	b	80022bc4 <fileread+0xe4>
80022b10:	e51b3010 	ldr	r3, [fp, #-16]
80022b14:	e5d33000 	ldrb	r3, [r3]
80022b18:	e3530001 	cmp	r3, #1
80022b1c:	1a000007 	bne	80022b40 <fileread+0x60>
80022b20:	e51b3010 	ldr	r3, [fp, #-16]
80022b24:	e593300c 	ldr	r3, [r3, #12]
80022b28:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022b2c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022b30:	e1a00003 	mov	r0, r3
80022b34:	eb000923 	bl	80024fc8 <piperead>
80022b38:	e1a03000 	mov	r3, r0
80022b3c:	ea000020 	b	80022bc4 <fileread+0xe4>
80022b40:	e51b3010 	ldr	r3, [fp, #-16]
80022b44:	e5d33000 	ldrb	r3, [r3]
80022b48:	e3530002 	cmp	r3, #2
80022b4c:	1a00001a 	bne	80022bbc <fileread+0xdc>
80022b50:	e51b3010 	ldr	r3, [fp, #-16]
80022b54:	e5933010 	ldr	r3, [r3, #16]
80022b58:	e1a00003 	mov	r0, r3
80022b5c:	eb000252 	bl	800234ac <ilock>
80022b60:	e51b3010 	ldr	r3, [fp, #-16]
80022b64:	e5930010 	ldr	r0, [r3, #16]
80022b68:	e51b3010 	ldr	r3, [fp, #-16]
80022b6c:	e5932014 	ldr	r2, [r3, #20]
80022b70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b74:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022b78:	eb0003f7 	bl	80023b5c <readi>
80022b7c:	e50b0008 	str	r0, [fp, #-8]
80022b80:	e51b3008 	ldr	r3, [fp, #-8]
80022b84:	e3530000 	cmp	r3, #0
80022b88:	da000005 	ble	80022ba4 <fileread+0xc4>
80022b8c:	e51b3010 	ldr	r3, [fp, #-16]
80022b90:	e5932014 	ldr	r2, [r3, #20]
80022b94:	e51b3008 	ldr	r3, [fp, #-8]
80022b98:	e0822003 	add	r2, r2, r3
80022b9c:	e51b3010 	ldr	r3, [fp, #-16]
80022ba0:	e5832014 	str	r2, [r3, #20]
80022ba4:	e51b3010 	ldr	r3, [fp, #-16]
80022ba8:	e5933010 	ldr	r3, [r3, #16]
80022bac:	e1a00003 	mov	r0, r3
80022bb0:	eb0002a1 	bl	8002363c <iunlock>
80022bb4:	e51b3008 	ldr	r3, [fp, #-8]
80022bb8:	ea000001 	b	80022bc4 <fileread+0xe4>
80022bbc:	e59f000c 	ldr	r0, [pc, #12]	@ 80022bd0 <fileread+0xf0>
80022bc0:	ebfffbcb 	bl	80021af4 <panic>
80022bc4:	e1a00003 	mov	r0, r3
80022bc8:	e24bd004 	sub	sp, fp, #4
80022bcc:	e8bd8800 	pop	{fp, pc}
80022bd0:	80029a8c 	.word	0x80029a8c

80022bd4 <filewrite>:
80022bd4:	e92d4800 	push	{fp, lr}
80022bd8:	e28db004 	add	fp, sp, #4
80022bdc:	e24dd020 	sub	sp, sp, #32
80022be0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022be4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022be8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80022bec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022bf0:	e5d33009 	ldrb	r3, [r3, #9]
80022bf4:	e3530000 	cmp	r3, #0
80022bf8:	1a000001 	bne	80022c04 <filewrite+0x30>
80022bfc:	e3e03000 	mvn	r3, #0
80022c00:	ea000058 	b	80022d68 <filewrite+0x194>
80022c04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c08:	e5d33000 	ldrb	r3, [r3]
80022c0c:	e3530001 	cmp	r3, #1
80022c10:	1a000007 	bne	80022c34 <filewrite+0x60>
80022c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c18:	e593300c 	ldr	r3, [r3, #12]
80022c1c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022c20:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022c24:	e1a00003 	mov	r0, r3
80022c28:	eb00089f 	bl	80024eac <pipewrite>
80022c2c:	e1a03000 	mov	r3, r0
80022c30:	ea00004c 	b	80022d68 <filewrite+0x194>
80022c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c38:	e5d33000 	ldrb	r3, [r3]
80022c3c:	e3530002 	cmp	r3, #2
80022c40:	1a000046 	bne	80022d60 <filewrite+0x18c>
80022c44:	e3a03c06 	mov	r3, #1536	@ 0x600
80022c48:	e50b3010 	str	r3, [fp, #-16]
80022c4c:	e3a03000 	mov	r3, #0
80022c50:	e50b3008 	str	r3, [fp, #-8]
80022c54:	ea000033 	b	80022d28 <filewrite+0x154>
80022c58:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022c5c:	e51b3008 	ldr	r3, [fp, #-8]
80022c60:	e0423003 	sub	r3, r2, r3
80022c64:	e50b300c 	str	r3, [fp, #-12]
80022c68:	e51b200c 	ldr	r2, [fp, #-12]
80022c6c:	e51b3010 	ldr	r3, [fp, #-16]
80022c70:	e1520003 	cmp	r2, r3
80022c74:	da000001 	ble	80022c80 <filewrite+0xac>
80022c78:	e51b3010 	ldr	r3, [fp, #-16]
80022c7c:	e50b300c 	str	r3, [fp, #-12]
80022c80:	eb0006b5 	bl	8002475c <begin_trans>
80022c84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c88:	e5933010 	ldr	r3, [r3, #16]
80022c8c:	e1a00003 	mov	r0, r3
80022c90:	eb000205 	bl	800234ac <ilock>
80022c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c98:	e5930010 	ldr	r0, [r3, #16]
80022c9c:	e51b3008 	ldr	r3, [fp, #-8]
80022ca0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022ca4:	e0821003 	add	r1, r2, r3
80022ca8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022cac:	e5932014 	ldr	r2, [r3, #20]
80022cb0:	e51b300c 	ldr	r3, [fp, #-12]
80022cb4:	eb000423 	bl	80023d48 <writei>
80022cb8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022cbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022cc0:	e3530000 	cmp	r3, #0
80022cc4:	da000005 	ble	80022ce0 <filewrite+0x10c>
80022cc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022ccc:	e5932014 	ldr	r2, [r3, #20]
80022cd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022cd4:	e0822003 	add	r2, r2, r3
80022cd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022cdc:	e5832014 	str	r2, [r3, #20]
80022ce0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022ce4:	e5933010 	ldr	r3, [r3, #16]
80022ce8:	e1a00003 	mov	r0, r3
80022cec:	eb000252 	bl	8002363c <iunlock>
80022cf0:	eb0006ad 	bl	800247ac <commit_trans>
80022cf4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022cf8:	e3530000 	cmp	r3, #0
80022cfc:	ba00000e 	blt	80022d3c <filewrite+0x168>
80022d00:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022d04:	e51b300c 	ldr	r3, [fp, #-12]
80022d08:	e1520003 	cmp	r2, r3
80022d0c:	0a000001 	beq	80022d18 <filewrite+0x144>
80022d10:	e59f005c 	ldr	r0, [pc, #92]	@ 80022d74 <filewrite+0x1a0>
80022d14:	ebfffb76 	bl	80021af4 <panic>
80022d18:	e51b2008 	ldr	r2, [fp, #-8]
80022d1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022d20:	e0823003 	add	r3, r2, r3
80022d24:	e50b3008 	str	r3, [fp, #-8]
80022d28:	e51b2008 	ldr	r2, [fp, #-8]
80022d2c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022d30:	e1520003 	cmp	r2, r3
80022d34:	baffffc7 	blt	80022c58 <filewrite+0x84>
80022d38:	ea000000 	b	80022d40 <filewrite+0x16c>
80022d3c:	e1a00000 	nop			@ (mov r0, r0)
80022d40:	e51b2008 	ldr	r2, [fp, #-8]
80022d44:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022d48:	e1520003 	cmp	r2, r3
80022d4c:	1a000001 	bne	80022d58 <filewrite+0x184>
80022d50:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022d54:	ea000003 	b	80022d68 <filewrite+0x194>
80022d58:	e3e03000 	mvn	r3, #0
80022d5c:	ea000001 	b	80022d68 <filewrite+0x194>
80022d60:	e59f0010 	ldr	r0, [pc, #16]	@ 80022d78 <filewrite+0x1a4>
80022d64:	ebfffb62 	bl	80021af4 <panic>
80022d68:	e1a00003 	mov	r0, r3
80022d6c:	e24bd004 	sub	sp, fp, #4
80022d70:	e8bd8800 	pop	{fp, pc}
80022d74:	80029a98 	.word	0x80029a98
80022d78:	80029aa8 	.word	0x80029aa8

80022d7c <readsb>:
80022d7c:	e92d4800 	push	{fp, lr}
80022d80:	e28db004 	add	fp, sp, #4
80022d84:	e24dd010 	sub	sp, sp, #16
80022d88:	e50b0010 	str	r0, [fp, #-16]
80022d8c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022d90:	e51b3010 	ldr	r3, [fp, #-16]
80022d94:	e3a01001 	mov	r1, #1
80022d98:	e1a00003 	mov	r0, r3
80022d9c:	ebfff75c 	bl	80020b14 <bread>
80022da0:	e50b0008 	str	r0, [fp, #-8]
80022da4:	e51b3008 	ldr	r3, [fp, #-8]
80022da8:	e2833018 	add	r3, r3, #24
80022dac:	e3a02010 	mov	r2, #16
80022db0:	e1a01003 	mov	r1, r3
80022db4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022db8:	ebfff502 	bl	800201c8 <memmove>
80022dbc:	e51b0008 	ldr	r0, [fp, #-8]
80022dc0:	ebfff77d 	bl	80020bbc <brelse>
80022dc4:	e1a00000 	nop			@ (mov r0, r0)
80022dc8:	e24bd004 	sub	sp, fp, #4
80022dcc:	e8bd8800 	pop	{fp, pc}

80022dd0 <bzero>:
80022dd0:	e92d4800 	push	{fp, lr}
80022dd4:	e28db004 	add	fp, sp, #4
80022dd8:	e24dd010 	sub	sp, sp, #16
80022ddc:	e50b0010 	str	r0, [fp, #-16]
80022de0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022de4:	e51b3010 	ldr	r3, [fp, #-16]
80022de8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022dec:	e1a01002 	mov	r1, r2
80022df0:	e1a00003 	mov	r0, r3
80022df4:	ebfff746 	bl	80020b14 <bread>
80022df8:	e50b0008 	str	r0, [fp, #-8]
80022dfc:	e51b3008 	ldr	r3, [fp, #-8]
80022e00:	e2833018 	add	r3, r3, #24
80022e04:	e3a02c02 	mov	r2, #512	@ 0x200
80022e08:	e3a01000 	mov	r1, #0
80022e0c:	e1a00003 	mov	r0, r3
80022e10:	ebfff47a 	bl	80020000 <memset>
80022e14:	e51b0008 	ldr	r0, [fp, #-8]
80022e18:	eb00067b 	bl	8002480c <log_write>
80022e1c:	e51b0008 	ldr	r0, [fp, #-8]
80022e20:	ebfff765 	bl	80020bbc <brelse>
80022e24:	e1a00000 	nop			@ (mov r0, r0)
80022e28:	e24bd004 	sub	sp, fp, #4
80022e2c:	e8bd8800 	pop	{fp, pc}

80022e30 <balloc>:
80022e30:	e92d4800 	push	{fp, lr}
80022e34:	e28db004 	add	fp, sp, #4
80022e38:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022e3c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022e40:	e3a03000 	mov	r3, #0
80022e44:	e50b3010 	str	r3, [fp, #-16]
80022e48:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022e4c:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022e50:	e1a01002 	mov	r1, r2
80022e54:	e1a00003 	mov	r0, r3
80022e58:	ebffffc7 	bl	80022d7c <readsb>
80022e5c:	e3a03000 	mov	r3, #0
80022e60:	e50b3008 	str	r3, [fp, #-8]
80022e64:	ea000059 	b	80022fd0 <balloc+0x1a0>
80022e68:	e51b3008 	ldr	r3, [fp, #-8]
80022e6c:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022e70:	e282200f 	add	r2, r2, #15
80022e74:	e3530000 	cmp	r3, #0
80022e78:	b1a03002 	movlt	r3, r2
80022e7c:	a1a03003 	movge	r3, r3
80022e80:	e1a03643 	asr	r3, r3, #12
80022e84:	e1a02003 	mov	r2, r3
80022e88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022e8c:	e1a031a3 	lsr	r3, r3, #3
80022e90:	e0823003 	add	r3, r2, r3
80022e94:	e2833003 	add	r3, r3, #3
80022e98:	e1a01003 	mov	r1, r3
80022e9c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022ea0:	ebfff71b 	bl	80020b14 <bread>
80022ea4:	e50b0010 	str	r0, [fp, #-16]
80022ea8:	e3a03000 	mov	r3, #0
80022eac:	e50b300c 	str	r3, [fp, #-12]
80022eb0:	ea000037 	b	80022f94 <balloc+0x164>
80022eb4:	e51b300c 	ldr	r3, [fp, #-12]
80022eb8:	e2033007 	and	r3, r3, #7
80022ebc:	e3a02001 	mov	r2, #1
80022ec0:	e1a03312 	lsl	r3, r2, r3
80022ec4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022ec8:	e51b300c 	ldr	r3, [fp, #-12]
80022ecc:	e2832007 	add	r2, r3, #7
80022ed0:	e3530000 	cmp	r3, #0
80022ed4:	b1a03002 	movlt	r3, r2
80022ed8:	a1a03003 	movge	r3, r3
80022edc:	e1a031c3 	asr	r3, r3, #3
80022ee0:	e1a02003 	mov	r2, r3
80022ee4:	e51b3010 	ldr	r3, [fp, #-16]
80022ee8:	e0833002 	add	r3, r3, r2
80022eec:	e5d33018 	ldrb	r3, [r3, #24]
80022ef0:	e1a02003 	mov	r2, r3
80022ef4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ef8:	e0033002 	and	r3, r3, r2
80022efc:	e3530000 	cmp	r3, #0
80022f00:	1a000020 	bne	80022f88 <balloc+0x158>
80022f04:	e51b300c 	ldr	r3, [fp, #-12]
80022f08:	e2832007 	add	r2, r3, #7
80022f0c:	e3530000 	cmp	r3, #0
80022f10:	b1a03002 	movlt	r3, r2
80022f14:	a1a03003 	movge	r3, r3
80022f18:	e1a031c3 	asr	r3, r3, #3
80022f1c:	e51b2010 	ldr	r2, [fp, #-16]
80022f20:	e0822003 	add	r2, r2, r3
80022f24:	e5d22018 	ldrb	r2, [r2, #24]
80022f28:	e6af1072 	sxtb	r1, r2
80022f2c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022f30:	e6af2072 	sxtb	r2, r2
80022f34:	e1812002 	orr	r2, r1, r2
80022f38:	e6af2072 	sxtb	r2, r2
80022f3c:	e6ef1072 	uxtb	r1, r2
80022f40:	e51b2010 	ldr	r2, [fp, #-16]
80022f44:	e0823003 	add	r3, r2, r3
80022f48:	e1a02001 	mov	r2, r1
80022f4c:	e5c32018 	strb	r2, [r3, #24]
80022f50:	e51b0010 	ldr	r0, [fp, #-16]
80022f54:	eb00062c 	bl	8002480c <log_write>
80022f58:	e51b0010 	ldr	r0, [fp, #-16]
80022f5c:	ebfff716 	bl	80020bbc <brelse>
80022f60:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022f64:	e51b2008 	ldr	r2, [fp, #-8]
80022f68:	e51b300c 	ldr	r3, [fp, #-12]
80022f6c:	e0823003 	add	r3, r2, r3
80022f70:	e1a01003 	mov	r1, r3
80022f74:	ebffff95 	bl	80022dd0 <bzero>
80022f78:	e51b2008 	ldr	r2, [fp, #-8]
80022f7c:	e51b300c 	ldr	r3, [fp, #-12]
80022f80:	e0823003 	add	r3, r2, r3
80022f84:	ea000017 	b	80022fe8 <balloc+0x1b8>
80022f88:	e51b300c 	ldr	r3, [fp, #-12]
80022f8c:	e2833001 	add	r3, r3, #1
80022f90:	e50b300c 	str	r3, [fp, #-12]
80022f94:	e51b300c 	ldr	r3, [fp, #-12]
80022f98:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022f9c:	aa000006 	bge	80022fbc <balloc+0x18c>
80022fa0:	e51b2008 	ldr	r2, [fp, #-8]
80022fa4:	e51b300c 	ldr	r3, [fp, #-12]
80022fa8:	e0823003 	add	r3, r2, r3
80022fac:	e1a02003 	mov	r2, r3
80022fb0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022fb4:	e1520003 	cmp	r2, r3
80022fb8:	3affffbd 	bcc	80022eb4 <balloc+0x84>
80022fbc:	e51b0010 	ldr	r0, [fp, #-16]
80022fc0:	ebfff6fd 	bl	80020bbc <brelse>
80022fc4:	e51b3008 	ldr	r3, [fp, #-8]
80022fc8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022fcc:	e50b3008 	str	r3, [fp, #-8]
80022fd0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022fd4:	e51b3008 	ldr	r3, [fp, #-8]
80022fd8:	e1520003 	cmp	r2, r3
80022fdc:	8affffa1 	bhi	80022e68 <balloc+0x38>
80022fe0:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ff4 <balloc+0x1c4>
80022fe4:	ebfffac2 	bl	80021af4 <panic>
80022fe8:	e1a00003 	mov	r0, r3
80022fec:	e24bd004 	sub	sp, fp, #4
80022ff0:	e8bd8800 	pop	{fp, pc}
80022ff4:	80029ab4 	.word	0x80029ab4

80022ff8 <bfree>:
80022ff8:	e92d4800 	push	{fp, lr}
80022ffc:	e28db004 	add	fp, sp, #4
80023000:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023004:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80023008:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
8002300c:	e24b3020 	sub	r3, fp, #32
80023010:	e1a01003 	mov	r1, r3
80023014:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023018:	ebffff57 	bl	80022d7c <readsb>
8002301c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023020:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023024:	e1a02623 	lsr	r2, r3, #12
80023028:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002302c:	e1a031a3 	lsr	r3, r3, #3
80023030:	e0823003 	add	r3, r2, r3
80023034:	e2833003 	add	r3, r3, #3
80023038:	e1a01003 	mov	r1, r3
8002303c:	ebfff6b4 	bl	80020b14 <bread>
80023040:	e50b0008 	str	r0, [fp, #-8]
80023044:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023048:	e1a03a03 	lsl	r3, r3, #20
8002304c:	e1a03a23 	lsr	r3, r3, #20
80023050:	e50b300c 	str	r3, [fp, #-12]
80023054:	e51b300c 	ldr	r3, [fp, #-12]
80023058:	e2033007 	and	r3, r3, #7
8002305c:	e3a02001 	mov	r2, #1
80023060:	e1a03312 	lsl	r3, r2, r3
80023064:	e50b3010 	str	r3, [fp, #-16]
80023068:	e51b300c 	ldr	r3, [fp, #-12]
8002306c:	e2832007 	add	r2, r3, #7
80023070:	e3530000 	cmp	r3, #0
80023074:	b1a03002 	movlt	r3, r2
80023078:	a1a03003 	movge	r3, r3
8002307c:	e1a031c3 	asr	r3, r3, #3
80023080:	e1a02003 	mov	r2, r3
80023084:	e51b3008 	ldr	r3, [fp, #-8]
80023088:	e0833002 	add	r3, r3, r2
8002308c:	e5d33018 	ldrb	r3, [r3, #24]
80023090:	e1a02003 	mov	r2, r3
80023094:	e51b3010 	ldr	r3, [fp, #-16]
80023098:	e0033002 	and	r3, r3, r2
8002309c:	e3530000 	cmp	r3, #0
800230a0:	1a000001 	bne	800230ac <bfree+0xb4>
800230a4:	e59f0070 	ldr	r0, [pc, #112]	@ 8002311c <bfree+0x124>
800230a8:	ebfffa91 	bl	80021af4 <panic>
800230ac:	e51b300c 	ldr	r3, [fp, #-12]
800230b0:	e2832007 	add	r2, r3, #7
800230b4:	e3530000 	cmp	r3, #0
800230b8:	b1a03002 	movlt	r3, r2
800230bc:	a1a03003 	movge	r3, r3
800230c0:	e1a031c3 	asr	r3, r3, #3
800230c4:	e51b2008 	ldr	r2, [fp, #-8]
800230c8:	e0822003 	add	r2, r2, r3
800230cc:	e5d22018 	ldrb	r2, [r2, #24]
800230d0:	e6af1072 	sxtb	r1, r2
800230d4:	e51b2010 	ldr	r2, [fp, #-16]
800230d8:	e6af2072 	sxtb	r2, r2
800230dc:	e1e02002 	mvn	r2, r2
800230e0:	e6af2072 	sxtb	r2, r2
800230e4:	e0022001 	and	r2, r2, r1
800230e8:	e6af2072 	sxtb	r2, r2
800230ec:	e6ef1072 	uxtb	r1, r2
800230f0:	e51b2008 	ldr	r2, [fp, #-8]
800230f4:	e0823003 	add	r3, r2, r3
800230f8:	e1a02001 	mov	r2, r1
800230fc:	e5c32018 	strb	r2, [r3, #24]
80023100:	e51b0008 	ldr	r0, [fp, #-8]
80023104:	eb0005c0 	bl	8002480c <log_write>
80023108:	e51b0008 	ldr	r0, [fp, #-8]
8002310c:	ebfff6aa 	bl	80020bbc <brelse>
80023110:	e1a00000 	nop			@ (mov r0, r0)
80023114:	e24bd004 	sub	sp, fp, #4
80023118:	e8bd8800 	pop	{fp, pc}
8002311c:	80029acc 	.word	0x80029acc

80023120 <iinit>:
80023120:	e92d4800 	push	{fp, lr}
80023124:	e28db004 	add	fp, sp, #4
80023128:	e59f100c 	ldr	r1, [pc, #12]	@ 8002313c <iinit+0x1c>
8002312c:	e59f000c 	ldr	r0, [pc, #12]	@ 80023140 <iinit+0x20>
80023130:	eb000c87 	bl	80026354 <initlock>
80023134:	e1a00000 	nop			@ (mov r0, r0)
80023138:	e8bd8800 	pop	{fp, pc}
8002313c:	80029ae0 	.word	0x80029ae0
80023140:	800ad544 	.word	0x800ad544

80023144 <ialloc>:
80023144:	e92d4800 	push	{fp, lr}
80023148:	e28db004 	add	fp, sp, #4
8002314c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023150:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80023154:	e1a03001 	mov	r3, r1
80023158:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
8002315c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023160:	e24b2020 	sub	r2, fp, #32
80023164:	e1a01002 	mov	r1, r2
80023168:	e1a00003 	mov	r0, r3
8002316c:	ebffff02 	bl	80022d7c <readsb>
80023170:	e3a03001 	mov	r3, #1
80023174:	e50b3008 	str	r3, [fp, #-8]
80023178:	ea000027 	b	8002321c <ialloc+0xd8>
8002317c:	e51b3008 	ldr	r3, [fp, #-8]
80023180:	e1a031a3 	lsr	r3, r3, #3
80023184:	e2833002 	add	r3, r3, #2
80023188:	e1a01003 	mov	r1, r3
8002318c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023190:	ebfff65f 	bl	80020b14 <bread>
80023194:	e50b000c 	str	r0, [fp, #-12]
80023198:	e51b300c 	ldr	r3, [fp, #-12]
8002319c:	e2832018 	add	r2, r3, #24
800231a0:	e51b3008 	ldr	r3, [fp, #-8]
800231a4:	e2033007 	and	r3, r3, #7
800231a8:	e1a03303 	lsl	r3, r3, #6
800231ac:	e0823003 	add	r3, r2, r3
800231b0:	e50b3010 	str	r3, [fp, #-16]
800231b4:	e51b3010 	ldr	r3, [fp, #-16]
800231b8:	e1d330f0 	ldrsh	r3, [r3]
800231bc:	e3530000 	cmp	r3, #0
800231c0:	1a000010 	bne	80023208 <ialloc+0xc4>
800231c4:	e3a02040 	mov	r2, #64	@ 0x40
800231c8:	e3a01000 	mov	r1, #0
800231cc:	e51b0010 	ldr	r0, [fp, #-16]
800231d0:	ebfff38a 	bl	80020000 <memset>
800231d4:	e51b3010 	ldr	r3, [fp, #-16]
800231d8:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
800231dc:	e1c320b0 	strh	r2, [r3]
800231e0:	e51b000c 	ldr	r0, [fp, #-12]
800231e4:	eb000588 	bl	8002480c <log_write>
800231e8:	e51b000c 	ldr	r0, [fp, #-12]
800231ec:	ebfff672 	bl	80020bbc <brelse>
800231f0:	e51b3008 	ldr	r3, [fp, #-8]
800231f4:	e1a01003 	mov	r1, r3
800231f8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
800231fc:	eb000048 	bl	80023324 <iget>
80023200:	e1a03000 	mov	r3, r0
80023204:	ea00000a 	b	80023234 <ialloc+0xf0>
80023208:	e51b000c 	ldr	r0, [fp, #-12]
8002320c:	ebfff66a 	bl	80020bbc <brelse>
80023210:	e51b3008 	ldr	r3, [fp, #-8]
80023214:	e2833001 	add	r3, r3, #1
80023218:	e50b3008 	str	r3, [fp, #-8]
8002321c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023220:	e51b3008 	ldr	r3, [fp, #-8]
80023224:	e1520003 	cmp	r2, r3
80023228:	8affffd3 	bhi	8002317c <ialloc+0x38>
8002322c:	e59f000c 	ldr	r0, [pc, #12]	@ 80023240 <ialloc+0xfc>
80023230:	ebfffa2f 	bl	80021af4 <panic>
80023234:	e1a00003 	mov	r0, r3
80023238:	e24bd004 	sub	sp, fp, #4
8002323c:	e8bd8800 	pop	{fp, pc}
80023240:	80029ae8 	.word	0x80029ae8

80023244 <iupdate>:
80023244:	e92d4800 	push	{fp, lr}
80023248:	e28db004 	add	fp, sp, #4
8002324c:	e24dd010 	sub	sp, sp, #16
80023250:	e50b0010 	str	r0, [fp, #-16]
80023254:	e51b3010 	ldr	r3, [fp, #-16]
80023258:	e5932000 	ldr	r2, [r3]
8002325c:	e51b3010 	ldr	r3, [fp, #-16]
80023260:	e5933004 	ldr	r3, [r3, #4]
80023264:	e1a031a3 	lsr	r3, r3, #3
80023268:	e2833002 	add	r3, r3, #2
8002326c:	e1a01003 	mov	r1, r3
80023270:	e1a00002 	mov	r0, r2
80023274:	ebfff626 	bl	80020b14 <bread>
80023278:	e50b0008 	str	r0, [fp, #-8]
8002327c:	e51b3008 	ldr	r3, [fp, #-8]
80023280:	e2832018 	add	r2, r3, #24
80023284:	e51b3010 	ldr	r3, [fp, #-16]
80023288:	e5933004 	ldr	r3, [r3, #4]
8002328c:	e2033007 	and	r3, r3, #7
80023290:	e1a03303 	lsl	r3, r3, #6
80023294:	e0823003 	add	r3, r2, r3
80023298:	e50b300c 	str	r3, [fp, #-12]
8002329c:	e51b3010 	ldr	r3, [fp, #-16]
800232a0:	e1d321f0 	ldrsh	r2, [r3, #16]
800232a4:	e51b300c 	ldr	r3, [fp, #-12]
800232a8:	e1c320b0 	strh	r2, [r3]
800232ac:	e51b3010 	ldr	r3, [fp, #-16]
800232b0:	e1d321f2 	ldrsh	r2, [r3, #18]
800232b4:	e51b300c 	ldr	r3, [fp, #-12]
800232b8:	e1c320b2 	strh	r2, [r3, #2]
800232bc:	e51b3010 	ldr	r3, [fp, #-16]
800232c0:	e1d321f4 	ldrsh	r2, [r3, #20]
800232c4:	e51b300c 	ldr	r3, [fp, #-12]
800232c8:	e1c320b4 	strh	r2, [r3, #4]
800232cc:	e51b3010 	ldr	r3, [fp, #-16]
800232d0:	e1d321f6 	ldrsh	r2, [r3, #22]
800232d4:	e51b300c 	ldr	r3, [fp, #-12]
800232d8:	e1c320b6 	strh	r2, [r3, #6]
800232dc:	e51b3010 	ldr	r3, [fp, #-16]
800232e0:	e5932018 	ldr	r2, [r3, #24]
800232e4:	e51b300c 	ldr	r3, [fp, #-12]
800232e8:	e5832008 	str	r2, [r3, #8]
800232ec:	e51b300c 	ldr	r3, [fp, #-12]
800232f0:	e283000c 	add	r0, r3, #12
800232f4:	e51b3010 	ldr	r3, [fp, #-16]
800232f8:	e283301c 	add	r3, r3, #28
800232fc:	e3a02034 	mov	r2, #52	@ 0x34
80023300:	e1a01003 	mov	r1, r3
80023304:	ebfff3af 	bl	800201c8 <memmove>
80023308:	e51b0008 	ldr	r0, [fp, #-8]
8002330c:	eb00053e 	bl	8002480c <log_write>
80023310:	e51b0008 	ldr	r0, [fp, #-8]
80023314:	ebfff628 	bl	80020bbc <brelse>
80023318:	e1a00000 	nop			@ (mov r0, r0)
8002331c:	e24bd004 	sub	sp, fp, #4
80023320:	e8bd8800 	pop	{fp, pc}

80023324 <iget>:
80023324:	e92d4800 	push	{fp, lr}
80023328:	e28db004 	add	fp, sp, #4
8002332c:	e24dd010 	sub	sp, sp, #16
80023330:	e50b0010 	str	r0, [fp, #-16]
80023334:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023338:	e59f0114 	ldr	r0, [pc, #276]	@ 80023454 <iget+0x130>
8002333c:	eb000c16 	bl	8002639c <acquire>
80023340:	e3a03000 	mov	r3, #0
80023344:	e50b300c 	str	r3, [fp, #-12]
80023348:	e59f3108 	ldr	r3, [pc, #264]	@ 80023458 <iget+0x134>
8002334c:	e50b3008 	str	r3, [fp, #-8]
80023350:	ea000022 	b	800233e0 <iget+0xbc>
80023354:	e51b3008 	ldr	r3, [fp, #-8]
80023358:	e5933008 	ldr	r3, [r3, #8]
8002335c:	e3530000 	cmp	r3, #0
80023360:	da000012 	ble	800233b0 <iget+0x8c>
80023364:	e51b3008 	ldr	r3, [fp, #-8]
80023368:	e5933000 	ldr	r3, [r3]
8002336c:	e51b2010 	ldr	r2, [fp, #-16]
80023370:	e1520003 	cmp	r2, r3
80023374:	1a00000d 	bne	800233b0 <iget+0x8c>
80023378:	e51b3008 	ldr	r3, [fp, #-8]
8002337c:	e5933004 	ldr	r3, [r3, #4]
80023380:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023384:	e1520003 	cmp	r2, r3
80023388:	1a000008 	bne	800233b0 <iget+0x8c>
8002338c:	e51b3008 	ldr	r3, [fp, #-8]
80023390:	e5933008 	ldr	r3, [r3, #8]
80023394:	e2832001 	add	r2, r3, #1
80023398:	e51b3008 	ldr	r3, [fp, #-8]
8002339c:	e5832008 	str	r2, [r3, #8]
800233a0:	e59f00ac 	ldr	r0, [pc, #172]	@ 80023454 <iget+0x130>
800233a4:	eb000c07 	bl	800263c8 <release>
800233a8:	e51b3008 	ldr	r3, [fp, #-8]
800233ac:	ea000025 	b	80023448 <iget+0x124>
800233b0:	e51b300c 	ldr	r3, [fp, #-12]
800233b4:	e3530000 	cmp	r3, #0
800233b8:	1a000005 	bne	800233d4 <iget+0xb0>
800233bc:	e51b3008 	ldr	r3, [fp, #-8]
800233c0:	e5933008 	ldr	r3, [r3, #8]
800233c4:	e3530000 	cmp	r3, #0
800233c8:	1a000001 	bne	800233d4 <iget+0xb0>
800233cc:	e51b3008 	ldr	r3, [fp, #-8]
800233d0:	e50b300c 	str	r3, [fp, #-12]
800233d4:	e51b3008 	ldr	r3, [fp, #-8]
800233d8:	e2833050 	add	r3, r3, #80	@ 0x50
800233dc:	e50b3008 	str	r3, [fp, #-8]
800233e0:	e51b3008 	ldr	r3, [fp, #-8]
800233e4:	e59f2070 	ldr	r2, [pc, #112]	@ 8002345c <iget+0x138>
800233e8:	e1530002 	cmp	r3, r2
800233ec:	3affffd8 	bcc	80023354 <iget+0x30>
800233f0:	e51b300c 	ldr	r3, [fp, #-12]
800233f4:	e3530000 	cmp	r3, #0
800233f8:	1a000001 	bne	80023404 <iget+0xe0>
800233fc:	e59f005c 	ldr	r0, [pc, #92]	@ 80023460 <iget+0x13c>
80023400:	ebfff9bb 	bl	80021af4 <panic>
80023404:	e51b300c 	ldr	r3, [fp, #-12]
80023408:	e50b3008 	str	r3, [fp, #-8]
8002340c:	e51b3008 	ldr	r3, [fp, #-8]
80023410:	e51b2010 	ldr	r2, [fp, #-16]
80023414:	e5832000 	str	r2, [r3]
80023418:	e51b3008 	ldr	r3, [fp, #-8]
8002341c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023420:	e5832004 	str	r2, [r3, #4]
80023424:	e51b3008 	ldr	r3, [fp, #-8]
80023428:	e3a02001 	mov	r2, #1
8002342c:	e5832008 	str	r2, [r3, #8]
80023430:	e51b3008 	ldr	r3, [fp, #-8]
80023434:	e3a02000 	mov	r2, #0
80023438:	e583200c 	str	r2, [r3, #12]
8002343c:	e59f0010 	ldr	r0, [pc, #16]	@ 80023454 <iget+0x130>
80023440:	eb000be0 	bl	800263c8 <release>
80023444:	e51b3008 	ldr	r3, [fp, #-8]
80023448:	e1a00003 	mov	r0, r3
8002344c:	e24bd004 	sub	sp, fp, #4
80023450:	e8bd8800 	pop	{fp, pc}
80023454:	800ad544 	.word	0x800ad544
80023458:	800ad578 	.word	0x800ad578
8002345c:	800ae518 	.word	0x800ae518
80023460:	80029afc 	.word	0x80029afc

80023464 <idup>:
80023464:	e92d4800 	push	{fp, lr}
80023468:	e28db004 	add	fp, sp, #4
8002346c:	e24dd008 	sub	sp, sp, #8
80023470:	e50b0008 	str	r0, [fp, #-8]
80023474:	e59f002c 	ldr	r0, [pc, #44]	@ 800234a8 <idup+0x44>
80023478:	eb000bc7 	bl	8002639c <acquire>
8002347c:	e51b3008 	ldr	r3, [fp, #-8]
80023480:	e5933008 	ldr	r3, [r3, #8]
80023484:	e2832001 	add	r2, r3, #1
80023488:	e51b3008 	ldr	r3, [fp, #-8]
8002348c:	e5832008 	str	r2, [r3, #8]
80023490:	e59f0010 	ldr	r0, [pc, #16]	@ 800234a8 <idup+0x44>
80023494:	eb000bcb 	bl	800263c8 <release>
80023498:	e51b3008 	ldr	r3, [fp, #-8]
8002349c:	e1a00003 	mov	r0, r3
800234a0:	e24bd004 	sub	sp, fp, #4
800234a4:	e8bd8800 	pop	{fp, pc}
800234a8:	800ad544 	.word	0x800ad544

800234ac <ilock>:
800234ac:	e92d4800 	push	{fp, lr}
800234b0:	e28db004 	add	fp, sp, #4
800234b4:	e24dd010 	sub	sp, sp, #16
800234b8:	e50b0010 	str	r0, [fp, #-16]
800234bc:	e51b3010 	ldr	r3, [fp, #-16]
800234c0:	e3530000 	cmp	r3, #0
800234c4:	0a000003 	beq	800234d8 <ilock+0x2c>
800234c8:	e51b3010 	ldr	r3, [fp, #-16]
800234cc:	e5933008 	ldr	r3, [r3, #8]
800234d0:	e3530000 	cmp	r3, #0
800234d4:	ca000001 	bgt	800234e0 <ilock+0x34>
800234d8:	e59f0150 	ldr	r0, [pc, #336]	@ 80023630 <ilock+0x184>
800234dc:	ebfff984 	bl	80021af4 <panic>
800234e0:	e59f014c 	ldr	r0, [pc, #332]	@ 80023634 <ilock+0x188>
800234e4:	eb000bac 	bl	8002639c <acquire>
800234e8:	ea000002 	b	800234f8 <ilock+0x4c>
800234ec:	e59f1140 	ldr	r1, [pc, #320]	@ 80023634 <ilock+0x188>
800234f0:	e51b0010 	ldr	r0, [fp, #-16]
800234f4:	eb000a55 	bl	80025e50 <sleep>
800234f8:	e51b3010 	ldr	r3, [fp, #-16]
800234fc:	e593300c 	ldr	r3, [r3, #12]
80023500:	e2033001 	and	r3, r3, #1
80023504:	e3530000 	cmp	r3, #0
80023508:	1afffff7 	bne	800234ec <ilock+0x40>
8002350c:	e51b3010 	ldr	r3, [fp, #-16]
80023510:	e593300c 	ldr	r3, [r3, #12]
80023514:	e3832001 	orr	r2, r3, #1
80023518:	e51b3010 	ldr	r3, [fp, #-16]
8002351c:	e583200c 	str	r2, [r3, #12]
80023520:	e59f010c 	ldr	r0, [pc, #268]	@ 80023634 <ilock+0x188>
80023524:	eb000ba7 	bl	800263c8 <release>
80023528:	e51b3010 	ldr	r3, [fp, #-16]
8002352c:	e593300c 	ldr	r3, [r3, #12]
80023530:	e2033002 	and	r3, r3, #2
80023534:	e3530000 	cmp	r3, #0
80023538:	1a000039 	bne	80023624 <ilock+0x178>
8002353c:	e51b3010 	ldr	r3, [fp, #-16]
80023540:	e5932000 	ldr	r2, [r3]
80023544:	e51b3010 	ldr	r3, [fp, #-16]
80023548:	e5933004 	ldr	r3, [r3, #4]
8002354c:	e1a031a3 	lsr	r3, r3, #3
80023550:	e2833002 	add	r3, r3, #2
80023554:	e1a01003 	mov	r1, r3
80023558:	e1a00002 	mov	r0, r2
8002355c:	ebfff56c 	bl	80020b14 <bread>
80023560:	e50b0008 	str	r0, [fp, #-8]
80023564:	e51b3008 	ldr	r3, [fp, #-8]
80023568:	e2832018 	add	r2, r3, #24
8002356c:	e51b3010 	ldr	r3, [fp, #-16]
80023570:	e5933004 	ldr	r3, [r3, #4]
80023574:	e2033007 	and	r3, r3, #7
80023578:	e1a03303 	lsl	r3, r3, #6
8002357c:	e0823003 	add	r3, r2, r3
80023580:	e50b300c 	str	r3, [fp, #-12]
80023584:	e51b300c 	ldr	r3, [fp, #-12]
80023588:	e1d320f0 	ldrsh	r2, [r3]
8002358c:	e51b3010 	ldr	r3, [fp, #-16]
80023590:	e1c321b0 	strh	r2, [r3, #16]
80023594:	e51b300c 	ldr	r3, [fp, #-12]
80023598:	e1d320f2 	ldrsh	r2, [r3, #2]
8002359c:	e51b3010 	ldr	r3, [fp, #-16]
800235a0:	e1c321b2 	strh	r2, [r3, #18]
800235a4:	e51b300c 	ldr	r3, [fp, #-12]
800235a8:	e1d320f4 	ldrsh	r2, [r3, #4]
800235ac:	e51b3010 	ldr	r3, [fp, #-16]
800235b0:	e1c321b4 	strh	r2, [r3, #20]
800235b4:	e51b300c 	ldr	r3, [fp, #-12]
800235b8:	e1d320f6 	ldrsh	r2, [r3, #6]
800235bc:	e51b3010 	ldr	r3, [fp, #-16]
800235c0:	e1c321b6 	strh	r2, [r3, #22]
800235c4:	e51b300c 	ldr	r3, [fp, #-12]
800235c8:	e5932008 	ldr	r2, [r3, #8]
800235cc:	e51b3010 	ldr	r3, [fp, #-16]
800235d0:	e5832018 	str	r2, [r3, #24]
800235d4:	e51b3010 	ldr	r3, [fp, #-16]
800235d8:	e283001c 	add	r0, r3, #28
800235dc:	e51b300c 	ldr	r3, [fp, #-12]
800235e0:	e283300c 	add	r3, r3, #12
800235e4:	e3a02034 	mov	r2, #52	@ 0x34
800235e8:	e1a01003 	mov	r1, r3
800235ec:	ebfff2f5 	bl	800201c8 <memmove>
800235f0:	e51b0008 	ldr	r0, [fp, #-8]
800235f4:	ebfff570 	bl	80020bbc <brelse>
800235f8:	e51b3010 	ldr	r3, [fp, #-16]
800235fc:	e593300c 	ldr	r3, [r3, #12]
80023600:	e3832002 	orr	r2, r3, #2
80023604:	e51b3010 	ldr	r3, [fp, #-16]
80023608:	e583200c 	str	r2, [r3, #12]
8002360c:	e51b3010 	ldr	r3, [fp, #-16]
80023610:	e1d331f0 	ldrsh	r3, [r3, #16]
80023614:	e3530000 	cmp	r3, #0
80023618:	1a000001 	bne	80023624 <ilock+0x178>
8002361c:	e59f0014 	ldr	r0, [pc, #20]	@ 80023638 <ilock+0x18c>
80023620:	ebfff933 	bl	80021af4 <panic>
80023624:	e1a00000 	nop			@ (mov r0, r0)
80023628:	e24bd004 	sub	sp, fp, #4
8002362c:	e8bd8800 	pop	{fp, pc}
80023630:	80029b0c 	.word	0x80029b0c
80023634:	800ad544 	.word	0x800ad544
80023638:	80029b14 	.word	0x80029b14

8002363c <iunlock>:
8002363c:	e92d4800 	push	{fp, lr}
80023640:	e28db004 	add	fp, sp, #4
80023644:	e24dd008 	sub	sp, sp, #8
80023648:	e50b0008 	str	r0, [fp, #-8]
8002364c:	e51b3008 	ldr	r3, [fp, #-8]
80023650:	e3530000 	cmp	r3, #0
80023654:	0a000008 	beq	8002367c <iunlock+0x40>
80023658:	e51b3008 	ldr	r3, [fp, #-8]
8002365c:	e593300c 	ldr	r3, [r3, #12]
80023660:	e2033001 	and	r3, r3, #1
80023664:	e3530000 	cmp	r3, #0
80023668:	0a000003 	beq	8002367c <iunlock+0x40>
8002366c:	e51b3008 	ldr	r3, [fp, #-8]
80023670:	e5933008 	ldr	r3, [r3, #8]
80023674:	e3530000 	cmp	r3, #0
80023678:	ca000001 	bgt	80023684 <iunlock+0x48>
8002367c:	e59f0038 	ldr	r0, [pc, #56]	@ 800236bc <iunlock+0x80>
80023680:	ebfff91b 	bl	80021af4 <panic>
80023684:	e59f0034 	ldr	r0, [pc, #52]	@ 800236c0 <iunlock+0x84>
80023688:	eb000b43 	bl	8002639c <acquire>
8002368c:	e51b3008 	ldr	r3, [fp, #-8]
80023690:	e593300c 	ldr	r3, [r3, #12]
80023694:	e3c32001 	bic	r2, r3, #1
80023698:	e51b3008 	ldr	r3, [fp, #-8]
8002369c:	e583200c 	str	r2, [r3, #12]
800236a0:	e51b0008 	ldr	r0, [fp, #-8]
800236a4:	eb000a7d 	bl	800260a0 <wakeup>
800236a8:	e59f0010 	ldr	r0, [pc, #16]	@ 800236c0 <iunlock+0x84>
800236ac:	eb000b45 	bl	800263c8 <release>
800236b0:	e1a00000 	nop			@ (mov r0, r0)
800236b4:	e24bd004 	sub	sp, fp, #4
800236b8:	e8bd8800 	pop	{fp, pc}
800236bc:	80029b24 	.word	0x80029b24
800236c0:	800ad544 	.word	0x800ad544

800236c4 <iput>:
800236c4:	e92d4800 	push	{fp, lr}
800236c8:	e28db004 	add	fp, sp, #4
800236cc:	e24dd008 	sub	sp, sp, #8
800236d0:	e50b0008 	str	r0, [fp, #-8]
800236d4:	e59f00cc 	ldr	r0, [pc, #204]	@ 800237a8 <iput+0xe4>
800236d8:	eb000b2f 	bl	8002639c <acquire>
800236dc:	e51b3008 	ldr	r3, [fp, #-8]
800236e0:	e5933008 	ldr	r3, [r3, #8]
800236e4:	e3530001 	cmp	r3, #1
800236e8:	1a000024 	bne	80023780 <iput+0xbc>
800236ec:	e51b3008 	ldr	r3, [fp, #-8]
800236f0:	e593300c 	ldr	r3, [r3, #12]
800236f4:	e2033002 	and	r3, r3, #2
800236f8:	e3530000 	cmp	r3, #0
800236fc:	0a00001f 	beq	80023780 <iput+0xbc>
80023700:	e51b3008 	ldr	r3, [fp, #-8]
80023704:	e1d331f6 	ldrsh	r3, [r3, #22]
80023708:	e3530000 	cmp	r3, #0
8002370c:	1a00001b 	bne	80023780 <iput+0xbc>
80023710:	e51b3008 	ldr	r3, [fp, #-8]
80023714:	e593300c 	ldr	r3, [r3, #12]
80023718:	e2033001 	and	r3, r3, #1
8002371c:	e3530000 	cmp	r3, #0
80023720:	0a000001 	beq	8002372c <iput+0x68>
80023724:	e59f0080 	ldr	r0, [pc, #128]	@ 800237ac <iput+0xe8>
80023728:	ebfff8f1 	bl	80021af4 <panic>
8002372c:	e51b3008 	ldr	r3, [fp, #-8]
80023730:	e593300c 	ldr	r3, [r3, #12]
80023734:	e3832001 	orr	r2, r3, #1
80023738:	e51b3008 	ldr	r3, [fp, #-8]
8002373c:	e583200c 	str	r2, [r3, #12]
80023740:	e59f0060 	ldr	r0, [pc, #96]	@ 800237a8 <iput+0xe4>
80023744:	eb000b1f 	bl	800263c8 <release>
80023748:	e51b0008 	ldr	r0, [fp, #-8]
8002374c:	eb00007f 	bl	80023950 <itrunc>
80023750:	e51b3008 	ldr	r3, [fp, #-8]
80023754:	e3a02000 	mov	r2, #0
80023758:	e1c321b0 	strh	r2, [r3, #16]
8002375c:	e51b0008 	ldr	r0, [fp, #-8]
80023760:	ebfffeb7 	bl	80023244 <iupdate>
80023764:	e59f003c 	ldr	r0, [pc, #60]	@ 800237a8 <iput+0xe4>
80023768:	eb000b0b 	bl	8002639c <acquire>
8002376c:	e51b3008 	ldr	r3, [fp, #-8]
80023770:	e3a02000 	mov	r2, #0
80023774:	e583200c 	str	r2, [r3, #12]
80023778:	e51b0008 	ldr	r0, [fp, #-8]
8002377c:	eb000a47 	bl	800260a0 <wakeup>
80023780:	e51b3008 	ldr	r3, [fp, #-8]
80023784:	e5933008 	ldr	r3, [r3, #8]
80023788:	e2432001 	sub	r2, r3, #1
8002378c:	e51b3008 	ldr	r3, [fp, #-8]
80023790:	e5832008 	str	r2, [r3, #8]
80023794:	e59f000c 	ldr	r0, [pc, #12]	@ 800237a8 <iput+0xe4>
80023798:	eb000b0a 	bl	800263c8 <release>
8002379c:	e1a00000 	nop			@ (mov r0, r0)
800237a0:	e24bd004 	sub	sp, fp, #4
800237a4:	e8bd8800 	pop	{fp, pc}
800237a8:	800ad544 	.word	0x800ad544
800237ac:	80029b2c 	.word	0x80029b2c

800237b0 <iunlockput>:
800237b0:	e92d4800 	push	{fp, lr}
800237b4:	e28db004 	add	fp, sp, #4
800237b8:	e24dd008 	sub	sp, sp, #8
800237bc:	e50b0008 	str	r0, [fp, #-8]
800237c0:	e51b0008 	ldr	r0, [fp, #-8]
800237c4:	ebffff9c 	bl	8002363c <iunlock>
800237c8:	e51b0008 	ldr	r0, [fp, #-8]
800237cc:	ebffffbc 	bl	800236c4 <iput>
800237d0:	e1a00000 	nop			@ (mov r0, r0)
800237d4:	e24bd004 	sub	sp, fp, #4
800237d8:	e8bd8800 	pop	{fp, pc}

800237dc <bmap>:
800237dc:	e92d4800 	push	{fp, lr}
800237e0:	e28db004 	add	fp, sp, #4
800237e4:	e24dd018 	sub	sp, sp, #24
800237e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800237ec:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800237f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800237f4:	e353000b 	cmp	r3, #11
800237f8:	8a000017 	bhi	8002385c <bmap+0x80>
800237fc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023800:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023804:	e2833006 	add	r3, r3, #6
80023808:	e1a03103 	lsl	r3, r3, #2
8002380c:	e0823003 	add	r3, r2, r3
80023810:	e5933004 	ldr	r3, [r3, #4]
80023814:	e50b3008 	str	r3, [fp, #-8]
80023818:	e51b3008 	ldr	r3, [fp, #-8]
8002381c:	e3530000 	cmp	r3, #0
80023820:	1a00000b 	bne	80023854 <bmap+0x78>
80023824:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023828:	e5933000 	ldr	r3, [r3]
8002382c:	e1a00003 	mov	r0, r3
80023830:	ebfffd7e 	bl	80022e30 <balloc>
80023834:	e50b0008 	str	r0, [fp, #-8]
80023838:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002383c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023840:	e2833006 	add	r3, r3, #6
80023844:	e1a03103 	lsl	r3, r3, #2
80023848:	e0823003 	add	r3, r2, r3
8002384c:	e51b2008 	ldr	r2, [fp, #-8]
80023850:	e5832004 	str	r2, [r3, #4]
80023854:	e51b3008 	ldr	r3, [fp, #-8]
80023858:	ea000038 	b	80023940 <bmap+0x164>
8002385c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023860:	e243300c 	sub	r3, r3, #12
80023864:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80023868:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002386c:	e353007f 	cmp	r3, #127	@ 0x7f
80023870:	8a000030 	bhi	80023938 <bmap+0x15c>
80023874:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023878:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002387c:	e50b3008 	str	r3, [fp, #-8]
80023880:	e51b3008 	ldr	r3, [fp, #-8]
80023884:	e3530000 	cmp	r3, #0
80023888:	1a000007 	bne	800238ac <bmap+0xd0>
8002388c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023890:	e5933000 	ldr	r3, [r3]
80023894:	e1a00003 	mov	r0, r3
80023898:	ebfffd64 	bl	80022e30 <balloc>
8002389c:	e50b0008 	str	r0, [fp, #-8]
800238a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800238a4:	e51b2008 	ldr	r2, [fp, #-8]
800238a8:	e583204c 	str	r2, [r3, #76]	@ 0x4c
800238ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800238b0:	e5933000 	ldr	r3, [r3]
800238b4:	e51b1008 	ldr	r1, [fp, #-8]
800238b8:	e1a00003 	mov	r0, r3
800238bc:	ebfff494 	bl	80020b14 <bread>
800238c0:	e50b000c 	str	r0, [fp, #-12]
800238c4:	e51b300c 	ldr	r3, [fp, #-12]
800238c8:	e2833018 	add	r3, r3, #24
800238cc:	e50b3010 	str	r3, [fp, #-16]
800238d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800238d4:	e1a03103 	lsl	r3, r3, #2
800238d8:	e51b2010 	ldr	r2, [fp, #-16]
800238dc:	e0823003 	add	r3, r2, r3
800238e0:	e5933000 	ldr	r3, [r3]
800238e4:	e50b3008 	str	r3, [fp, #-8]
800238e8:	e51b3008 	ldr	r3, [fp, #-8]
800238ec:	e3530000 	cmp	r3, #0
800238f0:	1a00000c 	bne	80023928 <bmap+0x14c>
800238f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800238f8:	e5933000 	ldr	r3, [r3]
800238fc:	e1a00003 	mov	r0, r3
80023900:	ebfffd4a 	bl	80022e30 <balloc>
80023904:	e50b0008 	str	r0, [fp, #-8]
80023908:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002390c:	e1a03103 	lsl	r3, r3, #2
80023910:	e51b2010 	ldr	r2, [fp, #-16]
80023914:	e0823003 	add	r3, r2, r3
80023918:	e51b2008 	ldr	r2, [fp, #-8]
8002391c:	e5832000 	str	r2, [r3]
80023920:	e51b000c 	ldr	r0, [fp, #-12]
80023924:	eb0003b8 	bl	8002480c <log_write>
80023928:	e51b000c 	ldr	r0, [fp, #-12]
8002392c:	ebfff4a2 	bl	80020bbc <brelse>
80023930:	e51b3008 	ldr	r3, [fp, #-8]
80023934:	ea000001 	b	80023940 <bmap+0x164>
80023938:	e59f000c 	ldr	r0, [pc, #12]	@ 8002394c <bmap+0x170>
8002393c:	ebfff86c 	bl	80021af4 <panic>
80023940:	e1a00003 	mov	r0, r3
80023944:	e24bd004 	sub	sp, fp, #4
80023948:	e8bd8800 	pop	{fp, pc}
8002394c:	80029b38 	.word	0x80029b38

80023950 <itrunc>:
80023950:	e92d4800 	push	{fp, lr}
80023954:	e28db004 	add	fp, sp, #4
80023958:	e24dd018 	sub	sp, sp, #24
8002395c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023960:	e3a03000 	mov	r3, #0
80023964:	e50b3008 	str	r3, [fp, #-8]
80023968:	ea00001c 	b	800239e0 <itrunc+0x90>
8002396c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023970:	e51b3008 	ldr	r3, [fp, #-8]
80023974:	e2833006 	add	r3, r3, #6
80023978:	e1a03103 	lsl	r3, r3, #2
8002397c:	e0823003 	add	r3, r2, r3
80023980:	e5933004 	ldr	r3, [r3, #4]
80023984:	e3530000 	cmp	r3, #0
80023988:	0a000011 	beq	800239d4 <itrunc+0x84>
8002398c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023990:	e5933000 	ldr	r3, [r3]
80023994:	e1a00003 	mov	r0, r3
80023998:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002399c:	e51b3008 	ldr	r3, [fp, #-8]
800239a0:	e2833006 	add	r3, r3, #6
800239a4:	e1a03103 	lsl	r3, r3, #2
800239a8:	e0823003 	add	r3, r2, r3
800239ac:	e5933004 	ldr	r3, [r3, #4]
800239b0:	e1a01003 	mov	r1, r3
800239b4:	ebfffd8f 	bl	80022ff8 <bfree>
800239b8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800239bc:	e51b3008 	ldr	r3, [fp, #-8]
800239c0:	e2833006 	add	r3, r3, #6
800239c4:	e1a03103 	lsl	r3, r3, #2
800239c8:	e0823003 	add	r3, r2, r3
800239cc:	e3a02000 	mov	r2, #0
800239d0:	e5832004 	str	r2, [r3, #4]
800239d4:	e51b3008 	ldr	r3, [fp, #-8]
800239d8:	e2833001 	add	r3, r3, #1
800239dc:	e50b3008 	str	r3, [fp, #-8]
800239e0:	e51b3008 	ldr	r3, [fp, #-8]
800239e4:	e353000b 	cmp	r3, #11
800239e8:	daffffdf 	ble	8002396c <itrunc+0x1c>
800239ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239f0:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800239f4:	e3530000 	cmp	r3, #0
800239f8:	0a000031 	beq	80023ac4 <itrunc+0x174>
800239fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a00:	e5932000 	ldr	r2, [r3]
80023a04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a08:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023a0c:	e1a01003 	mov	r1, r3
80023a10:	e1a00002 	mov	r0, r2
80023a14:	ebfff43e 	bl	80020b14 <bread>
80023a18:	e50b0010 	str	r0, [fp, #-16]
80023a1c:	e51b3010 	ldr	r3, [fp, #-16]
80023a20:	e2833018 	add	r3, r3, #24
80023a24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80023a28:	e3a03000 	mov	r3, #0
80023a2c:	e50b300c 	str	r3, [fp, #-12]
80023a30:	ea000013 	b	80023a84 <itrunc+0x134>
80023a34:	e51b300c 	ldr	r3, [fp, #-12]
80023a38:	e1a03103 	lsl	r3, r3, #2
80023a3c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023a40:	e0823003 	add	r3, r2, r3
80023a44:	e5933000 	ldr	r3, [r3]
80023a48:	e3530000 	cmp	r3, #0
80023a4c:	0a000009 	beq	80023a78 <itrunc+0x128>
80023a50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a54:	e5933000 	ldr	r3, [r3]
80023a58:	e1a00003 	mov	r0, r3
80023a5c:	e51b300c 	ldr	r3, [fp, #-12]
80023a60:	e1a03103 	lsl	r3, r3, #2
80023a64:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023a68:	e0823003 	add	r3, r2, r3
80023a6c:	e5933000 	ldr	r3, [r3]
80023a70:	e1a01003 	mov	r1, r3
80023a74:	ebfffd5f 	bl	80022ff8 <bfree>
80023a78:	e51b300c 	ldr	r3, [fp, #-12]
80023a7c:	e2833001 	add	r3, r3, #1
80023a80:	e50b300c 	str	r3, [fp, #-12]
80023a84:	e51b300c 	ldr	r3, [fp, #-12]
80023a88:	e353007f 	cmp	r3, #127	@ 0x7f
80023a8c:	9affffe8 	bls	80023a34 <itrunc+0xe4>
80023a90:	e51b0010 	ldr	r0, [fp, #-16]
80023a94:	ebfff448 	bl	80020bbc <brelse>
80023a98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a9c:	e5933000 	ldr	r3, [r3]
80023aa0:	e1a02003 	mov	r2, r3
80023aa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023aa8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023aac:	e1a01003 	mov	r1, r3
80023ab0:	e1a00002 	mov	r0, r2
80023ab4:	ebfffd4f 	bl	80022ff8 <bfree>
80023ab8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023abc:	e3a02000 	mov	r2, #0
80023ac0:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023ac4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ac8:	e3a02000 	mov	r2, #0
80023acc:	e5832018 	str	r2, [r3, #24]
80023ad0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80023ad4:	ebfffdda 	bl	80023244 <iupdate>
80023ad8:	e1a00000 	nop			@ (mov r0, r0)
80023adc:	e24bd004 	sub	sp, fp, #4
80023ae0:	e8bd8800 	pop	{fp, pc}

80023ae4 <stati>:
80023ae4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023ae8:	e28db000 	add	fp, sp, #0
80023aec:	e24dd00c 	sub	sp, sp, #12
80023af0:	e50b0008 	str	r0, [fp, #-8]
80023af4:	e50b100c 	str	r1, [fp, #-12]
80023af8:	e51b3008 	ldr	r3, [fp, #-8]
80023afc:	e5933000 	ldr	r3, [r3]
80023b00:	e1a02003 	mov	r2, r3
80023b04:	e51b300c 	ldr	r3, [fp, #-12]
80023b08:	e5832004 	str	r2, [r3, #4]
80023b0c:	e51b3008 	ldr	r3, [fp, #-8]
80023b10:	e5932004 	ldr	r2, [r3, #4]
80023b14:	e51b300c 	ldr	r3, [fp, #-12]
80023b18:	e5832008 	str	r2, [r3, #8]
80023b1c:	e51b3008 	ldr	r3, [fp, #-8]
80023b20:	e1d321f0 	ldrsh	r2, [r3, #16]
80023b24:	e51b300c 	ldr	r3, [fp, #-12]
80023b28:	e1c320b0 	strh	r2, [r3]
80023b2c:	e51b3008 	ldr	r3, [fp, #-8]
80023b30:	e1d321f6 	ldrsh	r2, [r3, #22]
80023b34:	e51b300c 	ldr	r3, [fp, #-12]
80023b38:	e1c320bc 	strh	r2, [r3, #12]
80023b3c:	e51b3008 	ldr	r3, [fp, #-8]
80023b40:	e5932018 	ldr	r2, [r3, #24]
80023b44:	e51b300c 	ldr	r3, [fp, #-12]
80023b48:	e5832010 	str	r2, [r3, #16]
80023b4c:	e1a00000 	nop			@ (mov r0, r0)
80023b50:	e28bd000 	add	sp, fp, #0
80023b54:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80023b58:	e12fff1e 	bx	lr

80023b5c <readi>:
80023b5c:	e92d4810 	push	{r4, fp, lr}
80023b60:	e28db008 	add	fp, sp, #8
80023b64:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023b68:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023b6c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023b70:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023b74:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023b78:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b7c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023b80:	e3530003 	cmp	r3, #3
80023b84:	1a00001b 	bne	80023bf8 <readi+0x9c>
80023b88:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b8c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b90:	e3530000 	cmp	r3, #0
80023b94:	ba00000a 	blt	80023bc4 <readi+0x68>
80023b98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b9c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023ba0:	e3530009 	cmp	r3, #9
80023ba4:	ca000006 	bgt	80023bc4 <readi+0x68>
80023ba8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bac:	e1d331f2 	ldrsh	r3, [r3, #18]
80023bb0:	e1a02003 	mov	r2, r3
80023bb4:	e59f3188 	ldr	r3, [pc, #392]	@ 80023d44 <readi+0x1e8>
80023bb8:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023bbc:	e3530000 	cmp	r3, #0
80023bc0:	1a000001 	bne	80023bcc <readi+0x70>
80023bc4:	e3e03000 	mvn	r3, #0
80023bc8:	ea00005a 	b	80023d38 <readi+0x1dc>
80023bcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bd0:	e1d331f2 	ldrsh	r3, [r3, #18]
80023bd4:	e1a02003 	mov	r2, r3
80023bd8:	e59f3164 	ldr	r3, [pc, #356]	@ 80023d44 <readi+0x1e8>
80023bdc:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023be0:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023be4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023be8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023bec:	e12fff33 	blx	r3
80023bf0:	e1a03000 	mov	r3, r0
80023bf4:	ea00004f 	b	80023d38 <readi+0x1dc>
80023bf8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bfc:	e5933018 	ldr	r3, [r3, #24]
80023c00:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c04:	e1520003 	cmp	r2, r3
80023c08:	8a000005 	bhi	80023c24 <readi+0xc8>
80023c0c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c14:	e0823003 	add	r3, r2, r3
80023c18:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c1c:	e1520003 	cmp	r2, r3
80023c20:	9a000001 	bls	80023c2c <readi+0xd0>
80023c24:	e3e03000 	mvn	r3, #0
80023c28:	ea000042 	b	80023d38 <readi+0x1dc>
80023c2c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c30:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c34:	e0822003 	add	r2, r2, r3
80023c38:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c3c:	e5933018 	ldr	r3, [r3, #24]
80023c40:	e1520003 	cmp	r2, r3
80023c44:	9a000004 	bls	80023c5c <readi+0x100>
80023c48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c4c:	e5932018 	ldr	r2, [r3, #24]
80023c50:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c54:	e0423003 	sub	r3, r2, r3
80023c58:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023c5c:	e3a03000 	mov	r3, #0
80023c60:	e50b3010 	str	r3, [fp, #-16]
80023c64:	ea00002e 	b	80023d24 <readi+0x1c8>
80023c68:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c6c:	e5934000 	ldr	r4, [r3]
80023c70:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c74:	e1a034a3 	lsr	r3, r3, #9
80023c78:	e1a01003 	mov	r1, r3
80023c7c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c80:	ebfffed5 	bl	800237dc <bmap>
80023c84:	e1a03000 	mov	r3, r0
80023c88:	e1a01003 	mov	r1, r3
80023c8c:	e1a00004 	mov	r0, r4
80023c90:	ebfff39f 	bl	80020b14 <bread>
80023c94:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023c98:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c9c:	e1a03b83 	lsl	r3, r3, #23
80023ca0:	e1a03ba3 	lsr	r3, r3, #23
80023ca4:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023ca8:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023cac:	e51b3010 	ldr	r3, [fp, #-16]
80023cb0:	e0413003 	sub	r3, r1, r3
80023cb4:	e1520003 	cmp	r2, r3
80023cb8:	31a03002 	movcc	r3, r2
80023cbc:	21a03003 	movcs	r3, r3
80023cc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023cc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023cc8:	e2832018 	add	r2, r3, #24
80023ccc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023cd0:	e1a03b83 	lsl	r3, r3, #23
80023cd4:	e1a03ba3 	lsr	r3, r3, #23
80023cd8:	e0823003 	add	r3, r2, r3
80023cdc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023ce0:	e1a01003 	mov	r1, r3
80023ce4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023ce8:	ebfff136 	bl	800201c8 <memmove>
80023cec:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023cf0:	ebfff3b1 	bl	80020bbc <brelse>
80023cf4:	e51b2010 	ldr	r2, [fp, #-16]
80023cf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023cfc:	e0823003 	add	r3, r2, r3
80023d00:	e50b3010 	str	r3, [fp, #-16]
80023d04:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023d0c:	e0823003 	add	r3, r2, r3
80023d10:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023d14:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023d18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023d1c:	e0823003 	add	r3, r2, r3
80023d20:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023d24:	e51b2010 	ldr	r2, [fp, #-16]
80023d28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d2c:	e1520003 	cmp	r2, r3
80023d30:	3affffcc 	bcc	80023c68 <readi+0x10c>
80023d34:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d38:	e1a00003 	mov	r0, r3
80023d3c:	e24bd008 	sub	sp, fp, #8
80023d40:	e8bd8810 	pop	{r4, fp, pc}
80023d44:	800acb60 	.word	0x800acb60

80023d48 <writei>:
80023d48:	e92d4810 	push	{r4, fp, lr}
80023d4c:	e28db008 	add	fp, sp, #8
80023d50:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023d54:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023d58:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023d5c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023d60:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023d64:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d68:	e1d331f0 	ldrsh	r3, [r3, #16]
80023d6c:	e3530003 	cmp	r3, #3
80023d70:	1a00001d 	bne	80023dec <writei+0xa4>
80023d74:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d78:	e1d331f2 	ldrsh	r3, [r3, #18]
80023d7c:	e3530000 	cmp	r3, #0
80023d80:	ba00000b 	blt	80023db4 <writei+0x6c>
80023d84:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d88:	e1d331f2 	ldrsh	r3, [r3, #18]
80023d8c:	e3530009 	cmp	r3, #9
80023d90:	ca000007 	bgt	80023db4 <writei+0x6c>
80023d94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d98:	e1d331f2 	ldrsh	r3, [r3, #18]
80023d9c:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023f60 <writei+0x218>
80023da0:	e1a03183 	lsl	r3, r3, #3
80023da4:	e0823003 	add	r3, r2, r3
80023da8:	e5933004 	ldr	r3, [r3, #4]
80023dac:	e3530000 	cmp	r3, #0
80023db0:	1a000001 	bne	80023dbc <writei+0x74>
80023db4:	e3e03000 	mvn	r3, #0
80023db8:	ea000065 	b	80023f54 <writei+0x20c>
80023dbc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023dc0:	e1d331f2 	ldrsh	r3, [r3, #18]
80023dc4:	e59f2194 	ldr	r2, [pc, #404]	@ 80023f60 <writei+0x218>
80023dc8:	e1a03183 	lsl	r3, r3, #3
80023dcc:	e0823003 	add	r3, r2, r3
80023dd0:	e5933004 	ldr	r3, [r3, #4]
80023dd4:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023dd8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023ddc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023de0:	e12fff33 	blx	r3
80023de4:	e1a03000 	mov	r3, r0
80023de8:	ea000059 	b	80023f54 <writei+0x20c>
80023dec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023df0:	e5933018 	ldr	r3, [r3, #24]
80023df4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023df8:	e1520003 	cmp	r2, r3
80023dfc:	8a000005 	bhi	80023e18 <writei+0xd0>
80023e00:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023e04:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023e08:	e0823003 	add	r3, r2, r3
80023e0c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023e10:	e1520003 	cmp	r2, r3
80023e14:	9a000001 	bls	80023e20 <writei+0xd8>
80023e18:	e3e03000 	mvn	r3, #0
80023e1c:	ea00004c 	b	80023f54 <writei+0x20c>
80023e20:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023e24:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023e28:	e0823003 	add	r3, r2, r3
80023e2c:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023e30:	9a000001 	bls	80023e3c <writei+0xf4>
80023e34:	e3e03000 	mvn	r3, #0
80023e38:	ea000045 	b	80023f54 <writei+0x20c>
80023e3c:	e3a03000 	mov	r3, #0
80023e40:	e50b3010 	str	r3, [fp, #-16]
80023e44:	ea000030 	b	80023f0c <writei+0x1c4>
80023e48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e4c:	e5934000 	ldr	r4, [r3]
80023e50:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e54:	e1a034a3 	lsr	r3, r3, #9
80023e58:	e1a01003 	mov	r1, r3
80023e5c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e60:	ebfffe5d 	bl	800237dc <bmap>
80023e64:	e1a03000 	mov	r3, r0
80023e68:	e1a01003 	mov	r1, r3
80023e6c:	e1a00004 	mov	r0, r4
80023e70:	ebfff327 	bl	80020b14 <bread>
80023e74:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023e78:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e7c:	e1a03b83 	lsl	r3, r3, #23
80023e80:	e1a03ba3 	lsr	r3, r3, #23
80023e84:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023e88:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023e8c:	e51b3010 	ldr	r3, [fp, #-16]
80023e90:	e0413003 	sub	r3, r1, r3
80023e94:	e1520003 	cmp	r2, r3
80023e98:	31a03002 	movcc	r3, r2
80023e9c:	21a03003 	movcs	r3, r3
80023ea0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023ea4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023ea8:	e2832018 	add	r2, r3, #24
80023eac:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023eb0:	e1a03b83 	lsl	r3, r3, #23
80023eb4:	e1a03ba3 	lsr	r3, r3, #23
80023eb8:	e0823003 	add	r3, r2, r3
80023ebc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023ec0:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023ec4:	e1a00003 	mov	r0, r3
80023ec8:	ebfff0be 	bl	800201c8 <memmove>
80023ecc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023ed0:	eb00024d 	bl	8002480c <log_write>
80023ed4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023ed8:	ebfff337 	bl	80020bbc <brelse>
80023edc:	e51b2010 	ldr	r2, [fp, #-16]
80023ee0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ee4:	e0823003 	add	r3, r2, r3
80023ee8:	e50b3010 	str	r3, [fp, #-16]
80023eec:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ef0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ef4:	e0823003 	add	r3, r2, r3
80023ef8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023efc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023f00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023f04:	e0823003 	add	r3, r2, r3
80023f08:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023f0c:	e51b2010 	ldr	r2, [fp, #-16]
80023f10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023f14:	e1520003 	cmp	r2, r3
80023f18:	3affffca 	bcc	80023e48 <writei+0x100>
80023f1c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023f20:	e3530000 	cmp	r3, #0
80023f24:	0a000009 	beq	80023f50 <writei+0x208>
80023f28:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023f2c:	e5933018 	ldr	r3, [r3, #24]
80023f30:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023f34:	e1520003 	cmp	r2, r3
80023f38:	9a000004 	bls	80023f50 <writei+0x208>
80023f3c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023f40:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023f44:	e5832018 	str	r2, [r3, #24]
80023f48:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023f4c:	ebfffcbc 	bl	80023244 <iupdate>
80023f50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023f54:	e1a00003 	mov	r0, r3
80023f58:	e24bd008 	sub	sp, fp, #8
80023f5c:	e8bd8810 	pop	{r4, fp, pc}
80023f60:	800acb60 	.word	0x800acb60

80023f64 <namecmp>:
80023f64:	e92d4800 	push	{fp, lr}
80023f68:	e28db004 	add	fp, sp, #4
80023f6c:	e24dd008 	sub	sp, sp, #8
80023f70:	e50b0008 	str	r0, [fp, #-8]
80023f74:	e50b100c 	str	r1, [fp, #-12]
80023f78:	e3a0200e 	mov	r2, #14
80023f7c:	e51b100c 	ldr	r1, [fp, #-12]
80023f80:	e51b0008 	ldr	r0, [fp, #-8]
80023f84:	ebfff0dc 	bl	800202fc <strncmp>
80023f88:	e1a03000 	mov	r3, r0
80023f8c:	e1a00003 	mov	r0, r3
80023f90:	e24bd004 	sub	sp, fp, #4
80023f94:	e8bd8800 	pop	{fp, pc}

80023f98 <dirlookup>:
80023f98:	e92d4800 	push	{fp, lr}
80023f9c:	e28db004 	add	fp, sp, #4
80023fa0:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023fa4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023fa8:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023fac:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023fb0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023fb4:	e1d331f0 	ldrsh	r3, [r3, #16]
80023fb8:	e3530001 	cmp	r3, #1
80023fbc:	0a000001 	beq	80023fc8 <dirlookup+0x30>
80023fc0:	e59f00d0 	ldr	r0, [pc, #208]	@ 80024098 <dirlookup+0x100>
80023fc4:	ebfff6ca 	bl	80021af4 <panic>
80023fc8:	e3a03000 	mov	r3, #0
80023fcc:	e50b3008 	str	r3, [fp, #-8]
80023fd0:	ea000027 	b	80024074 <dirlookup+0xdc>
80023fd4:	e24b101c 	sub	r1, fp, #28
80023fd8:	e3a03010 	mov	r3, #16
80023fdc:	e51b2008 	ldr	r2, [fp, #-8]
80023fe0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023fe4:	ebfffedc 	bl	80023b5c <readi>
80023fe8:	e1a03000 	mov	r3, r0
80023fec:	e3530010 	cmp	r3, #16
80023ff0:	0a000001 	beq	80023ffc <dirlookup+0x64>
80023ff4:	e59f00a0 	ldr	r0, [pc, #160]	@ 8002409c <dirlookup+0x104>
80023ff8:	ebfff6bd 	bl	80021af4 <panic>
80023ffc:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80024000:	e3530000 	cmp	r3, #0
80024004:	0a000016 	beq	80024064 <dirlookup+0xcc>
80024008:	e24b301c 	sub	r3, fp, #28
8002400c:	e2833002 	add	r3, r3, #2
80024010:	e1a01003 	mov	r1, r3
80024014:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80024018:	ebffffd1 	bl	80023f64 <namecmp>
8002401c:	e1a03000 	mov	r3, r0
80024020:	e3530000 	cmp	r3, #0
80024024:	1a00000f 	bne	80024068 <dirlookup+0xd0>
80024028:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002402c:	e3530000 	cmp	r3, #0
80024030:	0a000002 	beq	80024040 <dirlookup+0xa8>
80024034:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80024038:	e51b2008 	ldr	r2, [fp, #-8]
8002403c:	e5832000 	str	r2, [r3]
80024040:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80024044:	e50b300c 	str	r3, [fp, #-12]
80024048:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002404c:	e5933000 	ldr	r3, [r3]
80024050:	e51b100c 	ldr	r1, [fp, #-12]
80024054:	e1a00003 	mov	r0, r3
80024058:	ebfffcb1 	bl	80023324 <iget>
8002405c:	e1a03000 	mov	r3, r0
80024060:	ea000009 	b	8002408c <dirlookup+0xf4>
80024064:	e1a00000 	nop			@ (mov r0, r0)
80024068:	e51b3008 	ldr	r3, [fp, #-8]
8002406c:	e2833010 	add	r3, r3, #16
80024070:	e50b3008 	str	r3, [fp, #-8]
80024074:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024078:	e5933018 	ldr	r3, [r3, #24]
8002407c:	e51b2008 	ldr	r2, [fp, #-8]
80024080:	e1520003 	cmp	r2, r3
80024084:	3affffd2 	bcc	80023fd4 <dirlookup+0x3c>
80024088:	e3a03000 	mov	r3, #0
8002408c:	e1a00003 	mov	r0, r3
80024090:	e24bd004 	sub	sp, fp, #4
80024094:	e8bd8800 	pop	{fp, pc}
80024098:	80029b4c 	.word	0x80029b4c
8002409c:	80029b60 	.word	0x80029b60

800240a0 <dirlink>:
800240a0:	e92d4800 	push	{fp, lr}
800240a4:	e28db004 	add	fp, sp, #4
800240a8:	e24dd028 	sub	sp, sp, #40	@ 0x28
800240ac:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800240b0:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800240b4:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800240b8:	e3a02000 	mov	r2, #0
800240bc:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
800240c0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800240c4:	ebffffb3 	bl	80023f98 <dirlookup>
800240c8:	e50b000c 	str	r0, [fp, #-12]
800240cc:	e51b300c 	ldr	r3, [fp, #-12]
800240d0:	e3530000 	cmp	r3, #0
800240d4:	0a000003 	beq	800240e8 <dirlink+0x48>
800240d8:	e51b000c 	ldr	r0, [fp, #-12]
800240dc:	ebfffd78 	bl	800236c4 <iput>
800240e0:	e3e03000 	mvn	r3, #0
800240e4:	ea00002d 	b	800241a0 <dirlink+0x100>
800240e8:	e3a03000 	mov	r3, #0
800240ec:	e50b3008 	str	r3, [fp, #-8]
800240f0:	ea00000f 	b	80024134 <dirlink+0x94>
800240f4:	e51b2008 	ldr	r2, [fp, #-8]
800240f8:	e24b101c 	sub	r1, fp, #28
800240fc:	e3a03010 	mov	r3, #16
80024100:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024104:	ebfffe94 	bl	80023b5c <readi>
80024108:	e1a03000 	mov	r3, r0
8002410c:	e3530010 	cmp	r3, #16
80024110:	0a000001 	beq	8002411c <dirlink+0x7c>
80024114:	e59f0090 	ldr	r0, [pc, #144]	@ 800241ac <dirlink+0x10c>
80024118:	ebfff675 	bl	80021af4 <panic>
8002411c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80024120:	e3530000 	cmp	r3, #0
80024124:	0a000008 	beq	8002414c <dirlink+0xac>
80024128:	e51b3008 	ldr	r3, [fp, #-8]
8002412c:	e2833010 	add	r3, r3, #16
80024130:	e50b3008 	str	r3, [fp, #-8]
80024134:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024138:	e5932018 	ldr	r2, [r3, #24]
8002413c:	e51b3008 	ldr	r3, [fp, #-8]
80024140:	e1520003 	cmp	r2, r3
80024144:	8affffea 	bhi	800240f4 <dirlink+0x54>
80024148:	ea000000 	b	80024150 <dirlink+0xb0>
8002414c:	e1a00000 	nop			@ (mov r0, r0)
80024150:	e24b301c 	sub	r3, fp, #28
80024154:	e2833002 	add	r3, r3, #2
80024158:	e3a0200e 	mov	r2, #14
8002415c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80024160:	e1a00003 	mov	r0, r3
80024164:	ebfff090 	bl	800203ac <strncpy>
80024168:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002416c:	e6ff3073 	uxth	r3, r3
80024170:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80024174:	e51b2008 	ldr	r2, [fp, #-8]
80024178:	e24b101c 	sub	r1, fp, #28
8002417c:	e3a03010 	mov	r3, #16
80024180:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024184:	ebfffeef 	bl	80023d48 <writei>
80024188:	e1a03000 	mov	r3, r0
8002418c:	e3530010 	cmp	r3, #16
80024190:	0a000001 	beq	8002419c <dirlink+0xfc>
80024194:	e59f0014 	ldr	r0, [pc, #20]	@ 800241b0 <dirlink+0x110>
80024198:	ebfff655 	bl	80021af4 <panic>
8002419c:	e3a03000 	mov	r3, #0
800241a0:	e1a00003 	mov	r0, r3
800241a4:	e24bd004 	sub	sp, fp, #4
800241a8:	e8bd8800 	pop	{fp, pc}
800241ac:	80029b60 	.word	0x80029b60
800241b0:	80029b70 	.word	0x80029b70

800241b4 <skipelem>:
800241b4:	e92d4800 	push	{fp, lr}
800241b8:	e28db004 	add	fp, sp, #4
800241bc:	e24dd010 	sub	sp, sp, #16
800241c0:	e50b0010 	str	r0, [fp, #-16]
800241c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800241c8:	ea000002 	b	800241d8 <skipelem+0x24>
800241cc:	e51b3010 	ldr	r3, [fp, #-16]
800241d0:	e2833001 	add	r3, r3, #1
800241d4:	e50b3010 	str	r3, [fp, #-16]
800241d8:	e51b3010 	ldr	r3, [fp, #-16]
800241dc:	e5d33000 	ldrb	r3, [r3]
800241e0:	e353002f 	cmp	r3, #47	@ 0x2f
800241e4:	0afffff8 	beq	800241cc <skipelem+0x18>
800241e8:	e51b3010 	ldr	r3, [fp, #-16]
800241ec:	e5d33000 	ldrb	r3, [r3]
800241f0:	e3530000 	cmp	r3, #0
800241f4:	1a000001 	bne	80024200 <skipelem+0x4c>
800241f8:	e3a03000 	mov	r3, #0
800241fc:	ea00002c 	b	800242b4 <skipelem+0x100>
80024200:	e51b3010 	ldr	r3, [fp, #-16]
80024204:	e50b3008 	str	r3, [fp, #-8]
80024208:	ea000002 	b	80024218 <skipelem+0x64>
8002420c:	e51b3010 	ldr	r3, [fp, #-16]
80024210:	e2833001 	add	r3, r3, #1
80024214:	e50b3010 	str	r3, [fp, #-16]
80024218:	e51b3010 	ldr	r3, [fp, #-16]
8002421c:	e5d33000 	ldrb	r3, [r3]
80024220:	e353002f 	cmp	r3, #47	@ 0x2f
80024224:	0a000003 	beq	80024238 <skipelem+0x84>
80024228:	e51b3010 	ldr	r3, [fp, #-16]
8002422c:	e5d33000 	ldrb	r3, [r3]
80024230:	e3530000 	cmp	r3, #0
80024234:	1afffff4 	bne	8002420c <skipelem+0x58>
80024238:	e51b2010 	ldr	r2, [fp, #-16]
8002423c:	e51b3008 	ldr	r3, [fp, #-8]
80024240:	e0423003 	sub	r3, r2, r3
80024244:	e50b300c 	str	r3, [fp, #-12]
80024248:	e51b300c 	ldr	r3, [fp, #-12]
8002424c:	e353000d 	cmp	r3, #13
80024250:	da000004 	ble	80024268 <skipelem+0xb4>
80024254:	e3a0200e 	mov	r2, #14
80024258:	e51b1008 	ldr	r1, [fp, #-8]
8002425c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024260:	ebffefd8 	bl	800201c8 <memmove>
80024264:	ea00000d 	b	800242a0 <skipelem+0xec>
80024268:	e51b300c 	ldr	r3, [fp, #-12]
8002426c:	e1a02003 	mov	r2, r3
80024270:	e51b1008 	ldr	r1, [fp, #-8]
80024274:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024278:	ebffefd2 	bl	800201c8 <memmove>
8002427c:	e51b300c 	ldr	r3, [fp, #-12]
80024280:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024284:	e0823003 	add	r3, r2, r3
80024288:	e3a02000 	mov	r2, #0
8002428c:	e5c32000 	strb	r2, [r3]
80024290:	ea000002 	b	800242a0 <skipelem+0xec>
80024294:	e51b3010 	ldr	r3, [fp, #-16]
80024298:	e2833001 	add	r3, r3, #1
8002429c:	e50b3010 	str	r3, [fp, #-16]
800242a0:	e51b3010 	ldr	r3, [fp, #-16]
800242a4:	e5d33000 	ldrb	r3, [r3]
800242a8:	e353002f 	cmp	r3, #47	@ 0x2f
800242ac:	0afffff8 	beq	80024294 <skipelem+0xe0>
800242b0:	e51b3010 	ldr	r3, [fp, #-16]
800242b4:	e1a00003 	mov	r0, r3
800242b8:	e24bd004 	sub	sp, fp, #4
800242bc:	e8bd8800 	pop	{fp, pc}

800242c0 <namex>:
800242c0:	e92d4800 	push	{fp, lr}
800242c4:	e28db004 	add	fp, sp, #4
800242c8:	e24dd018 	sub	sp, sp, #24
800242cc:	e50b0010 	str	r0, [fp, #-16]
800242d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800242d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800242d8:	e51b3010 	ldr	r3, [fp, #-16]
800242dc:	e5d33000 	ldrb	r3, [r3]
800242e0:	e353002f 	cmp	r3, #47	@ 0x2f
800242e4:	1a000004 	bne	800242fc <namex+0x3c>
800242e8:	e3a01001 	mov	r1, #1
800242ec:	e3a00001 	mov	r0, #1
800242f0:	ebfffc0b 	bl	80023324 <iget>
800242f4:	e50b0008 	str	r0, [fp, #-8]
800242f8:	ea00002b 	b	800243ac <namex+0xec>
800242fc:	e59f30f0 	ldr	r3, [pc, #240]	@ 800243f4 <namex+0x134>
80024300:	e5933000 	ldr	r3, [r3]
80024304:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80024308:	e1a00003 	mov	r0, r3
8002430c:	ebfffc54 	bl	80023464 <idup>
80024310:	e50b0008 	str	r0, [fp, #-8]
80024314:	ea000024 	b	800243ac <namex+0xec>
80024318:	e51b0008 	ldr	r0, [fp, #-8]
8002431c:	ebfffc62 	bl	800234ac <ilock>
80024320:	e51b3008 	ldr	r3, [fp, #-8]
80024324:	e1d331f0 	ldrsh	r3, [r3, #16]
80024328:	e3530001 	cmp	r3, #1
8002432c:	0a000003 	beq	80024340 <namex+0x80>
80024330:	e51b0008 	ldr	r0, [fp, #-8]
80024334:	ebfffd1d 	bl	800237b0 <iunlockput>
80024338:	e3a03000 	mov	r3, #0
8002433c:	ea000029 	b	800243e8 <namex+0x128>
80024340:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024344:	e3530000 	cmp	r3, #0
80024348:	0a000007 	beq	8002436c <namex+0xac>
8002434c:	e51b3010 	ldr	r3, [fp, #-16]
80024350:	e5d33000 	ldrb	r3, [r3]
80024354:	e3530000 	cmp	r3, #0
80024358:	1a000003 	bne	8002436c <namex+0xac>
8002435c:	e51b0008 	ldr	r0, [fp, #-8]
80024360:	ebfffcb5 	bl	8002363c <iunlock>
80024364:	e51b3008 	ldr	r3, [fp, #-8]
80024368:	ea00001e 	b	800243e8 <namex+0x128>
8002436c:	e3a02000 	mov	r2, #0
80024370:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024374:	e51b0008 	ldr	r0, [fp, #-8]
80024378:	ebffff06 	bl	80023f98 <dirlookup>
8002437c:	e50b000c 	str	r0, [fp, #-12]
80024380:	e51b300c 	ldr	r3, [fp, #-12]
80024384:	e3530000 	cmp	r3, #0
80024388:	1a000003 	bne	8002439c <namex+0xdc>
8002438c:	e51b0008 	ldr	r0, [fp, #-8]
80024390:	ebfffd06 	bl	800237b0 <iunlockput>
80024394:	e3a03000 	mov	r3, #0
80024398:	ea000012 	b	800243e8 <namex+0x128>
8002439c:	e51b0008 	ldr	r0, [fp, #-8]
800243a0:	ebfffd02 	bl	800237b0 <iunlockput>
800243a4:	e51b300c 	ldr	r3, [fp, #-12]
800243a8:	e50b3008 	str	r3, [fp, #-8]
800243ac:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800243b0:	e51b0010 	ldr	r0, [fp, #-16]
800243b4:	ebffff7e 	bl	800241b4 <skipelem>
800243b8:	e50b0010 	str	r0, [fp, #-16]
800243bc:	e51b3010 	ldr	r3, [fp, #-16]
800243c0:	e3530000 	cmp	r3, #0
800243c4:	1affffd3 	bne	80024318 <namex+0x58>
800243c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800243cc:	e3530000 	cmp	r3, #0
800243d0:	0a000003 	beq	800243e4 <namex+0x124>
800243d4:	e51b0008 	ldr	r0, [fp, #-8]
800243d8:	ebfffcb9 	bl	800236c4 <iput>
800243dc:	e3a03000 	mov	r3, #0
800243e0:	ea000000 	b	800243e8 <namex+0x128>
800243e4:	e51b3008 	ldr	r3, [fp, #-8]
800243e8:	e1a00003 	mov	r0, r3
800243ec:	e24bd004 	sub	sp, fp, #4
800243f0:	e8bd8800 	pop	{fp, pc}
800243f4:	800b0db0 	.word	0x800b0db0

800243f8 <namei>:
800243f8:	e92d4800 	push	{fp, lr}
800243fc:	e28db004 	add	fp, sp, #4
80024400:	e24dd018 	sub	sp, sp, #24
80024404:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80024408:	e24b3014 	sub	r3, fp, #20
8002440c:	e1a02003 	mov	r2, r3
80024410:	e3a01000 	mov	r1, #0
80024414:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80024418:	ebffffa8 	bl	800242c0 <namex>
8002441c:	e1a03000 	mov	r3, r0
80024420:	e1a00003 	mov	r0, r3
80024424:	e24bd004 	sub	sp, fp, #4
80024428:	e8bd8800 	pop	{fp, pc}

8002442c <nameiparent>:
8002442c:	e92d4800 	push	{fp, lr}
80024430:	e28db004 	add	fp, sp, #4
80024434:	e24dd008 	sub	sp, sp, #8
80024438:	e50b0008 	str	r0, [fp, #-8]
8002443c:	e50b100c 	str	r1, [fp, #-12]
80024440:	e51b200c 	ldr	r2, [fp, #-12]
80024444:	e3a01001 	mov	r1, #1
80024448:	e51b0008 	ldr	r0, [fp, #-8]
8002444c:	ebffff9b 	bl	800242c0 <namex>
80024450:	e1a03000 	mov	r3, r0
80024454:	e1a00003 	mov	r0, r3
80024458:	e24bd004 	sub	sp, fp, #4
8002445c:	e8bd8800 	pop	{fp, pc}

80024460 <initlog>:
80024460:	e92d4800 	push	{fp, lr}
80024464:	e28db004 	add	fp, sp, #4
80024468:	e24dd010 	sub	sp, sp, #16
8002446c:	e59f1058 	ldr	r1, [pc, #88]	@ 800244cc <initlog+0x6c>
80024470:	e59f0058 	ldr	r0, [pc, #88]	@ 800244d0 <initlog+0x70>
80024474:	eb0007b6 	bl	80026354 <initlock>
80024478:	e24b3014 	sub	r3, fp, #20
8002447c:	e1a01003 	mov	r1, r3
80024480:	e3a00001 	mov	r0, #1
80024484:	ebfffa3c 	bl	80022d7c <readsb>
80024488:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002448c:	e51b3008 	ldr	r3, [fp, #-8]
80024490:	e0423003 	sub	r3, r2, r3
80024494:	e1a02003 	mov	r2, r3
80024498:	e59f3030 	ldr	r3, [pc, #48]	@ 800244d0 <initlog+0x70>
8002449c:	e5832034 	str	r2, [r3, #52]	@ 0x34
800244a0:	e51b3008 	ldr	r3, [fp, #-8]
800244a4:	e1a02003 	mov	r2, r3
800244a8:	e59f3020 	ldr	r3, [pc, #32]	@ 800244d0 <initlog+0x70>
800244ac:	e5832038 	str	r2, [r3, #56]	@ 0x38
800244b0:	e59f3018 	ldr	r3, [pc, #24]	@ 800244d0 <initlog+0x70>
800244b4:	e3a02001 	mov	r2, #1
800244b8:	e5832040 	str	r2, [r3, #64]	@ 0x40
800244bc:	eb00009b 	bl	80024730 <recover_from_log>
800244c0:	e1a00000 	nop			@ (mov r0, r0)
800244c4:	e24bd004 	sub	sp, fp, #4
800244c8:	e8bd8800 	pop	{fp, pc}
800244cc:	80029b78 	.word	0x80029b78
800244d0:	800ae518 	.word	0x800ae518

800244d4 <install_trans>:
800244d4:	e92d4800 	push	{fp, lr}
800244d8:	e28db004 	add	fp, sp, #4
800244dc:	e24dd010 	sub	sp, sp, #16
800244e0:	e3a03000 	mov	r3, #0
800244e4:	e50b3008 	str	r3, [fp, #-8]
800244e8:	ea000026 	b	80024588 <install_trans+0xb4>
800244ec:	e59f30b8 	ldr	r3, [pc, #184]	@ 800245ac <install_trans+0xd8>
800244f0:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800244f4:	e1a00003 	mov	r0, r3
800244f8:	e59f30ac 	ldr	r3, [pc, #172]	@ 800245ac <install_trans+0xd8>
800244fc:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024500:	e51b3008 	ldr	r3, [fp, #-8]
80024504:	e0823003 	add	r3, r2, r3
80024508:	e2833001 	add	r3, r3, #1
8002450c:	e1a01003 	mov	r1, r3
80024510:	ebfff17f 	bl	80020b14 <bread>
80024514:	e50b000c 	str	r0, [fp, #-12]
80024518:	e59f308c 	ldr	r3, [pc, #140]	@ 800245ac <install_trans+0xd8>
8002451c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024520:	e1a00003 	mov	r0, r3
80024524:	e59f2080 	ldr	r2, [pc, #128]	@ 800245ac <install_trans+0xd8>
80024528:	e51b3008 	ldr	r3, [fp, #-8]
8002452c:	e2833010 	add	r3, r3, #16
80024530:	e1a03103 	lsl	r3, r3, #2
80024534:	e0823003 	add	r3, r2, r3
80024538:	e5933008 	ldr	r3, [r3, #8]
8002453c:	e1a01003 	mov	r1, r3
80024540:	ebfff173 	bl	80020b14 <bread>
80024544:	e50b0010 	str	r0, [fp, #-16]
80024548:	e51b3010 	ldr	r3, [fp, #-16]
8002454c:	e2830018 	add	r0, r3, #24
80024550:	e51b300c 	ldr	r3, [fp, #-12]
80024554:	e2833018 	add	r3, r3, #24
80024558:	e3a02c02 	mov	r2, #512	@ 0x200
8002455c:	e1a01003 	mov	r1, r3
80024560:	ebffef18 	bl	800201c8 <memmove>
80024564:	e51b0010 	ldr	r0, [fp, #-16]
80024568:	ebfff17d 	bl	80020b64 <bwrite>
8002456c:	e51b000c 	ldr	r0, [fp, #-12]
80024570:	ebfff191 	bl	80020bbc <brelse>
80024574:	e51b0010 	ldr	r0, [fp, #-16]
80024578:	ebfff18f 	bl	80020bbc <brelse>
8002457c:	e51b3008 	ldr	r3, [fp, #-8]
80024580:	e2833001 	add	r3, r3, #1
80024584:	e50b3008 	str	r3, [fp, #-8]
80024588:	e59f301c 	ldr	r3, [pc, #28]	@ 800245ac <install_trans+0xd8>
8002458c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024590:	e51b2008 	ldr	r2, [fp, #-8]
80024594:	e1520003 	cmp	r2, r3
80024598:	baffffd3 	blt	800244ec <install_trans+0x18>
8002459c:	e1a00000 	nop			@ (mov r0, r0)
800245a0:	e1a00000 	nop			@ (mov r0, r0)
800245a4:	e24bd004 	sub	sp, fp, #4
800245a8:	e8bd8800 	pop	{fp, pc}
800245ac:	800ae518 	.word	0x800ae518

800245b0 <read_head>:
800245b0:	e92d4800 	push	{fp, lr}
800245b4:	e28db004 	add	fp, sp, #4
800245b8:	e24dd010 	sub	sp, sp, #16
800245bc:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024668 <read_head+0xb8>
800245c0:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800245c4:	e1a02003 	mov	r2, r3
800245c8:	e59f3098 	ldr	r3, [pc, #152]	@ 80024668 <read_head+0xb8>
800245cc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800245d0:	e1a01003 	mov	r1, r3
800245d4:	e1a00002 	mov	r0, r2
800245d8:	ebfff14d 	bl	80020b14 <bread>
800245dc:	e50b000c 	str	r0, [fp, #-12]
800245e0:	e51b300c 	ldr	r3, [fp, #-12]
800245e4:	e2833018 	add	r3, r3, #24
800245e8:	e50b3010 	str	r3, [fp, #-16]
800245ec:	e51b3010 	ldr	r3, [fp, #-16]
800245f0:	e5933000 	ldr	r3, [r3]
800245f4:	e59f206c 	ldr	r2, [pc, #108]	@ 80024668 <read_head+0xb8>
800245f8:	e5823044 	str	r3, [r2, #68]	@ 0x44
800245fc:	e3a03000 	mov	r3, #0
80024600:	e50b3008 	str	r3, [fp, #-8]
80024604:	ea00000d 	b	80024640 <read_head+0x90>
80024608:	e51b2010 	ldr	r2, [fp, #-16]
8002460c:	e51b3008 	ldr	r3, [fp, #-8]
80024610:	e1a03103 	lsl	r3, r3, #2
80024614:	e0823003 	add	r3, r2, r3
80024618:	e5932004 	ldr	r2, [r3, #4]
8002461c:	e59f1044 	ldr	r1, [pc, #68]	@ 80024668 <read_head+0xb8>
80024620:	e51b3008 	ldr	r3, [fp, #-8]
80024624:	e2833010 	add	r3, r3, #16
80024628:	e1a03103 	lsl	r3, r3, #2
8002462c:	e0813003 	add	r3, r1, r3
80024630:	e5832008 	str	r2, [r3, #8]
80024634:	e51b3008 	ldr	r3, [fp, #-8]
80024638:	e2833001 	add	r3, r3, #1
8002463c:	e50b3008 	str	r3, [fp, #-8]
80024640:	e59f3020 	ldr	r3, [pc, #32]	@ 80024668 <read_head+0xb8>
80024644:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024648:	e51b2008 	ldr	r2, [fp, #-8]
8002464c:	e1520003 	cmp	r2, r3
80024650:	baffffec 	blt	80024608 <read_head+0x58>
80024654:	e51b000c 	ldr	r0, [fp, #-12]
80024658:	ebfff157 	bl	80020bbc <brelse>
8002465c:	e1a00000 	nop			@ (mov r0, r0)
80024660:	e24bd004 	sub	sp, fp, #4
80024664:	e8bd8800 	pop	{fp, pc}
80024668:	800ae518 	.word	0x800ae518

8002466c <write_head>:
8002466c:	e92d4800 	push	{fp, lr}
80024670:	e28db004 	add	fp, sp, #4
80024674:	e24dd010 	sub	sp, sp, #16
80024678:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002472c <write_head+0xc0>
8002467c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024680:	e1a02003 	mov	r2, r3
80024684:	e59f30a0 	ldr	r3, [pc, #160]	@ 8002472c <write_head+0xc0>
80024688:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002468c:	e1a01003 	mov	r1, r3
80024690:	e1a00002 	mov	r0, r2
80024694:	ebfff11e 	bl	80020b14 <bread>
80024698:	e50b000c 	str	r0, [fp, #-12]
8002469c:	e51b300c 	ldr	r3, [fp, #-12]
800246a0:	e2833018 	add	r3, r3, #24
800246a4:	e50b3010 	str	r3, [fp, #-16]
800246a8:	e59f307c 	ldr	r3, [pc, #124]	@ 8002472c <write_head+0xc0>
800246ac:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800246b0:	e51b3010 	ldr	r3, [fp, #-16]
800246b4:	e5832000 	str	r2, [r3]
800246b8:	e3a03000 	mov	r3, #0
800246bc:	e50b3008 	str	r3, [fp, #-8]
800246c0:	ea00000d 	b	800246fc <write_head+0x90>
800246c4:	e59f2060 	ldr	r2, [pc, #96]	@ 8002472c <write_head+0xc0>
800246c8:	e51b3008 	ldr	r3, [fp, #-8]
800246cc:	e2833010 	add	r3, r3, #16
800246d0:	e1a03103 	lsl	r3, r3, #2
800246d4:	e0823003 	add	r3, r2, r3
800246d8:	e5932008 	ldr	r2, [r3, #8]
800246dc:	e51b1010 	ldr	r1, [fp, #-16]
800246e0:	e51b3008 	ldr	r3, [fp, #-8]
800246e4:	e1a03103 	lsl	r3, r3, #2
800246e8:	e0813003 	add	r3, r1, r3
800246ec:	e5832004 	str	r2, [r3, #4]
800246f0:	e51b3008 	ldr	r3, [fp, #-8]
800246f4:	e2833001 	add	r3, r3, #1
800246f8:	e50b3008 	str	r3, [fp, #-8]
800246fc:	e59f3028 	ldr	r3, [pc, #40]	@ 8002472c <write_head+0xc0>
80024700:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024704:	e51b2008 	ldr	r2, [fp, #-8]
80024708:	e1520003 	cmp	r2, r3
8002470c:	baffffec 	blt	800246c4 <write_head+0x58>
80024710:	e51b000c 	ldr	r0, [fp, #-12]
80024714:	ebfff112 	bl	80020b64 <bwrite>
80024718:	e51b000c 	ldr	r0, [fp, #-12]
8002471c:	ebfff126 	bl	80020bbc <brelse>
80024720:	e1a00000 	nop			@ (mov r0, r0)
80024724:	e24bd004 	sub	sp, fp, #4
80024728:	e8bd8800 	pop	{fp, pc}
8002472c:	800ae518 	.word	0x800ae518

80024730 <recover_from_log>:
80024730:	e92d4800 	push	{fp, lr}
80024734:	e28db004 	add	fp, sp, #4
80024738:	ebffff9c 	bl	800245b0 <read_head>
8002473c:	ebffff64 	bl	800244d4 <install_trans>
80024740:	e59f3010 	ldr	r3, [pc, #16]	@ 80024758 <recover_from_log+0x28>
80024744:	e3a02000 	mov	r2, #0
80024748:	e5832044 	str	r2, [r3, #68]	@ 0x44
8002474c:	ebffffc6 	bl	8002466c <write_head>
80024750:	e1a00000 	nop			@ (mov r0, r0)
80024754:	e8bd8800 	pop	{fp, pc}
80024758:	800ae518 	.word	0x800ae518

8002475c <begin_trans>:
8002475c:	e92d4800 	push	{fp, lr}
80024760:	e28db004 	add	fp, sp, #4
80024764:	e59f003c 	ldr	r0, [pc, #60]	@ 800247a8 <begin_trans+0x4c>
80024768:	eb00070b 	bl	8002639c <acquire>
8002476c:	ea000002 	b	8002477c <begin_trans+0x20>
80024770:	e59f1030 	ldr	r1, [pc, #48]	@ 800247a8 <begin_trans+0x4c>
80024774:	e59f002c 	ldr	r0, [pc, #44]	@ 800247a8 <begin_trans+0x4c>
80024778:	eb0005b4 	bl	80025e50 <sleep>
8002477c:	e59f3024 	ldr	r3, [pc, #36]	@ 800247a8 <begin_trans+0x4c>
80024780:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024784:	e3530000 	cmp	r3, #0
80024788:	1afffff8 	bne	80024770 <begin_trans+0x14>
8002478c:	e59f3014 	ldr	r3, [pc, #20]	@ 800247a8 <begin_trans+0x4c>
80024790:	e3a02001 	mov	r2, #1
80024794:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024798:	e59f0008 	ldr	r0, [pc, #8]	@ 800247a8 <begin_trans+0x4c>
8002479c:	eb000709 	bl	800263c8 <release>
800247a0:	e1a00000 	nop			@ (mov r0, r0)
800247a4:	e8bd8800 	pop	{fp, pc}
800247a8:	800ae518 	.word	0x800ae518

800247ac <commit_trans>:
800247ac:	e92d4800 	push	{fp, lr}
800247b0:	e28db004 	add	fp, sp, #4
800247b4:	e59f304c 	ldr	r3, [pc, #76]	@ 80024808 <commit_trans+0x5c>
800247b8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800247bc:	e3530000 	cmp	r3, #0
800247c0:	da000005 	ble	800247dc <commit_trans+0x30>
800247c4:	ebffffa8 	bl	8002466c <write_head>
800247c8:	ebffff41 	bl	800244d4 <install_trans>
800247cc:	e59f3034 	ldr	r3, [pc, #52]	@ 80024808 <commit_trans+0x5c>
800247d0:	e3a02000 	mov	r2, #0
800247d4:	e5832044 	str	r2, [r3, #68]	@ 0x44
800247d8:	ebffffa3 	bl	8002466c <write_head>
800247dc:	e59f0024 	ldr	r0, [pc, #36]	@ 80024808 <commit_trans+0x5c>
800247e0:	eb0006ed 	bl	8002639c <acquire>
800247e4:	e59f301c 	ldr	r3, [pc, #28]	@ 80024808 <commit_trans+0x5c>
800247e8:	e3a02000 	mov	r2, #0
800247ec:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800247f0:	e59f0010 	ldr	r0, [pc, #16]	@ 80024808 <commit_trans+0x5c>
800247f4:	eb000629 	bl	800260a0 <wakeup>
800247f8:	e59f0008 	ldr	r0, [pc, #8]	@ 80024808 <commit_trans+0x5c>
800247fc:	eb0006f1 	bl	800263c8 <release>
80024800:	e1a00000 	nop			@ (mov r0, r0)
80024804:	e8bd8800 	pop	{fp, pc}
80024808:	800ae518 	.word	0x800ae518

8002480c <log_write>:
8002480c:	e92d4800 	push	{fp, lr}
80024810:	e28db004 	add	fp, sp, #4
80024814:	e24dd010 	sub	sp, sp, #16
80024818:	e50b0010 	str	r0, [fp, #-16]
8002481c:	e59f3164 	ldr	r3, [pc, #356]	@ 80024988 <log_write+0x17c>
80024820:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024824:	e3530009 	cmp	r3, #9
80024828:	ca000006 	bgt	80024848 <log_write+0x3c>
8002482c:	e59f3154 	ldr	r3, [pc, #340]	@ 80024988 <log_write+0x17c>
80024830:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024834:	e59f314c 	ldr	r3, [pc, #332]	@ 80024988 <log_write+0x17c>
80024838:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
8002483c:	e2433001 	sub	r3, r3, #1
80024840:	e1520003 	cmp	r2, r3
80024844:	ba000001 	blt	80024850 <log_write+0x44>
80024848:	e59f013c 	ldr	r0, [pc, #316]	@ 8002498c <log_write+0x180>
8002484c:	ebfff4a8 	bl	80021af4 <panic>
80024850:	e59f3130 	ldr	r3, [pc, #304]	@ 80024988 <log_write+0x17c>
80024854:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024858:	e3530000 	cmp	r3, #0
8002485c:	1a000001 	bne	80024868 <log_write+0x5c>
80024860:	e59f0128 	ldr	r0, [pc, #296]	@ 80024990 <log_write+0x184>
80024864:	ebfff4a2 	bl	80021af4 <panic>
80024868:	e3a03000 	mov	r3, #0
8002486c:	e50b3008 	str	r3, [fp, #-8]
80024870:	ea00000d 	b	800248ac <log_write+0xa0>
80024874:	e59f210c 	ldr	r2, [pc, #268]	@ 80024988 <log_write+0x17c>
80024878:	e51b3008 	ldr	r3, [fp, #-8]
8002487c:	e2833010 	add	r3, r3, #16
80024880:	e1a03103 	lsl	r3, r3, #2
80024884:	e0823003 	add	r3, r2, r3
80024888:	e5933008 	ldr	r3, [r3, #8]
8002488c:	e1a02003 	mov	r2, r3
80024890:	e51b3010 	ldr	r3, [fp, #-16]
80024894:	e5933008 	ldr	r3, [r3, #8]
80024898:	e1520003 	cmp	r2, r3
8002489c:	0a000008 	beq	800248c4 <log_write+0xb8>
800248a0:	e51b3008 	ldr	r3, [fp, #-8]
800248a4:	e2833001 	add	r3, r3, #1
800248a8:	e50b3008 	str	r3, [fp, #-8]
800248ac:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024988 <log_write+0x17c>
800248b0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800248b4:	e51b2008 	ldr	r2, [fp, #-8]
800248b8:	e1520003 	cmp	r2, r3
800248bc:	baffffec 	blt	80024874 <log_write+0x68>
800248c0:	ea000000 	b	800248c8 <log_write+0xbc>
800248c4:	e1a00000 	nop			@ (mov r0, r0)
800248c8:	e51b3010 	ldr	r3, [fp, #-16]
800248cc:	e5933008 	ldr	r3, [r3, #8]
800248d0:	e1a01003 	mov	r1, r3
800248d4:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024988 <log_write+0x17c>
800248d8:	e51b3008 	ldr	r3, [fp, #-8]
800248dc:	e2833010 	add	r3, r3, #16
800248e0:	e1a03103 	lsl	r3, r3, #2
800248e4:	e0823003 	add	r3, r2, r3
800248e8:	e5831008 	str	r1, [r3, #8]
800248ec:	e51b3010 	ldr	r3, [fp, #-16]
800248f0:	e5930004 	ldr	r0, [r3, #4]
800248f4:	e59f308c 	ldr	r3, [pc, #140]	@ 80024988 <log_write+0x17c>
800248f8:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800248fc:	e51b3008 	ldr	r3, [fp, #-8]
80024900:	e0823003 	add	r3, r2, r3
80024904:	e2833001 	add	r3, r3, #1
80024908:	e1a01003 	mov	r1, r3
8002490c:	ebfff080 	bl	80020b14 <bread>
80024910:	e50b000c 	str	r0, [fp, #-12]
80024914:	e51b300c 	ldr	r3, [fp, #-12]
80024918:	e2830018 	add	r0, r3, #24
8002491c:	e51b3010 	ldr	r3, [fp, #-16]
80024920:	e2833018 	add	r3, r3, #24
80024924:	e3a02c02 	mov	r2, #512	@ 0x200
80024928:	e1a01003 	mov	r1, r3
8002492c:	ebffee25 	bl	800201c8 <memmove>
80024930:	e51b000c 	ldr	r0, [fp, #-12]
80024934:	ebfff08a 	bl	80020b64 <bwrite>
80024938:	e51b000c 	ldr	r0, [fp, #-12]
8002493c:	ebfff09e 	bl	80020bbc <brelse>
80024940:	e59f3040 	ldr	r3, [pc, #64]	@ 80024988 <log_write+0x17c>
80024944:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024948:	e51b2008 	ldr	r2, [fp, #-8]
8002494c:	e1520003 	cmp	r2, r3
80024950:	1a000004 	bne	80024968 <log_write+0x15c>
80024954:	e59f302c 	ldr	r3, [pc, #44]	@ 80024988 <log_write+0x17c>
80024958:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002495c:	e2833001 	add	r3, r3, #1
80024960:	e59f2020 	ldr	r2, [pc, #32]	@ 80024988 <log_write+0x17c>
80024964:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024968:	e51b3010 	ldr	r3, [fp, #-16]
8002496c:	e5933000 	ldr	r3, [r3]
80024970:	e3832004 	orr	r2, r3, #4
80024974:	e51b3010 	ldr	r3, [fp, #-16]
80024978:	e5832000 	str	r2, [r3]
8002497c:	e1a00000 	nop			@ (mov r0, r0)
80024980:	e24bd004 	sub	sp, fp, #4
80024984:	e8bd8800 	pop	{fp, pc}
80024988:	800ae518 	.word	0x800ae518
8002498c:	80029b7c 	.word	0x80029b7c
80024990:	80029b94 	.word	0x80029b94

80024994 <kmain>:
80024994:	e92d4800 	push	{fp, lr}
80024998:	e28db004 	add	fp, sp, #4
8002499c:	e24dd008 	sub	sp, sp, #8
800249a0:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024a4c <kmain+0xb8>
800249a4:	e59f20a4 	ldr	r2, [pc, #164]	@ 80024a50 <kmain+0xbc>
800249a8:	e5832000 	str	r2, [r3]
800249ac:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024a54 <kmain+0xc0>
800249b0:	eb00129d 	bl	8002942c <uart_init>
800249b4:	e59f309c 	ldr	r3, [pc, #156]	@ 80024a58 <kmain+0xc4>
800249b8:	e50b3008 	str	r3, [fp, #-8]
800249bc:	eb000e99 	bl	80028428 <init_vmm>
800249c0:	e59f3094 	ldr	r3, [pc, #148]	@ 80024a5c <kmain+0xc8>
800249c4:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
800249c8:	e2833003 	add	r3, r3, #3
800249cc:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
800249d0:	e3c33003 	bic	r3, r3, #3
800249d4:	e51b1008 	ldr	r1, [fp, #-8]
800249d8:	e1a00003 	mov	r0, r3
800249dc:	eb000ec5 	bl	800284f8 <kpt_freerange>
800249e0:	e51b3008 	ldr	r3, [fp, #-8]
800249e4:	e2833b01 	add	r3, r3, #1024	@ 0x400
800249e8:	e59f1070 	ldr	r1, [pc, #112]	@ 80024a60 <kmain+0xcc>
800249ec:	e1a00003 	mov	r0, r3
800249f0:	eb000ec0 	bl	800284f8 <kpt_freerange>
800249f4:	e3a01302 	mov	r1, #134217728	@ 0x8000000
800249f8:	e3a00601 	mov	r0, #1048576	@ 0x100000
800249fc:	eb001185 	bl	80029018 <paging_init>
80024a00:	ebfff0ec 	bl	80020db8 <kmem_init>
80024a04:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
80024a08:	e59f0050 	ldr	r0, [pc, #80]	@ 80024a60 <kmain+0xcc>
80024a0c:	ebfff0f2 	bl	80020ddc <kmem_init2>
80024a10:	eb000d88 	bl	80028038 <trap_init>
80024a14:	e59f0048 	ldr	r0, [pc, #72]	@ 80024a64 <kmain+0xd0>
80024a18:	eb00119f 	bl	8002909c <pic_init>
80024a1c:	eb0012b3 	bl	800294f0 <uart_enable_rx>
80024a20:	ebfff644 	bl	80022338 <consoleinit>
80024a24:	eb0001ca 	bl	80025154 <pinit>
80024a28:	ebffefa8 	bl	800208d0 <binit>
80024a2c:	ebfff78e 	bl	8002286c <fileinit>
80024a30:	ebfff9ba 	bl	80023120 <iinit>
80024a34:	eb00000b 	bl	80024a68 <ideinit>
80024a38:	e3a0000a 	mov	r0, #10
80024a3c:	eb001229 	bl	800292e8 <timer_init>
80024a40:	ebffeecc 	bl	80020578 <sti>
80024a44:	eb000249 	bl	80025370 <userinit>
80024a48:	eb000413 	bl	80025a9c <scheduler>
80024a4c:	800ae668 	.word	0x800ae668
80024a50:	800ae588 	.word	0x800ae588
80024a54:	901f1000 	.word	0x901f1000
80024a58:	800f0000 	.word	0x800f0000
80024a5c:	800b1000 	.word	0x800b1000
80024a60:	80100000 	.word	0x80100000
80024a64:	90140000 	.word	0x90140000

80024a68 <ideinit>:
80024a68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024a6c:	e28db000 	add	fp, sp, #0
80024a70:	e59f3028 	ldr	r3, [pc, #40]	@ 80024aa0 <ideinit+0x38>
80024a74:	e59f2028 	ldr	r2, [pc, #40]	@ 80024aa4 <ideinit+0x3c>
80024a78:	e5832000 	str	r2, [r3]
80024a7c:	e59f3024 	ldr	r3, [pc, #36]	@ 80024aa8 <ideinit+0x40>
80024a80:	e1a034a3 	lsr	r3, r3, #9
80024a84:	e1a02003 	mov	r2, r3
80024a88:	e59f301c 	ldr	r3, [pc, #28]	@ 80024aac <ideinit+0x44>
80024a8c:	e5832000 	str	r2, [r3]
80024a90:	e1a00000 	nop			@ (mov r0, r0)
80024a94:	e28bd000 	add	sp, fp, #0
80024a98:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024a9c:	e12fff1e 	bx	lr
80024aa0:	800ae670 	.word	0x800ae670
80024aa4:	8002b130 	.word	0x8002b130
80024aa8:	00080000 	.word	0x00080000
80024aac:	800ae66c 	.word	0x800ae66c

80024ab0 <ideintr>:
80024ab0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024ab4:	e28db000 	add	fp, sp, #0
80024ab8:	e1a00000 	nop			@ (mov r0, r0)
80024abc:	e28bd000 	add	sp, fp, #0
80024ac0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024ac4:	e12fff1e 	bx	lr

80024ac8 <iderw>:
80024ac8:	e92d4800 	push	{fp, lr}
80024acc:	e28db004 	add	fp, sp, #4
80024ad0:	e24dd010 	sub	sp, sp, #16
80024ad4:	e50b0010 	str	r0, [fp, #-16]
80024ad8:	e51b3010 	ldr	r3, [fp, #-16]
80024adc:	e5933000 	ldr	r3, [r3]
80024ae0:	e2033001 	and	r3, r3, #1
80024ae4:	e3530000 	cmp	r3, #0
80024ae8:	1a000001 	bne	80024af4 <iderw+0x2c>
80024aec:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024be0 <iderw+0x118>
80024af0:	ebfff3ff 	bl	80021af4 <panic>
80024af4:	e51b3010 	ldr	r3, [fp, #-16]
80024af8:	e5933000 	ldr	r3, [r3]
80024afc:	e2033006 	and	r3, r3, #6
80024b00:	e3530002 	cmp	r3, #2
80024b04:	1a000001 	bne	80024b10 <iderw+0x48>
80024b08:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024be4 <iderw+0x11c>
80024b0c:	ebfff3f8 	bl	80021af4 <panic>
80024b10:	e51b3010 	ldr	r3, [fp, #-16]
80024b14:	e5933004 	ldr	r3, [r3, #4]
80024b18:	e3530001 	cmp	r3, #1
80024b1c:	0a000001 	beq	80024b28 <iderw+0x60>
80024b20:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024be8 <iderw+0x120>
80024b24:	ebfff3f2 	bl	80021af4 <panic>
80024b28:	e51b3010 	ldr	r3, [fp, #-16]
80024b2c:	e5933008 	ldr	r3, [r3, #8]
80024b30:	e59f20b4 	ldr	r2, [pc, #180]	@ 80024bec <iderw+0x124>
80024b34:	e5922000 	ldr	r2, [r2]
80024b38:	e1530002 	cmp	r3, r2
80024b3c:	3a000001 	bcc	80024b48 <iderw+0x80>
80024b40:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024bf0 <iderw+0x128>
80024b44:	ebfff3ea 	bl	80021af4 <panic>
80024b48:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024bf4 <iderw+0x12c>
80024b4c:	e5932000 	ldr	r2, [r3]
80024b50:	e51b3010 	ldr	r3, [fp, #-16]
80024b54:	e5933008 	ldr	r3, [r3, #8]
80024b58:	e1a03483 	lsl	r3, r3, #9
80024b5c:	e0823003 	add	r3, r2, r3
80024b60:	e50b3008 	str	r3, [fp, #-8]
80024b64:	e51b3010 	ldr	r3, [fp, #-16]
80024b68:	e5933000 	ldr	r3, [r3]
80024b6c:	e2033004 	and	r3, r3, #4
80024b70:	e3530000 	cmp	r3, #0
80024b74:	0a00000b 	beq	80024ba8 <iderw+0xe0>
80024b78:	e51b3010 	ldr	r3, [fp, #-16]
80024b7c:	e5933000 	ldr	r3, [r3]
80024b80:	e3c32004 	bic	r2, r3, #4
80024b84:	e51b3010 	ldr	r3, [fp, #-16]
80024b88:	e5832000 	str	r2, [r3]
80024b8c:	e51b3010 	ldr	r3, [fp, #-16]
80024b90:	e2833018 	add	r3, r3, #24
80024b94:	e3a02c02 	mov	r2, #512	@ 0x200
80024b98:	e1a01003 	mov	r1, r3
80024b9c:	e51b0008 	ldr	r0, [fp, #-8]
80024ba0:	ebffed88 	bl	800201c8 <memmove>
80024ba4:	ea000005 	b	80024bc0 <iderw+0xf8>
80024ba8:	e51b3010 	ldr	r3, [fp, #-16]
80024bac:	e2833018 	add	r3, r3, #24
80024bb0:	e3a02c02 	mov	r2, #512	@ 0x200
80024bb4:	e51b1008 	ldr	r1, [fp, #-8]
80024bb8:	e1a00003 	mov	r0, r3
80024bbc:	ebffed81 	bl	800201c8 <memmove>
80024bc0:	e51b3010 	ldr	r3, [fp, #-16]
80024bc4:	e5933000 	ldr	r3, [r3]
80024bc8:	e3832002 	orr	r2, r3, #2
80024bcc:	e51b3010 	ldr	r3, [fp, #-16]
80024bd0:	e5832000 	str	r2, [r3]
80024bd4:	e1a00000 	nop			@ (mov r0, r0)
80024bd8:	e24bd004 	sub	sp, fp, #4
80024bdc:	e8bd8800 	pop	{fp, pc}
80024be0:	80029bac 	.word	0x80029bac
80024be4:	80029bc0 	.word	0x80029bc0
80024be8:	80029bd8 	.word	0x80029bd8
80024bec:	800ae66c 	.word	0x800ae66c
80024bf0:	80029bf8 	.word	0x80029bf8
80024bf4:	800ae670 	.word	0x800ae670

80024bf8 <pipealloc>:
80024bf8:	e92d4800 	push	{fp, lr}
80024bfc:	e28db004 	add	fp, sp, #4
80024c00:	e24dd010 	sub	sp, sp, #16
80024c04:	e50b0010 	str	r0, [fp, #-16]
80024c08:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024c0c:	e3a03000 	mov	r3, #0
80024c10:	e50b3008 	str	r3, [fp, #-8]
80024c14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024c18:	e3a02000 	mov	r2, #0
80024c1c:	e5832000 	str	r2, [r3]
80024c20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024c24:	e5932000 	ldr	r2, [r3]
80024c28:	e51b3010 	ldr	r3, [fp, #-16]
80024c2c:	e5832000 	str	r2, [r3]
80024c30:	ebfff716 	bl	80022890 <filealloc>
80024c34:	e1a02000 	mov	r2, r0
80024c38:	e51b3010 	ldr	r3, [fp, #-16]
80024c3c:	e5832000 	str	r2, [r3]
80024c40:	e51b3010 	ldr	r3, [fp, #-16]
80024c44:	e5933000 	ldr	r3, [r3]
80024c48:	e3530000 	cmp	r3, #0
80024c4c:	0a000042 	beq	80024d5c <pipealloc+0x164>
80024c50:	ebfff70e 	bl	80022890 <filealloc>
80024c54:	e1a02000 	mov	r2, r0
80024c58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024c5c:	e5832000 	str	r2, [r3]
80024c60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024c64:	e5933000 	ldr	r3, [r3]
80024c68:	e3530000 	cmp	r3, #0
80024c6c:	0a00003a 	beq	80024d5c <pipealloc+0x164>
80024c70:	e3a00f91 	mov	r0, #580	@ 0x244
80024c74:	ebfff274 	bl	8002164c <get_order>
80024c78:	e1a03000 	mov	r3, r0
80024c7c:	e1a00003 	mov	r0, r3
80024c80:	ebfff1e7 	bl	80021424 <kmalloc>
80024c84:	e50b0008 	str	r0, [fp, #-8]
80024c88:	e51b3008 	ldr	r3, [fp, #-8]
80024c8c:	e3530000 	cmp	r3, #0
80024c90:	0a000033 	beq	80024d64 <pipealloc+0x16c>
80024c94:	e51b3008 	ldr	r3, [fp, #-8]
80024c98:	e3a02001 	mov	r2, #1
80024c9c:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024ca0:	e51b3008 	ldr	r3, [fp, #-8]
80024ca4:	e3a02001 	mov	r2, #1
80024ca8:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024cac:	e51b3008 	ldr	r3, [fp, #-8]
80024cb0:	e3a02000 	mov	r2, #0
80024cb4:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024cb8:	e51b3008 	ldr	r3, [fp, #-8]
80024cbc:	e3a02000 	mov	r2, #0
80024cc0:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024cc4:	e51b3008 	ldr	r3, [fp, #-8]
80024cc8:	e59f110c 	ldr	r1, [pc, #268]	@ 80024ddc <pipealloc+0x1e4>
80024ccc:	e1a00003 	mov	r0, r3
80024cd0:	eb00059f 	bl	80026354 <initlock>
80024cd4:	e51b3010 	ldr	r3, [fp, #-16]
80024cd8:	e5933000 	ldr	r3, [r3]
80024cdc:	e3a02001 	mov	r2, #1
80024ce0:	e5c32000 	strb	r2, [r3]
80024ce4:	e51b3010 	ldr	r3, [fp, #-16]
80024ce8:	e5933000 	ldr	r3, [r3]
80024cec:	e3a02001 	mov	r2, #1
80024cf0:	e5c32008 	strb	r2, [r3, #8]
80024cf4:	e51b3010 	ldr	r3, [fp, #-16]
80024cf8:	e5933000 	ldr	r3, [r3]
80024cfc:	e3a02000 	mov	r2, #0
80024d00:	e5c32009 	strb	r2, [r3, #9]
80024d04:	e51b3010 	ldr	r3, [fp, #-16]
80024d08:	e5933000 	ldr	r3, [r3]
80024d0c:	e51b2008 	ldr	r2, [fp, #-8]
80024d10:	e583200c 	str	r2, [r3, #12]
80024d14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d18:	e5933000 	ldr	r3, [r3]
80024d1c:	e3a02001 	mov	r2, #1
80024d20:	e5c32000 	strb	r2, [r3]
80024d24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d28:	e5933000 	ldr	r3, [r3]
80024d2c:	e3a02000 	mov	r2, #0
80024d30:	e5c32008 	strb	r2, [r3, #8]
80024d34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d38:	e5933000 	ldr	r3, [r3]
80024d3c:	e3a02001 	mov	r2, #1
80024d40:	e5c32009 	strb	r2, [r3, #9]
80024d44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d48:	e5933000 	ldr	r3, [r3]
80024d4c:	e51b2008 	ldr	r2, [fp, #-8]
80024d50:	e583200c 	str	r2, [r3, #12]
80024d54:	e3a03000 	mov	r3, #0
80024d58:	ea00001c 	b	80024dd0 <pipealloc+0x1d8>
80024d5c:	e1a00000 	nop			@ (mov r0, r0)
80024d60:	ea000000 	b	80024d68 <pipealloc+0x170>
80024d64:	e1a00000 	nop			@ (mov r0, r0)
80024d68:	e51b3008 	ldr	r3, [fp, #-8]
80024d6c:	e3530000 	cmp	r3, #0
80024d70:	0a000005 	beq	80024d8c <pipealloc+0x194>
80024d74:	e3a00f91 	mov	r0, #580	@ 0x244
80024d78:	ebfff233 	bl	8002164c <get_order>
80024d7c:	e1a03000 	mov	r3, r0
80024d80:	e1a01003 	mov	r1, r3
80024d84:	e51b0008 	ldr	r0, [fp, #-8]
80024d88:	ebfff1fc 	bl	80021580 <kfree>
80024d8c:	e51b3010 	ldr	r3, [fp, #-16]
80024d90:	e5933000 	ldr	r3, [r3]
80024d94:	e3530000 	cmp	r3, #0
80024d98:	0a000003 	beq	80024dac <pipealloc+0x1b4>
80024d9c:	e51b3010 	ldr	r3, [fp, #-16]
80024da0:	e5933000 	ldr	r3, [r3]
80024da4:	e1a00003 	mov	r0, r3
80024da8:	ebfff6f4 	bl	80022980 <fileclose>
80024dac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024db0:	e5933000 	ldr	r3, [r3]
80024db4:	e3530000 	cmp	r3, #0
80024db8:	0a000003 	beq	80024dcc <pipealloc+0x1d4>
80024dbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024dc0:	e5933000 	ldr	r3, [r3]
80024dc4:	e1a00003 	mov	r0, r3
80024dc8:	ebfff6ec 	bl	80022980 <fileclose>
80024dcc:	e3e03000 	mvn	r3, #0
80024dd0:	e1a00003 	mov	r0, r3
80024dd4:	e24bd004 	sub	sp, fp, #4
80024dd8:	e8bd8800 	pop	{fp, pc}
80024ddc:	80029c14 	.word	0x80029c14

80024de0 <pipeclose>:
80024de0:	e92d4800 	push	{fp, lr}
80024de4:	e28db004 	add	fp, sp, #4
80024de8:	e24dd008 	sub	sp, sp, #8
80024dec:	e50b0008 	str	r0, [fp, #-8]
80024df0:	e50b100c 	str	r1, [fp, #-12]
80024df4:	e51b3008 	ldr	r3, [fp, #-8]
80024df8:	e1a00003 	mov	r0, r3
80024dfc:	eb000566 	bl	8002639c <acquire>
80024e00:	e51b300c 	ldr	r3, [fp, #-12]
80024e04:	e3530000 	cmp	r3, #0
80024e08:	0a000007 	beq	80024e2c <pipeclose+0x4c>
80024e0c:	e51b3008 	ldr	r3, [fp, #-8]
80024e10:	e3a02000 	mov	r2, #0
80024e14:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024e18:	e51b3008 	ldr	r3, [fp, #-8]
80024e1c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024e20:	e1a00003 	mov	r0, r3
80024e24:	eb00049d 	bl	800260a0 <wakeup>
80024e28:	ea000006 	b	80024e48 <pipeclose+0x68>
80024e2c:	e51b3008 	ldr	r3, [fp, #-8]
80024e30:	e3a02000 	mov	r2, #0
80024e34:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024e38:	e51b3008 	ldr	r3, [fp, #-8]
80024e3c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024e40:	e1a00003 	mov	r0, r3
80024e44:	eb000495 	bl	800260a0 <wakeup>
80024e48:	e51b3008 	ldr	r3, [fp, #-8]
80024e4c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024e50:	e3530000 	cmp	r3, #0
80024e54:	1a00000d 	bne	80024e90 <pipeclose+0xb0>
80024e58:	e51b3008 	ldr	r3, [fp, #-8]
80024e5c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024e60:	e3530000 	cmp	r3, #0
80024e64:	1a000009 	bne	80024e90 <pipeclose+0xb0>
80024e68:	e51b3008 	ldr	r3, [fp, #-8]
80024e6c:	e1a00003 	mov	r0, r3
80024e70:	eb000554 	bl	800263c8 <release>
80024e74:	e3a00f91 	mov	r0, #580	@ 0x244
80024e78:	ebfff1f3 	bl	8002164c <get_order>
80024e7c:	e1a03000 	mov	r3, r0
80024e80:	e1a01003 	mov	r1, r3
80024e84:	e51b0008 	ldr	r0, [fp, #-8]
80024e88:	ebfff1bc 	bl	80021580 <kfree>
80024e8c:	ea000003 	b	80024ea0 <pipeclose+0xc0>
80024e90:	e51b3008 	ldr	r3, [fp, #-8]
80024e94:	e1a00003 	mov	r0, r3
80024e98:	eb00054a 	bl	800263c8 <release>
80024e9c:	e1a00000 	nop			@ (mov r0, r0)
80024ea0:	e1a00000 	nop			@ (mov r0, r0)
80024ea4:	e24bd004 	sub	sp, fp, #4
80024ea8:	e8bd8800 	pop	{fp, pc}

80024eac <pipewrite>:
80024eac:	e92d4800 	push	{fp, lr}
80024eb0:	e28db004 	add	fp, sp, #4
80024eb4:	e24dd018 	sub	sp, sp, #24
80024eb8:	e50b0010 	str	r0, [fp, #-16]
80024ebc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024ec0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024ec4:	e51b3010 	ldr	r3, [fp, #-16]
80024ec8:	e1a00003 	mov	r0, r3
80024ecc:	eb000532 	bl	8002639c <acquire>
80024ed0:	e3a03000 	mov	r3, #0
80024ed4:	e50b3008 	str	r3, [fp, #-8]
80024ed8:	ea00002b 	b	80024f8c <pipewrite+0xe0>
80024edc:	e51b3010 	ldr	r3, [fp, #-16]
80024ee0:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024ee4:	e3530000 	cmp	r3, #0
80024ee8:	1a000004 	bne	80024f00 <pipewrite+0x54>
80024eec:	e51b3010 	ldr	r3, [fp, #-16]
80024ef0:	e1a00003 	mov	r0, r3
80024ef4:	eb000533 	bl	800263c8 <release>
80024ef8:	e3e03000 	mvn	r3, #0
80024efc:	ea00002e 	b	80024fbc <pipewrite+0x110>
80024f00:	e51b3010 	ldr	r3, [fp, #-16]
80024f04:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024f08:	e1a00003 	mov	r0, r3
80024f0c:	eb000463 	bl	800260a0 <wakeup>
80024f10:	e51b3010 	ldr	r3, [fp, #-16]
80024f14:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024f18:	e51b2010 	ldr	r2, [fp, #-16]
80024f1c:	e1a01002 	mov	r1, r2
80024f20:	e1a00003 	mov	r0, r3
80024f24:	eb0003c9 	bl	80025e50 <sleep>
80024f28:	e51b3010 	ldr	r3, [fp, #-16]
80024f2c:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024f30:	e51b3010 	ldr	r3, [fp, #-16]
80024f34:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024f38:	e2833c02 	add	r3, r3, #512	@ 0x200
80024f3c:	e1520003 	cmp	r2, r3
80024f40:	0affffe5 	beq	80024edc <pipewrite+0x30>
80024f44:	e51b3008 	ldr	r3, [fp, #-8]
80024f48:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024f4c:	e0822003 	add	r2, r2, r3
80024f50:	e51b3010 	ldr	r3, [fp, #-16]
80024f54:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024f58:	e2830001 	add	r0, r3, #1
80024f5c:	e51b1010 	ldr	r1, [fp, #-16]
80024f60:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024f64:	e1a03b83 	lsl	r3, r3, #23
80024f68:	e1a03ba3 	lsr	r3, r3, #23
80024f6c:	e5d21000 	ldrb	r1, [r2]
80024f70:	e51b2010 	ldr	r2, [fp, #-16]
80024f74:	e0823003 	add	r3, r2, r3
80024f78:	e1a02001 	mov	r2, r1
80024f7c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024f80:	e51b3008 	ldr	r3, [fp, #-8]
80024f84:	e2833001 	add	r3, r3, #1
80024f88:	e50b3008 	str	r3, [fp, #-8]
80024f8c:	e51b2008 	ldr	r2, [fp, #-8]
80024f90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024f94:	e1520003 	cmp	r2, r3
80024f98:	baffffe2 	blt	80024f28 <pipewrite+0x7c>
80024f9c:	e51b3010 	ldr	r3, [fp, #-16]
80024fa0:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024fa4:	e1a00003 	mov	r0, r3
80024fa8:	eb00043c 	bl	800260a0 <wakeup>
80024fac:	e51b3010 	ldr	r3, [fp, #-16]
80024fb0:	e1a00003 	mov	r0, r3
80024fb4:	eb000503 	bl	800263c8 <release>
80024fb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024fbc:	e1a00003 	mov	r0, r3
80024fc0:	e24bd004 	sub	sp, fp, #4
80024fc4:	e8bd8800 	pop	{fp, pc}

80024fc8 <piperead>:
80024fc8:	e92d4800 	push	{fp, lr}
80024fcc:	e28db004 	add	fp, sp, #4
80024fd0:	e24dd018 	sub	sp, sp, #24
80024fd4:	e50b0010 	str	r0, [fp, #-16]
80024fd8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024fdc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024fe0:	e51b3010 	ldr	r3, [fp, #-16]
80024fe4:	e1a00003 	mov	r0, r3
80024fe8:	eb0004eb 	bl	8002639c <acquire>
80024fec:	ea00000f 	b	80025030 <piperead+0x68>
80024ff0:	e59f310c 	ldr	r3, [pc, #268]	@ 80025104 <piperead+0x13c>
80024ff4:	e5933000 	ldr	r3, [r3]
80024ff8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024ffc:	e3530000 	cmp	r3, #0
80025000:	0a000004 	beq	80025018 <piperead+0x50>
80025004:	e51b3010 	ldr	r3, [fp, #-16]
80025008:	e1a00003 	mov	r0, r3
8002500c:	eb0004ed 	bl	800263c8 <release>
80025010:	e3e03000 	mvn	r3, #0
80025014:	ea000037 	b	800250f8 <piperead+0x130>
80025018:	e51b3010 	ldr	r3, [fp, #-16]
8002501c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80025020:	e51b2010 	ldr	r2, [fp, #-16]
80025024:	e1a01002 	mov	r1, r2
80025028:	e1a00003 	mov	r0, r3
8002502c:	eb000387 	bl	80025e50 <sleep>
80025030:	e51b3010 	ldr	r3, [fp, #-16]
80025034:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80025038:	e51b3010 	ldr	r3, [fp, #-16]
8002503c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025040:	e1520003 	cmp	r2, r3
80025044:	1a000003 	bne	80025058 <piperead+0x90>
80025048:	e51b3010 	ldr	r3, [fp, #-16]
8002504c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80025050:	e3530000 	cmp	r3, #0
80025054:	1affffe5 	bne	80024ff0 <piperead+0x28>
80025058:	e3a03000 	mov	r3, #0
8002505c:	e50b3008 	str	r3, [fp, #-8]
80025060:	ea000016 	b	800250c0 <piperead+0xf8>
80025064:	e51b3010 	ldr	r3, [fp, #-16]
80025068:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
8002506c:	e51b3010 	ldr	r3, [fp, #-16]
80025070:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025074:	e1520003 	cmp	r2, r3
80025078:	0a000015 	beq	800250d4 <piperead+0x10c>
8002507c:	e51b3010 	ldr	r3, [fp, #-16]
80025080:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80025084:	e2831001 	add	r1, r3, #1
80025088:	e51b2010 	ldr	r2, [fp, #-16]
8002508c:	e5821234 	str	r1, [r2, #564]	@ 0x234
80025090:	e1a03b83 	lsl	r3, r3, #23
80025094:	e1a03ba3 	lsr	r3, r3, #23
80025098:	e51b2008 	ldr	r2, [fp, #-8]
8002509c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800250a0:	e0812002 	add	r2, r1, r2
800250a4:	e51b1010 	ldr	r1, [fp, #-16]
800250a8:	e0813003 	add	r3, r1, r3
800250ac:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
800250b0:	e5c23000 	strb	r3, [r2]
800250b4:	e51b3008 	ldr	r3, [fp, #-8]
800250b8:	e2833001 	add	r3, r3, #1
800250bc:	e50b3008 	str	r3, [fp, #-8]
800250c0:	e51b2008 	ldr	r2, [fp, #-8]
800250c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800250c8:	e1520003 	cmp	r2, r3
800250cc:	baffffe4 	blt	80025064 <piperead+0x9c>
800250d0:	ea000000 	b	800250d8 <piperead+0x110>
800250d4:	e1a00000 	nop			@ (mov r0, r0)
800250d8:	e51b3010 	ldr	r3, [fp, #-16]
800250dc:	e2833f8e 	add	r3, r3, #568	@ 0x238
800250e0:	e1a00003 	mov	r0, r3
800250e4:	eb0003ed 	bl	800260a0 <wakeup>
800250e8:	e51b3010 	ldr	r3, [fp, #-16]
800250ec:	e1a00003 	mov	r0, r3
800250f0:	eb0004b4 	bl	800263c8 <release>
800250f4:	e51b3008 	ldr	r3, [fp, #-8]
800250f8:	e1a00003 	mov	r0, r3
800250fc:	e24bd004 	sub	sp, fp, #4
80025100:	e8bd8800 	pop	{fp, pc}
80025104:	800b0db0 	.word	0x800b0db0

80025108 <rand>:
80025108:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002510c:	e28db000 	add	fp, sp, #0
80025110:	e59f3034 	ldr	r3, [pc, #52]	@ 8002514c <rand+0x44>
80025114:	e5933000 	ldr	r3, [r3]
80025118:	e59f2030 	ldr	r2, [pc, #48]	@ 80025150 <rand+0x48>
8002511c:	e0030392 	mul	r3, r2, r3
80025120:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80025124:	e2833039 	add	r3, r3, #57	@ 0x39
80025128:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
8002512c:	e59f2018 	ldr	r2, [pc, #24]	@ 8002514c <rand+0x44>
80025130:	e5823000 	str	r3, [r2]
80025134:	e59f3010 	ldr	r3, [pc, #16]	@ 8002514c <rand+0x44>
80025138:	e5933000 	ldr	r3, [r3]
8002513c:	e1a00003 	mov	r0, r3
80025140:	e28bd000 	add	sp, fp, #0
80025144:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025148:	e12fff1e 	bx	lr
8002514c:	800ae674 	.word	0x800ae674
80025150:	41c64e6d 	.word	0x41c64e6d

80025154 <pinit>:
80025154:	e92d4800 	push	{fp, lr}
80025158:	e28db004 	add	fp, sp, #4
8002515c:	e59f100c 	ldr	r1, [pc, #12]	@ 80025170 <pinit+0x1c>
80025160:	e59f000c 	ldr	r0, [pc, #12]	@ 80025174 <pinit+0x20>
80025164:	eb00047a 	bl	80026354 <initlock>
80025168:	e1a00000 	nop			@ (mov r0, r0)
8002516c:	e8bd8800 	pop	{fp, pc}
80025170:	80029c1c 	.word	0x80029c1c
80025174:	800ae678 	.word	0x800ae678

80025178 <allocproc>:
80025178:	e92d4800 	push	{fp, lr}
8002517c:	e28db004 	add	fp, sp, #4
80025180:	e24dd008 	sub	sp, sp, #8
80025184:	e59f01b8 	ldr	r0, [pc, #440]	@ 80025344 <allocproc+0x1cc>
80025188:	eb000483 	bl	8002639c <acquire>
8002518c:	e59f31b4 	ldr	r3, [pc, #436]	@ 80025348 <allocproc+0x1d0>
80025190:	e50b3008 	str	r3, [fp, #-8]
80025194:	ea000006 	b	800251b4 <allocproc+0x3c>
80025198:	e51b3008 	ldr	r3, [fp, #-8]
8002519c:	e5d3300c 	ldrb	r3, [r3, #12]
800251a0:	e3530000 	cmp	r3, #0
800251a4:	0a00000a 	beq	800251d4 <allocproc+0x5c>
800251a8:	e51b3008 	ldr	r3, [fp, #-8]
800251ac:	e283309c 	add	r3, r3, #156	@ 0x9c
800251b0:	e50b3008 	str	r3, [fp, #-8]
800251b4:	e51b3008 	ldr	r3, [fp, #-8]
800251b8:	e59f218c 	ldr	r2, [pc, #396]	@ 8002534c <allocproc+0x1d4>
800251bc:	e1530002 	cmp	r3, r2
800251c0:	3afffff4 	bcc	80025198 <allocproc+0x20>
800251c4:	e59f0178 	ldr	r0, [pc, #376]	@ 80025344 <allocproc+0x1cc>
800251c8:	eb00047e 	bl	800263c8 <release>
800251cc:	e3a03000 	mov	r3, #0
800251d0:	ea000058 	b	80025338 <allocproc+0x1c0>
800251d4:	e1a00000 	nop			@ (mov r0, r0)
800251d8:	e51b3008 	ldr	r3, [fp, #-8]
800251dc:	e3a02001 	mov	r2, #1
800251e0:	e5c3200c 	strb	r2, [r3, #12]
800251e4:	e59f3164 	ldr	r3, [pc, #356]	@ 80025350 <allocproc+0x1d8>
800251e8:	e5933000 	ldr	r3, [r3]
800251ec:	e2832001 	add	r2, r3, #1
800251f0:	e59f1158 	ldr	r1, [pc, #344]	@ 80025350 <allocproc+0x1d8>
800251f4:	e5812000 	str	r2, [r1]
800251f8:	e51b2008 	ldr	r2, [fp, #-8]
800251fc:	e5823010 	str	r3, [r2, #16]
80025200:	e51b3008 	ldr	r3, [fp, #-8]
80025204:	e3a02000 	mov	r2, #0
80025208:	e583207c 	str	r2, [r3, #124]	@ 0x7c
8002520c:	e51b3008 	ldr	r3, [fp, #-8]
80025210:	e3a02001 	mov	r2, #1
80025214:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025218:	e51b3008 	ldr	r3, [fp, #-8]
8002521c:	e3a02000 	mov	r2, #0
80025220:	e5832094 	str	r2, [r3, #148]	@ 0x94
80025224:	e51b3008 	ldr	r3, [fp, #-8]
80025228:	e3a02000 	mov	r2, #0
8002522c:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025230:	e51b3008 	ldr	r3, [fp, #-8]
80025234:	e3a02000 	mov	r2, #0
80025238:	e583208c 	str	r2, [r3, #140]	@ 0x8c
8002523c:	e51b3008 	ldr	r3, [fp, #-8]
80025240:	e3a02000 	mov	r2, #0
80025244:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025248:	e51b3008 	ldr	r3, [fp, #-8]
8002524c:	e3a02000 	mov	r2, #0
80025250:	e5832090 	str	r2, [r3, #144]	@ 0x90
80025254:	e59f00e8 	ldr	r0, [pc, #232]	@ 80025344 <allocproc+0x1cc>
80025258:	eb00045a 	bl	800263c8 <release>
8002525c:	ebfff0f3 	bl	80021630 <alloc_page>
80025260:	e1a02000 	mov	r2, r0
80025264:	e51b3008 	ldr	r3, [fp, #-8]
80025268:	e5832008 	str	r2, [r3, #8]
8002526c:	e51b3008 	ldr	r3, [fp, #-8]
80025270:	e5933008 	ldr	r3, [r3, #8]
80025274:	e3530000 	cmp	r3, #0
80025278:	1a000004 	bne	80025290 <allocproc+0x118>
8002527c:	e51b3008 	ldr	r3, [fp, #-8]
80025280:	e3a02000 	mov	r2, #0
80025284:	e5c3200c 	strb	r2, [r3, #12]
80025288:	e3a03000 	mov	r3, #0
8002528c:	ea000029 	b	80025338 <allocproc+0x1c0>
80025290:	e51b3008 	ldr	r3, [fp, #-8]
80025294:	e5933008 	ldr	r3, [r3, #8]
80025298:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002529c:	e50b300c 	str	r3, [fp, #-12]
800252a0:	e51b300c 	ldr	r3, [fp, #-12]
800252a4:	e2433048 	sub	r3, r3, #72	@ 0x48
800252a8:	e50b300c 	str	r3, [fp, #-12]
800252ac:	e51b3008 	ldr	r3, [fp, #-8]
800252b0:	e51b200c 	ldr	r2, [fp, #-12]
800252b4:	e5832018 	str	r2, [r3, #24]
800252b8:	e51b300c 	ldr	r3, [fp, #-12]
800252bc:	e2433004 	sub	r3, r3, #4
800252c0:	e50b300c 	str	r3, [fp, #-12]
800252c4:	e59f2088 	ldr	r2, [pc, #136]	@ 80025354 <allocproc+0x1dc>
800252c8:	e51b300c 	ldr	r3, [fp, #-12]
800252cc:	e5832000 	str	r2, [r3]
800252d0:	e51b300c 	ldr	r3, [fp, #-12]
800252d4:	e2433004 	sub	r3, r3, #4
800252d8:	e50b300c 	str	r3, [fp, #-12]
800252dc:	e51b3008 	ldr	r3, [fp, #-8]
800252e0:	e5933008 	ldr	r3, [r3, #8]
800252e4:	e2832a01 	add	r2, r3, #4096	@ 0x1000
800252e8:	e51b300c 	ldr	r3, [fp, #-12]
800252ec:	e5832000 	str	r2, [r3]
800252f0:	e51b300c 	ldr	r3, [fp, #-12]
800252f4:	e2433028 	sub	r3, r3, #40	@ 0x28
800252f8:	e50b300c 	str	r3, [fp, #-12]
800252fc:	e51b3008 	ldr	r3, [fp, #-8]
80025300:	e51b200c 	ldr	r2, [fp, #-12]
80025304:	e583201c 	str	r2, [r3, #28]
80025308:	e51b3008 	ldr	r3, [fp, #-8]
8002530c:	e593301c 	ldr	r3, [r3, #28]
80025310:	e3a02028 	mov	r2, #40	@ 0x28
80025314:	e3a01000 	mov	r1, #0
80025318:	e1a00003 	mov	r0, r3
8002531c:	ebffeb37 	bl	80020000 <memset>
80025320:	e59f2030 	ldr	r2, [pc, #48]	@ 80025358 <allocproc+0x1e0>
80025324:	e51b3008 	ldr	r3, [fp, #-8]
80025328:	e593301c 	ldr	r3, [r3, #28]
8002532c:	e2822004 	add	r2, r2, #4
80025330:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025334:	e51b3008 	ldr	r3, [fp, #-8]
80025338:	e1a00003 	mov	r0, r3
8002533c:	e24bd004 	sub	sp, fp, #4
80025340:	e8bd8800 	pop	{fp, pc}
80025344:	800ae678 	.word	0x800ae678
80025348:	800ae6ac 	.word	0x800ae6ac
8002534c:	800b0dac 	.word	0x800b0dac
80025350:	8002b05c 	.word	0x8002b05c
80025354:	80027cb4 	.word	0x80027cb4
80025358:	80025e10 	.word	0x80025e10

8002535c <error_init>:
8002535c:	e92d4800 	push	{fp, lr}
80025360:	e28db004 	add	fp, sp, #4
80025364:	e59f0000 	ldr	r0, [pc]	@ 8002536c <error_init+0x10>
80025368:	ebfff1e1 	bl	80021af4 <panic>
8002536c:	80029c24 	.word	0x80029c24

80025370 <userinit>:
80025370:	e92d4810 	push	{r4, fp, lr}
80025374:	e28db008 	add	fp, sp, #8
80025378:	e24dd00c 	sub	sp, sp, #12
8002537c:	ebffff7d 	bl	80025178 <allocproc>
80025380:	e50b0010 	str	r0, [fp, #-16]
80025384:	e59f210c 	ldr	r2, [pc, #268]	@ 80025498 <userinit+0x128>
80025388:	e51b3010 	ldr	r3, [fp, #-16]
8002538c:	e5823000 	str	r3, [r2]
80025390:	eb000c6c 	bl	80028548 <kpt_alloc>
80025394:	e1a02000 	mov	r2, r0
80025398:	e51b3010 	ldr	r3, [fp, #-16]
8002539c:	e5832004 	str	r2, [r3, #4]
800253a0:	e51b3010 	ldr	r3, [fp, #-16]
800253a4:	e5933004 	ldr	r3, [r3, #4]
800253a8:	e3530000 	cmp	r3, #0
800253ac:	1a000001 	bne	800253b8 <userinit+0x48>
800253b0:	e59f00e4 	ldr	r0, [pc, #228]	@ 8002549c <userinit+0x12c>
800253b4:	ebfff1ce 	bl	80021af4 <panic>
800253b8:	e51b3010 	ldr	r3, [fp, #-16]
800253bc:	e5933004 	ldr	r3, [r3, #4]
800253c0:	e59f20d8 	ldr	r2, [pc, #216]	@ 800254a0 <userinit+0x130>
800253c4:	e59f10d8 	ldr	r1, [pc, #216]	@ 800254a4 <userinit+0x134>
800253c8:	e1a00003 	mov	r0, r3
800253cc:	eb000d1b 	bl	80028840 <inituvm>
800253d0:	e51b3010 	ldr	r3, [fp, #-16]
800253d4:	e3a02a01 	mov	r2, #4096	@ 0x1000
800253d8:	e5832000 	str	r2, [r3]
800253dc:	e51b3010 	ldr	r3, [fp, #-16]
800253e0:	e5933018 	ldr	r3, [r3, #24]
800253e4:	e3a02048 	mov	r2, #72	@ 0x48
800253e8:	e3a01000 	mov	r1, #0
800253ec:	e1a00003 	mov	r0, r3
800253f0:	ebffeb02 	bl	80020000 <memset>
800253f4:	e51b3010 	ldr	r3, [fp, #-16]
800253f8:	e5933018 	ldr	r3, [r3, #24]
800253fc:	e59f20a4 	ldr	r2, [pc, #164]	@ 800254a8 <userinit+0x138>
80025400:	e5832008 	str	r2, [r3, #8]
80025404:	e51b3010 	ldr	r3, [fp, #-16]
80025408:	e5934018 	ldr	r4, [r3, #24]
8002540c:	ebffec67 	bl	800205b0 <spsr_usr>
80025410:	e1a03000 	mov	r3, r0
80025414:	e584300c 	str	r3, [r4, #12]
80025418:	e51b3010 	ldr	r3, [fp, #-16]
8002541c:	e5933018 	ldr	r3, [r3, #24]
80025420:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025424:	e5832000 	str	r2, [r3]
80025428:	e51b3010 	ldr	r3, [fp, #-16]
8002542c:	e5933018 	ldr	r3, [r3, #24]
80025430:	e3a02000 	mov	r2, #0
80025434:	e5832004 	str	r2, [r3, #4]
80025438:	e51b3010 	ldr	r3, [fp, #-16]
8002543c:	e5933018 	ldr	r3, [r3, #24]
80025440:	e3a02000 	mov	r2, #0
80025444:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025448:	e51b3010 	ldr	r3, [fp, #-16]
8002544c:	e283306c 	add	r3, r3, #108	@ 0x6c
80025450:	e3a02010 	mov	r2, #16
80025454:	e59f1050 	ldr	r1, [pc, #80]	@ 800254ac <userinit+0x13c>
80025458:	e1a00003 	mov	r0, r3
8002545c:	ebffebfb 	bl	80020450 <safestrcpy>
80025460:	e59f0048 	ldr	r0, [pc, #72]	@ 800254b0 <userinit+0x140>
80025464:	ebfffbe3 	bl	800243f8 <namei>
80025468:	e1a02000 	mov	r2, r0
8002546c:	e51b3010 	ldr	r3, [fp, #-16]
80025470:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025474:	e51b3010 	ldr	r3, [fp, #-16]
80025478:	e3a02001 	mov	r2, #1
8002547c:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025480:	e51b3010 	ldr	r3, [fp, #-16]
80025484:	e3a02003 	mov	r2, #3
80025488:	e5c3200c 	strb	r2, [r3, #12]
8002548c:	e1a00000 	nop			@ (mov r0, r0)
80025490:	e24bd008 	sub	sp, fp, #8
80025494:	e8bd8810 	pop	{r4, fp, pc}
80025498:	800b0dac 	.word	0x800b0dac
8002549c:	80029c44 	.word	0x80029c44
800254a0:	00000034 	.word	0x00000034
800254a4:	8002b0fc 	.word	0x8002b0fc
800254a8:	8002535c 	.word	0x8002535c
800254ac:	80029c60 	.word	0x80029c60
800254b0:	80029c6c 	.word	0x80029c6c

800254b4 <growproc>:
800254b4:	e92d4800 	push	{fp, lr}
800254b8:	e28db004 	add	fp, sp, #4
800254bc:	e24dd010 	sub	sp, sp, #16
800254c0:	e50b0010 	str	r0, [fp, #-16]
800254c4:	e59f30d0 	ldr	r3, [pc, #208]	@ 8002559c <growproc+0xe8>
800254c8:	e5933000 	ldr	r3, [r3]
800254cc:	e5933000 	ldr	r3, [r3]
800254d0:	e50b3008 	str	r3, [fp, #-8]
800254d4:	e51b3010 	ldr	r3, [fp, #-16]
800254d8:	e3530000 	cmp	r3, #0
800254dc:	da00000f 	ble	80025520 <growproc+0x6c>
800254e0:	e59f30b4 	ldr	r3, [pc, #180]	@ 8002559c <growproc+0xe8>
800254e4:	e5933000 	ldr	r3, [r3]
800254e8:	e5930004 	ldr	r0, [r3, #4]
800254ec:	e51b2010 	ldr	r2, [fp, #-16]
800254f0:	e51b3008 	ldr	r3, [fp, #-8]
800254f4:	e0823003 	add	r3, r2, r3
800254f8:	e1a02003 	mov	r2, r3
800254fc:	e51b1008 	ldr	r1, [fp, #-8]
80025500:	eb000d3c 	bl	800289f8 <allocuvm>
80025504:	e1a03000 	mov	r3, r0
80025508:	e50b3008 	str	r3, [fp, #-8]
8002550c:	e51b3008 	ldr	r3, [fp, #-8]
80025510:	e3530000 	cmp	r3, #0
80025514:	1a000014 	bne	8002556c <growproc+0xb8>
80025518:	e3e03000 	mvn	r3, #0
8002551c:	ea00001b 	b	80025590 <growproc+0xdc>
80025520:	e51b3010 	ldr	r3, [fp, #-16]
80025524:	e3530000 	cmp	r3, #0
80025528:	aa00000f 	bge	8002556c <growproc+0xb8>
8002552c:	e59f3068 	ldr	r3, [pc, #104]	@ 8002559c <growproc+0xe8>
80025530:	e5933000 	ldr	r3, [r3]
80025534:	e5930004 	ldr	r0, [r3, #4]
80025538:	e51b2010 	ldr	r2, [fp, #-16]
8002553c:	e51b3008 	ldr	r3, [fp, #-8]
80025540:	e0823003 	add	r3, r2, r3
80025544:	e1a02003 	mov	r2, r3
80025548:	e51b1008 	ldr	r1, [fp, #-8]
8002554c:	eb000d68 	bl	80028af4 <deallocuvm>
80025550:	e1a03000 	mov	r3, r0
80025554:	e50b3008 	str	r3, [fp, #-8]
80025558:	e51b3008 	ldr	r3, [fp, #-8]
8002555c:	e3530000 	cmp	r3, #0
80025560:	1a000001 	bne	8002556c <growproc+0xb8>
80025564:	e3e03000 	mvn	r3, #0
80025568:	ea000008 	b	80025590 <growproc+0xdc>
8002556c:	e59f3028 	ldr	r3, [pc, #40]	@ 8002559c <growproc+0xe8>
80025570:	e5933000 	ldr	r3, [r3]
80025574:	e51b2008 	ldr	r2, [fp, #-8]
80025578:	e5832000 	str	r2, [r3]
8002557c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002559c <growproc+0xe8>
80025580:	e5933000 	ldr	r3, [r3]
80025584:	e1a00003 	mov	r0, r3
80025588:	eb000c95 	bl	800287e4 <switchuvm>
8002558c:	e3a03000 	mov	r3, #0
80025590:	e1a00003 	mov	r0, r3
80025594:	e24bd004 	sub	sp, fp, #4
80025598:	e8bd8800 	pop	{fp, pc}
8002559c:	800b0db0 	.word	0x800b0db0

800255a0 <fork>:
800255a0:	e92d4800 	push	{fp, lr}
800255a4:	e28db004 	add	fp, sp, #4
800255a8:	e24dd010 	sub	sp, sp, #16
800255ac:	ebfffef1 	bl	80025178 <allocproc>
800255b0:	e50b000c 	str	r0, [fp, #-12]
800255b4:	e51b300c 	ldr	r3, [fp, #-12]
800255b8:	e3530000 	cmp	r3, #0
800255bc:	1a000001 	bne	800255c8 <fork+0x28>
800255c0:	e3e03000 	mvn	r3, #0
800255c4:	ea000076 	b	800257a4 <fork+0x204>
800255c8:	e59f31e0 	ldr	r3, [pc, #480]	@ 800257b0 <fork+0x210>
800255cc:	e5933000 	ldr	r3, [r3]
800255d0:	e5932004 	ldr	r2, [r3, #4]
800255d4:	e59f31d4 	ldr	r3, [pc, #468]	@ 800257b0 <fork+0x210>
800255d8:	e5933000 	ldr	r3, [r3]
800255dc:	e5933000 	ldr	r3, [r3]
800255e0:	e1a01003 	mov	r1, r3
800255e4:	e1a00002 	mov	r0, r2
800255e8:	eb000dd0 	bl	80028d30 <copyuvm>
800255ec:	e1a02000 	mov	r2, r0
800255f0:	e51b300c 	ldr	r3, [fp, #-12]
800255f4:	e5832004 	str	r2, [r3, #4]
800255f8:	e51b300c 	ldr	r3, [fp, #-12]
800255fc:	e5933004 	ldr	r3, [r3, #4]
80025600:	e3530000 	cmp	r3, #0
80025604:	1a00000b 	bne	80025638 <fork+0x98>
80025608:	e51b300c 	ldr	r3, [fp, #-12]
8002560c:	e5933008 	ldr	r3, [r3, #8]
80025610:	e1a00003 	mov	r0, r3
80025614:	ebffeffb 	bl	80021608 <free_page>
80025618:	e51b300c 	ldr	r3, [fp, #-12]
8002561c:	e3a02000 	mov	r2, #0
80025620:	e5832008 	str	r2, [r3, #8]
80025624:	e51b300c 	ldr	r3, [fp, #-12]
80025628:	e3a02000 	mov	r2, #0
8002562c:	e5c3200c 	strb	r2, [r3, #12]
80025630:	e3e03000 	mvn	r3, #0
80025634:	ea00005a 	b	800257a4 <fork+0x204>
80025638:	e59f3170 	ldr	r3, [pc, #368]	@ 800257b0 <fork+0x210>
8002563c:	e5933000 	ldr	r3, [r3]
80025640:	e5932000 	ldr	r2, [r3]
80025644:	e51b300c 	ldr	r3, [fp, #-12]
80025648:	e5832000 	str	r2, [r3]
8002564c:	e59f315c 	ldr	r3, [pc, #348]	@ 800257b0 <fork+0x210>
80025650:	e5932000 	ldr	r2, [r3]
80025654:	e51b300c 	ldr	r3, [fp, #-12]
80025658:	e5832014 	str	r2, [r3, #20]
8002565c:	e59f314c 	ldr	r3, [pc, #332]	@ 800257b0 <fork+0x210>
80025660:	e5933000 	ldr	r3, [r3]
80025664:	e5932018 	ldr	r2, [r3, #24]
80025668:	e51b300c 	ldr	r3, [fp, #-12]
8002566c:	e5933018 	ldr	r3, [r3, #24]
80025670:	e1a00003 	mov	r0, r3
80025674:	e1a01002 	mov	r1, r2
80025678:	e3a03048 	mov	r3, #72	@ 0x48
8002567c:	e1a02003 	mov	r2, r3
80025680:	ebffeb0f 	bl	800202c4 <memcpy>
80025684:	e51b300c 	ldr	r3, [fp, #-12]
80025688:	e5933018 	ldr	r3, [r3, #24]
8002568c:	e3a02000 	mov	r2, #0
80025690:	e5832010 	str	r2, [r3, #16]
80025694:	e59f3114 	ldr	r3, [pc, #276]	@ 800257b0 <fork+0x210>
80025698:	e5933000 	ldr	r3, [r3]
8002569c:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
800256a0:	e51b300c 	ldr	r3, [fp, #-12]
800256a4:	e5832080 	str	r2, [r3, #128]	@ 0x80
800256a8:	e51b300c 	ldr	r3, [fp, #-12]
800256ac:	e3a02000 	mov	r2, #0
800256b0:	e5832094 	str	r2, [r3, #148]	@ 0x94
800256b4:	e51b300c 	ldr	r3, [fp, #-12]
800256b8:	e3a02000 	mov	r2, #0
800256bc:	e5832084 	str	r2, [r3, #132]	@ 0x84
800256c0:	e51b300c 	ldr	r3, [fp, #-12]
800256c4:	e3a02000 	mov	r2, #0
800256c8:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800256cc:	e51b300c 	ldr	r3, [fp, #-12]
800256d0:	e3a02000 	mov	r2, #0
800256d4:	e5832088 	str	r2, [r3, #136]	@ 0x88
800256d8:	e3a03000 	mov	r3, #0
800256dc:	e50b3008 	str	r3, [fp, #-8]
800256e0:	ea000015 	b	8002573c <fork+0x19c>
800256e4:	e59f30c4 	ldr	r3, [pc, #196]	@ 800257b0 <fork+0x210>
800256e8:	e5933000 	ldr	r3, [r3]
800256ec:	e51b2008 	ldr	r2, [fp, #-8]
800256f0:	e282200a 	add	r2, r2, #10
800256f4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800256f8:	e3530000 	cmp	r3, #0
800256fc:	0a00000b 	beq	80025730 <fork+0x190>
80025700:	e59f30a8 	ldr	r3, [pc, #168]	@ 800257b0 <fork+0x210>
80025704:	e5933000 	ldr	r3, [r3]
80025708:	e51b2008 	ldr	r2, [fp, #-8]
8002570c:	e282200a 	add	r2, r2, #10
80025710:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025714:	e1a00003 	mov	r0, r3
80025718:	ebfff47f 	bl	8002291c <filedup>
8002571c:	e1a01000 	mov	r1, r0
80025720:	e51b300c 	ldr	r3, [fp, #-12]
80025724:	e51b2008 	ldr	r2, [fp, #-8]
80025728:	e282200a 	add	r2, r2, #10
8002572c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025730:	e51b3008 	ldr	r3, [fp, #-8]
80025734:	e2833001 	add	r3, r3, #1
80025738:	e50b3008 	str	r3, [fp, #-8]
8002573c:	e51b3008 	ldr	r3, [fp, #-8]
80025740:	e353000f 	cmp	r3, #15
80025744:	daffffe6 	ble	800256e4 <fork+0x144>
80025748:	e59f3060 	ldr	r3, [pc, #96]	@ 800257b0 <fork+0x210>
8002574c:	e5933000 	ldr	r3, [r3]
80025750:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025754:	e1a00003 	mov	r0, r3
80025758:	ebfff741 	bl	80023464 <idup>
8002575c:	e1a02000 	mov	r2, r0
80025760:	e51b300c 	ldr	r3, [fp, #-12]
80025764:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025768:	e51b300c 	ldr	r3, [fp, #-12]
8002576c:	e5933010 	ldr	r3, [r3, #16]
80025770:	e50b3010 	str	r3, [fp, #-16]
80025774:	e51b300c 	ldr	r3, [fp, #-12]
80025778:	e3a02003 	mov	r2, #3
8002577c:	e5c3200c 	strb	r2, [r3, #12]
80025780:	e51b300c 	ldr	r3, [fp, #-12]
80025784:	e283006c 	add	r0, r3, #108	@ 0x6c
80025788:	e59f3020 	ldr	r3, [pc, #32]	@ 800257b0 <fork+0x210>
8002578c:	e5933000 	ldr	r3, [r3]
80025790:	e283306c 	add	r3, r3, #108	@ 0x6c
80025794:	e3a02010 	mov	r2, #16
80025798:	e1a01003 	mov	r1, r3
8002579c:	ebffeb2b 	bl	80020450 <safestrcpy>
800257a0:	e51b3010 	ldr	r3, [fp, #-16]
800257a4:	e1a00003 	mov	r0, r3
800257a8:	e24bd004 	sub	sp, fp, #4
800257ac:	e8bd8800 	pop	{fp, pc}
800257b0:	800b0db0 	.word	0x800b0db0

800257b4 <exit>:
800257b4:	e92d4800 	push	{fp, lr}
800257b8:	e28db004 	add	fp, sp, #4
800257bc:	e24dd008 	sub	sp, sp, #8
800257c0:	e59f3158 	ldr	r3, [pc, #344]	@ 80025920 <exit+0x16c>
800257c4:	e5932000 	ldr	r2, [r3]
800257c8:	e59f3154 	ldr	r3, [pc, #340]	@ 80025924 <exit+0x170>
800257cc:	e5933000 	ldr	r3, [r3]
800257d0:	e1520003 	cmp	r2, r3
800257d4:	1a000001 	bne	800257e0 <exit+0x2c>
800257d8:	e59f0148 	ldr	r0, [pc, #328]	@ 80025928 <exit+0x174>
800257dc:	ebfff0c4 	bl	80021af4 <panic>
800257e0:	e3a03000 	mov	r3, #0
800257e4:	e50b300c 	str	r3, [fp, #-12]
800257e8:	ea000016 	b	80025848 <exit+0x94>
800257ec:	e59f312c 	ldr	r3, [pc, #300]	@ 80025920 <exit+0x16c>
800257f0:	e5933000 	ldr	r3, [r3]
800257f4:	e51b200c 	ldr	r2, [fp, #-12]
800257f8:	e282200a 	add	r2, r2, #10
800257fc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025800:	e3530000 	cmp	r3, #0
80025804:	0a00000c 	beq	8002583c <exit+0x88>
80025808:	e59f3110 	ldr	r3, [pc, #272]	@ 80025920 <exit+0x16c>
8002580c:	e5933000 	ldr	r3, [r3]
80025810:	e51b200c 	ldr	r2, [fp, #-12]
80025814:	e282200a 	add	r2, r2, #10
80025818:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002581c:	e1a00003 	mov	r0, r3
80025820:	ebfff456 	bl	80022980 <fileclose>
80025824:	e59f30f4 	ldr	r3, [pc, #244]	@ 80025920 <exit+0x16c>
80025828:	e5933000 	ldr	r3, [r3]
8002582c:	e51b200c 	ldr	r2, [fp, #-12]
80025830:	e282200a 	add	r2, r2, #10
80025834:	e3a01000 	mov	r1, #0
80025838:	e7831102 	str	r1, [r3, r2, lsl #2]
8002583c:	e51b300c 	ldr	r3, [fp, #-12]
80025840:	e2833001 	add	r3, r3, #1
80025844:	e50b300c 	str	r3, [fp, #-12]
80025848:	e51b300c 	ldr	r3, [fp, #-12]
8002584c:	e353000f 	cmp	r3, #15
80025850:	daffffe5 	ble	800257ec <exit+0x38>
80025854:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025920 <exit+0x16c>
80025858:	e5933000 	ldr	r3, [r3]
8002585c:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025860:	e1a00003 	mov	r0, r3
80025864:	ebfff796 	bl	800236c4 <iput>
80025868:	e59f30b0 	ldr	r3, [pc, #176]	@ 80025920 <exit+0x16c>
8002586c:	e5933000 	ldr	r3, [r3]
80025870:	e3a02000 	mov	r2, #0
80025874:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025878:	e59f00ac 	ldr	r0, [pc, #172]	@ 8002592c <exit+0x178>
8002587c:	eb0002c6 	bl	8002639c <acquire>
80025880:	e59f3098 	ldr	r3, [pc, #152]	@ 80025920 <exit+0x16c>
80025884:	e5933000 	ldr	r3, [r3]
80025888:	e5933014 	ldr	r3, [r3, #20]
8002588c:	e1a00003 	mov	r0, r3
80025890:	eb0001ac 	bl	80025f48 <wakeup1>
80025894:	e59f3094 	ldr	r3, [pc, #148]	@ 80025930 <exit+0x17c>
80025898:	e50b3008 	str	r3, [fp, #-8]
8002589c:	ea000014 	b	800258f4 <exit+0x140>
800258a0:	e51b3008 	ldr	r3, [fp, #-8]
800258a4:	e5932014 	ldr	r2, [r3, #20]
800258a8:	e59f3070 	ldr	r3, [pc, #112]	@ 80025920 <exit+0x16c>
800258ac:	e5933000 	ldr	r3, [r3]
800258b0:	e1520003 	cmp	r2, r3
800258b4:	1a00000b 	bne	800258e8 <exit+0x134>
800258b8:	e59f3064 	ldr	r3, [pc, #100]	@ 80025924 <exit+0x170>
800258bc:	e5932000 	ldr	r2, [r3]
800258c0:	e51b3008 	ldr	r3, [fp, #-8]
800258c4:	e5832014 	str	r2, [r3, #20]
800258c8:	e51b3008 	ldr	r3, [fp, #-8]
800258cc:	e5d3300c 	ldrb	r3, [r3, #12]
800258d0:	e3530005 	cmp	r3, #5
800258d4:	1a000003 	bne	800258e8 <exit+0x134>
800258d8:	e59f3044 	ldr	r3, [pc, #68]	@ 80025924 <exit+0x170>
800258dc:	e5933000 	ldr	r3, [r3]
800258e0:	e1a00003 	mov	r0, r3
800258e4:	eb000197 	bl	80025f48 <wakeup1>
800258e8:	e51b3008 	ldr	r3, [fp, #-8]
800258ec:	e283309c 	add	r3, r3, #156	@ 0x9c
800258f0:	e50b3008 	str	r3, [fp, #-8]
800258f4:	e51b3008 	ldr	r3, [fp, #-8]
800258f8:	e59f2034 	ldr	r2, [pc, #52]	@ 80025934 <exit+0x180>
800258fc:	e1530002 	cmp	r3, r2
80025900:	3affffe6 	bcc	800258a0 <exit+0xec>
80025904:	e59f3014 	ldr	r3, [pc, #20]	@ 80025920 <exit+0x16c>
80025908:	e5933000 	ldr	r3, [r3]
8002590c:	e3a02005 	mov	r2, #5
80025910:	e5c3200c 	strb	r2, [r3, #12]
80025914:	eb0000f5 	bl	80025cf0 <sched>
80025918:	e59f0018 	ldr	r0, [pc, #24]	@ 80025938 <exit+0x184>
8002591c:	ebfff074 	bl	80021af4 <panic>
80025920:	800b0db0 	.word	0x800b0db0
80025924:	800b0dac 	.word	0x800b0dac
80025928:	80029c70 	.word	0x80029c70
8002592c:	800ae678 	.word	0x800ae678
80025930:	800ae6ac 	.word	0x800ae6ac
80025934:	800b0dac 	.word	0x800b0dac
80025938:	80029c80 	.word	0x80029c80

8002593c <wait>:
8002593c:	e92d4800 	push	{fp, lr}
80025940:	e28db004 	add	fp, sp, #4
80025944:	e24dd010 	sub	sp, sp, #16
80025948:	e59f013c 	ldr	r0, [pc, #316]	@ 80025a8c <wait+0x150>
8002594c:	eb000292 	bl	8002639c <acquire>
80025950:	e3a03000 	mov	r3, #0
80025954:	e50b300c 	str	r3, [fp, #-12]
80025958:	e59f3130 	ldr	r3, [pc, #304]	@ 80025a90 <wait+0x154>
8002595c:	e50b3008 	str	r3, [fp, #-8]
80025960:	ea000030 	b	80025a28 <wait+0xec>
80025964:	e51b3008 	ldr	r3, [fp, #-8]
80025968:	e5932014 	ldr	r2, [r3, #20]
8002596c:	e59f3120 	ldr	r3, [pc, #288]	@ 80025a94 <wait+0x158>
80025970:	e5933000 	ldr	r3, [r3]
80025974:	e1520003 	cmp	r2, r3
80025978:	1a000026 	bne	80025a18 <wait+0xdc>
8002597c:	e3a03001 	mov	r3, #1
80025980:	e50b300c 	str	r3, [fp, #-12]
80025984:	e51b3008 	ldr	r3, [fp, #-8]
80025988:	e5d3300c 	ldrb	r3, [r3, #12]
8002598c:	e3530005 	cmp	r3, #5
80025990:	1a000021 	bne	80025a1c <wait+0xe0>
80025994:	e51b3008 	ldr	r3, [fp, #-8]
80025998:	e5933010 	ldr	r3, [r3, #16]
8002599c:	e50b3010 	str	r3, [fp, #-16]
800259a0:	e51b3008 	ldr	r3, [fp, #-8]
800259a4:	e5933008 	ldr	r3, [r3, #8]
800259a8:	e1a00003 	mov	r0, r3
800259ac:	ebffef15 	bl	80021608 <free_page>
800259b0:	e51b3008 	ldr	r3, [fp, #-8]
800259b4:	e3a02000 	mov	r2, #0
800259b8:	e5832008 	str	r2, [r3, #8]
800259bc:	e51b3008 	ldr	r3, [fp, #-8]
800259c0:	e5933004 	ldr	r3, [r3, #4]
800259c4:	e1a00003 	mov	r0, r3
800259c8:	eb000c8f 	bl	80028c0c <freevm>
800259cc:	e51b3008 	ldr	r3, [fp, #-8]
800259d0:	e3a02000 	mov	r2, #0
800259d4:	e5c3200c 	strb	r2, [r3, #12]
800259d8:	e51b3008 	ldr	r3, [fp, #-8]
800259dc:	e3a02000 	mov	r2, #0
800259e0:	e5832010 	str	r2, [r3, #16]
800259e4:	e51b3008 	ldr	r3, [fp, #-8]
800259e8:	e3a02000 	mov	r2, #0
800259ec:	e5832014 	str	r2, [r3, #20]
800259f0:	e51b3008 	ldr	r3, [fp, #-8]
800259f4:	e3a02000 	mov	r2, #0
800259f8:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
800259fc:	e51b3008 	ldr	r3, [fp, #-8]
80025a00:	e3a02000 	mov	r2, #0
80025a04:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025a08:	e59f007c 	ldr	r0, [pc, #124]	@ 80025a8c <wait+0x150>
80025a0c:	eb00026d 	bl	800263c8 <release>
80025a10:	e51b3010 	ldr	r3, [fp, #-16]
80025a14:	ea000019 	b	80025a80 <wait+0x144>
80025a18:	e1a00000 	nop			@ (mov r0, r0)
80025a1c:	e51b3008 	ldr	r3, [fp, #-8]
80025a20:	e283309c 	add	r3, r3, #156	@ 0x9c
80025a24:	e50b3008 	str	r3, [fp, #-8]
80025a28:	e51b3008 	ldr	r3, [fp, #-8]
80025a2c:	e59f2064 	ldr	r2, [pc, #100]	@ 80025a98 <wait+0x15c>
80025a30:	e1530002 	cmp	r3, r2
80025a34:	3affffca 	bcc	80025964 <wait+0x28>
80025a38:	e51b300c 	ldr	r3, [fp, #-12]
80025a3c:	e3530000 	cmp	r3, #0
80025a40:	0a000004 	beq	80025a58 <wait+0x11c>
80025a44:	e59f3048 	ldr	r3, [pc, #72]	@ 80025a94 <wait+0x158>
80025a48:	e5933000 	ldr	r3, [r3]
80025a4c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025a50:	e3530000 	cmp	r3, #0
80025a54:	0a000003 	beq	80025a68 <wait+0x12c>
80025a58:	e59f002c 	ldr	r0, [pc, #44]	@ 80025a8c <wait+0x150>
80025a5c:	eb000259 	bl	800263c8 <release>
80025a60:	e3e03000 	mvn	r3, #0
80025a64:	ea000005 	b	80025a80 <wait+0x144>
80025a68:	e59f3024 	ldr	r3, [pc, #36]	@ 80025a94 <wait+0x158>
80025a6c:	e5933000 	ldr	r3, [r3]
80025a70:	e59f1014 	ldr	r1, [pc, #20]	@ 80025a8c <wait+0x150>
80025a74:	e1a00003 	mov	r0, r3
80025a78:	eb0000f4 	bl	80025e50 <sleep>
80025a7c:	eaffffb3 	b	80025950 <wait+0x14>
80025a80:	e1a00003 	mov	r0, r3
80025a84:	e24bd004 	sub	sp, fp, #4
80025a88:	e8bd8800 	pop	{fp, pc}
80025a8c:	800ae678 	.word	0x800ae678
80025a90:	800ae6ac 	.word	0x800ae6ac
80025a94:	800b0db0 	.word	0x800b0db0
80025a98:	800b0dac 	.word	0x800b0dac

80025a9c <scheduler>:
80025a9c:	e92d4800 	push	{fp, lr}
80025aa0:	e28db004 	add	fp, sp, #4
80025aa4:	e24ddf8a 	sub	sp, sp, #552	@ 0x228
80025aa8:	ebffeab2 	bl	80020578 <sti>
80025aac:	e59f0228 	ldr	r0, [pc, #552]	@ 80025cdc <scheduler+0x240>
80025ab0:	eb000239 	bl	8002639c <acquire>
80025ab4:	e3a03000 	mov	r3, #0
80025ab8:	e50b300c 	str	r3, [fp, #-12]
80025abc:	e3a03000 	mov	r3, #0
80025ac0:	e50b3010 	str	r3, [fp, #-16]
80025ac4:	e59f3214 	ldr	r3, [pc, #532]	@ 80025ce0 <scheduler+0x244>
80025ac8:	e50b3008 	str	r3, [fp, #-8]
80025acc:	ea000034 	b	80025ba4 <scheduler+0x108>
80025ad0:	e51b3008 	ldr	r3, [fp, #-8]
80025ad4:	e5d3300c 	ldrb	r3, [r3, #12]
80025ad8:	e3530003 	cmp	r3, #3
80025adc:	1a00002c 	bne	80025b94 <scheduler+0xf8>
80025ae0:	e51b3008 	ldr	r3, [fp, #-8]
80025ae4:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80025ae8:	e3530000 	cmp	r3, #0
80025aec:	c3a03001 	movgt	r3, #1
80025af0:	d3a03000 	movle	r3, #0
80025af4:	e6ef3073 	uxtb	r3, r3
80025af8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80025afc:	e51b3008 	ldr	r3, [fp, #-8]
80025b00:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
80025b04:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80025b08:	e3530000 	cmp	r3, #0
80025b0c:	0a000001 	beq	80025b18 <scheduler+0x7c>
80025b10:	e3a03002 	mov	r3, #2
80025b14:	ea000000 	b	80025b1c <scheduler+0x80>
80025b18:	e3a03001 	mov	r3, #1
80025b1c:	e0030392 	mul	r3, r2, r3
80025b20:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80025b24:	e51b3010 	ldr	r3, [fp, #-16]
80025b28:	e1a03103 	lsl	r3, r3, #2
80025b2c:	e2433004 	sub	r3, r3, #4
80025b30:	e083300b 	add	r3, r3, fp
80025b34:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80025b38:	e5032124 	str	r2, [r3, #-292]	@ 0xfffffedc
80025b3c:	e51b3010 	ldr	r3, [fp, #-16]
80025b40:	e1a03103 	lsl	r3, r3, #2
80025b44:	e2433004 	sub	r3, r3, #4
80025b48:	e083300b 	add	r3, r3, fp
80025b4c:	e51b2008 	ldr	r2, [fp, #-8]
80025b50:	e5032224 	str	r2, [r3, #-548]	@ 0xfffffddc
80025b54:	e51b3010 	ldr	r3, [fp, #-16]
80025b58:	e2833001 	add	r3, r3, #1
80025b5c:	e50b3010 	str	r3, [fp, #-16]
80025b60:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80025b64:	e3530000 	cmp	r3, #0
80025b68:	0a000004 	beq	80025b80 <scheduler+0xe4>
80025b6c:	e51b3008 	ldr	r3, [fp, #-8]
80025b70:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80025b74:	e2432001 	sub	r2, r3, #1
80025b78:	e51b3008 	ldr	r3, [fp, #-8]
80025b7c:	e5832094 	str	r2, [r3, #148]	@ 0x94
80025b80:	e51b200c 	ldr	r2, [fp, #-12]
80025b84:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80025b88:	e0823003 	add	r3, r2, r3
80025b8c:	e50b300c 	str	r3, [fp, #-12]
80025b90:	ea000000 	b	80025b98 <scheduler+0xfc>
80025b94:	e1a00000 	nop			@ (mov r0, r0)
80025b98:	e51b3008 	ldr	r3, [fp, #-8]
80025b9c:	e283309c 	add	r3, r3, #156	@ 0x9c
80025ba0:	e50b3008 	str	r3, [fp, #-8]
80025ba4:	e51b3008 	ldr	r3, [fp, #-8]
80025ba8:	e59f2134 	ldr	r2, [pc, #308]	@ 80025ce4 <scheduler+0x248>
80025bac:	e1530002 	cmp	r3, r2
80025bb0:	3affffc6 	bcc	80025ad0 <scheduler+0x34>
80025bb4:	e51b300c 	ldr	r3, [fp, #-12]
80025bb8:	e3530000 	cmp	r3, #0
80025bbc:	da000043 	ble	80025cd0 <scheduler+0x234>
80025bc0:	ebfffd50 	bl	80025108 <rand>
80025bc4:	e1a02000 	mov	r2, r0
80025bc8:	e51b300c 	ldr	r3, [fp, #-12]
80025bcc:	e1a01003 	mov	r1, r3
80025bd0:	e1a00002 	mov	r0, r2
80025bd4:	eb000ed1 	bl	80029720 <__aeabi_uidivmod>
80025bd8:	e1a03001 	mov	r3, r1
80025bdc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80025be0:	e3a03000 	mov	r3, #0
80025be4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025be8:	e3a03000 	mov	r3, #0
80025bec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025bf0:	e3a03000 	mov	r3, #0
80025bf4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025bf8:	ea000015 	b	80025c54 <scheduler+0x1b8>
80025bfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025c00:	e1a03103 	lsl	r3, r3, #2
80025c04:	e2433004 	sub	r3, r3, #4
80025c08:	e083300b 	add	r3, r3, fp
80025c0c:	e5133124 	ldr	r3, [r3, #-292]	@ 0xfffffedc
80025c10:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025c14:	e0823003 	add	r3, r2, r3
80025c18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025c1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80025c20:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025c24:	e1520003 	cmp	r2, r3
80025c28:	da000006 	ble	80025c48 <scheduler+0x1ac>
80025c2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025c30:	e1a03103 	lsl	r3, r3, #2
80025c34:	e2433004 	sub	r3, r3, #4
80025c38:	e083300b 	add	r3, r3, fp
80025c3c:	e5133224 	ldr	r3, [r3, #-548]	@ 0xfffffddc
80025c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025c44:	ea000006 	b	80025c64 <scheduler+0x1c8>
80025c48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025c4c:	e2833001 	add	r3, r3, #1
80025c50:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025c54:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80025c58:	e51b3010 	ldr	r3, [fp, #-16]
80025c5c:	e1520003 	cmp	r2, r3
80025c60:	baffffe5 	blt	80025bfc <scheduler+0x160>
80025c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c68:	e3530000 	cmp	r3, #0
80025c6c:	0a000017 	beq	80025cd0 <scheduler+0x234>
80025c70:	e59f2070 	ldr	r2, [pc, #112]	@ 80025ce8 <scheduler+0x24c>
80025c74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c78:	e5823000 	str	r3, [r2]
80025c7c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80025c80:	eb000ad7 	bl	800287e4 <switchuvm>
80025c84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c88:	e3a02004 	mov	r2, #4
80025c8c:	e5c3200c 	strb	r2, [r3, #12]
80025c90:	e59f3054 	ldr	r3, [pc, #84]	@ 80025cec <scheduler+0x250>
80025c94:	e5933000 	ldr	r3, [r3]
80025c98:	e2832004 	add	r2, r3, #4
80025c9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025ca0:	e593301c 	ldr	r3, [r3, #28]
80025ca4:	e1a01003 	mov	r1, r3
80025ca8:	e1a00002 	mov	r0, r2
80025cac:	eb0001da 	bl	8002641c <swtch>
80025cb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025cb4:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025cb8:	e2832001 	add	r2, r3, #1
80025cbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025cc0:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025cc4:	e59f301c 	ldr	r3, [pc, #28]	@ 80025ce8 <scheduler+0x24c>
80025cc8:	e3a02000 	mov	r2, #0
80025ccc:	e5832000 	str	r2, [r3]
80025cd0:	e59f0004 	ldr	r0, [pc, #4]	@ 80025cdc <scheduler+0x240>
80025cd4:	eb0001bb 	bl	800263c8 <release>
80025cd8:	eaffff72 	b	80025aa8 <scheduler+0xc>
80025cdc:	800ae678 	.word	0x800ae678
80025ce0:	800ae6ac 	.word	0x800ae6ac
80025ce4:	800b0dac 	.word	0x800b0dac
80025ce8:	800b0db0 	.word	0x800b0db0
80025cec:	800ae668 	.word	0x800ae668

80025cf0 <sched>:
80025cf0:	e92d4800 	push	{fp, lr}
80025cf4:	e28db004 	add	fp, sp, #4
80025cf8:	e24dd008 	sub	sp, sp, #8
80025cfc:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025db8 <sched+0xc8>
80025d00:	eb0001bb 	bl	800263f4 <holding>
80025d04:	e1a03000 	mov	r3, r0
80025d08:	e3530000 	cmp	r3, #0
80025d0c:	1a000001 	bne	80025d18 <sched+0x28>
80025d10:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025dbc <sched+0xcc>
80025d14:	ebffef76 	bl	80021af4 <panic>
80025d18:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025dc0 <sched+0xd0>
80025d1c:	e5933000 	ldr	r3, [r3]
80025d20:	e593300c 	ldr	r3, [r3, #12]
80025d24:	e3530001 	cmp	r3, #1
80025d28:	0a000001 	beq	80025d34 <sched+0x44>
80025d2c:	e59f0090 	ldr	r0, [pc, #144]	@ 80025dc4 <sched+0xd4>
80025d30:	ebffef6f 	bl	80021af4 <panic>
80025d34:	e59f308c 	ldr	r3, [pc, #140]	@ 80025dc8 <sched+0xd8>
80025d38:	e5933000 	ldr	r3, [r3]
80025d3c:	e5d3300c 	ldrb	r3, [r3, #12]
80025d40:	e3530004 	cmp	r3, #4
80025d44:	1a000001 	bne	80025d50 <sched+0x60>
80025d48:	e59f007c 	ldr	r0, [pc, #124]	@ 80025dcc <sched+0xdc>
80025d4c:	ebffef68 	bl	80021af4 <panic>
80025d50:	ebffea26 	bl	800205f0 <int_enabled>
80025d54:	e1a03000 	mov	r3, r0
80025d58:	e3530000 	cmp	r3, #0
80025d5c:	0a000001 	beq	80025d68 <sched+0x78>
80025d60:	e59f0068 	ldr	r0, [pc, #104]	@ 80025dd0 <sched+0xe0>
80025d64:	ebffef62 	bl	80021af4 <panic>
80025d68:	e59f3050 	ldr	r3, [pc, #80]	@ 80025dc0 <sched+0xd0>
80025d6c:	e5933000 	ldr	r3, [r3]
80025d70:	e5933010 	ldr	r3, [r3, #16]
80025d74:	e50b3008 	str	r3, [fp, #-8]
80025d78:	e59f3048 	ldr	r3, [pc, #72]	@ 80025dc8 <sched+0xd8>
80025d7c:	e5933000 	ldr	r3, [r3]
80025d80:	e283201c 	add	r2, r3, #28
80025d84:	e59f3034 	ldr	r3, [pc, #52]	@ 80025dc0 <sched+0xd0>
80025d88:	e5933000 	ldr	r3, [r3]
80025d8c:	e5933004 	ldr	r3, [r3, #4]
80025d90:	e1a01003 	mov	r1, r3
80025d94:	e1a00002 	mov	r0, r2
80025d98:	eb00019f 	bl	8002641c <swtch>
80025d9c:	e59f301c 	ldr	r3, [pc, #28]	@ 80025dc0 <sched+0xd0>
80025da0:	e5933000 	ldr	r3, [r3]
80025da4:	e51b2008 	ldr	r2, [fp, #-8]
80025da8:	e5832010 	str	r2, [r3, #16]
80025dac:	e1a00000 	nop			@ (mov r0, r0)
80025db0:	e24bd004 	sub	sp, fp, #4
80025db4:	e8bd8800 	pop	{fp, pc}
80025db8:	800ae678 	.word	0x800ae678
80025dbc:	80029c8c 	.word	0x80029c8c
80025dc0:	800ae668 	.word	0x800ae668
80025dc4:	80029ca0 	.word	0x80029ca0
80025dc8:	800b0db0 	.word	0x800b0db0
80025dcc:	80029cac 	.word	0x80029cac
80025dd0:	80029cbc 	.word	0x80029cbc

80025dd4 <yield>:
80025dd4:	e92d4800 	push	{fp, lr}
80025dd8:	e28db004 	add	fp, sp, #4
80025ddc:	e59f0024 	ldr	r0, [pc, #36]	@ 80025e08 <yield+0x34>
80025de0:	eb00016d 	bl	8002639c <acquire>
80025de4:	e59f3020 	ldr	r3, [pc, #32]	@ 80025e0c <yield+0x38>
80025de8:	e5933000 	ldr	r3, [r3]
80025dec:	e3a02003 	mov	r2, #3
80025df0:	e5c3200c 	strb	r2, [r3, #12]
80025df4:	ebffffbd 	bl	80025cf0 <sched>
80025df8:	e59f0008 	ldr	r0, [pc, #8]	@ 80025e08 <yield+0x34>
80025dfc:	eb000171 	bl	800263c8 <release>
80025e00:	e1a00000 	nop			@ (mov r0, r0)
80025e04:	e8bd8800 	pop	{fp, pc}
80025e08:	800ae678 	.word	0x800ae678
80025e0c:	800b0db0 	.word	0x800b0db0

80025e10 <forkret>:
80025e10:	e92d4800 	push	{fp, lr}
80025e14:	e28db004 	add	fp, sp, #4
80025e18:	e59f0028 	ldr	r0, [pc, #40]	@ 80025e48 <forkret+0x38>
80025e1c:	eb000169 	bl	800263c8 <release>
80025e20:	e59f3024 	ldr	r3, [pc, #36]	@ 80025e4c <forkret+0x3c>
80025e24:	e5933000 	ldr	r3, [r3]
80025e28:	e3530000 	cmp	r3, #0
80025e2c:	0a000003 	beq	80025e40 <forkret+0x30>
80025e30:	e59f3014 	ldr	r3, [pc, #20]	@ 80025e4c <forkret+0x3c>
80025e34:	e3a02000 	mov	r2, #0
80025e38:	e5832000 	str	r2, [r3]
80025e3c:	ebfff987 	bl	80024460 <initlog>
80025e40:	e1a00000 	nop			@ (mov r0, r0)
80025e44:	e8bd8800 	pop	{fp, pc}
80025e48:	800ae678 	.word	0x800ae678
80025e4c:	8002b060 	.word	0x8002b060

80025e50 <sleep>:
80025e50:	e92d4800 	push	{fp, lr}
80025e54:	e28db004 	add	fp, sp, #4
80025e58:	e24dd008 	sub	sp, sp, #8
80025e5c:	e50b0008 	str	r0, [fp, #-8]
80025e60:	e50b100c 	str	r1, [fp, #-12]
80025e64:	e59f30c8 	ldr	r3, [pc, #200]	@ 80025f34 <sleep+0xe4>
80025e68:	e5933000 	ldr	r3, [r3]
80025e6c:	e3530000 	cmp	r3, #0
80025e70:	1a000001 	bne	80025e7c <sleep+0x2c>
80025e74:	e59f00bc 	ldr	r0, [pc, #188]	@ 80025f38 <sleep+0xe8>
80025e78:	ebffef1d 	bl	80021af4 <panic>
80025e7c:	e51b300c 	ldr	r3, [fp, #-12]
80025e80:	e3530000 	cmp	r3, #0
80025e84:	1a000001 	bne	80025e90 <sleep+0x40>
80025e88:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025f3c <sleep+0xec>
80025e8c:	ebffef18 	bl	80021af4 <panic>
80025e90:	e51b300c 	ldr	r3, [fp, #-12]
80025e94:	e59f20a4 	ldr	r2, [pc, #164]	@ 80025f40 <sleep+0xf0>
80025e98:	e1530002 	cmp	r3, r2
80025e9c:	0a000003 	beq	80025eb0 <sleep+0x60>
80025ea0:	e59f0098 	ldr	r0, [pc, #152]	@ 80025f40 <sleep+0xf0>
80025ea4:	eb00013c 	bl	8002639c <acquire>
80025ea8:	e51b000c 	ldr	r0, [fp, #-12]
80025eac:	eb000145 	bl	800263c8 <release>
80025eb0:	e51b3008 	ldr	r3, [fp, #-8]
80025eb4:	e59f2088 	ldr	r2, [pc, #136]	@ 80025f44 <sleep+0xf4>
80025eb8:	e1530002 	cmp	r3, r2
80025ebc:	1a000004 	bne	80025ed4 <sleep+0x84>
80025ec0:	e59f306c 	ldr	r3, [pc, #108]	@ 80025f34 <sleep+0xe4>
80025ec4:	e5933000 	ldr	r3, [r3]
80025ec8:	e59f2074 	ldr	r2, [pc, #116]	@ 80025f44 <sleep+0xf4>
80025ecc:	e5922000 	ldr	r2, [r2]
80025ed0:	e5832098 	str	r2, [r3, #152]	@ 0x98
80025ed4:	e59f3058 	ldr	r3, [pc, #88]	@ 80025f34 <sleep+0xe4>
80025ed8:	e5933000 	ldr	r3, [r3]
80025edc:	e51b2008 	ldr	r2, [fp, #-8]
80025ee0:	e5832020 	str	r2, [r3, #32]
80025ee4:	e59f3048 	ldr	r3, [pc, #72]	@ 80025f34 <sleep+0xe4>
80025ee8:	e5933000 	ldr	r3, [r3]
80025eec:	e3a02002 	mov	r2, #2
80025ef0:	e5c3200c 	strb	r2, [r3, #12]
80025ef4:	ebffff7d 	bl	80025cf0 <sched>
80025ef8:	e59f3034 	ldr	r3, [pc, #52]	@ 80025f34 <sleep+0xe4>
80025efc:	e5933000 	ldr	r3, [r3]
80025f00:	e3a02000 	mov	r2, #0
80025f04:	e5832020 	str	r2, [r3, #32]
80025f08:	e51b300c 	ldr	r3, [fp, #-12]
80025f0c:	e59f202c 	ldr	r2, [pc, #44]	@ 80025f40 <sleep+0xf0>
80025f10:	e1530002 	cmp	r3, r2
80025f14:	0a000003 	beq	80025f28 <sleep+0xd8>
80025f18:	e59f0020 	ldr	r0, [pc, #32]	@ 80025f40 <sleep+0xf0>
80025f1c:	eb000129 	bl	800263c8 <release>
80025f20:	e51b000c 	ldr	r0, [fp, #-12]
80025f24:	eb00011c 	bl	8002639c <acquire>
80025f28:	e1a00000 	nop			@ (mov r0, r0)
80025f2c:	e24bd004 	sub	sp, fp, #4
80025f30:	e8bd8800 	pop	{fp, pc}
80025f34:	800b0db0 	.word	0x800b0db0
80025f38:	80029cd0 	.word	0x80029cd0
80025f3c:	80029cd8 	.word	0x80029cd8
80025f40:	800ae678 	.word	0x800ae678
80025f44:	800b0ea8 	.word	0x800b0ea8

80025f48 <wakeup1>:
80025f48:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025f4c:	e28db000 	add	fp, sp, #0
80025f50:	e24dd014 	sub	sp, sp, #20
80025f54:	e50b0010 	str	r0, [fp, #-16]
80025f58:	e59f3134 	ldr	r3, [pc, #308]	@ 80026094 <wakeup1+0x14c>
80025f5c:	e50b3008 	str	r3, [fp, #-8]
80025f60:	ea000042 	b	80026070 <wakeup1+0x128>
80025f64:	e51b3008 	ldr	r3, [fp, #-8]
80025f68:	e5d3300c 	ldrb	r3, [r3, #12]
80025f6c:	e3530002 	cmp	r3, #2
80025f70:	1a00003b 	bne	80026064 <wakeup1+0x11c>
80025f74:	e51b3008 	ldr	r3, [fp, #-8]
80025f78:	e5933020 	ldr	r3, [r3, #32]
80025f7c:	e51b2010 	ldr	r2, [fp, #-16]
80025f80:	e1520003 	cmp	r2, r3
80025f84:	1a000036 	bne	80026064 <wakeup1+0x11c>
80025f88:	e51b3010 	ldr	r3, [fp, #-16]
80025f8c:	e59f2104 	ldr	r2, [pc, #260]	@ 80026098 <wakeup1+0x150>
80025f90:	e1530002 	cmp	r3, r2
80025f94:	1a000027 	bne	80026038 <wakeup1+0xf0>
80025f98:	e51b3008 	ldr	r3, [fp, #-8]
80025f9c:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80025fa0:	e3530000 	cmp	r3, #0
80025fa4:	0a000005 	beq	80025fc0 <wakeup1+0x78>
80025fa8:	e51b3008 	ldr	r3, [fp, #-8]
80025fac:	e5932090 	ldr	r2, [r3, #144]	@ 0x90
80025fb0:	e59f30e0 	ldr	r3, [pc, #224]	@ 80026098 <wakeup1+0x150>
80025fb4:	e5933000 	ldr	r3, [r3]
80025fb8:	e1520003 	cmp	r2, r3
80025fbc:	8a000027 	bhi	80026060 <wakeup1+0x118>
80025fc0:	e51b3008 	ldr	r3, [fp, #-8]
80025fc4:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
80025fc8:	e3530000 	cmp	r3, #0
80025fcc:	0a000019 	beq	80026038 <wakeup1+0xf0>
80025fd0:	e59f30c0 	ldr	r3, [pc, #192]	@ 80026098 <wakeup1+0x150>
80025fd4:	e5932000 	ldr	r2, [r3]
80025fd8:	e51b3008 	ldr	r3, [fp, #-8]
80025fdc:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
80025fe0:	e0423003 	sub	r3, r2, r3
80025fe4:	e50b300c 	str	r3, [fp, #-12]
80025fe8:	e51b300c 	ldr	r3, [fp, #-12]
80025fec:	e3530000 	cmp	r3, #0
80025ff0:	da00000d 	ble	8002602c <wakeup1+0xe4>
80025ff4:	e51b3008 	ldr	r3, [fp, #-8]
80025ff8:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80025ffc:	e3530000 	cmp	r3, #0
80026000:	da000006 	ble	80026020 <wakeup1+0xd8>
80026004:	e51b3008 	ldr	r3, [fp, #-8]
80026008:	e5932094 	ldr	r2, [r3, #148]	@ 0x94
8002600c:	e51b300c 	ldr	r3, [fp, #-12]
80026010:	e0822003 	add	r2, r2, r3
80026014:	e51b3008 	ldr	r3, [fp, #-8]
80026018:	e5832094 	str	r2, [r3, #148]	@ 0x94
8002601c:	ea000002 	b	8002602c <wakeup1+0xe4>
80026020:	e51b3008 	ldr	r3, [fp, #-8]
80026024:	e51b200c 	ldr	r2, [fp, #-12]
80026028:	e5832094 	str	r2, [r3, #148]	@ 0x94
8002602c:	e51b3008 	ldr	r3, [fp, #-8]
80026030:	e3a02000 	mov	r2, #0
80026034:	e5832098 	str	r2, [r3, #152]	@ 0x98
80026038:	e51b3008 	ldr	r3, [fp, #-8]
8002603c:	e3a02000 	mov	r2, #0
80026040:	e5832090 	str	r2, [r3, #144]	@ 0x90
80026044:	e51b3008 	ldr	r3, [fp, #-8]
80026048:	e3a02000 	mov	r2, #0
8002604c:	e5832020 	str	r2, [r3, #32]
80026050:	e51b3008 	ldr	r3, [fp, #-8]
80026054:	e3a02003 	mov	r2, #3
80026058:	e5c3200c 	strb	r2, [r3, #12]
8002605c:	ea000000 	b	80026064 <wakeup1+0x11c>
80026060:	e1a00000 	nop			@ (mov r0, r0)
80026064:	e51b3008 	ldr	r3, [fp, #-8]
80026068:	e283309c 	add	r3, r3, #156	@ 0x9c
8002606c:	e50b3008 	str	r3, [fp, #-8]
80026070:	e51b3008 	ldr	r3, [fp, #-8]
80026074:	e59f2020 	ldr	r2, [pc, #32]	@ 8002609c <wakeup1+0x154>
80026078:	e1530002 	cmp	r3, r2
8002607c:	3affffb8 	bcc	80025f64 <wakeup1+0x1c>
80026080:	e1a00000 	nop			@ (mov r0, r0)
80026084:	e1a00000 	nop			@ (mov r0, r0)
80026088:	e28bd000 	add	sp, fp, #0
8002608c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026090:	e12fff1e 	bx	lr
80026094:	800ae6ac 	.word	0x800ae6ac
80026098:	800b0ea8 	.word	0x800b0ea8
8002609c:	800b0dac 	.word	0x800b0dac

800260a0 <wakeup>:
800260a0:	e92d4800 	push	{fp, lr}
800260a4:	e28db004 	add	fp, sp, #4
800260a8:	e24dd008 	sub	sp, sp, #8
800260ac:	e50b0008 	str	r0, [fp, #-8]
800260b0:	e59f001c 	ldr	r0, [pc, #28]	@ 800260d4 <wakeup+0x34>
800260b4:	eb0000b8 	bl	8002639c <acquire>
800260b8:	e51b0008 	ldr	r0, [fp, #-8]
800260bc:	ebffffa1 	bl	80025f48 <wakeup1>
800260c0:	e59f000c 	ldr	r0, [pc, #12]	@ 800260d4 <wakeup+0x34>
800260c4:	eb0000bf 	bl	800263c8 <release>
800260c8:	e1a00000 	nop			@ (mov r0, r0)
800260cc:	e24bd004 	sub	sp, fp, #4
800260d0:	e8bd8800 	pop	{fp, pc}
800260d4:	800ae678 	.word	0x800ae678

800260d8 <kill>:
800260d8:	e92d4800 	push	{fp, lr}
800260dc:	e28db004 	add	fp, sp, #4
800260e0:	e24dd010 	sub	sp, sp, #16
800260e4:	e50b0010 	str	r0, [fp, #-16]
800260e8:	e59f008c 	ldr	r0, [pc, #140]	@ 8002617c <kill+0xa4>
800260ec:	eb0000aa 	bl	8002639c <acquire>
800260f0:	e59f3088 	ldr	r3, [pc, #136]	@ 80026180 <kill+0xa8>
800260f4:	e50b3008 	str	r3, [fp, #-8]
800260f8:	ea000015 	b	80026154 <kill+0x7c>
800260fc:	e51b3008 	ldr	r3, [fp, #-8]
80026100:	e5933010 	ldr	r3, [r3, #16]
80026104:	e51b2010 	ldr	r2, [fp, #-16]
80026108:	e1520003 	cmp	r2, r3
8002610c:	1a00000d 	bne	80026148 <kill+0x70>
80026110:	e51b3008 	ldr	r3, [fp, #-8]
80026114:	e3a02001 	mov	r2, #1
80026118:	e5832024 	str	r2, [r3, #36]	@ 0x24
8002611c:	e51b3008 	ldr	r3, [fp, #-8]
80026120:	e5d3300c 	ldrb	r3, [r3, #12]
80026124:	e3530002 	cmp	r3, #2
80026128:	1a000002 	bne	80026138 <kill+0x60>
8002612c:	e51b3008 	ldr	r3, [fp, #-8]
80026130:	e3a02003 	mov	r2, #3
80026134:	e5c3200c 	strb	r2, [r3, #12]
80026138:	e59f003c 	ldr	r0, [pc, #60]	@ 8002617c <kill+0xa4>
8002613c:	eb0000a1 	bl	800263c8 <release>
80026140:	e3a03000 	mov	r3, #0
80026144:	ea000009 	b	80026170 <kill+0x98>
80026148:	e51b3008 	ldr	r3, [fp, #-8]
8002614c:	e283309c 	add	r3, r3, #156	@ 0x9c
80026150:	e50b3008 	str	r3, [fp, #-8]
80026154:	e51b3008 	ldr	r3, [fp, #-8]
80026158:	e59f2024 	ldr	r2, [pc, #36]	@ 80026184 <kill+0xac>
8002615c:	e1530002 	cmp	r3, r2
80026160:	3affffe5 	bcc	800260fc <kill+0x24>
80026164:	e59f0010 	ldr	r0, [pc, #16]	@ 8002617c <kill+0xa4>
80026168:	eb000096 	bl	800263c8 <release>
8002616c:	e3e03000 	mvn	r3, #0
80026170:	e1a00003 	mov	r0, r3
80026174:	e24bd004 	sub	sp, fp, #4
80026178:	e8bd8800 	pop	{fp, pc}
8002617c:	800ae678 	.word	0x800ae678
80026180:	800ae6ac 	.word	0x800ae6ac
80026184:	800b0dac 	.word	0x800b0dac

80026188 <procdump>:
80026188:	e92d4800 	push	{fp, lr}
8002618c:	e28db004 	add	fp, sp, #4
80026190:	e24dd008 	sub	sp, sp, #8
80026194:	e59f30b8 	ldr	r3, [pc, #184]	@ 80026254 <procdump+0xcc>
80026198:	e50b3008 	str	r3, [fp, #-8]
8002619c:	ea000023 	b	80026230 <procdump+0xa8>
800261a0:	e51b3008 	ldr	r3, [fp, #-8]
800261a4:	e5d3300c 	ldrb	r3, [r3, #12]
800261a8:	e3530000 	cmp	r3, #0
800261ac:	0a00001b 	beq	80026220 <procdump+0x98>
800261b0:	e51b3008 	ldr	r3, [fp, #-8]
800261b4:	e5d3300c 	ldrb	r3, [r3, #12]
800261b8:	e3530005 	cmp	r3, #5
800261bc:	8a00000d 	bhi	800261f8 <procdump+0x70>
800261c0:	e51b3008 	ldr	r3, [fp, #-8]
800261c4:	e5d3300c 	ldrb	r3, [r3, #12]
800261c8:	e1a02003 	mov	r2, r3
800261cc:	e59f3084 	ldr	r3, [pc, #132]	@ 80026258 <procdump+0xd0>
800261d0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800261d4:	e3530000 	cmp	r3, #0
800261d8:	0a000006 	beq	800261f8 <procdump+0x70>
800261dc:	e51b3008 	ldr	r3, [fp, #-8]
800261e0:	e5d3300c 	ldrb	r3, [r3, #12]
800261e4:	e1a02003 	mov	r2, r3
800261e8:	e59f3068 	ldr	r3, [pc, #104]	@ 80026258 <procdump+0xd0>
800261ec:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800261f0:	e50b300c 	str	r3, [fp, #-12]
800261f4:	ea000001 	b	80026200 <procdump+0x78>
800261f8:	e59f305c 	ldr	r3, [pc, #92]	@ 8002625c <procdump+0xd4>
800261fc:	e50b300c 	str	r3, [fp, #-12]
80026200:	e51b3008 	ldr	r3, [fp, #-8]
80026204:	e5931010 	ldr	r1, [r3, #16]
80026208:	e51b3008 	ldr	r3, [fp, #-8]
8002620c:	e283306c 	add	r3, r3, #108	@ 0x6c
80026210:	e51b200c 	ldr	r2, [fp, #-12]
80026214:	e59f0044 	ldr	r0, [pc, #68]	@ 80026260 <procdump+0xd8>
80026218:	ebffed9d 	bl	80021894 <cprintf>
8002621c:	ea000000 	b	80026224 <procdump+0x9c>
80026220:	e1a00000 	nop			@ (mov r0, r0)
80026224:	e51b3008 	ldr	r3, [fp, #-8]
80026228:	e283309c 	add	r3, r3, #156	@ 0x9c
8002622c:	e50b3008 	str	r3, [fp, #-8]
80026230:	e51b3008 	ldr	r3, [fp, #-8]
80026234:	e59f2028 	ldr	r2, [pc, #40]	@ 80026264 <procdump+0xdc>
80026238:	e1530002 	cmp	r3, r2
8002623c:	3affffd7 	bcc	800261a0 <procdump+0x18>
80026240:	e59f0020 	ldr	r0, [pc, #32]	@ 80026268 <procdump+0xe0>
80026244:	ebffe970 	bl	8002080c <show_callstk>
80026248:	e1a00000 	nop			@ (mov r0, r0)
8002624c:	e24bd004 	sub	sp, fp, #4
80026250:	e8bd8800 	pop	{fp, pc}
80026254:	800ae6ac 	.word	0x800ae6ac
80026258:	8002b064 	.word	0x8002b064
8002625c:	80029cec 	.word	0x80029cec
80026260:	80029cf0 	.word	0x80029cf0
80026264:	800b0dac 	.word	0x800b0dac
80026268:	80029cfc 	.word	0x80029cfc

8002626c <psdump>:
8002626c:	e92d4800 	push	{fp, lr}
80026270:	e28db004 	add	fp, sp, #4
80026274:	e24dd018 	sub	sp, sp, #24
80026278:	e59f00c0 	ldr	r0, [pc, #192]	@ 80026340 <psdump+0xd4>
8002627c:	ebffed84 	bl	80021894 <cprintf>
80026280:	e59f30bc 	ldr	r3, [pc, #188]	@ 80026344 <psdump+0xd8>
80026284:	e50b3008 	str	r3, [fp, #-8]
80026288:	ea000024 	b	80026320 <psdump+0xb4>
8002628c:	e51b3008 	ldr	r3, [fp, #-8]
80026290:	e5d3300c 	ldrb	r3, [r3, #12]
80026294:	e3530000 	cmp	r3, #0
80026298:	0a00001c 	beq	80026310 <psdump+0xa4>
8002629c:	e51b3008 	ldr	r3, [fp, #-8]
800262a0:	e5d3300c 	ldrb	r3, [r3, #12]
800262a4:	e1a02003 	mov	r2, r3
800262a8:	e59f3098 	ldr	r3, [pc, #152]	@ 80026348 <psdump+0xdc>
800262ac:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800262b0:	e50b300c 	str	r3, [fp, #-12]
800262b4:	e51b3008 	ldr	r3, [fp, #-8]
800262b8:	e5933014 	ldr	r3, [r3, #20]
800262bc:	e3530000 	cmp	r3, #0
800262c0:	0a000003 	beq	800262d4 <psdump+0x68>
800262c4:	e51b3008 	ldr	r3, [fp, #-8]
800262c8:	e5933014 	ldr	r3, [r3, #20]
800262cc:	e5933010 	ldr	r3, [r3, #16]
800262d0:	ea000000 	b	800262d8 <psdump+0x6c>
800262d4:	e3a03000 	mov	r3, #0
800262d8:	e50b3010 	str	r3, [fp, #-16]
800262dc:	e51b3008 	ldr	r3, [fp, #-8]
800262e0:	e5931010 	ldr	r1, [r3, #16]
800262e4:	e51b3008 	ldr	r3, [fp, #-8]
800262e8:	e593307c 	ldr	r3, [r3, #124]	@ 0x7c
800262ec:	e51b2008 	ldr	r2, [fp, #-8]
800262f0:	e282206c 	add	r2, r2, #108	@ 0x6c
800262f4:	e58d2004 	str	r2, [sp, #4]
800262f8:	e58d3000 	str	r3, [sp]
800262fc:	e51b300c 	ldr	r3, [fp, #-12]
80026300:	e51b2010 	ldr	r2, [fp, #-16]
80026304:	e59f0040 	ldr	r0, [pc, #64]	@ 8002634c <psdump+0xe0>
80026308:	ebffed61 	bl	80021894 <cprintf>
8002630c:	ea000000 	b	80026314 <psdump+0xa8>
80026310:	e1a00000 	nop			@ (mov r0, r0)
80026314:	e51b3008 	ldr	r3, [fp, #-8]
80026318:	e283309c 	add	r3, r3, #156	@ 0x9c
8002631c:	e50b3008 	str	r3, [fp, #-8]
80026320:	e51b3008 	ldr	r3, [fp, #-8]
80026324:	e59f2024 	ldr	r2, [pc, #36]	@ 80026350 <psdump+0xe4>
80026328:	e1530002 	cmp	r3, r2
8002632c:	3affffd6 	bcc	8002628c <psdump+0x20>
80026330:	e1a00000 	nop			@ (mov r0, r0)
80026334:	e1a00000 	nop			@ (mov r0, r0)
80026338:	e24bd004 	sub	sp, fp, #4
8002633c:	e8bd8800 	pop	{fp, pc}
80026340:	80029d08 	.word	0x80029d08
80026344:	800ae6ac 	.word	0x800ae6ac
80026348:	8002b07c 	.word	0x8002b07c
8002634c:	80029d2c 	.word	0x80029d2c
80026350:	800b0dac 	.word	0x800b0dac

80026354 <initlock>:
80026354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026358:	e28db000 	add	fp, sp, #0
8002635c:	e24dd00c 	sub	sp, sp, #12
80026360:	e50b0008 	str	r0, [fp, #-8]
80026364:	e50b100c 	str	r1, [fp, #-12]
80026368:	e51b3008 	ldr	r3, [fp, #-8]
8002636c:	e51b200c 	ldr	r2, [fp, #-12]
80026370:	e5832004 	str	r2, [r3, #4]
80026374:	e51b3008 	ldr	r3, [fp, #-8]
80026378:	e3a02000 	mov	r2, #0
8002637c:	e5832000 	str	r2, [r3]
80026380:	e51b3008 	ldr	r3, [fp, #-8]
80026384:	e3a02000 	mov	r2, #0
80026388:	e5832008 	str	r2, [r3, #8]
8002638c:	e1a00000 	nop			@ (mov r0, r0)
80026390:	e28bd000 	add	sp, fp, #0
80026394:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026398:	e12fff1e 	bx	lr

8002639c <acquire>:
8002639c:	e92d4800 	push	{fp, lr}
800263a0:	e28db004 	add	fp, sp, #4
800263a4:	e24dd008 	sub	sp, sp, #8
800263a8:	e50b0008 	str	r0, [fp, #-8]
800263ac:	ebffe89e 	bl	8002062c <pushcli>
800263b0:	e51b3008 	ldr	r3, [fp, #-8]
800263b4:	e3a02001 	mov	r2, #1
800263b8:	e5832000 	str	r2, [r3]
800263bc:	e1a00000 	nop			@ (mov r0, r0)
800263c0:	e24bd004 	sub	sp, fp, #4
800263c4:	e8bd8800 	pop	{fp, pc}

800263c8 <release>:
800263c8:	e92d4800 	push	{fp, lr}
800263cc:	e28db004 	add	fp, sp, #4
800263d0:	e24dd008 	sub	sp, sp, #8
800263d4:	e50b0008 	str	r0, [fp, #-8]
800263d8:	e51b3008 	ldr	r3, [fp, #-8]
800263dc:	e3a02000 	mov	r2, #0
800263e0:	e5832000 	str	r2, [r3]
800263e4:	ebffe8a5 	bl	80020680 <popcli>
800263e8:	e1a00000 	nop			@ (mov r0, r0)
800263ec:	e24bd004 	sub	sp, fp, #4
800263f0:	e8bd8800 	pop	{fp, pc}

800263f4 <holding>:
800263f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800263f8:	e28db000 	add	fp, sp, #0
800263fc:	e24dd00c 	sub	sp, sp, #12
80026400:	e50b0008 	str	r0, [fp, #-8]
80026404:	e51b3008 	ldr	r3, [fp, #-8]
80026408:	e5933000 	ldr	r3, [r3]
8002640c:	e1a00003 	mov	r0, r3
80026410:	e28bd000 	add	sp, fp, #0
80026414:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026418:	e12fff1e 	bx	lr

8002641c <swtch>:
8002641c:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80026420:	e580d000 	str	sp, [r0]
80026424:	e1a0d001 	mov	sp, r1
80026428:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002642c:	e12fff1e 	bx	lr

80026430 <fetchint>:
80026430:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026434:	e28db000 	add	fp, sp, #0
80026438:	e24dd00c 	sub	sp, sp, #12
8002643c:	e50b0008 	str	r0, [fp, #-8]
80026440:	e50b100c 	str	r1, [fp, #-12]
80026444:	e59f3058 	ldr	r3, [pc, #88]	@ 800264a4 <fetchint+0x74>
80026448:	e5933000 	ldr	r3, [r3]
8002644c:	e5933000 	ldr	r3, [r3]
80026450:	e51b2008 	ldr	r2, [fp, #-8]
80026454:	e1520003 	cmp	r2, r3
80026458:	2a000006 	bcs	80026478 <fetchint+0x48>
8002645c:	e51b3008 	ldr	r3, [fp, #-8]
80026460:	e2832004 	add	r2, r3, #4
80026464:	e59f3038 	ldr	r3, [pc, #56]	@ 800264a4 <fetchint+0x74>
80026468:	e5933000 	ldr	r3, [r3]
8002646c:	e5933000 	ldr	r3, [r3]
80026470:	e1520003 	cmp	r2, r3
80026474:	9a000001 	bls	80026480 <fetchint+0x50>
80026478:	e3e03000 	mvn	r3, #0
8002647c:	ea000004 	b	80026494 <fetchint+0x64>
80026480:	e51b3008 	ldr	r3, [fp, #-8]
80026484:	e5932000 	ldr	r2, [r3]
80026488:	e51b300c 	ldr	r3, [fp, #-12]
8002648c:	e5832000 	str	r2, [r3]
80026490:	e3a03000 	mov	r3, #0
80026494:	e1a00003 	mov	r0, r3
80026498:	e28bd000 	add	sp, fp, #0
8002649c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800264a0:	e12fff1e 	bx	lr
800264a4:	800b0db0 	.word	0x800b0db0

800264a8 <fetchstr>:
800264a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800264ac:	e28db000 	add	fp, sp, #0
800264b0:	e24dd014 	sub	sp, sp, #20
800264b4:	e50b0010 	str	r0, [fp, #-16]
800264b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800264bc:	e59f3098 	ldr	r3, [pc, #152]	@ 8002655c <fetchstr+0xb4>
800264c0:	e5933000 	ldr	r3, [r3]
800264c4:	e5933000 	ldr	r3, [r3]
800264c8:	e51b2010 	ldr	r2, [fp, #-16]
800264cc:	e1520003 	cmp	r2, r3
800264d0:	3a000001 	bcc	800264dc <fetchstr+0x34>
800264d4:	e3e03000 	mvn	r3, #0
800264d8:	ea00001b 	b	8002654c <fetchstr+0xa4>
800264dc:	e51b2010 	ldr	r2, [fp, #-16]
800264e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800264e4:	e5832000 	str	r2, [r3]
800264e8:	e59f306c 	ldr	r3, [pc, #108]	@ 8002655c <fetchstr+0xb4>
800264ec:	e5933000 	ldr	r3, [r3]
800264f0:	e5933000 	ldr	r3, [r3]
800264f4:	e50b300c 	str	r3, [fp, #-12]
800264f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800264fc:	e5933000 	ldr	r3, [r3]
80026500:	e50b3008 	str	r3, [fp, #-8]
80026504:	ea00000b 	b	80026538 <fetchstr+0x90>
80026508:	e51b3008 	ldr	r3, [fp, #-8]
8002650c:	e5d33000 	ldrb	r3, [r3]
80026510:	e3530000 	cmp	r3, #0
80026514:	1a000004 	bne	8002652c <fetchstr+0x84>
80026518:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002651c:	e5933000 	ldr	r3, [r3]
80026520:	e51b2008 	ldr	r2, [fp, #-8]
80026524:	e0423003 	sub	r3, r2, r3
80026528:	ea000007 	b	8002654c <fetchstr+0xa4>
8002652c:	e51b3008 	ldr	r3, [fp, #-8]
80026530:	e2833001 	add	r3, r3, #1
80026534:	e50b3008 	str	r3, [fp, #-8]
80026538:	e51b2008 	ldr	r2, [fp, #-8]
8002653c:	e51b300c 	ldr	r3, [fp, #-12]
80026540:	e1520003 	cmp	r2, r3
80026544:	3affffef 	bcc	80026508 <fetchstr+0x60>
80026548:	e3e03000 	mvn	r3, #0
8002654c:	e1a00003 	mov	r0, r3
80026550:	e28bd000 	add	sp, fp, #0
80026554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026558:	e12fff1e 	bx	lr
8002655c:	800b0db0 	.word	0x800b0db0

80026560 <argint>:
80026560:	e92d4800 	push	{fp, lr}
80026564:	e28db004 	add	fp, sp, #4
80026568:	e24dd008 	sub	sp, sp, #8
8002656c:	e50b0008 	str	r0, [fp, #-8]
80026570:	e50b100c 	str	r1, [fp, #-12]
80026574:	e51b3008 	ldr	r3, [fp, #-8]
80026578:	e3530003 	cmp	r3, #3
8002657c:	da000001 	ble	80026588 <argint+0x28>
80026580:	e59f003c 	ldr	r0, [pc, #60]	@ 800265c4 <argint+0x64>
80026584:	ebffed5a 	bl	80021af4 <panic>
80026588:	e59f3038 	ldr	r3, [pc, #56]	@ 800265c8 <argint+0x68>
8002658c:	e5933000 	ldr	r3, [r3]
80026590:	e5933018 	ldr	r3, [r3, #24]
80026594:	e2832014 	add	r2, r3, #20
80026598:	e51b3008 	ldr	r3, [fp, #-8]
8002659c:	e1a03103 	lsl	r3, r3, #2
800265a0:	e0823003 	add	r3, r2, r3
800265a4:	e5933000 	ldr	r3, [r3]
800265a8:	e1a02003 	mov	r2, r3
800265ac:	e51b300c 	ldr	r3, [fp, #-12]
800265b0:	e5832000 	str	r2, [r3]
800265b4:	e3a03000 	mov	r3, #0
800265b8:	e1a00003 	mov	r0, r3
800265bc:	e24bd004 	sub	sp, fp, #4
800265c0:	e8bd8800 	pop	{fp, pc}
800265c4:	80029db8 	.word	0x80029db8
800265c8:	800b0db0 	.word	0x800b0db0

800265cc <argptr>:
800265cc:	e92d4800 	push	{fp, lr}
800265d0:	e28db004 	add	fp, sp, #4
800265d4:	e24dd018 	sub	sp, sp, #24
800265d8:	e50b0010 	str	r0, [fp, #-16]
800265dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800265e0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800265e4:	e24b3008 	sub	r3, fp, #8
800265e8:	e1a01003 	mov	r1, r3
800265ec:	e51b0010 	ldr	r0, [fp, #-16]
800265f0:	ebffffda 	bl	80026560 <argint>
800265f4:	e1a03000 	mov	r3, r0
800265f8:	e3530000 	cmp	r3, #0
800265fc:	aa000001 	bge	80026608 <argptr+0x3c>
80026600:	e3e03000 	mvn	r3, #0
80026604:	ea000015 	b	80026660 <argptr+0x94>
80026608:	e59f305c 	ldr	r3, [pc, #92]	@ 8002666c <argptr+0xa0>
8002660c:	e5933000 	ldr	r3, [r3]
80026610:	e5933000 	ldr	r3, [r3]
80026614:	e51b2008 	ldr	r2, [fp, #-8]
80026618:	e1530002 	cmp	r3, r2
8002661c:	9a000008 	bls	80026644 <argptr+0x78>
80026620:	e51b3008 	ldr	r3, [fp, #-8]
80026624:	e1a02003 	mov	r2, r3
80026628:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002662c:	e0822003 	add	r2, r2, r3
80026630:	e59f3034 	ldr	r3, [pc, #52]	@ 8002666c <argptr+0xa0>
80026634:	e5933000 	ldr	r3, [r3]
80026638:	e5933000 	ldr	r3, [r3]
8002663c:	e1520003 	cmp	r2, r3
80026640:	9a000001 	bls	8002664c <argptr+0x80>
80026644:	e3e03000 	mvn	r3, #0
80026648:	ea000004 	b	80026660 <argptr+0x94>
8002664c:	e51b3008 	ldr	r3, [fp, #-8]
80026650:	e1a02003 	mov	r2, r3
80026654:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026658:	e5832000 	str	r2, [r3]
8002665c:	e3a03000 	mov	r3, #0
80026660:	e1a00003 	mov	r0, r3
80026664:	e24bd004 	sub	sp, fp, #4
80026668:	e8bd8800 	pop	{fp, pc}
8002666c:	800b0db0 	.word	0x800b0db0

80026670 <argstr>:
80026670:	e92d4800 	push	{fp, lr}
80026674:	e28db004 	add	fp, sp, #4
80026678:	e24dd010 	sub	sp, sp, #16
8002667c:	e50b0010 	str	r0, [fp, #-16]
80026680:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026684:	e24b3008 	sub	r3, fp, #8
80026688:	e1a01003 	mov	r1, r3
8002668c:	e51b0010 	ldr	r0, [fp, #-16]
80026690:	ebffffb2 	bl	80026560 <argint>
80026694:	e1a03000 	mov	r3, r0
80026698:	e3530000 	cmp	r3, #0
8002669c:	aa000001 	bge	800266a8 <argstr+0x38>
800266a0:	e3e03000 	mvn	r3, #0
800266a4:	ea000004 	b	800266bc <argstr+0x4c>
800266a8:	e51b3008 	ldr	r3, [fp, #-8]
800266ac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800266b0:	e1a00003 	mov	r0, r3
800266b4:	ebffff7b 	bl	800264a8 <fetchstr>
800266b8:	e1a03000 	mov	r3, r0
800266bc:	e1a00003 	mov	r0, r3
800266c0:	e24bd004 	sub	sp, fp, #4
800266c4:	e8bd8800 	pop	{fp, pc}

800266c8 <syscall>:
800266c8:	e92d4800 	push	{fp, lr}
800266cc:	e28db004 	add	fp, sp, #4
800266d0:	e24dd008 	sub	sp, sp, #8
800266d4:	e59f30cc 	ldr	r3, [pc, #204]	@ 800267a8 <syscall+0xe0>
800266d8:	e5933000 	ldr	r3, [r3]
800266dc:	e5933018 	ldr	r3, [r3, #24]
800266e0:	e5933010 	ldr	r3, [r3, #16]
800266e4:	e50b3008 	str	r3, [fp, #-8]
800266e8:	e51b3008 	ldr	r3, [fp, #-8]
800266ec:	e3530000 	cmp	r3, #0
800266f0:	da00001a 	ble	80026760 <syscall+0x98>
800266f4:	e51b3008 	ldr	r3, [fp, #-8]
800266f8:	e353001a 	cmp	r3, #26
800266fc:	8a000017 	bhi	80026760 <syscall+0x98>
80026700:	e59f20a4 	ldr	r2, [pc, #164]	@ 800267ac <syscall+0xe4>
80026704:	e51b3008 	ldr	r3, [fp, #-8]
80026708:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002670c:	e3530000 	cmp	r3, #0
80026710:	0a000012 	beq	80026760 <syscall+0x98>
80026714:	e59f308c 	ldr	r3, [pc, #140]	@ 800267a8 <syscall+0xe0>
80026718:	e5933000 	ldr	r3, [r3]
8002671c:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
80026720:	e2822001 	add	r2, r2, #1
80026724:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80026728:	e59f207c 	ldr	r2, [pc, #124]	@ 800267ac <syscall+0xe4>
8002672c:	e51b3008 	ldr	r3, [fp, #-8]
80026730:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026734:	e12fff33 	blx	r3
80026738:	e50b000c 	str	r0, [fp, #-12]
8002673c:	e51b3008 	ldr	r3, [fp, #-8]
80026740:	e3530007 	cmp	r3, #7
80026744:	0a000014 	beq	8002679c <syscall+0xd4>
80026748:	e59f3058 	ldr	r3, [pc, #88]	@ 800267a8 <syscall+0xe0>
8002674c:	e5933000 	ldr	r3, [r3]
80026750:	e5933018 	ldr	r3, [r3, #24]
80026754:	e51b200c 	ldr	r2, [fp, #-12]
80026758:	e5832010 	str	r2, [r3, #16]
8002675c:	ea00000e 	b	8002679c <syscall+0xd4>
80026760:	e59f3040 	ldr	r3, [pc, #64]	@ 800267a8 <syscall+0xe0>
80026764:	e5933000 	ldr	r3, [r3]
80026768:	e5931010 	ldr	r1, [r3, #16]
8002676c:	e59f3034 	ldr	r3, [pc, #52]	@ 800267a8 <syscall+0xe0>
80026770:	e5933000 	ldr	r3, [r3]
80026774:	e283206c 	add	r2, r3, #108	@ 0x6c
80026778:	e51b3008 	ldr	r3, [fp, #-8]
8002677c:	e59f002c 	ldr	r0, [pc, #44]	@ 800267b0 <syscall+0xe8>
80026780:	ebffec43 	bl	80021894 <cprintf>
80026784:	e59f301c 	ldr	r3, [pc, #28]	@ 800267a8 <syscall+0xe0>
80026788:	e5933000 	ldr	r3, [r3]
8002678c:	e5933018 	ldr	r3, [r3, #24]
80026790:	e3e02000 	mvn	r2, #0
80026794:	e5832010 	str	r2, [r3, #16]
80026798:	e1a00000 	nop			@ (mov r0, r0)
8002679c:	e1a00000 	nop			@ (mov r0, r0)
800267a0:	e24bd004 	sub	sp, fp, #4
800267a4:	e8bd8800 	pop	{fp, pc}
800267a8:	800b0db0 	.word	0x800b0db0
800267ac:	8002b094 	.word	0x8002b094
800267b0:	80029ddc 	.word	0x80029ddc

800267b4 <argfd>:
800267b4:	e92d4800 	push	{fp, lr}
800267b8:	e28db004 	add	fp, sp, #4
800267bc:	e24dd018 	sub	sp, sp, #24
800267c0:	e50b0010 	str	r0, [fp, #-16]
800267c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800267c8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800267cc:	e24b300c 	sub	r3, fp, #12
800267d0:	e1a01003 	mov	r1, r3
800267d4:	e51b0010 	ldr	r0, [fp, #-16]
800267d8:	ebffff60 	bl	80026560 <argint>
800267dc:	e1a03000 	mov	r3, r0
800267e0:	e3530000 	cmp	r3, #0
800267e4:	aa000001 	bge	800267f0 <argfd+0x3c>
800267e8:	e3e03000 	mvn	r3, #0
800267ec:	ea00001d 	b	80026868 <argfd+0xb4>
800267f0:	e51b300c 	ldr	r3, [fp, #-12]
800267f4:	e3530000 	cmp	r3, #0
800267f8:	ba00000b 	blt	8002682c <argfd+0x78>
800267fc:	e51b300c 	ldr	r3, [fp, #-12]
80026800:	e353000f 	cmp	r3, #15
80026804:	ca000008 	bgt	8002682c <argfd+0x78>
80026808:	e59f3064 	ldr	r3, [pc, #100]	@ 80026874 <argfd+0xc0>
8002680c:	e5933000 	ldr	r3, [r3]
80026810:	e51b200c 	ldr	r2, [fp, #-12]
80026814:	e282200a 	add	r2, r2, #10
80026818:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002681c:	e50b3008 	str	r3, [fp, #-8]
80026820:	e51b3008 	ldr	r3, [fp, #-8]
80026824:	e3530000 	cmp	r3, #0
80026828:	1a000001 	bne	80026834 <argfd+0x80>
8002682c:	e3e03000 	mvn	r3, #0
80026830:	ea00000c 	b	80026868 <argfd+0xb4>
80026834:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026838:	e3530000 	cmp	r3, #0
8002683c:	0a000002 	beq	8002684c <argfd+0x98>
80026840:	e51b200c 	ldr	r2, [fp, #-12]
80026844:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026848:	e5832000 	str	r2, [r3]
8002684c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026850:	e3530000 	cmp	r3, #0
80026854:	0a000002 	beq	80026864 <argfd+0xb0>
80026858:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002685c:	e51b2008 	ldr	r2, [fp, #-8]
80026860:	e5832000 	str	r2, [r3]
80026864:	e3a03000 	mov	r3, #0
80026868:	e1a00003 	mov	r0, r3
8002686c:	e24bd004 	sub	sp, fp, #4
80026870:	e8bd8800 	pop	{fp, pc}
80026874:	800b0db0 	.word	0x800b0db0

80026878 <fdalloc>:
80026878:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002687c:	e28db000 	add	fp, sp, #0
80026880:	e24dd014 	sub	sp, sp, #20
80026884:	e50b0010 	str	r0, [fp, #-16]
80026888:	e3a03000 	mov	r3, #0
8002688c:	e50b3008 	str	r3, [fp, #-8]
80026890:	ea000011 	b	800268dc <fdalloc+0x64>
80026894:	e59f3060 	ldr	r3, [pc, #96]	@ 800268fc <fdalloc+0x84>
80026898:	e5933000 	ldr	r3, [r3]
8002689c:	e51b2008 	ldr	r2, [fp, #-8]
800268a0:	e282200a 	add	r2, r2, #10
800268a4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800268a8:	e3530000 	cmp	r3, #0
800268ac:	1a000007 	bne	800268d0 <fdalloc+0x58>
800268b0:	e59f3044 	ldr	r3, [pc, #68]	@ 800268fc <fdalloc+0x84>
800268b4:	e5933000 	ldr	r3, [r3]
800268b8:	e51b2008 	ldr	r2, [fp, #-8]
800268bc:	e282200a 	add	r2, r2, #10
800268c0:	e51b1010 	ldr	r1, [fp, #-16]
800268c4:	e7831102 	str	r1, [r3, r2, lsl #2]
800268c8:	e51b3008 	ldr	r3, [fp, #-8]
800268cc:	ea000006 	b	800268ec <fdalloc+0x74>
800268d0:	e51b3008 	ldr	r3, [fp, #-8]
800268d4:	e2833001 	add	r3, r3, #1
800268d8:	e50b3008 	str	r3, [fp, #-8]
800268dc:	e51b3008 	ldr	r3, [fp, #-8]
800268e0:	e353000f 	cmp	r3, #15
800268e4:	daffffea 	ble	80026894 <fdalloc+0x1c>
800268e8:	e3e03000 	mvn	r3, #0
800268ec:	e1a00003 	mov	r0, r3
800268f0:	e28bd000 	add	sp, fp, #0
800268f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800268f8:	e12fff1e 	bx	lr
800268fc:	800b0db0 	.word	0x800b0db0

80026900 <sys_dup>:
80026900:	e92d4800 	push	{fp, lr}
80026904:	e28db004 	add	fp, sp, #4
80026908:	e24dd008 	sub	sp, sp, #8
8002690c:	e24b300c 	sub	r3, fp, #12
80026910:	e1a02003 	mov	r2, r3
80026914:	e3a01000 	mov	r1, #0
80026918:	e3a00000 	mov	r0, #0
8002691c:	ebffffa4 	bl	800267b4 <argfd>
80026920:	e1a03000 	mov	r3, r0
80026924:	e3530000 	cmp	r3, #0
80026928:	aa000001 	bge	80026934 <sys_dup+0x34>
8002692c:	e3e03000 	mvn	r3, #0
80026930:	ea00000c 	b	80026968 <sys_dup+0x68>
80026934:	e51b300c 	ldr	r3, [fp, #-12]
80026938:	e1a00003 	mov	r0, r3
8002693c:	ebffffcd 	bl	80026878 <fdalloc>
80026940:	e50b0008 	str	r0, [fp, #-8]
80026944:	e51b3008 	ldr	r3, [fp, #-8]
80026948:	e3530000 	cmp	r3, #0
8002694c:	aa000001 	bge	80026958 <sys_dup+0x58>
80026950:	e3e03000 	mvn	r3, #0
80026954:	ea000003 	b	80026968 <sys_dup+0x68>
80026958:	e51b300c 	ldr	r3, [fp, #-12]
8002695c:	e1a00003 	mov	r0, r3
80026960:	ebffefed 	bl	8002291c <filedup>
80026964:	e51b3008 	ldr	r3, [fp, #-8]
80026968:	e1a00003 	mov	r0, r3
8002696c:	e24bd004 	sub	sp, fp, #4
80026970:	e8bd8800 	pop	{fp, pc}

80026974 <sys_read>:
80026974:	e92d4800 	push	{fp, lr}
80026978:	e28db004 	add	fp, sp, #4
8002697c:	e24dd010 	sub	sp, sp, #16
80026980:	e24b3008 	sub	r3, fp, #8
80026984:	e1a02003 	mov	r2, r3
80026988:	e3a01000 	mov	r1, #0
8002698c:	e3a00000 	mov	r0, #0
80026990:	ebffff87 	bl	800267b4 <argfd>
80026994:	e1a03000 	mov	r3, r0
80026998:	e3530000 	cmp	r3, #0
8002699c:	ba00000e 	blt	800269dc <sys_read+0x68>
800269a0:	e24b300c 	sub	r3, fp, #12
800269a4:	e1a01003 	mov	r1, r3
800269a8:	e3a00002 	mov	r0, #2
800269ac:	ebfffeeb 	bl	80026560 <argint>
800269b0:	e1a03000 	mov	r3, r0
800269b4:	e3530000 	cmp	r3, #0
800269b8:	ba000007 	blt	800269dc <sys_read+0x68>
800269bc:	e51b200c 	ldr	r2, [fp, #-12]
800269c0:	e24b3010 	sub	r3, fp, #16
800269c4:	e1a01003 	mov	r1, r3
800269c8:	e3a00001 	mov	r0, #1
800269cc:	ebfffefe 	bl	800265cc <argptr>
800269d0:	e1a03000 	mov	r3, r0
800269d4:	e3530000 	cmp	r3, #0
800269d8:	aa000001 	bge	800269e4 <sys_read+0x70>
800269dc:	e3e03000 	mvn	r3, #0
800269e0:	ea000005 	b	800269fc <sys_read+0x88>
800269e4:	e51b3008 	ldr	r3, [fp, #-8]
800269e8:	e51b1010 	ldr	r1, [fp, #-16]
800269ec:	e51b200c 	ldr	r2, [fp, #-12]
800269f0:	e1a00003 	mov	r0, r3
800269f4:	ebfff039 	bl	80022ae0 <fileread>
800269f8:	e1a03000 	mov	r3, r0
800269fc:	e1a00003 	mov	r0, r3
80026a00:	e24bd004 	sub	sp, fp, #4
80026a04:	e8bd8800 	pop	{fp, pc}

80026a08 <sys_write>:
80026a08:	e92d4800 	push	{fp, lr}
80026a0c:	e28db004 	add	fp, sp, #4
80026a10:	e24dd010 	sub	sp, sp, #16
80026a14:	e24b3008 	sub	r3, fp, #8
80026a18:	e1a02003 	mov	r2, r3
80026a1c:	e3a01000 	mov	r1, #0
80026a20:	e3a00000 	mov	r0, #0
80026a24:	ebffff62 	bl	800267b4 <argfd>
80026a28:	e1a03000 	mov	r3, r0
80026a2c:	e3530000 	cmp	r3, #0
80026a30:	ba00000e 	blt	80026a70 <sys_write+0x68>
80026a34:	e24b300c 	sub	r3, fp, #12
80026a38:	e1a01003 	mov	r1, r3
80026a3c:	e3a00002 	mov	r0, #2
80026a40:	ebfffec6 	bl	80026560 <argint>
80026a44:	e1a03000 	mov	r3, r0
80026a48:	e3530000 	cmp	r3, #0
80026a4c:	ba000007 	blt	80026a70 <sys_write+0x68>
80026a50:	e51b200c 	ldr	r2, [fp, #-12]
80026a54:	e24b3010 	sub	r3, fp, #16
80026a58:	e1a01003 	mov	r1, r3
80026a5c:	e3a00001 	mov	r0, #1
80026a60:	ebfffed9 	bl	800265cc <argptr>
80026a64:	e1a03000 	mov	r3, r0
80026a68:	e3530000 	cmp	r3, #0
80026a6c:	aa000001 	bge	80026a78 <sys_write+0x70>
80026a70:	e3e03000 	mvn	r3, #0
80026a74:	ea000005 	b	80026a90 <sys_write+0x88>
80026a78:	e51b3008 	ldr	r3, [fp, #-8]
80026a7c:	e51b1010 	ldr	r1, [fp, #-16]
80026a80:	e51b200c 	ldr	r2, [fp, #-12]
80026a84:	e1a00003 	mov	r0, r3
80026a88:	ebfff051 	bl	80022bd4 <filewrite>
80026a8c:	e1a03000 	mov	r3, r0
80026a90:	e1a00003 	mov	r0, r3
80026a94:	e24bd004 	sub	sp, fp, #4
80026a98:	e8bd8800 	pop	{fp, pc}

80026a9c <sys_close>:
80026a9c:	e92d4800 	push	{fp, lr}
80026aa0:	e28db004 	add	fp, sp, #4
80026aa4:	e24dd008 	sub	sp, sp, #8
80026aa8:	e24b200c 	sub	r2, fp, #12
80026aac:	e24b3008 	sub	r3, fp, #8
80026ab0:	e1a01003 	mov	r1, r3
80026ab4:	e3a00000 	mov	r0, #0
80026ab8:	ebffff3d 	bl	800267b4 <argfd>
80026abc:	e1a03000 	mov	r3, r0
80026ac0:	e3530000 	cmp	r3, #0
80026ac4:	aa000001 	bge	80026ad0 <sys_close+0x34>
80026ac8:	e3e03000 	mvn	r3, #0
80026acc:	ea000009 	b	80026af8 <sys_close+0x5c>
80026ad0:	e59f302c 	ldr	r3, [pc, #44]	@ 80026b04 <sys_close+0x68>
80026ad4:	e5933000 	ldr	r3, [r3]
80026ad8:	e51b2008 	ldr	r2, [fp, #-8]
80026adc:	e282200a 	add	r2, r2, #10
80026ae0:	e3a01000 	mov	r1, #0
80026ae4:	e7831102 	str	r1, [r3, r2, lsl #2]
80026ae8:	e51b300c 	ldr	r3, [fp, #-12]
80026aec:	e1a00003 	mov	r0, r3
80026af0:	ebffefa2 	bl	80022980 <fileclose>
80026af4:	e3a03000 	mov	r3, #0
80026af8:	e1a00003 	mov	r0, r3
80026afc:	e24bd004 	sub	sp, fp, #4
80026b00:	e8bd8800 	pop	{fp, pc}
80026b04:	800b0db0 	.word	0x800b0db0

80026b08 <sys_fstat>:
80026b08:	e92d4800 	push	{fp, lr}
80026b0c:	e28db004 	add	fp, sp, #4
80026b10:	e24dd008 	sub	sp, sp, #8
80026b14:	e24b3008 	sub	r3, fp, #8
80026b18:	e1a02003 	mov	r2, r3
80026b1c:	e3a01000 	mov	r1, #0
80026b20:	e3a00000 	mov	r0, #0
80026b24:	ebffff22 	bl	800267b4 <argfd>
80026b28:	e1a03000 	mov	r3, r0
80026b2c:	e3530000 	cmp	r3, #0
80026b30:	ba000007 	blt	80026b54 <sys_fstat+0x4c>
80026b34:	e24b300c 	sub	r3, fp, #12
80026b38:	e3a02014 	mov	r2, #20
80026b3c:	e1a01003 	mov	r1, r3
80026b40:	e3a00001 	mov	r0, #1
80026b44:	ebfffea0 	bl	800265cc <argptr>
80026b48:	e1a03000 	mov	r3, r0
80026b4c:	e3530000 	cmp	r3, #0
80026b50:	aa000001 	bge	80026b5c <sys_fstat+0x54>
80026b54:	e3e03000 	mvn	r3, #0
80026b58:	ea000005 	b	80026b74 <sys_fstat+0x6c>
80026b5c:	e51b3008 	ldr	r3, [fp, #-8]
80026b60:	e51b200c 	ldr	r2, [fp, #-12]
80026b64:	e1a01002 	mov	r1, r2
80026b68:	e1a00003 	mov	r0, r3
80026b6c:	ebffefbf 	bl	80022a70 <filestat>
80026b70:	e1a03000 	mov	r3, r0
80026b74:	e1a00003 	mov	r0, r3
80026b78:	e24bd004 	sub	sp, fp, #4
80026b7c:	e8bd8800 	pop	{fp, pc}

80026b80 <sys_link>:
80026b80:	e92d4800 	push	{fp, lr}
80026b84:	e28db004 	add	fp, sp, #4
80026b88:	e24dd020 	sub	sp, sp, #32
80026b8c:	e24b3024 	sub	r3, fp, #36	@ 0x24
80026b90:	e1a01003 	mov	r1, r3
80026b94:	e3a00000 	mov	r0, #0
80026b98:	ebfffeb4 	bl	80026670 <argstr>
80026b9c:	e1a03000 	mov	r3, r0
80026ba0:	e3530000 	cmp	r3, #0
80026ba4:	ba000006 	blt	80026bc4 <sys_link+0x44>
80026ba8:	e24b3020 	sub	r3, fp, #32
80026bac:	e1a01003 	mov	r1, r3
80026bb0:	e3a00001 	mov	r0, #1
80026bb4:	ebfffead 	bl	80026670 <argstr>
80026bb8:	e1a03000 	mov	r3, r0
80026bbc:	e3530000 	cmp	r3, #0
80026bc0:	aa000001 	bge	80026bcc <sys_link+0x4c>
80026bc4:	e3e03000 	mvn	r3, #0
80026bc8:	ea000055 	b	80026d24 <sys_link+0x1a4>
80026bcc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80026bd0:	e1a00003 	mov	r0, r3
80026bd4:	ebfff607 	bl	800243f8 <namei>
80026bd8:	e50b0008 	str	r0, [fp, #-8]
80026bdc:	e51b3008 	ldr	r3, [fp, #-8]
80026be0:	e3530000 	cmp	r3, #0
80026be4:	1a000001 	bne	80026bf0 <sys_link+0x70>
80026be8:	e3e03000 	mvn	r3, #0
80026bec:	ea00004c 	b	80026d24 <sys_link+0x1a4>
80026bf0:	ebfff6d9 	bl	8002475c <begin_trans>
80026bf4:	e51b0008 	ldr	r0, [fp, #-8]
80026bf8:	ebfff22b 	bl	800234ac <ilock>
80026bfc:	e51b3008 	ldr	r3, [fp, #-8]
80026c00:	e1d331f0 	ldrsh	r3, [r3, #16]
80026c04:	e3530001 	cmp	r3, #1
80026c08:	1a000004 	bne	80026c20 <sys_link+0xa0>
80026c0c:	e51b0008 	ldr	r0, [fp, #-8]
80026c10:	ebfff2e6 	bl	800237b0 <iunlockput>
80026c14:	ebfff6e4 	bl	800247ac <commit_trans>
80026c18:	e3e03000 	mvn	r3, #0
80026c1c:	ea000040 	b	80026d24 <sys_link+0x1a4>
80026c20:	e51b3008 	ldr	r3, [fp, #-8]
80026c24:	e1d331f6 	ldrsh	r3, [r3, #22]
80026c28:	e6ff3073 	uxth	r3, r3
80026c2c:	e2833001 	add	r3, r3, #1
80026c30:	e6ff3073 	uxth	r3, r3
80026c34:	e6bf2073 	sxth	r2, r3
80026c38:	e51b3008 	ldr	r3, [fp, #-8]
80026c3c:	e1c321b6 	strh	r2, [r3, #22]
80026c40:	e51b0008 	ldr	r0, [fp, #-8]
80026c44:	ebfff17e 	bl	80023244 <iupdate>
80026c48:	e51b0008 	ldr	r0, [fp, #-8]
80026c4c:	ebfff27a 	bl	8002363c <iunlock>
80026c50:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026c54:	e24b201c 	sub	r2, fp, #28
80026c58:	e1a01002 	mov	r1, r2
80026c5c:	e1a00003 	mov	r0, r3
80026c60:	ebfff5f1 	bl	8002442c <nameiparent>
80026c64:	e50b000c 	str	r0, [fp, #-12]
80026c68:	e51b300c 	ldr	r3, [fp, #-12]
80026c6c:	e3530000 	cmp	r3, #0
80026c70:	0a00001a 	beq	80026ce0 <sys_link+0x160>
80026c74:	e51b000c 	ldr	r0, [fp, #-12]
80026c78:	ebfff20b 	bl	800234ac <ilock>
80026c7c:	e51b300c 	ldr	r3, [fp, #-12]
80026c80:	e5932000 	ldr	r2, [r3]
80026c84:	e51b3008 	ldr	r3, [fp, #-8]
80026c88:	e5933000 	ldr	r3, [r3]
80026c8c:	e1520003 	cmp	r2, r3
80026c90:	1a000008 	bne	80026cb8 <sys_link+0x138>
80026c94:	e51b3008 	ldr	r3, [fp, #-8]
80026c98:	e5932004 	ldr	r2, [r3, #4]
80026c9c:	e24b301c 	sub	r3, fp, #28
80026ca0:	e1a01003 	mov	r1, r3
80026ca4:	e51b000c 	ldr	r0, [fp, #-12]
80026ca8:	ebfff4fc 	bl	800240a0 <dirlink>
80026cac:	e1a03000 	mov	r3, r0
80026cb0:	e3530000 	cmp	r3, #0
80026cb4:	aa000002 	bge	80026cc4 <sys_link+0x144>
80026cb8:	e51b000c 	ldr	r0, [fp, #-12]
80026cbc:	ebfff2bb 	bl	800237b0 <iunlockput>
80026cc0:	ea000007 	b	80026ce4 <sys_link+0x164>
80026cc4:	e51b000c 	ldr	r0, [fp, #-12]
80026cc8:	ebfff2b8 	bl	800237b0 <iunlockput>
80026ccc:	e51b0008 	ldr	r0, [fp, #-8]
80026cd0:	ebfff27b 	bl	800236c4 <iput>
80026cd4:	ebfff6b4 	bl	800247ac <commit_trans>
80026cd8:	e3a03000 	mov	r3, #0
80026cdc:	ea000010 	b	80026d24 <sys_link+0x1a4>
80026ce0:	e1a00000 	nop			@ (mov r0, r0)
80026ce4:	e51b0008 	ldr	r0, [fp, #-8]
80026ce8:	ebfff1ef 	bl	800234ac <ilock>
80026cec:	e51b3008 	ldr	r3, [fp, #-8]
80026cf0:	e1d331f6 	ldrsh	r3, [r3, #22]
80026cf4:	e6ff3073 	uxth	r3, r3
80026cf8:	e2433001 	sub	r3, r3, #1
80026cfc:	e6ff3073 	uxth	r3, r3
80026d00:	e6bf2073 	sxth	r2, r3
80026d04:	e51b3008 	ldr	r3, [fp, #-8]
80026d08:	e1c321b6 	strh	r2, [r3, #22]
80026d0c:	e51b0008 	ldr	r0, [fp, #-8]
80026d10:	ebfff14b 	bl	80023244 <iupdate>
80026d14:	e51b0008 	ldr	r0, [fp, #-8]
80026d18:	ebfff2a4 	bl	800237b0 <iunlockput>
80026d1c:	ebfff6a2 	bl	800247ac <commit_trans>
80026d20:	e3e03000 	mvn	r3, #0
80026d24:	e1a00003 	mov	r0, r3
80026d28:	e24bd004 	sub	sp, fp, #4
80026d2c:	e8bd8800 	pop	{fp, pc}

80026d30 <isdirempty>:
80026d30:	e92d4800 	push	{fp, lr}
80026d34:	e28db004 	add	fp, sp, #4
80026d38:	e24dd020 	sub	sp, sp, #32
80026d3c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80026d40:	e3a03020 	mov	r3, #32
80026d44:	e50b3008 	str	r3, [fp, #-8]
80026d48:	ea000011 	b	80026d94 <isdirempty+0x64>
80026d4c:	e51b2008 	ldr	r2, [fp, #-8]
80026d50:	e24b1018 	sub	r1, fp, #24
80026d54:	e3a03010 	mov	r3, #16
80026d58:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80026d5c:	ebfff37e 	bl	80023b5c <readi>
80026d60:	e1a03000 	mov	r3, r0
80026d64:	e3530010 	cmp	r3, #16
80026d68:	0a000001 	beq	80026d74 <isdirempty+0x44>
80026d6c:	e59f0044 	ldr	r0, [pc, #68]	@ 80026db8 <isdirempty+0x88>
80026d70:	ebffeb5f 	bl	80021af4 <panic>
80026d74:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
80026d78:	e3530000 	cmp	r3, #0
80026d7c:	0a000001 	beq	80026d88 <isdirempty+0x58>
80026d80:	e3a03000 	mov	r3, #0
80026d84:	ea000008 	b	80026dac <isdirempty+0x7c>
80026d88:	e51b3008 	ldr	r3, [fp, #-8]
80026d8c:	e2833010 	add	r3, r3, #16
80026d90:	e50b3008 	str	r3, [fp, #-8]
80026d94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026d98:	e5932018 	ldr	r2, [r3, #24]
80026d9c:	e51b3008 	ldr	r3, [fp, #-8]
80026da0:	e1520003 	cmp	r2, r3
80026da4:	8affffe8 	bhi	80026d4c <isdirempty+0x1c>
80026da8:	e3a03001 	mov	r3, #1
80026dac:	e1a00003 	mov	r0, r3
80026db0:	e24bd004 	sub	sp, fp, #4
80026db4:	e8bd8800 	pop	{fp, pc}
80026db8:	80029df8 	.word	0x80029df8

80026dbc <sys_unlink>:
80026dbc:	e92d4800 	push	{fp, lr}
80026dc0:	e28db004 	add	fp, sp, #4
80026dc4:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026dc8:	e24b3030 	sub	r3, fp, #48	@ 0x30
80026dcc:	e1a01003 	mov	r1, r3
80026dd0:	e3a00000 	mov	r0, #0
80026dd4:	ebfffe25 	bl	80026670 <argstr>
80026dd8:	e1a03000 	mov	r3, r0
80026ddc:	e3530000 	cmp	r3, #0
80026de0:	aa000001 	bge	80026dec <sys_unlink+0x30>
80026de4:	e3e03000 	mvn	r3, #0
80026de8:	ea00006d 	b	80026fa4 <sys_unlink+0x1e8>
80026dec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80026df0:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80026df4:	e1a01002 	mov	r1, r2
80026df8:	e1a00003 	mov	r0, r3
80026dfc:	ebfff58a 	bl	8002442c <nameiparent>
80026e00:	e50b0008 	str	r0, [fp, #-8]
80026e04:	e51b3008 	ldr	r3, [fp, #-8]
80026e08:	e3530000 	cmp	r3, #0
80026e0c:	1a000001 	bne	80026e18 <sys_unlink+0x5c>
80026e10:	e3e03000 	mvn	r3, #0
80026e14:	ea000062 	b	80026fa4 <sys_unlink+0x1e8>
80026e18:	ebfff64f 	bl	8002475c <begin_trans>
80026e1c:	e51b0008 	ldr	r0, [fp, #-8]
80026e20:	ebfff1a1 	bl	800234ac <ilock>
80026e24:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026e28:	e59f1180 	ldr	r1, [pc, #384]	@ 80026fb0 <sys_unlink+0x1f4>
80026e2c:	e1a00003 	mov	r0, r3
80026e30:	ebfff44b 	bl	80023f64 <namecmp>
80026e34:	e1a03000 	mov	r3, r0
80026e38:	e3530000 	cmp	r3, #0
80026e3c:	0a000051 	beq	80026f88 <sys_unlink+0x1cc>
80026e40:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026e44:	e59f1168 	ldr	r1, [pc, #360]	@ 80026fb4 <sys_unlink+0x1f8>
80026e48:	e1a00003 	mov	r0, r3
80026e4c:	ebfff444 	bl	80023f64 <namecmp>
80026e50:	e1a03000 	mov	r3, r0
80026e54:	e3530000 	cmp	r3, #0
80026e58:	0a00004a 	beq	80026f88 <sys_unlink+0x1cc>
80026e5c:	e24b2034 	sub	r2, fp, #52	@ 0x34
80026e60:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026e64:	e1a01003 	mov	r1, r3
80026e68:	e51b0008 	ldr	r0, [fp, #-8]
80026e6c:	ebfff449 	bl	80023f98 <dirlookup>
80026e70:	e50b000c 	str	r0, [fp, #-12]
80026e74:	e51b300c 	ldr	r3, [fp, #-12]
80026e78:	e3530000 	cmp	r3, #0
80026e7c:	0a000043 	beq	80026f90 <sys_unlink+0x1d4>
80026e80:	e51b000c 	ldr	r0, [fp, #-12]
80026e84:	ebfff188 	bl	800234ac <ilock>
80026e88:	e51b300c 	ldr	r3, [fp, #-12]
80026e8c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026e90:	e3530000 	cmp	r3, #0
80026e94:	ca000001 	bgt	80026ea0 <sys_unlink+0xe4>
80026e98:	e59f0118 	ldr	r0, [pc, #280]	@ 80026fb8 <sys_unlink+0x1fc>
80026e9c:	ebffeb14 	bl	80021af4 <panic>
80026ea0:	e51b300c 	ldr	r3, [fp, #-12]
80026ea4:	e1d331f0 	ldrsh	r3, [r3, #16]
80026ea8:	e3530001 	cmp	r3, #1
80026eac:	1a000007 	bne	80026ed0 <sys_unlink+0x114>
80026eb0:	e51b000c 	ldr	r0, [fp, #-12]
80026eb4:	ebffff9d 	bl	80026d30 <isdirempty>
80026eb8:	e1a03000 	mov	r3, r0
80026ebc:	e3530000 	cmp	r3, #0
80026ec0:	1a000002 	bne	80026ed0 <sys_unlink+0x114>
80026ec4:	e51b000c 	ldr	r0, [fp, #-12]
80026ec8:	ebfff238 	bl	800237b0 <iunlockput>
80026ecc:	ea000030 	b	80026f94 <sys_unlink+0x1d8>
80026ed0:	e24b301c 	sub	r3, fp, #28
80026ed4:	e3a02010 	mov	r2, #16
80026ed8:	e3a01000 	mov	r1, #0
80026edc:	e1a00003 	mov	r0, r3
80026ee0:	ebffe446 	bl	80020000 <memset>
80026ee4:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80026ee8:	e24b101c 	sub	r1, fp, #28
80026eec:	e3a03010 	mov	r3, #16
80026ef0:	e51b0008 	ldr	r0, [fp, #-8]
80026ef4:	ebfff393 	bl	80023d48 <writei>
80026ef8:	e1a03000 	mov	r3, r0
80026efc:	e3530010 	cmp	r3, #16
80026f00:	0a000001 	beq	80026f0c <sys_unlink+0x150>
80026f04:	e59f00b0 	ldr	r0, [pc, #176]	@ 80026fbc <sys_unlink+0x200>
80026f08:	ebffeaf9 	bl	80021af4 <panic>
80026f0c:	e51b300c 	ldr	r3, [fp, #-12]
80026f10:	e1d331f0 	ldrsh	r3, [r3, #16]
80026f14:	e3530001 	cmp	r3, #1
80026f18:	1a000009 	bne	80026f44 <sys_unlink+0x188>
80026f1c:	e51b3008 	ldr	r3, [fp, #-8]
80026f20:	e1d331f6 	ldrsh	r3, [r3, #22]
80026f24:	e6ff3073 	uxth	r3, r3
80026f28:	e2433001 	sub	r3, r3, #1
80026f2c:	e6ff3073 	uxth	r3, r3
80026f30:	e6bf2073 	sxth	r2, r3
80026f34:	e51b3008 	ldr	r3, [fp, #-8]
80026f38:	e1c321b6 	strh	r2, [r3, #22]
80026f3c:	e51b0008 	ldr	r0, [fp, #-8]
80026f40:	ebfff0bf 	bl	80023244 <iupdate>
80026f44:	e51b0008 	ldr	r0, [fp, #-8]
80026f48:	ebfff218 	bl	800237b0 <iunlockput>
80026f4c:	e51b300c 	ldr	r3, [fp, #-12]
80026f50:	e1d331f6 	ldrsh	r3, [r3, #22]
80026f54:	e6ff3073 	uxth	r3, r3
80026f58:	e2433001 	sub	r3, r3, #1
80026f5c:	e6ff3073 	uxth	r3, r3
80026f60:	e6bf2073 	sxth	r2, r3
80026f64:	e51b300c 	ldr	r3, [fp, #-12]
80026f68:	e1c321b6 	strh	r2, [r3, #22]
80026f6c:	e51b000c 	ldr	r0, [fp, #-12]
80026f70:	ebfff0b3 	bl	80023244 <iupdate>
80026f74:	e51b000c 	ldr	r0, [fp, #-12]
80026f78:	ebfff20c 	bl	800237b0 <iunlockput>
80026f7c:	ebfff60a 	bl	800247ac <commit_trans>
80026f80:	e3a03000 	mov	r3, #0
80026f84:	ea000006 	b	80026fa4 <sys_unlink+0x1e8>
80026f88:	e1a00000 	nop			@ (mov r0, r0)
80026f8c:	ea000000 	b	80026f94 <sys_unlink+0x1d8>
80026f90:	e1a00000 	nop			@ (mov r0, r0)
80026f94:	e51b0008 	ldr	r0, [fp, #-8]
80026f98:	ebfff204 	bl	800237b0 <iunlockput>
80026f9c:	ebfff602 	bl	800247ac <commit_trans>
80026fa0:	e3e03000 	mvn	r3, #0
80026fa4:	e1a00003 	mov	r0, r3
80026fa8:	e24bd004 	sub	sp, fp, #4
80026fac:	e8bd8800 	pop	{fp, pc}
80026fb0:	80029e0c 	.word	0x80029e0c
80026fb4:	80029e10 	.word	0x80029e10
80026fb8:	80029e14 	.word	0x80029e14
80026fbc:	80029e28 	.word	0x80029e28

80026fc0 <create>:
80026fc0:	e92d4800 	push	{fp, lr}
80026fc4:	e28db004 	add	fp, sp, #4
80026fc8:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026fcc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80026fd0:	e1a00001 	mov	r0, r1
80026fd4:	e1a01002 	mov	r1, r2
80026fd8:	e1a02003 	mov	r2, r3
80026fdc:	e1a03000 	mov	r3, r0
80026fe0:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80026fe4:	e1a03001 	mov	r3, r1
80026fe8:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80026fec:	e1a03002 	mov	r3, r2
80026ff0:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80026ff4:	e24b3020 	sub	r3, fp, #32
80026ff8:	e1a01003 	mov	r1, r3
80026ffc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80027000:	ebfff509 	bl	8002442c <nameiparent>
80027004:	e50b0008 	str	r0, [fp, #-8]
80027008:	e51b3008 	ldr	r3, [fp, #-8]
8002700c:	e3530000 	cmp	r3, #0
80027010:	1a000001 	bne	8002701c <create+0x5c>
80027014:	e3a03000 	mov	r3, #0
80027018:	ea000063 	b	800271ac <create+0x1ec>
8002701c:	e51b0008 	ldr	r0, [fp, #-8]
80027020:	ebfff121 	bl	800234ac <ilock>
80027024:	e24b2010 	sub	r2, fp, #16
80027028:	e24b3020 	sub	r3, fp, #32
8002702c:	e1a01003 	mov	r1, r3
80027030:	e51b0008 	ldr	r0, [fp, #-8]
80027034:	ebfff3d7 	bl	80023f98 <dirlookup>
80027038:	e50b000c 	str	r0, [fp, #-12]
8002703c:	e51b300c 	ldr	r3, [fp, #-12]
80027040:	e3530000 	cmp	r3, #0
80027044:	0a000010 	beq	8002708c <create+0xcc>
80027048:	e51b0008 	ldr	r0, [fp, #-8]
8002704c:	ebfff1d7 	bl	800237b0 <iunlockput>
80027050:	e51b000c 	ldr	r0, [fp, #-12]
80027054:	ebfff114 	bl	800234ac <ilock>
80027058:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
8002705c:	e3530002 	cmp	r3, #2
80027060:	1a000005 	bne	8002707c <create+0xbc>
80027064:	e51b300c 	ldr	r3, [fp, #-12]
80027068:	e1d331f0 	ldrsh	r3, [r3, #16]
8002706c:	e3530002 	cmp	r3, #2
80027070:	1a000001 	bne	8002707c <create+0xbc>
80027074:	e51b300c 	ldr	r3, [fp, #-12]
80027078:	ea00004b 	b	800271ac <create+0x1ec>
8002707c:	e51b000c 	ldr	r0, [fp, #-12]
80027080:	ebfff1ca 	bl	800237b0 <iunlockput>
80027084:	e3a03000 	mov	r3, #0
80027088:	ea000047 	b	800271ac <create+0x1ec>
8002708c:	e51b3008 	ldr	r3, [fp, #-8]
80027090:	e5933000 	ldr	r3, [r3]
80027094:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80027098:	e1a01002 	mov	r1, r2
8002709c:	e1a00003 	mov	r0, r3
800270a0:	ebfff027 	bl	80023144 <ialloc>
800270a4:	e50b000c 	str	r0, [fp, #-12]
800270a8:	e51b300c 	ldr	r3, [fp, #-12]
800270ac:	e3530000 	cmp	r3, #0
800270b0:	1a000001 	bne	800270bc <create+0xfc>
800270b4:	e59f00fc 	ldr	r0, [pc, #252]	@ 800271b8 <create+0x1f8>
800270b8:	ebffea8d 	bl	80021af4 <panic>
800270bc:	e51b000c 	ldr	r0, [fp, #-12]
800270c0:	ebfff0f9 	bl	800234ac <ilock>
800270c4:	e51b300c 	ldr	r3, [fp, #-12]
800270c8:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
800270cc:	e1c321b2 	strh	r2, [r3, #18]
800270d0:	e51b300c 	ldr	r3, [fp, #-12]
800270d4:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
800270d8:	e1c321b4 	strh	r2, [r3, #20]
800270dc:	e51b300c 	ldr	r3, [fp, #-12]
800270e0:	e3a02001 	mov	r2, #1
800270e4:	e1c321b6 	strh	r2, [r3, #22]
800270e8:	e51b000c 	ldr	r0, [fp, #-12]
800270ec:	ebfff054 	bl	80023244 <iupdate>
800270f0:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
800270f4:	e3530001 	cmp	r3, #1
800270f8:	1a00001d 	bne	80027174 <create+0x1b4>
800270fc:	e51b3008 	ldr	r3, [fp, #-8]
80027100:	e1d331f6 	ldrsh	r3, [r3, #22]
80027104:	e6ff3073 	uxth	r3, r3
80027108:	e2833001 	add	r3, r3, #1
8002710c:	e6ff3073 	uxth	r3, r3
80027110:	e6bf2073 	sxth	r2, r3
80027114:	e51b3008 	ldr	r3, [fp, #-8]
80027118:	e1c321b6 	strh	r2, [r3, #22]
8002711c:	e51b0008 	ldr	r0, [fp, #-8]
80027120:	ebfff047 	bl	80023244 <iupdate>
80027124:	e51b300c 	ldr	r3, [fp, #-12]
80027128:	e5933004 	ldr	r3, [r3, #4]
8002712c:	e1a02003 	mov	r2, r3
80027130:	e59f1084 	ldr	r1, [pc, #132]	@ 800271bc <create+0x1fc>
80027134:	e51b000c 	ldr	r0, [fp, #-12]
80027138:	ebfff3d8 	bl	800240a0 <dirlink>
8002713c:	e1a03000 	mov	r3, r0
80027140:	e3530000 	cmp	r3, #0
80027144:	ba000008 	blt	8002716c <create+0x1ac>
80027148:	e51b3008 	ldr	r3, [fp, #-8]
8002714c:	e5933004 	ldr	r3, [r3, #4]
80027150:	e1a02003 	mov	r2, r3
80027154:	e59f1064 	ldr	r1, [pc, #100]	@ 800271c0 <create+0x200>
80027158:	e51b000c 	ldr	r0, [fp, #-12]
8002715c:	ebfff3cf 	bl	800240a0 <dirlink>
80027160:	e1a03000 	mov	r3, r0
80027164:	e3530000 	cmp	r3, #0
80027168:	aa000001 	bge	80027174 <create+0x1b4>
8002716c:	e59f0050 	ldr	r0, [pc, #80]	@ 800271c4 <create+0x204>
80027170:	ebffea5f 	bl	80021af4 <panic>
80027174:	e51b300c 	ldr	r3, [fp, #-12]
80027178:	e5932004 	ldr	r2, [r3, #4]
8002717c:	e24b3020 	sub	r3, fp, #32
80027180:	e1a01003 	mov	r1, r3
80027184:	e51b0008 	ldr	r0, [fp, #-8]
80027188:	ebfff3c4 	bl	800240a0 <dirlink>
8002718c:	e1a03000 	mov	r3, r0
80027190:	e3530000 	cmp	r3, #0
80027194:	aa000001 	bge	800271a0 <create+0x1e0>
80027198:	e59f0028 	ldr	r0, [pc, #40]	@ 800271c8 <create+0x208>
8002719c:	ebffea54 	bl	80021af4 <panic>
800271a0:	e51b0008 	ldr	r0, [fp, #-8]
800271a4:	ebfff181 	bl	800237b0 <iunlockput>
800271a8:	e51b300c 	ldr	r3, [fp, #-12]
800271ac:	e1a00003 	mov	r0, r3
800271b0:	e24bd004 	sub	sp, fp, #4
800271b4:	e8bd8800 	pop	{fp, pc}
800271b8:	80029e38 	.word	0x80029e38
800271bc:	80029e0c 	.word	0x80029e0c
800271c0:	80029e10 	.word	0x80029e10
800271c4:	80029e48 	.word	0x80029e48
800271c8:	80029e54 	.word	0x80029e54

800271cc <sys_open>:
800271cc:	e92d4800 	push	{fp, lr}
800271d0:	e28db004 	add	fp, sp, #4
800271d4:	e24dd018 	sub	sp, sp, #24
800271d8:	e24b3014 	sub	r3, fp, #20
800271dc:	e1a01003 	mov	r1, r3
800271e0:	e3a00000 	mov	r0, #0
800271e4:	ebfffd21 	bl	80026670 <argstr>
800271e8:	e1a03000 	mov	r3, r0
800271ec:	e3530000 	cmp	r3, #0
800271f0:	ba000006 	blt	80027210 <sys_open+0x44>
800271f4:	e24b3018 	sub	r3, fp, #24
800271f8:	e1a01003 	mov	r1, r3
800271fc:	e3a00001 	mov	r0, #1
80027200:	ebfffcd6 	bl	80026560 <argint>
80027204:	e1a03000 	mov	r3, r0
80027208:	e3530000 	cmp	r3, #0
8002720c:	aa000001 	bge	80027218 <sys_open+0x4c>
80027210:	e3e03000 	mvn	r3, #0
80027214:	ea00005d 	b	80027390 <sys_open+0x1c4>
80027218:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002721c:	e2033c02 	and	r3, r3, #512	@ 0x200
80027220:	e3530000 	cmp	r3, #0
80027224:	0a00000c 	beq	8002725c <sys_open+0x90>
80027228:	ebfff54b 	bl	8002475c <begin_trans>
8002722c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80027230:	e3a03000 	mov	r3, #0
80027234:	e3a02000 	mov	r2, #0
80027238:	e3a01002 	mov	r1, #2
8002723c:	ebffff5f 	bl	80026fc0 <create>
80027240:	e50b0008 	str	r0, [fp, #-8]
80027244:	ebfff558 	bl	800247ac <commit_trans>
80027248:	e51b3008 	ldr	r3, [fp, #-8]
8002724c:	e3530000 	cmp	r3, #0
80027250:	1a000017 	bne	800272b4 <sys_open+0xe8>
80027254:	e3e03000 	mvn	r3, #0
80027258:	ea00004c 	b	80027390 <sys_open+0x1c4>
8002725c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027260:	e1a00003 	mov	r0, r3
80027264:	ebfff463 	bl	800243f8 <namei>
80027268:	e50b0008 	str	r0, [fp, #-8]
8002726c:	e51b3008 	ldr	r3, [fp, #-8]
80027270:	e3530000 	cmp	r3, #0
80027274:	1a000001 	bne	80027280 <sys_open+0xb4>
80027278:	e3e03000 	mvn	r3, #0
8002727c:	ea000043 	b	80027390 <sys_open+0x1c4>
80027280:	e51b0008 	ldr	r0, [fp, #-8]
80027284:	ebfff088 	bl	800234ac <ilock>
80027288:	e51b3008 	ldr	r3, [fp, #-8]
8002728c:	e1d331f0 	ldrsh	r3, [r3, #16]
80027290:	e3530001 	cmp	r3, #1
80027294:	1a000006 	bne	800272b4 <sys_open+0xe8>
80027298:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002729c:	e3530000 	cmp	r3, #0
800272a0:	0a000003 	beq	800272b4 <sys_open+0xe8>
800272a4:	e51b0008 	ldr	r0, [fp, #-8]
800272a8:	ebfff140 	bl	800237b0 <iunlockput>
800272ac:	e3e03000 	mvn	r3, #0
800272b0:	ea000036 	b	80027390 <sys_open+0x1c4>
800272b4:	ebffed75 	bl	80022890 <filealloc>
800272b8:	e50b000c 	str	r0, [fp, #-12]
800272bc:	e51b300c 	ldr	r3, [fp, #-12]
800272c0:	e3530000 	cmp	r3, #0
800272c4:	0a000005 	beq	800272e0 <sys_open+0x114>
800272c8:	e51b000c 	ldr	r0, [fp, #-12]
800272cc:	ebfffd69 	bl	80026878 <fdalloc>
800272d0:	e50b0010 	str	r0, [fp, #-16]
800272d4:	e51b3010 	ldr	r3, [fp, #-16]
800272d8:	e3530000 	cmp	r3, #0
800272dc:	aa000008 	bge	80027304 <sys_open+0x138>
800272e0:	e51b300c 	ldr	r3, [fp, #-12]
800272e4:	e3530000 	cmp	r3, #0
800272e8:	0a000001 	beq	800272f4 <sys_open+0x128>
800272ec:	e51b000c 	ldr	r0, [fp, #-12]
800272f0:	ebffeda2 	bl	80022980 <fileclose>
800272f4:	e51b0008 	ldr	r0, [fp, #-8]
800272f8:	ebfff12c 	bl	800237b0 <iunlockput>
800272fc:	e3e03000 	mvn	r3, #0
80027300:	ea000022 	b	80027390 <sys_open+0x1c4>
80027304:	e51b0008 	ldr	r0, [fp, #-8]
80027308:	ebfff0cb 	bl	8002363c <iunlock>
8002730c:	e51b300c 	ldr	r3, [fp, #-12]
80027310:	e3a02002 	mov	r2, #2
80027314:	e5c32000 	strb	r2, [r3]
80027318:	e51b300c 	ldr	r3, [fp, #-12]
8002731c:	e51b2008 	ldr	r2, [fp, #-8]
80027320:	e5832010 	str	r2, [r3, #16]
80027324:	e51b300c 	ldr	r3, [fp, #-12]
80027328:	e3a02000 	mov	r2, #0
8002732c:	e5832014 	str	r2, [r3, #20]
80027330:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027334:	e2033001 	and	r3, r3, #1
80027338:	e3530000 	cmp	r3, #0
8002733c:	03a03001 	moveq	r3, #1
80027340:	13a03000 	movne	r3, #0
80027344:	e6ef3073 	uxtb	r3, r3
80027348:	e1a02003 	mov	r2, r3
8002734c:	e51b300c 	ldr	r3, [fp, #-12]
80027350:	e5c32008 	strb	r2, [r3, #8]
80027354:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027358:	e2033001 	and	r3, r3, #1
8002735c:	e3530000 	cmp	r3, #0
80027360:	1a000003 	bne	80027374 <sys_open+0x1a8>
80027364:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027368:	e2033002 	and	r3, r3, #2
8002736c:	e3530000 	cmp	r3, #0
80027370:	0a000001 	beq	8002737c <sys_open+0x1b0>
80027374:	e3a03001 	mov	r3, #1
80027378:	ea000000 	b	80027380 <sys_open+0x1b4>
8002737c:	e3a03000 	mov	r3, #0
80027380:	e6ef2073 	uxtb	r2, r3
80027384:	e51b300c 	ldr	r3, [fp, #-12]
80027388:	e5c32009 	strb	r2, [r3, #9]
8002738c:	e51b3010 	ldr	r3, [fp, #-16]
80027390:	e1a00003 	mov	r0, r3
80027394:	e24bd004 	sub	sp, fp, #4
80027398:	e8bd8800 	pop	{fp, pc}

8002739c <sys_mkdir>:
8002739c:	e92d4800 	push	{fp, lr}
800273a0:	e28db004 	add	fp, sp, #4
800273a4:	e24dd008 	sub	sp, sp, #8
800273a8:	ebfff4eb 	bl	8002475c <begin_trans>
800273ac:	e24b300c 	sub	r3, fp, #12
800273b0:	e1a01003 	mov	r1, r3
800273b4:	e3a00000 	mov	r0, #0
800273b8:	ebfffcac 	bl	80026670 <argstr>
800273bc:	e1a03000 	mov	r3, r0
800273c0:	e3530000 	cmp	r3, #0
800273c4:	ba000008 	blt	800273ec <sys_mkdir+0x50>
800273c8:	e51b000c 	ldr	r0, [fp, #-12]
800273cc:	e3a03000 	mov	r3, #0
800273d0:	e3a02000 	mov	r2, #0
800273d4:	e3a01001 	mov	r1, #1
800273d8:	ebfffef8 	bl	80026fc0 <create>
800273dc:	e50b0008 	str	r0, [fp, #-8]
800273e0:	e51b3008 	ldr	r3, [fp, #-8]
800273e4:	e3530000 	cmp	r3, #0
800273e8:	1a000002 	bne	800273f8 <sys_mkdir+0x5c>
800273ec:	ebfff4ee 	bl	800247ac <commit_trans>
800273f0:	e3e03000 	mvn	r3, #0
800273f4:	ea000003 	b	80027408 <sys_mkdir+0x6c>
800273f8:	e51b0008 	ldr	r0, [fp, #-8]
800273fc:	ebfff0eb 	bl	800237b0 <iunlockput>
80027400:	ebfff4e9 	bl	800247ac <commit_trans>
80027404:	e3a03000 	mov	r3, #0
80027408:	e1a00003 	mov	r0, r3
8002740c:	e24bd004 	sub	sp, fp, #4
80027410:	e8bd8800 	pop	{fp, pc}

80027414 <sys_mknod>:
80027414:	e92d4800 	push	{fp, lr}
80027418:	e28db004 	add	fp, sp, #4
8002741c:	e24dd018 	sub	sp, sp, #24
80027420:	ebfff4cd 	bl	8002475c <begin_trans>
80027424:	e24b3010 	sub	r3, fp, #16
80027428:	e1a01003 	mov	r1, r3
8002742c:	e3a00000 	mov	r0, #0
80027430:	ebfffc8e 	bl	80026670 <argstr>
80027434:	e50b0008 	str	r0, [fp, #-8]
80027438:	e51b3008 	ldr	r3, [fp, #-8]
8002743c:	e3530000 	cmp	r3, #0
80027440:	ba000018 	blt	800274a8 <sys_mknod+0x94>
80027444:	e24b3014 	sub	r3, fp, #20
80027448:	e1a01003 	mov	r1, r3
8002744c:	e3a00001 	mov	r0, #1
80027450:	ebfffc42 	bl	80026560 <argint>
80027454:	e1a03000 	mov	r3, r0
80027458:	e3530000 	cmp	r3, #0
8002745c:	ba000011 	blt	800274a8 <sys_mknod+0x94>
80027460:	e24b3018 	sub	r3, fp, #24
80027464:	e1a01003 	mov	r1, r3
80027468:	e3a00002 	mov	r0, #2
8002746c:	ebfffc3b 	bl	80026560 <argint>
80027470:	e1a03000 	mov	r3, r0
80027474:	e3530000 	cmp	r3, #0
80027478:	ba00000a 	blt	800274a8 <sys_mknod+0x94>
8002747c:	e51b0010 	ldr	r0, [fp, #-16]
80027480:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027484:	e6bf2073 	sxth	r2, r3
80027488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002748c:	e6bf3073 	sxth	r3, r3
80027490:	e3a01003 	mov	r1, #3
80027494:	ebfffec9 	bl	80026fc0 <create>
80027498:	e50b000c 	str	r0, [fp, #-12]
8002749c:	e51b300c 	ldr	r3, [fp, #-12]
800274a0:	e3530000 	cmp	r3, #0
800274a4:	1a000002 	bne	800274b4 <sys_mknod+0xa0>
800274a8:	ebfff4bf 	bl	800247ac <commit_trans>
800274ac:	e3e03000 	mvn	r3, #0
800274b0:	ea000003 	b	800274c4 <sys_mknod+0xb0>
800274b4:	e51b000c 	ldr	r0, [fp, #-12]
800274b8:	ebfff0bc 	bl	800237b0 <iunlockput>
800274bc:	ebfff4ba 	bl	800247ac <commit_trans>
800274c0:	e3a03000 	mov	r3, #0
800274c4:	e1a00003 	mov	r0, r3
800274c8:	e24bd004 	sub	sp, fp, #4
800274cc:	e8bd8800 	pop	{fp, pc}

800274d0 <sys_chdir>:
800274d0:	e92d4800 	push	{fp, lr}
800274d4:	e28db004 	add	fp, sp, #4
800274d8:	e24dd008 	sub	sp, sp, #8
800274dc:	e24b300c 	sub	r3, fp, #12
800274e0:	e1a01003 	mov	r1, r3
800274e4:	e3a00000 	mov	r0, #0
800274e8:	ebfffc60 	bl	80026670 <argstr>
800274ec:	e1a03000 	mov	r3, r0
800274f0:	e3530000 	cmp	r3, #0
800274f4:	ba000006 	blt	80027514 <sys_chdir+0x44>
800274f8:	e51b300c 	ldr	r3, [fp, #-12]
800274fc:	e1a00003 	mov	r0, r3
80027500:	ebfff3bc 	bl	800243f8 <namei>
80027504:	e50b0008 	str	r0, [fp, #-8]
80027508:	e51b3008 	ldr	r3, [fp, #-8]
8002750c:	e3530000 	cmp	r3, #0
80027510:	1a000001 	bne	8002751c <sys_chdir+0x4c>
80027514:	e3e03000 	mvn	r3, #0
80027518:	ea000015 	b	80027574 <sys_chdir+0xa4>
8002751c:	e51b0008 	ldr	r0, [fp, #-8]
80027520:	ebffefe1 	bl	800234ac <ilock>
80027524:	e51b3008 	ldr	r3, [fp, #-8]
80027528:	e1d331f0 	ldrsh	r3, [r3, #16]
8002752c:	e3530001 	cmp	r3, #1
80027530:	0a000003 	beq	80027544 <sys_chdir+0x74>
80027534:	e51b0008 	ldr	r0, [fp, #-8]
80027538:	ebfff09c 	bl	800237b0 <iunlockput>
8002753c:	e3e03000 	mvn	r3, #0
80027540:	ea00000b 	b	80027574 <sys_chdir+0xa4>
80027544:	e51b0008 	ldr	r0, [fp, #-8]
80027548:	ebfff03b 	bl	8002363c <iunlock>
8002754c:	e59f302c 	ldr	r3, [pc, #44]	@ 80027580 <sys_chdir+0xb0>
80027550:	e5933000 	ldr	r3, [r3]
80027554:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80027558:	e1a00003 	mov	r0, r3
8002755c:	ebfff058 	bl	800236c4 <iput>
80027560:	e59f3018 	ldr	r3, [pc, #24]	@ 80027580 <sys_chdir+0xb0>
80027564:	e5933000 	ldr	r3, [r3]
80027568:	e51b2008 	ldr	r2, [fp, #-8]
8002756c:	e5832068 	str	r2, [r3, #104]	@ 0x68
80027570:	e3a03000 	mov	r3, #0
80027574:	e1a00003 	mov	r0, r3
80027578:	e24bd004 	sub	sp, fp, #4
8002757c:	e8bd8800 	pop	{fp, pc}
80027580:	800b0db0 	.word	0x800b0db0

80027584 <sys_exec>:
80027584:	e92d4800 	push	{fp, lr}
80027588:	e28db004 	add	fp, sp, #4
8002758c:	e24dd090 	sub	sp, sp, #144	@ 0x90
80027590:	e24b300c 	sub	r3, fp, #12
80027594:	e1a01003 	mov	r1, r3
80027598:	e3a00000 	mov	r0, #0
8002759c:	ebfffc33 	bl	80026670 <argstr>
800275a0:	e1a03000 	mov	r3, r0
800275a4:	e3530000 	cmp	r3, #0
800275a8:	ba000006 	blt	800275c8 <sys_exec+0x44>
800275ac:	e24b3090 	sub	r3, fp, #144	@ 0x90
800275b0:	e1a01003 	mov	r1, r3
800275b4:	e3a00001 	mov	r0, #1
800275b8:	ebfffbe8 	bl	80026560 <argint>
800275bc:	e1a03000 	mov	r3, r0
800275c0:	e3530000 	cmp	r3, #0
800275c4:	aa000001 	bge	800275d0 <sys_exec+0x4c>
800275c8:	e3e03000 	mvn	r3, #0
800275cc:	ea00003a 	b	800276bc <sys_exec+0x138>
800275d0:	e24b308c 	sub	r3, fp, #140	@ 0x8c
800275d4:	e3a02080 	mov	r2, #128	@ 0x80
800275d8:	e3a01000 	mov	r1, #0
800275dc:	e1a00003 	mov	r0, r3
800275e0:	ebffe286 	bl	80020000 <memset>
800275e4:	e3a03000 	mov	r3, #0
800275e8:	e50b3008 	str	r3, [fp, #-8]
800275ec:	e51b3008 	ldr	r3, [fp, #-8]
800275f0:	e353001f 	cmp	r3, #31
800275f4:	9a000001 	bls	80027600 <sys_exec+0x7c>
800275f8:	e3e03000 	mvn	r3, #0
800275fc:	ea00002e 	b	800276bc <sys_exec+0x138>
80027600:	e51b3008 	ldr	r3, [fp, #-8]
80027604:	e1a03103 	lsl	r3, r3, #2
80027608:	e1a02003 	mov	r2, r3
8002760c:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80027610:	e0823003 	add	r3, r2, r3
80027614:	e24b2094 	sub	r2, fp, #148	@ 0x94
80027618:	e1a01002 	mov	r1, r2
8002761c:	e1a00003 	mov	r0, r3
80027620:	ebfffb82 	bl	80026430 <fetchint>
80027624:	e1a03000 	mov	r3, r0
80027628:	e3530000 	cmp	r3, #0
8002762c:	aa000001 	bge	80027638 <sys_exec+0xb4>
80027630:	e3e03000 	mvn	r3, #0
80027634:	ea000020 	b	800276bc <sys_exec+0x138>
80027638:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
8002763c:	e3530000 	cmp	r3, #0
80027640:	1a00000d 	bne	8002767c <sys_exec+0xf8>
80027644:	e51b3008 	ldr	r3, [fp, #-8]
80027648:	e1a03103 	lsl	r3, r3, #2
8002764c:	e2433004 	sub	r3, r3, #4
80027650:	e083300b 	add	r3, r3, fp
80027654:	e3a02000 	mov	r2, #0
80027658:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
8002765c:	e1a00000 	nop			@ (mov r0, r0)
80027660:	e51b300c 	ldr	r3, [fp, #-12]
80027664:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027668:	e1a01002 	mov	r1, r2
8002766c:	e1a00003 	mov	r0, r3
80027670:	ebffeb4a 	bl	800223a0 <exec>
80027674:	e1a03000 	mov	r3, r0
80027678:	ea00000f 	b	800276bc <sys_exec+0x138>
8002767c:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80027680:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027684:	e51b3008 	ldr	r3, [fp, #-8]
80027688:	e1a03103 	lsl	r3, r3, #2
8002768c:	e0823003 	add	r3, r2, r3
80027690:	e1a01003 	mov	r1, r3
80027694:	ebfffb83 	bl	800264a8 <fetchstr>
80027698:	e1a03000 	mov	r3, r0
8002769c:	e3530000 	cmp	r3, #0
800276a0:	aa000001 	bge	800276ac <sys_exec+0x128>
800276a4:	e3e03000 	mvn	r3, #0
800276a8:	ea000003 	b	800276bc <sys_exec+0x138>
800276ac:	e51b3008 	ldr	r3, [fp, #-8]
800276b0:	e2833001 	add	r3, r3, #1
800276b4:	e50b3008 	str	r3, [fp, #-8]
800276b8:	eaffffcb 	b	800275ec <sys_exec+0x68>
800276bc:	e1a00003 	mov	r0, r3
800276c0:	e24bd004 	sub	sp, fp, #4
800276c4:	e8bd8800 	pop	{fp, pc}

800276c8 <sys_pipe>:
800276c8:	e92d4800 	push	{fp, lr}
800276cc:	e28db004 	add	fp, sp, #4
800276d0:	e24dd018 	sub	sp, sp, #24
800276d4:	e24b3010 	sub	r3, fp, #16
800276d8:	e3a02008 	mov	r2, #8
800276dc:	e1a01003 	mov	r1, r3
800276e0:	e3a00000 	mov	r0, #0
800276e4:	ebfffbb8 	bl	800265cc <argptr>
800276e8:	e1a03000 	mov	r3, r0
800276ec:	e3530000 	cmp	r3, #0
800276f0:	aa000001 	bge	800276fc <sys_pipe+0x34>
800276f4:	e3e03000 	mvn	r3, #0
800276f8:	ea000032 	b	800277c8 <sys_pipe+0x100>
800276fc:	e24b2018 	sub	r2, fp, #24
80027700:	e24b3014 	sub	r3, fp, #20
80027704:	e1a01002 	mov	r1, r2
80027708:	e1a00003 	mov	r0, r3
8002770c:	ebfff539 	bl	80024bf8 <pipealloc>
80027710:	e1a03000 	mov	r3, r0
80027714:	e3530000 	cmp	r3, #0
80027718:	aa000001 	bge	80027724 <sys_pipe+0x5c>
8002771c:	e3e03000 	mvn	r3, #0
80027720:	ea000028 	b	800277c8 <sys_pipe+0x100>
80027724:	e3e03000 	mvn	r3, #0
80027728:	e50b3008 	str	r3, [fp, #-8]
8002772c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027730:	e1a00003 	mov	r0, r3
80027734:	ebfffc4f 	bl	80026878 <fdalloc>
80027738:	e50b0008 	str	r0, [fp, #-8]
8002773c:	e51b3008 	ldr	r3, [fp, #-8]
80027740:	e3530000 	cmp	r3, #0
80027744:	ba000006 	blt	80027764 <sys_pipe+0x9c>
80027748:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002774c:	e1a00003 	mov	r0, r3
80027750:	ebfffc48 	bl	80026878 <fdalloc>
80027754:	e50b000c 	str	r0, [fp, #-12]
80027758:	e51b300c 	ldr	r3, [fp, #-12]
8002775c:	e3530000 	cmp	r3, #0
80027760:	aa000010 	bge	800277a8 <sys_pipe+0xe0>
80027764:	e51b3008 	ldr	r3, [fp, #-8]
80027768:	e3530000 	cmp	r3, #0
8002776c:	ba000005 	blt	80027788 <sys_pipe+0xc0>
80027770:	e59f305c 	ldr	r3, [pc, #92]	@ 800277d4 <sys_pipe+0x10c>
80027774:	e5933000 	ldr	r3, [r3]
80027778:	e51b2008 	ldr	r2, [fp, #-8]
8002777c:	e282200a 	add	r2, r2, #10
80027780:	e3a01000 	mov	r1, #0
80027784:	e7831102 	str	r1, [r3, r2, lsl #2]
80027788:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002778c:	e1a00003 	mov	r0, r3
80027790:	ebffec7a 	bl	80022980 <fileclose>
80027794:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027798:	e1a00003 	mov	r0, r3
8002779c:	ebffec77 	bl	80022980 <fileclose>
800277a0:	e3e03000 	mvn	r3, #0
800277a4:	ea000007 	b	800277c8 <sys_pipe+0x100>
800277a8:	e51b3010 	ldr	r3, [fp, #-16]
800277ac:	e51b2008 	ldr	r2, [fp, #-8]
800277b0:	e5832000 	str	r2, [r3]
800277b4:	e51b3010 	ldr	r3, [fp, #-16]
800277b8:	e2833004 	add	r3, r3, #4
800277bc:	e51b200c 	ldr	r2, [fp, #-12]
800277c0:	e5832000 	str	r2, [r3]
800277c4:	e3a03000 	mov	r3, #0
800277c8:	e1a00003 	mov	r0, r3
800277cc:	e24bd004 	sub	sp, fp, #4
800277d0:	e8bd8800 	pop	{fp, pc}
800277d4:	800b0db0 	.word	0x800b0db0

800277d8 <sys_fork>:
800277d8:	e92d4800 	push	{fp, lr}
800277dc:	e28db004 	add	fp, sp, #4
800277e0:	ebfff76e 	bl	800255a0 <fork>
800277e4:	e1a03000 	mov	r3, r0
800277e8:	e1a00003 	mov	r0, r3
800277ec:	e8bd8800 	pop	{fp, pc}

800277f0 <sys_exit>:
800277f0:	e92d4800 	push	{fp, lr}
800277f4:	e28db004 	add	fp, sp, #4
800277f8:	ebfff7ed 	bl	800257b4 <exit>
800277fc:	e3a03000 	mov	r3, #0
80027800:	e1a00003 	mov	r0, r3
80027804:	e8bd8800 	pop	{fp, pc}

80027808 <sys_wait>:
80027808:	e92d4800 	push	{fp, lr}
8002780c:	e28db004 	add	fp, sp, #4
80027810:	ebfff849 	bl	8002593c <wait>
80027814:	e1a03000 	mov	r3, r0
80027818:	e1a00003 	mov	r0, r3
8002781c:	e8bd8800 	pop	{fp, pc}

80027820 <sys_kill>:
80027820:	e92d4800 	push	{fp, lr}
80027824:	e28db004 	add	fp, sp, #4
80027828:	e24dd008 	sub	sp, sp, #8
8002782c:	e24b3008 	sub	r3, fp, #8
80027830:	e1a01003 	mov	r1, r3
80027834:	e3a00000 	mov	r0, #0
80027838:	ebfffb48 	bl	80026560 <argint>
8002783c:	e1a03000 	mov	r3, r0
80027840:	e3530000 	cmp	r3, #0
80027844:	aa000001 	bge	80027850 <sys_kill+0x30>
80027848:	e3e03000 	mvn	r3, #0
8002784c:	ea000003 	b	80027860 <sys_kill+0x40>
80027850:	e51b3008 	ldr	r3, [fp, #-8]
80027854:	e1a00003 	mov	r0, r3
80027858:	ebfffa1e 	bl	800260d8 <kill>
8002785c:	e1a03000 	mov	r3, r0
80027860:	e1a00003 	mov	r0, r3
80027864:	e24bd004 	sub	sp, fp, #4
80027868:	e8bd8800 	pop	{fp, pc}

8002786c <sys_getpid>:
8002786c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027870:	e28db000 	add	fp, sp, #0
80027874:	e59f3014 	ldr	r3, [pc, #20]	@ 80027890 <sys_getpid+0x24>
80027878:	e5933000 	ldr	r3, [r3]
8002787c:	e5933010 	ldr	r3, [r3, #16]
80027880:	e1a00003 	mov	r0, r3
80027884:	e28bd000 	add	sp, fp, #0
80027888:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002788c:	e12fff1e 	bx	lr
80027890:	800b0db0 	.word	0x800b0db0

80027894 <sys_sbrk>:
80027894:	e92d4800 	push	{fp, lr}
80027898:	e28db004 	add	fp, sp, #4
8002789c:	e24dd008 	sub	sp, sp, #8
800278a0:	e24b300c 	sub	r3, fp, #12
800278a4:	e1a01003 	mov	r1, r3
800278a8:	e3a00000 	mov	r0, #0
800278ac:	ebfffb2b 	bl	80026560 <argint>
800278b0:	e1a03000 	mov	r3, r0
800278b4:	e3530000 	cmp	r3, #0
800278b8:	aa000001 	bge	800278c4 <sys_sbrk+0x30>
800278bc:	e3e03000 	mvn	r3, #0
800278c0:	ea00000c 	b	800278f8 <sys_sbrk+0x64>
800278c4:	e59f3038 	ldr	r3, [pc, #56]	@ 80027904 <sys_sbrk+0x70>
800278c8:	e5933000 	ldr	r3, [r3]
800278cc:	e5933000 	ldr	r3, [r3]
800278d0:	e50b3008 	str	r3, [fp, #-8]
800278d4:	e51b300c 	ldr	r3, [fp, #-12]
800278d8:	e1a00003 	mov	r0, r3
800278dc:	ebfff6f4 	bl	800254b4 <growproc>
800278e0:	e1a03000 	mov	r3, r0
800278e4:	e3530000 	cmp	r3, #0
800278e8:	aa000001 	bge	800278f4 <sys_sbrk+0x60>
800278ec:	e3e03000 	mvn	r3, #0
800278f0:	ea000000 	b	800278f8 <sys_sbrk+0x64>
800278f4:	e51b3008 	ldr	r3, [fp, #-8]
800278f8:	e1a00003 	mov	r0, r3
800278fc:	e24bd004 	sub	sp, fp, #4
80027900:	e8bd8800 	pop	{fp, pc}
80027904:	800b0db0 	.word	0x800b0db0

80027908 <sys_sleep>:
80027908:	e92d4800 	push	{fp, lr}
8002790c:	e28db004 	add	fp, sp, #4
80027910:	e24dd008 	sub	sp, sp, #8
80027914:	e24b300c 	sub	r3, fp, #12
80027918:	e1a01003 	mov	r1, r3
8002791c:	e3a00000 	mov	r0, #0
80027920:	ebfffb0e 	bl	80026560 <argint>
80027924:	e1a03000 	mov	r3, r0
80027928:	e3530000 	cmp	r3, #0
8002792c:	aa000001 	bge	80027938 <sys_sleep+0x30>
80027930:	e3e03000 	mvn	r3, #0
80027934:	ea000023 	b	800279c8 <sys_sleep+0xc0>
80027938:	e59f0094 	ldr	r0, [pc, #148]	@ 800279d4 <sys_sleep+0xcc>
8002793c:	ebfffa96 	bl	8002639c <acquire>
80027940:	e59f3090 	ldr	r3, [pc, #144]	@ 800279d8 <sys_sleep+0xd0>
80027944:	e5933000 	ldr	r3, [r3]
80027948:	e50b3008 	str	r3, [fp, #-8]
8002794c:	e59f3084 	ldr	r3, [pc, #132]	@ 800279d8 <sys_sleep+0xd0>
80027950:	e5932000 	ldr	r2, [r3]
80027954:	e51b300c 	ldr	r3, [fp, #-12]
80027958:	e1a01003 	mov	r1, r3
8002795c:	e59f3078 	ldr	r3, [pc, #120]	@ 800279dc <sys_sleep+0xd4>
80027960:	e5933000 	ldr	r3, [r3]
80027964:	e0822001 	add	r2, r2, r1
80027968:	e5832090 	str	r2, [r3, #144]	@ 0x90
8002796c:	ea00000b 	b	800279a0 <sys_sleep+0x98>
80027970:	e59f3064 	ldr	r3, [pc, #100]	@ 800279dc <sys_sleep+0xd4>
80027974:	e5933000 	ldr	r3, [r3]
80027978:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
8002797c:	e3530000 	cmp	r3, #0
80027980:	0a000003 	beq	80027994 <sys_sleep+0x8c>
80027984:	e59f0048 	ldr	r0, [pc, #72]	@ 800279d4 <sys_sleep+0xcc>
80027988:	ebfffa8e 	bl	800263c8 <release>
8002798c:	e3e03000 	mvn	r3, #0
80027990:	ea00000c 	b	800279c8 <sys_sleep+0xc0>
80027994:	e59f1038 	ldr	r1, [pc, #56]	@ 800279d4 <sys_sleep+0xcc>
80027998:	e59f0038 	ldr	r0, [pc, #56]	@ 800279d8 <sys_sleep+0xd0>
8002799c:	ebfff92b 	bl	80025e50 <sleep>
800279a0:	e59f3030 	ldr	r3, [pc, #48]	@ 800279d8 <sys_sleep+0xd0>
800279a4:	e5932000 	ldr	r2, [r3]
800279a8:	e51b3008 	ldr	r3, [fp, #-8]
800279ac:	e0423003 	sub	r3, r2, r3
800279b0:	e51b200c 	ldr	r2, [fp, #-12]
800279b4:	e1530002 	cmp	r3, r2
800279b8:	3affffec 	bcc	80027970 <sys_sleep+0x68>
800279bc:	e59f0010 	ldr	r0, [pc, #16]	@ 800279d4 <sys_sleep+0xcc>
800279c0:	ebfffa80 	bl	800263c8 <release>
800279c4:	e3a03000 	mov	r3, #0
800279c8:	e1a00003 	mov	r0, r3
800279cc:	e24bd004 	sub	sp, fp, #4
800279d0:	e8bd8800 	pop	{fp, pc}
800279d4:	800b0e74 	.word	0x800b0e74
800279d8:	800b0ea8 	.word	0x800b0ea8
800279dc:	800b0db0 	.word	0x800b0db0

800279e0 <sys_uptime>:
800279e0:	e92d4800 	push	{fp, lr}
800279e4:	e28db004 	add	fp, sp, #4
800279e8:	e24dd008 	sub	sp, sp, #8
800279ec:	e59f0024 	ldr	r0, [pc, #36]	@ 80027a18 <sys_uptime+0x38>
800279f0:	ebfffa69 	bl	8002639c <acquire>
800279f4:	e59f3020 	ldr	r3, [pc, #32]	@ 80027a1c <sys_uptime+0x3c>
800279f8:	e5933000 	ldr	r3, [r3]
800279fc:	e50b3008 	str	r3, [fp, #-8]
80027a00:	e59f0010 	ldr	r0, [pc, #16]	@ 80027a18 <sys_uptime+0x38>
80027a04:	ebfffa6f 	bl	800263c8 <release>
80027a08:	e51b3008 	ldr	r3, [fp, #-8]
80027a0c:	e1a00003 	mov	r0, r3
80027a10:	e24bd004 	sub	sp, fp, #4
80027a14:	e8bd8800 	pop	{fp, pc}
80027a18:	800b0e74 	.word	0x800b0e74
80027a1c:	800b0ea8 	.word	0x800b0ea8

80027a20 <sys_ps>:
80027a20:	e92d4800 	push	{fp, lr}
80027a24:	e28db004 	add	fp, sp, #4
80027a28:	ebfffa0f 	bl	8002626c <psdump>
80027a2c:	e3a03000 	mov	r3, #0
80027a30:	e1a00003 	mov	r0, r3
80027a34:	e8bd8800 	pop	{fp, pc}

80027a38 <sys_srand>:
80027a38:	e92d4800 	push	{fp, lr}
80027a3c:	e28db004 	add	fp, sp, #4
80027a40:	e24dd008 	sub	sp, sp, #8
80027a44:	e24b3008 	sub	r3, fp, #8
80027a48:	e1a01003 	mov	r1, r3
80027a4c:	e3a00000 	mov	r0, #0
80027a50:	ebfffac2 	bl	80026560 <argint>
80027a54:	e1a03000 	mov	r3, r0
80027a58:	e3530000 	cmp	r3, #0
80027a5c:	aa000001 	bge	80027a68 <sys_srand+0x30>
80027a60:	e3e03000 	mvn	r3, #0
80027a64:	ea000004 	b	80027a7c <sys_srand+0x44>
80027a68:	e51b3008 	ldr	r3, [fp, #-8]
80027a6c:	e1a02003 	mov	r2, r3
80027a70:	e59f3010 	ldr	r3, [pc, #16]	@ 80027a88 <sys_srand+0x50>
80027a74:	e5832000 	str	r2, [r3]
80027a78:	e3a03000 	mov	r3, #0
80027a7c:	e1a00003 	mov	r0, r3
80027a80:	e24bd004 	sub	sp, fp, #4
80027a84:	e8bd8800 	pop	{fp, pc}
80027a88:	800ae674 	.word	0x800ae674

80027a8c <sys_settickets>:
80027a8c:	e92d4800 	push	{fp, lr}
80027a90:	e28db004 	add	fp, sp, #4
80027a94:	e24dd010 	sub	sp, sp, #16
80027a98:	e24b300c 	sub	r3, fp, #12
80027a9c:	e1a01003 	mov	r1, r3
80027aa0:	e3a00000 	mov	r0, #0
80027aa4:	ebfffaad 	bl	80026560 <argint>
80027aa8:	e1a03000 	mov	r3, r0
80027aac:	e3530000 	cmp	r3, #0
80027ab0:	ba000006 	blt	80027ad0 <sys_settickets+0x44>
80027ab4:	e24b3010 	sub	r3, fp, #16
80027ab8:	e1a01003 	mov	r1, r3
80027abc:	e3a00001 	mov	r0, #1
80027ac0:	ebfffaa6 	bl	80026560 <argint>
80027ac4:	e1a03000 	mov	r3, r0
80027ac8:	e3530000 	cmp	r3, #0
80027acc:	aa000001 	bge	80027ad8 <sys_settickets+0x4c>
80027ad0:	e3e03000 	mvn	r3, #0
80027ad4:	ea00001f 	b	80027b58 <sys_settickets+0xcc>
80027ad8:	e51b3010 	ldr	r3, [fp, #-16]
80027adc:	e3530000 	cmp	r3, #0
80027ae0:	ca000001 	bgt	80027aec <sys_settickets+0x60>
80027ae4:	e3e03000 	mvn	r3, #0
80027ae8:	ea00001a 	b	80027b58 <sys_settickets+0xcc>
80027aec:	e59f0070 	ldr	r0, [pc, #112]	@ 80027b64 <sys_settickets+0xd8>
80027af0:	ebfffa29 	bl	8002639c <acquire>
80027af4:	e59f306c 	ldr	r3, [pc, #108]	@ 80027b68 <sys_settickets+0xdc>
80027af8:	e50b3008 	str	r3, [fp, #-8]
80027afc:	ea00000e 	b	80027b3c <sys_settickets+0xb0>
80027b00:	e51b3008 	ldr	r3, [fp, #-8]
80027b04:	e5932010 	ldr	r2, [r3, #16]
80027b08:	e51b300c 	ldr	r3, [fp, #-12]
80027b0c:	e1520003 	cmp	r2, r3
80027b10:	1a000006 	bne	80027b30 <sys_settickets+0xa4>
80027b14:	e51b2010 	ldr	r2, [fp, #-16]
80027b18:	e51b3008 	ldr	r3, [fp, #-8]
80027b1c:	e5832080 	str	r2, [r3, #128]	@ 0x80
80027b20:	e59f003c 	ldr	r0, [pc, #60]	@ 80027b64 <sys_settickets+0xd8>
80027b24:	ebfffa27 	bl	800263c8 <release>
80027b28:	e3a03000 	mov	r3, #0
80027b2c:	ea000009 	b	80027b58 <sys_settickets+0xcc>
80027b30:	e51b3008 	ldr	r3, [fp, #-8]
80027b34:	e283309c 	add	r3, r3, #156	@ 0x9c
80027b38:	e50b3008 	str	r3, [fp, #-8]
80027b3c:	e51b3008 	ldr	r3, [fp, #-8]
80027b40:	e59f2024 	ldr	r2, [pc, #36]	@ 80027b6c <sys_settickets+0xe0>
80027b44:	e1530002 	cmp	r3, r2
80027b48:	3affffec 	bcc	80027b00 <sys_settickets+0x74>
80027b4c:	e59f0010 	ldr	r0, [pc, #16]	@ 80027b64 <sys_settickets+0xd8>
80027b50:	ebfffa1c 	bl	800263c8 <release>
80027b54:	e3e03000 	mvn	r3, #0
80027b58:	e1a00003 	mov	r0, r3
80027b5c:	e24bd004 	sub	sp, fp, #4
80027b60:	e8bd8800 	pop	{fp, pc}
80027b64:	800ae678 	.word	0x800ae678
80027b68:	800ae6ac 	.word	0x800ae6ac
80027b6c:	800b0dac 	.word	0x800b0dac

80027b70 <sys_getpinfo>:
80027b70:	e92d4800 	push	{fp, lr}
80027b74:	e28db004 	add	fp, sp, #4
80027b78:	e24dd010 	sub	sp, sp, #16
80027b7c:	e3a03000 	mov	r3, #0
80027b80:	e50b300c 	str	r3, [fp, #-12]
80027b84:	e24b3010 	sub	r3, fp, #16
80027b88:	e3a02c05 	mov	r2, #1280	@ 0x500
80027b8c:	e1a01003 	mov	r1, r3
80027b90:	e3a00000 	mov	r0, #0
80027b94:	ebfffa8c 	bl	800265cc <argptr>
80027b98:	e1a03000 	mov	r3, r0
80027b9c:	e3530000 	cmp	r3, #0
80027ba0:	aa000001 	bge	80027bac <sys_getpinfo+0x3c>
80027ba4:	e3e03000 	mvn	r3, #0
80027ba8:	ea000033 	b	80027c7c <sys_getpinfo+0x10c>
80027bac:	e59f00d4 	ldr	r0, [pc, #212]	@ 80027c88 <sys_getpinfo+0x118>
80027bb0:	ebfff9f9 	bl	8002639c <acquire>
80027bb4:	e59f30d0 	ldr	r3, [pc, #208]	@ 80027c8c <sys_getpinfo+0x11c>
80027bb8:	e50b3008 	str	r3, [fp, #-8]
80027bbc:	ea000027 	b	80027c60 <sys_getpinfo+0xf0>
80027bc0:	e51b3008 	ldr	r3, [fp, #-8]
80027bc4:	e5d3300c 	ldrb	r3, [r3, #12]
80027bc8:	e3530000 	cmp	r3, #0
80027bcc:	13a03001 	movne	r3, #1
80027bd0:	03a03000 	moveq	r3, #0
80027bd4:	e6ef2073 	uxtb	r2, r3
80027bd8:	e51b3010 	ldr	r3, [fp, #-16]
80027bdc:	e1a01002 	mov	r1, r2
80027be0:	e51b200c 	ldr	r2, [fp, #-12]
80027be4:	e7831102 	str	r1, [r3, r2, lsl #2]
80027be8:	e51b3010 	ldr	r3, [fp, #-16]
80027bec:	e51b2008 	ldr	r2, [fp, #-8]
80027bf0:	e5921010 	ldr	r1, [r2, #16]
80027bf4:	e51b200c 	ldr	r2, [fp, #-12]
80027bf8:	e2822040 	add	r2, r2, #64	@ 0x40
80027bfc:	e7831102 	str	r1, [r3, r2, lsl #2]
80027c00:	e51b3010 	ldr	r3, [fp, #-16]
80027c04:	e51b2008 	ldr	r2, [fp, #-8]
80027c08:	e5921080 	ldr	r1, [r2, #128]	@ 0x80
80027c0c:	e51b200c 	ldr	r2, [fp, #-12]
80027c10:	e2822080 	add	r2, r2, #128	@ 0x80
80027c14:	e7831102 	str	r1, [r3, r2, lsl #2]
80027c18:	e51b3010 	ldr	r3, [fp, #-16]
80027c1c:	e51b2008 	ldr	r2, [fp, #-8]
80027c20:	e5921084 	ldr	r1, [r2, #132]	@ 0x84
80027c24:	e51b200c 	ldr	r2, [fp, #-12]
80027c28:	e28220c0 	add	r2, r2, #192	@ 0xc0
80027c2c:	e7831102 	str	r1, [r3, r2, lsl #2]
80027c30:	e51b3010 	ldr	r3, [fp, #-16]
80027c34:	e51b2008 	ldr	r2, [fp, #-8]
80027c38:	e5921094 	ldr	r1, [r2, #148]	@ 0x94
80027c3c:	e51b200c 	ldr	r2, [fp, #-12]
80027c40:	e2822c01 	add	r2, r2, #256	@ 0x100
80027c44:	e7831102 	str	r1, [r3, r2, lsl #2]
80027c48:	e51b3008 	ldr	r3, [fp, #-8]
80027c4c:	e283309c 	add	r3, r3, #156	@ 0x9c
80027c50:	e50b3008 	str	r3, [fp, #-8]
80027c54:	e51b300c 	ldr	r3, [fp, #-12]
80027c58:	e2833001 	add	r3, r3, #1
80027c5c:	e50b300c 	str	r3, [fp, #-12]
80027c60:	e51b3008 	ldr	r3, [fp, #-8]
80027c64:	e59f2024 	ldr	r2, [pc, #36]	@ 80027c90 <sys_getpinfo+0x120>
80027c68:	e1530002 	cmp	r3, r2
80027c6c:	3affffd3 	bcc	80027bc0 <sys_getpinfo+0x50>
80027c70:	e59f0010 	ldr	r0, [pc, #16]	@ 80027c88 <sys_getpinfo+0x118>
80027c74:	ebfff9d3 	bl	800263c8 <release>
80027c78:	e3a03000 	mov	r3, #0
80027c7c:	e1a00003 	mov	r0, r3
80027c80:	e24bd004 	sub	sp, fp, #4
80027c84:	e8bd8800 	pop	{fp, pc}
80027c88:	800ae678 	.word	0x800ae678
80027c8c:	800ae6ac 	.word	0x800ae6ac
80027c90:	800b0dac 	.word	0x800b0dac

80027c94 <trap_swi>:
80027c94:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027c98:	e14f2000 	mrs	r2, SPSR
80027c9c:	e92d0004 	stmfd	sp!, {r2}
80027ca0:	e92d4000 	stmfd	sp!, {lr}
80027ca4:	e94d6000 	stmdb	sp, {sp, lr}^
80027ca8:	e24dd008 	sub	sp, sp, #8
80027cac:	e1a0000d 	mov	r0, sp
80027cb0:	eb000054 	bl	80027e08 <swi_handler>

80027cb4 <trapret>:
80027cb4:	e8dd6000 	ldm	sp, {sp, lr}^
80027cb8:	e28dd008 	add	sp, sp, #8
80027cbc:	e8bd4000 	ldmfd	sp!, {lr}
80027cc0:	e8bd0004 	ldmfd	sp!, {r2}
80027cc4:	e16ff002 	msr	SPSR_fsxc, r2
80027cc8:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027ccc <trap_irq>:
80027ccc:	e24ee004 	sub	lr, lr, #4
80027cd0:	e92d4007 	push	{r0, r1, r2, lr}
80027cd4:	e14f1000 	mrs	r1, SPSR
80027cd8:	e1a0000d 	mov	r0, sp
80027cdc:	e28dd010 	add	sp, sp, #16
80027ce0:	e10f2000 	mrs	r2, CPSR
80027ce4:	e3c2201f 	bic	r2, r2, #31
80027ce8:	e3822013 	orr	r2, r2, #19
80027cec:	e12ff002 	msr	CPSR_fsxc, r2
80027cf0:	e590200c 	ldr	r2, [r0, #12]
80027cf4:	e92d0004 	stmfd	sp!, {r2}
80027cf8:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027cfc:	e8900038 	ldm	r0, {r3, r4, r5}
80027d00:	e92d0038 	push	{r3, r4, r5}
80027d04:	e92d0002 	stmfd	sp!, {r1}
80027d08:	e92d4000 	stmfd	sp!, {lr}
80027d0c:	e94d6000 	stmdb	sp, {sp, lr}^
80027d10:	e24dd008 	sub	sp, sp, #8
80027d14:	e1a0000d 	mov	r0, sp
80027d18:	eb000047 	bl	80027e3c <irq_handler>
80027d1c:	eaffffe4 	b	80027cb4 <trapret>

80027d20 <trap_reset>:
80027d20:	e3a0e000 	mov	lr, #0
80027d24:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d28:	e14f2000 	mrs	r2, SPSR
80027d2c:	e92d0004 	stmfd	sp!, {r2}
80027d30:	e92d4000 	stmfd	sp!, {lr}
80027d34:	e94d6000 	stmdb	sp, {sp, lr}^
80027d38:	e24dd008 	sub	sp, sp, #8
80027d3c:	e1a0000d 	mov	r0, sp
80027d40:	eb00005c 	bl	80027eb8 <reset_handler>
80027d44:	eafffffe 	b	80027d44 <trap_reset+0x24>

80027d48 <trap_und>:
80027d48:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d4c:	e14f2000 	mrs	r2, SPSR
80027d50:	e92d0004 	stmfd	sp!, {r2}
80027d54:	e92d4000 	stmfd	sp!, {lr}
80027d58:	e94d6000 	stmdb	sp, {sp, lr}^
80027d5c:	e24dd008 	sub	sp, sp, #8
80027d60:	e1a0000d 	mov	r0, sp
80027d64:	eb000061 	bl	80027ef0 <und_handler>
80027d68:	eafffffe 	b	80027d68 <trap_und+0x20>

80027d6c <trap_iabort>:
80027d6c:	e24ee004 	sub	lr, lr, #4
80027d70:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d74:	e14f2000 	mrs	r2, SPSR
80027d78:	e92d0004 	stmfd	sp!, {r2}
80027d7c:	e92d4000 	stmfd	sp!, {lr}
80027d80:	e94d6000 	stmdb	sp, {sp, lr}^
80027d84:	e24dd008 	sub	sp, sp, #8
80027d88:	e1a0000d 	mov	r0, sp
80027d8c:	eb00007a 	bl	80027f7c <iabort_handler>
80027d90:	eafffffe 	b	80027d90 <trap_iabort+0x24>

80027d94 <trap_dabort>:
80027d94:	e24ee008 	sub	lr, lr, #8
80027d98:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d9c:	e14f2000 	mrs	r2, SPSR
80027da0:	e92d0004 	stmfd	sp!, {r2}
80027da4:	e92d4000 	stmfd	sp!, {lr}
80027da8:	e94d6000 	stmdb	sp, {sp, lr}^
80027dac:	e24dd008 	sub	sp, sp, #8
80027db0:	e1a0000d 	mov	r0, sp
80027db4:	eb00005b 	bl	80027f28 <dabort_handler>
80027db8:	eafffffe 	b	80027db8 <trap_dabort+0x24>

80027dbc <trap_na>:
80027dbc:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027dc0:	e14f2000 	mrs	r2, SPSR
80027dc4:	e92d0004 	stmfd	sp!, {r2}
80027dc8:	e92d4000 	stmfd	sp!, {lr}
80027dcc:	e94d6000 	stmdb	sp, {sp, lr}^
80027dd0:	e24dd008 	sub	sp, sp, #8
80027dd4:	e1a0000d 	mov	r0, sp
80027dd8:	eb00007a 	bl	80027fc8 <na_handler>
80027ddc:	eafffffe 	b	80027ddc <trap_na+0x20>

80027de0 <trap_fiq>:
80027de0:	e24ee004 	sub	lr, lr, #4
80027de4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027de8:	e14f2000 	mrs	r2, SPSR
80027dec:	e92d0004 	stmfd	sp!, {r2}
80027df0:	e92d4000 	stmfd	sp!, {lr}
80027df4:	e94d6000 	stmdb	sp, {sp, lr}^
80027df8:	e24dd008 	sub	sp, sp, #8
80027dfc:	e1a0000d 	mov	r0, sp
80027e00:	eb00007e 	bl	80028000 <fiq_handler>
80027e04:	eafffffe 	b	80027e04 <trap_fiq+0x24>

80027e08 <swi_handler>:
80027e08:	e92d4800 	push	{fp, lr}
80027e0c:	e28db004 	add	fp, sp, #4
80027e10:	e24dd008 	sub	sp, sp, #8
80027e14:	e50b0008 	str	r0, [fp, #-8]
80027e18:	e59f3018 	ldr	r3, [pc, #24]	@ 80027e38 <swi_handler+0x30>
80027e1c:	e5933000 	ldr	r3, [r3]
80027e20:	e51b2008 	ldr	r2, [fp, #-8]
80027e24:	e5832018 	str	r2, [r3, #24]
80027e28:	ebfffa26 	bl	800266c8 <syscall>
80027e2c:	e1a00000 	nop			@ (mov r0, r0)
80027e30:	e24bd004 	sub	sp, fp, #4
80027e34:	e8bd8800 	pop	{fp, pc}
80027e38:	800b0db0 	.word	0x800b0db0

80027e3c <irq_handler>:
80027e3c:	e92d4800 	push	{fp, lr}
80027e40:	e28db004 	add	fp, sp, #4
80027e44:	e24dd008 	sub	sp, sp, #8
80027e48:	e50b0008 	str	r0, [fp, #-8]
80027e4c:	e59f3058 	ldr	r3, [pc, #88]	@ 80027eac <irq_handler+0x70>
80027e50:	e5933000 	ldr	r3, [r3]
80027e54:	e3530000 	cmp	r3, #0
80027e58:	0a000003 	beq	80027e6c <irq_handler+0x30>
80027e5c:	e59f3048 	ldr	r3, [pc, #72]	@ 80027eac <irq_handler+0x70>
80027e60:	e5933000 	ldr	r3, [r3]
80027e64:	e51b2008 	ldr	r2, [fp, #-8]
80027e68:	e5832018 	str	r2, [r3, #24]
80027e6c:	e59f003c 	ldr	r0, [pc, #60]	@ 80027eb0 <irq_handler+0x74>
80027e70:	ebfff949 	bl	8002639c <acquire>
80027e74:	e59f3038 	ldr	r3, [pc, #56]	@ 80027eb4 <irq_handler+0x78>
80027e78:	e5933000 	ldr	r3, [r3]
80027e7c:	e2833001 	add	r3, r3, #1
80027e80:	e59f202c 	ldr	r2, [pc, #44]	@ 80027eb4 <irq_handler+0x78>
80027e84:	e5823000 	str	r3, [r2]
80027e88:	e59f0024 	ldr	r0, [pc, #36]	@ 80027eb4 <irq_handler+0x78>
80027e8c:	ebfff883 	bl	800260a0 <wakeup>
80027e90:	e59f0018 	ldr	r0, [pc, #24]	@ 80027eb0 <irq_handler+0x74>
80027e94:	ebfff94b 	bl	800263c8 <release>
80027e98:	e51b0008 	ldr	r0, [fp, #-8]
80027e9c:	eb0004db 	bl	80029210 <pic_dispatch>
80027ea0:	e1a00000 	nop			@ (mov r0, r0)
80027ea4:	e24bd004 	sub	sp, fp, #4
80027ea8:	e8bd8800 	pop	{fp, pc}
80027eac:	800b0db0 	.word	0x800b0db0
80027eb0:	800b0e74 	.word	0x800b0e74
80027eb4:	800b0ea8 	.word	0x800b0ea8

80027eb8 <reset_handler>:
80027eb8:	e92d4800 	push	{fp, lr}
80027ebc:	e28db004 	add	fp, sp, #4
80027ec0:	e24dd008 	sub	sp, sp, #8
80027ec4:	e50b0008 	str	r0, [fp, #-8]
80027ec8:	ebffe19c 	bl	80020540 <cli>
80027ecc:	e51b3008 	ldr	r3, [fp, #-8]
80027ed0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027ed4:	e1a01003 	mov	r1, r3
80027ed8:	e59f000c 	ldr	r0, [pc, #12]	@ 80027eec <reset_handler+0x34>
80027edc:	ebffe66c 	bl	80021894 <cprintf>
80027ee0:	e1a00000 	nop			@ (mov r0, r0)
80027ee4:	e24bd004 	sub	sp, fp, #4
80027ee8:	e8bd8800 	pop	{fp, pc}
80027eec:	80029e64 	.word	0x80029e64

80027ef0 <und_handler>:
80027ef0:	e92d4800 	push	{fp, lr}
80027ef4:	e28db004 	add	fp, sp, #4
80027ef8:	e24dd008 	sub	sp, sp, #8
80027efc:	e50b0008 	str	r0, [fp, #-8]
80027f00:	ebffe18e 	bl	80020540 <cli>
80027f04:	e51b3008 	ldr	r3, [fp, #-8]
80027f08:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027f0c:	e1a01003 	mov	r1, r3
80027f10:	e59f000c 	ldr	r0, [pc, #12]	@ 80027f24 <und_handler+0x34>
80027f14:	ebffe65e 	bl	80021894 <cprintf>
80027f18:	e1a00000 	nop			@ (mov r0, r0)
80027f1c:	e24bd004 	sub	sp, fp, #4
80027f20:	e8bd8800 	pop	{fp, pc}
80027f24:	80029e78 	.word	0x80029e78

80027f28 <dabort_handler>:
80027f28:	e92d4800 	push	{fp, lr}
80027f2c:	e28db004 	add	fp, sp, #4
80027f30:	e24dd010 	sub	sp, sp, #16
80027f34:	e50b0010 	str	r0, [fp, #-16]
80027f38:	ebffe180 	bl	80020540 <cli>
80027f3c:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027f40:	e50b3008 	str	r3, [fp, #-8]
80027f44:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80027f48:	e50b300c 	str	r3, [fp, #-12]
80027f4c:	e51b3010 	ldr	r3, [fp, #-16]
80027f50:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80027f54:	e51b3008 	ldr	r3, [fp, #-8]
80027f58:	e51b200c 	ldr	r2, [fp, #-12]
80027f5c:	e59f0014 	ldr	r0, [pc, #20]	@ 80027f78 <dabort_handler+0x50>
80027f60:	ebffe64b 	bl	80021894 <cprintf>
80027f64:	e51b0010 	ldr	r0, [fp, #-16]
80027f68:	eb0000b3 	bl	8002823c <dump_trapframe>
80027f6c:	e1a00000 	nop			@ (mov r0, r0)
80027f70:	e24bd004 	sub	sp, fp, #4
80027f74:	e8bd8800 	pop	{fp, pc}
80027f78:	80029e88 	.word	0x80029e88

80027f7c <iabort_handler>:
80027f7c:	e92d4800 	push	{fp, lr}
80027f80:	e28db004 	add	fp, sp, #4
80027f84:	e24dd010 	sub	sp, sp, #16
80027f88:	e50b0010 	str	r0, [fp, #-16]
80027f8c:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027f90:	e50b3008 	str	r3, [fp, #-8]
80027f94:	ebffe169 	bl	80020540 <cli>
80027f98:	e51b3010 	ldr	r3, [fp, #-16]
80027f9c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027fa0:	e51b2008 	ldr	r2, [fp, #-8]
80027fa4:	e1a01003 	mov	r1, r3
80027fa8:	e59f0014 	ldr	r0, [pc, #20]	@ 80027fc4 <iabort_handler+0x48>
80027fac:	ebffe638 	bl	80021894 <cprintf>
80027fb0:	e51b0010 	ldr	r0, [fp, #-16]
80027fb4:	eb0000a0 	bl	8002823c <dump_trapframe>
80027fb8:	e1a00000 	nop			@ (mov r0, r0)
80027fbc:	e24bd004 	sub	sp, fp, #4
80027fc0:	e8bd8800 	pop	{fp, pc}
80027fc4:	80029ec8 	.word	0x80029ec8

80027fc8 <na_handler>:
80027fc8:	e92d4800 	push	{fp, lr}
80027fcc:	e28db004 	add	fp, sp, #4
80027fd0:	e24dd008 	sub	sp, sp, #8
80027fd4:	e50b0008 	str	r0, [fp, #-8]
80027fd8:	ebffe158 	bl	80020540 <cli>
80027fdc:	e51b3008 	ldr	r3, [fp, #-8]
80027fe0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027fe4:	e1a01003 	mov	r1, r3
80027fe8:	e59f000c 	ldr	r0, [pc, #12]	@ 80027ffc <na_handler+0x34>
80027fec:	ebffe628 	bl	80021894 <cprintf>
80027ff0:	e1a00000 	nop			@ (mov r0, r0)
80027ff4:	e24bd004 	sub	sp, fp, #4
80027ff8:	e8bd8800 	pop	{fp, pc}
80027ffc:	80029ef0 	.word	0x80029ef0

80028000 <fiq_handler>:
80028000:	e92d4800 	push	{fp, lr}
80028004:	e28db004 	add	fp, sp, #4
80028008:	e24dd008 	sub	sp, sp, #8
8002800c:	e50b0008 	str	r0, [fp, #-8]
80028010:	ebffe14a 	bl	80020540 <cli>
80028014:	e51b3008 	ldr	r3, [fp, #-8]
80028018:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002801c:	e1a01003 	mov	r1, r3
80028020:	e59f000c 	ldr	r0, [pc, #12]	@ 80028034 <fiq_handler+0x34>
80028024:	ebffe61a 	bl	80021894 <cprintf>
80028028:	e1a00000 	nop			@ (mov r0, r0)
8002802c:	e24bd004 	sub	sp, fp, #4
80028030:	e8bd8800 	pop	{fp, pc}
80028034:	80029f00 	.word	0x80029f00

80028038 <trap_init>:
80028038:	e92d4800 	push	{fp, lr}
8002803c:	e28db004 	add	fp, sp, #4
80028040:	e24dd020 	sub	sp, sp, #32
80028044:	e59f31c0 	ldr	r3, [pc, #448]	@ 8002820c <trap_init+0x1d4>
80028048:	e24bc020 	sub	ip, fp, #32
8002804c:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80028050:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80028054:	e59f31b4 	ldr	r3, [pc, #436]	@ 80028210 <trap_init+0x1d8>
80028058:	e50b300c 	str	r3, [fp, #-12]
8002805c:	e59f31b0 	ldr	r3, [pc, #432]	@ 80028214 <trap_init+0x1dc>
80028060:	e5933000 	ldr	r3, [r3]
80028064:	e3832018 	orr	r2, r3, #24
80028068:	e51b300c 	ldr	r3, [fp, #-12]
8002806c:	e5832000 	str	r2, [r3]
80028070:	e59f319c 	ldr	r3, [pc, #412]	@ 80028214 <trap_init+0x1dc>
80028074:	e5932000 	ldr	r2, [r3]
80028078:	e51b300c 	ldr	r3, [fp, #-12]
8002807c:	e2833004 	add	r3, r3, #4
80028080:	e3822018 	orr	r2, r2, #24
80028084:	e5832000 	str	r2, [r3]
80028088:	e59f3184 	ldr	r3, [pc, #388]	@ 80028214 <trap_init+0x1dc>
8002808c:	e5932000 	ldr	r2, [r3]
80028090:	e51b300c 	ldr	r3, [fp, #-12]
80028094:	e2833008 	add	r3, r3, #8
80028098:	e3822018 	orr	r2, r2, #24
8002809c:	e5832000 	str	r2, [r3]
800280a0:	e59f316c 	ldr	r3, [pc, #364]	@ 80028214 <trap_init+0x1dc>
800280a4:	e5932000 	ldr	r2, [r3]
800280a8:	e51b300c 	ldr	r3, [fp, #-12]
800280ac:	e283300c 	add	r3, r3, #12
800280b0:	e3822018 	orr	r2, r2, #24
800280b4:	e5832000 	str	r2, [r3]
800280b8:	e59f3154 	ldr	r3, [pc, #340]	@ 80028214 <trap_init+0x1dc>
800280bc:	e5932000 	ldr	r2, [r3]
800280c0:	e51b300c 	ldr	r3, [fp, #-12]
800280c4:	e2833010 	add	r3, r3, #16
800280c8:	e3822018 	orr	r2, r2, #24
800280cc:	e5832000 	str	r2, [r3]
800280d0:	e59f313c 	ldr	r3, [pc, #316]	@ 80028214 <trap_init+0x1dc>
800280d4:	e5932000 	ldr	r2, [r3]
800280d8:	e51b300c 	ldr	r3, [fp, #-12]
800280dc:	e2833014 	add	r3, r3, #20
800280e0:	e3822018 	orr	r2, r2, #24
800280e4:	e5832000 	str	r2, [r3]
800280e8:	e59f3124 	ldr	r3, [pc, #292]	@ 80028214 <trap_init+0x1dc>
800280ec:	e5932000 	ldr	r2, [r3]
800280f0:	e51b300c 	ldr	r3, [fp, #-12]
800280f4:	e2833018 	add	r3, r3, #24
800280f8:	e3822018 	orr	r2, r2, #24
800280fc:	e5832000 	str	r2, [r3]
80028100:	e59f310c 	ldr	r3, [pc, #268]	@ 80028214 <trap_init+0x1dc>
80028104:	e5932000 	ldr	r2, [r3]
80028108:	e51b300c 	ldr	r3, [fp, #-12]
8002810c:	e283301c 	add	r3, r3, #28
80028110:	e3822018 	orr	r2, r2, #24
80028114:	e5832000 	str	r2, [r3]
80028118:	e51b300c 	ldr	r3, [fp, #-12]
8002811c:	e2833020 	add	r3, r3, #32
80028120:	e59f20f0 	ldr	r2, [pc, #240]	@ 80028218 <trap_init+0x1e0>
80028124:	e5832000 	str	r2, [r3]
80028128:	e51b300c 	ldr	r3, [fp, #-12]
8002812c:	e2833024 	add	r3, r3, #36	@ 0x24
80028130:	e59f20e4 	ldr	r2, [pc, #228]	@ 8002821c <trap_init+0x1e4>
80028134:	e5832000 	str	r2, [r3]
80028138:	e51b300c 	ldr	r3, [fp, #-12]
8002813c:	e2833028 	add	r3, r3, #40	@ 0x28
80028140:	e59f20d8 	ldr	r2, [pc, #216]	@ 80028220 <trap_init+0x1e8>
80028144:	e5832000 	str	r2, [r3]
80028148:	e51b300c 	ldr	r3, [fp, #-12]
8002814c:	e283302c 	add	r3, r3, #44	@ 0x2c
80028150:	e59f20cc 	ldr	r2, [pc, #204]	@ 80028224 <trap_init+0x1ec>
80028154:	e5832000 	str	r2, [r3]
80028158:	e51b300c 	ldr	r3, [fp, #-12]
8002815c:	e2833030 	add	r3, r3, #48	@ 0x30
80028160:	e59f20c0 	ldr	r2, [pc, #192]	@ 80028228 <trap_init+0x1f0>
80028164:	e5832000 	str	r2, [r3]
80028168:	e51b300c 	ldr	r3, [fp, #-12]
8002816c:	e2833034 	add	r3, r3, #52	@ 0x34
80028170:	e59f20b4 	ldr	r2, [pc, #180]	@ 8002822c <trap_init+0x1f4>
80028174:	e5832000 	str	r2, [r3]
80028178:	e51b300c 	ldr	r3, [fp, #-12]
8002817c:	e2833038 	add	r3, r3, #56	@ 0x38
80028180:	e59f20a8 	ldr	r2, [pc, #168]	@ 80028230 <trap_init+0x1f8>
80028184:	e5832000 	str	r2, [r3]
80028188:	e51b300c 	ldr	r3, [fp, #-12]
8002818c:	e283303c 	add	r3, r3, #60	@ 0x3c
80028190:	e59f209c 	ldr	r2, [pc, #156]	@ 80028234 <trap_init+0x1fc>
80028194:	e5832000 	str	r2, [r3]
80028198:	e3a03000 	mov	r3, #0
8002819c:	e50b3008 	str	r3, [fp, #-8]
800281a0:	ea000012 	b	800281f0 <trap_init+0x1b8>
800281a4:	ebffe521 	bl	80021630 <alloc_page>
800281a8:	e50b0010 	str	r0, [fp, #-16]
800281ac:	e51b3010 	ldr	r3, [fp, #-16]
800281b0:	e3530000 	cmp	r3, #0
800281b4:	1a000001 	bne	800281c0 <trap_init+0x188>
800281b8:	e59f0078 	ldr	r0, [pc, #120]	@ 80028238 <trap_init+0x200>
800281bc:	ebffe64c 	bl	80021af4 <panic>
800281c0:	e51b3008 	ldr	r3, [fp, #-8]
800281c4:	e1a03103 	lsl	r3, r3, #2
800281c8:	e2433004 	sub	r3, r3, #4
800281cc:	e083300b 	add	r3, r3, fp
800281d0:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
800281d4:	e51b2010 	ldr	r2, [fp, #-16]
800281d8:	e1a01002 	mov	r1, r2
800281dc:	e1a00003 	mov	r0, r3
800281e0:	ebffe1af 	bl	800208a4 <set_stk>
800281e4:	e51b3008 	ldr	r3, [fp, #-8]
800281e8:	e2833001 	add	r3, r3, #1
800281ec:	e50b3008 	str	r3, [fp, #-8]
800281f0:	e51b3008 	ldr	r3, [fp, #-8]
800281f4:	e3530003 	cmp	r3, #3
800281f8:	9affffe9 	bls	800281a4 <trap_init+0x16c>
800281fc:	e1a00000 	nop			@ (mov r0, r0)
80028200:	e1a00000 	nop			@ (mov r0, r0)
80028204:	e24bd004 	sub	sp, fp, #4
80028208:	e8bd8800 	pop	{fp, pc}
8002820c:	80029f38 	.word	0x80029f38
80028210:	ffff0000 	.word	0xffff0000
80028214:	8002a048 	.word	0x8002a048
80028218:	80027d20 	.word	0x80027d20
8002821c:	80027d48 	.word	0x80027d48
80028220:	80027c94 	.word	0x80027c94
80028224:	80027d6c 	.word	0x80027d6c
80028228:	80027d94 	.word	0x80027d94
8002822c:	80027dbc 	.word	0x80027dbc
80028230:	80027ccc 	.word	0x80027ccc
80028234:	80027de0 	.word	0x80027de0
80028238:	80029f10 	.word	0x80029f10

8002823c <dump_trapframe>:
8002823c:	e92d4800 	push	{fp, lr}
80028240:	e28db004 	add	fp, sp, #4
80028244:	e24dd008 	sub	sp, sp, #8
80028248:	e50b0008 	str	r0, [fp, #-8]
8002824c:	e51b3008 	ldr	r3, [fp, #-8]
80028250:	e5933008 	ldr	r3, [r3, #8]
80028254:	e1a01003 	mov	r1, r3
80028258:	e59f0138 	ldr	r0, [pc, #312]	@ 80028398 <dump_trapframe+0x15c>
8002825c:	ebffe58c 	bl	80021894 <cprintf>
80028260:	e51b3008 	ldr	r3, [fp, #-8]
80028264:	e593300c 	ldr	r3, [r3, #12]
80028268:	e1a01003 	mov	r1, r3
8002826c:	e59f0128 	ldr	r0, [pc, #296]	@ 8002839c <dump_trapframe+0x160>
80028270:	ebffe587 	bl	80021894 <cprintf>
80028274:	e51b3008 	ldr	r3, [fp, #-8]
80028278:	e5933010 	ldr	r3, [r3, #16]
8002827c:	e1a01003 	mov	r1, r3
80028280:	e59f0118 	ldr	r0, [pc, #280]	@ 800283a0 <dump_trapframe+0x164>
80028284:	ebffe582 	bl	80021894 <cprintf>
80028288:	e51b3008 	ldr	r3, [fp, #-8]
8002828c:	e5933014 	ldr	r3, [r3, #20]
80028290:	e1a01003 	mov	r1, r3
80028294:	e59f0108 	ldr	r0, [pc, #264]	@ 800283a4 <dump_trapframe+0x168>
80028298:	ebffe57d 	bl	80021894 <cprintf>
8002829c:	e51b3008 	ldr	r3, [fp, #-8]
800282a0:	e5933018 	ldr	r3, [r3, #24]
800282a4:	e1a01003 	mov	r1, r3
800282a8:	e59f00f8 	ldr	r0, [pc, #248]	@ 800283a8 <dump_trapframe+0x16c>
800282ac:	ebffe578 	bl	80021894 <cprintf>
800282b0:	e51b3008 	ldr	r3, [fp, #-8]
800282b4:	e593301c 	ldr	r3, [r3, #28]
800282b8:	e1a01003 	mov	r1, r3
800282bc:	e59f00e8 	ldr	r0, [pc, #232]	@ 800283ac <dump_trapframe+0x170>
800282c0:	ebffe573 	bl	80021894 <cprintf>
800282c4:	e51b3008 	ldr	r3, [fp, #-8]
800282c8:	e5933020 	ldr	r3, [r3, #32]
800282cc:	e1a01003 	mov	r1, r3
800282d0:	e59f00d8 	ldr	r0, [pc, #216]	@ 800283b0 <dump_trapframe+0x174>
800282d4:	ebffe56e 	bl	80021894 <cprintf>
800282d8:	e51b3008 	ldr	r3, [fp, #-8]
800282dc:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800282e0:	e1a01003 	mov	r1, r3
800282e4:	e59f00c8 	ldr	r0, [pc, #200]	@ 800283b4 <dump_trapframe+0x178>
800282e8:	ebffe569 	bl	80021894 <cprintf>
800282ec:	e51b3008 	ldr	r3, [fp, #-8]
800282f0:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
800282f4:	e1a01003 	mov	r1, r3
800282f8:	e59f00b8 	ldr	r0, [pc, #184]	@ 800283b8 <dump_trapframe+0x17c>
800282fc:	ebffe564 	bl	80021894 <cprintf>
80028300:	e51b3008 	ldr	r3, [fp, #-8]
80028304:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80028308:	e1a01003 	mov	r1, r3
8002830c:	e59f00a8 	ldr	r0, [pc, #168]	@ 800283bc <dump_trapframe+0x180>
80028310:	ebffe55f 	bl	80021894 <cprintf>
80028314:	e51b3008 	ldr	r3, [fp, #-8]
80028318:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
8002831c:	e1a01003 	mov	r1, r3
80028320:	e59f0098 	ldr	r0, [pc, #152]	@ 800283c0 <dump_trapframe+0x184>
80028324:	ebffe55a 	bl	80021894 <cprintf>
80028328:	e51b3008 	ldr	r3, [fp, #-8]
8002832c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028330:	e1a01003 	mov	r1, r3
80028334:	e59f0088 	ldr	r0, [pc, #136]	@ 800283c4 <dump_trapframe+0x188>
80028338:	ebffe555 	bl	80021894 <cprintf>
8002833c:	e51b3008 	ldr	r3, [fp, #-8]
80028340:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80028344:	e1a01003 	mov	r1, r3
80028348:	e59f0078 	ldr	r0, [pc, #120]	@ 800283c8 <dump_trapframe+0x18c>
8002834c:	ebffe550 	bl	80021894 <cprintf>
80028350:	e51b3008 	ldr	r3, [fp, #-8]
80028354:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80028358:	e1a01003 	mov	r1, r3
8002835c:	e59f0068 	ldr	r0, [pc, #104]	@ 800283cc <dump_trapframe+0x190>
80028360:	ebffe54b 	bl	80021894 <cprintf>
80028364:	e51b3008 	ldr	r3, [fp, #-8]
80028368:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
8002836c:	e1a01003 	mov	r1, r3
80028370:	e59f0058 	ldr	r0, [pc, #88]	@ 800283d0 <dump_trapframe+0x194>
80028374:	ebffe546 	bl	80021894 <cprintf>
80028378:	e51b3008 	ldr	r3, [fp, #-8]
8002837c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028380:	e1a01003 	mov	r1, r3
80028384:	e59f0048 	ldr	r0, [pc, #72]	@ 800283d4 <dump_trapframe+0x198>
80028388:	ebffe541 	bl	80021894 <cprintf>
8002838c:	e1a00000 	nop			@ (mov r0, r0)
80028390:	e24bd004 	sub	sp, fp, #4
80028394:	e8bd8800 	pop	{fp, pc}
80028398:	80029f48 	.word	0x80029f48
8002839c:	80029f58 	.word	0x80029f58
800283a0:	80029f68 	.word	0x80029f68
800283a4:	80029f78 	.word	0x80029f78
800283a8:	80029f88 	.word	0x80029f88
800283ac:	80029f98 	.word	0x80029f98
800283b0:	80029fa8 	.word	0x80029fa8
800283b4:	80029fb8 	.word	0x80029fb8
800283b8:	80029fc8 	.word	0x80029fc8
800283bc:	80029fd8 	.word	0x80029fd8
800283c0:	80029fe8 	.word	0x80029fe8
800283c4:	80029ff8 	.word	0x80029ff8
800283c8:	8002a008 	.word	0x8002a008
800283cc:	8002a018 	.word	0x8002a018
800283d0:	8002a028 	.word	0x8002a028
800283d4:	8002a038 	.word	0x8002a038

800283d8 <v2p>:
800283d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800283dc:	e28db000 	add	fp, sp, #0
800283e0:	e24dd00c 	sub	sp, sp, #12
800283e4:	e50b0008 	str	r0, [fp, #-8]
800283e8:	e51b3008 	ldr	r3, [fp, #-8]
800283ec:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800283f0:	e1a00003 	mov	r0, r3
800283f4:	e28bd000 	add	sp, fp, #0
800283f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800283fc:	e12fff1e 	bx	lr

80028400 <p2v>:
80028400:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028404:	e28db000 	add	fp, sp, #0
80028408:	e24dd00c 	sub	sp, sp, #12
8002840c:	e50b0008 	str	r0, [fp, #-8]
80028410:	e51b3008 	ldr	r3, [fp, #-8]
80028414:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028418:	e1a00003 	mov	r0, r3
8002841c:	e28bd000 	add	sp, fp, #0
80028420:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028424:	e12fff1e 	bx	lr

80028428 <init_vmm>:
80028428:	e92d4800 	push	{fp, lr}
8002842c:	e28db004 	add	fp, sp, #4
80028430:	e59f1018 	ldr	r1, [pc, #24]	@ 80028450 <init_vmm+0x28>
80028434:	e59f0018 	ldr	r0, [pc, #24]	@ 80028454 <init_vmm+0x2c>
80028438:	ebfff7c5 	bl	80026354 <initlock>
8002843c:	e59f3010 	ldr	r3, [pc, #16]	@ 80028454 <init_vmm+0x2c>
80028440:	e3a02000 	mov	r2, #0
80028444:	e5832034 	str	r2, [r3, #52]	@ 0x34
80028448:	e1a00000 	nop			@ (mov r0, r0)
8002844c:	e8bd8800 	pop	{fp, pc}
80028450:	8002a04c 	.word	0x8002a04c
80028454:	800b0db8 	.word	0x800b0db8

80028458 <_kpt_free>:
80028458:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002845c:	e28db000 	add	fp, sp, #0
80028460:	e24dd014 	sub	sp, sp, #20
80028464:	e50b0010 	str	r0, [fp, #-16]
80028468:	e51b3010 	ldr	r3, [fp, #-16]
8002846c:	e50b3008 	str	r3, [fp, #-8]
80028470:	e59f3024 	ldr	r3, [pc, #36]	@ 8002849c <_kpt_free+0x44>
80028474:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80028478:	e51b3008 	ldr	r3, [fp, #-8]
8002847c:	e5832000 	str	r2, [r3]
80028480:	e59f2014 	ldr	r2, [pc, #20]	@ 8002849c <_kpt_free+0x44>
80028484:	e51b3008 	ldr	r3, [fp, #-8]
80028488:	e5823034 	str	r3, [r2, #52]	@ 0x34
8002848c:	e1a00000 	nop			@ (mov r0, r0)
80028490:	e28bd000 	add	sp, fp, #0
80028494:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028498:	e12fff1e 	bx	lr
8002849c:	800b0db8 	.word	0x800b0db8

800284a0 <kpt_free>:
800284a0:	e92d4800 	push	{fp, lr}
800284a4:	e28db004 	add	fp, sp, #4
800284a8:	e24dd008 	sub	sp, sp, #8
800284ac:	e50b0008 	str	r0, [fp, #-8]
800284b0:	e51b3008 	ldr	r3, [fp, #-8]
800284b4:	e59f2034 	ldr	r2, [pc, #52]	@ 800284f0 <kpt_free+0x50>
800284b8:	e1530002 	cmp	r3, r2
800284bc:	9a000003 	bls	800284d0 <kpt_free+0x30>
800284c0:	e3a0100a 	mov	r1, #10
800284c4:	e51b0008 	ldr	r0, [fp, #-8]
800284c8:	ebffe42c 	bl	80021580 <kfree>
800284cc:	ea000005 	b	800284e8 <kpt_free+0x48>
800284d0:	e59f001c 	ldr	r0, [pc, #28]	@ 800284f4 <kpt_free+0x54>
800284d4:	ebfff7b0 	bl	8002639c <acquire>
800284d8:	e51b0008 	ldr	r0, [fp, #-8]
800284dc:	ebffffdd 	bl	80028458 <_kpt_free>
800284e0:	e59f000c 	ldr	r0, [pc, #12]	@ 800284f4 <kpt_free+0x54>
800284e4:	ebfff7b7 	bl	800263c8 <release>
800284e8:	e24bd004 	sub	sp, fp, #4
800284ec:	e8bd8800 	pop	{fp, pc}
800284f0:	800fffff 	.word	0x800fffff
800284f4:	800b0db8 	.word	0x800b0db8

800284f8 <kpt_freerange>:
800284f8:	e92d4800 	push	{fp, lr}
800284fc:	e28db004 	add	fp, sp, #4
80028500:	e24dd008 	sub	sp, sp, #8
80028504:	e50b0008 	str	r0, [fp, #-8]
80028508:	e50b100c 	str	r1, [fp, #-12]
8002850c:	ea000005 	b	80028528 <kpt_freerange+0x30>
80028510:	e51b3008 	ldr	r3, [fp, #-8]
80028514:	e1a00003 	mov	r0, r3
80028518:	ebffffce 	bl	80028458 <_kpt_free>
8002851c:	e51b3008 	ldr	r3, [fp, #-8]
80028520:	e2833b01 	add	r3, r3, #1024	@ 0x400
80028524:	e50b3008 	str	r3, [fp, #-8]
80028528:	e51b2008 	ldr	r2, [fp, #-8]
8002852c:	e51b300c 	ldr	r3, [fp, #-12]
80028530:	e1520003 	cmp	r2, r3
80028534:	3afffff5 	bcc	80028510 <kpt_freerange+0x18>
80028538:	e1a00000 	nop			@ (mov r0, r0)
8002853c:	e1a00000 	nop			@ (mov r0, r0)
80028540:	e24bd004 	sub	sp, fp, #4
80028544:	e8bd8800 	pop	{fp, pc}

80028548 <kpt_alloc>:
80028548:	e92d4800 	push	{fp, lr}
8002854c:	e28db004 	add	fp, sp, #4
80028550:	e24dd008 	sub	sp, sp, #8
80028554:	e59f007c 	ldr	r0, [pc, #124]	@ 800285d8 <kpt_alloc+0x90>
80028558:	ebfff78f 	bl	8002639c <acquire>
8002855c:	e59f3074 	ldr	r3, [pc, #116]	@ 800285d8 <kpt_alloc+0x90>
80028560:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028564:	e50b3008 	str	r3, [fp, #-8]
80028568:	e51b3008 	ldr	r3, [fp, #-8]
8002856c:	e3530000 	cmp	r3, #0
80028570:	0a000003 	beq	80028584 <kpt_alloc+0x3c>
80028574:	e51b3008 	ldr	r3, [fp, #-8]
80028578:	e5933000 	ldr	r3, [r3]
8002857c:	e59f2054 	ldr	r2, [pc, #84]	@ 800285d8 <kpt_alloc+0x90>
80028580:	e5823034 	str	r3, [r2, #52]	@ 0x34
80028584:	e59f004c 	ldr	r0, [pc, #76]	@ 800285d8 <kpt_alloc+0x90>
80028588:	ebfff78e 	bl	800263c8 <release>
8002858c:	e51b3008 	ldr	r3, [fp, #-8]
80028590:	e3530000 	cmp	r3, #0
80028594:	1a000007 	bne	800285b8 <kpt_alloc+0x70>
80028598:	e3a0000a 	mov	r0, #10
8002859c:	ebffe3a0 	bl	80021424 <kmalloc>
800285a0:	e50b0008 	str	r0, [fp, #-8]
800285a4:	e51b3008 	ldr	r3, [fp, #-8]
800285a8:	e3530000 	cmp	r3, #0
800285ac:	1a000001 	bne	800285b8 <kpt_alloc+0x70>
800285b0:	e59f0024 	ldr	r0, [pc, #36]	@ 800285dc <kpt_alloc+0x94>
800285b4:	ebffe54e 	bl	80021af4 <panic>
800285b8:	e3a02b01 	mov	r2, #1024	@ 0x400
800285bc:	e3a01000 	mov	r1, #0
800285c0:	e51b0008 	ldr	r0, [fp, #-8]
800285c4:	ebffde8d 	bl	80020000 <memset>
800285c8:	e51b3008 	ldr	r3, [fp, #-8]
800285cc:	e1a00003 	mov	r0, r3
800285d0:	e24bd004 	sub	sp, fp, #4
800285d4:	e8bd8800 	pop	{fp, pc}
800285d8:	800b0db8 	.word	0x800b0db8
800285dc:	8002a050 	.word	0x8002a050

800285e0 <walkpgdir>:
800285e0:	e92d4800 	push	{fp, lr}
800285e4:	e28db004 	add	fp, sp, #4
800285e8:	e24dd018 	sub	sp, sp, #24
800285ec:	e50b0010 	str	r0, [fp, #-16]
800285f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800285f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800285f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800285fc:	e1a03a23 	lsr	r3, r3, #20
80028600:	e1a03103 	lsl	r3, r3, #2
80028604:	e51b2010 	ldr	r2, [fp, #-16]
80028608:	e0823003 	add	r3, r2, r3
8002860c:	e50b300c 	str	r3, [fp, #-12]
80028610:	e51b300c 	ldr	r3, [fp, #-12]
80028614:	e5933000 	ldr	r3, [r3]
80028618:	e2033003 	and	r3, r3, #3
8002861c:	e3530000 	cmp	r3, #0
80028620:	0a000007 	beq	80028644 <walkpgdir+0x64>
80028624:	e51b300c 	ldr	r3, [fp, #-12]
80028628:	e5933000 	ldr	r3, [r3]
8002862c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028630:	e3c33003 	bic	r3, r3, #3
80028634:	e1a00003 	mov	r0, r3
80028638:	ebffff70 	bl	80028400 <p2v>
8002863c:	e50b0008 	str	r0, [fp, #-8]
80028640:	ea000013 	b	80028694 <walkpgdir+0xb4>
80028644:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028648:	e3530000 	cmp	r3, #0
8002864c:	0a000004 	beq	80028664 <walkpgdir+0x84>
80028650:	ebffffbc 	bl	80028548 <kpt_alloc>
80028654:	e50b0008 	str	r0, [fp, #-8]
80028658:	e51b3008 	ldr	r3, [fp, #-8]
8002865c:	e3530000 	cmp	r3, #0
80028660:	1a000001 	bne	8002866c <walkpgdir+0x8c>
80028664:	e3a03000 	mov	r3, #0
80028668:	ea00000f 	b	800286ac <walkpgdir+0xcc>
8002866c:	e3a02b01 	mov	r2, #1024	@ 0x400
80028670:	e3a01000 	mov	r1, #0
80028674:	e51b0008 	ldr	r0, [fp, #-8]
80028678:	ebffde60 	bl	80020000 <memset>
8002867c:	e51b0008 	ldr	r0, [fp, #-8]
80028680:	ebffff54 	bl	800283d8 <v2p>
80028684:	e1a03000 	mov	r3, r0
80028688:	e3832001 	orr	r2, r3, #1
8002868c:	e51b300c 	ldr	r3, [fp, #-12]
80028690:	e5832000 	str	r2, [r3]
80028694:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028698:	e1a03623 	lsr	r3, r3, #12
8002869c:	e6ef3073 	uxtb	r3, r3
800286a0:	e1a03103 	lsl	r3, r3, #2
800286a4:	e51b2008 	ldr	r2, [fp, #-8]
800286a8:	e0823003 	add	r3, r2, r3
800286ac:	e1a00003 	mov	r0, r3
800286b0:	e24bd004 	sub	sp, fp, #4
800286b4:	e8bd8800 	pop	{fp, pc}

800286b8 <mappages>:
800286b8:	e92d4800 	push	{fp, lr}
800286bc:	e28db004 	add	fp, sp, #4
800286c0:	e24dd020 	sub	sp, sp, #32
800286c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800286c8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800286cc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800286d0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800286d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800286d8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800286dc:	e3c3300f 	bic	r3, r3, #15
800286e0:	e50b3008 	str	r3, [fp, #-8]
800286e4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800286e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800286ec:	e0823003 	add	r3, r2, r3
800286f0:	e2433001 	sub	r3, r3, #1
800286f4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800286f8:	e3c3300f 	bic	r3, r3, #15
800286fc:	e50b300c 	str	r3, [fp, #-12]
80028700:	e3a02001 	mov	r2, #1
80028704:	e51b1008 	ldr	r1, [fp, #-8]
80028708:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002870c:	ebffffb3 	bl	800285e0 <walkpgdir>
80028710:	e50b0010 	str	r0, [fp, #-16]
80028714:	e51b3010 	ldr	r3, [fp, #-16]
80028718:	e3530000 	cmp	r3, #0
8002871c:	1a000001 	bne	80028728 <mappages+0x70>
80028720:	e3e03000 	mvn	r3, #0
80028724:	ea00001b 	b	80028798 <mappages+0xe0>
80028728:	e51b3010 	ldr	r3, [fp, #-16]
8002872c:	e5933000 	ldr	r3, [r3]
80028730:	e2033003 	and	r3, r3, #3
80028734:	e3530000 	cmp	r3, #0
80028738:	0a000001 	beq	80028744 <mappages+0x8c>
8002873c:	e59f0060 	ldr	r0, [pc, #96]	@ 800287a4 <mappages+0xec>
80028740:	ebffe4eb 	bl	80021af4 <panic>
80028744:	e59b3004 	ldr	r3, [fp, #4]
80028748:	e1a03203 	lsl	r3, r3, #4
8002874c:	e2032030 	and	r2, r3, #48	@ 0x30
80028750:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028754:	e1823003 	orr	r3, r2, r3
80028758:	e383200e 	orr	r2, r3, #14
8002875c:	e51b3010 	ldr	r3, [fp, #-16]
80028760:	e5832000 	str	r2, [r3]
80028764:	e51b2008 	ldr	r2, [fp, #-8]
80028768:	e51b300c 	ldr	r3, [fp, #-12]
8002876c:	e1520003 	cmp	r2, r3
80028770:	0a000006 	beq	80028790 <mappages+0xd8>
80028774:	e51b3008 	ldr	r3, [fp, #-8]
80028778:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002877c:	e50b3008 	str	r3, [fp, #-8]
80028780:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028784:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028788:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002878c:	eaffffdb 	b	80028700 <mappages+0x48>
80028790:	e1a00000 	nop			@ (mov r0, r0)
80028794:	e3a03000 	mov	r3, #0
80028798:	e1a00003 	mov	r0, r3
8002879c:	e24bd004 	sub	sp, fp, #4
800287a0:	e8bd8800 	pop	{fp, pc}
800287a4:	8002a060 	.word	0x8002a060

800287a8 <flush_tlb>:
800287a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800287ac:	e28db000 	add	fp, sp, #0
800287b0:	e24dd00c 	sub	sp, sp, #12
800287b4:	e3a03000 	mov	r3, #0
800287b8:	e50b3008 	str	r3, [fp, #-8]
800287bc:	e51b3008 	ldr	r3, [fp, #-8]
800287c0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
800287c4:	e51b3008 	ldr	r3, [fp, #-8]
800287c8:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
800287cc:	e51b3008 	ldr	r3, [fp, #-8]
800287d0:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
800287d4:	e1a00000 	nop			@ (mov r0, r0)
800287d8:	e28bd000 	add	sp, fp, #0
800287dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800287e0:	e12fff1e 	bx	lr

800287e4 <switchuvm>:
800287e4:	e92d4800 	push	{fp, lr}
800287e8:	e28db004 	add	fp, sp, #4
800287ec:	e24dd010 	sub	sp, sp, #16
800287f0:	e50b0010 	str	r0, [fp, #-16]
800287f4:	ebffdf8c 	bl	8002062c <pushcli>
800287f8:	e51b3010 	ldr	r3, [fp, #-16]
800287fc:	e5933004 	ldr	r3, [r3, #4]
80028800:	e3530000 	cmp	r3, #0
80028804:	1a000001 	bne	80028810 <switchuvm+0x2c>
80028808:	e59f002c 	ldr	r0, [pc, #44]	@ 8002883c <switchuvm+0x58>
8002880c:	ebffe4b8 	bl	80021af4 <panic>
80028810:	e51b3010 	ldr	r3, [fp, #-16]
80028814:	e5933004 	ldr	r3, [r3, #4]
80028818:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
8002881c:	e50b3008 	str	r3, [fp, #-8]
80028820:	e51b3008 	ldr	r3, [fp, #-8]
80028824:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80028828:	ebffffde 	bl	800287a8 <flush_tlb>
8002882c:	ebffdf93 	bl	80020680 <popcli>
80028830:	e1a00000 	nop			@ (mov r0, r0)
80028834:	e24bd004 	sub	sp, fp, #4
80028838:	e8bd8800 	pop	{fp, pc}
8002883c:	8002a068 	.word	0x8002a068

80028840 <inituvm>:
80028840:	e92d4800 	push	{fp, lr}
80028844:	e28db004 	add	fp, sp, #4
80028848:	e24dd020 	sub	sp, sp, #32
8002884c:	e50b0010 	str	r0, [fp, #-16]
80028850:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028854:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028858:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002885c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028860:	3a000001 	bcc	8002886c <inituvm+0x2c>
80028864:	e59f0058 	ldr	r0, [pc, #88]	@ 800288c4 <inituvm+0x84>
80028868:	ebffe4a1 	bl	80021af4 <panic>
8002886c:	ebffe36f 	bl	80021630 <alloc_page>
80028870:	e50b0008 	str	r0, [fp, #-8]
80028874:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028878:	e3a01000 	mov	r1, #0
8002887c:	e51b0008 	ldr	r0, [fp, #-8]
80028880:	ebffddde 	bl	80020000 <memset>
80028884:	e51b0008 	ldr	r0, [fp, #-8]
80028888:	ebfffed2 	bl	800283d8 <v2p>
8002888c:	e1a03000 	mov	r3, r0
80028890:	e3a02003 	mov	r2, #3
80028894:	e58d2000 	str	r2, [sp]
80028898:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002889c:	e3a01000 	mov	r1, #0
800288a0:	e51b0010 	ldr	r0, [fp, #-16]
800288a4:	ebffff83 	bl	800286b8 <mappages>
800288a8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800288ac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800288b0:	e51b0008 	ldr	r0, [fp, #-8]
800288b4:	ebffde43 	bl	800201c8 <memmove>
800288b8:	e1a00000 	nop			@ (mov r0, r0)
800288bc:	e24bd004 	sub	sp, fp, #4
800288c0:	e8bd8800 	pop	{fp, pc}
800288c4:	8002a07c 	.word	0x8002a07c

800288c8 <loaduvm>:
800288c8:	e92d4800 	push	{fp, lr}
800288cc:	e28db004 	add	fp, sp, #4
800288d0:	e24dd020 	sub	sp, sp, #32
800288d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800288d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800288dc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800288e0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800288e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800288e8:	e1a03a03 	lsl	r3, r3, #20
800288ec:	e1a03a23 	lsr	r3, r3, #20
800288f0:	e3530000 	cmp	r3, #0
800288f4:	0a000001 	beq	80028900 <loaduvm+0x38>
800288f8:	e59f00f0 	ldr	r0, [pc, #240]	@ 800289f0 <loaduvm+0x128>
800288fc:	ebffe47c 	bl	80021af4 <panic>
80028900:	e3a03000 	mov	r3, #0
80028904:	e50b3008 	str	r3, [fp, #-8]
80028908:	ea000030 	b	800289d0 <loaduvm+0x108>
8002890c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028910:	e51b3008 	ldr	r3, [fp, #-8]
80028914:	e0823003 	add	r3, r2, r3
80028918:	e3a02000 	mov	r2, #0
8002891c:	e1a01003 	mov	r1, r3
80028920:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028924:	ebffff2d 	bl	800285e0 <walkpgdir>
80028928:	e50b0010 	str	r0, [fp, #-16]
8002892c:	e51b3010 	ldr	r3, [fp, #-16]
80028930:	e3530000 	cmp	r3, #0
80028934:	1a000001 	bne	80028940 <loaduvm+0x78>
80028938:	e59f00b4 	ldr	r0, [pc, #180]	@ 800289f4 <loaduvm+0x12c>
8002893c:	ebffe46c 	bl	80021af4 <panic>
80028940:	e51b3010 	ldr	r3, [fp, #-16]
80028944:	e5933000 	ldr	r3, [r3]
80028948:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002894c:	e3c3300f 	bic	r3, r3, #15
80028950:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028954:	e59b2004 	ldr	r2, [fp, #4]
80028958:	e51b3008 	ldr	r3, [fp, #-8]
8002895c:	e0423003 	sub	r3, r2, r3
80028960:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028964:	2a000004 	bcs	8002897c <loaduvm+0xb4>
80028968:	e59b2004 	ldr	r2, [fp, #4]
8002896c:	e51b3008 	ldr	r3, [fp, #-8]
80028970:	e0423003 	sub	r3, r2, r3
80028974:	e50b300c 	str	r3, [fp, #-12]
80028978:	ea000001 	b	80028984 <loaduvm+0xbc>
8002897c:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028980:	e50b300c 	str	r3, [fp, #-12]
80028984:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028988:	ebfffe9c 	bl	80028400 <p2v>
8002898c:	e1a01000 	mov	r1, r0
80028990:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028994:	e51b3008 	ldr	r3, [fp, #-8]
80028998:	e0822003 	add	r2, r2, r3
8002899c:	e51b300c 	ldr	r3, [fp, #-12]
800289a0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800289a4:	ebffec6c 	bl	80023b5c <readi>
800289a8:	e1a03000 	mov	r3, r0
800289ac:	e1a02003 	mov	r2, r3
800289b0:	e51b300c 	ldr	r3, [fp, #-12]
800289b4:	e1530002 	cmp	r3, r2
800289b8:	0a000001 	beq	800289c4 <loaduvm+0xfc>
800289bc:	e3e03000 	mvn	r3, #0
800289c0:	ea000007 	b	800289e4 <loaduvm+0x11c>
800289c4:	e51b3008 	ldr	r3, [fp, #-8]
800289c8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800289cc:	e50b3008 	str	r3, [fp, #-8]
800289d0:	e51b2008 	ldr	r2, [fp, #-8]
800289d4:	e59b3004 	ldr	r3, [fp, #4]
800289d8:	e1520003 	cmp	r2, r3
800289dc:	3affffca 	bcc	8002890c <loaduvm+0x44>
800289e0:	e3a03000 	mov	r3, #0
800289e4:	e1a00003 	mov	r0, r3
800289e8:	e24bd004 	sub	sp, fp, #4
800289ec:	e8bd8800 	pop	{fp, pc}
800289f0:	8002a098 	.word	0x8002a098
800289f4:	8002a0bc 	.word	0x8002a0bc

800289f8 <allocuvm>:
800289f8:	e92d4810 	push	{r4, fp, lr}
800289fc:	e28db008 	add	fp, sp, #8
80028a00:	e24dd024 	sub	sp, sp, #36	@ 0x24
80028a04:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028a08:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028a0c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028a10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028a14:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028a18:	9a000001 	bls	80028a24 <allocuvm+0x2c>
80028a1c:	e3a03000 	mov	r3, #0
80028a20:	ea00002f 	b	80028ae4 <allocuvm+0xec>
80028a24:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028a28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028a2c:	e1520003 	cmp	r2, r3
80028a30:	2a000001 	bcs	80028a3c <allocuvm+0x44>
80028a34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028a38:	ea000029 	b	80028ae4 <allocuvm+0xec>
80028a3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028a40:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028a44:	e283300f 	add	r3, r3, #15
80028a48:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028a4c:	e3c3300f 	bic	r3, r3, #15
80028a50:	e50b3010 	str	r3, [fp, #-16]
80028a54:	ea00001d 	b	80028ad0 <allocuvm+0xd8>
80028a58:	ebffe2f4 	bl	80021630 <alloc_page>
80028a5c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028a60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028a64:	e3530000 	cmp	r3, #0
80028a68:	1a000007 	bne	80028a8c <allocuvm+0x94>
80028a6c:	e59f007c 	ldr	r0, [pc, #124]	@ 80028af0 <allocuvm+0xf8>
80028a70:	ebffe387 	bl	80021894 <cprintf>
80028a74:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028a78:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80028a7c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028a80:	eb00001b 	bl	80028af4 <deallocuvm>
80028a84:	e3a03000 	mov	r3, #0
80028a88:	ea000015 	b	80028ae4 <allocuvm+0xec>
80028a8c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028a90:	e3a01000 	mov	r1, #0
80028a94:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028a98:	ebffdd58 	bl	80020000 <memset>
80028a9c:	e51b4010 	ldr	r4, [fp, #-16]
80028aa0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028aa4:	ebfffe4b 	bl	800283d8 <v2p>
80028aa8:	e1a03000 	mov	r3, r0
80028aac:	e3a02003 	mov	r2, #3
80028ab0:	e58d2000 	str	r2, [sp]
80028ab4:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028ab8:	e1a01004 	mov	r1, r4
80028abc:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028ac0:	ebfffefc 	bl	800286b8 <mappages>
80028ac4:	e51b3010 	ldr	r3, [fp, #-16]
80028ac8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028acc:	e50b3010 	str	r3, [fp, #-16]
80028ad0:	e51b2010 	ldr	r2, [fp, #-16]
80028ad4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028ad8:	e1520003 	cmp	r2, r3
80028adc:	3affffdd 	bcc	80028a58 <allocuvm+0x60>
80028ae0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028ae4:	e1a00003 	mov	r0, r3
80028ae8:	e24bd008 	sub	sp, fp, #8
80028aec:	e8bd8810 	pop	{r4, fp, pc}
80028af0:	8002a0dc 	.word	0x8002a0dc

80028af4 <deallocuvm>:
80028af4:	e92d4800 	push	{fp, lr}
80028af8:	e28db004 	add	fp, sp, #4
80028afc:	e24dd020 	sub	sp, sp, #32
80028b00:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028b04:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028b08:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028b0c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028b10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028b14:	e1520003 	cmp	r2, r3
80028b18:	3a000001 	bcc	80028b24 <deallocuvm+0x30>
80028b1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028b20:	ea000035 	b	80028bfc <deallocuvm+0x108>
80028b24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028b28:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028b2c:	e283300f 	add	r3, r3, #15
80028b30:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028b34:	e3c3300f 	bic	r3, r3, #15
80028b38:	e50b3008 	str	r3, [fp, #-8]
80028b3c:	ea000029 	b	80028be8 <deallocuvm+0xf4>
80028b40:	e51b3008 	ldr	r3, [fp, #-8]
80028b44:	e3a02000 	mov	r2, #0
80028b48:	e1a01003 	mov	r1, r3
80028b4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028b50:	ebfffea2 	bl	800285e0 <walkpgdir>
80028b54:	e50b000c 	str	r0, [fp, #-12]
80028b58:	e51b300c 	ldr	r3, [fp, #-12]
80028b5c:	e3530000 	cmp	r3, #0
80028b60:	1a000006 	bne	80028b80 <deallocuvm+0x8c>
80028b64:	e51b3008 	ldr	r3, [fp, #-8]
80028b68:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80028b6c:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028b70:	e1a03a23 	lsr	r3, r3, #20
80028b74:	e1a03a03 	lsl	r3, r3, #20
80028b78:	e50b3008 	str	r3, [fp, #-8]
80028b7c:	ea000016 	b	80028bdc <deallocuvm+0xe8>
80028b80:	e51b300c 	ldr	r3, [fp, #-12]
80028b84:	e5933000 	ldr	r3, [r3]
80028b88:	e2033003 	and	r3, r3, #3
80028b8c:	e3530000 	cmp	r3, #0
80028b90:	0a000011 	beq	80028bdc <deallocuvm+0xe8>
80028b94:	e51b300c 	ldr	r3, [fp, #-12]
80028b98:	e5933000 	ldr	r3, [r3]
80028b9c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028ba0:	e3c3300f 	bic	r3, r3, #15
80028ba4:	e50b3010 	str	r3, [fp, #-16]
80028ba8:	e51b3010 	ldr	r3, [fp, #-16]
80028bac:	e3530000 	cmp	r3, #0
80028bb0:	1a000001 	bne	80028bbc <deallocuvm+0xc8>
80028bb4:	e59f004c 	ldr	r0, [pc, #76]	@ 80028c08 <deallocuvm+0x114>
80028bb8:	ebffe3cd 	bl	80021af4 <panic>
80028bbc:	e51b0010 	ldr	r0, [fp, #-16]
80028bc0:	ebfffe0e 	bl	80028400 <p2v>
80028bc4:	e1a03000 	mov	r3, r0
80028bc8:	e1a00003 	mov	r0, r3
80028bcc:	ebffe28d 	bl	80021608 <free_page>
80028bd0:	e51b300c 	ldr	r3, [fp, #-12]
80028bd4:	e3a02000 	mov	r2, #0
80028bd8:	e5832000 	str	r2, [r3]
80028bdc:	e51b3008 	ldr	r3, [fp, #-8]
80028be0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028be4:	e50b3008 	str	r3, [fp, #-8]
80028be8:	e51b2008 	ldr	r2, [fp, #-8]
80028bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028bf0:	e1520003 	cmp	r2, r3
80028bf4:	3affffd1 	bcc	80028b40 <deallocuvm+0x4c>
80028bf8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028bfc:	e1a00003 	mov	r0, r3
80028c00:	e24bd004 	sub	sp, fp, #4
80028c04:	e8bd8800 	pop	{fp, pc}
80028c08:	8002a0f4 	.word	0x8002a0f4

80028c0c <freevm>:
80028c0c:	e92d4800 	push	{fp, lr}
80028c10:	e28db004 	add	fp, sp, #4
80028c14:	e24dd010 	sub	sp, sp, #16
80028c18:	e50b0010 	str	r0, [fp, #-16]
80028c1c:	e51b3010 	ldr	r3, [fp, #-16]
80028c20:	e3530000 	cmp	r3, #0
80028c24:	1a000001 	bne	80028c30 <freevm+0x24>
80028c28:	e59f0098 	ldr	r0, [pc, #152]	@ 80028cc8 <freevm+0xbc>
80028c2c:	ebffe3b0 	bl	80021af4 <panic>
80028c30:	e3a02000 	mov	r2, #0
80028c34:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028c38:	e51b0010 	ldr	r0, [fp, #-16]
80028c3c:	ebffffac 	bl	80028af4 <deallocuvm>
80028c40:	e3a03000 	mov	r3, #0
80028c44:	e50b3008 	str	r3, [fp, #-8]
80028c48:	ea000016 	b	80028ca8 <freevm+0x9c>
80028c4c:	e51b3008 	ldr	r3, [fp, #-8]
80028c50:	e1a03103 	lsl	r3, r3, #2
80028c54:	e51b2010 	ldr	r2, [fp, #-16]
80028c58:	e0823003 	add	r3, r2, r3
80028c5c:	e5933000 	ldr	r3, [r3]
80028c60:	e2033003 	and	r3, r3, #3
80028c64:	e3530000 	cmp	r3, #0
80028c68:	0a00000b 	beq	80028c9c <freevm+0x90>
80028c6c:	e51b3008 	ldr	r3, [fp, #-8]
80028c70:	e1a03103 	lsl	r3, r3, #2
80028c74:	e51b2010 	ldr	r2, [fp, #-16]
80028c78:	e0823003 	add	r3, r2, r3
80028c7c:	e5933000 	ldr	r3, [r3]
80028c80:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028c84:	e3c33003 	bic	r3, r3, #3
80028c88:	e1a00003 	mov	r0, r3
80028c8c:	ebfffddb 	bl	80028400 <p2v>
80028c90:	e50b000c 	str	r0, [fp, #-12]
80028c94:	e51b000c 	ldr	r0, [fp, #-12]
80028c98:	ebfffe00 	bl	800284a0 <kpt_free>
80028c9c:	e51b3008 	ldr	r3, [fp, #-8]
80028ca0:	e2833001 	add	r3, r3, #1
80028ca4:	e50b3008 	str	r3, [fp, #-8]
80028ca8:	e51b3008 	ldr	r3, [fp, #-8]
80028cac:	e35300ff 	cmp	r3, #255	@ 0xff
80028cb0:	9affffe5 	bls	80028c4c <freevm+0x40>
80028cb4:	e51b0010 	ldr	r0, [fp, #-16]
80028cb8:	ebfffdf8 	bl	800284a0 <kpt_free>
80028cbc:	e1a00000 	nop			@ (mov r0, r0)
80028cc0:	e24bd004 	sub	sp, fp, #4
80028cc4:	e8bd8800 	pop	{fp, pc}
80028cc8:	8002a100 	.word	0x8002a100

80028ccc <clearpteu>:
80028ccc:	e92d4800 	push	{fp, lr}
80028cd0:	e28db004 	add	fp, sp, #4
80028cd4:	e24dd010 	sub	sp, sp, #16
80028cd8:	e50b0010 	str	r0, [fp, #-16]
80028cdc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028ce0:	e3a02000 	mov	r2, #0
80028ce4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028ce8:	e51b0010 	ldr	r0, [fp, #-16]
80028cec:	ebfffe3b 	bl	800285e0 <walkpgdir>
80028cf0:	e50b0008 	str	r0, [fp, #-8]
80028cf4:	e51b3008 	ldr	r3, [fp, #-8]
80028cf8:	e3530000 	cmp	r3, #0
80028cfc:	1a000001 	bne	80028d08 <clearpteu+0x3c>
80028d00:	e59f0024 	ldr	r0, [pc, #36]	@ 80028d2c <clearpteu+0x60>
80028d04:	ebffe37a 	bl	80021af4 <panic>
80028d08:	e51b3008 	ldr	r3, [fp, #-8]
80028d0c:	e5933000 	ldr	r3, [r3]
80028d10:	e3c33030 	bic	r3, r3, #48	@ 0x30
80028d14:	e3832010 	orr	r2, r3, #16
80028d18:	e51b3008 	ldr	r3, [fp, #-8]
80028d1c:	e5832000 	str	r2, [r3]
80028d20:	e1a00000 	nop			@ (mov r0, r0)
80028d24:	e24bd004 	sub	sp, fp, #4
80028d28:	e8bd8800 	pop	{fp, pc}
80028d2c:	8002a114 	.word	0x8002a114

80028d30 <copyuvm>:
80028d30:	e92d4810 	push	{r4, fp, lr}
80028d34:	e28db008 	add	fp, sp, #8
80028d38:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
80028d3c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80028d40:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80028d44:	ebfffdff 	bl	80028548 <kpt_alloc>
80028d48:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028d4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028d50:	e3530000 	cmp	r3, #0
80028d54:	1a000001 	bne	80028d60 <copyuvm+0x30>
80028d58:	e3a03000 	mov	r3, #0
80028d5c:	ea000047 	b	80028e80 <copyuvm+0x150>
80028d60:	e3a03000 	mov	r3, #0
80028d64:	e50b3010 	str	r3, [fp, #-16]
80028d68:	ea000038 	b	80028e50 <copyuvm+0x120>
80028d6c:	e51b3010 	ldr	r3, [fp, #-16]
80028d70:	e3a02000 	mov	r2, #0
80028d74:	e1a01003 	mov	r1, r3
80028d78:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80028d7c:	ebfffe17 	bl	800285e0 <walkpgdir>
80028d80:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028d84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028d88:	e3530000 	cmp	r3, #0
80028d8c:	1a000001 	bne	80028d98 <copyuvm+0x68>
80028d90:	e59f00f4 	ldr	r0, [pc, #244]	@ 80028e8c <copyuvm+0x15c>
80028d94:	ebffe356 	bl	80021af4 <panic>
80028d98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028d9c:	e5933000 	ldr	r3, [r3]
80028da0:	e2033003 	and	r3, r3, #3
80028da4:	e3530000 	cmp	r3, #0
80028da8:	1a000001 	bne	80028db4 <copyuvm+0x84>
80028dac:	e59f00dc 	ldr	r0, [pc, #220]	@ 80028e90 <copyuvm+0x160>
80028db0:	ebffe34f 	bl	80021af4 <panic>
80028db4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028db8:	e5933000 	ldr	r3, [r3]
80028dbc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028dc0:	e3c3300f 	bic	r3, r3, #15
80028dc4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028dc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028dcc:	e5933000 	ldr	r3, [r3]
80028dd0:	e1a03223 	lsr	r3, r3, #4
80028dd4:	e2033003 	and	r3, r3, #3
80028dd8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80028ddc:	ebffe213 	bl	80021630 <alloc_page>
80028de0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028de4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028de8:	e3530000 	cmp	r3, #0
80028dec:	0a00001d 	beq	80028e68 <copyuvm+0x138>
80028df0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80028df4:	ebfffd81 	bl	80028400 <p2v>
80028df8:	e1a03000 	mov	r3, r0
80028dfc:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028e00:	e1a01003 	mov	r1, r3
80028e04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028e08:	ebffdcee 	bl	800201c8 <memmove>
80028e0c:	e51b4010 	ldr	r4, [fp, #-16]
80028e10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028e14:	ebfffd6f 	bl	800283d8 <v2p>
80028e18:	e1a02000 	mov	r2, r0
80028e1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028e20:	e58d3000 	str	r3, [sp]
80028e24:	e1a03002 	mov	r3, r2
80028e28:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028e2c:	e1a01004 	mov	r1, r4
80028e30:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028e34:	ebfffe1f 	bl	800286b8 <mappages>
80028e38:	e1a03000 	mov	r3, r0
80028e3c:	e3530000 	cmp	r3, #0
80028e40:	ba00000a 	blt	80028e70 <copyuvm+0x140>
80028e44:	e51b3010 	ldr	r3, [fp, #-16]
80028e48:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028e4c:	e50b3010 	str	r3, [fp, #-16]
80028e50:	e51b2010 	ldr	r2, [fp, #-16]
80028e54:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80028e58:	e1520003 	cmp	r2, r3
80028e5c:	3affffc2 	bcc	80028d6c <copyuvm+0x3c>
80028e60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028e64:	ea000005 	b	80028e80 <copyuvm+0x150>
80028e68:	e1a00000 	nop			@ (mov r0, r0)
80028e6c:	ea000000 	b	80028e74 <copyuvm+0x144>
80028e70:	e1a00000 	nop			@ (mov r0, r0)
80028e74:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028e78:	ebffff63 	bl	80028c0c <freevm>
80028e7c:	e3a03000 	mov	r3, #0
80028e80:	e1a00003 	mov	r0, r3
80028e84:	e24bd008 	sub	sp, fp, #8
80028e88:	e8bd8810 	pop	{r4, fp, pc}
80028e8c:	8002a120 	.word	0x8002a120
80028e90:	8002a13c 	.word	0x8002a13c

80028e94 <uva2ka>:
80028e94:	e92d4800 	push	{fp, lr}
80028e98:	e28db004 	add	fp, sp, #4
80028e9c:	e24dd010 	sub	sp, sp, #16
80028ea0:	e50b0010 	str	r0, [fp, #-16]
80028ea4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028ea8:	e3a02000 	mov	r2, #0
80028eac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028eb0:	e51b0010 	ldr	r0, [fp, #-16]
80028eb4:	ebfffdc9 	bl	800285e0 <walkpgdir>
80028eb8:	e50b0008 	str	r0, [fp, #-8]
80028ebc:	e51b3008 	ldr	r3, [fp, #-8]
80028ec0:	e5933000 	ldr	r3, [r3]
80028ec4:	e2033003 	and	r3, r3, #3
80028ec8:	e3530000 	cmp	r3, #0
80028ecc:	1a000001 	bne	80028ed8 <uva2ka+0x44>
80028ed0:	e3a03000 	mov	r3, #0
80028ed4:	ea00000e 	b	80028f14 <uva2ka+0x80>
80028ed8:	e51b3008 	ldr	r3, [fp, #-8]
80028edc:	e5933000 	ldr	r3, [r3]
80028ee0:	e2033030 	and	r3, r3, #48	@ 0x30
80028ee4:	e3530030 	cmp	r3, #48	@ 0x30
80028ee8:	0a000001 	beq	80028ef4 <uva2ka+0x60>
80028eec:	e3a03000 	mov	r3, #0
80028ef0:	ea000007 	b	80028f14 <uva2ka+0x80>
80028ef4:	e51b3008 	ldr	r3, [fp, #-8]
80028ef8:	e5933000 	ldr	r3, [r3]
80028efc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028f00:	e3c3300f 	bic	r3, r3, #15
80028f04:	e1a00003 	mov	r0, r3
80028f08:	ebfffd3c 	bl	80028400 <p2v>
80028f0c:	e1a03000 	mov	r3, r0
80028f10:	e1a00000 	nop			@ (mov r0, r0)
80028f14:	e1a00003 	mov	r0, r3
80028f18:	e24bd004 	sub	sp, fp, #4
80028f1c:	e8bd8800 	pop	{fp, pc}

80028f20 <copyout>:
80028f20:	e92d4800 	push	{fp, lr}
80028f24:	e28db004 	add	fp, sp, #4
80028f28:	e24dd020 	sub	sp, sp, #32
80028f2c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028f30:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028f34:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028f38:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028f3c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028f40:	e50b3008 	str	r3, [fp, #-8]
80028f44:	ea00002c 	b	80028ffc <copyout+0xdc>
80028f48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028f4c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028f50:	e3c3300f 	bic	r3, r3, #15
80028f54:	e50b3010 	str	r3, [fp, #-16]
80028f58:	e51b3010 	ldr	r3, [fp, #-16]
80028f5c:	e1a01003 	mov	r1, r3
80028f60:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028f64:	ebffffca 	bl	80028e94 <uva2ka>
80028f68:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028f6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028f70:	e3530000 	cmp	r3, #0
80028f74:	1a000001 	bne	80028f80 <copyout+0x60>
80028f78:	e3e03000 	mvn	r3, #0
80028f7c:	ea000022 	b	8002900c <copyout+0xec>
80028f80:	e51b2010 	ldr	r2, [fp, #-16]
80028f84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028f88:	e0423003 	sub	r3, r2, r3
80028f8c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028f90:	e50b300c 	str	r3, [fp, #-12]
80028f94:	e51b200c 	ldr	r2, [fp, #-12]
80028f98:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028f9c:	e1520003 	cmp	r2, r3
80028fa0:	9a000001 	bls	80028fac <copyout+0x8c>
80028fa4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028fa8:	e50b300c 	str	r3, [fp, #-12]
80028fac:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028fb0:	e51b3010 	ldr	r3, [fp, #-16]
80028fb4:	e0423003 	sub	r3, r2, r3
80028fb8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028fbc:	e0823003 	add	r3, r2, r3
80028fc0:	e51b200c 	ldr	r2, [fp, #-12]
80028fc4:	e51b1008 	ldr	r1, [fp, #-8]
80028fc8:	e1a00003 	mov	r0, r3
80028fcc:	ebffdc7d 	bl	800201c8 <memmove>
80028fd0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028fd4:	e51b300c 	ldr	r3, [fp, #-12]
80028fd8:	e0423003 	sub	r3, r2, r3
80028fdc:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028fe0:	e51b2008 	ldr	r2, [fp, #-8]
80028fe4:	e51b300c 	ldr	r3, [fp, #-12]
80028fe8:	e0823003 	add	r3, r2, r3
80028fec:	e50b3008 	str	r3, [fp, #-8]
80028ff0:	e51b3010 	ldr	r3, [fp, #-16]
80028ff4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028ff8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028ffc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029000:	e3530000 	cmp	r3, #0
80029004:	1affffcf 	bne	80028f48 <copyout+0x28>
80029008:	e3a03000 	mov	r3, #0
8002900c:	e1a00003 	mov	r0, r3
80029010:	e24bd004 	sub	sp, fp, #4
80029014:	e8bd8800 	pop	{fp, pc}

80029018 <paging_init>:
80029018:	e92d4800 	push	{fp, lr}
8002901c:	e28db004 	add	fp, sp, #4
80029020:	e24dd010 	sub	sp, sp, #16
80029024:	e50b0008 	str	r0, [fp, #-8]
80029028:	e50b100c 	str	r1, [fp, #-12]
8002902c:	e59f0034 	ldr	r0, [pc, #52]	@ 80029068 <paging_init+0x50>
80029030:	e51b3008 	ldr	r3, [fp, #-8]
80029034:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029038:	e1a01003 	mov	r1, r3
8002903c:	e51b200c 	ldr	r2, [fp, #-12]
80029040:	e51b3008 	ldr	r3, [fp, #-8]
80029044:	e0422003 	sub	r2, r2, r3
80029048:	e3a03003 	mov	r3, #3
8002904c:	e58d3000 	str	r3, [sp]
80029050:	e51b3008 	ldr	r3, [fp, #-8]
80029054:	ebfffd97 	bl	800286b8 <mappages>
80029058:	ebfffdd2 	bl	800287a8 <flush_tlb>
8002905c:	e1a00000 	nop			@ (mov r0, r0)
80029060:	e24bd004 	sub	sp, fp, #4
80029064:	e8bd8800 	pop	{fp, pc}
80029068:	80014000 	.word	0x80014000

8002906c <default_isr>:
8002906c:	e92d4800 	push	{fp, lr}
80029070:	e28db004 	add	fp, sp, #4
80029074:	e24dd008 	sub	sp, sp, #8
80029078:	e50b0008 	str	r0, [fp, #-8]
8002907c:	e50b100c 	str	r1, [fp, #-12]
80029080:	e51b100c 	ldr	r1, [fp, #-12]
80029084:	e59f000c 	ldr	r0, [pc, #12]	@ 80029098 <default_isr+0x2c>
80029088:	ebffe201 	bl	80021894 <cprintf>
8002908c:	e1a00000 	nop			@ (mov r0, r0)
80029090:	e24bd004 	sub	sp, fp, #4
80029094:	e8bd8800 	pop	{fp, pc}
80029098:	8002a158 	.word	0x8002a158

8002909c <pic_init>:
8002909c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800290a0:	e28db000 	add	fp, sp, #0
800290a4:	e24dd014 	sub	sp, sp, #20
800290a8:	e50b0010 	str	r0, [fp, #-16]
800290ac:	e59f2060 	ldr	r2, [pc, #96]	@ 80029114 <pic_init+0x78>
800290b0:	e51b3010 	ldr	r3, [fp, #-16]
800290b4:	e5823000 	str	r3, [r2]
800290b8:	e59f3054 	ldr	r3, [pc, #84]	@ 80029114 <pic_init+0x78>
800290bc:	e5933000 	ldr	r3, [r3]
800290c0:	e2833014 	add	r3, r3, #20
800290c4:	e3e02000 	mvn	r2, #0
800290c8:	e5832000 	str	r2, [r3]
800290cc:	e3a03000 	mov	r3, #0
800290d0:	e50b3008 	str	r3, [fp, #-8]
800290d4:	ea000006 	b	800290f4 <pic_init+0x58>
800290d8:	e59f2038 	ldr	r2, [pc, #56]	@ 80029118 <pic_init+0x7c>
800290dc:	e51b3008 	ldr	r3, [fp, #-8]
800290e0:	e59f1034 	ldr	r1, [pc, #52]	@ 8002911c <pic_init+0x80>
800290e4:	e7821103 	str	r1, [r2, r3, lsl #2]
800290e8:	e51b3008 	ldr	r3, [fp, #-8]
800290ec:	e2833001 	add	r3, r3, #1
800290f0:	e50b3008 	str	r3, [fp, #-8]
800290f4:	e51b3008 	ldr	r3, [fp, #-8]
800290f8:	e353001f 	cmp	r3, #31
800290fc:	dafffff5 	ble	800290d8 <pic_init+0x3c>
80029100:	e1a00000 	nop			@ (mov r0, r0)
80029104:	e1a00000 	nop			@ (mov r0, r0)
80029108:	e28bd000 	add	sp, fp, #0
8002910c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029110:	e12fff1e 	bx	lr
80029114:	800b0df0 	.word	0x800b0df0
80029118:	800b0df4 	.word	0x800b0df4
8002911c:	8002906c 	.word	0x8002906c

80029120 <pic_enable>:
80029120:	e92d4800 	push	{fp, lr}
80029124:	e28db004 	add	fp, sp, #4
80029128:	e24dd008 	sub	sp, sp, #8
8002912c:	e50b0008 	str	r0, [fp, #-8]
80029130:	e50b100c 	str	r1, [fp, #-12]
80029134:	e51b3008 	ldr	r3, [fp, #-8]
80029138:	e3530000 	cmp	r3, #0
8002913c:	ba000002 	blt	8002914c <pic_enable+0x2c>
80029140:	e51b3008 	ldr	r3, [fp, #-8]
80029144:	e353001f 	cmp	r3, #31
80029148:	da000001 	ble	80029154 <pic_enable+0x34>
8002914c:	e59f0038 	ldr	r0, [pc, #56]	@ 8002918c <pic_enable+0x6c>
80029150:	ebffe267 	bl	80021af4 <panic>
80029154:	e59f1034 	ldr	r1, [pc, #52]	@ 80029190 <pic_enable+0x70>
80029158:	e51b3008 	ldr	r3, [fp, #-8]
8002915c:	e51b200c 	ldr	r2, [fp, #-12]
80029160:	e7812103 	str	r2, [r1, r3, lsl #2]
80029164:	e3a02001 	mov	r2, #1
80029168:	e51b3008 	ldr	r3, [fp, #-8]
8002916c:	e1a02312 	lsl	r2, r2, r3
80029170:	e59f301c 	ldr	r3, [pc, #28]	@ 80029194 <pic_enable+0x74>
80029174:	e5933000 	ldr	r3, [r3]
80029178:	e2833010 	add	r3, r3, #16
8002917c:	e5832000 	str	r2, [r3]
80029180:	e1a00000 	nop			@ (mov r0, r0)
80029184:	e24bd004 	sub	sp, fp, #4
80029188:	e8bd8800 	pop	{fp, pc}
8002918c:	8002a174 	.word	0x8002a174
80029190:	800b0df4 	.word	0x800b0df4
80029194:	800b0df0 	.word	0x800b0df0

80029198 <pic_disable>:
80029198:	e92d4800 	push	{fp, lr}
8002919c:	e28db004 	add	fp, sp, #4
800291a0:	e24dd008 	sub	sp, sp, #8
800291a4:	e50b0008 	str	r0, [fp, #-8]
800291a8:	e51b3008 	ldr	r3, [fp, #-8]
800291ac:	e3530000 	cmp	r3, #0
800291b0:	ba000002 	blt	800291c0 <pic_disable+0x28>
800291b4:	e51b3008 	ldr	r3, [fp, #-8]
800291b8:	e353001f 	cmp	r3, #31
800291bc:	da000001 	ble	800291c8 <pic_disable+0x30>
800291c0:	e59f0038 	ldr	r0, [pc, #56]	@ 80029200 <pic_disable+0x68>
800291c4:	ebffe24a 	bl	80021af4 <panic>
800291c8:	e3a02001 	mov	r2, #1
800291cc:	e51b3008 	ldr	r3, [fp, #-8]
800291d0:	e1a02312 	lsl	r2, r2, r3
800291d4:	e59f3028 	ldr	r3, [pc, #40]	@ 80029204 <pic_disable+0x6c>
800291d8:	e5933000 	ldr	r3, [r3]
800291dc:	e2833014 	add	r3, r3, #20
800291e0:	e5832000 	str	r2, [r3]
800291e4:	e59f201c 	ldr	r2, [pc, #28]	@ 80029208 <pic_disable+0x70>
800291e8:	e51b3008 	ldr	r3, [fp, #-8]
800291ec:	e59f1018 	ldr	r1, [pc, #24]	@ 8002920c <pic_disable+0x74>
800291f0:	e7821103 	str	r1, [r2, r3, lsl #2]
800291f4:	e1a00000 	nop			@ (mov r0, r0)
800291f8:	e24bd004 	sub	sp, fp, #4
800291fc:	e8bd8800 	pop	{fp, pc}
80029200:	8002a174 	.word	0x8002a174
80029204:	800b0df0 	.word	0x800b0df0
80029208:	800b0df4 	.word	0x800b0df4
8002920c:	8002906c 	.word	0x8002906c

80029210 <pic_dispatch>:
80029210:	e92d4800 	push	{fp, lr}
80029214:	e28db004 	add	fp, sp, #4
80029218:	e24dd010 	sub	sp, sp, #16
8002921c:	e50b0010 	str	r0, [fp, #-16]
80029220:	e59f3080 	ldr	r3, [pc, #128]	@ 800292a8 <pic_dispatch+0x98>
80029224:	e5933000 	ldr	r3, [r3]
80029228:	e5933000 	ldr	r3, [r3]
8002922c:	e50b300c 	str	r3, [fp, #-12]
80029230:	e3a03000 	mov	r3, #0
80029234:	e50b3008 	str	r3, [fp, #-8]
80029238:	ea000010 	b	80029280 <pic_dispatch+0x70>
8002923c:	e3a02001 	mov	r2, #1
80029240:	e51b3008 	ldr	r3, [fp, #-8]
80029244:	e1a03312 	lsl	r3, r2, r3
80029248:	e1a02003 	mov	r2, r3
8002924c:	e51b300c 	ldr	r3, [fp, #-12]
80029250:	e0033002 	and	r3, r3, r2
80029254:	e3530000 	cmp	r3, #0
80029258:	0a000005 	beq	80029274 <pic_dispatch+0x64>
8002925c:	e59f2048 	ldr	r2, [pc, #72]	@ 800292ac <pic_dispatch+0x9c>
80029260:	e51b3008 	ldr	r3, [fp, #-8]
80029264:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80029268:	e51b1008 	ldr	r1, [fp, #-8]
8002926c:	e51b0010 	ldr	r0, [fp, #-16]
80029270:	e12fff33 	blx	r3
80029274:	e51b3008 	ldr	r3, [fp, #-8]
80029278:	e2833001 	add	r3, r3, #1
8002927c:	e50b3008 	str	r3, [fp, #-8]
80029280:	e51b3008 	ldr	r3, [fp, #-8]
80029284:	e353001f 	cmp	r3, #31
80029288:	daffffeb 	ble	8002923c <pic_dispatch+0x2c>
8002928c:	e59f3014 	ldr	r3, [pc, #20]	@ 800292a8 <pic_dispatch+0x98>
80029290:	e5933000 	ldr	r3, [r3]
80029294:	e5933000 	ldr	r3, [r3]
80029298:	e50b300c 	str	r3, [fp, #-12]
8002929c:	e1a00000 	nop			@ (mov r0, r0)
800292a0:	e24bd004 	sub	sp, fp, #4
800292a4:	e8bd8800 	pop	{fp, pc}
800292a8:	800b0df0 	.word	0x800b0df0
800292ac:	800b0df4 	.word	0x800b0df4

800292b0 <ack_timer>:
800292b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800292b4:	e28db000 	add	fp, sp, #0
800292b8:	e24dd00c 	sub	sp, sp, #12
800292bc:	e59f3020 	ldr	r3, [pc, #32]	@ 800292e4 <ack_timer+0x34>
800292c0:	e50b3008 	str	r3, [fp, #-8]
800292c4:	e51b3008 	ldr	r3, [fp, #-8]
800292c8:	e283300c 	add	r3, r3, #12
800292cc:	e3a02001 	mov	r2, #1
800292d0:	e5832000 	str	r2, [r3]
800292d4:	e1a00000 	nop			@ (mov r0, r0)
800292d8:	e28bd000 	add	sp, fp, #0
800292dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800292e0:	e12fff1e 	bx	lr
800292e4:	901e2000 	.word	0x901e2000

800292e8 <timer_init>:
800292e8:	e92d4800 	push	{fp, lr}
800292ec:	e28db004 	add	fp, sp, #4
800292f0:	e24dd010 	sub	sp, sp, #16
800292f4:	e50b0010 	str	r0, [fp, #-16]
800292f8:	e59f3050 	ldr	r3, [pc, #80]	@ 80029350 <timer_init+0x68>
800292fc:	e50b3008 	str	r3, [fp, #-8]
80029300:	e59f104c 	ldr	r1, [pc, #76]	@ 80029354 <timer_init+0x6c>
80029304:	e59f004c 	ldr	r0, [pc, #76]	@ 80029358 <timer_init+0x70>
80029308:	ebfff411 	bl	80026354 <initlock>
8002930c:	e51b1010 	ldr	r1, [fp, #-16]
80029310:	e59f0044 	ldr	r0, [pc, #68]	@ 8002935c <timer_init+0x74>
80029314:	eb000109 	bl	80029740 <__divsi3>
80029318:	e1a03000 	mov	r3, r0
8002931c:	e1a02003 	mov	r2, r3
80029320:	e51b3008 	ldr	r3, [fp, #-8]
80029324:	e5832000 	str	r2, [r3]
80029328:	e51b3008 	ldr	r3, [fp, #-8]
8002932c:	e2833008 	add	r3, r3, #8
80029330:	e3a020e2 	mov	r2, #226	@ 0xe2
80029334:	e5832000 	str	r2, [r3]
80029338:	e59f1020 	ldr	r1, [pc, #32]	@ 80029360 <timer_init+0x78>
8002933c:	e3a00004 	mov	r0, #4
80029340:	ebffff76 	bl	80029120 <pic_enable>
80029344:	e1a00000 	nop			@ (mov r0, r0)
80029348:	e24bd004 	sub	sp, fp, #4
8002934c:	e8bd8800 	pop	{fp, pc}
80029350:	901e2000 	.word	0x901e2000
80029354:	8002a190 	.word	0x8002a190
80029358:	800b0e74 	.word	0x800b0e74
8002935c:	000f4240 	.word	0x000f4240
80029360:	80029364 	.word	0x80029364

80029364 <isr_timer>:
80029364:	e92d4800 	push	{fp, lr}
80029368:	e28db004 	add	fp, sp, #4
8002936c:	e24dd008 	sub	sp, sp, #8
80029370:	e50b0008 	str	r0, [fp, #-8]
80029374:	e50b100c 	str	r1, [fp, #-12]
80029378:	e59f0034 	ldr	r0, [pc, #52]	@ 800293b4 <isr_timer+0x50>
8002937c:	ebfff406 	bl	8002639c <acquire>
80029380:	e59f3030 	ldr	r3, [pc, #48]	@ 800293b8 <isr_timer+0x54>
80029384:	e5933000 	ldr	r3, [r3]
80029388:	e2833001 	add	r3, r3, #1
8002938c:	e59f2024 	ldr	r2, [pc, #36]	@ 800293b8 <isr_timer+0x54>
80029390:	e5823000 	str	r3, [r2]
80029394:	e59f001c 	ldr	r0, [pc, #28]	@ 800293b8 <isr_timer+0x54>
80029398:	ebfff340 	bl	800260a0 <wakeup>
8002939c:	e59f0010 	ldr	r0, [pc, #16]	@ 800293b4 <isr_timer+0x50>
800293a0:	ebfff408 	bl	800263c8 <release>
800293a4:	ebffffc1 	bl	800292b0 <ack_timer>
800293a8:	e1a00000 	nop			@ (mov r0, r0)
800293ac:	e24bd004 	sub	sp, fp, #4
800293b0:	e8bd8800 	pop	{fp, pc}
800293b4:	800b0e74 	.word	0x800b0e74
800293b8:	800b0ea8 	.word	0x800b0ea8

800293bc <micro_delay>:
800293bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800293c0:	e28db000 	add	fp, sp, #0
800293c4:	e24dd014 	sub	sp, sp, #20
800293c8:	e50b0010 	str	r0, [fp, #-16]
800293cc:	e59f3054 	ldr	r3, [pc, #84]	@ 80029428 <micro_delay+0x6c>
800293d0:	e50b3008 	str	r3, [fp, #-8]
800293d4:	e51b3008 	ldr	r3, [fp, #-8]
800293d8:	e2833008 	add	r3, r3, #8
800293dc:	e3a02082 	mov	r2, #130	@ 0x82
800293e0:	e5832000 	str	r2, [r3]
800293e4:	e51b2010 	ldr	r2, [fp, #-16]
800293e8:	e51b3008 	ldr	r3, [fp, #-8]
800293ec:	e5832000 	str	r2, [r3]
800293f0:	e1a00000 	nop			@ (mov r0, r0)
800293f4:	e51b3008 	ldr	r3, [fp, #-8]
800293f8:	e2833004 	add	r3, r3, #4
800293fc:	e5933000 	ldr	r3, [r3]
80029400:	e3530000 	cmp	r3, #0
80029404:	cafffffa 	bgt	800293f4 <micro_delay+0x38>
80029408:	e51b3008 	ldr	r3, [fp, #-8]
8002940c:	e2833008 	add	r3, r3, #8
80029410:	e3a02000 	mov	r2, #0
80029414:	e5832000 	str	r2, [r3]
80029418:	e1a00000 	nop			@ (mov r0, r0)
8002941c:	e28bd000 	add	sp, fp, #0
80029420:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029424:	e12fff1e 	bx	lr
80029428:	901e2020 	.word	0x901e2020

8002942c <uart_init>:
8002942c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029430:	e28db000 	add	fp, sp, #0
80029434:	e24dd014 	sub	sp, sp, #20
80029438:	e50b0010 	str	r0, [fp, #-16]
8002943c:	e59f20a4 	ldr	r2, [pc, #164]	@ 800294e8 <uart_init+0xbc>
80029440:	e51b3010 	ldr	r3, [fp, #-16]
80029444:	e5823000 	str	r3, [r2]
80029448:	e59f3098 	ldr	r3, [pc, #152]	@ 800294e8 <uart_init+0xbc>
8002944c:	e5933000 	ldr	r3, [r3]
80029450:	e2833024 	add	r3, r3, #36	@ 0x24
80029454:	e3a0204e 	mov	r2, #78	@ 0x4e
80029458:	e5832000 	str	r2, [r3]
8002945c:	e3a03c96 	mov	r3, #38400	@ 0x9600
80029460:	e50b3008 	str	r3, [fp, #-8]
80029464:	e51b3008 	ldr	r3, [fp, #-8]
80029468:	e2833e96 	add	r3, r3, #2400	@ 0x960
8002946c:	e1a02103 	lsl	r2, r3, #2
80029470:	e59f3070 	ldr	r3, [pc, #112]	@ 800294e8 <uart_init+0xbc>
80029474:	e5933000 	ldr	r3, [r3]
80029478:	e2833028 	add	r3, r3, #40	@ 0x28
8002947c:	e59f1068 	ldr	r1, [pc, #104]	@ 800294ec <uart_init+0xc0>
80029480:	e0821291 	umull	r1, r2, r1, r2
80029484:	e1a025a2 	lsr	r2, r2, #11
80029488:	e5832000 	str	r2, [r3]
8002948c:	e59f3054 	ldr	r3, [pc, #84]	@ 800294e8 <uart_init+0xbc>
80029490:	e5933000 	ldr	r3, [r3]
80029494:	e2833030 	add	r3, r3, #48	@ 0x30
80029498:	e5933000 	ldr	r3, [r3]
8002949c:	e59f2044 	ldr	r2, [pc, #68]	@ 800294e8 <uart_init+0xbc>
800294a0:	e5922000 	ldr	r2, [r2]
800294a4:	e2822030 	add	r2, r2, #48	@ 0x30
800294a8:	e3833c03 	orr	r3, r3, #768	@ 0x300
800294ac:	e3833001 	orr	r3, r3, #1
800294b0:	e5823000 	str	r3, [r2]
800294b4:	e59f302c 	ldr	r3, [pc, #44]	@ 800294e8 <uart_init+0xbc>
800294b8:	e5933000 	ldr	r3, [r3]
800294bc:	e283302c 	add	r3, r3, #44	@ 0x2c
800294c0:	e5932000 	ldr	r2, [r3]
800294c4:	e59f301c 	ldr	r3, [pc, #28]	@ 800294e8 <uart_init+0xbc>
800294c8:	e5933000 	ldr	r3, [r3]
800294cc:	e283302c 	add	r3, r3, #44	@ 0x2c
800294d0:	e3822010 	orr	r2, r2, #16
800294d4:	e5832000 	str	r2, [r3]
800294d8:	e1a00000 	nop			@ (mov r0, r0)
800294dc:	e28bd000 	add	sp, fp, #0
800294e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800294e4:	e12fff1e 	bx	lr
800294e8:	800b0eac 	.word	0x800b0eac
800294ec:	1b4e81b5 	.word	0x1b4e81b5

800294f0 <uart_enable_rx>:
800294f0:	e92d4800 	push	{fp, lr}
800294f4:	e28db004 	add	fp, sp, #4
800294f8:	e59f3020 	ldr	r3, [pc, #32]	@ 80029520 <uart_enable_rx+0x30>
800294fc:	e5933000 	ldr	r3, [r3]
80029500:	e2833038 	add	r3, r3, #56	@ 0x38
80029504:	e3a02010 	mov	r2, #16
80029508:	e5832000 	str	r2, [r3]
8002950c:	e59f1010 	ldr	r1, [pc, #16]	@ 80029524 <uart_enable_rx+0x34>
80029510:	e3a0000c 	mov	r0, #12
80029514:	ebffff01 	bl	80029120 <pic_enable>
80029518:	e1a00000 	nop			@ (mov r0, r0)
8002951c:	e8bd8800 	pop	{fp, pc}
80029520:	800b0eac 	.word	0x800b0eac
80029524:	800295cc 	.word	0x800295cc

80029528 <uartputc>:
80029528:	e92d4800 	push	{fp, lr}
8002952c:	e28db004 	add	fp, sp, #4
80029530:	e24dd008 	sub	sp, sp, #8
80029534:	e50b0008 	str	r0, [fp, #-8]
80029538:	ea000001 	b	80029544 <uartputc+0x1c>
8002953c:	e3a0000a 	mov	r0, #10
80029540:	ebffff9d 	bl	800293bc <micro_delay>
80029544:	e59f3030 	ldr	r3, [pc, #48]	@ 8002957c <uartputc+0x54>
80029548:	e5933000 	ldr	r3, [r3]
8002954c:	e2833018 	add	r3, r3, #24
80029550:	e5933000 	ldr	r3, [r3]
80029554:	e2033020 	and	r3, r3, #32
80029558:	e3530000 	cmp	r3, #0
8002955c:	1afffff6 	bne	8002953c <uartputc+0x14>
80029560:	e59f3014 	ldr	r3, [pc, #20]	@ 8002957c <uartputc+0x54>
80029564:	e5933000 	ldr	r3, [r3]
80029568:	e51b2008 	ldr	r2, [fp, #-8]
8002956c:	e5832000 	str	r2, [r3]
80029570:	e1a00000 	nop			@ (mov r0, r0)
80029574:	e24bd004 	sub	sp, fp, #4
80029578:	e8bd8800 	pop	{fp, pc}
8002957c:	800b0eac 	.word	0x800b0eac

80029580 <uartgetc>:
80029580:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029584:	e28db000 	add	fp, sp, #0
80029588:	e59f3038 	ldr	r3, [pc, #56]	@ 800295c8 <uartgetc+0x48>
8002958c:	e5933000 	ldr	r3, [r3]
80029590:	e2833018 	add	r3, r3, #24
80029594:	e5933000 	ldr	r3, [r3]
80029598:	e2033010 	and	r3, r3, #16
8002959c:	e3530000 	cmp	r3, #0
800295a0:	0a000001 	beq	800295ac <uartgetc+0x2c>
800295a4:	e3e03000 	mvn	r3, #0
800295a8:	ea000002 	b	800295b8 <uartgetc+0x38>
800295ac:	e59f3014 	ldr	r3, [pc, #20]	@ 800295c8 <uartgetc+0x48>
800295b0:	e5933000 	ldr	r3, [r3]
800295b4:	e5933000 	ldr	r3, [r3]
800295b8:	e1a00003 	mov	r0, r3
800295bc:	e28bd000 	add	sp, fp, #0
800295c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800295c4:	e12fff1e 	bx	lr
800295c8:	800b0eac 	.word	0x800b0eac

800295cc <isr_uart>:
800295cc:	e92d4800 	push	{fp, lr}
800295d0:	e28db004 	add	fp, sp, #4
800295d4:	e24dd008 	sub	sp, sp, #8
800295d8:	e50b0008 	str	r0, [fp, #-8]
800295dc:	e50b100c 	str	r1, [fp, #-12]
800295e0:	e59f303c 	ldr	r3, [pc, #60]	@ 80029624 <isr_uart+0x58>
800295e4:	e5933000 	ldr	r3, [r3]
800295e8:	e2833040 	add	r3, r3, #64	@ 0x40
800295ec:	e5933000 	ldr	r3, [r3]
800295f0:	e2033010 	and	r3, r3, #16
800295f4:	e3530000 	cmp	r3, #0
800295f8:	0a000001 	beq	80029604 <isr_uart+0x38>
800295fc:	e59f0024 	ldr	r0, [pc, #36]	@ 80029628 <isr_uart+0x5c>
80029600:	ebffe1e7 	bl	80021da4 <consoleintr>
80029604:	e59f3018 	ldr	r3, [pc, #24]	@ 80029624 <isr_uart+0x58>
80029608:	e5933000 	ldr	r3, [r3]
8002960c:	e2833044 	add	r3, r3, #68	@ 0x44
80029610:	e3a02030 	mov	r2, #48	@ 0x30
80029614:	e5832000 	str	r2, [r3]
80029618:	e1a00000 	nop			@ (mov r0, r0)
8002961c:	e24bd004 	sub	sp, fp, #4
80029620:	e8bd8800 	pop	{fp, pc}
80029624:	800b0eac 	.word	0x800b0eac
80029628:	80029580 	.word	0x80029580

8002962c <__udivsi3>:
8002962c:	e2512001 	subs	r2, r1, #1
80029630:	012fff1e 	bxeq	lr
80029634:	3a000036 	bcc	80029714 <__udivsi3+0xe8>
80029638:	e1500001 	cmp	r0, r1
8002963c:	9a000022 	bls	800296cc <__udivsi3+0xa0>
80029640:	e1110002 	tst	r1, r2
80029644:	0a000023 	beq	800296d8 <__udivsi3+0xac>
80029648:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002964c:	01a01181 	lsleq	r1, r1, #3
80029650:	03a03008 	moveq	r3, #8
80029654:	13a03001 	movne	r3, #1
80029658:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002965c:	31510000 	cmpcc	r1, r0
80029660:	31a01201 	lslcc	r1, r1, #4
80029664:	31a03203 	lslcc	r3, r3, #4
80029668:	3afffffa 	bcc	80029658 <__udivsi3+0x2c>
8002966c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029670:	31510000 	cmpcc	r1, r0
80029674:	31a01081 	lslcc	r1, r1, #1
80029678:	31a03083 	lslcc	r3, r3, #1
8002967c:	3afffffa 	bcc	8002966c <__udivsi3+0x40>
80029680:	e3a02000 	mov	r2, #0
80029684:	e1500001 	cmp	r0, r1
80029688:	20400001 	subcs	r0, r0, r1
8002968c:	21822003 	orrcs	r2, r2, r3
80029690:	e15000a1 	cmp	r0, r1, lsr #1
80029694:	204000a1 	subcs	r0, r0, r1, lsr #1
80029698:	218220a3 	orrcs	r2, r2, r3, lsr #1
8002969c:	e1500121 	cmp	r0, r1, lsr #2
800296a0:	20400121 	subcs	r0, r0, r1, lsr #2
800296a4:	21822123 	orrcs	r2, r2, r3, lsr #2
800296a8:	e15001a1 	cmp	r0, r1, lsr #3
800296ac:	204001a1 	subcs	r0, r0, r1, lsr #3
800296b0:	218221a3 	orrcs	r2, r2, r3, lsr #3
800296b4:	e3500000 	cmp	r0, #0
800296b8:	11b03223 	lsrsne	r3, r3, #4
800296bc:	11a01221 	lsrne	r1, r1, #4
800296c0:	1affffef 	bne	80029684 <__udivsi3+0x58>
800296c4:	e1a00002 	mov	r0, r2
800296c8:	e12fff1e 	bx	lr
800296cc:	03a00001 	moveq	r0, #1
800296d0:	13a00000 	movne	r0, #0
800296d4:	e12fff1e 	bx	lr
800296d8:	e3510801 	cmp	r1, #65536	@ 0x10000
800296dc:	21a01821 	lsrcs	r1, r1, #16
800296e0:	23a02010 	movcs	r2, #16
800296e4:	33a02000 	movcc	r2, #0
800296e8:	e3510c01 	cmp	r1, #256	@ 0x100
800296ec:	21a01421 	lsrcs	r1, r1, #8
800296f0:	22822008 	addcs	r2, r2, #8
800296f4:	e3510010 	cmp	r1, #16
800296f8:	21a01221 	lsrcs	r1, r1, #4
800296fc:	22822004 	addcs	r2, r2, #4
80029700:	e3510004 	cmp	r1, #4
80029704:	82822003 	addhi	r2, r2, #3
80029708:	908220a1 	addls	r2, r2, r1, lsr #1
8002970c:	e1a00230 	lsr	r0, r0, r2
80029710:	e12fff1e 	bx	lr
80029714:	e3500000 	cmp	r0, #0
80029718:	13e00000 	mvnne	r0, #0
8002971c:	ea000059 	b	80029888 <__aeabi_idiv0>

80029720 <__aeabi_uidivmod>:
80029720:	e3510000 	cmp	r1, #0
80029724:	0afffffa 	beq	80029714 <__udivsi3+0xe8>
80029728:	e92d4003 	push	{r0, r1, lr}
8002972c:	ebffffbe 	bl	8002962c <__udivsi3>
80029730:	e8bd4006 	pop	{r1, r2, lr}
80029734:	e0030092 	mul	r3, r2, r0
80029738:	e0411003 	sub	r1, r1, r3
8002973c:	e12fff1e 	bx	lr

80029740 <__divsi3>:
80029740:	e3510000 	cmp	r1, #0
80029744:	0a000043 	beq	80029858 <.divsi3_skip_div0_test+0x110>

80029748 <.divsi3_skip_div0_test>:
80029748:	e020c001 	eor	ip, r0, r1
8002974c:	42611000 	rsbmi	r1, r1, #0
80029750:	e2512001 	subs	r2, r1, #1
80029754:	0a000027 	beq	800297f8 <.divsi3_skip_div0_test+0xb0>
80029758:	e1b03000 	movs	r3, r0
8002975c:	42603000 	rsbmi	r3, r0, #0
80029760:	e1530001 	cmp	r3, r1
80029764:	9a000026 	bls	80029804 <.divsi3_skip_div0_test+0xbc>
80029768:	e1110002 	tst	r1, r2
8002976c:	0a000028 	beq	80029814 <.divsi3_skip_div0_test+0xcc>
80029770:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029774:	01a01181 	lsleq	r1, r1, #3
80029778:	03a02008 	moveq	r2, #8
8002977c:	13a02001 	movne	r2, #1
80029780:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029784:	31510003 	cmpcc	r1, r3
80029788:	31a01201 	lslcc	r1, r1, #4
8002978c:	31a02202 	lslcc	r2, r2, #4
80029790:	3afffffa 	bcc	80029780 <.divsi3_skip_div0_test+0x38>
80029794:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029798:	31510003 	cmpcc	r1, r3
8002979c:	31a01081 	lslcc	r1, r1, #1
800297a0:	31a02082 	lslcc	r2, r2, #1
800297a4:	3afffffa 	bcc	80029794 <.divsi3_skip_div0_test+0x4c>
800297a8:	e3a00000 	mov	r0, #0
800297ac:	e1530001 	cmp	r3, r1
800297b0:	20433001 	subcs	r3, r3, r1
800297b4:	21800002 	orrcs	r0, r0, r2
800297b8:	e15300a1 	cmp	r3, r1, lsr #1
800297bc:	204330a1 	subcs	r3, r3, r1, lsr #1
800297c0:	218000a2 	orrcs	r0, r0, r2, lsr #1
800297c4:	e1530121 	cmp	r3, r1, lsr #2
800297c8:	20433121 	subcs	r3, r3, r1, lsr #2
800297cc:	21800122 	orrcs	r0, r0, r2, lsr #2
800297d0:	e15301a1 	cmp	r3, r1, lsr #3
800297d4:	204331a1 	subcs	r3, r3, r1, lsr #3
800297d8:	218001a2 	orrcs	r0, r0, r2, lsr #3
800297dc:	e3530000 	cmp	r3, #0
800297e0:	11b02222 	lsrsne	r2, r2, #4
800297e4:	11a01221 	lsrne	r1, r1, #4
800297e8:	1affffef 	bne	800297ac <.divsi3_skip_div0_test+0x64>
800297ec:	e35c0000 	cmp	ip, #0
800297f0:	42600000 	rsbmi	r0, r0, #0
800297f4:	e12fff1e 	bx	lr
800297f8:	e13c0000 	teq	ip, r0
800297fc:	42600000 	rsbmi	r0, r0, #0
80029800:	e12fff1e 	bx	lr
80029804:	33a00000 	movcc	r0, #0
80029808:	01a00fcc 	asreq	r0, ip, #31
8002980c:	03800001 	orreq	r0, r0, #1
80029810:	e12fff1e 	bx	lr
80029814:	e3510801 	cmp	r1, #65536	@ 0x10000
80029818:	21a01821 	lsrcs	r1, r1, #16
8002981c:	23a02010 	movcs	r2, #16
80029820:	33a02000 	movcc	r2, #0
80029824:	e3510c01 	cmp	r1, #256	@ 0x100
80029828:	21a01421 	lsrcs	r1, r1, #8
8002982c:	22822008 	addcs	r2, r2, #8
80029830:	e3510010 	cmp	r1, #16
80029834:	21a01221 	lsrcs	r1, r1, #4
80029838:	22822004 	addcs	r2, r2, #4
8002983c:	e3510004 	cmp	r1, #4
80029840:	82822003 	addhi	r2, r2, #3
80029844:	908220a1 	addls	r2, r2, r1, lsr #1
80029848:	e35c0000 	cmp	ip, #0
8002984c:	e1a00233 	lsr	r0, r3, r2
80029850:	42600000 	rsbmi	r0, r0, #0
80029854:	e12fff1e 	bx	lr
80029858:	e3500000 	cmp	r0, #0
8002985c:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029860:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029864:	ea000007 	b	80029888 <__aeabi_idiv0>

80029868 <__aeabi_idivmod>:
80029868:	e3510000 	cmp	r1, #0
8002986c:	0afffff9 	beq	80029858 <.divsi3_skip_div0_test+0x110>
80029870:	e92d4003 	push	{r0, r1, lr}
80029874:	ebffffb3 	bl	80029748 <.divsi3_skip_div0_test>
80029878:	e8bd4006 	pop	{r1, r2, lr}
8002987c:	e0030092 	mul	r3, r2, r0
80029880:	e0411003 	sub	r1, r1, r3
80029884:	e12fff1e 	bx	lr

80029888 <__aeabi_idiv0>:
80029888:	e12fff1e 	bx	lr
