
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
   10408:	800ab140 	.word	0x800ab140

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
   104f4:	80024920 	.word	0x80024920
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
8002067c:	800ae678 	.word	0x800ae678

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000502 	bl	80021aac <panic>
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
800206e4:	eb0004f0 	bl	80021aac <panic>
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
8002071c:	80029d58 	.word	0x80029d58
80020720:	800ae678 	.word	0x800ae678
80020724:	80029d70 	.word	0x80029d70
80020728:	80029d84 	.word	0x80029d84

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
8002089c:	80029d98 	.word	0x80029d98
800208a0:	80029d9c 	.word	0x80029d9c

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
800208e4:	eb001679 	bl	800262d0 <initlock>
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
8002099c:	80029da8 	.word	0x80029da8
800209a0:	800ab140 	.word	0x800ab140
800209a4:	800ac664 	.word	0x800ac664
800209a8:	800ab174 	.word	0x800ab174

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb001653 	bl	80026318 <acquire>
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
80020a30:	eb001643 	bl	80026344 <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb0014e0 	bl	80025dcc <sleep>
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
80020acc:	eb00161c 	bl	80026344 <release>
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
80020af8:	eb0003eb 	bl	80021aac <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800ab140 	.word	0x800ab140
80020b0c:	800ac664 	.word	0x800ac664
80020b10:	80029db0 	.word	0x80029db0

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
80020b50:	eb000fbf 	bl	80024a54 <iderw>
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
80020b8c:	eb0003c6 	bl	80021aac <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000fa9 	bl	80024a54 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	80029dc4 	.word	0x80029dc4

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
80020be4:	eb0003b0 	bl	80021aac <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb0015c9 	bl	80026318 <acquire>
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
80020c78:	eb0014e7 	bl	8002601c <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb0015af 	bl	80026344 <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	80029dcc 	.word	0x80029dcc
80020c94:	800ab140 	.word	0x800ab140
80020c98:	800ac664 	.word	0x800ac664

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
80020cf4:	800ac87c 	.word	0x800ac87c

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
80020d34:	800ac87c 	.word	0x800ac87c

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
80020d74:	800ac87c 	.word	0x800ac87c

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
80020dc8:	eb001540 	bl	800262d0 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	80029dd4 	.word	0x80029dd4
80020dd8:	800ac87c 	.word	0x800ac87c

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
80020f78:	800ac87c 	.word	0x800ac87c
80020f7c:	800ac8bc 	.word	0x800ac8bc
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
80020ff0:	eb0002ad 	bl	80021aac <panic>
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
80021118:	800ac87c 	.word	0x800ac87c
8002111c:	80029ddc 	.word	0x80029ddc
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
800211ac:	eb00023e 	bl	80021aac <panic>
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
80021268:	800ac87c 	.word	0x800ac87c
8002126c:	80029dec 	.word	0x80029dec
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
800212cc:	eb0001f6 	bl	80021aac <panic>
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
8002135c:	800ac87c 	.word	0x800ac87c
80021360:	80029dfc 	.word	0x80029dfc

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
8002141c:	800ac87c 	.word	0x800ac87c
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
80021450:	eb000195 	bl	80021aac <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb0013ae 	bl	80026318 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb0013b4 	bl	80026344 <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	80029e14 	.word	0x80029e14
80021484:	800ac87c 	.word	0x800ac87c

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
800214e8:	eb00016f 	bl	80021aac <panic>
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
8002157c:	80029e34 	.word	0x80029e34

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
800215d4:	eb000134 	bl	80021aac <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb00134d 	bl	80026318 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb001353 	bl	80026344 <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	80029e48 	.word	0x80029e48
80021604:	800ac87c 	.word	0x800ac87c

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
8002174c:	eb0000d6 	bl	80021aac <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	80029e78 	.word	0x80029e78

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
800217d4:	eb002104 	bl	80029bec <__aeabi_uidivmod>
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
8002180c:	eb0020b9 	bl	80029af8 <__udivsi3>
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
80021864:	eb0000a9 	bl	80021b10 <consputc>
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
800218a4:	e59f31f0 	ldr	r3, [pc, #496]	@ 80021a9c <cprintf+0x208>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f01d8 	ldr	r0, [pc, #472]	@ 80021a9c <cprintf+0x208>
800218c0:	eb001294 	bl	80026318 <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f01c8 	ldr	r0, [pc, #456]	@ 80021aa0 <cprintf+0x20c>
800218d4:	eb000074 	bl	80021aac <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea000057 	b	80021a4c <cprintf+0x1b8>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000083 	bl	80021b10 <consputc>
80021900:	ea00004e 	b	80021a40 <cprintf+0x1ac>
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
8002192c:	0a00004f 	beq	80021a70 <cprintf+0x1dc>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530025 	cmp	r3, #37	@ 0x25
80021938:	0a000038 	beq	80021a20 <cprintf+0x18c>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530025 	cmp	r3, #37	@ 0x25
80021944:	ba000038 	blt	80021a2c <cprintf+0x198>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530078 	cmp	r3, #120	@ 0x78
80021950:	ca000035 	bgt	80021a2c <cprintf+0x198>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530064 	cmp	r3, #100	@ 0x64
8002195c:	ba000032 	blt	80021a2c <cprintf+0x198>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e2432064 	sub	r2, r3, #100	@ 0x64
80021968:	e59f3134 	ldr	r3, [pc, #308]	@ 80021aa4 <cprintf+0x210>
8002196c:	e3520014 	cmp	r2, #20
80021970:	8a00002d 	bhi	80021a2c <cprintf+0x198>
80021974:	e793f102 	ldr	pc, [r3, r2, lsl #2]
80021978:	e1a00000 	nop			@ (mov r0, r0)
8002197c:	e51b300c 	ldr	r3, [fp, #-12]
80021980:	e2832004 	add	r2, r3, #4
80021984:	e50b200c 	str	r2, [fp, #-12]
80021988:	e5933000 	ldr	r3, [r3]
8002198c:	e3a02001 	mov	r2, #1
80021990:	e3a0100a 	mov	r1, #10
80021994:	e1a00003 	mov	r0, r3
80021998:	ebffff71 	bl	80021764 <printint>
8002199c:	ea000027 	b	80021a40 <cprintf+0x1ac>
800219a0:	e51b300c 	ldr	r3, [fp, #-12]
800219a4:	e2832004 	add	r2, r3, #4
800219a8:	e50b200c 	str	r2, [fp, #-12]
800219ac:	e5933000 	ldr	r3, [r3]
800219b0:	e3a02000 	mov	r2, #0
800219b4:	e3a01010 	mov	r1, #16
800219b8:	e1a00003 	mov	r0, r3
800219bc:	ebffff68 	bl	80021764 <printint>
800219c0:	ea00001e 	b	80021a40 <cprintf+0x1ac>
800219c4:	e51b300c 	ldr	r3, [fp, #-12]
800219c8:	e2832004 	add	r2, r3, #4
800219cc:	e50b200c 	str	r2, [fp, #-12]
800219d0:	e5933000 	ldr	r3, [r3]
800219d4:	e50b3010 	str	r3, [fp, #-16]
800219d8:	e51b3010 	ldr	r3, [fp, #-16]
800219dc:	e3530000 	cmp	r3, #0
800219e0:	1a000009 	bne	80021a0c <cprintf+0x178>
800219e4:	e59f30bc 	ldr	r3, [pc, #188]	@ 80021aa8 <cprintf+0x214>
800219e8:	e50b3010 	str	r3, [fp, #-16]
800219ec:	ea000006 	b	80021a0c <cprintf+0x178>
800219f0:	e51b3010 	ldr	r3, [fp, #-16]
800219f4:	e5d33000 	ldrb	r3, [r3]
800219f8:	e1a00003 	mov	r0, r3
800219fc:	eb000043 	bl	80021b10 <consputc>
80021a00:	e51b3010 	ldr	r3, [fp, #-16]
80021a04:	e2833001 	add	r3, r3, #1
80021a08:	e50b3010 	str	r3, [fp, #-16]
80021a0c:	e51b3010 	ldr	r3, [fp, #-16]
80021a10:	e5d33000 	ldrb	r3, [r3]
80021a14:	e3530000 	cmp	r3, #0
80021a18:	1afffff4 	bne	800219f0 <cprintf+0x15c>
80021a1c:	ea000007 	b	80021a40 <cprintf+0x1ac>
80021a20:	e3a00025 	mov	r0, #37	@ 0x25
80021a24:	eb000039 	bl	80021b10 <consputc>
80021a28:	ea000004 	b	80021a40 <cprintf+0x1ac>
80021a2c:	e3a00025 	mov	r0, #37	@ 0x25
80021a30:	eb000036 	bl	80021b10 <consputc>
80021a34:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a38:	eb000034 	bl	80021b10 <consputc>
80021a3c:	e1a00000 	nop			@ (mov r0, r0)
80021a40:	e51b3008 	ldr	r3, [fp, #-8]
80021a44:	e2833001 	add	r3, r3, #1
80021a48:	e50b3008 	str	r3, [fp, #-8]
80021a4c:	e59b2004 	ldr	r2, [fp, #4]
80021a50:	e51b3008 	ldr	r3, [fp, #-8]
80021a54:	e0823003 	add	r3, r2, r3
80021a58:	e5d33000 	ldrb	r3, [r3]
80021a5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021a60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a64:	e3530000 	cmp	r3, #0
80021a68:	1affff9f 	bne	800218ec <cprintf+0x58>
80021a6c:	ea000000 	b	80021a74 <cprintf+0x1e0>
80021a70:	e1a00000 	nop			@ (mov r0, r0)
80021a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021a78:	e3530000 	cmp	r3, #0
80021a7c:	0a000001 	beq	80021a88 <cprintf+0x1f4>
80021a80:	e59f0014 	ldr	r0, [pc, #20]	@ 80021a9c <cprintf+0x208>
80021a84:	eb00122e 	bl	80026344 <release>
80021a88:	e1a00000 	nop			@ (mov r0, r0)
80021a8c:	e24bd004 	sub	sp, fp, #4
80021a90:	e8bd4800 	pop	{fp, lr}
80021a94:	e28dd010 	add	sp, sp, #16
80021a98:	e12fff1e 	bx	lr
80021a9c:	800ac8f8 	.word	0x800ac8f8
80021aa0:	80029e88 	.word	0x80029e88
80021aa4:	80029e9c 	.word	0x80029e9c
80021aa8:	80029e94 	.word	0x80029e94

80021aac <panic>:
80021aac:	e92d4800 	push	{fp, lr}
80021ab0:	e28db004 	add	fp, sp, #4
80021ab4:	e24dd008 	sub	sp, sp, #8
80021ab8:	e50b0008 	str	r0, [fp, #-8]
80021abc:	ebfffa9f 	bl	80020540 <cli>
80021ac0:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b00 <panic+0x54>
80021ac4:	e3a02000 	mov	r2, #0
80021ac8:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021acc:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b04 <panic+0x58>
80021ad0:	e5933000 	ldr	r3, [r3]
80021ad4:	e5d33000 	ldrb	r3, [r3]
80021ad8:	e1a01003 	mov	r1, r3
80021adc:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b08 <panic+0x5c>
80021ae0:	ebffff6b 	bl	80021894 <cprintf>
80021ae4:	e51b0008 	ldr	r0, [fp, #-8]
80021ae8:	ebfffb47 	bl	8002080c <show_callstk>
80021aec:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b0c <panic+0x60>
80021af0:	e3a02001 	mov	r2, #1
80021af4:	e5832000 	str	r2, [r3]
80021af8:	e1a00000 	nop			@ (mov r0, r0)
80021afc:	eafffffd 	b	80021af8 <panic+0x4c>
80021b00:	800ac8f8 	.word	0x800ac8f8
80021b04:	800ae678 	.word	0x800ae678
80021b08:	80029ef0 	.word	0x80029ef0
80021b0c:	800ac8f4 	.word	0x800ac8f4

80021b10 <consputc>:
80021b10:	e92d4800 	push	{fp, lr}
80021b14:	e28db004 	add	fp, sp, #4
80021b18:	e24dd008 	sub	sp, sp, #8
80021b1c:	e50b0008 	str	r0, [fp, #-8]
80021b20:	e59f3050 	ldr	r3, [pc, #80]	@ 80021b78 <consputc+0x68>
80021b24:	e5933000 	ldr	r3, [r3]
80021b28:	e3530000 	cmp	r3, #0
80021b2c:	0a000002 	beq	80021b3c <consputc+0x2c>
80021b30:	ebfffa82 	bl	80020540 <cli>
80021b34:	e1a00000 	nop			@ (mov r0, r0)
80021b38:	eafffffd 	b	80021b34 <consputc+0x24>
80021b3c:	e51b3008 	ldr	r3, [fp, #-8]
80021b40:	e3530c01 	cmp	r3, #256	@ 0x100
80021b44:	1a000006 	bne	80021b64 <consputc+0x54>
80021b48:	e3a00008 	mov	r0, #8
80021b4c:	eb001fa8 	bl	800299f4 <uartputc>
80021b50:	e3a00020 	mov	r0, #32
80021b54:	eb001fa6 	bl	800299f4 <uartputc>
80021b58:	e3a00008 	mov	r0, #8
80021b5c:	eb001fa4 	bl	800299f4 <uartputc>
80021b60:	ea000001 	b	80021b6c <consputc+0x5c>
80021b64:	e51b0008 	ldr	r0, [fp, #-8]
80021b68:	eb001fa1 	bl	800299f4 <uartputc>
80021b6c:	e1a00000 	nop			@ (mov r0, r0)
80021b70:	e24bd004 	sub	sp, fp, #4
80021b74:	e8bd8800 	pop	{fp, pc}
80021b78:	800ac8f4 	.word	0x800ac8f4

80021b7c <input_buffer>:
80021b7c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80021b80:	e28db000 	add	fp, sp, #0
80021b84:	e24dd014 	sub	sp, sp, #20
80021b88:	e50b0010 	str	r0, [fp, #-16]
80021b8c:	e59f30a8 	ldr	r3, [pc, #168]	@ 80021c3c <input_buffer+0xc0>
80021b90:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021b94:	e59f30a0 	ldr	r3, [pc, #160]	@ 80021c3c <input_buffer+0xc0>
80021b98:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021b9c:	e0423003 	sub	r3, r2, r3
80021ba0:	e50b3008 	str	r3, [fp, #-8]
80021ba4:	e51b3008 	ldr	r3, [fp, #-8]
80021ba8:	e3530000 	cmp	r3, #0
80021bac:	aa000001 	bge	80021bb8 <input_buffer+0x3c>
80021bb0:	e3a03000 	mov	r3, #0
80021bb4:	e50b3008 	str	r3, [fp, #-8]
80021bb8:	e3a03000 	mov	r3, #0
80021bbc:	e50b300c 	str	r3, [fp, #-12]
80021bc0:	ea00000f 	b	80021c04 <input_buffer+0x88>
80021bc4:	e59f3070 	ldr	r3, [pc, #112]	@ 80021c3c <input_buffer+0xc0>
80021bc8:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80021bcc:	e51b300c 	ldr	r3, [fp, #-12]
80021bd0:	e0823003 	add	r3, r2, r3
80021bd4:	e1a03b83 	lsl	r3, r3, #23
80021bd8:	e1a03ba3 	lsr	r3, r3, #23
80021bdc:	e51b200c 	ldr	r2, [fp, #-12]
80021be0:	e51b1010 	ldr	r1, [fp, #-16]
80021be4:	e0812002 	add	r2, r1, r2
80021be8:	e59f104c 	ldr	r1, [pc, #76]	@ 80021c3c <input_buffer+0xc0>
80021bec:	e0813003 	add	r3, r1, r3
80021bf0:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021bf4:	e5c23000 	strb	r3, [r2]
80021bf8:	e51b300c 	ldr	r3, [fp, #-12]
80021bfc:	e2833001 	add	r3, r3, #1
80021c00:	e50b300c 	str	r3, [fp, #-12]
80021c04:	e51b200c 	ldr	r2, [fp, #-12]
80021c08:	e51b3008 	ldr	r3, [fp, #-8]
80021c0c:	e1520003 	cmp	r2, r3
80021c10:	baffffeb 	blt	80021bc4 <input_buffer+0x48>
80021c14:	e51b3008 	ldr	r3, [fp, #-8]
80021c18:	e51b2010 	ldr	r2, [fp, #-16]
80021c1c:	e0823003 	add	r3, r2, r3
80021c20:	e3a02000 	mov	r2, #0
80021c24:	e5c32000 	strb	r2, [r3]
80021c28:	e51b3008 	ldr	r3, [fp, #-8]
80021c2c:	e1a00003 	mov	r0, r3
80021c30:	e28bd000 	add	sp, fp, #0
80021c34:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80021c38:	e12fff1e 	bx	lr
80021c3c:	800ac930 	.word	0x800ac930

80021c40 <input_append>:
80021c40:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80021c44:	e28db000 	add	fp, sp, #0
80021c48:	e24dd00c 	sub	sp, sp, #12
80021c4c:	e1a03000 	mov	r3, r0
80021c50:	e54b3005 	strb	r3, [fp, #-5]
80021c54:	e59f3034 	ldr	r3, [pc, #52]	@ 80021c90 <input_append+0x50>
80021c58:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c5c:	e2832001 	add	r2, r3, #1
80021c60:	e59f1028 	ldr	r1, [pc, #40]	@ 80021c90 <input_append+0x50>
80021c64:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021c68:	e1a03b83 	lsl	r3, r3, #23
80021c6c:	e1a03ba3 	lsr	r3, r3, #23
80021c70:	e59f2018 	ldr	r2, [pc, #24]	@ 80021c90 <input_append+0x50>
80021c74:	e0823003 	add	r3, r2, r3
80021c78:	e55b2005 	ldrb	r2, [fp, #-5]
80021c7c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021c80:	e1a00000 	nop			@ (mov r0, r0)
80021c84:	e28bd000 	add	sp, fp, #0
80021c88:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80021c8c:	e12fff1e 	bx	lr
80021c90:	800ac930 	.word	0x800ac930

80021c94 <complete_command>:
80021c94:	e92d4800 	push	{fp, lr}
80021c98:	e28db004 	add	fp, sp, #4
80021c9c:	e24dd018 	sub	sp, sp, #24
80021ca0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021ca4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021ca8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021cac:	ebfffa0e 	bl	800204ec <strlen>
80021cb0:	e50b0010 	str	r0, [fp, #-16]
80021cb4:	e3a03000 	mov	r3, #0
80021cb8:	e50b3008 	str	r3, [fp, #-8]
80021cbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021cc0:	e3a02000 	mov	r2, #0
80021cc4:	e5832000 	str	r2, [r3]
80021cc8:	e3a03000 	mov	r3, #0
80021ccc:	e50b300c 	str	r3, [fp, #-12]
80021cd0:	ea000017 	b	80021d34 <complete_command+0xa0>
80021cd4:	e59f207c 	ldr	r2, [pc, #124]	@ 80021d58 <complete_command+0xc4>
80021cd8:	e51b300c 	ldr	r3, [fp, #-12]
80021cdc:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021ce0:	e51b2010 	ldr	r2, [fp, #-16]
80021ce4:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80021ce8:	e1a00003 	mov	r0, r3
80021cec:	ebfff982 	bl	800202fc <strncmp>
80021cf0:	e1a03000 	mov	r3, r0
80021cf4:	e3530000 	cmp	r3, #0
80021cf8:	1a00000a 	bne	80021d28 <complete_command+0x94>
80021cfc:	e51b3008 	ldr	r3, [fp, #-8]
80021d00:	e3530000 	cmp	r3, #0
80021d04:	1a000004 	bne	80021d1c <complete_command+0x88>
80021d08:	e59f2048 	ldr	r2, [pc, #72]	@ 80021d58 <complete_command+0xc4>
80021d0c:	e51b300c 	ldr	r3, [fp, #-12]
80021d10:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021d14:	e50b3008 	str	r3, [fp, #-8]
80021d18:	ea000002 	b	80021d28 <complete_command+0x94>
80021d1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021d20:	e3a02001 	mov	r2, #1
80021d24:	e5832000 	str	r2, [r3]
80021d28:	e51b300c 	ldr	r3, [fp, #-12]
80021d2c:	e2833001 	add	r3, r3, #1
80021d30:	e50b300c 	str	r3, [fp, #-12]
80021d34:	e59f201c 	ldr	r2, [pc, #28]	@ 80021d58 <complete_command+0xc4>
80021d38:	e51b300c 	ldr	r3, [fp, #-12]
80021d3c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021d40:	e3530000 	cmp	r3, #0
80021d44:	1affffe2 	bne	80021cd4 <complete_command+0x40>
80021d48:	e51b3008 	ldr	r3, [fp, #-8]
80021d4c:	e1a00003 	mov	r0, r3
80021d50:	e24bd004 	sub	sp, fp, #4
80021d54:	e8bd8800 	pop	{fp, pc}
80021d58:	8002b000 	.word	0x8002b000

80021d5c <consoleintr>:
80021d5c:	e92d4800 	push	{fp, lr}
80021d60:	e28db004 	add	fp, sp, #4
80021d64:	e24dde22 	sub	sp, sp, #544	@ 0x220
80021d68:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
80021d6c:	e59f0344 	ldr	r0, [pc, #836]	@ 800220b8 <consoleintr+0x35c>
80021d70:	eb001168 	bl	80026318 <acquire>
80021d74:	ea0000c4 	b	8002208c <consoleintr+0x330>
80021d78:	e51b3010 	ldr	r3, [fp, #-16]
80021d7c:	e3530015 	cmp	r3, #21
80021d80:	ca000009 	bgt	80021dac <consoleintr+0x50>
80021d84:	e51b3010 	ldr	r3, [fp, #-16]
80021d88:	e3530008 	cmp	r3, #8
80021d8c:	ba000083 	blt	80021fa0 <consoleintr+0x244>
80021d90:	e51b3010 	ldr	r3, [fp, #-16]
80021d94:	e2432008 	sub	r2, r3, #8
80021d98:	e59f331c 	ldr	r3, [pc, #796]	@ 800220bc <consoleintr+0x360>
80021d9c:	e352000d 	cmp	r2, #13
80021da0:	8a00007e 	bhi	80021fa0 <consoleintr+0x244>
80021da4:	e793f102 	ldr	pc, [r3, r2, lsl #2]
80021da8:	e1a00000 	nop			@ (mov r0, r0)
80021dac:	e51b3010 	ldr	r3, [fp, #-16]
80021db0:	e353007f 	cmp	r3, #127	@ 0x7f
80021db4:	0a00001a 	beq	80021e24 <consoleintr+0xc8>
80021db8:	ea000078 	b	80021fa0 <consoleintr+0x244>
80021dbc:	eb0010d0 	bl	80026104 <procdump>
80021dc0:	ea0000b1 	b	8002208c <consoleintr+0x330>
80021dc4:	e59f32ec 	ldr	r3, [pc, #748]	@ 800220b8 <consoleintr+0x35c>
80021dc8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021dcc:	e2433001 	sub	r3, r3, #1
80021dd0:	e59f22e0 	ldr	r2, [pc, #736]	@ 800220b8 <consoleintr+0x35c>
80021dd4:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021dd8:	e3a00c01 	mov	r0, #256	@ 0x100
80021ddc:	ebffff4b 	bl	80021b10 <consputc>
80021de0:	e59f32d0 	ldr	r3, [pc, #720]	@ 800220b8 <consoleintr+0x35c>
80021de4:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021de8:	e59f32c8 	ldr	r3, [pc, #712]	@ 800220b8 <consoleintr+0x35c>
80021dec:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021df0:	e1520003 	cmp	r2, r3
80021df4:	0a00009d 	beq	80022070 <consoleintr+0x314>
80021df8:	e59f32b8 	ldr	r3, [pc, #696]	@ 800220b8 <consoleintr+0x35c>
80021dfc:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021e00:	e2433001 	sub	r3, r3, #1
80021e04:	e1a03b83 	lsl	r3, r3, #23
80021e08:	e1a03ba3 	lsr	r3, r3, #23
80021e0c:	e59f22a4 	ldr	r2, [pc, #676]	@ 800220b8 <consoleintr+0x35c>
80021e10:	e0823003 	add	r3, r2, r3
80021e14:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021e18:	e353000a 	cmp	r3, #10
80021e1c:	1affffe8 	bne	80021dc4 <consoleintr+0x68>
80021e20:	ea000092 	b	80022070 <consoleintr+0x314>
80021e24:	e59f328c 	ldr	r3, [pc, #652]	@ 800220b8 <consoleintr+0x35c>
80021e28:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021e2c:	e59f3284 	ldr	r3, [pc, #644]	@ 800220b8 <consoleintr+0x35c>
80021e30:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021e34:	e1520003 	cmp	r2, r3
80021e38:	0a00008e 	beq	80022078 <consoleintr+0x31c>
80021e3c:	e59f3274 	ldr	r3, [pc, #628]	@ 800220b8 <consoleintr+0x35c>
80021e40:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021e44:	e2433001 	sub	r3, r3, #1
80021e48:	e59f2268 	ldr	r2, [pc, #616]	@ 800220b8 <consoleintr+0x35c>
80021e4c:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021e50:	e3a00c01 	mov	r0, #256	@ 0x100
80021e54:	ebffff2d 	bl	80021b10 <consputc>
80021e58:	ea000086 	b	80022078 <consoleintr+0x31c>
80021e5c:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
80021e60:	e1a00003 	mov	r0, r3
80021e64:	ebffff44 	bl	80021b7c <input_buffer>
80021e68:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021e6c:	e3a03000 	mov	r3, #0
80021e70:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80021e74:	e24b201c 	sub	r2, fp, #28
80021e78:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
80021e7c:	e1a01002 	mov	r1, r2
80021e80:	e1a00003 	mov	r0, r3
80021e84:	ebffff82 	bl	80021c94 <complete_command>
80021e88:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021e8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021e90:	e3530000 	cmp	r3, #0
80021e94:	0a00001b 	beq	80021f08 <consoleintr+0x1ac>
80021e98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021e9c:	e3530000 	cmp	r3, #0
80021ea0:	1a000018 	bne	80021f08 <consoleintr+0x1ac>
80021ea4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ea8:	e50b3008 	str	r3, [fp, #-8]
80021eac:	ea00000e 	b	80021eec <consoleintr+0x190>
80021eb0:	e51b3008 	ldr	r3, [fp, #-8]
80021eb4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80021eb8:	e0823003 	add	r3, r2, r3
80021ebc:	e5d33000 	ldrb	r3, [r3]
80021ec0:	e1a00003 	mov	r0, r3
80021ec4:	ebffff11 	bl	80021b10 <consputc>
80021ec8:	e51b3008 	ldr	r3, [fp, #-8]
80021ecc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80021ed0:	e0823003 	add	r3, r2, r3
80021ed4:	e5d33000 	ldrb	r3, [r3]
80021ed8:	e1a00003 	mov	r0, r3
80021edc:	ebffff57 	bl	80021c40 <input_append>
80021ee0:	e51b3008 	ldr	r3, [fp, #-8]
80021ee4:	e2833001 	add	r3, r3, #1
80021ee8:	e50b3008 	str	r3, [fp, #-8]
80021eec:	e51b3008 	ldr	r3, [fp, #-8]
80021ef0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80021ef4:	e0823003 	add	r3, r2, r3
80021ef8:	e5d33000 	ldrb	r3, [r3]
80021efc:	e3530000 	cmp	r3, #0
80021f00:	1affffea 	bne	80021eb0 <consoleintr+0x154>
80021f04:	ea000024 	b	80021f9c <consoleintr+0x240>
80021f08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021f0c:	e3530000 	cmp	r3, #0
80021f10:	0a00005a 	beq	80022080 <consoleintr+0x324>
80021f14:	e59f01a4 	ldr	r0, [pc, #420]	@ 800220c0 <consoleintr+0x364>
80021f18:	ebfffe5d 	bl	80021894 <cprintf>
80021f1c:	e3a03000 	mov	r3, #0
80021f20:	e50b300c 	str	r3, [fp, #-12]
80021f24:	ea000012 	b	80021f74 <consoleintr+0x218>
80021f28:	e59f2194 	ldr	r2, [pc, #404]	@ 800220c4 <consoleintr+0x368>
80021f2c:	e51b300c 	ldr	r3, [fp, #-12]
80021f30:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021f34:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021f38:	e24b1f87 	sub	r1, fp, #540	@ 0x21c
80021f3c:	e1a00003 	mov	r0, r3
80021f40:	ebfff8ed 	bl	800202fc <strncmp>
80021f44:	e1a03000 	mov	r3, r0
80021f48:	e3530000 	cmp	r3, #0
80021f4c:	1a000005 	bne	80021f68 <consoleintr+0x20c>
80021f50:	e59f216c 	ldr	r2, [pc, #364]	@ 800220c4 <consoleintr+0x368>
80021f54:	e51b300c 	ldr	r3, [fp, #-12]
80021f58:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021f5c:	e1a01003 	mov	r1, r3
80021f60:	e59f0160 	ldr	r0, [pc, #352]	@ 800220c8 <consoleintr+0x36c>
80021f64:	ebfffe4a 	bl	80021894 <cprintf>
80021f68:	e51b300c 	ldr	r3, [fp, #-12]
80021f6c:	e2833001 	add	r3, r3, #1
80021f70:	e50b300c 	str	r3, [fp, #-12]
80021f74:	e59f2148 	ldr	r2, [pc, #328]	@ 800220c4 <consoleintr+0x368>
80021f78:	e51b300c 	ldr	r3, [fp, #-12]
80021f7c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80021f80:	e3530000 	cmp	r3, #0
80021f84:	1affffe7 	bne	80021f28 <consoleintr+0x1cc>
80021f88:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
80021f8c:	e1a01003 	mov	r1, r3
80021f90:	e59f0134 	ldr	r0, [pc, #308]	@ 800220cc <consoleintr+0x370>
80021f94:	ebfffe3e 	bl	80021894 <cprintf>
80021f98:	ea000038 	b	80022080 <consoleintr+0x324>
80021f9c:	ea000037 	b	80022080 <consoleintr+0x324>
80021fa0:	e51b3010 	ldr	r3, [fp, #-16]
80021fa4:	e3530000 	cmp	r3, #0
80021fa8:	0a000036 	beq	80022088 <consoleintr+0x32c>
80021fac:	e59f3104 	ldr	r3, [pc, #260]	@ 800220b8 <consoleintr+0x35c>
80021fb0:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021fb4:	e59f30fc 	ldr	r3, [pc, #252]	@ 800220b8 <consoleintr+0x35c>
80021fb8:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021fbc:	e0423003 	sub	r3, r2, r3
80021fc0:	e3530c02 	cmp	r3, #512	@ 0x200
80021fc4:	2a00002f 	bcs	80022088 <consoleintr+0x32c>
80021fc8:	e51b3010 	ldr	r3, [fp, #-16]
80021fcc:	e353000d 	cmp	r3, #13
80021fd0:	0a000001 	beq	80021fdc <consoleintr+0x280>
80021fd4:	e51b3010 	ldr	r3, [fp, #-16]
80021fd8:	ea000000 	b	80021fe0 <consoleintr+0x284>
80021fdc:	e3a0300a 	mov	r3, #10
80021fe0:	e50b3010 	str	r3, [fp, #-16]
80021fe4:	e59f30cc 	ldr	r3, [pc, #204]	@ 800220b8 <consoleintr+0x35c>
80021fe8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021fec:	e2832001 	add	r2, r3, #1
80021ff0:	e59f10c0 	ldr	r1, [pc, #192]	@ 800220b8 <consoleintr+0x35c>
80021ff4:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021ff8:	e1a03b83 	lsl	r3, r3, #23
80021ffc:	e1a03ba3 	lsr	r3, r3, #23
80022000:	e51b2010 	ldr	r2, [fp, #-16]
80022004:	e6ef1072 	uxtb	r1, r2
80022008:	e59f20a8 	ldr	r2, [pc, #168]	@ 800220b8 <consoleintr+0x35c>
8002200c:	e0823003 	add	r3, r2, r3
80022010:	e1a02001 	mov	r2, r1
80022014:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80022018:	e51b0010 	ldr	r0, [fp, #-16]
8002201c:	ebfffebb 	bl	80021b10 <consputc>
80022020:	e51b3010 	ldr	r3, [fp, #-16]
80022024:	e353000a 	cmp	r3, #10
80022028:	0a000009 	beq	80022054 <consoleintr+0x2f8>
8002202c:	e51b3010 	ldr	r3, [fp, #-16]
80022030:	e3530004 	cmp	r3, #4
80022034:	0a000006 	beq	80022054 <consoleintr+0x2f8>
80022038:	e59f3078 	ldr	r3, [pc, #120]	@ 800220b8 <consoleintr+0x35c>
8002203c:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80022040:	e59f3070 	ldr	r3, [pc, #112]	@ 800220b8 <consoleintr+0x35c>
80022044:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80022048:	e2833c02 	add	r3, r3, #512	@ 0x200
8002204c:	e1520003 	cmp	r2, r3
80022050:	1a00000c 	bne	80022088 <consoleintr+0x32c>
80022054:	e59f305c 	ldr	r3, [pc, #92]	@ 800220b8 <consoleintr+0x35c>
80022058:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
8002205c:	e59f2054 	ldr	r2, [pc, #84]	@ 800220b8 <consoleintr+0x35c>
80022060:	e5823238 	str	r3, [r2, #568]	@ 0x238
80022064:	e59f0064 	ldr	r0, [pc, #100]	@ 800220d0 <consoleintr+0x374>
80022068:	eb000feb 	bl	8002601c <wakeup>
8002206c:	ea000005 	b	80022088 <consoleintr+0x32c>
80022070:	e1a00000 	nop			@ (mov r0, r0)
80022074:	ea000004 	b	8002208c <consoleintr+0x330>
80022078:	e1a00000 	nop			@ (mov r0, r0)
8002207c:	ea000002 	b	8002208c <consoleintr+0x330>
80022080:	e1a00000 	nop			@ (mov r0, r0)
80022084:	ea000000 	b	8002208c <consoleintr+0x330>
80022088:	e1a00000 	nop			@ (mov r0, r0)
8002208c:	e51b3220 	ldr	r3, [fp, #-544]	@ 0xfffffde0
80022090:	e12fff33 	blx	r3
80022094:	e50b0010 	str	r0, [fp, #-16]
80022098:	e51b3010 	ldr	r3, [fp, #-16]
8002209c:	e3530000 	cmp	r3, #0
800220a0:	aaffff34 	bge	80021d78 <consoleintr+0x1c>
800220a4:	e59f000c 	ldr	r0, [pc, #12]	@ 800220b8 <consoleintr+0x35c>
800220a8:	eb0010a5 	bl	80026344 <release>
800220ac:	e1a00000 	nop			@ (mov r0, r0)
800220b0:	e24bd004 	sub	sp, fp, #4
800220b4:	e8bd8800 	pop	{fp, pc}
800220b8:	800ac930 	.word	0x800ac930
800220bc:	80029f80 	.word	0x80029f80
800220c0:	80029f74 	.word	0x80029f74
800220c4:	8002b000 	.word	0x8002b000
800220c8:	80029f78 	.word	0x80029f78
800220cc:	80029f7c 	.word	0x80029f7c
800220d0:	800acb64 	.word	0x800acb64

800220d4 <consoleread>:
800220d4:	e92d4800 	push	{fp, lr}
800220d8:	e28db004 	add	fp, sp, #4
800220dc:	e24dd018 	sub	sp, sp, #24
800220e0:	e50b0010 	str	r0, [fp, #-16]
800220e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800220e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800220ec:	e51b0010 	ldr	r0, [fp, #-16]
800220f0:	eb000534 	bl	800235c8 <iunlock>
800220f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800220f8:	e50b3008 	str	r3, [fp, #-8]
800220fc:	e59f0128 	ldr	r0, [pc, #296]	@ 8002222c <consoleread+0x158>
80022100:	eb001084 	bl	80026318 <acquire>
80022104:	ea000037 	b	800221e8 <consoleread+0x114>
80022108:	e59f3120 	ldr	r3, [pc, #288]	@ 80022230 <consoleread+0x15c>
8002210c:	e5933000 	ldr	r3, [r3]
80022110:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80022114:	e3530000 	cmp	r3, #0
80022118:	0a000005 	beq	80022134 <consoleread+0x60>
8002211c:	e59f0108 	ldr	r0, [pc, #264]	@ 8002222c <consoleread+0x158>
80022120:	eb001087 	bl	80026344 <release>
80022124:	e51b0010 	ldr	r0, [fp, #-16]
80022128:	eb0004c2 	bl	80023438 <ilock>
8002212c:	e3e03000 	mvn	r3, #0
80022130:	ea00003a 	b	80022220 <consoleread+0x14c>
80022134:	e59f10f0 	ldr	r1, [pc, #240]	@ 8002222c <consoleread+0x158>
80022138:	e59f00f4 	ldr	r0, [pc, #244]	@ 80022234 <consoleread+0x160>
8002213c:	eb000f22 	bl	80025dcc <sleep>
80022140:	e59f30e4 	ldr	r3, [pc, #228]	@ 8002222c <consoleread+0x158>
80022144:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80022148:	e59f30dc 	ldr	r3, [pc, #220]	@ 8002222c <consoleread+0x158>
8002214c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80022150:	e1520003 	cmp	r2, r3
80022154:	0affffeb 	beq	80022108 <consoleread+0x34>
80022158:	e59f30cc 	ldr	r3, [pc, #204]	@ 8002222c <consoleread+0x158>
8002215c:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80022160:	e2832001 	add	r2, r3, #1
80022164:	e59f10c0 	ldr	r1, [pc, #192]	@ 8002222c <consoleread+0x158>
80022168:	e5812234 	str	r2, [r1, #564]	@ 0x234
8002216c:	e1a03b83 	lsl	r3, r3, #23
80022170:	e1a03ba3 	lsr	r3, r3, #23
80022174:	e59f20b0 	ldr	r2, [pc, #176]	@ 8002222c <consoleread+0x158>
80022178:	e0823003 	add	r3, r2, r3
8002217c:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80022180:	e50b300c 	str	r3, [fp, #-12]
80022184:	e51b300c 	ldr	r3, [fp, #-12]
80022188:	e3530004 	cmp	r3, #4
8002218c:	1a000009 	bne	800221b8 <consoleread+0xe4>
80022190:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022194:	e51b2008 	ldr	r2, [fp, #-8]
80022198:	e1520003 	cmp	r2, r3
8002219c:	9a000015 	bls	800221f8 <consoleread+0x124>
800221a0:	e59f3084 	ldr	r3, [pc, #132]	@ 8002222c <consoleread+0x158>
800221a4:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
800221a8:	e2433001 	sub	r3, r3, #1
800221ac:	e59f2078 	ldr	r2, [pc, #120]	@ 8002222c <consoleread+0x158>
800221b0:	e5823234 	str	r3, [r2, #564]	@ 0x234
800221b4:	ea00000f 	b	800221f8 <consoleread+0x124>
800221b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800221bc:	e2832001 	add	r2, r3, #1
800221c0:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
800221c4:	e51b200c 	ldr	r2, [fp, #-12]
800221c8:	e6ef2072 	uxtb	r2, r2
800221cc:	e5c32000 	strb	r2, [r3]
800221d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800221d4:	e2433001 	sub	r3, r3, #1
800221d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800221dc:	e51b300c 	ldr	r3, [fp, #-12]
800221e0:	e353000a 	cmp	r3, #10
800221e4:	0a000005 	beq	80022200 <consoleread+0x12c>
800221e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800221ec:	e3530000 	cmp	r3, #0
800221f0:	caffffd2 	bgt	80022140 <consoleread+0x6c>
800221f4:	ea000002 	b	80022204 <consoleread+0x130>
800221f8:	e1a00000 	nop			@ (mov r0, r0)
800221fc:	ea000000 	b	80022204 <consoleread+0x130>
80022200:	e1a00000 	nop			@ (mov r0, r0)
80022204:	e59f0020 	ldr	r0, [pc, #32]	@ 8002222c <consoleread+0x158>
80022208:	eb00104d 	bl	80026344 <release>
8002220c:	e51b0010 	ldr	r0, [fp, #-16]
80022210:	eb000488 	bl	80023438 <ilock>
80022214:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022218:	e51b2008 	ldr	r2, [fp, #-8]
8002221c:	e0423003 	sub	r3, r2, r3
80022220:	e1a00003 	mov	r0, r3
80022224:	e24bd004 	sub	sp, fp, #4
80022228:	e8bd8800 	pop	{fp, pc}
8002222c:	800ac930 	.word	0x800ac930
80022230:	800b0dc0 	.word	0x800b0dc0
80022234:	800acb64 	.word	0x800acb64

80022238 <consolewrite>:
80022238:	e92d4800 	push	{fp, lr}
8002223c:	e28db004 	add	fp, sp, #4
80022240:	e24dd018 	sub	sp, sp, #24
80022244:	e50b0010 	str	r0, [fp, #-16]
80022248:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002224c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022250:	e51b0010 	ldr	r0, [fp, #-16]
80022254:	eb0004db 	bl	800235c8 <iunlock>
80022258:	e59f0060 	ldr	r0, [pc, #96]	@ 800222c0 <consolewrite+0x88>
8002225c:	eb00102d 	bl	80026318 <acquire>
80022260:	e3a03000 	mov	r3, #0
80022264:	e50b3008 	str	r3, [fp, #-8]
80022268:	ea000008 	b	80022290 <consolewrite+0x58>
8002226c:	e51b3008 	ldr	r3, [fp, #-8]
80022270:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022274:	e0823003 	add	r3, r2, r3
80022278:	e5d33000 	ldrb	r3, [r3]
8002227c:	e1a00003 	mov	r0, r3
80022280:	ebfffe22 	bl	80021b10 <consputc>
80022284:	e51b3008 	ldr	r3, [fp, #-8]
80022288:	e2833001 	add	r3, r3, #1
8002228c:	e50b3008 	str	r3, [fp, #-8]
80022290:	e51b2008 	ldr	r2, [fp, #-8]
80022294:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022298:	e1520003 	cmp	r2, r3
8002229c:	bafffff2 	blt	8002226c <consolewrite+0x34>
800222a0:	e59f0018 	ldr	r0, [pc, #24]	@ 800222c0 <consolewrite+0x88>
800222a4:	eb001026 	bl	80026344 <release>
800222a8:	e51b0010 	ldr	r0, [fp, #-16]
800222ac:	eb000461 	bl	80023438 <ilock>
800222b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800222b4:	e1a00003 	mov	r0, r3
800222b8:	e24bd004 	sub	sp, fp, #4
800222bc:	e8bd8800 	pop	{fp, pc}
800222c0:	800ac8f8 	.word	0x800ac8f8

800222c4 <consoleinit>:
800222c4:	e92d4800 	push	{fp, lr}
800222c8:	e28db004 	add	fp, sp, #4
800222cc:	e59f103c 	ldr	r1, [pc, #60]	@ 80022310 <consoleinit+0x4c>
800222d0:	e59f003c 	ldr	r0, [pc, #60]	@ 80022314 <consoleinit+0x50>
800222d4:	eb000ffd 	bl	800262d0 <initlock>
800222d8:	e59f1038 	ldr	r1, [pc, #56]	@ 80022318 <consoleinit+0x54>
800222dc:	e59f0038 	ldr	r0, [pc, #56]	@ 8002231c <consoleinit+0x58>
800222e0:	eb000ffa 	bl	800262d0 <initlock>
800222e4:	e59f3034 	ldr	r3, [pc, #52]	@ 80022320 <consoleinit+0x5c>
800222e8:	e59f2034 	ldr	r2, [pc, #52]	@ 80022324 <consoleinit+0x60>
800222ec:	e583200c 	str	r2, [r3, #12]
800222f0:	e59f3028 	ldr	r3, [pc, #40]	@ 80022320 <consoleinit+0x5c>
800222f4:	e59f202c 	ldr	r2, [pc, #44]	@ 80022328 <consoleinit+0x64>
800222f8:	e5832008 	str	r2, [r3, #8]
800222fc:	e59f3010 	ldr	r3, [pc, #16]	@ 80022314 <consoleinit+0x50>
80022300:	e3a02001 	mov	r2, #1
80022304:	e5832034 	str	r2, [r3, #52]	@ 0x34
80022308:	e1a00000 	nop			@ (mov r0, r0)
8002230c:	e8bd8800 	pop	{fp, pc}
80022310:	80029fb8 	.word	0x80029fb8
80022314:	800ac8f8 	.word	0x800ac8f8
80022318:	80029fc0 	.word	0x80029fc0
8002231c:	800ac930 	.word	0x800ac930
80022320:	800acb70 	.word	0x800acb70
80022324:	80022238 	.word	0x80022238
80022328:	800220d4 	.word	0x800220d4

8002232c <exec>:
8002232c:	e92d4810 	push	{r4, fp, lr}
80022330:	e28db008 	add	fp, sp, #8
80022334:	e24ddf49 	sub	sp, sp, #292	@ 0x124
80022338:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
8002233c:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
80022340:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
80022344:	eb00080e 	bl	80024384 <namei>
80022348:	e50b0010 	str	r0, [fp, #-16]
8002234c:	e51b3010 	ldr	r3, [fp, #-16]
80022350:	e3530000 	cmp	r3, #0
80022354:	1a000001 	bne	80022360 <exec+0x34>
80022358:	e3e03000 	mvn	r3, #0
8002235c:	ea000120 	b	800227e4 <exec+0x4b8>
80022360:	e51b0010 	ldr	r0, [fp, #-16]
80022364:	eb000433 	bl	80023438 <ilock>
80022368:	e24b1068 	sub	r1, fp, #104	@ 0x68
8002236c:	e3a03034 	mov	r3, #52	@ 0x34
80022370:	e3a02000 	mov	r2, #0
80022374:	e51b0010 	ldr	r0, [fp, #-16]
80022378:	eb0005da 	bl	80023ae8 <readi>
8002237c:	e1a03000 	mov	r3, r0
80022380:	e3530033 	cmp	r3, #51	@ 0x33
80022384:	9a0000f6 	bls	80022764 <exec+0x438>
80022388:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
8002238c:	e59f245c 	ldr	r2, [pc, #1116]	@ 800227f0 <exec+0x4c4>
80022390:	e1530002 	cmp	r3, r2
80022394:	1a0000f4 	bne	8002276c <exec+0x440>
80022398:	e3a03000 	mov	r3, #0
8002239c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800223a0:	eb0018a6 	bl	80028640 <kpt_alloc>
800223a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800223a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800223ac:	e3530000 	cmp	r3, #0
800223b0:	0a0000ef 	beq	80022774 <exec+0x448>
800223b4:	e3a03000 	mov	r3, #0
800223b8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800223bc:	e3a03000 	mov	r3, #0
800223c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800223c4:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
800223c8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800223cc:	ea00002e 	b	8002248c <exec+0x160>
800223d0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800223d4:	e24b1088 	sub	r1, fp, #136	@ 0x88
800223d8:	e3a03020 	mov	r3, #32
800223dc:	e51b0010 	ldr	r0, [fp, #-16]
800223e0:	eb0005c0 	bl	80023ae8 <readi>
800223e4:	e1a03000 	mov	r3, r0
800223e8:	e3530020 	cmp	r3, #32
800223ec:	1a0000e2 	bne	8002277c <exec+0x450>
800223f0:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
800223f4:	e3530001 	cmp	r3, #1
800223f8:	1a00001c 	bne	80022470 <exec+0x144>
800223fc:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
80022400:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022404:	e1520003 	cmp	r2, r3
80022408:	3a0000dd 	bcc	80022784 <exec+0x458>
8002240c:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
80022410:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
80022414:	e0823003 	add	r3, r2, r3
80022418:	e1a02003 	mov	r2, r3
8002241c:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022420:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022424:	eb0019b1 	bl	80028af0 <allocuvm>
80022428:	e1a03000 	mov	r3, r0
8002242c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022430:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022434:	e3530000 	cmp	r3, #0
80022438:	0a0000d3 	beq	8002278c <exec+0x460>
8002243c:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
80022440:	e1a01003 	mov	r1, r3
80022444:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
80022448:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
8002244c:	e58d3000 	str	r3, [sp]
80022450:	e1a03002 	mov	r3, r2
80022454:	e51b2010 	ldr	r2, [fp, #-16]
80022458:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002245c:	eb001957 	bl	800289c0 <loaduvm>
80022460:	e1a03000 	mov	r3, r0
80022464:	e3530000 	cmp	r3, #0
80022468:	ba0000c9 	blt	80022794 <exec+0x468>
8002246c:	ea000000 	b	80022474 <exec+0x148>
80022470:	e1a00000 	nop			@ (mov r0, r0)
80022474:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022478:	e2833001 	add	r3, r3, #1
8002247c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80022480:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022484:	e2833020 	add	r3, r3, #32
80022488:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002248c:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
80022490:	e1a02003 	mov	r2, r3
80022494:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022498:	e1530002 	cmp	r3, r2
8002249c:	baffffcb 	blt	800223d0 <exec+0xa4>
800224a0:	e51b0010 	ldr	r0, [fp, #-16]
800224a4:	eb0004a4 	bl	8002373c <iunlockput>
800224a8:	e3a03000 	mov	r3, #0
800224ac:	e50b3010 	str	r3, [fp, #-16]
800224b0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800224b4:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800224b8:	e283300f 	add	r3, r3, #15
800224bc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800224c0:	e3c3300f 	bic	r3, r3, #15
800224c4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800224c8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800224cc:	e2833a02 	add	r3, r3, #8192	@ 0x2000
800224d0:	e1a02003 	mov	r2, r3
800224d4:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800224d8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800224dc:	eb001983 	bl	80028af0 <allocuvm>
800224e0:	e1a03000 	mov	r3, r0
800224e4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800224e8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800224ec:	e3530000 	cmp	r3, #0
800224f0:	0a0000a9 	beq	8002279c <exec+0x470>
800224f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800224f8:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
800224fc:	e1a01003 	mov	r1, r3
80022500:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022504:	eb001a2e 	bl	80028dc4 <clearpteu>
80022508:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002250c:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022510:	e3a03000 	mov	r3, #0
80022514:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80022518:	ea00002e 	b	800225d8 <exec+0x2ac>
8002251c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022520:	e353001f 	cmp	r3, #31
80022524:	8a00009e 	bhi	800227a4 <exec+0x478>
80022528:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002252c:	e1a03103 	lsl	r3, r3, #2
80022530:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022534:	e0823003 	add	r3, r2, r3
80022538:	e5933000 	ldr	r3, [r3]
8002253c:	e1a00003 	mov	r0, r3
80022540:	ebfff7e9 	bl	800204ec <strlen>
80022544:	e1a03000 	mov	r3, r0
80022548:	e1a02003 	mov	r2, r3
8002254c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80022550:	e0433002 	sub	r3, r3, r2
80022554:	e2433001 	sub	r3, r3, #1
80022558:	e3c33003 	bic	r3, r3, #3
8002255c:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022560:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022564:	e1a03103 	lsl	r3, r3, #2
80022568:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002256c:	e0823003 	add	r3, r2, r3
80022570:	e5934000 	ldr	r4, [r3]
80022574:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022578:	e1a03103 	lsl	r3, r3, #2
8002257c:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022580:	e0823003 	add	r3, r2, r3
80022584:	e5933000 	ldr	r3, [r3]
80022588:	e1a00003 	mov	r0, r3
8002258c:	ebfff7d6 	bl	800204ec <strlen>
80022590:	e1a03000 	mov	r3, r0
80022594:	e2833001 	add	r3, r3, #1
80022598:	e1a02004 	mov	r2, r4
8002259c:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800225a0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800225a4:	eb001a97 	bl	80029008 <copyout>
800225a8:	e1a03000 	mov	r3, r0
800225ac:	e3530000 	cmp	r3, #0
800225b0:	ba00007d 	blt	800227ac <exec+0x480>
800225b4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800225b8:	e1a03103 	lsl	r3, r3, #2
800225bc:	e243300c 	sub	r3, r3, #12
800225c0:	e083300b 	add	r3, r3, fp
800225c4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800225c8:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
800225cc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800225d0:	e2833001 	add	r3, r3, #1
800225d4:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800225d8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800225dc:	e1a03103 	lsl	r3, r3, #2
800225e0:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800225e4:	e0823003 	add	r3, r2, r3
800225e8:	e5933000 	ldr	r3, [r3]
800225ec:	e3530000 	cmp	r3, #0
800225f0:	1affffc9 	bne	8002251c <exec+0x1f0>
800225f4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800225f8:	e1a03103 	lsl	r3, r3, #2
800225fc:	e243300c 	sub	r3, r3, #12
80022600:	e083300b 	add	r3, r3, fp
80022604:	e3a02000 	mov	r2, #0
80022608:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
8002260c:	e59f31e0 	ldr	r3, [pc, #480]	@ 800227f4 <exec+0x4c8>
80022610:	e5933000 	ldr	r3, [r3]
80022614:	e5933018 	ldr	r3, [r3, #24]
80022618:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
8002261c:	e5832010 	str	r2, [r3, #16]
80022620:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022624:	e2833001 	add	r3, r3, #1
80022628:	e1a02103 	lsl	r2, r3, #2
8002262c:	e59f31c0 	ldr	r3, [pc, #448]	@ 800227f4 <exec+0x4c8>
80022630:	e5933000 	ldr	r3, [r3]
80022634:	e5933018 	ldr	r3, [r3, #24]
80022638:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
8002263c:	e0412002 	sub	r2, r1, r2
80022640:	e5832014 	str	r2, [r3, #20]
80022644:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022648:	e2833001 	add	r3, r3, #1
8002264c:	e1a03103 	lsl	r3, r3, #2
80022650:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022654:	e0423003 	sub	r3, r2, r3
80022658:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
8002265c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022660:	e2833001 	add	r3, r3, #1
80022664:	e1a03103 	lsl	r3, r3, #2
80022668:	e24b2f46 	sub	r2, fp, #280	@ 0x118
8002266c:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022670:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022674:	eb001a63 	bl	80029008 <copyout>
80022678:	e1a03000 	mov	r3, r0
8002267c:	e3530000 	cmp	r3, #0
80022680:	ba00004b 	blt	800227b4 <exec+0x488>
80022684:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
80022688:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002268c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022690:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022694:	ea000009 	b	800226c0 <exec+0x394>
80022698:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002269c:	e5d33000 	ldrb	r3, [r3]
800226a0:	e353002f 	cmp	r3, #47	@ 0x2f
800226a4:	1a000002 	bne	800226b4 <exec+0x388>
800226a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800226ac:	e2833001 	add	r3, r3, #1
800226b0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800226b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800226b8:	e2833001 	add	r3, r3, #1
800226bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800226c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800226c4:	e5d33000 	ldrb	r3, [r3]
800226c8:	e3530000 	cmp	r3, #0
800226cc:	1afffff1 	bne	80022698 <exec+0x36c>
800226d0:	e59f311c 	ldr	r3, [pc, #284]	@ 800227f4 <exec+0x4c8>
800226d4:	e5933000 	ldr	r3, [r3]
800226d8:	e283306c 	add	r3, r3, #108	@ 0x6c
800226dc:	e3a02010 	mov	r2, #16
800226e0:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800226e4:	e1a00003 	mov	r0, r3
800226e8:	ebfff758 	bl	80020450 <safestrcpy>
800226ec:	e59f3100 	ldr	r3, [pc, #256]	@ 800227f4 <exec+0x4c8>
800226f0:	e5933000 	ldr	r3, [r3]
800226f4:	e5933004 	ldr	r3, [r3, #4]
800226f8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
800226fc:	e59f30f0 	ldr	r3, [pc, #240]	@ 800227f4 <exec+0x4c8>
80022700:	e5933000 	ldr	r3, [r3]
80022704:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022708:	e5832004 	str	r2, [r3, #4]
8002270c:	e59f30e0 	ldr	r3, [pc, #224]	@ 800227f4 <exec+0x4c8>
80022710:	e5933000 	ldr	r3, [r3]
80022714:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80022718:	e5832000 	str	r2, [r3]
8002271c:	e59f30d0 	ldr	r3, [pc, #208]	@ 800227f4 <exec+0x4c8>
80022720:	e5933000 	ldr	r3, [r3]
80022724:	e5933018 	ldr	r3, [r3, #24]
80022728:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
8002272c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80022730:	e59f30bc 	ldr	r3, [pc, #188]	@ 800227f4 <exec+0x4c8>
80022734:	e5933000 	ldr	r3, [r3]
80022738:	e5933018 	ldr	r3, [r3, #24]
8002273c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022740:	e5832000 	str	r2, [r3]
80022744:	e59f30a8 	ldr	r3, [pc, #168]	@ 800227f4 <exec+0x4c8>
80022748:	e5933000 	ldr	r3, [r3]
8002274c:	e1a00003 	mov	r0, r3
80022750:	eb001861 	bl	800288dc <switchuvm>
80022754:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
80022758:	eb001969 	bl	80028d04 <freevm>
8002275c:	e3a03000 	mov	r3, #0
80022760:	ea00001f 	b	800227e4 <exec+0x4b8>
80022764:	e1a00000 	nop			@ (mov r0, r0)
80022768:	ea000012 	b	800227b8 <exec+0x48c>
8002276c:	e1a00000 	nop			@ (mov r0, r0)
80022770:	ea000010 	b	800227b8 <exec+0x48c>
80022774:	e1a00000 	nop			@ (mov r0, r0)
80022778:	ea00000e 	b	800227b8 <exec+0x48c>
8002277c:	e1a00000 	nop			@ (mov r0, r0)
80022780:	ea00000c 	b	800227b8 <exec+0x48c>
80022784:	e1a00000 	nop			@ (mov r0, r0)
80022788:	ea00000a 	b	800227b8 <exec+0x48c>
8002278c:	e1a00000 	nop			@ (mov r0, r0)
80022790:	ea000008 	b	800227b8 <exec+0x48c>
80022794:	e1a00000 	nop			@ (mov r0, r0)
80022798:	ea000006 	b	800227b8 <exec+0x48c>
8002279c:	e1a00000 	nop			@ (mov r0, r0)
800227a0:	ea000004 	b	800227b8 <exec+0x48c>
800227a4:	e1a00000 	nop			@ (mov r0, r0)
800227a8:	ea000002 	b	800227b8 <exec+0x48c>
800227ac:	e1a00000 	nop			@ (mov r0, r0)
800227b0:	ea000000 	b	800227b8 <exec+0x48c>
800227b4:	e1a00000 	nop			@ (mov r0, r0)
800227b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800227bc:	e3530000 	cmp	r3, #0
800227c0:	0a000001 	beq	800227cc <exec+0x4a0>
800227c4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800227c8:	eb00194d 	bl	80028d04 <freevm>
800227cc:	e51b3010 	ldr	r3, [fp, #-16]
800227d0:	e3530000 	cmp	r3, #0
800227d4:	0a000001 	beq	800227e0 <exec+0x4b4>
800227d8:	e51b0010 	ldr	r0, [fp, #-16]
800227dc:	eb0003d6 	bl	8002373c <iunlockput>
800227e0:	e3e03000 	mvn	r3, #0
800227e4:	e1a00003 	mov	r0, r3
800227e8:	e24bd008 	sub	sp, fp, #8
800227ec:	e8bd8810 	pop	{r4, fp, pc}
800227f0:	464c457f 	.word	0x464c457f
800227f4:	800b0dc0 	.word	0x800b0dc0

800227f8 <fileinit>:
800227f8:	e92d4800 	push	{fp, lr}
800227fc:	e28db004 	add	fp, sp, #4
80022800:	e59f100c 	ldr	r1, [pc, #12]	@ 80022814 <fileinit+0x1c>
80022804:	e59f000c 	ldr	r0, [pc, #12]	@ 80022818 <fileinit+0x20>
80022808:	eb000eb0 	bl	800262d0 <initlock>
8002280c:	e1a00000 	nop			@ (mov r0, r0)
80022810:	e8bd8800 	pop	{fp, pc}
80022814:	80029fc8 	.word	0x80029fc8
80022818:	800acbc0 	.word	0x800acbc0

8002281c <filealloc>:
8002281c:	e92d4800 	push	{fp, lr}
80022820:	e28db004 	add	fp, sp, #4
80022824:	e24dd008 	sub	sp, sp, #8
80022828:	e59f006c 	ldr	r0, [pc, #108]	@ 8002289c <filealloc+0x80>
8002282c:	eb000eb9 	bl	80026318 <acquire>
80022830:	e59f3068 	ldr	r3, [pc, #104]	@ 800228a0 <filealloc+0x84>
80022834:	e50b3008 	str	r3, [fp, #-8]
80022838:	ea00000d 	b	80022874 <filealloc+0x58>
8002283c:	e51b3008 	ldr	r3, [fp, #-8]
80022840:	e5933004 	ldr	r3, [r3, #4]
80022844:	e3530000 	cmp	r3, #0
80022848:	1a000006 	bne	80022868 <filealloc+0x4c>
8002284c:	e51b3008 	ldr	r3, [fp, #-8]
80022850:	e3a02001 	mov	r2, #1
80022854:	e5832004 	str	r2, [r3, #4]
80022858:	e59f003c 	ldr	r0, [pc, #60]	@ 8002289c <filealloc+0x80>
8002285c:	eb000eb8 	bl	80026344 <release>
80022860:	e51b3008 	ldr	r3, [fp, #-8]
80022864:	ea000009 	b	80022890 <filealloc+0x74>
80022868:	e51b3008 	ldr	r3, [fp, #-8]
8002286c:	e2833018 	add	r3, r3, #24
80022870:	e50b3008 	str	r3, [fp, #-8]
80022874:	e59f2028 	ldr	r2, [pc, #40]	@ 800228a4 <filealloc+0x88>
80022878:	e51b3008 	ldr	r3, [fp, #-8]
8002287c:	e1530002 	cmp	r3, r2
80022880:	3affffed 	bcc	8002283c <filealloc+0x20>
80022884:	e59f0010 	ldr	r0, [pc, #16]	@ 8002289c <filealloc+0x80>
80022888:	eb000ead 	bl	80026344 <release>
8002288c:	e3a03000 	mov	r3, #0
80022890:	e1a00003 	mov	r0, r3
80022894:	e24bd004 	sub	sp, fp, #4
80022898:	e8bd8800 	pop	{fp, pc}
8002289c:	800acbc0 	.word	0x800acbc0
800228a0:	800acbf4 	.word	0x800acbf4
800228a4:	800ad554 	.word	0x800ad554

800228a8 <filedup>:
800228a8:	e92d4800 	push	{fp, lr}
800228ac:	e28db004 	add	fp, sp, #4
800228b0:	e24dd008 	sub	sp, sp, #8
800228b4:	e50b0008 	str	r0, [fp, #-8]
800228b8:	e59f0044 	ldr	r0, [pc, #68]	@ 80022904 <filedup+0x5c>
800228bc:	eb000e95 	bl	80026318 <acquire>
800228c0:	e51b3008 	ldr	r3, [fp, #-8]
800228c4:	e5933004 	ldr	r3, [r3, #4]
800228c8:	e3530000 	cmp	r3, #0
800228cc:	ca000001 	bgt	800228d8 <filedup+0x30>
800228d0:	e59f0030 	ldr	r0, [pc, #48]	@ 80022908 <filedup+0x60>
800228d4:	ebfffc74 	bl	80021aac <panic>
800228d8:	e51b3008 	ldr	r3, [fp, #-8]
800228dc:	e5933004 	ldr	r3, [r3, #4]
800228e0:	e2832001 	add	r2, r3, #1
800228e4:	e51b3008 	ldr	r3, [fp, #-8]
800228e8:	e5832004 	str	r2, [r3, #4]
800228ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80022904 <filedup+0x5c>
800228f0:	eb000e93 	bl	80026344 <release>
800228f4:	e51b3008 	ldr	r3, [fp, #-8]
800228f8:	e1a00003 	mov	r0, r3
800228fc:	e24bd004 	sub	sp, fp, #4
80022900:	e8bd8800 	pop	{fp, pc}
80022904:	800acbc0 	.word	0x800acbc0
80022908:	80029fd0 	.word	0x80029fd0

8002290c <fileclose>:
8002290c:	e92d4800 	push	{fp, lr}
80022910:	e28db004 	add	fp, sp, #4
80022914:	e24dd020 	sub	sp, sp, #32
80022918:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002291c:	e59f00d0 	ldr	r0, [pc, #208]	@ 800229f4 <fileclose+0xe8>
80022920:	eb000e7c 	bl	80026318 <acquire>
80022924:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022928:	e5933004 	ldr	r3, [r3, #4]
8002292c:	e3530000 	cmp	r3, #0
80022930:	ca000001 	bgt	8002293c <fileclose+0x30>
80022934:	e59f00bc 	ldr	r0, [pc, #188]	@ 800229f8 <fileclose+0xec>
80022938:	ebfffc5b 	bl	80021aac <panic>
8002293c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022940:	e5933004 	ldr	r3, [r3, #4]
80022944:	e2432001 	sub	r2, r3, #1
80022948:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002294c:	e5832004 	str	r2, [r3, #4]
80022950:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022954:	e5933004 	ldr	r3, [r3, #4]
80022958:	e3530000 	cmp	r3, #0
8002295c:	da000002 	ble	8002296c <fileclose+0x60>
80022960:	e59f008c 	ldr	r0, [pc, #140]	@ 800229f4 <fileclose+0xe8>
80022964:	eb000e76 	bl	80026344 <release>
80022968:	ea00001f 	b	800229ec <fileclose+0xe0>
8002296c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022970:	e24bc01c 	sub	ip, fp, #28
80022974:	e1a0e003 	mov	lr, r3
80022978:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
8002297c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80022980:	e89e0003 	ldm	lr, {r0, r1}
80022984:	e88c0003 	stm	ip, {r0, r1}
80022988:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002298c:	e3a02000 	mov	r2, #0
80022990:	e5832004 	str	r2, [r3, #4]
80022994:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022998:	e3a02000 	mov	r2, #0
8002299c:	e5c32000 	strb	r2, [r3]
800229a0:	e59f004c 	ldr	r0, [pc, #76]	@ 800229f4 <fileclose+0xe8>
800229a4:	eb000e66 	bl	80026344 <release>
800229a8:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800229ac:	e3530001 	cmp	r3, #1
800229b0:	1a000005 	bne	800229cc <fileclose+0xc0>
800229b4:	e51b3010 	ldr	r3, [fp, #-16]
800229b8:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
800229bc:	e1a01002 	mov	r1, r2
800229c0:	e1a00003 	mov	r0, r3
800229c4:	eb0008e8 	bl	80024d6c <pipeclose>
800229c8:	ea000007 	b	800229ec <fileclose+0xe0>
800229cc:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800229d0:	e3530002 	cmp	r3, #2
800229d4:	1a000004 	bne	800229ec <fileclose+0xe0>
800229d8:	eb000742 	bl	800246e8 <begin_trans>
800229dc:	e51b300c 	ldr	r3, [fp, #-12]
800229e0:	e1a00003 	mov	r0, r3
800229e4:	eb000319 	bl	80023650 <iput>
800229e8:	eb000752 	bl	80024738 <commit_trans>
800229ec:	e24bd004 	sub	sp, fp, #4
800229f0:	e8bd8800 	pop	{fp, pc}
800229f4:	800acbc0 	.word	0x800acbc0
800229f8:	80029fd8 	.word	0x80029fd8

800229fc <filestat>:
800229fc:	e92d4800 	push	{fp, lr}
80022a00:	e28db004 	add	fp, sp, #4
80022a04:	e24dd008 	sub	sp, sp, #8
80022a08:	e50b0008 	str	r0, [fp, #-8]
80022a0c:	e50b100c 	str	r1, [fp, #-12]
80022a10:	e51b3008 	ldr	r3, [fp, #-8]
80022a14:	e5d33000 	ldrb	r3, [r3]
80022a18:	e3530002 	cmp	r3, #2
80022a1c:	1a00000e 	bne	80022a5c <filestat+0x60>
80022a20:	e51b3008 	ldr	r3, [fp, #-8]
80022a24:	e5933010 	ldr	r3, [r3, #16]
80022a28:	e1a00003 	mov	r0, r3
80022a2c:	eb000281 	bl	80023438 <ilock>
80022a30:	e51b3008 	ldr	r3, [fp, #-8]
80022a34:	e5933010 	ldr	r3, [r3, #16]
80022a38:	e51b100c 	ldr	r1, [fp, #-12]
80022a3c:	e1a00003 	mov	r0, r3
80022a40:	eb00040a 	bl	80023a70 <stati>
80022a44:	e51b3008 	ldr	r3, [fp, #-8]
80022a48:	e5933010 	ldr	r3, [r3, #16]
80022a4c:	e1a00003 	mov	r0, r3
80022a50:	eb0002dc 	bl	800235c8 <iunlock>
80022a54:	e3a03000 	mov	r3, #0
80022a58:	ea000000 	b	80022a60 <filestat+0x64>
80022a5c:	e3e03000 	mvn	r3, #0
80022a60:	e1a00003 	mov	r0, r3
80022a64:	e24bd004 	sub	sp, fp, #4
80022a68:	e8bd8800 	pop	{fp, pc}

80022a6c <fileread>:
80022a6c:	e92d4800 	push	{fp, lr}
80022a70:	e28db004 	add	fp, sp, #4
80022a74:	e24dd018 	sub	sp, sp, #24
80022a78:	e50b0010 	str	r0, [fp, #-16]
80022a7c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022a80:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022a84:	e51b3010 	ldr	r3, [fp, #-16]
80022a88:	e5d33008 	ldrb	r3, [r3, #8]
80022a8c:	e3530000 	cmp	r3, #0
80022a90:	1a000001 	bne	80022a9c <fileread+0x30>
80022a94:	e3e03000 	mvn	r3, #0
80022a98:	ea00002c 	b	80022b50 <fileread+0xe4>
80022a9c:	e51b3010 	ldr	r3, [fp, #-16]
80022aa0:	e5d33000 	ldrb	r3, [r3]
80022aa4:	e3530001 	cmp	r3, #1
80022aa8:	1a000007 	bne	80022acc <fileread+0x60>
80022aac:	e51b3010 	ldr	r3, [fp, #-16]
80022ab0:	e593300c 	ldr	r3, [r3, #12]
80022ab4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022ab8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022abc:	e1a00003 	mov	r0, r3
80022ac0:	eb000923 	bl	80024f54 <piperead>
80022ac4:	e1a03000 	mov	r3, r0
80022ac8:	ea000020 	b	80022b50 <fileread+0xe4>
80022acc:	e51b3010 	ldr	r3, [fp, #-16]
80022ad0:	e5d33000 	ldrb	r3, [r3]
80022ad4:	e3530002 	cmp	r3, #2
80022ad8:	1a00001a 	bne	80022b48 <fileread+0xdc>
80022adc:	e51b3010 	ldr	r3, [fp, #-16]
80022ae0:	e5933010 	ldr	r3, [r3, #16]
80022ae4:	e1a00003 	mov	r0, r3
80022ae8:	eb000252 	bl	80023438 <ilock>
80022aec:	e51b3010 	ldr	r3, [fp, #-16]
80022af0:	e5930010 	ldr	r0, [r3, #16]
80022af4:	e51b3010 	ldr	r3, [fp, #-16]
80022af8:	e5932014 	ldr	r2, [r3, #20]
80022afc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b00:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022b04:	eb0003f7 	bl	80023ae8 <readi>
80022b08:	e50b0008 	str	r0, [fp, #-8]
80022b0c:	e51b3008 	ldr	r3, [fp, #-8]
80022b10:	e3530000 	cmp	r3, #0
80022b14:	da000005 	ble	80022b30 <fileread+0xc4>
80022b18:	e51b3010 	ldr	r3, [fp, #-16]
80022b1c:	e5932014 	ldr	r2, [r3, #20]
80022b20:	e51b3008 	ldr	r3, [fp, #-8]
80022b24:	e0822003 	add	r2, r2, r3
80022b28:	e51b3010 	ldr	r3, [fp, #-16]
80022b2c:	e5832014 	str	r2, [r3, #20]
80022b30:	e51b3010 	ldr	r3, [fp, #-16]
80022b34:	e5933010 	ldr	r3, [r3, #16]
80022b38:	e1a00003 	mov	r0, r3
80022b3c:	eb0002a1 	bl	800235c8 <iunlock>
80022b40:	e51b3008 	ldr	r3, [fp, #-8]
80022b44:	ea000001 	b	80022b50 <fileread+0xe4>
80022b48:	e59f000c 	ldr	r0, [pc, #12]	@ 80022b5c <fileread+0xf0>
80022b4c:	ebfffbd6 	bl	80021aac <panic>
80022b50:	e1a00003 	mov	r0, r3
80022b54:	e24bd004 	sub	sp, fp, #4
80022b58:	e8bd8800 	pop	{fp, pc}
80022b5c:	80029fe4 	.word	0x80029fe4

80022b60 <filewrite>:
80022b60:	e92d4800 	push	{fp, lr}
80022b64:	e28db004 	add	fp, sp, #4
80022b68:	e24dd020 	sub	sp, sp, #32
80022b6c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022b70:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022b74:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80022b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b7c:	e5d33009 	ldrb	r3, [r3, #9]
80022b80:	e3530000 	cmp	r3, #0
80022b84:	1a000001 	bne	80022b90 <filewrite+0x30>
80022b88:	e3e03000 	mvn	r3, #0
80022b8c:	ea000058 	b	80022cf4 <filewrite+0x194>
80022b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b94:	e5d33000 	ldrb	r3, [r3]
80022b98:	e3530001 	cmp	r3, #1
80022b9c:	1a000007 	bne	80022bc0 <filewrite+0x60>
80022ba0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022ba4:	e593300c 	ldr	r3, [r3, #12]
80022ba8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022bac:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022bb0:	e1a00003 	mov	r0, r3
80022bb4:	eb00089f 	bl	80024e38 <pipewrite>
80022bb8:	e1a03000 	mov	r3, r0
80022bbc:	ea00004c 	b	80022cf4 <filewrite+0x194>
80022bc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022bc4:	e5d33000 	ldrb	r3, [r3]
80022bc8:	e3530002 	cmp	r3, #2
80022bcc:	1a000046 	bne	80022cec <filewrite+0x18c>
80022bd0:	e3a03c06 	mov	r3, #1536	@ 0x600
80022bd4:	e50b3010 	str	r3, [fp, #-16]
80022bd8:	e3a03000 	mov	r3, #0
80022bdc:	e50b3008 	str	r3, [fp, #-8]
80022be0:	ea000033 	b	80022cb4 <filewrite+0x154>
80022be4:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022be8:	e51b3008 	ldr	r3, [fp, #-8]
80022bec:	e0423003 	sub	r3, r2, r3
80022bf0:	e50b300c 	str	r3, [fp, #-12]
80022bf4:	e51b200c 	ldr	r2, [fp, #-12]
80022bf8:	e51b3010 	ldr	r3, [fp, #-16]
80022bfc:	e1520003 	cmp	r2, r3
80022c00:	da000001 	ble	80022c0c <filewrite+0xac>
80022c04:	e51b3010 	ldr	r3, [fp, #-16]
80022c08:	e50b300c 	str	r3, [fp, #-12]
80022c0c:	eb0006b5 	bl	800246e8 <begin_trans>
80022c10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c14:	e5933010 	ldr	r3, [r3, #16]
80022c18:	e1a00003 	mov	r0, r3
80022c1c:	eb000205 	bl	80023438 <ilock>
80022c20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c24:	e5930010 	ldr	r0, [r3, #16]
80022c28:	e51b3008 	ldr	r3, [fp, #-8]
80022c2c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022c30:	e0821003 	add	r1, r2, r3
80022c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c38:	e5932014 	ldr	r2, [r3, #20]
80022c3c:	e51b300c 	ldr	r3, [fp, #-12]
80022c40:	eb000423 	bl	80023cd4 <writei>
80022c44:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022c48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022c4c:	e3530000 	cmp	r3, #0
80022c50:	da000005 	ble	80022c6c <filewrite+0x10c>
80022c54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c58:	e5932014 	ldr	r2, [r3, #20]
80022c5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022c60:	e0822003 	add	r2, r2, r3
80022c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c68:	e5832014 	str	r2, [r3, #20]
80022c6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c70:	e5933010 	ldr	r3, [r3, #16]
80022c74:	e1a00003 	mov	r0, r3
80022c78:	eb000252 	bl	800235c8 <iunlock>
80022c7c:	eb0006ad 	bl	80024738 <commit_trans>
80022c80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022c84:	e3530000 	cmp	r3, #0
80022c88:	ba00000e 	blt	80022cc8 <filewrite+0x168>
80022c8c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022c90:	e51b300c 	ldr	r3, [fp, #-12]
80022c94:	e1520003 	cmp	r2, r3
80022c98:	0a000001 	beq	80022ca4 <filewrite+0x144>
80022c9c:	e59f005c 	ldr	r0, [pc, #92]	@ 80022d00 <filewrite+0x1a0>
80022ca0:	ebfffb81 	bl	80021aac <panic>
80022ca4:	e51b2008 	ldr	r2, [fp, #-8]
80022ca8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022cac:	e0823003 	add	r3, r2, r3
80022cb0:	e50b3008 	str	r3, [fp, #-8]
80022cb4:	e51b2008 	ldr	r2, [fp, #-8]
80022cb8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022cbc:	e1520003 	cmp	r2, r3
80022cc0:	baffffc7 	blt	80022be4 <filewrite+0x84>
80022cc4:	ea000000 	b	80022ccc <filewrite+0x16c>
80022cc8:	e1a00000 	nop			@ (mov r0, r0)
80022ccc:	e51b2008 	ldr	r2, [fp, #-8]
80022cd0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022cd4:	e1520003 	cmp	r2, r3
80022cd8:	1a000001 	bne	80022ce4 <filewrite+0x184>
80022cdc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022ce0:	ea000003 	b	80022cf4 <filewrite+0x194>
80022ce4:	e3e03000 	mvn	r3, #0
80022ce8:	ea000001 	b	80022cf4 <filewrite+0x194>
80022cec:	e59f0010 	ldr	r0, [pc, #16]	@ 80022d04 <filewrite+0x1a4>
80022cf0:	ebfffb6d 	bl	80021aac <panic>
80022cf4:	e1a00003 	mov	r0, r3
80022cf8:	e24bd004 	sub	sp, fp, #4
80022cfc:	e8bd8800 	pop	{fp, pc}
80022d00:	80029ff0 	.word	0x80029ff0
80022d04:	8002a000 	.word	0x8002a000

80022d08 <readsb>:
80022d08:	e92d4800 	push	{fp, lr}
80022d0c:	e28db004 	add	fp, sp, #4
80022d10:	e24dd010 	sub	sp, sp, #16
80022d14:	e50b0010 	str	r0, [fp, #-16]
80022d18:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022d1c:	e51b3010 	ldr	r3, [fp, #-16]
80022d20:	e3a01001 	mov	r1, #1
80022d24:	e1a00003 	mov	r0, r3
80022d28:	ebfff779 	bl	80020b14 <bread>
80022d2c:	e50b0008 	str	r0, [fp, #-8]
80022d30:	e51b3008 	ldr	r3, [fp, #-8]
80022d34:	e2833018 	add	r3, r3, #24
80022d38:	e3a02010 	mov	r2, #16
80022d3c:	e1a01003 	mov	r1, r3
80022d40:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022d44:	ebfff51f 	bl	800201c8 <memmove>
80022d48:	e51b0008 	ldr	r0, [fp, #-8]
80022d4c:	ebfff79a 	bl	80020bbc <brelse>
80022d50:	e1a00000 	nop			@ (mov r0, r0)
80022d54:	e24bd004 	sub	sp, fp, #4
80022d58:	e8bd8800 	pop	{fp, pc}

80022d5c <bzero>:
80022d5c:	e92d4800 	push	{fp, lr}
80022d60:	e28db004 	add	fp, sp, #4
80022d64:	e24dd010 	sub	sp, sp, #16
80022d68:	e50b0010 	str	r0, [fp, #-16]
80022d6c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022d70:	e51b3010 	ldr	r3, [fp, #-16]
80022d74:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022d78:	e1a01002 	mov	r1, r2
80022d7c:	e1a00003 	mov	r0, r3
80022d80:	ebfff763 	bl	80020b14 <bread>
80022d84:	e50b0008 	str	r0, [fp, #-8]
80022d88:	e51b3008 	ldr	r3, [fp, #-8]
80022d8c:	e2833018 	add	r3, r3, #24
80022d90:	e3a02c02 	mov	r2, #512	@ 0x200
80022d94:	e3a01000 	mov	r1, #0
80022d98:	e1a00003 	mov	r0, r3
80022d9c:	ebfff497 	bl	80020000 <memset>
80022da0:	e51b0008 	ldr	r0, [fp, #-8]
80022da4:	eb00067b 	bl	80024798 <log_write>
80022da8:	e51b0008 	ldr	r0, [fp, #-8]
80022dac:	ebfff782 	bl	80020bbc <brelse>
80022db0:	e1a00000 	nop			@ (mov r0, r0)
80022db4:	e24bd004 	sub	sp, fp, #4
80022db8:	e8bd8800 	pop	{fp, pc}

80022dbc <balloc>:
80022dbc:	e92d4800 	push	{fp, lr}
80022dc0:	e28db004 	add	fp, sp, #4
80022dc4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022dc8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022dcc:	e3a03000 	mov	r3, #0
80022dd0:	e50b3010 	str	r3, [fp, #-16]
80022dd4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022dd8:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022ddc:	e1a01002 	mov	r1, r2
80022de0:	e1a00003 	mov	r0, r3
80022de4:	ebffffc7 	bl	80022d08 <readsb>
80022de8:	e3a03000 	mov	r3, #0
80022dec:	e50b3008 	str	r3, [fp, #-8]
80022df0:	ea000059 	b	80022f5c <balloc+0x1a0>
80022df4:	e51b3008 	ldr	r3, [fp, #-8]
80022df8:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022dfc:	e282200f 	add	r2, r2, #15
80022e00:	e3530000 	cmp	r3, #0
80022e04:	b1a03002 	movlt	r3, r2
80022e08:	a1a03003 	movge	r3, r3
80022e0c:	e1a03643 	asr	r3, r3, #12
80022e10:	e1a02003 	mov	r2, r3
80022e14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022e18:	e1a031a3 	lsr	r3, r3, #3
80022e1c:	e0823003 	add	r3, r2, r3
80022e20:	e2833003 	add	r3, r3, #3
80022e24:	e1a01003 	mov	r1, r3
80022e28:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e2c:	ebfff738 	bl	80020b14 <bread>
80022e30:	e50b0010 	str	r0, [fp, #-16]
80022e34:	e3a03000 	mov	r3, #0
80022e38:	e50b300c 	str	r3, [fp, #-12]
80022e3c:	ea000037 	b	80022f20 <balloc+0x164>
80022e40:	e51b300c 	ldr	r3, [fp, #-12]
80022e44:	e2033007 	and	r3, r3, #7
80022e48:	e3a02001 	mov	r2, #1
80022e4c:	e1a03312 	lsl	r3, r2, r3
80022e50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022e54:	e51b300c 	ldr	r3, [fp, #-12]
80022e58:	e2832007 	add	r2, r3, #7
80022e5c:	e3530000 	cmp	r3, #0
80022e60:	b1a03002 	movlt	r3, r2
80022e64:	a1a03003 	movge	r3, r3
80022e68:	e1a031c3 	asr	r3, r3, #3
80022e6c:	e1a02003 	mov	r2, r3
80022e70:	e51b3010 	ldr	r3, [fp, #-16]
80022e74:	e0833002 	add	r3, r3, r2
80022e78:	e5d33018 	ldrb	r3, [r3, #24]
80022e7c:	e1a02003 	mov	r2, r3
80022e80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022e84:	e0033002 	and	r3, r3, r2
80022e88:	e3530000 	cmp	r3, #0
80022e8c:	1a000020 	bne	80022f14 <balloc+0x158>
80022e90:	e51b300c 	ldr	r3, [fp, #-12]
80022e94:	e2832007 	add	r2, r3, #7
80022e98:	e3530000 	cmp	r3, #0
80022e9c:	b1a03002 	movlt	r3, r2
80022ea0:	a1a03003 	movge	r3, r3
80022ea4:	e1a031c3 	asr	r3, r3, #3
80022ea8:	e51b2010 	ldr	r2, [fp, #-16]
80022eac:	e0822003 	add	r2, r2, r3
80022eb0:	e5d22018 	ldrb	r2, [r2, #24]
80022eb4:	e6af1072 	sxtb	r1, r2
80022eb8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022ebc:	e6af2072 	sxtb	r2, r2
80022ec0:	e1812002 	orr	r2, r1, r2
80022ec4:	e6af2072 	sxtb	r2, r2
80022ec8:	e6ef1072 	uxtb	r1, r2
80022ecc:	e51b2010 	ldr	r2, [fp, #-16]
80022ed0:	e0823003 	add	r3, r2, r3
80022ed4:	e1a02001 	mov	r2, r1
80022ed8:	e5c32018 	strb	r2, [r3, #24]
80022edc:	e51b0010 	ldr	r0, [fp, #-16]
80022ee0:	eb00062c 	bl	80024798 <log_write>
80022ee4:	e51b0010 	ldr	r0, [fp, #-16]
80022ee8:	ebfff733 	bl	80020bbc <brelse>
80022eec:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022ef0:	e51b2008 	ldr	r2, [fp, #-8]
80022ef4:	e51b300c 	ldr	r3, [fp, #-12]
80022ef8:	e0823003 	add	r3, r2, r3
80022efc:	e1a01003 	mov	r1, r3
80022f00:	ebffff95 	bl	80022d5c <bzero>
80022f04:	e51b2008 	ldr	r2, [fp, #-8]
80022f08:	e51b300c 	ldr	r3, [fp, #-12]
80022f0c:	e0823003 	add	r3, r2, r3
80022f10:	ea000017 	b	80022f74 <balloc+0x1b8>
80022f14:	e51b300c 	ldr	r3, [fp, #-12]
80022f18:	e2833001 	add	r3, r3, #1
80022f1c:	e50b300c 	str	r3, [fp, #-12]
80022f20:	e51b300c 	ldr	r3, [fp, #-12]
80022f24:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022f28:	aa000006 	bge	80022f48 <balloc+0x18c>
80022f2c:	e51b2008 	ldr	r2, [fp, #-8]
80022f30:	e51b300c 	ldr	r3, [fp, #-12]
80022f34:	e0823003 	add	r3, r2, r3
80022f38:	e1a02003 	mov	r2, r3
80022f3c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022f40:	e1520003 	cmp	r2, r3
80022f44:	3affffbd 	bcc	80022e40 <balloc+0x84>
80022f48:	e51b0010 	ldr	r0, [fp, #-16]
80022f4c:	ebfff71a 	bl	80020bbc <brelse>
80022f50:	e51b3008 	ldr	r3, [fp, #-8]
80022f54:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022f58:	e50b3008 	str	r3, [fp, #-8]
80022f5c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022f60:	e51b3008 	ldr	r3, [fp, #-8]
80022f64:	e1520003 	cmp	r2, r3
80022f68:	8affffa1 	bhi	80022df4 <balloc+0x38>
80022f6c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022f80 <balloc+0x1c4>
80022f70:	ebfffacd 	bl	80021aac <panic>
80022f74:	e1a00003 	mov	r0, r3
80022f78:	e24bd004 	sub	sp, fp, #4
80022f7c:	e8bd8800 	pop	{fp, pc}
80022f80:	8002a00c 	.word	0x8002a00c

80022f84 <bfree>:
80022f84:	e92d4800 	push	{fp, lr}
80022f88:	e28db004 	add	fp, sp, #4
80022f8c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022f90:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022f94:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022f98:	e24b3020 	sub	r3, fp, #32
80022f9c:	e1a01003 	mov	r1, r3
80022fa0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022fa4:	ebffff57 	bl	80022d08 <readsb>
80022fa8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022fac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022fb0:	e1a02623 	lsr	r2, r3, #12
80022fb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022fb8:	e1a031a3 	lsr	r3, r3, #3
80022fbc:	e0823003 	add	r3, r2, r3
80022fc0:	e2833003 	add	r3, r3, #3
80022fc4:	e1a01003 	mov	r1, r3
80022fc8:	ebfff6d1 	bl	80020b14 <bread>
80022fcc:	e50b0008 	str	r0, [fp, #-8]
80022fd0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022fd4:	e1a03a03 	lsl	r3, r3, #20
80022fd8:	e1a03a23 	lsr	r3, r3, #20
80022fdc:	e50b300c 	str	r3, [fp, #-12]
80022fe0:	e51b300c 	ldr	r3, [fp, #-12]
80022fe4:	e2033007 	and	r3, r3, #7
80022fe8:	e3a02001 	mov	r2, #1
80022fec:	e1a03312 	lsl	r3, r2, r3
80022ff0:	e50b3010 	str	r3, [fp, #-16]
80022ff4:	e51b300c 	ldr	r3, [fp, #-12]
80022ff8:	e2832007 	add	r2, r3, #7
80022ffc:	e3530000 	cmp	r3, #0
80023000:	b1a03002 	movlt	r3, r2
80023004:	a1a03003 	movge	r3, r3
80023008:	e1a031c3 	asr	r3, r3, #3
8002300c:	e1a02003 	mov	r2, r3
80023010:	e51b3008 	ldr	r3, [fp, #-8]
80023014:	e0833002 	add	r3, r3, r2
80023018:	e5d33018 	ldrb	r3, [r3, #24]
8002301c:	e1a02003 	mov	r2, r3
80023020:	e51b3010 	ldr	r3, [fp, #-16]
80023024:	e0033002 	and	r3, r3, r2
80023028:	e3530000 	cmp	r3, #0
8002302c:	1a000001 	bne	80023038 <bfree+0xb4>
80023030:	e59f0070 	ldr	r0, [pc, #112]	@ 800230a8 <bfree+0x124>
80023034:	ebfffa9c 	bl	80021aac <panic>
80023038:	e51b300c 	ldr	r3, [fp, #-12]
8002303c:	e2832007 	add	r2, r3, #7
80023040:	e3530000 	cmp	r3, #0
80023044:	b1a03002 	movlt	r3, r2
80023048:	a1a03003 	movge	r3, r3
8002304c:	e1a031c3 	asr	r3, r3, #3
80023050:	e51b2008 	ldr	r2, [fp, #-8]
80023054:	e0822003 	add	r2, r2, r3
80023058:	e5d22018 	ldrb	r2, [r2, #24]
8002305c:	e6af1072 	sxtb	r1, r2
80023060:	e51b2010 	ldr	r2, [fp, #-16]
80023064:	e6af2072 	sxtb	r2, r2
80023068:	e1e02002 	mvn	r2, r2
8002306c:	e6af2072 	sxtb	r2, r2
80023070:	e0022001 	and	r2, r2, r1
80023074:	e6af2072 	sxtb	r2, r2
80023078:	e6ef1072 	uxtb	r1, r2
8002307c:	e51b2008 	ldr	r2, [fp, #-8]
80023080:	e0823003 	add	r3, r2, r3
80023084:	e1a02001 	mov	r2, r1
80023088:	e5c32018 	strb	r2, [r3, #24]
8002308c:	e51b0008 	ldr	r0, [fp, #-8]
80023090:	eb0005c0 	bl	80024798 <log_write>
80023094:	e51b0008 	ldr	r0, [fp, #-8]
80023098:	ebfff6c7 	bl	80020bbc <brelse>
8002309c:	e1a00000 	nop			@ (mov r0, r0)
800230a0:	e24bd004 	sub	sp, fp, #4
800230a4:	e8bd8800 	pop	{fp, pc}
800230a8:	8002a024 	.word	0x8002a024

800230ac <iinit>:
800230ac:	e92d4800 	push	{fp, lr}
800230b0:	e28db004 	add	fp, sp, #4
800230b4:	e59f100c 	ldr	r1, [pc, #12]	@ 800230c8 <iinit+0x1c>
800230b8:	e59f000c 	ldr	r0, [pc, #12]	@ 800230cc <iinit+0x20>
800230bc:	eb000c83 	bl	800262d0 <initlock>
800230c0:	e1a00000 	nop			@ (mov r0, r0)
800230c4:	e8bd8800 	pop	{fp, pc}
800230c8:	8002a038 	.word	0x8002a038
800230cc:	800ad554 	.word	0x800ad554

800230d0 <ialloc>:
800230d0:	e92d4800 	push	{fp, lr}
800230d4:	e28db004 	add	fp, sp, #4
800230d8:	e24dd028 	sub	sp, sp, #40	@ 0x28
800230dc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800230e0:	e1a03001 	mov	r3, r1
800230e4:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
800230e8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800230ec:	e24b2020 	sub	r2, fp, #32
800230f0:	e1a01002 	mov	r1, r2
800230f4:	e1a00003 	mov	r0, r3
800230f8:	ebffff02 	bl	80022d08 <readsb>
800230fc:	e3a03001 	mov	r3, #1
80023100:	e50b3008 	str	r3, [fp, #-8]
80023104:	ea000027 	b	800231a8 <ialloc+0xd8>
80023108:	e51b3008 	ldr	r3, [fp, #-8]
8002310c:	e1a031a3 	lsr	r3, r3, #3
80023110:	e2833002 	add	r3, r3, #2
80023114:	e1a01003 	mov	r1, r3
80023118:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002311c:	ebfff67c 	bl	80020b14 <bread>
80023120:	e50b000c 	str	r0, [fp, #-12]
80023124:	e51b300c 	ldr	r3, [fp, #-12]
80023128:	e2832018 	add	r2, r3, #24
8002312c:	e51b3008 	ldr	r3, [fp, #-8]
80023130:	e2033007 	and	r3, r3, #7
80023134:	e1a03303 	lsl	r3, r3, #6
80023138:	e0823003 	add	r3, r2, r3
8002313c:	e50b3010 	str	r3, [fp, #-16]
80023140:	e51b3010 	ldr	r3, [fp, #-16]
80023144:	e1d330f0 	ldrsh	r3, [r3]
80023148:	e3530000 	cmp	r3, #0
8002314c:	1a000010 	bne	80023194 <ialloc+0xc4>
80023150:	e3a02040 	mov	r2, #64	@ 0x40
80023154:	e3a01000 	mov	r1, #0
80023158:	e51b0010 	ldr	r0, [fp, #-16]
8002315c:	ebfff3a7 	bl	80020000 <memset>
80023160:	e51b3010 	ldr	r3, [fp, #-16]
80023164:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80023168:	e1c320b0 	strh	r2, [r3]
8002316c:	e51b000c 	ldr	r0, [fp, #-12]
80023170:	eb000588 	bl	80024798 <log_write>
80023174:	e51b000c 	ldr	r0, [fp, #-12]
80023178:	ebfff68f 	bl	80020bbc <brelse>
8002317c:	e51b3008 	ldr	r3, [fp, #-8]
80023180:	e1a01003 	mov	r1, r3
80023184:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023188:	eb000048 	bl	800232b0 <iget>
8002318c:	e1a03000 	mov	r3, r0
80023190:	ea00000a 	b	800231c0 <ialloc+0xf0>
80023194:	e51b000c 	ldr	r0, [fp, #-12]
80023198:	ebfff687 	bl	80020bbc <brelse>
8002319c:	e51b3008 	ldr	r3, [fp, #-8]
800231a0:	e2833001 	add	r3, r3, #1
800231a4:	e50b3008 	str	r3, [fp, #-8]
800231a8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800231ac:	e51b3008 	ldr	r3, [fp, #-8]
800231b0:	e1520003 	cmp	r2, r3
800231b4:	8affffd3 	bhi	80023108 <ialloc+0x38>
800231b8:	e59f000c 	ldr	r0, [pc, #12]	@ 800231cc <ialloc+0xfc>
800231bc:	ebfffa3a 	bl	80021aac <panic>
800231c0:	e1a00003 	mov	r0, r3
800231c4:	e24bd004 	sub	sp, fp, #4
800231c8:	e8bd8800 	pop	{fp, pc}
800231cc:	8002a040 	.word	0x8002a040

800231d0 <iupdate>:
800231d0:	e92d4800 	push	{fp, lr}
800231d4:	e28db004 	add	fp, sp, #4
800231d8:	e24dd010 	sub	sp, sp, #16
800231dc:	e50b0010 	str	r0, [fp, #-16]
800231e0:	e51b3010 	ldr	r3, [fp, #-16]
800231e4:	e5932000 	ldr	r2, [r3]
800231e8:	e51b3010 	ldr	r3, [fp, #-16]
800231ec:	e5933004 	ldr	r3, [r3, #4]
800231f0:	e1a031a3 	lsr	r3, r3, #3
800231f4:	e2833002 	add	r3, r3, #2
800231f8:	e1a01003 	mov	r1, r3
800231fc:	e1a00002 	mov	r0, r2
80023200:	ebfff643 	bl	80020b14 <bread>
80023204:	e50b0008 	str	r0, [fp, #-8]
80023208:	e51b3008 	ldr	r3, [fp, #-8]
8002320c:	e2832018 	add	r2, r3, #24
80023210:	e51b3010 	ldr	r3, [fp, #-16]
80023214:	e5933004 	ldr	r3, [r3, #4]
80023218:	e2033007 	and	r3, r3, #7
8002321c:	e1a03303 	lsl	r3, r3, #6
80023220:	e0823003 	add	r3, r2, r3
80023224:	e50b300c 	str	r3, [fp, #-12]
80023228:	e51b3010 	ldr	r3, [fp, #-16]
8002322c:	e1d321f0 	ldrsh	r2, [r3, #16]
80023230:	e51b300c 	ldr	r3, [fp, #-12]
80023234:	e1c320b0 	strh	r2, [r3]
80023238:	e51b3010 	ldr	r3, [fp, #-16]
8002323c:	e1d321f2 	ldrsh	r2, [r3, #18]
80023240:	e51b300c 	ldr	r3, [fp, #-12]
80023244:	e1c320b2 	strh	r2, [r3, #2]
80023248:	e51b3010 	ldr	r3, [fp, #-16]
8002324c:	e1d321f4 	ldrsh	r2, [r3, #20]
80023250:	e51b300c 	ldr	r3, [fp, #-12]
80023254:	e1c320b4 	strh	r2, [r3, #4]
80023258:	e51b3010 	ldr	r3, [fp, #-16]
8002325c:	e1d321f6 	ldrsh	r2, [r3, #22]
80023260:	e51b300c 	ldr	r3, [fp, #-12]
80023264:	e1c320b6 	strh	r2, [r3, #6]
80023268:	e51b3010 	ldr	r3, [fp, #-16]
8002326c:	e5932018 	ldr	r2, [r3, #24]
80023270:	e51b300c 	ldr	r3, [fp, #-12]
80023274:	e5832008 	str	r2, [r3, #8]
80023278:	e51b300c 	ldr	r3, [fp, #-12]
8002327c:	e283000c 	add	r0, r3, #12
80023280:	e51b3010 	ldr	r3, [fp, #-16]
80023284:	e283301c 	add	r3, r3, #28
80023288:	e3a02034 	mov	r2, #52	@ 0x34
8002328c:	e1a01003 	mov	r1, r3
80023290:	ebfff3cc 	bl	800201c8 <memmove>
80023294:	e51b0008 	ldr	r0, [fp, #-8]
80023298:	eb00053e 	bl	80024798 <log_write>
8002329c:	e51b0008 	ldr	r0, [fp, #-8]
800232a0:	ebfff645 	bl	80020bbc <brelse>
800232a4:	e1a00000 	nop			@ (mov r0, r0)
800232a8:	e24bd004 	sub	sp, fp, #4
800232ac:	e8bd8800 	pop	{fp, pc}

800232b0 <iget>:
800232b0:	e92d4800 	push	{fp, lr}
800232b4:	e28db004 	add	fp, sp, #4
800232b8:	e24dd010 	sub	sp, sp, #16
800232bc:	e50b0010 	str	r0, [fp, #-16]
800232c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800232c4:	e59f0114 	ldr	r0, [pc, #276]	@ 800233e0 <iget+0x130>
800232c8:	eb000c12 	bl	80026318 <acquire>
800232cc:	e3a03000 	mov	r3, #0
800232d0:	e50b300c 	str	r3, [fp, #-12]
800232d4:	e59f3108 	ldr	r3, [pc, #264]	@ 800233e4 <iget+0x134>
800232d8:	e50b3008 	str	r3, [fp, #-8]
800232dc:	ea000022 	b	8002336c <iget+0xbc>
800232e0:	e51b3008 	ldr	r3, [fp, #-8]
800232e4:	e5933008 	ldr	r3, [r3, #8]
800232e8:	e3530000 	cmp	r3, #0
800232ec:	da000012 	ble	8002333c <iget+0x8c>
800232f0:	e51b3008 	ldr	r3, [fp, #-8]
800232f4:	e5933000 	ldr	r3, [r3]
800232f8:	e51b2010 	ldr	r2, [fp, #-16]
800232fc:	e1520003 	cmp	r2, r3
80023300:	1a00000d 	bne	8002333c <iget+0x8c>
80023304:	e51b3008 	ldr	r3, [fp, #-8]
80023308:	e5933004 	ldr	r3, [r3, #4]
8002330c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023310:	e1520003 	cmp	r2, r3
80023314:	1a000008 	bne	8002333c <iget+0x8c>
80023318:	e51b3008 	ldr	r3, [fp, #-8]
8002331c:	e5933008 	ldr	r3, [r3, #8]
80023320:	e2832001 	add	r2, r3, #1
80023324:	e51b3008 	ldr	r3, [fp, #-8]
80023328:	e5832008 	str	r2, [r3, #8]
8002332c:	e59f00ac 	ldr	r0, [pc, #172]	@ 800233e0 <iget+0x130>
80023330:	eb000c03 	bl	80026344 <release>
80023334:	e51b3008 	ldr	r3, [fp, #-8]
80023338:	ea000025 	b	800233d4 <iget+0x124>
8002333c:	e51b300c 	ldr	r3, [fp, #-12]
80023340:	e3530000 	cmp	r3, #0
80023344:	1a000005 	bne	80023360 <iget+0xb0>
80023348:	e51b3008 	ldr	r3, [fp, #-8]
8002334c:	e5933008 	ldr	r3, [r3, #8]
80023350:	e3530000 	cmp	r3, #0
80023354:	1a000001 	bne	80023360 <iget+0xb0>
80023358:	e51b3008 	ldr	r3, [fp, #-8]
8002335c:	e50b300c 	str	r3, [fp, #-12]
80023360:	e51b3008 	ldr	r3, [fp, #-8]
80023364:	e2833050 	add	r3, r3, #80	@ 0x50
80023368:	e50b3008 	str	r3, [fp, #-8]
8002336c:	e51b3008 	ldr	r3, [fp, #-8]
80023370:	e59f2070 	ldr	r2, [pc, #112]	@ 800233e8 <iget+0x138>
80023374:	e1530002 	cmp	r3, r2
80023378:	3affffd8 	bcc	800232e0 <iget+0x30>
8002337c:	e51b300c 	ldr	r3, [fp, #-12]
80023380:	e3530000 	cmp	r3, #0
80023384:	1a000001 	bne	80023390 <iget+0xe0>
80023388:	e59f005c 	ldr	r0, [pc, #92]	@ 800233ec <iget+0x13c>
8002338c:	ebfff9c6 	bl	80021aac <panic>
80023390:	e51b300c 	ldr	r3, [fp, #-12]
80023394:	e50b3008 	str	r3, [fp, #-8]
80023398:	e51b3008 	ldr	r3, [fp, #-8]
8002339c:	e51b2010 	ldr	r2, [fp, #-16]
800233a0:	e5832000 	str	r2, [r3]
800233a4:	e51b3008 	ldr	r3, [fp, #-8]
800233a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800233ac:	e5832004 	str	r2, [r3, #4]
800233b0:	e51b3008 	ldr	r3, [fp, #-8]
800233b4:	e3a02001 	mov	r2, #1
800233b8:	e5832008 	str	r2, [r3, #8]
800233bc:	e51b3008 	ldr	r3, [fp, #-8]
800233c0:	e3a02000 	mov	r2, #0
800233c4:	e583200c 	str	r2, [r3, #12]
800233c8:	e59f0010 	ldr	r0, [pc, #16]	@ 800233e0 <iget+0x130>
800233cc:	eb000bdc 	bl	80026344 <release>
800233d0:	e51b3008 	ldr	r3, [fp, #-8]
800233d4:	e1a00003 	mov	r0, r3
800233d8:	e24bd004 	sub	sp, fp, #4
800233dc:	e8bd8800 	pop	{fp, pc}
800233e0:	800ad554 	.word	0x800ad554
800233e4:	800ad588 	.word	0x800ad588
800233e8:	800ae528 	.word	0x800ae528
800233ec:	8002a054 	.word	0x8002a054

800233f0 <idup>:
800233f0:	e92d4800 	push	{fp, lr}
800233f4:	e28db004 	add	fp, sp, #4
800233f8:	e24dd008 	sub	sp, sp, #8
800233fc:	e50b0008 	str	r0, [fp, #-8]
80023400:	e59f002c 	ldr	r0, [pc, #44]	@ 80023434 <idup+0x44>
80023404:	eb000bc3 	bl	80026318 <acquire>
80023408:	e51b3008 	ldr	r3, [fp, #-8]
8002340c:	e5933008 	ldr	r3, [r3, #8]
80023410:	e2832001 	add	r2, r3, #1
80023414:	e51b3008 	ldr	r3, [fp, #-8]
80023418:	e5832008 	str	r2, [r3, #8]
8002341c:	e59f0010 	ldr	r0, [pc, #16]	@ 80023434 <idup+0x44>
80023420:	eb000bc7 	bl	80026344 <release>
80023424:	e51b3008 	ldr	r3, [fp, #-8]
80023428:	e1a00003 	mov	r0, r3
8002342c:	e24bd004 	sub	sp, fp, #4
80023430:	e8bd8800 	pop	{fp, pc}
80023434:	800ad554 	.word	0x800ad554

80023438 <ilock>:
80023438:	e92d4800 	push	{fp, lr}
8002343c:	e28db004 	add	fp, sp, #4
80023440:	e24dd010 	sub	sp, sp, #16
80023444:	e50b0010 	str	r0, [fp, #-16]
80023448:	e51b3010 	ldr	r3, [fp, #-16]
8002344c:	e3530000 	cmp	r3, #0
80023450:	0a000003 	beq	80023464 <ilock+0x2c>
80023454:	e51b3010 	ldr	r3, [fp, #-16]
80023458:	e5933008 	ldr	r3, [r3, #8]
8002345c:	e3530000 	cmp	r3, #0
80023460:	ca000001 	bgt	8002346c <ilock+0x34>
80023464:	e59f0150 	ldr	r0, [pc, #336]	@ 800235bc <ilock+0x184>
80023468:	ebfff98f 	bl	80021aac <panic>
8002346c:	e59f014c 	ldr	r0, [pc, #332]	@ 800235c0 <ilock+0x188>
80023470:	eb000ba8 	bl	80026318 <acquire>
80023474:	ea000002 	b	80023484 <ilock+0x4c>
80023478:	e59f1140 	ldr	r1, [pc, #320]	@ 800235c0 <ilock+0x188>
8002347c:	e51b0010 	ldr	r0, [fp, #-16]
80023480:	eb000a51 	bl	80025dcc <sleep>
80023484:	e51b3010 	ldr	r3, [fp, #-16]
80023488:	e593300c 	ldr	r3, [r3, #12]
8002348c:	e2033001 	and	r3, r3, #1
80023490:	e3530000 	cmp	r3, #0
80023494:	1afffff7 	bne	80023478 <ilock+0x40>
80023498:	e51b3010 	ldr	r3, [fp, #-16]
8002349c:	e593300c 	ldr	r3, [r3, #12]
800234a0:	e3832001 	orr	r2, r3, #1
800234a4:	e51b3010 	ldr	r3, [fp, #-16]
800234a8:	e583200c 	str	r2, [r3, #12]
800234ac:	e59f010c 	ldr	r0, [pc, #268]	@ 800235c0 <ilock+0x188>
800234b0:	eb000ba3 	bl	80026344 <release>
800234b4:	e51b3010 	ldr	r3, [fp, #-16]
800234b8:	e593300c 	ldr	r3, [r3, #12]
800234bc:	e2033002 	and	r3, r3, #2
800234c0:	e3530000 	cmp	r3, #0
800234c4:	1a000039 	bne	800235b0 <ilock+0x178>
800234c8:	e51b3010 	ldr	r3, [fp, #-16]
800234cc:	e5932000 	ldr	r2, [r3]
800234d0:	e51b3010 	ldr	r3, [fp, #-16]
800234d4:	e5933004 	ldr	r3, [r3, #4]
800234d8:	e1a031a3 	lsr	r3, r3, #3
800234dc:	e2833002 	add	r3, r3, #2
800234e0:	e1a01003 	mov	r1, r3
800234e4:	e1a00002 	mov	r0, r2
800234e8:	ebfff589 	bl	80020b14 <bread>
800234ec:	e50b0008 	str	r0, [fp, #-8]
800234f0:	e51b3008 	ldr	r3, [fp, #-8]
800234f4:	e2832018 	add	r2, r3, #24
800234f8:	e51b3010 	ldr	r3, [fp, #-16]
800234fc:	e5933004 	ldr	r3, [r3, #4]
80023500:	e2033007 	and	r3, r3, #7
80023504:	e1a03303 	lsl	r3, r3, #6
80023508:	e0823003 	add	r3, r2, r3
8002350c:	e50b300c 	str	r3, [fp, #-12]
80023510:	e51b300c 	ldr	r3, [fp, #-12]
80023514:	e1d320f0 	ldrsh	r2, [r3]
80023518:	e51b3010 	ldr	r3, [fp, #-16]
8002351c:	e1c321b0 	strh	r2, [r3, #16]
80023520:	e51b300c 	ldr	r3, [fp, #-12]
80023524:	e1d320f2 	ldrsh	r2, [r3, #2]
80023528:	e51b3010 	ldr	r3, [fp, #-16]
8002352c:	e1c321b2 	strh	r2, [r3, #18]
80023530:	e51b300c 	ldr	r3, [fp, #-12]
80023534:	e1d320f4 	ldrsh	r2, [r3, #4]
80023538:	e51b3010 	ldr	r3, [fp, #-16]
8002353c:	e1c321b4 	strh	r2, [r3, #20]
80023540:	e51b300c 	ldr	r3, [fp, #-12]
80023544:	e1d320f6 	ldrsh	r2, [r3, #6]
80023548:	e51b3010 	ldr	r3, [fp, #-16]
8002354c:	e1c321b6 	strh	r2, [r3, #22]
80023550:	e51b300c 	ldr	r3, [fp, #-12]
80023554:	e5932008 	ldr	r2, [r3, #8]
80023558:	e51b3010 	ldr	r3, [fp, #-16]
8002355c:	e5832018 	str	r2, [r3, #24]
80023560:	e51b3010 	ldr	r3, [fp, #-16]
80023564:	e283001c 	add	r0, r3, #28
80023568:	e51b300c 	ldr	r3, [fp, #-12]
8002356c:	e283300c 	add	r3, r3, #12
80023570:	e3a02034 	mov	r2, #52	@ 0x34
80023574:	e1a01003 	mov	r1, r3
80023578:	ebfff312 	bl	800201c8 <memmove>
8002357c:	e51b0008 	ldr	r0, [fp, #-8]
80023580:	ebfff58d 	bl	80020bbc <brelse>
80023584:	e51b3010 	ldr	r3, [fp, #-16]
80023588:	e593300c 	ldr	r3, [r3, #12]
8002358c:	e3832002 	orr	r2, r3, #2
80023590:	e51b3010 	ldr	r3, [fp, #-16]
80023594:	e583200c 	str	r2, [r3, #12]
80023598:	e51b3010 	ldr	r3, [fp, #-16]
8002359c:	e1d331f0 	ldrsh	r3, [r3, #16]
800235a0:	e3530000 	cmp	r3, #0
800235a4:	1a000001 	bne	800235b0 <ilock+0x178>
800235a8:	e59f0014 	ldr	r0, [pc, #20]	@ 800235c4 <ilock+0x18c>
800235ac:	ebfff93e 	bl	80021aac <panic>
800235b0:	e1a00000 	nop			@ (mov r0, r0)
800235b4:	e24bd004 	sub	sp, fp, #4
800235b8:	e8bd8800 	pop	{fp, pc}
800235bc:	8002a064 	.word	0x8002a064
800235c0:	800ad554 	.word	0x800ad554
800235c4:	8002a06c 	.word	0x8002a06c

800235c8 <iunlock>:
800235c8:	e92d4800 	push	{fp, lr}
800235cc:	e28db004 	add	fp, sp, #4
800235d0:	e24dd008 	sub	sp, sp, #8
800235d4:	e50b0008 	str	r0, [fp, #-8]
800235d8:	e51b3008 	ldr	r3, [fp, #-8]
800235dc:	e3530000 	cmp	r3, #0
800235e0:	0a000008 	beq	80023608 <iunlock+0x40>
800235e4:	e51b3008 	ldr	r3, [fp, #-8]
800235e8:	e593300c 	ldr	r3, [r3, #12]
800235ec:	e2033001 	and	r3, r3, #1
800235f0:	e3530000 	cmp	r3, #0
800235f4:	0a000003 	beq	80023608 <iunlock+0x40>
800235f8:	e51b3008 	ldr	r3, [fp, #-8]
800235fc:	e5933008 	ldr	r3, [r3, #8]
80023600:	e3530000 	cmp	r3, #0
80023604:	ca000001 	bgt	80023610 <iunlock+0x48>
80023608:	e59f0038 	ldr	r0, [pc, #56]	@ 80023648 <iunlock+0x80>
8002360c:	ebfff926 	bl	80021aac <panic>
80023610:	e59f0034 	ldr	r0, [pc, #52]	@ 8002364c <iunlock+0x84>
80023614:	eb000b3f 	bl	80026318 <acquire>
80023618:	e51b3008 	ldr	r3, [fp, #-8]
8002361c:	e593300c 	ldr	r3, [r3, #12]
80023620:	e3c32001 	bic	r2, r3, #1
80023624:	e51b3008 	ldr	r3, [fp, #-8]
80023628:	e583200c 	str	r2, [r3, #12]
8002362c:	e51b0008 	ldr	r0, [fp, #-8]
80023630:	eb000a79 	bl	8002601c <wakeup>
80023634:	e59f0010 	ldr	r0, [pc, #16]	@ 8002364c <iunlock+0x84>
80023638:	eb000b41 	bl	80026344 <release>
8002363c:	e1a00000 	nop			@ (mov r0, r0)
80023640:	e24bd004 	sub	sp, fp, #4
80023644:	e8bd8800 	pop	{fp, pc}
80023648:	8002a07c 	.word	0x8002a07c
8002364c:	800ad554 	.word	0x800ad554

80023650 <iput>:
80023650:	e92d4800 	push	{fp, lr}
80023654:	e28db004 	add	fp, sp, #4
80023658:	e24dd008 	sub	sp, sp, #8
8002365c:	e50b0008 	str	r0, [fp, #-8]
80023660:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023734 <iput+0xe4>
80023664:	eb000b2b 	bl	80026318 <acquire>
80023668:	e51b3008 	ldr	r3, [fp, #-8]
8002366c:	e5933008 	ldr	r3, [r3, #8]
80023670:	e3530001 	cmp	r3, #1
80023674:	1a000024 	bne	8002370c <iput+0xbc>
80023678:	e51b3008 	ldr	r3, [fp, #-8]
8002367c:	e593300c 	ldr	r3, [r3, #12]
80023680:	e2033002 	and	r3, r3, #2
80023684:	e3530000 	cmp	r3, #0
80023688:	0a00001f 	beq	8002370c <iput+0xbc>
8002368c:	e51b3008 	ldr	r3, [fp, #-8]
80023690:	e1d331f6 	ldrsh	r3, [r3, #22]
80023694:	e3530000 	cmp	r3, #0
80023698:	1a00001b 	bne	8002370c <iput+0xbc>
8002369c:	e51b3008 	ldr	r3, [fp, #-8]
800236a0:	e593300c 	ldr	r3, [r3, #12]
800236a4:	e2033001 	and	r3, r3, #1
800236a8:	e3530000 	cmp	r3, #0
800236ac:	0a000001 	beq	800236b8 <iput+0x68>
800236b0:	e59f0080 	ldr	r0, [pc, #128]	@ 80023738 <iput+0xe8>
800236b4:	ebfff8fc 	bl	80021aac <panic>
800236b8:	e51b3008 	ldr	r3, [fp, #-8]
800236bc:	e593300c 	ldr	r3, [r3, #12]
800236c0:	e3832001 	orr	r2, r3, #1
800236c4:	e51b3008 	ldr	r3, [fp, #-8]
800236c8:	e583200c 	str	r2, [r3, #12]
800236cc:	e59f0060 	ldr	r0, [pc, #96]	@ 80023734 <iput+0xe4>
800236d0:	eb000b1b 	bl	80026344 <release>
800236d4:	e51b0008 	ldr	r0, [fp, #-8]
800236d8:	eb00007f 	bl	800238dc <itrunc>
800236dc:	e51b3008 	ldr	r3, [fp, #-8]
800236e0:	e3a02000 	mov	r2, #0
800236e4:	e1c321b0 	strh	r2, [r3, #16]
800236e8:	e51b0008 	ldr	r0, [fp, #-8]
800236ec:	ebfffeb7 	bl	800231d0 <iupdate>
800236f0:	e59f003c 	ldr	r0, [pc, #60]	@ 80023734 <iput+0xe4>
800236f4:	eb000b07 	bl	80026318 <acquire>
800236f8:	e51b3008 	ldr	r3, [fp, #-8]
800236fc:	e3a02000 	mov	r2, #0
80023700:	e583200c 	str	r2, [r3, #12]
80023704:	e51b0008 	ldr	r0, [fp, #-8]
80023708:	eb000a43 	bl	8002601c <wakeup>
8002370c:	e51b3008 	ldr	r3, [fp, #-8]
80023710:	e5933008 	ldr	r3, [r3, #8]
80023714:	e2432001 	sub	r2, r3, #1
80023718:	e51b3008 	ldr	r3, [fp, #-8]
8002371c:	e5832008 	str	r2, [r3, #8]
80023720:	e59f000c 	ldr	r0, [pc, #12]	@ 80023734 <iput+0xe4>
80023724:	eb000b06 	bl	80026344 <release>
80023728:	e1a00000 	nop			@ (mov r0, r0)
8002372c:	e24bd004 	sub	sp, fp, #4
80023730:	e8bd8800 	pop	{fp, pc}
80023734:	800ad554 	.word	0x800ad554
80023738:	8002a084 	.word	0x8002a084

8002373c <iunlockput>:
8002373c:	e92d4800 	push	{fp, lr}
80023740:	e28db004 	add	fp, sp, #4
80023744:	e24dd008 	sub	sp, sp, #8
80023748:	e50b0008 	str	r0, [fp, #-8]
8002374c:	e51b0008 	ldr	r0, [fp, #-8]
80023750:	ebffff9c 	bl	800235c8 <iunlock>
80023754:	e51b0008 	ldr	r0, [fp, #-8]
80023758:	ebffffbc 	bl	80023650 <iput>
8002375c:	e1a00000 	nop			@ (mov r0, r0)
80023760:	e24bd004 	sub	sp, fp, #4
80023764:	e8bd8800 	pop	{fp, pc}

80023768 <bmap>:
80023768:	e92d4800 	push	{fp, lr}
8002376c:	e28db004 	add	fp, sp, #4
80023770:	e24dd018 	sub	sp, sp, #24
80023774:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023778:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002377c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023780:	e353000b 	cmp	r3, #11
80023784:	8a000017 	bhi	800237e8 <bmap+0x80>
80023788:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002378c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023790:	e2833006 	add	r3, r3, #6
80023794:	e1a03103 	lsl	r3, r3, #2
80023798:	e0823003 	add	r3, r2, r3
8002379c:	e5933004 	ldr	r3, [r3, #4]
800237a0:	e50b3008 	str	r3, [fp, #-8]
800237a4:	e51b3008 	ldr	r3, [fp, #-8]
800237a8:	e3530000 	cmp	r3, #0
800237ac:	1a00000b 	bne	800237e0 <bmap+0x78>
800237b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237b4:	e5933000 	ldr	r3, [r3]
800237b8:	e1a00003 	mov	r0, r3
800237bc:	ebfffd7e 	bl	80022dbc <balloc>
800237c0:	e50b0008 	str	r0, [fp, #-8]
800237c4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800237c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800237cc:	e2833006 	add	r3, r3, #6
800237d0:	e1a03103 	lsl	r3, r3, #2
800237d4:	e0823003 	add	r3, r2, r3
800237d8:	e51b2008 	ldr	r2, [fp, #-8]
800237dc:	e5832004 	str	r2, [r3, #4]
800237e0:	e51b3008 	ldr	r3, [fp, #-8]
800237e4:	ea000038 	b	800238cc <bmap+0x164>
800237e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800237ec:	e243300c 	sub	r3, r3, #12
800237f0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800237f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800237f8:	e353007f 	cmp	r3, #127	@ 0x7f
800237fc:	8a000030 	bhi	800238c4 <bmap+0x15c>
80023800:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023804:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023808:	e50b3008 	str	r3, [fp, #-8]
8002380c:	e51b3008 	ldr	r3, [fp, #-8]
80023810:	e3530000 	cmp	r3, #0
80023814:	1a000007 	bne	80023838 <bmap+0xd0>
80023818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002381c:	e5933000 	ldr	r3, [r3]
80023820:	e1a00003 	mov	r0, r3
80023824:	ebfffd64 	bl	80022dbc <balloc>
80023828:	e50b0008 	str	r0, [fp, #-8]
8002382c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023830:	e51b2008 	ldr	r2, [fp, #-8]
80023834:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023838:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002383c:	e5933000 	ldr	r3, [r3]
80023840:	e51b1008 	ldr	r1, [fp, #-8]
80023844:	e1a00003 	mov	r0, r3
80023848:	ebfff4b1 	bl	80020b14 <bread>
8002384c:	e50b000c 	str	r0, [fp, #-12]
80023850:	e51b300c 	ldr	r3, [fp, #-12]
80023854:	e2833018 	add	r3, r3, #24
80023858:	e50b3010 	str	r3, [fp, #-16]
8002385c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023860:	e1a03103 	lsl	r3, r3, #2
80023864:	e51b2010 	ldr	r2, [fp, #-16]
80023868:	e0823003 	add	r3, r2, r3
8002386c:	e5933000 	ldr	r3, [r3]
80023870:	e50b3008 	str	r3, [fp, #-8]
80023874:	e51b3008 	ldr	r3, [fp, #-8]
80023878:	e3530000 	cmp	r3, #0
8002387c:	1a00000c 	bne	800238b4 <bmap+0x14c>
80023880:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023884:	e5933000 	ldr	r3, [r3]
80023888:	e1a00003 	mov	r0, r3
8002388c:	ebfffd4a 	bl	80022dbc <balloc>
80023890:	e50b0008 	str	r0, [fp, #-8]
80023894:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023898:	e1a03103 	lsl	r3, r3, #2
8002389c:	e51b2010 	ldr	r2, [fp, #-16]
800238a0:	e0823003 	add	r3, r2, r3
800238a4:	e51b2008 	ldr	r2, [fp, #-8]
800238a8:	e5832000 	str	r2, [r3]
800238ac:	e51b000c 	ldr	r0, [fp, #-12]
800238b0:	eb0003b8 	bl	80024798 <log_write>
800238b4:	e51b000c 	ldr	r0, [fp, #-12]
800238b8:	ebfff4bf 	bl	80020bbc <brelse>
800238bc:	e51b3008 	ldr	r3, [fp, #-8]
800238c0:	ea000001 	b	800238cc <bmap+0x164>
800238c4:	e59f000c 	ldr	r0, [pc, #12]	@ 800238d8 <bmap+0x170>
800238c8:	ebfff877 	bl	80021aac <panic>
800238cc:	e1a00003 	mov	r0, r3
800238d0:	e24bd004 	sub	sp, fp, #4
800238d4:	e8bd8800 	pop	{fp, pc}
800238d8:	8002a090 	.word	0x8002a090

800238dc <itrunc>:
800238dc:	e92d4800 	push	{fp, lr}
800238e0:	e28db004 	add	fp, sp, #4
800238e4:	e24dd018 	sub	sp, sp, #24
800238e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800238ec:	e3a03000 	mov	r3, #0
800238f0:	e50b3008 	str	r3, [fp, #-8]
800238f4:	ea00001c 	b	8002396c <itrunc+0x90>
800238f8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800238fc:	e51b3008 	ldr	r3, [fp, #-8]
80023900:	e2833006 	add	r3, r3, #6
80023904:	e1a03103 	lsl	r3, r3, #2
80023908:	e0823003 	add	r3, r2, r3
8002390c:	e5933004 	ldr	r3, [r3, #4]
80023910:	e3530000 	cmp	r3, #0
80023914:	0a000011 	beq	80023960 <itrunc+0x84>
80023918:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002391c:	e5933000 	ldr	r3, [r3]
80023920:	e1a00003 	mov	r0, r3
80023924:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023928:	e51b3008 	ldr	r3, [fp, #-8]
8002392c:	e2833006 	add	r3, r3, #6
80023930:	e1a03103 	lsl	r3, r3, #2
80023934:	e0823003 	add	r3, r2, r3
80023938:	e5933004 	ldr	r3, [r3, #4]
8002393c:	e1a01003 	mov	r1, r3
80023940:	ebfffd8f 	bl	80022f84 <bfree>
80023944:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023948:	e51b3008 	ldr	r3, [fp, #-8]
8002394c:	e2833006 	add	r3, r3, #6
80023950:	e1a03103 	lsl	r3, r3, #2
80023954:	e0823003 	add	r3, r2, r3
80023958:	e3a02000 	mov	r2, #0
8002395c:	e5832004 	str	r2, [r3, #4]
80023960:	e51b3008 	ldr	r3, [fp, #-8]
80023964:	e2833001 	add	r3, r3, #1
80023968:	e50b3008 	str	r3, [fp, #-8]
8002396c:	e51b3008 	ldr	r3, [fp, #-8]
80023970:	e353000b 	cmp	r3, #11
80023974:	daffffdf 	ble	800238f8 <itrunc+0x1c>
80023978:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002397c:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023980:	e3530000 	cmp	r3, #0
80023984:	0a000031 	beq	80023a50 <itrunc+0x174>
80023988:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002398c:	e5932000 	ldr	r2, [r3]
80023990:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023994:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023998:	e1a01003 	mov	r1, r3
8002399c:	e1a00002 	mov	r0, r2
800239a0:	ebfff45b 	bl	80020b14 <bread>
800239a4:	e50b0010 	str	r0, [fp, #-16]
800239a8:	e51b3010 	ldr	r3, [fp, #-16]
800239ac:	e2833018 	add	r3, r3, #24
800239b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800239b4:	e3a03000 	mov	r3, #0
800239b8:	e50b300c 	str	r3, [fp, #-12]
800239bc:	ea000013 	b	80023a10 <itrunc+0x134>
800239c0:	e51b300c 	ldr	r3, [fp, #-12]
800239c4:	e1a03103 	lsl	r3, r3, #2
800239c8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800239cc:	e0823003 	add	r3, r2, r3
800239d0:	e5933000 	ldr	r3, [r3]
800239d4:	e3530000 	cmp	r3, #0
800239d8:	0a000009 	beq	80023a04 <itrunc+0x128>
800239dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239e0:	e5933000 	ldr	r3, [r3]
800239e4:	e1a00003 	mov	r0, r3
800239e8:	e51b300c 	ldr	r3, [fp, #-12]
800239ec:	e1a03103 	lsl	r3, r3, #2
800239f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800239f4:	e0823003 	add	r3, r2, r3
800239f8:	e5933000 	ldr	r3, [r3]
800239fc:	e1a01003 	mov	r1, r3
80023a00:	ebfffd5f 	bl	80022f84 <bfree>
80023a04:	e51b300c 	ldr	r3, [fp, #-12]
80023a08:	e2833001 	add	r3, r3, #1
80023a0c:	e50b300c 	str	r3, [fp, #-12]
80023a10:	e51b300c 	ldr	r3, [fp, #-12]
80023a14:	e353007f 	cmp	r3, #127	@ 0x7f
80023a18:	9affffe8 	bls	800239c0 <itrunc+0xe4>
80023a1c:	e51b0010 	ldr	r0, [fp, #-16]
80023a20:	ebfff465 	bl	80020bbc <brelse>
80023a24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a28:	e5933000 	ldr	r3, [r3]
80023a2c:	e1a02003 	mov	r2, r3
80023a30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a34:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023a38:	e1a01003 	mov	r1, r3
80023a3c:	e1a00002 	mov	r0, r2
80023a40:	ebfffd4f 	bl	80022f84 <bfree>
80023a44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a48:	e3a02000 	mov	r2, #0
80023a4c:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023a50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a54:	e3a02000 	mov	r2, #0
80023a58:	e5832018 	str	r2, [r3, #24]
80023a5c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80023a60:	ebfffdda 	bl	800231d0 <iupdate>
80023a64:	e1a00000 	nop			@ (mov r0, r0)
80023a68:	e24bd004 	sub	sp, fp, #4
80023a6c:	e8bd8800 	pop	{fp, pc}

80023a70 <stati>:
80023a70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023a74:	e28db000 	add	fp, sp, #0
80023a78:	e24dd00c 	sub	sp, sp, #12
80023a7c:	e50b0008 	str	r0, [fp, #-8]
80023a80:	e50b100c 	str	r1, [fp, #-12]
80023a84:	e51b3008 	ldr	r3, [fp, #-8]
80023a88:	e5933000 	ldr	r3, [r3]
80023a8c:	e1a02003 	mov	r2, r3
80023a90:	e51b300c 	ldr	r3, [fp, #-12]
80023a94:	e5832004 	str	r2, [r3, #4]
80023a98:	e51b3008 	ldr	r3, [fp, #-8]
80023a9c:	e5932004 	ldr	r2, [r3, #4]
80023aa0:	e51b300c 	ldr	r3, [fp, #-12]
80023aa4:	e5832008 	str	r2, [r3, #8]
80023aa8:	e51b3008 	ldr	r3, [fp, #-8]
80023aac:	e1d321f0 	ldrsh	r2, [r3, #16]
80023ab0:	e51b300c 	ldr	r3, [fp, #-12]
80023ab4:	e1c320b0 	strh	r2, [r3]
80023ab8:	e51b3008 	ldr	r3, [fp, #-8]
80023abc:	e1d321f6 	ldrsh	r2, [r3, #22]
80023ac0:	e51b300c 	ldr	r3, [fp, #-12]
80023ac4:	e1c320bc 	strh	r2, [r3, #12]
80023ac8:	e51b3008 	ldr	r3, [fp, #-8]
80023acc:	e5932018 	ldr	r2, [r3, #24]
80023ad0:	e51b300c 	ldr	r3, [fp, #-12]
80023ad4:	e5832010 	str	r2, [r3, #16]
80023ad8:	e1a00000 	nop			@ (mov r0, r0)
80023adc:	e28bd000 	add	sp, fp, #0
80023ae0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80023ae4:	e12fff1e 	bx	lr

80023ae8 <readi>:
80023ae8:	e92d4810 	push	{r4, fp, lr}
80023aec:	e28db008 	add	fp, sp, #8
80023af0:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023af4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023af8:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023afc:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023b00:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023b04:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b08:	e1d331f0 	ldrsh	r3, [r3, #16]
80023b0c:	e3530003 	cmp	r3, #3
80023b10:	1a00001b 	bne	80023b84 <readi+0x9c>
80023b14:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b18:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b1c:	e3530000 	cmp	r3, #0
80023b20:	ba00000a 	blt	80023b50 <readi+0x68>
80023b24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b28:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b2c:	e3530009 	cmp	r3, #9
80023b30:	ca000006 	bgt	80023b50 <readi+0x68>
80023b34:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b38:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b3c:	e1a02003 	mov	r2, r3
80023b40:	e59f3188 	ldr	r3, [pc, #392]	@ 80023cd0 <readi+0x1e8>
80023b44:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023b48:	e3530000 	cmp	r3, #0
80023b4c:	1a000001 	bne	80023b58 <readi+0x70>
80023b50:	e3e03000 	mvn	r3, #0
80023b54:	ea00005a 	b	80023cc4 <readi+0x1dc>
80023b58:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b5c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b60:	e1a02003 	mov	r2, r3
80023b64:	e59f3164 	ldr	r3, [pc, #356]	@ 80023cd0 <readi+0x1e8>
80023b68:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023b6c:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023b70:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023b74:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023b78:	e12fff33 	blx	r3
80023b7c:	e1a03000 	mov	r3, r0
80023b80:	ea00004f 	b	80023cc4 <readi+0x1dc>
80023b84:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b88:	e5933018 	ldr	r3, [r3, #24]
80023b8c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b90:	e1520003 	cmp	r2, r3
80023b94:	8a000005 	bhi	80023bb0 <readi+0xc8>
80023b98:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ba0:	e0823003 	add	r3, r2, r3
80023ba4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ba8:	e1520003 	cmp	r2, r3
80023bac:	9a000001 	bls	80023bb8 <readi+0xd0>
80023bb0:	e3e03000 	mvn	r3, #0
80023bb4:	ea000042 	b	80023cc4 <readi+0x1dc>
80023bb8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023bbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bc0:	e0822003 	add	r2, r2, r3
80023bc4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bc8:	e5933018 	ldr	r3, [r3, #24]
80023bcc:	e1520003 	cmp	r2, r3
80023bd0:	9a000004 	bls	80023be8 <readi+0x100>
80023bd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bd8:	e5932018 	ldr	r2, [r3, #24]
80023bdc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023be0:	e0423003 	sub	r3, r2, r3
80023be4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023be8:	e3a03000 	mov	r3, #0
80023bec:	e50b3010 	str	r3, [fp, #-16]
80023bf0:	ea00002e 	b	80023cb0 <readi+0x1c8>
80023bf4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bf8:	e5934000 	ldr	r4, [r3]
80023bfc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c00:	e1a034a3 	lsr	r3, r3, #9
80023c04:	e1a01003 	mov	r1, r3
80023c08:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c0c:	ebfffed5 	bl	80023768 <bmap>
80023c10:	e1a03000 	mov	r3, r0
80023c14:	e1a01003 	mov	r1, r3
80023c18:	e1a00004 	mov	r0, r4
80023c1c:	ebfff3bc 	bl	80020b14 <bread>
80023c20:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023c24:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c28:	e1a03b83 	lsl	r3, r3, #23
80023c2c:	e1a03ba3 	lsr	r3, r3, #23
80023c30:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023c34:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023c38:	e51b3010 	ldr	r3, [fp, #-16]
80023c3c:	e0413003 	sub	r3, r1, r3
80023c40:	e1520003 	cmp	r2, r3
80023c44:	31a03002 	movcc	r3, r2
80023c48:	21a03003 	movcs	r3, r3
80023c4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023c50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023c54:	e2832018 	add	r2, r3, #24
80023c58:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c5c:	e1a03b83 	lsl	r3, r3, #23
80023c60:	e1a03ba3 	lsr	r3, r3, #23
80023c64:	e0823003 	add	r3, r2, r3
80023c68:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023c6c:	e1a01003 	mov	r1, r3
80023c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023c74:	ebfff153 	bl	800201c8 <memmove>
80023c78:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023c7c:	ebfff3ce 	bl	80020bbc <brelse>
80023c80:	e51b2010 	ldr	r2, [fp, #-16]
80023c84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023c88:	e0823003 	add	r3, r2, r3
80023c8c:	e50b3010 	str	r3, [fp, #-16]
80023c90:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023c98:	e0823003 	add	r3, r2, r3
80023c9c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023ca0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023ca4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ca8:	e0823003 	add	r3, r2, r3
80023cac:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023cb0:	e51b2010 	ldr	r2, [fp, #-16]
80023cb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cb8:	e1520003 	cmp	r2, r3
80023cbc:	3affffcc 	bcc	80023bf4 <readi+0x10c>
80023cc0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cc4:	e1a00003 	mov	r0, r3
80023cc8:	e24bd008 	sub	sp, fp, #8
80023ccc:	e8bd8810 	pop	{r4, fp, pc}
80023cd0:	800acb70 	.word	0x800acb70

80023cd4 <writei>:
80023cd4:	e92d4810 	push	{r4, fp, lr}
80023cd8:	e28db008 	add	fp, sp, #8
80023cdc:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023ce0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023ce4:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023ce8:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023cec:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023cf0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cf4:	e1d331f0 	ldrsh	r3, [r3, #16]
80023cf8:	e3530003 	cmp	r3, #3
80023cfc:	1a00001d 	bne	80023d78 <writei+0xa4>
80023d00:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d04:	e1d331f2 	ldrsh	r3, [r3, #18]
80023d08:	e3530000 	cmp	r3, #0
80023d0c:	ba00000b 	blt	80023d40 <writei+0x6c>
80023d10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d14:	e1d331f2 	ldrsh	r3, [r3, #18]
80023d18:	e3530009 	cmp	r3, #9
80023d1c:	ca000007 	bgt	80023d40 <writei+0x6c>
80023d20:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d24:	e1d331f2 	ldrsh	r3, [r3, #18]
80023d28:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023eec <writei+0x218>
80023d2c:	e1a03183 	lsl	r3, r3, #3
80023d30:	e0823003 	add	r3, r2, r3
80023d34:	e5933004 	ldr	r3, [r3, #4]
80023d38:	e3530000 	cmp	r3, #0
80023d3c:	1a000001 	bne	80023d48 <writei+0x74>
80023d40:	e3e03000 	mvn	r3, #0
80023d44:	ea000065 	b	80023ee0 <writei+0x20c>
80023d48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d4c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023d50:	e59f2194 	ldr	r2, [pc, #404]	@ 80023eec <writei+0x218>
80023d54:	e1a03183 	lsl	r3, r3, #3
80023d58:	e0823003 	add	r3, r2, r3
80023d5c:	e5933004 	ldr	r3, [r3, #4]
80023d60:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023d64:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023d68:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d6c:	e12fff33 	blx	r3
80023d70:	e1a03000 	mov	r3, r0
80023d74:	ea000059 	b	80023ee0 <writei+0x20c>
80023d78:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d7c:	e5933018 	ldr	r3, [r3, #24]
80023d80:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d84:	e1520003 	cmp	r2, r3
80023d88:	8a000005 	bhi	80023da4 <writei+0xd0>
80023d8c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d94:	e0823003 	add	r3, r2, r3
80023d98:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d9c:	e1520003 	cmp	r2, r3
80023da0:	9a000001 	bls	80023dac <writei+0xd8>
80023da4:	e3e03000 	mvn	r3, #0
80023da8:	ea00004c 	b	80023ee0 <writei+0x20c>
80023dac:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023db0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023db4:	e0823003 	add	r3, r2, r3
80023db8:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023dbc:	9a000001 	bls	80023dc8 <writei+0xf4>
80023dc0:	e3e03000 	mvn	r3, #0
80023dc4:	ea000045 	b	80023ee0 <writei+0x20c>
80023dc8:	e3a03000 	mov	r3, #0
80023dcc:	e50b3010 	str	r3, [fp, #-16]
80023dd0:	ea000030 	b	80023e98 <writei+0x1c4>
80023dd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023dd8:	e5934000 	ldr	r4, [r3]
80023ddc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023de0:	e1a034a3 	lsr	r3, r3, #9
80023de4:	e1a01003 	mov	r1, r3
80023de8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023dec:	ebfffe5d 	bl	80023768 <bmap>
80023df0:	e1a03000 	mov	r3, r0
80023df4:	e1a01003 	mov	r1, r3
80023df8:	e1a00004 	mov	r0, r4
80023dfc:	ebfff344 	bl	80020b14 <bread>
80023e00:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023e04:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e08:	e1a03b83 	lsl	r3, r3, #23
80023e0c:	e1a03ba3 	lsr	r3, r3, #23
80023e10:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023e14:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023e18:	e51b3010 	ldr	r3, [fp, #-16]
80023e1c:	e0413003 	sub	r3, r1, r3
80023e20:	e1520003 	cmp	r2, r3
80023e24:	31a03002 	movcc	r3, r2
80023e28:	21a03003 	movcs	r3, r3
80023e2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023e30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023e34:	e2832018 	add	r2, r3, #24
80023e38:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e3c:	e1a03b83 	lsl	r3, r3, #23
80023e40:	e1a03ba3 	lsr	r3, r3, #23
80023e44:	e0823003 	add	r3, r2, r3
80023e48:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023e4c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023e50:	e1a00003 	mov	r0, r3
80023e54:	ebfff0db 	bl	800201c8 <memmove>
80023e58:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023e5c:	eb00024d 	bl	80024798 <log_write>
80023e60:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023e64:	ebfff354 	bl	80020bbc <brelse>
80023e68:	e51b2010 	ldr	r2, [fp, #-16]
80023e6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023e70:	e0823003 	add	r3, r2, r3
80023e74:	e50b3010 	str	r3, [fp, #-16]
80023e78:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023e80:	e0823003 	add	r3, r2, r3
80023e84:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023e88:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023e8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023e90:	e0823003 	add	r3, r2, r3
80023e94:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023e98:	e51b2010 	ldr	r2, [fp, #-16]
80023e9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ea0:	e1520003 	cmp	r2, r3
80023ea4:	3affffca 	bcc	80023dd4 <writei+0x100>
80023ea8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023eac:	e3530000 	cmp	r3, #0
80023eb0:	0a000009 	beq	80023edc <writei+0x208>
80023eb4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023eb8:	e5933018 	ldr	r3, [r3, #24]
80023ebc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ec0:	e1520003 	cmp	r2, r3
80023ec4:	9a000004 	bls	80023edc <writei+0x208>
80023ec8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ecc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ed0:	e5832018 	str	r2, [r3, #24]
80023ed4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ed8:	ebfffcbc 	bl	800231d0 <iupdate>
80023edc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ee0:	e1a00003 	mov	r0, r3
80023ee4:	e24bd008 	sub	sp, fp, #8
80023ee8:	e8bd8810 	pop	{r4, fp, pc}
80023eec:	800acb70 	.word	0x800acb70

80023ef0 <namecmp>:
80023ef0:	e92d4800 	push	{fp, lr}
80023ef4:	e28db004 	add	fp, sp, #4
80023ef8:	e24dd008 	sub	sp, sp, #8
80023efc:	e50b0008 	str	r0, [fp, #-8]
80023f00:	e50b100c 	str	r1, [fp, #-12]
80023f04:	e3a0200e 	mov	r2, #14
80023f08:	e51b100c 	ldr	r1, [fp, #-12]
80023f0c:	e51b0008 	ldr	r0, [fp, #-8]
80023f10:	ebfff0f9 	bl	800202fc <strncmp>
80023f14:	e1a03000 	mov	r3, r0
80023f18:	e1a00003 	mov	r0, r3
80023f1c:	e24bd004 	sub	sp, fp, #4
80023f20:	e8bd8800 	pop	{fp, pc}

80023f24 <dirlookup>:
80023f24:	e92d4800 	push	{fp, lr}
80023f28:	e28db004 	add	fp, sp, #4
80023f2c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023f30:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023f34:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023f38:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023f3c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023f40:	e1d331f0 	ldrsh	r3, [r3, #16]
80023f44:	e3530001 	cmp	r3, #1
80023f48:	0a000001 	beq	80023f54 <dirlookup+0x30>
80023f4c:	e59f00d0 	ldr	r0, [pc, #208]	@ 80024024 <dirlookup+0x100>
80023f50:	ebfff6d5 	bl	80021aac <panic>
80023f54:	e3a03000 	mov	r3, #0
80023f58:	e50b3008 	str	r3, [fp, #-8]
80023f5c:	ea000027 	b	80024000 <dirlookup+0xdc>
80023f60:	e24b101c 	sub	r1, fp, #28
80023f64:	e3a03010 	mov	r3, #16
80023f68:	e51b2008 	ldr	r2, [fp, #-8]
80023f6c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023f70:	ebfffedc 	bl	80023ae8 <readi>
80023f74:	e1a03000 	mov	r3, r0
80023f78:	e3530010 	cmp	r3, #16
80023f7c:	0a000001 	beq	80023f88 <dirlookup+0x64>
80023f80:	e59f00a0 	ldr	r0, [pc, #160]	@ 80024028 <dirlookup+0x104>
80023f84:	ebfff6c8 	bl	80021aac <panic>
80023f88:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023f8c:	e3530000 	cmp	r3, #0
80023f90:	0a000016 	beq	80023ff0 <dirlookup+0xcc>
80023f94:	e24b301c 	sub	r3, fp, #28
80023f98:	e2833002 	add	r3, r3, #2
80023f9c:	e1a01003 	mov	r1, r3
80023fa0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023fa4:	ebffffd1 	bl	80023ef0 <namecmp>
80023fa8:	e1a03000 	mov	r3, r0
80023fac:	e3530000 	cmp	r3, #0
80023fb0:	1a00000f 	bne	80023ff4 <dirlookup+0xd0>
80023fb4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023fb8:	e3530000 	cmp	r3, #0
80023fbc:	0a000002 	beq	80023fcc <dirlookup+0xa8>
80023fc0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023fc4:	e51b2008 	ldr	r2, [fp, #-8]
80023fc8:	e5832000 	str	r2, [r3]
80023fcc:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023fd0:	e50b300c 	str	r3, [fp, #-12]
80023fd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023fd8:	e5933000 	ldr	r3, [r3]
80023fdc:	e51b100c 	ldr	r1, [fp, #-12]
80023fe0:	e1a00003 	mov	r0, r3
80023fe4:	ebfffcb1 	bl	800232b0 <iget>
80023fe8:	e1a03000 	mov	r3, r0
80023fec:	ea000009 	b	80024018 <dirlookup+0xf4>
80023ff0:	e1a00000 	nop			@ (mov r0, r0)
80023ff4:	e51b3008 	ldr	r3, [fp, #-8]
80023ff8:	e2833010 	add	r3, r3, #16
80023ffc:	e50b3008 	str	r3, [fp, #-8]
80024000:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80024004:	e5933018 	ldr	r3, [r3, #24]
80024008:	e51b2008 	ldr	r2, [fp, #-8]
8002400c:	e1520003 	cmp	r2, r3
80024010:	3affffd2 	bcc	80023f60 <dirlookup+0x3c>
80024014:	e3a03000 	mov	r3, #0
80024018:	e1a00003 	mov	r0, r3
8002401c:	e24bd004 	sub	sp, fp, #4
80024020:	e8bd8800 	pop	{fp, pc}
80024024:	8002a0a4 	.word	0x8002a0a4
80024028:	8002a0b8 	.word	0x8002a0b8

8002402c <dirlink>:
8002402c:	e92d4800 	push	{fp, lr}
80024030:	e28db004 	add	fp, sp, #4
80024034:	e24dd028 	sub	sp, sp, #40	@ 0x28
80024038:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002403c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80024040:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80024044:	e3a02000 	mov	r2, #0
80024048:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
8002404c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024050:	ebffffb3 	bl	80023f24 <dirlookup>
80024054:	e50b000c 	str	r0, [fp, #-12]
80024058:	e51b300c 	ldr	r3, [fp, #-12]
8002405c:	e3530000 	cmp	r3, #0
80024060:	0a000003 	beq	80024074 <dirlink+0x48>
80024064:	e51b000c 	ldr	r0, [fp, #-12]
80024068:	ebfffd78 	bl	80023650 <iput>
8002406c:	e3e03000 	mvn	r3, #0
80024070:	ea00002d 	b	8002412c <dirlink+0x100>
80024074:	e3a03000 	mov	r3, #0
80024078:	e50b3008 	str	r3, [fp, #-8]
8002407c:	ea00000f 	b	800240c0 <dirlink+0x94>
80024080:	e51b2008 	ldr	r2, [fp, #-8]
80024084:	e24b101c 	sub	r1, fp, #28
80024088:	e3a03010 	mov	r3, #16
8002408c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024090:	ebfffe94 	bl	80023ae8 <readi>
80024094:	e1a03000 	mov	r3, r0
80024098:	e3530010 	cmp	r3, #16
8002409c:	0a000001 	beq	800240a8 <dirlink+0x7c>
800240a0:	e59f0090 	ldr	r0, [pc, #144]	@ 80024138 <dirlink+0x10c>
800240a4:	ebfff680 	bl	80021aac <panic>
800240a8:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
800240ac:	e3530000 	cmp	r3, #0
800240b0:	0a000008 	beq	800240d8 <dirlink+0xac>
800240b4:	e51b3008 	ldr	r3, [fp, #-8]
800240b8:	e2833010 	add	r3, r3, #16
800240bc:	e50b3008 	str	r3, [fp, #-8]
800240c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800240c4:	e5932018 	ldr	r2, [r3, #24]
800240c8:	e51b3008 	ldr	r3, [fp, #-8]
800240cc:	e1520003 	cmp	r2, r3
800240d0:	8affffea 	bhi	80024080 <dirlink+0x54>
800240d4:	ea000000 	b	800240dc <dirlink+0xb0>
800240d8:	e1a00000 	nop			@ (mov r0, r0)
800240dc:	e24b301c 	sub	r3, fp, #28
800240e0:	e2833002 	add	r3, r3, #2
800240e4:	e3a0200e 	mov	r2, #14
800240e8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
800240ec:	e1a00003 	mov	r0, r3
800240f0:	ebfff0ad 	bl	800203ac <strncpy>
800240f4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800240f8:	e6ff3073 	uxth	r3, r3
800240fc:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80024100:	e51b2008 	ldr	r2, [fp, #-8]
80024104:	e24b101c 	sub	r1, fp, #28
80024108:	e3a03010 	mov	r3, #16
8002410c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80024110:	ebfffeef 	bl	80023cd4 <writei>
80024114:	e1a03000 	mov	r3, r0
80024118:	e3530010 	cmp	r3, #16
8002411c:	0a000001 	beq	80024128 <dirlink+0xfc>
80024120:	e59f0014 	ldr	r0, [pc, #20]	@ 8002413c <dirlink+0x110>
80024124:	ebfff660 	bl	80021aac <panic>
80024128:	e3a03000 	mov	r3, #0
8002412c:	e1a00003 	mov	r0, r3
80024130:	e24bd004 	sub	sp, fp, #4
80024134:	e8bd8800 	pop	{fp, pc}
80024138:	8002a0b8 	.word	0x8002a0b8
8002413c:	8002a0c8 	.word	0x8002a0c8

80024140 <skipelem>:
80024140:	e92d4800 	push	{fp, lr}
80024144:	e28db004 	add	fp, sp, #4
80024148:	e24dd010 	sub	sp, sp, #16
8002414c:	e50b0010 	str	r0, [fp, #-16]
80024150:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024154:	ea000002 	b	80024164 <skipelem+0x24>
80024158:	e51b3010 	ldr	r3, [fp, #-16]
8002415c:	e2833001 	add	r3, r3, #1
80024160:	e50b3010 	str	r3, [fp, #-16]
80024164:	e51b3010 	ldr	r3, [fp, #-16]
80024168:	e5d33000 	ldrb	r3, [r3]
8002416c:	e353002f 	cmp	r3, #47	@ 0x2f
80024170:	0afffff8 	beq	80024158 <skipelem+0x18>
80024174:	e51b3010 	ldr	r3, [fp, #-16]
80024178:	e5d33000 	ldrb	r3, [r3]
8002417c:	e3530000 	cmp	r3, #0
80024180:	1a000001 	bne	8002418c <skipelem+0x4c>
80024184:	e3a03000 	mov	r3, #0
80024188:	ea00002c 	b	80024240 <skipelem+0x100>
8002418c:	e51b3010 	ldr	r3, [fp, #-16]
80024190:	e50b3008 	str	r3, [fp, #-8]
80024194:	ea000002 	b	800241a4 <skipelem+0x64>
80024198:	e51b3010 	ldr	r3, [fp, #-16]
8002419c:	e2833001 	add	r3, r3, #1
800241a0:	e50b3010 	str	r3, [fp, #-16]
800241a4:	e51b3010 	ldr	r3, [fp, #-16]
800241a8:	e5d33000 	ldrb	r3, [r3]
800241ac:	e353002f 	cmp	r3, #47	@ 0x2f
800241b0:	0a000003 	beq	800241c4 <skipelem+0x84>
800241b4:	e51b3010 	ldr	r3, [fp, #-16]
800241b8:	e5d33000 	ldrb	r3, [r3]
800241bc:	e3530000 	cmp	r3, #0
800241c0:	1afffff4 	bne	80024198 <skipelem+0x58>
800241c4:	e51b2010 	ldr	r2, [fp, #-16]
800241c8:	e51b3008 	ldr	r3, [fp, #-8]
800241cc:	e0423003 	sub	r3, r2, r3
800241d0:	e50b300c 	str	r3, [fp, #-12]
800241d4:	e51b300c 	ldr	r3, [fp, #-12]
800241d8:	e353000d 	cmp	r3, #13
800241dc:	da000004 	ble	800241f4 <skipelem+0xb4>
800241e0:	e3a0200e 	mov	r2, #14
800241e4:	e51b1008 	ldr	r1, [fp, #-8]
800241e8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800241ec:	ebffeff5 	bl	800201c8 <memmove>
800241f0:	ea00000d 	b	8002422c <skipelem+0xec>
800241f4:	e51b300c 	ldr	r3, [fp, #-12]
800241f8:	e1a02003 	mov	r2, r3
800241fc:	e51b1008 	ldr	r1, [fp, #-8]
80024200:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024204:	ebffefef 	bl	800201c8 <memmove>
80024208:	e51b300c 	ldr	r3, [fp, #-12]
8002420c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024210:	e0823003 	add	r3, r2, r3
80024214:	e3a02000 	mov	r2, #0
80024218:	e5c32000 	strb	r2, [r3]
8002421c:	ea000002 	b	8002422c <skipelem+0xec>
80024220:	e51b3010 	ldr	r3, [fp, #-16]
80024224:	e2833001 	add	r3, r3, #1
80024228:	e50b3010 	str	r3, [fp, #-16]
8002422c:	e51b3010 	ldr	r3, [fp, #-16]
80024230:	e5d33000 	ldrb	r3, [r3]
80024234:	e353002f 	cmp	r3, #47	@ 0x2f
80024238:	0afffff8 	beq	80024220 <skipelem+0xe0>
8002423c:	e51b3010 	ldr	r3, [fp, #-16]
80024240:	e1a00003 	mov	r0, r3
80024244:	e24bd004 	sub	sp, fp, #4
80024248:	e8bd8800 	pop	{fp, pc}

8002424c <namex>:
8002424c:	e92d4800 	push	{fp, lr}
80024250:	e28db004 	add	fp, sp, #4
80024254:	e24dd018 	sub	sp, sp, #24
80024258:	e50b0010 	str	r0, [fp, #-16]
8002425c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024260:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024264:	e51b3010 	ldr	r3, [fp, #-16]
80024268:	e5d33000 	ldrb	r3, [r3]
8002426c:	e353002f 	cmp	r3, #47	@ 0x2f
80024270:	1a000004 	bne	80024288 <namex+0x3c>
80024274:	e3a01001 	mov	r1, #1
80024278:	e3a00001 	mov	r0, #1
8002427c:	ebfffc0b 	bl	800232b0 <iget>
80024280:	e50b0008 	str	r0, [fp, #-8]
80024284:	ea00002b 	b	80024338 <namex+0xec>
80024288:	e59f30f0 	ldr	r3, [pc, #240]	@ 80024380 <namex+0x134>
8002428c:	e5933000 	ldr	r3, [r3]
80024290:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80024294:	e1a00003 	mov	r0, r3
80024298:	ebfffc54 	bl	800233f0 <idup>
8002429c:	e50b0008 	str	r0, [fp, #-8]
800242a0:	ea000024 	b	80024338 <namex+0xec>
800242a4:	e51b0008 	ldr	r0, [fp, #-8]
800242a8:	ebfffc62 	bl	80023438 <ilock>
800242ac:	e51b3008 	ldr	r3, [fp, #-8]
800242b0:	e1d331f0 	ldrsh	r3, [r3, #16]
800242b4:	e3530001 	cmp	r3, #1
800242b8:	0a000003 	beq	800242cc <namex+0x80>
800242bc:	e51b0008 	ldr	r0, [fp, #-8]
800242c0:	ebfffd1d 	bl	8002373c <iunlockput>
800242c4:	e3a03000 	mov	r3, #0
800242c8:	ea000029 	b	80024374 <namex+0x128>
800242cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800242d0:	e3530000 	cmp	r3, #0
800242d4:	0a000007 	beq	800242f8 <namex+0xac>
800242d8:	e51b3010 	ldr	r3, [fp, #-16]
800242dc:	e5d33000 	ldrb	r3, [r3]
800242e0:	e3530000 	cmp	r3, #0
800242e4:	1a000003 	bne	800242f8 <namex+0xac>
800242e8:	e51b0008 	ldr	r0, [fp, #-8]
800242ec:	ebfffcb5 	bl	800235c8 <iunlock>
800242f0:	e51b3008 	ldr	r3, [fp, #-8]
800242f4:	ea00001e 	b	80024374 <namex+0x128>
800242f8:	e3a02000 	mov	r2, #0
800242fc:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024300:	e51b0008 	ldr	r0, [fp, #-8]
80024304:	ebffff06 	bl	80023f24 <dirlookup>
80024308:	e50b000c 	str	r0, [fp, #-12]
8002430c:	e51b300c 	ldr	r3, [fp, #-12]
80024310:	e3530000 	cmp	r3, #0
80024314:	1a000003 	bne	80024328 <namex+0xdc>
80024318:	e51b0008 	ldr	r0, [fp, #-8]
8002431c:	ebfffd06 	bl	8002373c <iunlockput>
80024320:	e3a03000 	mov	r3, #0
80024324:	ea000012 	b	80024374 <namex+0x128>
80024328:	e51b0008 	ldr	r0, [fp, #-8]
8002432c:	ebfffd02 	bl	8002373c <iunlockput>
80024330:	e51b300c 	ldr	r3, [fp, #-12]
80024334:	e50b3008 	str	r3, [fp, #-8]
80024338:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
8002433c:	e51b0010 	ldr	r0, [fp, #-16]
80024340:	ebffff7e 	bl	80024140 <skipelem>
80024344:	e50b0010 	str	r0, [fp, #-16]
80024348:	e51b3010 	ldr	r3, [fp, #-16]
8002434c:	e3530000 	cmp	r3, #0
80024350:	1affffd3 	bne	800242a4 <namex+0x58>
80024354:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024358:	e3530000 	cmp	r3, #0
8002435c:	0a000003 	beq	80024370 <namex+0x124>
80024360:	e51b0008 	ldr	r0, [fp, #-8]
80024364:	ebfffcb9 	bl	80023650 <iput>
80024368:	e3a03000 	mov	r3, #0
8002436c:	ea000000 	b	80024374 <namex+0x128>
80024370:	e51b3008 	ldr	r3, [fp, #-8]
80024374:	e1a00003 	mov	r0, r3
80024378:	e24bd004 	sub	sp, fp, #4
8002437c:	e8bd8800 	pop	{fp, pc}
80024380:	800b0dc0 	.word	0x800b0dc0

80024384 <namei>:
80024384:	e92d4800 	push	{fp, lr}
80024388:	e28db004 	add	fp, sp, #4
8002438c:	e24dd018 	sub	sp, sp, #24
80024390:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80024394:	e24b3014 	sub	r3, fp, #20
80024398:	e1a02003 	mov	r2, r3
8002439c:	e3a01000 	mov	r1, #0
800243a0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800243a4:	ebffffa8 	bl	8002424c <namex>
800243a8:	e1a03000 	mov	r3, r0
800243ac:	e1a00003 	mov	r0, r3
800243b0:	e24bd004 	sub	sp, fp, #4
800243b4:	e8bd8800 	pop	{fp, pc}

800243b8 <nameiparent>:
800243b8:	e92d4800 	push	{fp, lr}
800243bc:	e28db004 	add	fp, sp, #4
800243c0:	e24dd008 	sub	sp, sp, #8
800243c4:	e50b0008 	str	r0, [fp, #-8]
800243c8:	e50b100c 	str	r1, [fp, #-12]
800243cc:	e51b200c 	ldr	r2, [fp, #-12]
800243d0:	e3a01001 	mov	r1, #1
800243d4:	e51b0008 	ldr	r0, [fp, #-8]
800243d8:	ebffff9b 	bl	8002424c <namex>
800243dc:	e1a03000 	mov	r3, r0
800243e0:	e1a00003 	mov	r0, r3
800243e4:	e24bd004 	sub	sp, fp, #4
800243e8:	e8bd8800 	pop	{fp, pc}

800243ec <initlog>:
800243ec:	e92d4800 	push	{fp, lr}
800243f0:	e28db004 	add	fp, sp, #4
800243f4:	e24dd010 	sub	sp, sp, #16
800243f8:	e59f1058 	ldr	r1, [pc, #88]	@ 80024458 <initlog+0x6c>
800243fc:	e59f0058 	ldr	r0, [pc, #88]	@ 8002445c <initlog+0x70>
80024400:	eb0007b2 	bl	800262d0 <initlock>
80024404:	e24b3014 	sub	r3, fp, #20
80024408:	e1a01003 	mov	r1, r3
8002440c:	e3a00001 	mov	r0, #1
80024410:	ebfffa3c 	bl	80022d08 <readsb>
80024414:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024418:	e51b3008 	ldr	r3, [fp, #-8]
8002441c:	e0423003 	sub	r3, r2, r3
80024420:	e1a02003 	mov	r2, r3
80024424:	e59f3030 	ldr	r3, [pc, #48]	@ 8002445c <initlog+0x70>
80024428:	e5832034 	str	r2, [r3, #52]	@ 0x34
8002442c:	e51b3008 	ldr	r3, [fp, #-8]
80024430:	e1a02003 	mov	r2, r3
80024434:	e59f3020 	ldr	r3, [pc, #32]	@ 8002445c <initlog+0x70>
80024438:	e5832038 	str	r2, [r3, #56]	@ 0x38
8002443c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002445c <initlog+0x70>
80024440:	e3a02001 	mov	r2, #1
80024444:	e5832040 	str	r2, [r3, #64]	@ 0x40
80024448:	eb00009b 	bl	800246bc <recover_from_log>
8002444c:	e1a00000 	nop			@ (mov r0, r0)
80024450:	e24bd004 	sub	sp, fp, #4
80024454:	e8bd8800 	pop	{fp, pc}
80024458:	8002a0d0 	.word	0x8002a0d0
8002445c:	800ae528 	.word	0x800ae528

80024460 <install_trans>:
80024460:	e92d4800 	push	{fp, lr}
80024464:	e28db004 	add	fp, sp, #4
80024468:	e24dd010 	sub	sp, sp, #16
8002446c:	e3a03000 	mov	r3, #0
80024470:	e50b3008 	str	r3, [fp, #-8]
80024474:	ea000026 	b	80024514 <install_trans+0xb4>
80024478:	e59f30b8 	ldr	r3, [pc, #184]	@ 80024538 <install_trans+0xd8>
8002447c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024480:	e1a00003 	mov	r0, r3
80024484:	e59f30ac 	ldr	r3, [pc, #172]	@ 80024538 <install_trans+0xd8>
80024488:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
8002448c:	e51b3008 	ldr	r3, [fp, #-8]
80024490:	e0823003 	add	r3, r2, r3
80024494:	e2833001 	add	r3, r3, #1
80024498:	e1a01003 	mov	r1, r3
8002449c:	ebfff19c 	bl	80020b14 <bread>
800244a0:	e50b000c 	str	r0, [fp, #-12]
800244a4:	e59f308c 	ldr	r3, [pc, #140]	@ 80024538 <install_trans+0xd8>
800244a8:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800244ac:	e1a00003 	mov	r0, r3
800244b0:	e59f2080 	ldr	r2, [pc, #128]	@ 80024538 <install_trans+0xd8>
800244b4:	e51b3008 	ldr	r3, [fp, #-8]
800244b8:	e2833010 	add	r3, r3, #16
800244bc:	e1a03103 	lsl	r3, r3, #2
800244c0:	e0823003 	add	r3, r2, r3
800244c4:	e5933008 	ldr	r3, [r3, #8]
800244c8:	e1a01003 	mov	r1, r3
800244cc:	ebfff190 	bl	80020b14 <bread>
800244d0:	e50b0010 	str	r0, [fp, #-16]
800244d4:	e51b3010 	ldr	r3, [fp, #-16]
800244d8:	e2830018 	add	r0, r3, #24
800244dc:	e51b300c 	ldr	r3, [fp, #-12]
800244e0:	e2833018 	add	r3, r3, #24
800244e4:	e3a02c02 	mov	r2, #512	@ 0x200
800244e8:	e1a01003 	mov	r1, r3
800244ec:	ebffef35 	bl	800201c8 <memmove>
800244f0:	e51b0010 	ldr	r0, [fp, #-16]
800244f4:	ebfff19a 	bl	80020b64 <bwrite>
800244f8:	e51b000c 	ldr	r0, [fp, #-12]
800244fc:	ebfff1ae 	bl	80020bbc <brelse>
80024500:	e51b0010 	ldr	r0, [fp, #-16]
80024504:	ebfff1ac 	bl	80020bbc <brelse>
80024508:	e51b3008 	ldr	r3, [fp, #-8]
8002450c:	e2833001 	add	r3, r3, #1
80024510:	e50b3008 	str	r3, [fp, #-8]
80024514:	e59f301c 	ldr	r3, [pc, #28]	@ 80024538 <install_trans+0xd8>
80024518:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002451c:	e51b2008 	ldr	r2, [fp, #-8]
80024520:	e1520003 	cmp	r2, r3
80024524:	baffffd3 	blt	80024478 <install_trans+0x18>
80024528:	e1a00000 	nop			@ (mov r0, r0)
8002452c:	e1a00000 	nop			@ (mov r0, r0)
80024530:	e24bd004 	sub	sp, fp, #4
80024534:	e8bd8800 	pop	{fp, pc}
80024538:	800ae528 	.word	0x800ae528

8002453c <read_head>:
8002453c:	e92d4800 	push	{fp, lr}
80024540:	e28db004 	add	fp, sp, #4
80024544:	e24dd010 	sub	sp, sp, #16
80024548:	e59f30a4 	ldr	r3, [pc, #164]	@ 800245f4 <read_head+0xb8>
8002454c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024550:	e1a02003 	mov	r2, r3
80024554:	e59f3098 	ldr	r3, [pc, #152]	@ 800245f4 <read_head+0xb8>
80024558:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002455c:	e1a01003 	mov	r1, r3
80024560:	e1a00002 	mov	r0, r2
80024564:	ebfff16a 	bl	80020b14 <bread>
80024568:	e50b000c 	str	r0, [fp, #-12]
8002456c:	e51b300c 	ldr	r3, [fp, #-12]
80024570:	e2833018 	add	r3, r3, #24
80024574:	e50b3010 	str	r3, [fp, #-16]
80024578:	e51b3010 	ldr	r3, [fp, #-16]
8002457c:	e5933000 	ldr	r3, [r3]
80024580:	e59f206c 	ldr	r2, [pc, #108]	@ 800245f4 <read_head+0xb8>
80024584:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024588:	e3a03000 	mov	r3, #0
8002458c:	e50b3008 	str	r3, [fp, #-8]
80024590:	ea00000d 	b	800245cc <read_head+0x90>
80024594:	e51b2010 	ldr	r2, [fp, #-16]
80024598:	e51b3008 	ldr	r3, [fp, #-8]
8002459c:	e1a03103 	lsl	r3, r3, #2
800245a0:	e0823003 	add	r3, r2, r3
800245a4:	e5932004 	ldr	r2, [r3, #4]
800245a8:	e59f1044 	ldr	r1, [pc, #68]	@ 800245f4 <read_head+0xb8>
800245ac:	e51b3008 	ldr	r3, [fp, #-8]
800245b0:	e2833010 	add	r3, r3, #16
800245b4:	e1a03103 	lsl	r3, r3, #2
800245b8:	e0813003 	add	r3, r1, r3
800245bc:	e5832008 	str	r2, [r3, #8]
800245c0:	e51b3008 	ldr	r3, [fp, #-8]
800245c4:	e2833001 	add	r3, r3, #1
800245c8:	e50b3008 	str	r3, [fp, #-8]
800245cc:	e59f3020 	ldr	r3, [pc, #32]	@ 800245f4 <read_head+0xb8>
800245d0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245d4:	e51b2008 	ldr	r2, [fp, #-8]
800245d8:	e1520003 	cmp	r2, r3
800245dc:	baffffec 	blt	80024594 <read_head+0x58>
800245e0:	e51b000c 	ldr	r0, [fp, #-12]
800245e4:	ebfff174 	bl	80020bbc <brelse>
800245e8:	e1a00000 	nop			@ (mov r0, r0)
800245ec:	e24bd004 	sub	sp, fp, #4
800245f0:	e8bd8800 	pop	{fp, pc}
800245f4:	800ae528 	.word	0x800ae528

800245f8 <write_head>:
800245f8:	e92d4800 	push	{fp, lr}
800245fc:	e28db004 	add	fp, sp, #4
80024600:	e24dd010 	sub	sp, sp, #16
80024604:	e59f30ac 	ldr	r3, [pc, #172]	@ 800246b8 <write_head+0xc0>
80024608:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
8002460c:	e1a02003 	mov	r2, r3
80024610:	e59f30a0 	ldr	r3, [pc, #160]	@ 800246b8 <write_head+0xc0>
80024614:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024618:	e1a01003 	mov	r1, r3
8002461c:	e1a00002 	mov	r0, r2
80024620:	ebfff13b 	bl	80020b14 <bread>
80024624:	e50b000c 	str	r0, [fp, #-12]
80024628:	e51b300c 	ldr	r3, [fp, #-12]
8002462c:	e2833018 	add	r3, r3, #24
80024630:	e50b3010 	str	r3, [fp, #-16]
80024634:	e59f307c 	ldr	r3, [pc, #124]	@ 800246b8 <write_head+0xc0>
80024638:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
8002463c:	e51b3010 	ldr	r3, [fp, #-16]
80024640:	e5832000 	str	r2, [r3]
80024644:	e3a03000 	mov	r3, #0
80024648:	e50b3008 	str	r3, [fp, #-8]
8002464c:	ea00000d 	b	80024688 <write_head+0x90>
80024650:	e59f2060 	ldr	r2, [pc, #96]	@ 800246b8 <write_head+0xc0>
80024654:	e51b3008 	ldr	r3, [fp, #-8]
80024658:	e2833010 	add	r3, r3, #16
8002465c:	e1a03103 	lsl	r3, r3, #2
80024660:	e0823003 	add	r3, r2, r3
80024664:	e5932008 	ldr	r2, [r3, #8]
80024668:	e51b1010 	ldr	r1, [fp, #-16]
8002466c:	e51b3008 	ldr	r3, [fp, #-8]
80024670:	e1a03103 	lsl	r3, r3, #2
80024674:	e0813003 	add	r3, r1, r3
80024678:	e5832004 	str	r2, [r3, #4]
8002467c:	e51b3008 	ldr	r3, [fp, #-8]
80024680:	e2833001 	add	r3, r3, #1
80024684:	e50b3008 	str	r3, [fp, #-8]
80024688:	e59f3028 	ldr	r3, [pc, #40]	@ 800246b8 <write_head+0xc0>
8002468c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024690:	e51b2008 	ldr	r2, [fp, #-8]
80024694:	e1520003 	cmp	r2, r3
80024698:	baffffec 	blt	80024650 <write_head+0x58>
8002469c:	e51b000c 	ldr	r0, [fp, #-12]
800246a0:	ebfff12f 	bl	80020b64 <bwrite>
800246a4:	e51b000c 	ldr	r0, [fp, #-12]
800246a8:	ebfff143 	bl	80020bbc <brelse>
800246ac:	e1a00000 	nop			@ (mov r0, r0)
800246b0:	e24bd004 	sub	sp, fp, #4
800246b4:	e8bd8800 	pop	{fp, pc}
800246b8:	800ae528 	.word	0x800ae528

800246bc <recover_from_log>:
800246bc:	e92d4800 	push	{fp, lr}
800246c0:	e28db004 	add	fp, sp, #4
800246c4:	ebffff9c 	bl	8002453c <read_head>
800246c8:	ebffff64 	bl	80024460 <install_trans>
800246cc:	e59f3010 	ldr	r3, [pc, #16]	@ 800246e4 <recover_from_log+0x28>
800246d0:	e3a02000 	mov	r2, #0
800246d4:	e5832044 	str	r2, [r3, #68]	@ 0x44
800246d8:	ebffffc6 	bl	800245f8 <write_head>
800246dc:	e1a00000 	nop			@ (mov r0, r0)
800246e0:	e8bd8800 	pop	{fp, pc}
800246e4:	800ae528 	.word	0x800ae528

800246e8 <begin_trans>:
800246e8:	e92d4800 	push	{fp, lr}
800246ec:	e28db004 	add	fp, sp, #4
800246f0:	e59f003c 	ldr	r0, [pc, #60]	@ 80024734 <begin_trans+0x4c>
800246f4:	eb000707 	bl	80026318 <acquire>
800246f8:	ea000002 	b	80024708 <begin_trans+0x20>
800246fc:	e59f1030 	ldr	r1, [pc, #48]	@ 80024734 <begin_trans+0x4c>
80024700:	e59f002c 	ldr	r0, [pc, #44]	@ 80024734 <begin_trans+0x4c>
80024704:	eb0005b0 	bl	80025dcc <sleep>
80024708:	e59f3024 	ldr	r3, [pc, #36]	@ 80024734 <begin_trans+0x4c>
8002470c:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024710:	e3530000 	cmp	r3, #0
80024714:	1afffff8 	bne	800246fc <begin_trans+0x14>
80024718:	e59f3014 	ldr	r3, [pc, #20]	@ 80024734 <begin_trans+0x4c>
8002471c:	e3a02001 	mov	r2, #1
80024720:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024724:	e59f0008 	ldr	r0, [pc, #8]	@ 80024734 <begin_trans+0x4c>
80024728:	eb000705 	bl	80026344 <release>
8002472c:	e1a00000 	nop			@ (mov r0, r0)
80024730:	e8bd8800 	pop	{fp, pc}
80024734:	800ae528 	.word	0x800ae528

80024738 <commit_trans>:
80024738:	e92d4800 	push	{fp, lr}
8002473c:	e28db004 	add	fp, sp, #4
80024740:	e59f304c 	ldr	r3, [pc, #76]	@ 80024794 <commit_trans+0x5c>
80024744:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024748:	e3530000 	cmp	r3, #0
8002474c:	da000005 	ble	80024768 <commit_trans+0x30>
80024750:	ebffffa8 	bl	800245f8 <write_head>
80024754:	ebffff41 	bl	80024460 <install_trans>
80024758:	e59f3034 	ldr	r3, [pc, #52]	@ 80024794 <commit_trans+0x5c>
8002475c:	e3a02000 	mov	r2, #0
80024760:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024764:	ebffffa3 	bl	800245f8 <write_head>
80024768:	e59f0024 	ldr	r0, [pc, #36]	@ 80024794 <commit_trans+0x5c>
8002476c:	eb0006e9 	bl	80026318 <acquire>
80024770:	e59f301c 	ldr	r3, [pc, #28]	@ 80024794 <commit_trans+0x5c>
80024774:	e3a02000 	mov	r2, #0
80024778:	e583203c 	str	r2, [r3, #60]	@ 0x3c
8002477c:	e59f0010 	ldr	r0, [pc, #16]	@ 80024794 <commit_trans+0x5c>
80024780:	eb000625 	bl	8002601c <wakeup>
80024784:	e59f0008 	ldr	r0, [pc, #8]	@ 80024794 <commit_trans+0x5c>
80024788:	eb0006ed 	bl	80026344 <release>
8002478c:	e1a00000 	nop			@ (mov r0, r0)
80024790:	e8bd8800 	pop	{fp, pc}
80024794:	800ae528 	.word	0x800ae528

80024798 <log_write>:
80024798:	e92d4800 	push	{fp, lr}
8002479c:	e28db004 	add	fp, sp, #4
800247a0:	e24dd010 	sub	sp, sp, #16
800247a4:	e50b0010 	str	r0, [fp, #-16]
800247a8:	e59f3164 	ldr	r3, [pc, #356]	@ 80024914 <log_write+0x17c>
800247ac:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800247b0:	e3530009 	cmp	r3, #9
800247b4:	ca000006 	bgt	800247d4 <log_write+0x3c>
800247b8:	e59f3154 	ldr	r3, [pc, #340]	@ 80024914 <log_write+0x17c>
800247bc:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800247c0:	e59f314c 	ldr	r3, [pc, #332]	@ 80024914 <log_write+0x17c>
800247c4:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800247c8:	e2433001 	sub	r3, r3, #1
800247cc:	e1520003 	cmp	r2, r3
800247d0:	ba000001 	blt	800247dc <log_write+0x44>
800247d4:	e59f013c 	ldr	r0, [pc, #316]	@ 80024918 <log_write+0x180>
800247d8:	ebfff4b3 	bl	80021aac <panic>
800247dc:	e59f3130 	ldr	r3, [pc, #304]	@ 80024914 <log_write+0x17c>
800247e0:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800247e4:	e3530000 	cmp	r3, #0
800247e8:	1a000001 	bne	800247f4 <log_write+0x5c>
800247ec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002491c <log_write+0x184>
800247f0:	ebfff4ad 	bl	80021aac <panic>
800247f4:	e3a03000 	mov	r3, #0
800247f8:	e50b3008 	str	r3, [fp, #-8]
800247fc:	ea00000d 	b	80024838 <log_write+0xa0>
80024800:	e59f210c 	ldr	r2, [pc, #268]	@ 80024914 <log_write+0x17c>
80024804:	e51b3008 	ldr	r3, [fp, #-8]
80024808:	e2833010 	add	r3, r3, #16
8002480c:	e1a03103 	lsl	r3, r3, #2
80024810:	e0823003 	add	r3, r2, r3
80024814:	e5933008 	ldr	r3, [r3, #8]
80024818:	e1a02003 	mov	r2, r3
8002481c:	e51b3010 	ldr	r3, [fp, #-16]
80024820:	e5933008 	ldr	r3, [r3, #8]
80024824:	e1520003 	cmp	r2, r3
80024828:	0a000008 	beq	80024850 <log_write+0xb8>
8002482c:	e51b3008 	ldr	r3, [fp, #-8]
80024830:	e2833001 	add	r3, r3, #1
80024834:	e50b3008 	str	r3, [fp, #-8]
80024838:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024914 <log_write+0x17c>
8002483c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024840:	e51b2008 	ldr	r2, [fp, #-8]
80024844:	e1520003 	cmp	r2, r3
80024848:	baffffec 	blt	80024800 <log_write+0x68>
8002484c:	ea000000 	b	80024854 <log_write+0xbc>
80024850:	e1a00000 	nop			@ (mov r0, r0)
80024854:	e51b3010 	ldr	r3, [fp, #-16]
80024858:	e5933008 	ldr	r3, [r3, #8]
8002485c:	e1a01003 	mov	r1, r3
80024860:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024914 <log_write+0x17c>
80024864:	e51b3008 	ldr	r3, [fp, #-8]
80024868:	e2833010 	add	r3, r3, #16
8002486c:	e1a03103 	lsl	r3, r3, #2
80024870:	e0823003 	add	r3, r2, r3
80024874:	e5831008 	str	r1, [r3, #8]
80024878:	e51b3010 	ldr	r3, [fp, #-16]
8002487c:	e5930004 	ldr	r0, [r3, #4]
80024880:	e59f308c 	ldr	r3, [pc, #140]	@ 80024914 <log_write+0x17c>
80024884:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024888:	e51b3008 	ldr	r3, [fp, #-8]
8002488c:	e0823003 	add	r3, r2, r3
80024890:	e2833001 	add	r3, r3, #1
80024894:	e1a01003 	mov	r1, r3
80024898:	ebfff09d 	bl	80020b14 <bread>
8002489c:	e50b000c 	str	r0, [fp, #-12]
800248a0:	e51b300c 	ldr	r3, [fp, #-12]
800248a4:	e2830018 	add	r0, r3, #24
800248a8:	e51b3010 	ldr	r3, [fp, #-16]
800248ac:	e2833018 	add	r3, r3, #24
800248b0:	e3a02c02 	mov	r2, #512	@ 0x200
800248b4:	e1a01003 	mov	r1, r3
800248b8:	ebffee42 	bl	800201c8 <memmove>
800248bc:	e51b000c 	ldr	r0, [fp, #-12]
800248c0:	ebfff0a7 	bl	80020b64 <bwrite>
800248c4:	e51b000c 	ldr	r0, [fp, #-12]
800248c8:	ebfff0bb 	bl	80020bbc <brelse>
800248cc:	e59f3040 	ldr	r3, [pc, #64]	@ 80024914 <log_write+0x17c>
800248d0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800248d4:	e51b2008 	ldr	r2, [fp, #-8]
800248d8:	e1520003 	cmp	r2, r3
800248dc:	1a000004 	bne	800248f4 <log_write+0x15c>
800248e0:	e59f302c 	ldr	r3, [pc, #44]	@ 80024914 <log_write+0x17c>
800248e4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800248e8:	e2833001 	add	r3, r3, #1
800248ec:	e59f2020 	ldr	r2, [pc, #32]	@ 80024914 <log_write+0x17c>
800248f0:	e5823044 	str	r3, [r2, #68]	@ 0x44
800248f4:	e51b3010 	ldr	r3, [fp, #-16]
800248f8:	e5933000 	ldr	r3, [r3]
800248fc:	e3832004 	orr	r2, r3, #4
80024900:	e51b3010 	ldr	r3, [fp, #-16]
80024904:	e5832000 	str	r2, [r3]
80024908:	e1a00000 	nop			@ (mov r0, r0)
8002490c:	e24bd004 	sub	sp, fp, #4
80024910:	e8bd8800 	pop	{fp, pc}
80024914:	800ae528 	.word	0x800ae528
80024918:	8002a0d4 	.word	0x8002a0d4
8002491c:	8002a0ec 	.word	0x8002a0ec

80024920 <kmain>:
80024920:	e92d4800 	push	{fp, lr}
80024924:	e28db004 	add	fp, sp, #4
80024928:	e24dd008 	sub	sp, sp, #8
8002492c:	e59f30a4 	ldr	r3, [pc, #164]	@ 800249d8 <kmain+0xb8>
80024930:	e59f20a4 	ldr	r2, [pc, #164]	@ 800249dc <kmain+0xbc>
80024934:	e5832000 	str	r2, [r3]
80024938:	e59f00a0 	ldr	r0, [pc, #160]	@ 800249e0 <kmain+0xc0>
8002493c:	eb0013ed 	bl	800298f8 <uart_init>
80024940:	e59f309c 	ldr	r3, [pc, #156]	@ 800249e4 <kmain+0xc4>
80024944:	e50b3008 	str	r3, [fp, #-8]
80024948:	eb000ef4 	bl	80028520 <init_vmm>
8002494c:	e59f3094 	ldr	r3, [pc, #148]	@ 800249e8 <kmain+0xc8>
80024950:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024954:	e2833003 	add	r3, r3, #3
80024958:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
8002495c:	e3c33003 	bic	r3, r3, #3
80024960:	e51b1008 	ldr	r1, [fp, #-8]
80024964:	e1a00003 	mov	r0, r3
80024968:	eb000f20 	bl	800285f0 <kpt_freerange>
8002496c:	e51b3008 	ldr	r3, [fp, #-8]
80024970:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024974:	e59f1070 	ldr	r1, [pc, #112]	@ 800249ec <kmain+0xcc>
80024978:	e1a00003 	mov	r0, r3
8002497c:	eb000f1b 	bl	800285f0 <kpt_freerange>
80024980:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024984:	e3a00601 	mov	r0, #1048576	@ 0x100000
80024988:	eb0011dc 	bl	80029100 <paging_init>
8002498c:	ebfff109 	bl	80020db8 <kmem_init>
80024990:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
80024994:	e59f0050 	ldr	r0, [pc, #80]	@ 800249ec <kmain+0xcc>
80024998:	ebfff10f 	bl	80020ddc <kmem_init2>
8002499c:	eb000de3 	bl	80028130 <trap_init>
800249a0:	e59f0048 	ldr	r0, [pc, #72]	@ 800249f0 <kmain+0xd0>
800249a4:	eb0012ef 	bl	80029568 <pic_init>
800249a8:	eb001403 	bl	800299bc <uart_enable_rx>
800249ac:	ebfff644 	bl	800222c4 <consoleinit>
800249b0:	eb0001ca 	bl	800250e0 <pinit>
800249b4:	ebffefc5 	bl	800208d0 <binit>
800249b8:	ebfff78e 	bl	800227f8 <fileinit>
800249bc:	ebfff9ba 	bl	800230ac <iinit>
800249c0:	eb00000b 	bl	800249f4 <ideinit>
800249c4:	e3a0000a 	mov	r0, #10
800249c8:	eb001379 	bl	800297b4 <timer_init>
800249cc:	ebffeee9 	bl	80020578 <sti>
800249d0:	eb000249 	bl	800252fc <userinit>
800249d4:	eb00040f 	bl	80025a18 <scheduler>
800249d8:	800ae678 	.word	0x800ae678
800249dc:	800ae598 	.word	0x800ae598
800249e0:	901f1000 	.word	0x901f1000
800249e4:	800f0000 	.word	0x800f0000
800249e8:	800b1000 	.word	0x800b1000
800249ec:	80100000 	.word	0x80100000
800249f0:	90140000 	.word	0x90140000

800249f4 <ideinit>:
800249f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800249f8:	e28db000 	add	fp, sp, #0
800249fc:	e59f3028 	ldr	r3, [pc, #40]	@ 80024a2c <ideinit+0x38>
80024a00:	e59f2028 	ldr	r2, [pc, #40]	@ 80024a30 <ideinit+0x3c>
80024a04:	e5832000 	str	r2, [r3]
80024a08:	e59f3024 	ldr	r3, [pc, #36]	@ 80024a34 <ideinit+0x40>
80024a0c:	e1a034a3 	lsr	r3, r3, #9
80024a10:	e1a02003 	mov	r2, r3
80024a14:	e59f301c 	ldr	r3, [pc, #28]	@ 80024a38 <ideinit+0x44>
80024a18:	e5832000 	str	r2, [r3]
80024a1c:	e1a00000 	nop			@ (mov r0, r0)
80024a20:	e28bd000 	add	sp, fp, #0
80024a24:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024a28:	e12fff1e 	bx	lr
80024a2c:	800ae680 	.word	0x800ae680
80024a30:	8002b140 	.word	0x8002b140
80024a34:	00080000 	.word	0x00080000
80024a38:	800ae67c 	.word	0x800ae67c

80024a3c <ideintr>:
80024a3c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024a40:	e28db000 	add	fp, sp, #0
80024a44:	e1a00000 	nop			@ (mov r0, r0)
80024a48:	e28bd000 	add	sp, fp, #0
80024a4c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024a50:	e12fff1e 	bx	lr

80024a54 <iderw>:
80024a54:	e92d4800 	push	{fp, lr}
80024a58:	e28db004 	add	fp, sp, #4
80024a5c:	e24dd010 	sub	sp, sp, #16
80024a60:	e50b0010 	str	r0, [fp, #-16]
80024a64:	e51b3010 	ldr	r3, [fp, #-16]
80024a68:	e5933000 	ldr	r3, [r3]
80024a6c:	e2033001 	and	r3, r3, #1
80024a70:	e3530000 	cmp	r3, #0
80024a74:	1a000001 	bne	80024a80 <iderw+0x2c>
80024a78:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024b6c <iderw+0x118>
80024a7c:	ebfff40a 	bl	80021aac <panic>
80024a80:	e51b3010 	ldr	r3, [fp, #-16]
80024a84:	e5933000 	ldr	r3, [r3]
80024a88:	e2033006 	and	r3, r3, #6
80024a8c:	e3530002 	cmp	r3, #2
80024a90:	1a000001 	bne	80024a9c <iderw+0x48>
80024a94:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024b70 <iderw+0x11c>
80024a98:	ebfff403 	bl	80021aac <panic>
80024a9c:	e51b3010 	ldr	r3, [fp, #-16]
80024aa0:	e5933004 	ldr	r3, [r3, #4]
80024aa4:	e3530001 	cmp	r3, #1
80024aa8:	0a000001 	beq	80024ab4 <iderw+0x60>
80024aac:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024b74 <iderw+0x120>
80024ab0:	ebfff3fd 	bl	80021aac <panic>
80024ab4:	e51b3010 	ldr	r3, [fp, #-16]
80024ab8:	e5933008 	ldr	r3, [r3, #8]
80024abc:	e59f20b4 	ldr	r2, [pc, #180]	@ 80024b78 <iderw+0x124>
80024ac0:	e5922000 	ldr	r2, [r2]
80024ac4:	e1530002 	cmp	r3, r2
80024ac8:	3a000001 	bcc	80024ad4 <iderw+0x80>
80024acc:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024b7c <iderw+0x128>
80024ad0:	ebfff3f5 	bl	80021aac <panic>
80024ad4:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024b80 <iderw+0x12c>
80024ad8:	e5932000 	ldr	r2, [r3]
80024adc:	e51b3010 	ldr	r3, [fp, #-16]
80024ae0:	e5933008 	ldr	r3, [r3, #8]
80024ae4:	e1a03483 	lsl	r3, r3, #9
80024ae8:	e0823003 	add	r3, r2, r3
80024aec:	e50b3008 	str	r3, [fp, #-8]
80024af0:	e51b3010 	ldr	r3, [fp, #-16]
80024af4:	e5933000 	ldr	r3, [r3]
80024af8:	e2033004 	and	r3, r3, #4
80024afc:	e3530000 	cmp	r3, #0
80024b00:	0a00000b 	beq	80024b34 <iderw+0xe0>
80024b04:	e51b3010 	ldr	r3, [fp, #-16]
80024b08:	e5933000 	ldr	r3, [r3]
80024b0c:	e3c32004 	bic	r2, r3, #4
80024b10:	e51b3010 	ldr	r3, [fp, #-16]
80024b14:	e5832000 	str	r2, [r3]
80024b18:	e51b3010 	ldr	r3, [fp, #-16]
80024b1c:	e2833018 	add	r3, r3, #24
80024b20:	e3a02c02 	mov	r2, #512	@ 0x200
80024b24:	e1a01003 	mov	r1, r3
80024b28:	e51b0008 	ldr	r0, [fp, #-8]
80024b2c:	ebffeda5 	bl	800201c8 <memmove>
80024b30:	ea000005 	b	80024b4c <iderw+0xf8>
80024b34:	e51b3010 	ldr	r3, [fp, #-16]
80024b38:	e2833018 	add	r3, r3, #24
80024b3c:	e3a02c02 	mov	r2, #512	@ 0x200
80024b40:	e51b1008 	ldr	r1, [fp, #-8]
80024b44:	e1a00003 	mov	r0, r3
80024b48:	ebffed9e 	bl	800201c8 <memmove>
80024b4c:	e51b3010 	ldr	r3, [fp, #-16]
80024b50:	e5933000 	ldr	r3, [r3]
80024b54:	e3832002 	orr	r2, r3, #2
80024b58:	e51b3010 	ldr	r3, [fp, #-16]
80024b5c:	e5832000 	str	r2, [r3]
80024b60:	e1a00000 	nop			@ (mov r0, r0)
80024b64:	e24bd004 	sub	sp, fp, #4
80024b68:	e8bd8800 	pop	{fp, pc}
80024b6c:	8002a104 	.word	0x8002a104
80024b70:	8002a118 	.word	0x8002a118
80024b74:	8002a130 	.word	0x8002a130
80024b78:	800ae67c 	.word	0x800ae67c
80024b7c:	8002a150 	.word	0x8002a150
80024b80:	800ae680 	.word	0x800ae680

80024b84 <pipealloc>:
80024b84:	e92d4800 	push	{fp, lr}
80024b88:	e28db004 	add	fp, sp, #4
80024b8c:	e24dd010 	sub	sp, sp, #16
80024b90:	e50b0010 	str	r0, [fp, #-16]
80024b94:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024b98:	e3a03000 	mov	r3, #0
80024b9c:	e50b3008 	str	r3, [fp, #-8]
80024ba0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ba4:	e3a02000 	mov	r2, #0
80024ba8:	e5832000 	str	r2, [r3]
80024bac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024bb0:	e5932000 	ldr	r2, [r3]
80024bb4:	e51b3010 	ldr	r3, [fp, #-16]
80024bb8:	e5832000 	str	r2, [r3]
80024bbc:	ebfff716 	bl	8002281c <filealloc>
80024bc0:	e1a02000 	mov	r2, r0
80024bc4:	e51b3010 	ldr	r3, [fp, #-16]
80024bc8:	e5832000 	str	r2, [r3]
80024bcc:	e51b3010 	ldr	r3, [fp, #-16]
80024bd0:	e5933000 	ldr	r3, [r3]
80024bd4:	e3530000 	cmp	r3, #0
80024bd8:	0a000042 	beq	80024ce8 <pipealloc+0x164>
80024bdc:	ebfff70e 	bl	8002281c <filealloc>
80024be0:	e1a02000 	mov	r2, r0
80024be4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024be8:	e5832000 	str	r2, [r3]
80024bec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024bf0:	e5933000 	ldr	r3, [r3]
80024bf4:	e3530000 	cmp	r3, #0
80024bf8:	0a00003a 	beq	80024ce8 <pipealloc+0x164>
80024bfc:	e3a00f91 	mov	r0, #580	@ 0x244
80024c00:	ebfff291 	bl	8002164c <get_order>
80024c04:	e1a03000 	mov	r3, r0
80024c08:	e1a00003 	mov	r0, r3
80024c0c:	ebfff204 	bl	80021424 <kmalloc>
80024c10:	e50b0008 	str	r0, [fp, #-8]
80024c14:	e51b3008 	ldr	r3, [fp, #-8]
80024c18:	e3530000 	cmp	r3, #0
80024c1c:	0a000033 	beq	80024cf0 <pipealloc+0x16c>
80024c20:	e51b3008 	ldr	r3, [fp, #-8]
80024c24:	e3a02001 	mov	r2, #1
80024c28:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024c2c:	e51b3008 	ldr	r3, [fp, #-8]
80024c30:	e3a02001 	mov	r2, #1
80024c34:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024c38:	e51b3008 	ldr	r3, [fp, #-8]
80024c3c:	e3a02000 	mov	r2, #0
80024c40:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024c44:	e51b3008 	ldr	r3, [fp, #-8]
80024c48:	e3a02000 	mov	r2, #0
80024c4c:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024c50:	e51b3008 	ldr	r3, [fp, #-8]
80024c54:	e59f110c 	ldr	r1, [pc, #268]	@ 80024d68 <pipealloc+0x1e4>
80024c58:	e1a00003 	mov	r0, r3
80024c5c:	eb00059b 	bl	800262d0 <initlock>
80024c60:	e51b3010 	ldr	r3, [fp, #-16]
80024c64:	e5933000 	ldr	r3, [r3]
80024c68:	e3a02001 	mov	r2, #1
80024c6c:	e5c32000 	strb	r2, [r3]
80024c70:	e51b3010 	ldr	r3, [fp, #-16]
80024c74:	e5933000 	ldr	r3, [r3]
80024c78:	e3a02001 	mov	r2, #1
80024c7c:	e5c32008 	strb	r2, [r3, #8]
80024c80:	e51b3010 	ldr	r3, [fp, #-16]
80024c84:	e5933000 	ldr	r3, [r3]
80024c88:	e3a02000 	mov	r2, #0
80024c8c:	e5c32009 	strb	r2, [r3, #9]
80024c90:	e51b3010 	ldr	r3, [fp, #-16]
80024c94:	e5933000 	ldr	r3, [r3]
80024c98:	e51b2008 	ldr	r2, [fp, #-8]
80024c9c:	e583200c 	str	r2, [r3, #12]
80024ca0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ca4:	e5933000 	ldr	r3, [r3]
80024ca8:	e3a02001 	mov	r2, #1
80024cac:	e5c32000 	strb	r2, [r3]
80024cb0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024cb4:	e5933000 	ldr	r3, [r3]
80024cb8:	e3a02000 	mov	r2, #0
80024cbc:	e5c32008 	strb	r2, [r3, #8]
80024cc0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024cc4:	e5933000 	ldr	r3, [r3]
80024cc8:	e3a02001 	mov	r2, #1
80024ccc:	e5c32009 	strb	r2, [r3, #9]
80024cd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024cd4:	e5933000 	ldr	r3, [r3]
80024cd8:	e51b2008 	ldr	r2, [fp, #-8]
80024cdc:	e583200c 	str	r2, [r3, #12]
80024ce0:	e3a03000 	mov	r3, #0
80024ce4:	ea00001c 	b	80024d5c <pipealloc+0x1d8>
80024ce8:	e1a00000 	nop			@ (mov r0, r0)
80024cec:	ea000000 	b	80024cf4 <pipealloc+0x170>
80024cf0:	e1a00000 	nop			@ (mov r0, r0)
80024cf4:	e51b3008 	ldr	r3, [fp, #-8]
80024cf8:	e3530000 	cmp	r3, #0
80024cfc:	0a000005 	beq	80024d18 <pipealloc+0x194>
80024d00:	e3a00f91 	mov	r0, #580	@ 0x244
80024d04:	ebfff250 	bl	8002164c <get_order>
80024d08:	e1a03000 	mov	r3, r0
80024d0c:	e1a01003 	mov	r1, r3
80024d10:	e51b0008 	ldr	r0, [fp, #-8]
80024d14:	ebfff219 	bl	80021580 <kfree>
80024d18:	e51b3010 	ldr	r3, [fp, #-16]
80024d1c:	e5933000 	ldr	r3, [r3]
80024d20:	e3530000 	cmp	r3, #0
80024d24:	0a000003 	beq	80024d38 <pipealloc+0x1b4>
80024d28:	e51b3010 	ldr	r3, [fp, #-16]
80024d2c:	e5933000 	ldr	r3, [r3]
80024d30:	e1a00003 	mov	r0, r3
80024d34:	ebfff6f4 	bl	8002290c <fileclose>
80024d38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d3c:	e5933000 	ldr	r3, [r3]
80024d40:	e3530000 	cmp	r3, #0
80024d44:	0a000003 	beq	80024d58 <pipealloc+0x1d4>
80024d48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024d4c:	e5933000 	ldr	r3, [r3]
80024d50:	e1a00003 	mov	r0, r3
80024d54:	ebfff6ec 	bl	8002290c <fileclose>
80024d58:	e3e03000 	mvn	r3, #0
80024d5c:	e1a00003 	mov	r0, r3
80024d60:	e24bd004 	sub	sp, fp, #4
80024d64:	e8bd8800 	pop	{fp, pc}
80024d68:	8002a16c 	.word	0x8002a16c

80024d6c <pipeclose>:
80024d6c:	e92d4800 	push	{fp, lr}
80024d70:	e28db004 	add	fp, sp, #4
80024d74:	e24dd008 	sub	sp, sp, #8
80024d78:	e50b0008 	str	r0, [fp, #-8]
80024d7c:	e50b100c 	str	r1, [fp, #-12]
80024d80:	e51b3008 	ldr	r3, [fp, #-8]
80024d84:	e1a00003 	mov	r0, r3
80024d88:	eb000562 	bl	80026318 <acquire>
80024d8c:	e51b300c 	ldr	r3, [fp, #-12]
80024d90:	e3530000 	cmp	r3, #0
80024d94:	0a000007 	beq	80024db8 <pipeclose+0x4c>
80024d98:	e51b3008 	ldr	r3, [fp, #-8]
80024d9c:	e3a02000 	mov	r2, #0
80024da0:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024da4:	e51b3008 	ldr	r3, [fp, #-8]
80024da8:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024dac:	e1a00003 	mov	r0, r3
80024db0:	eb000499 	bl	8002601c <wakeup>
80024db4:	ea000006 	b	80024dd4 <pipeclose+0x68>
80024db8:	e51b3008 	ldr	r3, [fp, #-8]
80024dbc:	e3a02000 	mov	r2, #0
80024dc0:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024dc4:	e51b3008 	ldr	r3, [fp, #-8]
80024dc8:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024dcc:	e1a00003 	mov	r0, r3
80024dd0:	eb000491 	bl	8002601c <wakeup>
80024dd4:	e51b3008 	ldr	r3, [fp, #-8]
80024dd8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024ddc:	e3530000 	cmp	r3, #0
80024de0:	1a00000d 	bne	80024e1c <pipeclose+0xb0>
80024de4:	e51b3008 	ldr	r3, [fp, #-8]
80024de8:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024dec:	e3530000 	cmp	r3, #0
80024df0:	1a000009 	bne	80024e1c <pipeclose+0xb0>
80024df4:	e51b3008 	ldr	r3, [fp, #-8]
80024df8:	e1a00003 	mov	r0, r3
80024dfc:	eb000550 	bl	80026344 <release>
80024e00:	e3a00f91 	mov	r0, #580	@ 0x244
80024e04:	ebfff210 	bl	8002164c <get_order>
80024e08:	e1a03000 	mov	r3, r0
80024e0c:	e1a01003 	mov	r1, r3
80024e10:	e51b0008 	ldr	r0, [fp, #-8]
80024e14:	ebfff1d9 	bl	80021580 <kfree>
80024e18:	ea000003 	b	80024e2c <pipeclose+0xc0>
80024e1c:	e51b3008 	ldr	r3, [fp, #-8]
80024e20:	e1a00003 	mov	r0, r3
80024e24:	eb000546 	bl	80026344 <release>
80024e28:	e1a00000 	nop			@ (mov r0, r0)
80024e2c:	e1a00000 	nop			@ (mov r0, r0)
80024e30:	e24bd004 	sub	sp, fp, #4
80024e34:	e8bd8800 	pop	{fp, pc}

80024e38 <pipewrite>:
80024e38:	e92d4800 	push	{fp, lr}
80024e3c:	e28db004 	add	fp, sp, #4
80024e40:	e24dd018 	sub	sp, sp, #24
80024e44:	e50b0010 	str	r0, [fp, #-16]
80024e48:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024e4c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024e50:	e51b3010 	ldr	r3, [fp, #-16]
80024e54:	e1a00003 	mov	r0, r3
80024e58:	eb00052e 	bl	80026318 <acquire>
80024e5c:	e3a03000 	mov	r3, #0
80024e60:	e50b3008 	str	r3, [fp, #-8]
80024e64:	ea00002b 	b	80024f18 <pipewrite+0xe0>
80024e68:	e51b3010 	ldr	r3, [fp, #-16]
80024e6c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024e70:	e3530000 	cmp	r3, #0
80024e74:	1a000004 	bne	80024e8c <pipewrite+0x54>
80024e78:	e51b3010 	ldr	r3, [fp, #-16]
80024e7c:	e1a00003 	mov	r0, r3
80024e80:	eb00052f 	bl	80026344 <release>
80024e84:	e3e03000 	mvn	r3, #0
80024e88:	ea00002e 	b	80024f48 <pipewrite+0x110>
80024e8c:	e51b3010 	ldr	r3, [fp, #-16]
80024e90:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024e94:	e1a00003 	mov	r0, r3
80024e98:	eb00045f 	bl	8002601c <wakeup>
80024e9c:	e51b3010 	ldr	r3, [fp, #-16]
80024ea0:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024ea4:	e51b2010 	ldr	r2, [fp, #-16]
80024ea8:	e1a01002 	mov	r1, r2
80024eac:	e1a00003 	mov	r0, r3
80024eb0:	eb0003c5 	bl	80025dcc <sleep>
80024eb4:	e51b3010 	ldr	r3, [fp, #-16]
80024eb8:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024ebc:	e51b3010 	ldr	r3, [fp, #-16]
80024ec0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024ec4:	e2833c02 	add	r3, r3, #512	@ 0x200
80024ec8:	e1520003 	cmp	r2, r3
80024ecc:	0affffe5 	beq	80024e68 <pipewrite+0x30>
80024ed0:	e51b3008 	ldr	r3, [fp, #-8]
80024ed4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024ed8:	e0822003 	add	r2, r2, r3
80024edc:	e51b3010 	ldr	r3, [fp, #-16]
80024ee0:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024ee4:	e2830001 	add	r0, r3, #1
80024ee8:	e51b1010 	ldr	r1, [fp, #-16]
80024eec:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024ef0:	e1a03b83 	lsl	r3, r3, #23
80024ef4:	e1a03ba3 	lsr	r3, r3, #23
80024ef8:	e5d21000 	ldrb	r1, [r2]
80024efc:	e51b2010 	ldr	r2, [fp, #-16]
80024f00:	e0823003 	add	r3, r2, r3
80024f04:	e1a02001 	mov	r2, r1
80024f08:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024f0c:	e51b3008 	ldr	r3, [fp, #-8]
80024f10:	e2833001 	add	r3, r3, #1
80024f14:	e50b3008 	str	r3, [fp, #-8]
80024f18:	e51b2008 	ldr	r2, [fp, #-8]
80024f1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024f20:	e1520003 	cmp	r2, r3
80024f24:	baffffe2 	blt	80024eb4 <pipewrite+0x7c>
80024f28:	e51b3010 	ldr	r3, [fp, #-16]
80024f2c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024f30:	e1a00003 	mov	r0, r3
80024f34:	eb000438 	bl	8002601c <wakeup>
80024f38:	e51b3010 	ldr	r3, [fp, #-16]
80024f3c:	e1a00003 	mov	r0, r3
80024f40:	eb0004ff 	bl	80026344 <release>
80024f44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024f48:	e1a00003 	mov	r0, r3
80024f4c:	e24bd004 	sub	sp, fp, #4
80024f50:	e8bd8800 	pop	{fp, pc}

80024f54 <piperead>:
80024f54:	e92d4800 	push	{fp, lr}
80024f58:	e28db004 	add	fp, sp, #4
80024f5c:	e24dd018 	sub	sp, sp, #24
80024f60:	e50b0010 	str	r0, [fp, #-16]
80024f64:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024f68:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024f6c:	e51b3010 	ldr	r3, [fp, #-16]
80024f70:	e1a00003 	mov	r0, r3
80024f74:	eb0004e7 	bl	80026318 <acquire>
80024f78:	ea00000f 	b	80024fbc <piperead+0x68>
80024f7c:	e59f310c 	ldr	r3, [pc, #268]	@ 80025090 <piperead+0x13c>
80024f80:	e5933000 	ldr	r3, [r3]
80024f84:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024f88:	e3530000 	cmp	r3, #0
80024f8c:	0a000004 	beq	80024fa4 <piperead+0x50>
80024f90:	e51b3010 	ldr	r3, [fp, #-16]
80024f94:	e1a00003 	mov	r0, r3
80024f98:	eb0004e9 	bl	80026344 <release>
80024f9c:	e3e03000 	mvn	r3, #0
80024fa0:	ea000037 	b	80025084 <piperead+0x130>
80024fa4:	e51b3010 	ldr	r3, [fp, #-16]
80024fa8:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024fac:	e51b2010 	ldr	r2, [fp, #-16]
80024fb0:	e1a01002 	mov	r1, r2
80024fb4:	e1a00003 	mov	r0, r3
80024fb8:	eb000383 	bl	80025dcc <sleep>
80024fbc:	e51b3010 	ldr	r3, [fp, #-16]
80024fc0:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024fc4:	e51b3010 	ldr	r3, [fp, #-16]
80024fc8:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024fcc:	e1520003 	cmp	r2, r3
80024fd0:	1a000003 	bne	80024fe4 <piperead+0x90>
80024fd4:	e51b3010 	ldr	r3, [fp, #-16]
80024fd8:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024fdc:	e3530000 	cmp	r3, #0
80024fe0:	1affffe5 	bne	80024f7c <piperead+0x28>
80024fe4:	e3a03000 	mov	r3, #0
80024fe8:	e50b3008 	str	r3, [fp, #-8]
80024fec:	ea000016 	b	8002504c <piperead+0xf8>
80024ff0:	e51b3010 	ldr	r3, [fp, #-16]
80024ff4:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024ff8:	e51b3010 	ldr	r3, [fp, #-16]
80024ffc:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80025000:	e1520003 	cmp	r2, r3
80025004:	0a000015 	beq	80025060 <piperead+0x10c>
80025008:	e51b3010 	ldr	r3, [fp, #-16]
8002500c:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80025010:	e2831001 	add	r1, r3, #1
80025014:	e51b2010 	ldr	r2, [fp, #-16]
80025018:	e5821234 	str	r1, [r2, #564]	@ 0x234
8002501c:	e1a03b83 	lsl	r3, r3, #23
80025020:	e1a03ba3 	lsr	r3, r3, #23
80025024:	e51b2008 	ldr	r2, [fp, #-8]
80025028:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002502c:	e0812002 	add	r2, r1, r2
80025030:	e51b1010 	ldr	r1, [fp, #-16]
80025034:	e0813003 	add	r3, r1, r3
80025038:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
8002503c:	e5c23000 	strb	r3, [r2]
80025040:	e51b3008 	ldr	r3, [fp, #-8]
80025044:	e2833001 	add	r3, r3, #1
80025048:	e50b3008 	str	r3, [fp, #-8]
8002504c:	e51b2008 	ldr	r2, [fp, #-8]
80025050:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025054:	e1520003 	cmp	r2, r3
80025058:	baffffe4 	blt	80024ff0 <piperead+0x9c>
8002505c:	ea000000 	b	80025064 <piperead+0x110>
80025060:	e1a00000 	nop			@ (mov r0, r0)
80025064:	e51b3010 	ldr	r3, [fp, #-16]
80025068:	e2833f8e 	add	r3, r3, #568	@ 0x238
8002506c:	e1a00003 	mov	r0, r3
80025070:	eb0003e9 	bl	8002601c <wakeup>
80025074:	e51b3010 	ldr	r3, [fp, #-16]
80025078:	e1a00003 	mov	r0, r3
8002507c:	eb0004b0 	bl	80026344 <release>
80025080:	e51b3008 	ldr	r3, [fp, #-8]
80025084:	e1a00003 	mov	r0, r3
80025088:	e24bd004 	sub	sp, fp, #4
8002508c:	e8bd8800 	pop	{fp, pc}
80025090:	800b0dc0 	.word	0x800b0dc0

80025094 <rand>:
80025094:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025098:	e28db000 	add	fp, sp, #0
8002509c:	e59f3034 	ldr	r3, [pc, #52]	@ 800250d8 <rand+0x44>
800250a0:	e5933000 	ldr	r3, [r3]
800250a4:	e59f2030 	ldr	r2, [pc, #48]	@ 800250dc <rand+0x48>
800250a8:	e0030392 	mul	r3, r2, r3
800250ac:	e2833a03 	add	r3, r3, #12288	@ 0x3000
800250b0:	e2833039 	add	r3, r3, #57	@ 0x39
800250b4:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
800250b8:	e59f2018 	ldr	r2, [pc, #24]	@ 800250d8 <rand+0x44>
800250bc:	e5823000 	str	r3, [r2]
800250c0:	e59f3010 	ldr	r3, [pc, #16]	@ 800250d8 <rand+0x44>
800250c4:	e5933000 	ldr	r3, [r3]
800250c8:	e1a00003 	mov	r0, r3
800250cc:	e28bd000 	add	sp, fp, #0
800250d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800250d4:	e12fff1e 	bx	lr
800250d8:	800ae684 	.word	0x800ae684
800250dc:	41c64e6d 	.word	0x41c64e6d

800250e0 <pinit>:
800250e0:	e92d4800 	push	{fp, lr}
800250e4:	e28db004 	add	fp, sp, #4
800250e8:	e59f100c 	ldr	r1, [pc, #12]	@ 800250fc <pinit+0x1c>
800250ec:	e59f000c 	ldr	r0, [pc, #12]	@ 80025100 <pinit+0x20>
800250f0:	eb000476 	bl	800262d0 <initlock>
800250f4:	e1a00000 	nop			@ (mov r0, r0)
800250f8:	e8bd8800 	pop	{fp, pc}
800250fc:	8002a174 	.word	0x8002a174
80025100:	800ae688 	.word	0x800ae688

80025104 <allocproc>:
80025104:	e92d4800 	push	{fp, lr}
80025108:	e28db004 	add	fp, sp, #4
8002510c:	e24dd008 	sub	sp, sp, #8
80025110:	e59f01b8 	ldr	r0, [pc, #440]	@ 800252d0 <allocproc+0x1cc>
80025114:	eb00047f 	bl	80026318 <acquire>
80025118:	e59f31b4 	ldr	r3, [pc, #436]	@ 800252d4 <allocproc+0x1d0>
8002511c:	e50b3008 	str	r3, [fp, #-8]
80025120:	ea000006 	b	80025140 <allocproc+0x3c>
80025124:	e51b3008 	ldr	r3, [fp, #-8]
80025128:	e5d3300c 	ldrb	r3, [r3, #12]
8002512c:	e3530000 	cmp	r3, #0
80025130:	0a00000a 	beq	80025160 <allocproc+0x5c>
80025134:	e51b3008 	ldr	r3, [fp, #-8]
80025138:	e283309c 	add	r3, r3, #156	@ 0x9c
8002513c:	e50b3008 	str	r3, [fp, #-8]
80025140:	e51b3008 	ldr	r3, [fp, #-8]
80025144:	e59f218c 	ldr	r2, [pc, #396]	@ 800252d8 <allocproc+0x1d4>
80025148:	e1530002 	cmp	r3, r2
8002514c:	3afffff4 	bcc	80025124 <allocproc+0x20>
80025150:	e59f0178 	ldr	r0, [pc, #376]	@ 800252d0 <allocproc+0x1cc>
80025154:	eb00047a 	bl	80026344 <release>
80025158:	e3a03000 	mov	r3, #0
8002515c:	ea000058 	b	800252c4 <allocproc+0x1c0>
80025160:	e1a00000 	nop			@ (mov r0, r0)
80025164:	e51b3008 	ldr	r3, [fp, #-8]
80025168:	e3a02001 	mov	r2, #1
8002516c:	e5c3200c 	strb	r2, [r3, #12]
80025170:	e59f3164 	ldr	r3, [pc, #356]	@ 800252dc <allocproc+0x1d8>
80025174:	e5933000 	ldr	r3, [r3]
80025178:	e2832001 	add	r2, r3, #1
8002517c:	e59f1158 	ldr	r1, [pc, #344]	@ 800252dc <allocproc+0x1d8>
80025180:	e5812000 	str	r2, [r1]
80025184:	e51b2008 	ldr	r2, [fp, #-8]
80025188:	e5823010 	str	r3, [r2, #16]
8002518c:	e51b3008 	ldr	r3, [fp, #-8]
80025190:	e3a02000 	mov	r2, #0
80025194:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80025198:	e51b3008 	ldr	r3, [fp, #-8]
8002519c:	e3a02001 	mov	r2, #1
800251a0:	e5832080 	str	r2, [r3, #128]	@ 0x80
800251a4:	e51b3008 	ldr	r3, [fp, #-8]
800251a8:	e3a02000 	mov	r2, #0
800251ac:	e5832094 	str	r2, [r3, #148]	@ 0x94
800251b0:	e51b3008 	ldr	r3, [fp, #-8]
800251b4:	e3a02000 	mov	r2, #0
800251b8:	e5832084 	str	r2, [r3, #132]	@ 0x84
800251bc:	e51b3008 	ldr	r3, [fp, #-8]
800251c0:	e3a02000 	mov	r2, #0
800251c4:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800251c8:	e51b3008 	ldr	r3, [fp, #-8]
800251cc:	e3a02000 	mov	r2, #0
800251d0:	e5832088 	str	r2, [r3, #136]	@ 0x88
800251d4:	e51b3008 	ldr	r3, [fp, #-8]
800251d8:	e3a02000 	mov	r2, #0
800251dc:	e5832090 	str	r2, [r3, #144]	@ 0x90
800251e0:	e59f00e8 	ldr	r0, [pc, #232]	@ 800252d0 <allocproc+0x1cc>
800251e4:	eb000456 	bl	80026344 <release>
800251e8:	ebfff110 	bl	80021630 <alloc_page>
800251ec:	e1a02000 	mov	r2, r0
800251f0:	e51b3008 	ldr	r3, [fp, #-8]
800251f4:	e5832008 	str	r2, [r3, #8]
800251f8:	e51b3008 	ldr	r3, [fp, #-8]
800251fc:	e5933008 	ldr	r3, [r3, #8]
80025200:	e3530000 	cmp	r3, #0
80025204:	1a000004 	bne	8002521c <allocproc+0x118>
80025208:	e51b3008 	ldr	r3, [fp, #-8]
8002520c:	e3a02000 	mov	r2, #0
80025210:	e5c3200c 	strb	r2, [r3, #12]
80025214:	e3a03000 	mov	r3, #0
80025218:	ea000029 	b	800252c4 <allocproc+0x1c0>
8002521c:	e51b3008 	ldr	r3, [fp, #-8]
80025220:	e5933008 	ldr	r3, [r3, #8]
80025224:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80025228:	e50b300c 	str	r3, [fp, #-12]
8002522c:	e51b300c 	ldr	r3, [fp, #-12]
80025230:	e2433048 	sub	r3, r3, #72	@ 0x48
80025234:	e50b300c 	str	r3, [fp, #-12]
80025238:	e51b3008 	ldr	r3, [fp, #-8]
8002523c:	e51b200c 	ldr	r2, [fp, #-12]
80025240:	e5832018 	str	r2, [r3, #24]
80025244:	e51b300c 	ldr	r3, [fp, #-12]
80025248:	e2433004 	sub	r3, r3, #4
8002524c:	e50b300c 	str	r3, [fp, #-12]
80025250:	e59f2088 	ldr	r2, [pc, #136]	@ 800252e0 <allocproc+0x1dc>
80025254:	e51b300c 	ldr	r3, [fp, #-12]
80025258:	e5832000 	str	r2, [r3]
8002525c:	e51b300c 	ldr	r3, [fp, #-12]
80025260:	e2433004 	sub	r3, r3, #4
80025264:	e50b300c 	str	r3, [fp, #-12]
80025268:	e51b3008 	ldr	r3, [fp, #-8]
8002526c:	e5933008 	ldr	r3, [r3, #8]
80025270:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80025274:	e51b300c 	ldr	r3, [fp, #-12]
80025278:	e5832000 	str	r2, [r3]
8002527c:	e51b300c 	ldr	r3, [fp, #-12]
80025280:	e2433028 	sub	r3, r3, #40	@ 0x28
80025284:	e50b300c 	str	r3, [fp, #-12]
80025288:	e51b3008 	ldr	r3, [fp, #-8]
8002528c:	e51b200c 	ldr	r2, [fp, #-12]
80025290:	e583201c 	str	r2, [r3, #28]
80025294:	e51b3008 	ldr	r3, [fp, #-8]
80025298:	e593301c 	ldr	r3, [r3, #28]
8002529c:	e3a02028 	mov	r2, #40	@ 0x28
800252a0:	e3a01000 	mov	r1, #0
800252a4:	e1a00003 	mov	r0, r3
800252a8:	ebffeb54 	bl	80020000 <memset>
800252ac:	e59f2030 	ldr	r2, [pc, #48]	@ 800252e4 <allocproc+0x1e0>
800252b0:	e51b3008 	ldr	r3, [fp, #-8]
800252b4:	e593301c 	ldr	r3, [r3, #28]
800252b8:	e2822004 	add	r2, r2, #4
800252bc:	e5832024 	str	r2, [r3, #36]	@ 0x24
800252c0:	e51b3008 	ldr	r3, [fp, #-8]
800252c4:	e1a00003 	mov	r0, r3
800252c8:	e24bd004 	sub	sp, fp, #4
800252cc:	e8bd8800 	pop	{fp, pc}
800252d0:	800ae688 	.word	0x800ae688
800252d4:	800ae6bc 	.word	0x800ae6bc
800252d8:	800b0dbc 	.word	0x800b0dbc
800252dc:	8002b05c 	.word	0x8002b05c
800252e0:	80027d60 	.word	0x80027d60
800252e4:	80025d8c 	.word	0x80025d8c

800252e8 <error_init>:
800252e8:	e92d4800 	push	{fp, lr}
800252ec:	e28db004 	add	fp, sp, #4
800252f0:	e59f0000 	ldr	r0, [pc]	@ 800252f8 <error_init+0x10>
800252f4:	ebfff1ec 	bl	80021aac <panic>
800252f8:	8002a17c 	.word	0x8002a17c

800252fc <userinit>:
800252fc:	e92d4810 	push	{r4, fp, lr}
80025300:	e28db008 	add	fp, sp, #8
80025304:	e24dd00c 	sub	sp, sp, #12
80025308:	ebffff7d 	bl	80025104 <allocproc>
8002530c:	e50b0010 	str	r0, [fp, #-16]
80025310:	e59f210c 	ldr	r2, [pc, #268]	@ 80025424 <userinit+0x128>
80025314:	e51b3010 	ldr	r3, [fp, #-16]
80025318:	e5823000 	str	r3, [r2]
8002531c:	eb000cc7 	bl	80028640 <kpt_alloc>
80025320:	e1a02000 	mov	r2, r0
80025324:	e51b3010 	ldr	r3, [fp, #-16]
80025328:	e5832004 	str	r2, [r3, #4]
8002532c:	e51b3010 	ldr	r3, [fp, #-16]
80025330:	e5933004 	ldr	r3, [r3, #4]
80025334:	e3530000 	cmp	r3, #0
80025338:	1a000001 	bne	80025344 <userinit+0x48>
8002533c:	e59f00e4 	ldr	r0, [pc, #228]	@ 80025428 <userinit+0x12c>
80025340:	ebfff1d9 	bl	80021aac <panic>
80025344:	e51b3010 	ldr	r3, [fp, #-16]
80025348:	e5933004 	ldr	r3, [r3, #4]
8002534c:	e59f20d8 	ldr	r2, [pc, #216]	@ 8002542c <userinit+0x130>
80025350:	e59f10d8 	ldr	r1, [pc, #216]	@ 80025430 <userinit+0x134>
80025354:	e1a00003 	mov	r0, r3
80025358:	eb000d76 	bl	80028938 <inituvm>
8002535c:	e51b3010 	ldr	r3, [fp, #-16]
80025360:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025364:	e5832000 	str	r2, [r3]
80025368:	e51b3010 	ldr	r3, [fp, #-16]
8002536c:	e5933018 	ldr	r3, [r3, #24]
80025370:	e3a02048 	mov	r2, #72	@ 0x48
80025374:	e3a01000 	mov	r1, #0
80025378:	e1a00003 	mov	r0, r3
8002537c:	ebffeb1f 	bl	80020000 <memset>
80025380:	e51b3010 	ldr	r3, [fp, #-16]
80025384:	e5933018 	ldr	r3, [r3, #24]
80025388:	e59f20a4 	ldr	r2, [pc, #164]	@ 80025434 <userinit+0x138>
8002538c:	e5832008 	str	r2, [r3, #8]
80025390:	e51b3010 	ldr	r3, [fp, #-16]
80025394:	e5934018 	ldr	r4, [r3, #24]
80025398:	ebffec84 	bl	800205b0 <spsr_usr>
8002539c:	e1a03000 	mov	r3, r0
800253a0:	e584300c 	str	r3, [r4, #12]
800253a4:	e51b3010 	ldr	r3, [fp, #-16]
800253a8:	e5933018 	ldr	r3, [r3, #24]
800253ac:	e3a02a01 	mov	r2, #4096	@ 0x1000
800253b0:	e5832000 	str	r2, [r3]
800253b4:	e51b3010 	ldr	r3, [fp, #-16]
800253b8:	e5933018 	ldr	r3, [r3, #24]
800253bc:	e3a02000 	mov	r2, #0
800253c0:	e5832004 	str	r2, [r3, #4]
800253c4:	e51b3010 	ldr	r3, [fp, #-16]
800253c8:	e5933018 	ldr	r3, [r3, #24]
800253cc:	e3a02000 	mov	r2, #0
800253d0:	e5832044 	str	r2, [r3, #68]	@ 0x44
800253d4:	e51b3010 	ldr	r3, [fp, #-16]
800253d8:	e283306c 	add	r3, r3, #108	@ 0x6c
800253dc:	e3a02010 	mov	r2, #16
800253e0:	e59f1050 	ldr	r1, [pc, #80]	@ 80025438 <userinit+0x13c>
800253e4:	e1a00003 	mov	r0, r3
800253e8:	ebffec18 	bl	80020450 <safestrcpy>
800253ec:	e59f0048 	ldr	r0, [pc, #72]	@ 8002543c <userinit+0x140>
800253f0:	ebfffbe3 	bl	80024384 <namei>
800253f4:	e1a02000 	mov	r2, r0
800253f8:	e51b3010 	ldr	r3, [fp, #-16]
800253fc:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025400:	e51b3010 	ldr	r3, [fp, #-16]
80025404:	e3a02001 	mov	r2, #1
80025408:	e5832080 	str	r2, [r3, #128]	@ 0x80
8002540c:	e51b3010 	ldr	r3, [fp, #-16]
80025410:	e3a02003 	mov	r2, #3
80025414:	e5c3200c 	strb	r2, [r3, #12]
80025418:	e1a00000 	nop			@ (mov r0, r0)
8002541c:	e24bd008 	sub	sp, fp, #8
80025420:	e8bd8810 	pop	{r4, fp, pc}
80025424:	800b0dbc 	.word	0x800b0dbc
80025428:	8002a19c 	.word	0x8002a19c
8002542c:	00000034 	.word	0x00000034
80025430:	8002b10c 	.word	0x8002b10c
80025434:	800252e8 	.word	0x800252e8
80025438:	8002a1b8 	.word	0x8002a1b8
8002543c:	8002a1c4 	.word	0x8002a1c4

80025440 <growproc>:
80025440:	e92d4800 	push	{fp, lr}
80025444:	e28db004 	add	fp, sp, #4
80025448:	e24dd010 	sub	sp, sp, #16
8002544c:	e50b0010 	str	r0, [fp, #-16]
80025450:	e59f30c0 	ldr	r3, [pc, #192]	@ 80025518 <growproc+0xd8>
80025454:	e5933000 	ldr	r3, [r3]
80025458:	e5933000 	ldr	r3, [r3]
8002545c:	e50b3008 	str	r3, [fp, #-8]
80025460:	e51b3010 	ldr	r3, [fp, #-16]
80025464:	e3530000 	cmp	r3, #0
80025468:	da00000b 	ble	8002549c <growproc+0x5c>
8002546c:	e51b2010 	ldr	r2, [fp, #-16]
80025470:	e51b3008 	ldr	r3, [fp, #-8]
80025474:	e0823003 	add	r3, r2, r3
80025478:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
8002547c:	9a000001 	bls	80025488 <growproc+0x48>
80025480:	e3e03000 	mvn	r3, #0
80025484:	ea000020 	b	8002550c <growproc+0xcc>
80025488:	e51b3010 	ldr	r3, [fp, #-16]
8002548c:	e51b2008 	ldr	r2, [fp, #-8]
80025490:	e0823003 	add	r3, r2, r3
80025494:	e50b3008 	str	r3, [fp, #-8]
80025498:	ea000012 	b	800254e8 <growproc+0xa8>
8002549c:	e51b3010 	ldr	r3, [fp, #-16]
800254a0:	e3530000 	cmp	r3, #0
800254a4:	aa00000f 	bge	800254e8 <growproc+0xa8>
800254a8:	e59f3068 	ldr	r3, [pc, #104]	@ 80025518 <growproc+0xd8>
800254ac:	e5933000 	ldr	r3, [r3]
800254b0:	e5930004 	ldr	r0, [r3, #4]
800254b4:	e51b2010 	ldr	r2, [fp, #-16]
800254b8:	e51b3008 	ldr	r3, [fp, #-8]
800254bc:	e0823003 	add	r3, r2, r3
800254c0:	e1a02003 	mov	r2, r3
800254c4:	e51b1008 	ldr	r1, [fp, #-8]
800254c8:	eb000dc7 	bl	80028bec <deallocuvm>
800254cc:	e1a03000 	mov	r3, r0
800254d0:	e50b3008 	str	r3, [fp, #-8]
800254d4:	e51b3008 	ldr	r3, [fp, #-8]
800254d8:	e3530000 	cmp	r3, #0
800254dc:	1a000001 	bne	800254e8 <growproc+0xa8>
800254e0:	e3e03000 	mvn	r3, #0
800254e4:	ea000008 	b	8002550c <growproc+0xcc>
800254e8:	e59f3028 	ldr	r3, [pc, #40]	@ 80025518 <growproc+0xd8>
800254ec:	e5933000 	ldr	r3, [r3]
800254f0:	e51b2008 	ldr	r2, [fp, #-8]
800254f4:	e5832000 	str	r2, [r3]
800254f8:	e59f3018 	ldr	r3, [pc, #24]	@ 80025518 <growproc+0xd8>
800254fc:	e5933000 	ldr	r3, [r3]
80025500:	e1a00003 	mov	r0, r3
80025504:	eb000cf4 	bl	800288dc <switchuvm>
80025508:	e3a03000 	mov	r3, #0
8002550c:	e1a00003 	mov	r0, r3
80025510:	e24bd004 	sub	sp, fp, #4
80025514:	e8bd8800 	pop	{fp, pc}
80025518:	800b0dc0 	.word	0x800b0dc0

8002551c <fork>:
8002551c:	e92d4800 	push	{fp, lr}
80025520:	e28db004 	add	fp, sp, #4
80025524:	e24dd010 	sub	sp, sp, #16
80025528:	ebfffef5 	bl	80025104 <allocproc>
8002552c:	e50b000c 	str	r0, [fp, #-12]
80025530:	e51b300c 	ldr	r3, [fp, #-12]
80025534:	e3530000 	cmp	r3, #0
80025538:	1a000001 	bne	80025544 <fork+0x28>
8002553c:	e3e03000 	mvn	r3, #0
80025540:	ea000076 	b	80025720 <fork+0x204>
80025544:	e59f31e0 	ldr	r3, [pc, #480]	@ 8002572c <fork+0x210>
80025548:	e5933000 	ldr	r3, [r3]
8002554c:	e5932004 	ldr	r2, [r3, #4]
80025550:	e59f31d4 	ldr	r3, [pc, #468]	@ 8002572c <fork+0x210>
80025554:	e5933000 	ldr	r3, [r3]
80025558:	e5933000 	ldr	r3, [r3]
8002555c:	e1a01003 	mov	r1, r3
80025560:	e1a00002 	mov	r0, r2
80025564:	eb000e2f 	bl	80028e28 <copyuvm>
80025568:	e1a02000 	mov	r2, r0
8002556c:	e51b300c 	ldr	r3, [fp, #-12]
80025570:	e5832004 	str	r2, [r3, #4]
80025574:	e51b300c 	ldr	r3, [fp, #-12]
80025578:	e5933004 	ldr	r3, [r3, #4]
8002557c:	e3530000 	cmp	r3, #0
80025580:	1a00000b 	bne	800255b4 <fork+0x98>
80025584:	e51b300c 	ldr	r3, [fp, #-12]
80025588:	e5933008 	ldr	r3, [r3, #8]
8002558c:	e1a00003 	mov	r0, r3
80025590:	ebfff01c 	bl	80021608 <free_page>
80025594:	e51b300c 	ldr	r3, [fp, #-12]
80025598:	e3a02000 	mov	r2, #0
8002559c:	e5832008 	str	r2, [r3, #8]
800255a0:	e51b300c 	ldr	r3, [fp, #-12]
800255a4:	e3a02000 	mov	r2, #0
800255a8:	e5c3200c 	strb	r2, [r3, #12]
800255ac:	e3e03000 	mvn	r3, #0
800255b0:	ea00005a 	b	80025720 <fork+0x204>
800255b4:	e59f3170 	ldr	r3, [pc, #368]	@ 8002572c <fork+0x210>
800255b8:	e5933000 	ldr	r3, [r3]
800255bc:	e5932000 	ldr	r2, [r3]
800255c0:	e51b300c 	ldr	r3, [fp, #-12]
800255c4:	e5832000 	str	r2, [r3]
800255c8:	e59f315c 	ldr	r3, [pc, #348]	@ 8002572c <fork+0x210>
800255cc:	e5932000 	ldr	r2, [r3]
800255d0:	e51b300c 	ldr	r3, [fp, #-12]
800255d4:	e5832014 	str	r2, [r3, #20]
800255d8:	e59f314c 	ldr	r3, [pc, #332]	@ 8002572c <fork+0x210>
800255dc:	e5933000 	ldr	r3, [r3]
800255e0:	e5932018 	ldr	r2, [r3, #24]
800255e4:	e51b300c 	ldr	r3, [fp, #-12]
800255e8:	e5933018 	ldr	r3, [r3, #24]
800255ec:	e1a00003 	mov	r0, r3
800255f0:	e1a01002 	mov	r1, r2
800255f4:	e3a03048 	mov	r3, #72	@ 0x48
800255f8:	e1a02003 	mov	r2, r3
800255fc:	ebffeb30 	bl	800202c4 <memcpy>
80025600:	e51b300c 	ldr	r3, [fp, #-12]
80025604:	e5933018 	ldr	r3, [r3, #24]
80025608:	e3a02000 	mov	r2, #0
8002560c:	e5832010 	str	r2, [r3, #16]
80025610:	e59f3114 	ldr	r3, [pc, #276]	@ 8002572c <fork+0x210>
80025614:	e5933000 	ldr	r3, [r3]
80025618:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
8002561c:	e51b300c 	ldr	r3, [fp, #-12]
80025620:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025624:	e51b300c 	ldr	r3, [fp, #-12]
80025628:	e3a02000 	mov	r2, #0
8002562c:	e5832094 	str	r2, [r3, #148]	@ 0x94
80025630:	e51b300c 	ldr	r3, [fp, #-12]
80025634:	e3a02000 	mov	r2, #0
80025638:	e5832084 	str	r2, [r3, #132]	@ 0x84
8002563c:	e51b300c 	ldr	r3, [fp, #-12]
80025640:	e3a02000 	mov	r2, #0
80025644:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80025648:	e51b300c 	ldr	r3, [fp, #-12]
8002564c:	e3a02000 	mov	r2, #0
80025650:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025654:	e3a03000 	mov	r3, #0
80025658:	e50b3008 	str	r3, [fp, #-8]
8002565c:	ea000015 	b	800256b8 <fork+0x19c>
80025660:	e59f30c4 	ldr	r3, [pc, #196]	@ 8002572c <fork+0x210>
80025664:	e5933000 	ldr	r3, [r3]
80025668:	e51b2008 	ldr	r2, [fp, #-8]
8002566c:	e282200a 	add	r2, r2, #10
80025670:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025674:	e3530000 	cmp	r3, #0
80025678:	0a00000b 	beq	800256ac <fork+0x190>
8002567c:	e59f30a8 	ldr	r3, [pc, #168]	@ 8002572c <fork+0x210>
80025680:	e5933000 	ldr	r3, [r3]
80025684:	e51b2008 	ldr	r2, [fp, #-8]
80025688:	e282200a 	add	r2, r2, #10
8002568c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025690:	e1a00003 	mov	r0, r3
80025694:	ebfff483 	bl	800228a8 <filedup>
80025698:	e1a01000 	mov	r1, r0
8002569c:	e51b300c 	ldr	r3, [fp, #-12]
800256a0:	e51b2008 	ldr	r2, [fp, #-8]
800256a4:	e282200a 	add	r2, r2, #10
800256a8:	e7831102 	str	r1, [r3, r2, lsl #2]
800256ac:	e51b3008 	ldr	r3, [fp, #-8]
800256b0:	e2833001 	add	r3, r3, #1
800256b4:	e50b3008 	str	r3, [fp, #-8]
800256b8:	e51b3008 	ldr	r3, [fp, #-8]
800256bc:	e353000f 	cmp	r3, #15
800256c0:	daffffe6 	ble	80025660 <fork+0x144>
800256c4:	e59f3060 	ldr	r3, [pc, #96]	@ 8002572c <fork+0x210>
800256c8:	e5933000 	ldr	r3, [r3]
800256cc:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800256d0:	e1a00003 	mov	r0, r3
800256d4:	ebfff745 	bl	800233f0 <idup>
800256d8:	e1a02000 	mov	r2, r0
800256dc:	e51b300c 	ldr	r3, [fp, #-12]
800256e0:	e5832068 	str	r2, [r3, #104]	@ 0x68
800256e4:	e51b300c 	ldr	r3, [fp, #-12]
800256e8:	e5933010 	ldr	r3, [r3, #16]
800256ec:	e50b3010 	str	r3, [fp, #-16]
800256f0:	e51b300c 	ldr	r3, [fp, #-12]
800256f4:	e3a02003 	mov	r2, #3
800256f8:	e5c3200c 	strb	r2, [r3, #12]
800256fc:	e51b300c 	ldr	r3, [fp, #-12]
80025700:	e283006c 	add	r0, r3, #108	@ 0x6c
80025704:	e59f3020 	ldr	r3, [pc, #32]	@ 8002572c <fork+0x210>
80025708:	e5933000 	ldr	r3, [r3]
8002570c:	e283306c 	add	r3, r3, #108	@ 0x6c
80025710:	e3a02010 	mov	r2, #16
80025714:	e1a01003 	mov	r1, r3
80025718:	ebffeb4c 	bl	80020450 <safestrcpy>
8002571c:	e51b3010 	ldr	r3, [fp, #-16]
80025720:	e1a00003 	mov	r0, r3
80025724:	e24bd004 	sub	sp, fp, #4
80025728:	e8bd8800 	pop	{fp, pc}
8002572c:	800b0dc0 	.word	0x800b0dc0

80025730 <exit>:
80025730:	e92d4800 	push	{fp, lr}
80025734:	e28db004 	add	fp, sp, #4
80025738:	e24dd008 	sub	sp, sp, #8
8002573c:	e59f3158 	ldr	r3, [pc, #344]	@ 8002589c <exit+0x16c>
80025740:	e5932000 	ldr	r2, [r3]
80025744:	e59f3154 	ldr	r3, [pc, #340]	@ 800258a0 <exit+0x170>
80025748:	e5933000 	ldr	r3, [r3]
8002574c:	e1520003 	cmp	r2, r3
80025750:	1a000001 	bne	8002575c <exit+0x2c>
80025754:	e59f0148 	ldr	r0, [pc, #328]	@ 800258a4 <exit+0x174>
80025758:	ebfff0d3 	bl	80021aac <panic>
8002575c:	e3a03000 	mov	r3, #0
80025760:	e50b300c 	str	r3, [fp, #-12]
80025764:	ea000016 	b	800257c4 <exit+0x94>
80025768:	e59f312c 	ldr	r3, [pc, #300]	@ 8002589c <exit+0x16c>
8002576c:	e5933000 	ldr	r3, [r3]
80025770:	e51b200c 	ldr	r2, [fp, #-12]
80025774:	e282200a 	add	r2, r2, #10
80025778:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002577c:	e3530000 	cmp	r3, #0
80025780:	0a00000c 	beq	800257b8 <exit+0x88>
80025784:	e59f3110 	ldr	r3, [pc, #272]	@ 8002589c <exit+0x16c>
80025788:	e5933000 	ldr	r3, [r3]
8002578c:	e51b200c 	ldr	r2, [fp, #-12]
80025790:	e282200a 	add	r2, r2, #10
80025794:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025798:	e1a00003 	mov	r0, r3
8002579c:	ebfff45a 	bl	8002290c <fileclose>
800257a0:	e59f30f4 	ldr	r3, [pc, #244]	@ 8002589c <exit+0x16c>
800257a4:	e5933000 	ldr	r3, [r3]
800257a8:	e51b200c 	ldr	r2, [fp, #-12]
800257ac:	e282200a 	add	r2, r2, #10
800257b0:	e3a01000 	mov	r1, #0
800257b4:	e7831102 	str	r1, [r3, r2, lsl #2]
800257b8:	e51b300c 	ldr	r3, [fp, #-12]
800257bc:	e2833001 	add	r3, r3, #1
800257c0:	e50b300c 	str	r3, [fp, #-12]
800257c4:	e51b300c 	ldr	r3, [fp, #-12]
800257c8:	e353000f 	cmp	r3, #15
800257cc:	daffffe5 	ble	80025768 <exit+0x38>
800257d0:	e59f30c4 	ldr	r3, [pc, #196]	@ 8002589c <exit+0x16c>
800257d4:	e5933000 	ldr	r3, [r3]
800257d8:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800257dc:	e1a00003 	mov	r0, r3
800257e0:	ebfff79a 	bl	80023650 <iput>
800257e4:	e59f30b0 	ldr	r3, [pc, #176]	@ 8002589c <exit+0x16c>
800257e8:	e5933000 	ldr	r3, [r3]
800257ec:	e3a02000 	mov	r2, #0
800257f0:	e5832068 	str	r2, [r3, #104]	@ 0x68
800257f4:	e59f00ac 	ldr	r0, [pc, #172]	@ 800258a8 <exit+0x178>
800257f8:	eb0002c6 	bl	80026318 <acquire>
800257fc:	e59f3098 	ldr	r3, [pc, #152]	@ 8002589c <exit+0x16c>
80025800:	e5933000 	ldr	r3, [r3]
80025804:	e5933014 	ldr	r3, [r3, #20]
80025808:	e1a00003 	mov	r0, r3
8002580c:	eb0001ac 	bl	80025ec4 <wakeup1>
80025810:	e59f3094 	ldr	r3, [pc, #148]	@ 800258ac <exit+0x17c>
80025814:	e50b3008 	str	r3, [fp, #-8]
80025818:	ea000014 	b	80025870 <exit+0x140>
8002581c:	e51b3008 	ldr	r3, [fp, #-8]
80025820:	e5932014 	ldr	r2, [r3, #20]
80025824:	e59f3070 	ldr	r3, [pc, #112]	@ 8002589c <exit+0x16c>
80025828:	e5933000 	ldr	r3, [r3]
8002582c:	e1520003 	cmp	r2, r3
80025830:	1a00000b 	bne	80025864 <exit+0x134>
80025834:	e59f3064 	ldr	r3, [pc, #100]	@ 800258a0 <exit+0x170>
80025838:	e5932000 	ldr	r2, [r3]
8002583c:	e51b3008 	ldr	r3, [fp, #-8]
80025840:	e5832014 	str	r2, [r3, #20]
80025844:	e51b3008 	ldr	r3, [fp, #-8]
80025848:	e5d3300c 	ldrb	r3, [r3, #12]
8002584c:	e3530005 	cmp	r3, #5
80025850:	1a000003 	bne	80025864 <exit+0x134>
80025854:	e59f3044 	ldr	r3, [pc, #68]	@ 800258a0 <exit+0x170>
80025858:	e5933000 	ldr	r3, [r3]
8002585c:	e1a00003 	mov	r0, r3
80025860:	eb000197 	bl	80025ec4 <wakeup1>
80025864:	e51b3008 	ldr	r3, [fp, #-8]
80025868:	e283309c 	add	r3, r3, #156	@ 0x9c
8002586c:	e50b3008 	str	r3, [fp, #-8]
80025870:	e51b3008 	ldr	r3, [fp, #-8]
80025874:	e59f2034 	ldr	r2, [pc, #52]	@ 800258b0 <exit+0x180>
80025878:	e1530002 	cmp	r3, r2
8002587c:	3affffe6 	bcc	8002581c <exit+0xec>
80025880:	e59f3014 	ldr	r3, [pc, #20]	@ 8002589c <exit+0x16c>
80025884:	e5933000 	ldr	r3, [r3]
80025888:	e3a02005 	mov	r2, #5
8002588c:	e5c3200c 	strb	r2, [r3, #12]
80025890:	eb0000f5 	bl	80025c6c <sched>
80025894:	e59f0018 	ldr	r0, [pc, #24]	@ 800258b4 <exit+0x184>
80025898:	ebfff083 	bl	80021aac <panic>
8002589c:	800b0dc0 	.word	0x800b0dc0
800258a0:	800b0dbc 	.word	0x800b0dbc
800258a4:	8002a1c8 	.word	0x8002a1c8
800258a8:	800ae688 	.word	0x800ae688
800258ac:	800ae6bc 	.word	0x800ae6bc
800258b0:	800b0dbc 	.word	0x800b0dbc
800258b4:	8002a1d8 	.word	0x8002a1d8

800258b8 <wait>:
800258b8:	e92d4800 	push	{fp, lr}
800258bc:	e28db004 	add	fp, sp, #4
800258c0:	e24dd010 	sub	sp, sp, #16
800258c4:	e59f013c 	ldr	r0, [pc, #316]	@ 80025a08 <wait+0x150>
800258c8:	eb000292 	bl	80026318 <acquire>
800258cc:	e3a03000 	mov	r3, #0
800258d0:	e50b300c 	str	r3, [fp, #-12]
800258d4:	e59f3130 	ldr	r3, [pc, #304]	@ 80025a0c <wait+0x154>
800258d8:	e50b3008 	str	r3, [fp, #-8]
800258dc:	ea000030 	b	800259a4 <wait+0xec>
800258e0:	e51b3008 	ldr	r3, [fp, #-8]
800258e4:	e5932014 	ldr	r2, [r3, #20]
800258e8:	e59f3120 	ldr	r3, [pc, #288]	@ 80025a10 <wait+0x158>
800258ec:	e5933000 	ldr	r3, [r3]
800258f0:	e1520003 	cmp	r2, r3
800258f4:	1a000026 	bne	80025994 <wait+0xdc>
800258f8:	e3a03001 	mov	r3, #1
800258fc:	e50b300c 	str	r3, [fp, #-12]
80025900:	e51b3008 	ldr	r3, [fp, #-8]
80025904:	e5d3300c 	ldrb	r3, [r3, #12]
80025908:	e3530005 	cmp	r3, #5
8002590c:	1a000021 	bne	80025998 <wait+0xe0>
80025910:	e51b3008 	ldr	r3, [fp, #-8]
80025914:	e5933010 	ldr	r3, [r3, #16]
80025918:	e50b3010 	str	r3, [fp, #-16]
8002591c:	e51b3008 	ldr	r3, [fp, #-8]
80025920:	e5933008 	ldr	r3, [r3, #8]
80025924:	e1a00003 	mov	r0, r3
80025928:	ebffef36 	bl	80021608 <free_page>
8002592c:	e51b3008 	ldr	r3, [fp, #-8]
80025930:	e3a02000 	mov	r2, #0
80025934:	e5832008 	str	r2, [r3, #8]
80025938:	e51b3008 	ldr	r3, [fp, #-8]
8002593c:	e5933004 	ldr	r3, [r3, #4]
80025940:	e1a00003 	mov	r0, r3
80025944:	eb000cee 	bl	80028d04 <freevm>
80025948:	e51b3008 	ldr	r3, [fp, #-8]
8002594c:	e3a02000 	mov	r2, #0
80025950:	e5c3200c 	strb	r2, [r3, #12]
80025954:	e51b3008 	ldr	r3, [fp, #-8]
80025958:	e3a02000 	mov	r2, #0
8002595c:	e5832010 	str	r2, [r3, #16]
80025960:	e51b3008 	ldr	r3, [fp, #-8]
80025964:	e3a02000 	mov	r2, #0
80025968:	e5832014 	str	r2, [r3, #20]
8002596c:	e51b3008 	ldr	r3, [fp, #-8]
80025970:	e3a02000 	mov	r2, #0
80025974:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80025978:	e51b3008 	ldr	r3, [fp, #-8]
8002597c:	e3a02000 	mov	r2, #0
80025980:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025984:	e59f007c 	ldr	r0, [pc, #124]	@ 80025a08 <wait+0x150>
80025988:	eb00026d 	bl	80026344 <release>
8002598c:	e51b3010 	ldr	r3, [fp, #-16]
80025990:	ea000019 	b	800259fc <wait+0x144>
80025994:	e1a00000 	nop			@ (mov r0, r0)
80025998:	e51b3008 	ldr	r3, [fp, #-8]
8002599c:	e283309c 	add	r3, r3, #156	@ 0x9c
800259a0:	e50b3008 	str	r3, [fp, #-8]
800259a4:	e51b3008 	ldr	r3, [fp, #-8]
800259a8:	e59f2064 	ldr	r2, [pc, #100]	@ 80025a14 <wait+0x15c>
800259ac:	e1530002 	cmp	r3, r2
800259b0:	3affffca 	bcc	800258e0 <wait+0x28>
800259b4:	e51b300c 	ldr	r3, [fp, #-12]
800259b8:	e3530000 	cmp	r3, #0
800259bc:	0a000004 	beq	800259d4 <wait+0x11c>
800259c0:	e59f3048 	ldr	r3, [pc, #72]	@ 80025a10 <wait+0x158>
800259c4:	e5933000 	ldr	r3, [r3]
800259c8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800259cc:	e3530000 	cmp	r3, #0
800259d0:	0a000003 	beq	800259e4 <wait+0x12c>
800259d4:	e59f002c 	ldr	r0, [pc, #44]	@ 80025a08 <wait+0x150>
800259d8:	eb000259 	bl	80026344 <release>
800259dc:	e3e03000 	mvn	r3, #0
800259e0:	ea000005 	b	800259fc <wait+0x144>
800259e4:	e59f3024 	ldr	r3, [pc, #36]	@ 80025a10 <wait+0x158>
800259e8:	e5933000 	ldr	r3, [r3]
800259ec:	e59f1014 	ldr	r1, [pc, #20]	@ 80025a08 <wait+0x150>
800259f0:	e1a00003 	mov	r0, r3
800259f4:	eb0000f4 	bl	80025dcc <sleep>
800259f8:	eaffffb3 	b	800258cc <wait+0x14>
800259fc:	e1a00003 	mov	r0, r3
80025a00:	e24bd004 	sub	sp, fp, #4
80025a04:	e8bd8800 	pop	{fp, pc}
80025a08:	800ae688 	.word	0x800ae688
80025a0c:	800ae6bc 	.word	0x800ae6bc
80025a10:	800b0dc0 	.word	0x800b0dc0
80025a14:	800b0dbc 	.word	0x800b0dbc

80025a18 <scheduler>:
80025a18:	e92d4800 	push	{fp, lr}
80025a1c:	e28db004 	add	fp, sp, #4
80025a20:	e24ddf8a 	sub	sp, sp, #552	@ 0x228
80025a24:	ebffead3 	bl	80020578 <sti>
80025a28:	e59f0228 	ldr	r0, [pc, #552]	@ 80025c58 <scheduler+0x240>
80025a2c:	eb000239 	bl	80026318 <acquire>
80025a30:	e3a03000 	mov	r3, #0
80025a34:	e50b300c 	str	r3, [fp, #-12]
80025a38:	e3a03000 	mov	r3, #0
80025a3c:	e50b3010 	str	r3, [fp, #-16]
80025a40:	e59f3214 	ldr	r3, [pc, #532]	@ 80025c5c <scheduler+0x244>
80025a44:	e50b3008 	str	r3, [fp, #-8]
80025a48:	ea000034 	b	80025b20 <scheduler+0x108>
80025a4c:	e51b3008 	ldr	r3, [fp, #-8]
80025a50:	e5d3300c 	ldrb	r3, [r3, #12]
80025a54:	e3530003 	cmp	r3, #3
80025a58:	1a00002c 	bne	80025b10 <scheduler+0xf8>
80025a5c:	e51b3008 	ldr	r3, [fp, #-8]
80025a60:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80025a64:	e3530000 	cmp	r3, #0
80025a68:	c3a03001 	movgt	r3, #1
80025a6c:	d3a03000 	movle	r3, #0
80025a70:	e6ef3073 	uxtb	r3, r3
80025a74:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80025a78:	e51b3008 	ldr	r3, [fp, #-8]
80025a7c:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
80025a80:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80025a84:	e3530000 	cmp	r3, #0
80025a88:	0a000001 	beq	80025a94 <scheduler+0x7c>
80025a8c:	e3a03002 	mov	r3, #2
80025a90:	ea000000 	b	80025a98 <scheduler+0x80>
80025a94:	e3a03001 	mov	r3, #1
80025a98:	e0030392 	mul	r3, r2, r3
80025a9c:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80025aa0:	e51b3010 	ldr	r3, [fp, #-16]
80025aa4:	e1a03103 	lsl	r3, r3, #2
80025aa8:	e2433004 	sub	r3, r3, #4
80025aac:	e083300b 	add	r3, r3, fp
80025ab0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80025ab4:	e5032124 	str	r2, [r3, #-292]	@ 0xfffffedc
80025ab8:	e51b3010 	ldr	r3, [fp, #-16]
80025abc:	e1a03103 	lsl	r3, r3, #2
80025ac0:	e2433004 	sub	r3, r3, #4
80025ac4:	e083300b 	add	r3, r3, fp
80025ac8:	e51b2008 	ldr	r2, [fp, #-8]
80025acc:	e5032224 	str	r2, [r3, #-548]	@ 0xfffffddc
80025ad0:	e51b3010 	ldr	r3, [fp, #-16]
80025ad4:	e2833001 	add	r3, r3, #1
80025ad8:	e50b3010 	str	r3, [fp, #-16]
80025adc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80025ae0:	e3530000 	cmp	r3, #0
80025ae4:	0a000004 	beq	80025afc <scheduler+0xe4>
80025ae8:	e51b3008 	ldr	r3, [fp, #-8]
80025aec:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80025af0:	e2432001 	sub	r2, r3, #1
80025af4:	e51b3008 	ldr	r3, [fp, #-8]
80025af8:	e5832094 	str	r2, [r3, #148]	@ 0x94
80025afc:	e51b200c 	ldr	r2, [fp, #-12]
80025b00:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80025b04:	e0823003 	add	r3, r2, r3
80025b08:	e50b300c 	str	r3, [fp, #-12]
80025b0c:	ea000000 	b	80025b14 <scheduler+0xfc>
80025b10:	e1a00000 	nop			@ (mov r0, r0)
80025b14:	e51b3008 	ldr	r3, [fp, #-8]
80025b18:	e283309c 	add	r3, r3, #156	@ 0x9c
80025b1c:	e50b3008 	str	r3, [fp, #-8]
80025b20:	e51b3008 	ldr	r3, [fp, #-8]
80025b24:	e59f2134 	ldr	r2, [pc, #308]	@ 80025c60 <scheduler+0x248>
80025b28:	e1530002 	cmp	r3, r2
80025b2c:	3affffc6 	bcc	80025a4c <scheduler+0x34>
80025b30:	e51b300c 	ldr	r3, [fp, #-12]
80025b34:	e3530000 	cmp	r3, #0
80025b38:	da000043 	ble	80025c4c <scheduler+0x234>
80025b3c:	ebfffd54 	bl	80025094 <rand>
80025b40:	e1a02000 	mov	r2, r0
80025b44:	e51b300c 	ldr	r3, [fp, #-12]
80025b48:	e1a01003 	mov	r1, r3
80025b4c:	e1a00002 	mov	r0, r2
80025b50:	eb001025 	bl	80029bec <__aeabi_uidivmod>
80025b54:	e1a03001 	mov	r3, r1
80025b58:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80025b5c:	e3a03000 	mov	r3, #0
80025b60:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025b64:	e3a03000 	mov	r3, #0
80025b68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025b6c:	e3a03000 	mov	r3, #0
80025b70:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025b74:	ea000015 	b	80025bd0 <scheduler+0x1b8>
80025b78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025b7c:	e1a03103 	lsl	r3, r3, #2
80025b80:	e2433004 	sub	r3, r3, #4
80025b84:	e083300b 	add	r3, r3, fp
80025b88:	e5133124 	ldr	r3, [r3, #-292]	@ 0xfffffedc
80025b8c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025b90:	e0823003 	add	r3, r2, r3
80025b94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025b98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80025b9c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80025ba0:	e1520003 	cmp	r2, r3
80025ba4:	da000006 	ble	80025bc4 <scheduler+0x1ac>
80025ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025bac:	e1a03103 	lsl	r3, r3, #2
80025bb0:	e2433004 	sub	r3, r3, #4
80025bb4:	e083300b 	add	r3, r3, fp
80025bb8:	e5133224 	ldr	r3, [r3, #-548]	@ 0xfffffddc
80025bbc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025bc0:	ea000006 	b	80025be0 <scheduler+0x1c8>
80025bc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025bc8:	e2833001 	add	r3, r3, #1
80025bcc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025bd0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80025bd4:	e51b3010 	ldr	r3, [fp, #-16]
80025bd8:	e1520003 	cmp	r2, r3
80025bdc:	baffffe5 	blt	80025b78 <scheduler+0x160>
80025be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025be4:	e3530000 	cmp	r3, #0
80025be8:	0a000017 	beq	80025c4c <scheduler+0x234>
80025bec:	e59f2070 	ldr	r2, [pc, #112]	@ 80025c64 <scheduler+0x24c>
80025bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025bf4:	e5823000 	str	r3, [r2]
80025bf8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80025bfc:	eb000b36 	bl	800288dc <switchuvm>
80025c00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c04:	e3a02004 	mov	r2, #4
80025c08:	e5c3200c 	strb	r2, [r3, #12]
80025c0c:	e59f3054 	ldr	r3, [pc, #84]	@ 80025c68 <scheduler+0x250>
80025c10:	e5933000 	ldr	r3, [r3]
80025c14:	e2832004 	add	r2, r3, #4
80025c18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c1c:	e593301c 	ldr	r3, [r3, #28]
80025c20:	e1a01003 	mov	r1, r3
80025c24:	e1a00002 	mov	r0, r2
80025c28:	eb0001da 	bl	80026398 <swtch>
80025c2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c30:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025c34:	e2832001 	add	r2, r3, #1
80025c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c3c:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025c40:	e59f301c 	ldr	r3, [pc, #28]	@ 80025c64 <scheduler+0x24c>
80025c44:	e3a02000 	mov	r2, #0
80025c48:	e5832000 	str	r2, [r3]
80025c4c:	e59f0004 	ldr	r0, [pc, #4]	@ 80025c58 <scheduler+0x240>
80025c50:	eb0001bb 	bl	80026344 <release>
80025c54:	eaffff72 	b	80025a24 <scheduler+0xc>
80025c58:	800ae688 	.word	0x800ae688
80025c5c:	800ae6bc 	.word	0x800ae6bc
80025c60:	800b0dbc 	.word	0x800b0dbc
80025c64:	800b0dc0 	.word	0x800b0dc0
80025c68:	800ae678 	.word	0x800ae678

80025c6c <sched>:
80025c6c:	e92d4800 	push	{fp, lr}
80025c70:	e28db004 	add	fp, sp, #4
80025c74:	e24dd008 	sub	sp, sp, #8
80025c78:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025d34 <sched+0xc8>
80025c7c:	eb0001bb 	bl	80026370 <holding>
80025c80:	e1a03000 	mov	r3, r0
80025c84:	e3530000 	cmp	r3, #0
80025c88:	1a000001 	bne	80025c94 <sched+0x28>
80025c8c:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025d38 <sched+0xcc>
80025c90:	ebffef85 	bl	80021aac <panic>
80025c94:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025d3c <sched+0xd0>
80025c98:	e5933000 	ldr	r3, [r3]
80025c9c:	e593300c 	ldr	r3, [r3, #12]
80025ca0:	e3530001 	cmp	r3, #1
80025ca4:	0a000001 	beq	80025cb0 <sched+0x44>
80025ca8:	e59f0090 	ldr	r0, [pc, #144]	@ 80025d40 <sched+0xd4>
80025cac:	ebffef7e 	bl	80021aac <panic>
80025cb0:	e59f308c 	ldr	r3, [pc, #140]	@ 80025d44 <sched+0xd8>
80025cb4:	e5933000 	ldr	r3, [r3]
80025cb8:	e5d3300c 	ldrb	r3, [r3, #12]
80025cbc:	e3530004 	cmp	r3, #4
80025cc0:	1a000001 	bne	80025ccc <sched+0x60>
80025cc4:	e59f007c 	ldr	r0, [pc, #124]	@ 80025d48 <sched+0xdc>
80025cc8:	ebffef77 	bl	80021aac <panic>
80025ccc:	ebffea47 	bl	800205f0 <int_enabled>
80025cd0:	e1a03000 	mov	r3, r0
80025cd4:	e3530000 	cmp	r3, #0
80025cd8:	0a000001 	beq	80025ce4 <sched+0x78>
80025cdc:	e59f0068 	ldr	r0, [pc, #104]	@ 80025d4c <sched+0xe0>
80025ce0:	ebffef71 	bl	80021aac <panic>
80025ce4:	e59f3050 	ldr	r3, [pc, #80]	@ 80025d3c <sched+0xd0>
80025ce8:	e5933000 	ldr	r3, [r3]
80025cec:	e5933010 	ldr	r3, [r3, #16]
80025cf0:	e50b3008 	str	r3, [fp, #-8]
80025cf4:	e59f3048 	ldr	r3, [pc, #72]	@ 80025d44 <sched+0xd8>
80025cf8:	e5933000 	ldr	r3, [r3]
80025cfc:	e283201c 	add	r2, r3, #28
80025d00:	e59f3034 	ldr	r3, [pc, #52]	@ 80025d3c <sched+0xd0>
80025d04:	e5933000 	ldr	r3, [r3]
80025d08:	e5933004 	ldr	r3, [r3, #4]
80025d0c:	e1a01003 	mov	r1, r3
80025d10:	e1a00002 	mov	r0, r2
80025d14:	eb00019f 	bl	80026398 <swtch>
80025d18:	e59f301c 	ldr	r3, [pc, #28]	@ 80025d3c <sched+0xd0>
80025d1c:	e5933000 	ldr	r3, [r3]
80025d20:	e51b2008 	ldr	r2, [fp, #-8]
80025d24:	e5832010 	str	r2, [r3, #16]
80025d28:	e1a00000 	nop			@ (mov r0, r0)
80025d2c:	e24bd004 	sub	sp, fp, #4
80025d30:	e8bd8800 	pop	{fp, pc}
80025d34:	800ae688 	.word	0x800ae688
80025d38:	8002a1e4 	.word	0x8002a1e4
80025d3c:	800ae678 	.word	0x800ae678
80025d40:	8002a1f8 	.word	0x8002a1f8
80025d44:	800b0dc0 	.word	0x800b0dc0
80025d48:	8002a204 	.word	0x8002a204
80025d4c:	8002a214 	.word	0x8002a214

80025d50 <yield>:
80025d50:	e92d4800 	push	{fp, lr}
80025d54:	e28db004 	add	fp, sp, #4
80025d58:	e59f0024 	ldr	r0, [pc, #36]	@ 80025d84 <yield+0x34>
80025d5c:	eb00016d 	bl	80026318 <acquire>
80025d60:	e59f3020 	ldr	r3, [pc, #32]	@ 80025d88 <yield+0x38>
80025d64:	e5933000 	ldr	r3, [r3]
80025d68:	e3a02003 	mov	r2, #3
80025d6c:	e5c3200c 	strb	r2, [r3, #12]
80025d70:	ebffffbd 	bl	80025c6c <sched>
80025d74:	e59f0008 	ldr	r0, [pc, #8]	@ 80025d84 <yield+0x34>
80025d78:	eb000171 	bl	80026344 <release>
80025d7c:	e1a00000 	nop			@ (mov r0, r0)
80025d80:	e8bd8800 	pop	{fp, pc}
80025d84:	800ae688 	.word	0x800ae688
80025d88:	800b0dc0 	.word	0x800b0dc0

80025d8c <forkret>:
80025d8c:	e92d4800 	push	{fp, lr}
80025d90:	e28db004 	add	fp, sp, #4
80025d94:	e59f0028 	ldr	r0, [pc, #40]	@ 80025dc4 <forkret+0x38>
80025d98:	eb000169 	bl	80026344 <release>
80025d9c:	e59f3024 	ldr	r3, [pc, #36]	@ 80025dc8 <forkret+0x3c>
80025da0:	e5933000 	ldr	r3, [r3]
80025da4:	e3530000 	cmp	r3, #0
80025da8:	0a000003 	beq	80025dbc <forkret+0x30>
80025dac:	e59f3014 	ldr	r3, [pc, #20]	@ 80025dc8 <forkret+0x3c>
80025db0:	e3a02000 	mov	r2, #0
80025db4:	e5832000 	str	r2, [r3]
80025db8:	ebfff98b 	bl	800243ec <initlog>
80025dbc:	e1a00000 	nop			@ (mov r0, r0)
80025dc0:	e8bd8800 	pop	{fp, pc}
80025dc4:	800ae688 	.word	0x800ae688
80025dc8:	8002b060 	.word	0x8002b060

80025dcc <sleep>:
80025dcc:	e92d4800 	push	{fp, lr}
80025dd0:	e28db004 	add	fp, sp, #4
80025dd4:	e24dd008 	sub	sp, sp, #8
80025dd8:	e50b0008 	str	r0, [fp, #-8]
80025ddc:	e50b100c 	str	r1, [fp, #-12]
80025de0:	e59f30c8 	ldr	r3, [pc, #200]	@ 80025eb0 <sleep+0xe4>
80025de4:	e5933000 	ldr	r3, [r3]
80025de8:	e3530000 	cmp	r3, #0
80025dec:	1a000001 	bne	80025df8 <sleep+0x2c>
80025df0:	e59f00bc 	ldr	r0, [pc, #188]	@ 80025eb4 <sleep+0xe8>
80025df4:	ebffef2c 	bl	80021aac <panic>
80025df8:	e51b300c 	ldr	r3, [fp, #-12]
80025dfc:	e3530000 	cmp	r3, #0
80025e00:	1a000001 	bne	80025e0c <sleep+0x40>
80025e04:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025eb8 <sleep+0xec>
80025e08:	ebffef27 	bl	80021aac <panic>
80025e0c:	e51b300c 	ldr	r3, [fp, #-12]
80025e10:	e59f20a4 	ldr	r2, [pc, #164]	@ 80025ebc <sleep+0xf0>
80025e14:	e1530002 	cmp	r3, r2
80025e18:	0a000003 	beq	80025e2c <sleep+0x60>
80025e1c:	e59f0098 	ldr	r0, [pc, #152]	@ 80025ebc <sleep+0xf0>
80025e20:	eb00013c 	bl	80026318 <acquire>
80025e24:	e51b000c 	ldr	r0, [fp, #-12]
80025e28:	eb000145 	bl	80026344 <release>
80025e2c:	e51b3008 	ldr	r3, [fp, #-8]
80025e30:	e59f2088 	ldr	r2, [pc, #136]	@ 80025ec0 <sleep+0xf4>
80025e34:	e1530002 	cmp	r3, r2
80025e38:	1a000004 	bne	80025e50 <sleep+0x84>
80025e3c:	e59f306c 	ldr	r3, [pc, #108]	@ 80025eb0 <sleep+0xe4>
80025e40:	e5933000 	ldr	r3, [r3]
80025e44:	e59f2074 	ldr	r2, [pc, #116]	@ 80025ec0 <sleep+0xf4>
80025e48:	e5922000 	ldr	r2, [r2]
80025e4c:	e5832098 	str	r2, [r3, #152]	@ 0x98
80025e50:	e59f3058 	ldr	r3, [pc, #88]	@ 80025eb0 <sleep+0xe4>
80025e54:	e5933000 	ldr	r3, [r3]
80025e58:	e51b2008 	ldr	r2, [fp, #-8]
80025e5c:	e5832020 	str	r2, [r3, #32]
80025e60:	e59f3048 	ldr	r3, [pc, #72]	@ 80025eb0 <sleep+0xe4>
80025e64:	e5933000 	ldr	r3, [r3]
80025e68:	e3a02002 	mov	r2, #2
80025e6c:	e5c3200c 	strb	r2, [r3, #12]
80025e70:	ebffff7d 	bl	80025c6c <sched>
80025e74:	e59f3034 	ldr	r3, [pc, #52]	@ 80025eb0 <sleep+0xe4>
80025e78:	e5933000 	ldr	r3, [r3]
80025e7c:	e3a02000 	mov	r2, #0
80025e80:	e5832020 	str	r2, [r3, #32]
80025e84:	e51b300c 	ldr	r3, [fp, #-12]
80025e88:	e59f202c 	ldr	r2, [pc, #44]	@ 80025ebc <sleep+0xf0>
80025e8c:	e1530002 	cmp	r3, r2
80025e90:	0a000003 	beq	80025ea4 <sleep+0xd8>
80025e94:	e59f0020 	ldr	r0, [pc, #32]	@ 80025ebc <sleep+0xf0>
80025e98:	eb000129 	bl	80026344 <release>
80025e9c:	e51b000c 	ldr	r0, [fp, #-12]
80025ea0:	eb00011c 	bl	80026318 <acquire>
80025ea4:	e1a00000 	nop			@ (mov r0, r0)
80025ea8:	e24bd004 	sub	sp, fp, #4
80025eac:	e8bd8800 	pop	{fp, pc}
80025eb0:	800b0dc0 	.word	0x800b0dc0
80025eb4:	8002a228 	.word	0x8002a228
80025eb8:	8002a230 	.word	0x8002a230
80025ebc:	800ae688 	.word	0x800ae688
80025ec0:	800b0eb8 	.word	0x800b0eb8

80025ec4 <wakeup1>:
80025ec4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025ec8:	e28db000 	add	fp, sp, #0
80025ecc:	e24dd014 	sub	sp, sp, #20
80025ed0:	e50b0010 	str	r0, [fp, #-16]
80025ed4:	e59f3134 	ldr	r3, [pc, #308]	@ 80026010 <wakeup1+0x14c>
80025ed8:	e50b3008 	str	r3, [fp, #-8]
80025edc:	ea000042 	b	80025fec <wakeup1+0x128>
80025ee0:	e51b3008 	ldr	r3, [fp, #-8]
80025ee4:	e5d3300c 	ldrb	r3, [r3, #12]
80025ee8:	e3530002 	cmp	r3, #2
80025eec:	1a00003b 	bne	80025fe0 <wakeup1+0x11c>
80025ef0:	e51b3008 	ldr	r3, [fp, #-8]
80025ef4:	e5933020 	ldr	r3, [r3, #32]
80025ef8:	e51b2010 	ldr	r2, [fp, #-16]
80025efc:	e1520003 	cmp	r2, r3
80025f00:	1a000036 	bne	80025fe0 <wakeup1+0x11c>
80025f04:	e51b3010 	ldr	r3, [fp, #-16]
80025f08:	e59f2104 	ldr	r2, [pc, #260]	@ 80026014 <wakeup1+0x150>
80025f0c:	e1530002 	cmp	r3, r2
80025f10:	1a000027 	bne	80025fb4 <wakeup1+0xf0>
80025f14:	e51b3008 	ldr	r3, [fp, #-8]
80025f18:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80025f1c:	e3530000 	cmp	r3, #0
80025f20:	0a000005 	beq	80025f3c <wakeup1+0x78>
80025f24:	e51b3008 	ldr	r3, [fp, #-8]
80025f28:	e5932090 	ldr	r2, [r3, #144]	@ 0x90
80025f2c:	e59f30e0 	ldr	r3, [pc, #224]	@ 80026014 <wakeup1+0x150>
80025f30:	e5933000 	ldr	r3, [r3]
80025f34:	e1520003 	cmp	r2, r3
80025f38:	8a000027 	bhi	80025fdc <wakeup1+0x118>
80025f3c:	e51b3008 	ldr	r3, [fp, #-8]
80025f40:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
80025f44:	e3530000 	cmp	r3, #0
80025f48:	0a000019 	beq	80025fb4 <wakeup1+0xf0>
80025f4c:	e59f30c0 	ldr	r3, [pc, #192]	@ 80026014 <wakeup1+0x150>
80025f50:	e5932000 	ldr	r2, [r3]
80025f54:	e51b3008 	ldr	r3, [fp, #-8]
80025f58:	e5933098 	ldr	r3, [r3, #152]	@ 0x98
80025f5c:	e0423003 	sub	r3, r2, r3
80025f60:	e50b300c 	str	r3, [fp, #-12]
80025f64:	e51b300c 	ldr	r3, [fp, #-12]
80025f68:	e3530000 	cmp	r3, #0
80025f6c:	da00000d 	ble	80025fa8 <wakeup1+0xe4>
80025f70:	e51b3008 	ldr	r3, [fp, #-8]
80025f74:	e5933094 	ldr	r3, [r3, #148]	@ 0x94
80025f78:	e3530000 	cmp	r3, #0
80025f7c:	da000006 	ble	80025f9c <wakeup1+0xd8>
80025f80:	e51b3008 	ldr	r3, [fp, #-8]
80025f84:	e5932094 	ldr	r2, [r3, #148]	@ 0x94
80025f88:	e51b300c 	ldr	r3, [fp, #-12]
80025f8c:	e0822003 	add	r2, r2, r3
80025f90:	e51b3008 	ldr	r3, [fp, #-8]
80025f94:	e5832094 	str	r2, [r3, #148]	@ 0x94
80025f98:	ea000002 	b	80025fa8 <wakeup1+0xe4>
80025f9c:	e51b3008 	ldr	r3, [fp, #-8]
80025fa0:	e51b200c 	ldr	r2, [fp, #-12]
80025fa4:	e5832094 	str	r2, [r3, #148]	@ 0x94
80025fa8:	e51b3008 	ldr	r3, [fp, #-8]
80025fac:	e3a02000 	mov	r2, #0
80025fb0:	e5832098 	str	r2, [r3, #152]	@ 0x98
80025fb4:	e51b3008 	ldr	r3, [fp, #-8]
80025fb8:	e3a02000 	mov	r2, #0
80025fbc:	e5832090 	str	r2, [r3, #144]	@ 0x90
80025fc0:	e51b3008 	ldr	r3, [fp, #-8]
80025fc4:	e3a02000 	mov	r2, #0
80025fc8:	e5832020 	str	r2, [r3, #32]
80025fcc:	e51b3008 	ldr	r3, [fp, #-8]
80025fd0:	e3a02003 	mov	r2, #3
80025fd4:	e5c3200c 	strb	r2, [r3, #12]
80025fd8:	ea000000 	b	80025fe0 <wakeup1+0x11c>
80025fdc:	e1a00000 	nop			@ (mov r0, r0)
80025fe0:	e51b3008 	ldr	r3, [fp, #-8]
80025fe4:	e283309c 	add	r3, r3, #156	@ 0x9c
80025fe8:	e50b3008 	str	r3, [fp, #-8]
80025fec:	e51b3008 	ldr	r3, [fp, #-8]
80025ff0:	e59f2020 	ldr	r2, [pc, #32]	@ 80026018 <wakeup1+0x154>
80025ff4:	e1530002 	cmp	r3, r2
80025ff8:	3affffb8 	bcc	80025ee0 <wakeup1+0x1c>
80025ffc:	e1a00000 	nop			@ (mov r0, r0)
80026000:	e1a00000 	nop			@ (mov r0, r0)
80026004:	e28bd000 	add	sp, fp, #0
80026008:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002600c:	e12fff1e 	bx	lr
80026010:	800ae6bc 	.word	0x800ae6bc
80026014:	800b0eb8 	.word	0x800b0eb8
80026018:	800b0dbc 	.word	0x800b0dbc

8002601c <wakeup>:
8002601c:	e92d4800 	push	{fp, lr}
80026020:	e28db004 	add	fp, sp, #4
80026024:	e24dd008 	sub	sp, sp, #8
80026028:	e50b0008 	str	r0, [fp, #-8]
8002602c:	e59f001c 	ldr	r0, [pc, #28]	@ 80026050 <wakeup+0x34>
80026030:	eb0000b8 	bl	80026318 <acquire>
80026034:	e51b0008 	ldr	r0, [fp, #-8]
80026038:	ebffffa1 	bl	80025ec4 <wakeup1>
8002603c:	e59f000c 	ldr	r0, [pc, #12]	@ 80026050 <wakeup+0x34>
80026040:	eb0000bf 	bl	80026344 <release>
80026044:	e1a00000 	nop			@ (mov r0, r0)
80026048:	e24bd004 	sub	sp, fp, #4
8002604c:	e8bd8800 	pop	{fp, pc}
80026050:	800ae688 	.word	0x800ae688

80026054 <kill>:
80026054:	e92d4800 	push	{fp, lr}
80026058:	e28db004 	add	fp, sp, #4
8002605c:	e24dd010 	sub	sp, sp, #16
80026060:	e50b0010 	str	r0, [fp, #-16]
80026064:	e59f008c 	ldr	r0, [pc, #140]	@ 800260f8 <kill+0xa4>
80026068:	eb0000aa 	bl	80026318 <acquire>
8002606c:	e59f3088 	ldr	r3, [pc, #136]	@ 800260fc <kill+0xa8>
80026070:	e50b3008 	str	r3, [fp, #-8]
80026074:	ea000015 	b	800260d0 <kill+0x7c>
80026078:	e51b3008 	ldr	r3, [fp, #-8]
8002607c:	e5933010 	ldr	r3, [r3, #16]
80026080:	e51b2010 	ldr	r2, [fp, #-16]
80026084:	e1520003 	cmp	r2, r3
80026088:	1a00000d 	bne	800260c4 <kill+0x70>
8002608c:	e51b3008 	ldr	r3, [fp, #-8]
80026090:	e3a02001 	mov	r2, #1
80026094:	e5832024 	str	r2, [r3, #36]	@ 0x24
80026098:	e51b3008 	ldr	r3, [fp, #-8]
8002609c:	e5d3300c 	ldrb	r3, [r3, #12]
800260a0:	e3530002 	cmp	r3, #2
800260a4:	1a000002 	bne	800260b4 <kill+0x60>
800260a8:	e51b3008 	ldr	r3, [fp, #-8]
800260ac:	e3a02003 	mov	r2, #3
800260b0:	e5c3200c 	strb	r2, [r3, #12]
800260b4:	e59f003c 	ldr	r0, [pc, #60]	@ 800260f8 <kill+0xa4>
800260b8:	eb0000a1 	bl	80026344 <release>
800260bc:	e3a03000 	mov	r3, #0
800260c0:	ea000009 	b	800260ec <kill+0x98>
800260c4:	e51b3008 	ldr	r3, [fp, #-8]
800260c8:	e283309c 	add	r3, r3, #156	@ 0x9c
800260cc:	e50b3008 	str	r3, [fp, #-8]
800260d0:	e51b3008 	ldr	r3, [fp, #-8]
800260d4:	e59f2024 	ldr	r2, [pc, #36]	@ 80026100 <kill+0xac>
800260d8:	e1530002 	cmp	r3, r2
800260dc:	3affffe5 	bcc	80026078 <kill+0x24>
800260e0:	e59f0010 	ldr	r0, [pc, #16]	@ 800260f8 <kill+0xa4>
800260e4:	eb000096 	bl	80026344 <release>
800260e8:	e3e03000 	mvn	r3, #0
800260ec:	e1a00003 	mov	r0, r3
800260f0:	e24bd004 	sub	sp, fp, #4
800260f4:	e8bd8800 	pop	{fp, pc}
800260f8:	800ae688 	.word	0x800ae688
800260fc:	800ae6bc 	.word	0x800ae6bc
80026100:	800b0dbc 	.word	0x800b0dbc

80026104 <procdump>:
80026104:	e92d4800 	push	{fp, lr}
80026108:	e28db004 	add	fp, sp, #4
8002610c:	e24dd008 	sub	sp, sp, #8
80026110:	e59f30b8 	ldr	r3, [pc, #184]	@ 800261d0 <procdump+0xcc>
80026114:	e50b3008 	str	r3, [fp, #-8]
80026118:	ea000023 	b	800261ac <procdump+0xa8>
8002611c:	e51b3008 	ldr	r3, [fp, #-8]
80026120:	e5d3300c 	ldrb	r3, [r3, #12]
80026124:	e3530000 	cmp	r3, #0
80026128:	0a00001b 	beq	8002619c <procdump+0x98>
8002612c:	e51b3008 	ldr	r3, [fp, #-8]
80026130:	e5d3300c 	ldrb	r3, [r3, #12]
80026134:	e3530005 	cmp	r3, #5
80026138:	8a00000d 	bhi	80026174 <procdump+0x70>
8002613c:	e51b3008 	ldr	r3, [fp, #-8]
80026140:	e5d3300c 	ldrb	r3, [r3, #12]
80026144:	e1a02003 	mov	r2, r3
80026148:	e59f3084 	ldr	r3, [pc, #132]	@ 800261d4 <procdump+0xd0>
8002614c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026150:	e3530000 	cmp	r3, #0
80026154:	0a000006 	beq	80026174 <procdump+0x70>
80026158:	e51b3008 	ldr	r3, [fp, #-8]
8002615c:	e5d3300c 	ldrb	r3, [r3, #12]
80026160:	e1a02003 	mov	r2, r3
80026164:	e59f3068 	ldr	r3, [pc, #104]	@ 800261d4 <procdump+0xd0>
80026168:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002616c:	e50b300c 	str	r3, [fp, #-12]
80026170:	ea000001 	b	8002617c <procdump+0x78>
80026174:	e59f305c 	ldr	r3, [pc, #92]	@ 800261d8 <procdump+0xd4>
80026178:	e50b300c 	str	r3, [fp, #-12]
8002617c:	e51b3008 	ldr	r3, [fp, #-8]
80026180:	e5931010 	ldr	r1, [r3, #16]
80026184:	e51b3008 	ldr	r3, [fp, #-8]
80026188:	e283306c 	add	r3, r3, #108	@ 0x6c
8002618c:	e51b200c 	ldr	r2, [fp, #-12]
80026190:	e59f0044 	ldr	r0, [pc, #68]	@ 800261dc <procdump+0xd8>
80026194:	ebffedbe 	bl	80021894 <cprintf>
80026198:	ea000000 	b	800261a0 <procdump+0x9c>
8002619c:	e1a00000 	nop			@ (mov r0, r0)
800261a0:	e51b3008 	ldr	r3, [fp, #-8]
800261a4:	e283309c 	add	r3, r3, #156	@ 0x9c
800261a8:	e50b3008 	str	r3, [fp, #-8]
800261ac:	e51b3008 	ldr	r3, [fp, #-8]
800261b0:	e59f2028 	ldr	r2, [pc, #40]	@ 800261e0 <procdump+0xdc>
800261b4:	e1530002 	cmp	r3, r2
800261b8:	3affffd7 	bcc	8002611c <procdump+0x18>
800261bc:	e59f0020 	ldr	r0, [pc, #32]	@ 800261e4 <procdump+0xe0>
800261c0:	ebffe991 	bl	8002080c <show_callstk>
800261c4:	e1a00000 	nop			@ (mov r0, r0)
800261c8:	e24bd004 	sub	sp, fp, #4
800261cc:	e8bd8800 	pop	{fp, pc}
800261d0:	800ae6bc 	.word	0x800ae6bc
800261d4:	8002b064 	.word	0x8002b064
800261d8:	8002a244 	.word	0x8002a244
800261dc:	8002a248 	.word	0x8002a248
800261e0:	800b0dbc 	.word	0x800b0dbc
800261e4:	8002a254 	.word	0x8002a254

800261e8 <psdump>:
800261e8:	e92d4800 	push	{fp, lr}
800261ec:	e28db004 	add	fp, sp, #4
800261f0:	e24dd018 	sub	sp, sp, #24
800261f4:	e59f00c0 	ldr	r0, [pc, #192]	@ 800262bc <psdump+0xd4>
800261f8:	ebffeda5 	bl	80021894 <cprintf>
800261fc:	e59f30bc 	ldr	r3, [pc, #188]	@ 800262c0 <psdump+0xd8>
80026200:	e50b3008 	str	r3, [fp, #-8]
80026204:	ea000024 	b	8002629c <psdump+0xb4>
80026208:	e51b3008 	ldr	r3, [fp, #-8]
8002620c:	e5d3300c 	ldrb	r3, [r3, #12]
80026210:	e3530000 	cmp	r3, #0
80026214:	0a00001c 	beq	8002628c <psdump+0xa4>
80026218:	e51b3008 	ldr	r3, [fp, #-8]
8002621c:	e5d3300c 	ldrb	r3, [r3, #12]
80026220:	e1a02003 	mov	r2, r3
80026224:	e59f3098 	ldr	r3, [pc, #152]	@ 800262c4 <psdump+0xdc>
80026228:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002622c:	e50b300c 	str	r3, [fp, #-12]
80026230:	e51b3008 	ldr	r3, [fp, #-8]
80026234:	e5933014 	ldr	r3, [r3, #20]
80026238:	e3530000 	cmp	r3, #0
8002623c:	0a000003 	beq	80026250 <psdump+0x68>
80026240:	e51b3008 	ldr	r3, [fp, #-8]
80026244:	e5933014 	ldr	r3, [r3, #20]
80026248:	e5933010 	ldr	r3, [r3, #16]
8002624c:	ea000000 	b	80026254 <psdump+0x6c>
80026250:	e3a03000 	mov	r3, #0
80026254:	e50b3010 	str	r3, [fp, #-16]
80026258:	e51b3008 	ldr	r3, [fp, #-8]
8002625c:	e5931010 	ldr	r1, [r3, #16]
80026260:	e51b3008 	ldr	r3, [fp, #-8]
80026264:	e593307c 	ldr	r3, [r3, #124]	@ 0x7c
80026268:	e51b2008 	ldr	r2, [fp, #-8]
8002626c:	e282206c 	add	r2, r2, #108	@ 0x6c
80026270:	e58d2004 	str	r2, [sp, #4]
80026274:	e58d3000 	str	r3, [sp]
80026278:	e51b300c 	ldr	r3, [fp, #-12]
8002627c:	e51b2010 	ldr	r2, [fp, #-16]
80026280:	e59f0040 	ldr	r0, [pc, #64]	@ 800262c8 <psdump+0xe0>
80026284:	ebffed82 	bl	80021894 <cprintf>
80026288:	ea000000 	b	80026290 <psdump+0xa8>
8002628c:	e1a00000 	nop			@ (mov r0, r0)
80026290:	e51b3008 	ldr	r3, [fp, #-8]
80026294:	e283309c 	add	r3, r3, #156	@ 0x9c
80026298:	e50b3008 	str	r3, [fp, #-8]
8002629c:	e51b3008 	ldr	r3, [fp, #-8]
800262a0:	e59f2024 	ldr	r2, [pc, #36]	@ 800262cc <psdump+0xe4>
800262a4:	e1530002 	cmp	r3, r2
800262a8:	3affffd6 	bcc	80026208 <psdump+0x20>
800262ac:	e1a00000 	nop			@ (mov r0, r0)
800262b0:	e1a00000 	nop			@ (mov r0, r0)
800262b4:	e24bd004 	sub	sp, fp, #4
800262b8:	e8bd8800 	pop	{fp, pc}
800262bc:	8002a260 	.word	0x8002a260
800262c0:	800ae6bc 	.word	0x800ae6bc
800262c4:	8002b07c 	.word	0x8002b07c
800262c8:	8002a284 	.word	0x8002a284
800262cc:	800b0dbc 	.word	0x800b0dbc

800262d0 <initlock>:
800262d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800262d4:	e28db000 	add	fp, sp, #0
800262d8:	e24dd00c 	sub	sp, sp, #12
800262dc:	e50b0008 	str	r0, [fp, #-8]
800262e0:	e50b100c 	str	r1, [fp, #-12]
800262e4:	e51b3008 	ldr	r3, [fp, #-8]
800262e8:	e51b200c 	ldr	r2, [fp, #-12]
800262ec:	e5832004 	str	r2, [r3, #4]
800262f0:	e51b3008 	ldr	r3, [fp, #-8]
800262f4:	e3a02000 	mov	r2, #0
800262f8:	e5832000 	str	r2, [r3]
800262fc:	e51b3008 	ldr	r3, [fp, #-8]
80026300:	e3a02000 	mov	r2, #0
80026304:	e5832008 	str	r2, [r3, #8]
80026308:	e1a00000 	nop			@ (mov r0, r0)
8002630c:	e28bd000 	add	sp, fp, #0
80026310:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026314:	e12fff1e 	bx	lr

80026318 <acquire>:
80026318:	e92d4800 	push	{fp, lr}
8002631c:	e28db004 	add	fp, sp, #4
80026320:	e24dd008 	sub	sp, sp, #8
80026324:	e50b0008 	str	r0, [fp, #-8]
80026328:	ebffe8bf 	bl	8002062c <pushcli>
8002632c:	e51b3008 	ldr	r3, [fp, #-8]
80026330:	e3a02001 	mov	r2, #1
80026334:	e5832000 	str	r2, [r3]
80026338:	e1a00000 	nop			@ (mov r0, r0)
8002633c:	e24bd004 	sub	sp, fp, #4
80026340:	e8bd8800 	pop	{fp, pc}

80026344 <release>:
80026344:	e92d4800 	push	{fp, lr}
80026348:	e28db004 	add	fp, sp, #4
8002634c:	e24dd008 	sub	sp, sp, #8
80026350:	e50b0008 	str	r0, [fp, #-8]
80026354:	e51b3008 	ldr	r3, [fp, #-8]
80026358:	e3a02000 	mov	r2, #0
8002635c:	e5832000 	str	r2, [r3]
80026360:	ebffe8c6 	bl	80020680 <popcli>
80026364:	e1a00000 	nop			@ (mov r0, r0)
80026368:	e24bd004 	sub	sp, fp, #4
8002636c:	e8bd8800 	pop	{fp, pc}

80026370 <holding>:
80026370:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026374:	e28db000 	add	fp, sp, #0
80026378:	e24dd00c 	sub	sp, sp, #12
8002637c:	e50b0008 	str	r0, [fp, #-8]
80026380:	e51b3008 	ldr	r3, [fp, #-8]
80026384:	e5933000 	ldr	r3, [r3]
80026388:	e1a00003 	mov	r0, r3
8002638c:	e28bd000 	add	sp, fp, #0
80026390:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026394:	e12fff1e 	bx	lr

80026398 <swtch>:
80026398:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002639c:	e580d000 	str	sp, [r0]
800263a0:	e1a0d001 	mov	sp, r1
800263a4:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800263a8:	e12fff1e 	bx	lr

800263ac <fetchint>:
800263ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800263b0:	e28db000 	add	fp, sp, #0
800263b4:	e24dd00c 	sub	sp, sp, #12
800263b8:	e50b0008 	str	r0, [fp, #-8]
800263bc:	e50b100c 	str	r1, [fp, #-12]
800263c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80026420 <fetchint+0x74>
800263c4:	e5933000 	ldr	r3, [r3]
800263c8:	e5933000 	ldr	r3, [r3]
800263cc:	e51b2008 	ldr	r2, [fp, #-8]
800263d0:	e1520003 	cmp	r2, r3
800263d4:	2a000006 	bcs	800263f4 <fetchint+0x48>
800263d8:	e51b3008 	ldr	r3, [fp, #-8]
800263dc:	e2832004 	add	r2, r3, #4
800263e0:	e59f3038 	ldr	r3, [pc, #56]	@ 80026420 <fetchint+0x74>
800263e4:	e5933000 	ldr	r3, [r3]
800263e8:	e5933000 	ldr	r3, [r3]
800263ec:	e1520003 	cmp	r2, r3
800263f0:	9a000001 	bls	800263fc <fetchint+0x50>
800263f4:	e3e03000 	mvn	r3, #0
800263f8:	ea000004 	b	80026410 <fetchint+0x64>
800263fc:	e51b3008 	ldr	r3, [fp, #-8]
80026400:	e5932000 	ldr	r2, [r3]
80026404:	e51b300c 	ldr	r3, [fp, #-12]
80026408:	e5832000 	str	r2, [r3]
8002640c:	e3a03000 	mov	r3, #0
80026410:	e1a00003 	mov	r0, r3
80026414:	e28bd000 	add	sp, fp, #0
80026418:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002641c:	e12fff1e 	bx	lr
80026420:	800b0dc0 	.word	0x800b0dc0

80026424 <fetchstr>:
80026424:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026428:	e28db000 	add	fp, sp, #0
8002642c:	e24dd014 	sub	sp, sp, #20
80026430:	e50b0010 	str	r0, [fp, #-16]
80026434:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026438:	e59f3098 	ldr	r3, [pc, #152]	@ 800264d8 <fetchstr+0xb4>
8002643c:	e5933000 	ldr	r3, [r3]
80026440:	e5933000 	ldr	r3, [r3]
80026444:	e51b2010 	ldr	r2, [fp, #-16]
80026448:	e1520003 	cmp	r2, r3
8002644c:	3a000001 	bcc	80026458 <fetchstr+0x34>
80026450:	e3e03000 	mvn	r3, #0
80026454:	ea00001b 	b	800264c8 <fetchstr+0xa4>
80026458:	e51b2010 	ldr	r2, [fp, #-16]
8002645c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026460:	e5832000 	str	r2, [r3]
80026464:	e59f306c 	ldr	r3, [pc, #108]	@ 800264d8 <fetchstr+0xb4>
80026468:	e5933000 	ldr	r3, [r3]
8002646c:	e5933000 	ldr	r3, [r3]
80026470:	e50b300c 	str	r3, [fp, #-12]
80026474:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026478:	e5933000 	ldr	r3, [r3]
8002647c:	e50b3008 	str	r3, [fp, #-8]
80026480:	ea00000b 	b	800264b4 <fetchstr+0x90>
80026484:	e51b3008 	ldr	r3, [fp, #-8]
80026488:	e5d33000 	ldrb	r3, [r3]
8002648c:	e3530000 	cmp	r3, #0
80026490:	1a000004 	bne	800264a8 <fetchstr+0x84>
80026494:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026498:	e5933000 	ldr	r3, [r3]
8002649c:	e51b2008 	ldr	r2, [fp, #-8]
800264a0:	e0423003 	sub	r3, r2, r3
800264a4:	ea000007 	b	800264c8 <fetchstr+0xa4>
800264a8:	e51b3008 	ldr	r3, [fp, #-8]
800264ac:	e2833001 	add	r3, r3, #1
800264b0:	e50b3008 	str	r3, [fp, #-8]
800264b4:	e51b2008 	ldr	r2, [fp, #-8]
800264b8:	e51b300c 	ldr	r3, [fp, #-12]
800264bc:	e1520003 	cmp	r2, r3
800264c0:	3affffef 	bcc	80026484 <fetchstr+0x60>
800264c4:	e3e03000 	mvn	r3, #0
800264c8:	e1a00003 	mov	r0, r3
800264cc:	e28bd000 	add	sp, fp, #0
800264d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800264d4:	e12fff1e 	bx	lr
800264d8:	800b0dc0 	.word	0x800b0dc0

800264dc <argint>:
800264dc:	e92d4800 	push	{fp, lr}
800264e0:	e28db004 	add	fp, sp, #4
800264e4:	e24dd008 	sub	sp, sp, #8
800264e8:	e50b0008 	str	r0, [fp, #-8]
800264ec:	e50b100c 	str	r1, [fp, #-12]
800264f0:	e51b3008 	ldr	r3, [fp, #-8]
800264f4:	e3530003 	cmp	r3, #3
800264f8:	da000001 	ble	80026504 <argint+0x28>
800264fc:	e59f003c 	ldr	r0, [pc, #60]	@ 80026540 <argint+0x64>
80026500:	ebffed69 	bl	80021aac <panic>
80026504:	e59f3038 	ldr	r3, [pc, #56]	@ 80026544 <argint+0x68>
80026508:	e5933000 	ldr	r3, [r3]
8002650c:	e5933018 	ldr	r3, [r3, #24]
80026510:	e2832014 	add	r2, r3, #20
80026514:	e51b3008 	ldr	r3, [fp, #-8]
80026518:	e1a03103 	lsl	r3, r3, #2
8002651c:	e0823003 	add	r3, r2, r3
80026520:	e5933000 	ldr	r3, [r3]
80026524:	e1a02003 	mov	r2, r3
80026528:	e51b300c 	ldr	r3, [fp, #-12]
8002652c:	e5832000 	str	r2, [r3]
80026530:	e3a03000 	mov	r3, #0
80026534:	e1a00003 	mov	r0, r3
80026538:	e24bd004 	sub	sp, fp, #4
8002653c:	e8bd8800 	pop	{fp, pc}
80026540:	8002a310 	.word	0x8002a310
80026544:	800b0dc0 	.word	0x800b0dc0

80026548 <argptr>:
80026548:	e92d4800 	push	{fp, lr}
8002654c:	e28db004 	add	fp, sp, #4
80026550:	e24dd018 	sub	sp, sp, #24
80026554:	e50b0010 	str	r0, [fp, #-16]
80026558:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002655c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026560:	e24b3008 	sub	r3, fp, #8
80026564:	e1a01003 	mov	r1, r3
80026568:	e51b0010 	ldr	r0, [fp, #-16]
8002656c:	ebffffda 	bl	800264dc <argint>
80026570:	e1a03000 	mov	r3, r0
80026574:	e3530000 	cmp	r3, #0
80026578:	aa000001 	bge	80026584 <argptr+0x3c>
8002657c:	e3e03000 	mvn	r3, #0
80026580:	ea000015 	b	800265dc <argptr+0x94>
80026584:	e59f305c 	ldr	r3, [pc, #92]	@ 800265e8 <argptr+0xa0>
80026588:	e5933000 	ldr	r3, [r3]
8002658c:	e5933000 	ldr	r3, [r3]
80026590:	e51b2008 	ldr	r2, [fp, #-8]
80026594:	e1530002 	cmp	r3, r2
80026598:	9a000008 	bls	800265c0 <argptr+0x78>
8002659c:	e51b3008 	ldr	r3, [fp, #-8]
800265a0:	e1a02003 	mov	r2, r3
800265a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800265a8:	e0822003 	add	r2, r2, r3
800265ac:	e59f3034 	ldr	r3, [pc, #52]	@ 800265e8 <argptr+0xa0>
800265b0:	e5933000 	ldr	r3, [r3]
800265b4:	e5933000 	ldr	r3, [r3]
800265b8:	e1520003 	cmp	r2, r3
800265bc:	9a000001 	bls	800265c8 <argptr+0x80>
800265c0:	e3e03000 	mvn	r3, #0
800265c4:	ea000004 	b	800265dc <argptr+0x94>
800265c8:	e51b3008 	ldr	r3, [fp, #-8]
800265cc:	e1a02003 	mov	r2, r3
800265d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800265d4:	e5832000 	str	r2, [r3]
800265d8:	e3a03000 	mov	r3, #0
800265dc:	e1a00003 	mov	r0, r3
800265e0:	e24bd004 	sub	sp, fp, #4
800265e4:	e8bd8800 	pop	{fp, pc}
800265e8:	800b0dc0 	.word	0x800b0dc0

800265ec <argstr>:
800265ec:	e92d4800 	push	{fp, lr}
800265f0:	e28db004 	add	fp, sp, #4
800265f4:	e24dd010 	sub	sp, sp, #16
800265f8:	e50b0010 	str	r0, [fp, #-16]
800265fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026600:	e24b3008 	sub	r3, fp, #8
80026604:	e1a01003 	mov	r1, r3
80026608:	e51b0010 	ldr	r0, [fp, #-16]
8002660c:	ebffffb2 	bl	800264dc <argint>
80026610:	e1a03000 	mov	r3, r0
80026614:	e3530000 	cmp	r3, #0
80026618:	aa000001 	bge	80026624 <argstr+0x38>
8002661c:	e3e03000 	mvn	r3, #0
80026620:	ea000004 	b	80026638 <argstr+0x4c>
80026624:	e51b3008 	ldr	r3, [fp, #-8]
80026628:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002662c:	e1a00003 	mov	r0, r3
80026630:	ebffff7b 	bl	80026424 <fetchstr>
80026634:	e1a03000 	mov	r3, r0
80026638:	e1a00003 	mov	r0, r3
8002663c:	e24bd004 	sub	sp, fp, #4
80026640:	e8bd8800 	pop	{fp, pc}

80026644 <syscall>:
80026644:	e92d4800 	push	{fp, lr}
80026648:	e28db004 	add	fp, sp, #4
8002664c:	e24dd008 	sub	sp, sp, #8
80026650:	e59f30cc 	ldr	r3, [pc, #204]	@ 80026724 <syscall+0xe0>
80026654:	e5933000 	ldr	r3, [r3]
80026658:	e5933018 	ldr	r3, [r3, #24]
8002665c:	e5933010 	ldr	r3, [r3, #16]
80026660:	e50b3008 	str	r3, [fp, #-8]
80026664:	e51b3008 	ldr	r3, [fp, #-8]
80026668:	e3530000 	cmp	r3, #0
8002666c:	da00001a 	ble	800266dc <syscall+0x98>
80026670:	e51b3008 	ldr	r3, [fp, #-8]
80026674:	e353001e 	cmp	r3, #30
80026678:	8a000017 	bhi	800266dc <syscall+0x98>
8002667c:	e59f20a4 	ldr	r2, [pc, #164]	@ 80026728 <syscall+0xe4>
80026680:	e51b3008 	ldr	r3, [fp, #-8]
80026684:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026688:	e3530000 	cmp	r3, #0
8002668c:	0a000012 	beq	800266dc <syscall+0x98>
80026690:	e59f308c 	ldr	r3, [pc, #140]	@ 80026724 <syscall+0xe0>
80026694:	e5933000 	ldr	r3, [r3]
80026698:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
8002669c:	e2822001 	add	r2, r2, #1
800266a0:	e583207c 	str	r2, [r3, #124]	@ 0x7c
800266a4:	e59f207c 	ldr	r2, [pc, #124]	@ 80026728 <syscall+0xe4>
800266a8:	e51b3008 	ldr	r3, [fp, #-8]
800266ac:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800266b0:	e12fff33 	blx	r3
800266b4:	e50b000c 	str	r0, [fp, #-12]
800266b8:	e51b3008 	ldr	r3, [fp, #-8]
800266bc:	e3530007 	cmp	r3, #7
800266c0:	0a000014 	beq	80026718 <syscall+0xd4>
800266c4:	e59f3058 	ldr	r3, [pc, #88]	@ 80026724 <syscall+0xe0>
800266c8:	e5933000 	ldr	r3, [r3]
800266cc:	e5933018 	ldr	r3, [r3, #24]
800266d0:	e51b200c 	ldr	r2, [fp, #-12]
800266d4:	e5832010 	str	r2, [r3, #16]
800266d8:	ea00000e 	b	80026718 <syscall+0xd4>
800266dc:	e59f3040 	ldr	r3, [pc, #64]	@ 80026724 <syscall+0xe0>
800266e0:	e5933000 	ldr	r3, [r3]
800266e4:	e5931010 	ldr	r1, [r3, #16]
800266e8:	e59f3034 	ldr	r3, [pc, #52]	@ 80026724 <syscall+0xe0>
800266ec:	e5933000 	ldr	r3, [r3]
800266f0:	e283206c 	add	r2, r3, #108	@ 0x6c
800266f4:	e51b3008 	ldr	r3, [fp, #-8]
800266f8:	e59f002c 	ldr	r0, [pc, #44]	@ 8002672c <syscall+0xe8>
800266fc:	ebffec64 	bl	80021894 <cprintf>
80026700:	e59f301c 	ldr	r3, [pc, #28]	@ 80026724 <syscall+0xe0>
80026704:	e5933000 	ldr	r3, [r3]
80026708:	e5933018 	ldr	r3, [r3, #24]
8002670c:	e3e02000 	mvn	r2, #0
80026710:	e5832010 	str	r2, [r3, #16]
80026714:	e1a00000 	nop			@ (mov r0, r0)
80026718:	e1a00000 	nop			@ (mov r0, r0)
8002671c:	e24bd004 	sub	sp, fp, #4
80026720:	e8bd8800 	pop	{fp, pc}
80026724:	800b0dc0 	.word	0x800b0dc0
80026728:	8002b094 	.word	0x8002b094
8002672c:	8002a334 	.word	0x8002a334

80026730 <argfd>:
80026730:	e92d4800 	push	{fp, lr}
80026734:	e28db004 	add	fp, sp, #4
80026738:	e24dd018 	sub	sp, sp, #24
8002673c:	e50b0010 	str	r0, [fp, #-16]
80026740:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026744:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026748:	e24b300c 	sub	r3, fp, #12
8002674c:	e1a01003 	mov	r1, r3
80026750:	e51b0010 	ldr	r0, [fp, #-16]
80026754:	ebffff60 	bl	800264dc <argint>
80026758:	e1a03000 	mov	r3, r0
8002675c:	e3530000 	cmp	r3, #0
80026760:	aa000001 	bge	8002676c <argfd+0x3c>
80026764:	e3e03000 	mvn	r3, #0
80026768:	ea00001d 	b	800267e4 <argfd+0xb4>
8002676c:	e51b300c 	ldr	r3, [fp, #-12]
80026770:	e3530000 	cmp	r3, #0
80026774:	ba00000b 	blt	800267a8 <argfd+0x78>
80026778:	e51b300c 	ldr	r3, [fp, #-12]
8002677c:	e353000f 	cmp	r3, #15
80026780:	ca000008 	bgt	800267a8 <argfd+0x78>
80026784:	e59f3064 	ldr	r3, [pc, #100]	@ 800267f0 <argfd+0xc0>
80026788:	e5933000 	ldr	r3, [r3]
8002678c:	e51b200c 	ldr	r2, [fp, #-12]
80026790:	e282200a 	add	r2, r2, #10
80026794:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026798:	e50b3008 	str	r3, [fp, #-8]
8002679c:	e51b3008 	ldr	r3, [fp, #-8]
800267a0:	e3530000 	cmp	r3, #0
800267a4:	1a000001 	bne	800267b0 <argfd+0x80>
800267a8:	e3e03000 	mvn	r3, #0
800267ac:	ea00000c 	b	800267e4 <argfd+0xb4>
800267b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800267b4:	e3530000 	cmp	r3, #0
800267b8:	0a000002 	beq	800267c8 <argfd+0x98>
800267bc:	e51b200c 	ldr	r2, [fp, #-12]
800267c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800267c4:	e5832000 	str	r2, [r3]
800267c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800267cc:	e3530000 	cmp	r3, #0
800267d0:	0a000002 	beq	800267e0 <argfd+0xb0>
800267d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800267d8:	e51b2008 	ldr	r2, [fp, #-8]
800267dc:	e5832000 	str	r2, [r3]
800267e0:	e3a03000 	mov	r3, #0
800267e4:	e1a00003 	mov	r0, r3
800267e8:	e24bd004 	sub	sp, fp, #4
800267ec:	e8bd8800 	pop	{fp, pc}
800267f0:	800b0dc0 	.word	0x800b0dc0

800267f4 <fdalloc>:
800267f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800267f8:	e28db000 	add	fp, sp, #0
800267fc:	e24dd014 	sub	sp, sp, #20
80026800:	e50b0010 	str	r0, [fp, #-16]
80026804:	e3a03000 	mov	r3, #0
80026808:	e50b3008 	str	r3, [fp, #-8]
8002680c:	ea000011 	b	80026858 <fdalloc+0x64>
80026810:	e59f3060 	ldr	r3, [pc, #96]	@ 80026878 <fdalloc+0x84>
80026814:	e5933000 	ldr	r3, [r3]
80026818:	e51b2008 	ldr	r2, [fp, #-8]
8002681c:	e282200a 	add	r2, r2, #10
80026820:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026824:	e3530000 	cmp	r3, #0
80026828:	1a000007 	bne	8002684c <fdalloc+0x58>
8002682c:	e59f3044 	ldr	r3, [pc, #68]	@ 80026878 <fdalloc+0x84>
80026830:	e5933000 	ldr	r3, [r3]
80026834:	e51b2008 	ldr	r2, [fp, #-8]
80026838:	e282200a 	add	r2, r2, #10
8002683c:	e51b1010 	ldr	r1, [fp, #-16]
80026840:	e7831102 	str	r1, [r3, r2, lsl #2]
80026844:	e51b3008 	ldr	r3, [fp, #-8]
80026848:	ea000006 	b	80026868 <fdalloc+0x74>
8002684c:	e51b3008 	ldr	r3, [fp, #-8]
80026850:	e2833001 	add	r3, r3, #1
80026854:	e50b3008 	str	r3, [fp, #-8]
80026858:	e51b3008 	ldr	r3, [fp, #-8]
8002685c:	e353000f 	cmp	r3, #15
80026860:	daffffea 	ble	80026810 <fdalloc+0x1c>
80026864:	e3e03000 	mvn	r3, #0
80026868:	e1a00003 	mov	r0, r3
8002686c:	e28bd000 	add	sp, fp, #0
80026870:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026874:	e12fff1e 	bx	lr
80026878:	800b0dc0 	.word	0x800b0dc0

8002687c <sys_dup>:
8002687c:	e92d4800 	push	{fp, lr}
80026880:	e28db004 	add	fp, sp, #4
80026884:	e24dd008 	sub	sp, sp, #8
80026888:	e24b300c 	sub	r3, fp, #12
8002688c:	e1a02003 	mov	r2, r3
80026890:	e3a01000 	mov	r1, #0
80026894:	e3a00000 	mov	r0, #0
80026898:	ebffffa4 	bl	80026730 <argfd>
8002689c:	e1a03000 	mov	r3, r0
800268a0:	e3530000 	cmp	r3, #0
800268a4:	aa000001 	bge	800268b0 <sys_dup+0x34>
800268a8:	e3e03000 	mvn	r3, #0
800268ac:	ea00000c 	b	800268e4 <sys_dup+0x68>
800268b0:	e51b300c 	ldr	r3, [fp, #-12]
800268b4:	e1a00003 	mov	r0, r3
800268b8:	ebffffcd 	bl	800267f4 <fdalloc>
800268bc:	e50b0008 	str	r0, [fp, #-8]
800268c0:	e51b3008 	ldr	r3, [fp, #-8]
800268c4:	e3530000 	cmp	r3, #0
800268c8:	aa000001 	bge	800268d4 <sys_dup+0x58>
800268cc:	e3e03000 	mvn	r3, #0
800268d0:	ea000003 	b	800268e4 <sys_dup+0x68>
800268d4:	e51b300c 	ldr	r3, [fp, #-12]
800268d8:	e1a00003 	mov	r0, r3
800268dc:	ebffeff1 	bl	800228a8 <filedup>
800268e0:	e51b3008 	ldr	r3, [fp, #-8]
800268e4:	e1a00003 	mov	r0, r3
800268e8:	e24bd004 	sub	sp, fp, #4
800268ec:	e8bd8800 	pop	{fp, pc}

800268f0 <sys_read>:
800268f0:	e92d4800 	push	{fp, lr}
800268f4:	e28db004 	add	fp, sp, #4
800268f8:	e24dd010 	sub	sp, sp, #16
800268fc:	e24b3008 	sub	r3, fp, #8
80026900:	e1a02003 	mov	r2, r3
80026904:	e3a01000 	mov	r1, #0
80026908:	e3a00000 	mov	r0, #0
8002690c:	ebffff87 	bl	80026730 <argfd>
80026910:	e1a03000 	mov	r3, r0
80026914:	e3530000 	cmp	r3, #0
80026918:	ba00000e 	blt	80026958 <sys_read+0x68>
8002691c:	e24b300c 	sub	r3, fp, #12
80026920:	e1a01003 	mov	r1, r3
80026924:	e3a00002 	mov	r0, #2
80026928:	ebfffeeb 	bl	800264dc <argint>
8002692c:	e1a03000 	mov	r3, r0
80026930:	e3530000 	cmp	r3, #0
80026934:	ba000007 	blt	80026958 <sys_read+0x68>
80026938:	e51b200c 	ldr	r2, [fp, #-12]
8002693c:	e24b3010 	sub	r3, fp, #16
80026940:	e1a01003 	mov	r1, r3
80026944:	e3a00001 	mov	r0, #1
80026948:	ebfffefe 	bl	80026548 <argptr>
8002694c:	e1a03000 	mov	r3, r0
80026950:	e3530000 	cmp	r3, #0
80026954:	aa000001 	bge	80026960 <sys_read+0x70>
80026958:	e3e03000 	mvn	r3, #0
8002695c:	ea000005 	b	80026978 <sys_read+0x88>
80026960:	e51b3008 	ldr	r3, [fp, #-8]
80026964:	e51b1010 	ldr	r1, [fp, #-16]
80026968:	e51b200c 	ldr	r2, [fp, #-12]
8002696c:	e1a00003 	mov	r0, r3
80026970:	ebfff03d 	bl	80022a6c <fileread>
80026974:	e1a03000 	mov	r3, r0
80026978:	e1a00003 	mov	r0, r3
8002697c:	e24bd004 	sub	sp, fp, #4
80026980:	e8bd8800 	pop	{fp, pc}

80026984 <sys_write>:
80026984:	e92d4800 	push	{fp, lr}
80026988:	e28db004 	add	fp, sp, #4
8002698c:	e24dd010 	sub	sp, sp, #16
80026990:	e24b3008 	sub	r3, fp, #8
80026994:	e1a02003 	mov	r2, r3
80026998:	e3a01000 	mov	r1, #0
8002699c:	e3a00000 	mov	r0, #0
800269a0:	ebffff62 	bl	80026730 <argfd>
800269a4:	e1a03000 	mov	r3, r0
800269a8:	e3530000 	cmp	r3, #0
800269ac:	ba00000e 	blt	800269ec <sys_write+0x68>
800269b0:	e24b300c 	sub	r3, fp, #12
800269b4:	e1a01003 	mov	r1, r3
800269b8:	e3a00002 	mov	r0, #2
800269bc:	ebfffec6 	bl	800264dc <argint>
800269c0:	e1a03000 	mov	r3, r0
800269c4:	e3530000 	cmp	r3, #0
800269c8:	ba000007 	blt	800269ec <sys_write+0x68>
800269cc:	e51b200c 	ldr	r2, [fp, #-12]
800269d0:	e24b3010 	sub	r3, fp, #16
800269d4:	e1a01003 	mov	r1, r3
800269d8:	e3a00001 	mov	r0, #1
800269dc:	ebfffed9 	bl	80026548 <argptr>
800269e0:	e1a03000 	mov	r3, r0
800269e4:	e3530000 	cmp	r3, #0
800269e8:	aa000001 	bge	800269f4 <sys_write+0x70>
800269ec:	e3e03000 	mvn	r3, #0
800269f0:	ea000005 	b	80026a0c <sys_write+0x88>
800269f4:	e51b3008 	ldr	r3, [fp, #-8]
800269f8:	e51b1010 	ldr	r1, [fp, #-16]
800269fc:	e51b200c 	ldr	r2, [fp, #-12]
80026a00:	e1a00003 	mov	r0, r3
80026a04:	ebfff055 	bl	80022b60 <filewrite>
80026a08:	e1a03000 	mov	r3, r0
80026a0c:	e1a00003 	mov	r0, r3
80026a10:	e24bd004 	sub	sp, fp, #4
80026a14:	e8bd8800 	pop	{fp, pc}

80026a18 <sys_close>:
80026a18:	e92d4800 	push	{fp, lr}
80026a1c:	e28db004 	add	fp, sp, #4
80026a20:	e24dd008 	sub	sp, sp, #8
80026a24:	e24b200c 	sub	r2, fp, #12
80026a28:	e24b3008 	sub	r3, fp, #8
80026a2c:	e1a01003 	mov	r1, r3
80026a30:	e3a00000 	mov	r0, #0
80026a34:	ebffff3d 	bl	80026730 <argfd>
80026a38:	e1a03000 	mov	r3, r0
80026a3c:	e3530000 	cmp	r3, #0
80026a40:	aa000001 	bge	80026a4c <sys_close+0x34>
80026a44:	e3e03000 	mvn	r3, #0
80026a48:	ea000009 	b	80026a74 <sys_close+0x5c>
80026a4c:	e59f302c 	ldr	r3, [pc, #44]	@ 80026a80 <sys_close+0x68>
80026a50:	e5933000 	ldr	r3, [r3]
80026a54:	e51b2008 	ldr	r2, [fp, #-8]
80026a58:	e282200a 	add	r2, r2, #10
80026a5c:	e3a01000 	mov	r1, #0
80026a60:	e7831102 	str	r1, [r3, r2, lsl #2]
80026a64:	e51b300c 	ldr	r3, [fp, #-12]
80026a68:	e1a00003 	mov	r0, r3
80026a6c:	ebffefa6 	bl	8002290c <fileclose>
80026a70:	e3a03000 	mov	r3, #0
80026a74:	e1a00003 	mov	r0, r3
80026a78:	e24bd004 	sub	sp, fp, #4
80026a7c:	e8bd8800 	pop	{fp, pc}
80026a80:	800b0dc0 	.word	0x800b0dc0

80026a84 <sys_fstat>:
80026a84:	e92d4800 	push	{fp, lr}
80026a88:	e28db004 	add	fp, sp, #4
80026a8c:	e24dd008 	sub	sp, sp, #8
80026a90:	e24b3008 	sub	r3, fp, #8
80026a94:	e1a02003 	mov	r2, r3
80026a98:	e3a01000 	mov	r1, #0
80026a9c:	e3a00000 	mov	r0, #0
80026aa0:	ebffff22 	bl	80026730 <argfd>
80026aa4:	e1a03000 	mov	r3, r0
80026aa8:	e3530000 	cmp	r3, #0
80026aac:	ba000007 	blt	80026ad0 <sys_fstat+0x4c>
80026ab0:	e24b300c 	sub	r3, fp, #12
80026ab4:	e3a02014 	mov	r2, #20
80026ab8:	e1a01003 	mov	r1, r3
80026abc:	e3a00001 	mov	r0, #1
80026ac0:	ebfffea0 	bl	80026548 <argptr>
80026ac4:	e1a03000 	mov	r3, r0
80026ac8:	e3530000 	cmp	r3, #0
80026acc:	aa000001 	bge	80026ad8 <sys_fstat+0x54>
80026ad0:	e3e03000 	mvn	r3, #0
80026ad4:	ea000005 	b	80026af0 <sys_fstat+0x6c>
80026ad8:	e51b3008 	ldr	r3, [fp, #-8]
80026adc:	e51b200c 	ldr	r2, [fp, #-12]
80026ae0:	e1a01002 	mov	r1, r2
80026ae4:	e1a00003 	mov	r0, r3
80026ae8:	ebffefc3 	bl	800229fc <filestat>
80026aec:	e1a03000 	mov	r3, r0
80026af0:	e1a00003 	mov	r0, r3
80026af4:	e24bd004 	sub	sp, fp, #4
80026af8:	e8bd8800 	pop	{fp, pc}

80026afc <sys_link>:
80026afc:	e92d4800 	push	{fp, lr}
80026b00:	e28db004 	add	fp, sp, #4
80026b04:	e24dd020 	sub	sp, sp, #32
80026b08:	e24b3024 	sub	r3, fp, #36	@ 0x24
80026b0c:	e1a01003 	mov	r1, r3
80026b10:	e3a00000 	mov	r0, #0
80026b14:	ebfffeb4 	bl	800265ec <argstr>
80026b18:	e1a03000 	mov	r3, r0
80026b1c:	e3530000 	cmp	r3, #0
80026b20:	ba000006 	blt	80026b40 <sys_link+0x44>
80026b24:	e24b3020 	sub	r3, fp, #32
80026b28:	e1a01003 	mov	r1, r3
80026b2c:	e3a00001 	mov	r0, #1
80026b30:	ebfffead 	bl	800265ec <argstr>
80026b34:	e1a03000 	mov	r3, r0
80026b38:	e3530000 	cmp	r3, #0
80026b3c:	aa000001 	bge	80026b48 <sys_link+0x4c>
80026b40:	e3e03000 	mvn	r3, #0
80026b44:	ea000055 	b	80026ca0 <sys_link+0x1a4>
80026b48:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80026b4c:	e1a00003 	mov	r0, r3
80026b50:	ebfff60b 	bl	80024384 <namei>
80026b54:	e50b0008 	str	r0, [fp, #-8]
80026b58:	e51b3008 	ldr	r3, [fp, #-8]
80026b5c:	e3530000 	cmp	r3, #0
80026b60:	1a000001 	bne	80026b6c <sys_link+0x70>
80026b64:	e3e03000 	mvn	r3, #0
80026b68:	ea00004c 	b	80026ca0 <sys_link+0x1a4>
80026b6c:	ebfff6dd 	bl	800246e8 <begin_trans>
80026b70:	e51b0008 	ldr	r0, [fp, #-8]
80026b74:	ebfff22f 	bl	80023438 <ilock>
80026b78:	e51b3008 	ldr	r3, [fp, #-8]
80026b7c:	e1d331f0 	ldrsh	r3, [r3, #16]
80026b80:	e3530001 	cmp	r3, #1
80026b84:	1a000004 	bne	80026b9c <sys_link+0xa0>
80026b88:	e51b0008 	ldr	r0, [fp, #-8]
80026b8c:	ebfff2ea 	bl	8002373c <iunlockput>
80026b90:	ebfff6e8 	bl	80024738 <commit_trans>
80026b94:	e3e03000 	mvn	r3, #0
80026b98:	ea000040 	b	80026ca0 <sys_link+0x1a4>
80026b9c:	e51b3008 	ldr	r3, [fp, #-8]
80026ba0:	e1d331f6 	ldrsh	r3, [r3, #22]
80026ba4:	e6ff3073 	uxth	r3, r3
80026ba8:	e2833001 	add	r3, r3, #1
80026bac:	e6ff3073 	uxth	r3, r3
80026bb0:	e6bf2073 	sxth	r2, r3
80026bb4:	e51b3008 	ldr	r3, [fp, #-8]
80026bb8:	e1c321b6 	strh	r2, [r3, #22]
80026bbc:	e51b0008 	ldr	r0, [fp, #-8]
80026bc0:	ebfff182 	bl	800231d0 <iupdate>
80026bc4:	e51b0008 	ldr	r0, [fp, #-8]
80026bc8:	ebfff27e 	bl	800235c8 <iunlock>
80026bcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026bd0:	e24b201c 	sub	r2, fp, #28
80026bd4:	e1a01002 	mov	r1, r2
80026bd8:	e1a00003 	mov	r0, r3
80026bdc:	ebfff5f5 	bl	800243b8 <nameiparent>
80026be0:	e50b000c 	str	r0, [fp, #-12]
80026be4:	e51b300c 	ldr	r3, [fp, #-12]
80026be8:	e3530000 	cmp	r3, #0
80026bec:	0a00001a 	beq	80026c5c <sys_link+0x160>
80026bf0:	e51b000c 	ldr	r0, [fp, #-12]
80026bf4:	ebfff20f 	bl	80023438 <ilock>
80026bf8:	e51b300c 	ldr	r3, [fp, #-12]
80026bfc:	e5932000 	ldr	r2, [r3]
80026c00:	e51b3008 	ldr	r3, [fp, #-8]
80026c04:	e5933000 	ldr	r3, [r3]
80026c08:	e1520003 	cmp	r2, r3
80026c0c:	1a000008 	bne	80026c34 <sys_link+0x138>
80026c10:	e51b3008 	ldr	r3, [fp, #-8]
80026c14:	e5932004 	ldr	r2, [r3, #4]
80026c18:	e24b301c 	sub	r3, fp, #28
80026c1c:	e1a01003 	mov	r1, r3
80026c20:	e51b000c 	ldr	r0, [fp, #-12]
80026c24:	ebfff500 	bl	8002402c <dirlink>
80026c28:	e1a03000 	mov	r3, r0
80026c2c:	e3530000 	cmp	r3, #0
80026c30:	aa000002 	bge	80026c40 <sys_link+0x144>
80026c34:	e51b000c 	ldr	r0, [fp, #-12]
80026c38:	ebfff2bf 	bl	8002373c <iunlockput>
80026c3c:	ea000007 	b	80026c60 <sys_link+0x164>
80026c40:	e51b000c 	ldr	r0, [fp, #-12]
80026c44:	ebfff2bc 	bl	8002373c <iunlockput>
80026c48:	e51b0008 	ldr	r0, [fp, #-8]
80026c4c:	ebfff27f 	bl	80023650 <iput>
80026c50:	ebfff6b8 	bl	80024738 <commit_trans>
80026c54:	e3a03000 	mov	r3, #0
80026c58:	ea000010 	b	80026ca0 <sys_link+0x1a4>
80026c5c:	e1a00000 	nop			@ (mov r0, r0)
80026c60:	e51b0008 	ldr	r0, [fp, #-8]
80026c64:	ebfff1f3 	bl	80023438 <ilock>
80026c68:	e51b3008 	ldr	r3, [fp, #-8]
80026c6c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026c70:	e6ff3073 	uxth	r3, r3
80026c74:	e2433001 	sub	r3, r3, #1
80026c78:	e6ff3073 	uxth	r3, r3
80026c7c:	e6bf2073 	sxth	r2, r3
80026c80:	e51b3008 	ldr	r3, [fp, #-8]
80026c84:	e1c321b6 	strh	r2, [r3, #22]
80026c88:	e51b0008 	ldr	r0, [fp, #-8]
80026c8c:	ebfff14f 	bl	800231d0 <iupdate>
80026c90:	e51b0008 	ldr	r0, [fp, #-8]
80026c94:	ebfff2a8 	bl	8002373c <iunlockput>
80026c98:	ebfff6a6 	bl	80024738 <commit_trans>
80026c9c:	e3e03000 	mvn	r3, #0
80026ca0:	e1a00003 	mov	r0, r3
80026ca4:	e24bd004 	sub	sp, fp, #4
80026ca8:	e8bd8800 	pop	{fp, pc}

80026cac <isdirempty>:
80026cac:	e92d4800 	push	{fp, lr}
80026cb0:	e28db004 	add	fp, sp, #4
80026cb4:	e24dd020 	sub	sp, sp, #32
80026cb8:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80026cbc:	e3a03020 	mov	r3, #32
80026cc0:	e50b3008 	str	r3, [fp, #-8]
80026cc4:	ea000011 	b	80026d10 <isdirempty+0x64>
80026cc8:	e51b2008 	ldr	r2, [fp, #-8]
80026ccc:	e24b1018 	sub	r1, fp, #24
80026cd0:	e3a03010 	mov	r3, #16
80026cd4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80026cd8:	ebfff382 	bl	80023ae8 <readi>
80026cdc:	e1a03000 	mov	r3, r0
80026ce0:	e3530010 	cmp	r3, #16
80026ce4:	0a000001 	beq	80026cf0 <isdirempty+0x44>
80026ce8:	e59f0044 	ldr	r0, [pc, #68]	@ 80026d34 <isdirempty+0x88>
80026cec:	ebffeb6e 	bl	80021aac <panic>
80026cf0:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
80026cf4:	e3530000 	cmp	r3, #0
80026cf8:	0a000001 	beq	80026d04 <isdirempty+0x58>
80026cfc:	e3a03000 	mov	r3, #0
80026d00:	ea000008 	b	80026d28 <isdirempty+0x7c>
80026d04:	e51b3008 	ldr	r3, [fp, #-8]
80026d08:	e2833010 	add	r3, r3, #16
80026d0c:	e50b3008 	str	r3, [fp, #-8]
80026d10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026d14:	e5932018 	ldr	r2, [r3, #24]
80026d18:	e51b3008 	ldr	r3, [fp, #-8]
80026d1c:	e1520003 	cmp	r2, r3
80026d20:	8affffe8 	bhi	80026cc8 <isdirempty+0x1c>
80026d24:	e3a03001 	mov	r3, #1
80026d28:	e1a00003 	mov	r0, r3
80026d2c:	e24bd004 	sub	sp, fp, #4
80026d30:	e8bd8800 	pop	{fp, pc}
80026d34:	8002a350 	.word	0x8002a350

80026d38 <sys_unlink>:
80026d38:	e92d4800 	push	{fp, lr}
80026d3c:	e28db004 	add	fp, sp, #4
80026d40:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026d44:	e24b3030 	sub	r3, fp, #48	@ 0x30
80026d48:	e1a01003 	mov	r1, r3
80026d4c:	e3a00000 	mov	r0, #0
80026d50:	ebfffe25 	bl	800265ec <argstr>
80026d54:	e1a03000 	mov	r3, r0
80026d58:	e3530000 	cmp	r3, #0
80026d5c:	aa000001 	bge	80026d68 <sys_unlink+0x30>
80026d60:	e3e03000 	mvn	r3, #0
80026d64:	ea00006d 	b	80026f20 <sys_unlink+0x1e8>
80026d68:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80026d6c:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80026d70:	e1a01002 	mov	r1, r2
80026d74:	e1a00003 	mov	r0, r3
80026d78:	ebfff58e 	bl	800243b8 <nameiparent>
80026d7c:	e50b0008 	str	r0, [fp, #-8]
80026d80:	e51b3008 	ldr	r3, [fp, #-8]
80026d84:	e3530000 	cmp	r3, #0
80026d88:	1a000001 	bne	80026d94 <sys_unlink+0x5c>
80026d8c:	e3e03000 	mvn	r3, #0
80026d90:	ea000062 	b	80026f20 <sys_unlink+0x1e8>
80026d94:	ebfff653 	bl	800246e8 <begin_trans>
80026d98:	e51b0008 	ldr	r0, [fp, #-8]
80026d9c:	ebfff1a5 	bl	80023438 <ilock>
80026da0:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026da4:	e59f1180 	ldr	r1, [pc, #384]	@ 80026f2c <sys_unlink+0x1f4>
80026da8:	e1a00003 	mov	r0, r3
80026dac:	ebfff44f 	bl	80023ef0 <namecmp>
80026db0:	e1a03000 	mov	r3, r0
80026db4:	e3530000 	cmp	r3, #0
80026db8:	0a000051 	beq	80026f04 <sys_unlink+0x1cc>
80026dbc:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026dc0:	e59f1168 	ldr	r1, [pc, #360]	@ 80026f30 <sys_unlink+0x1f8>
80026dc4:	e1a00003 	mov	r0, r3
80026dc8:	ebfff448 	bl	80023ef0 <namecmp>
80026dcc:	e1a03000 	mov	r3, r0
80026dd0:	e3530000 	cmp	r3, #0
80026dd4:	0a00004a 	beq	80026f04 <sys_unlink+0x1cc>
80026dd8:	e24b2034 	sub	r2, fp, #52	@ 0x34
80026ddc:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026de0:	e1a01003 	mov	r1, r3
80026de4:	e51b0008 	ldr	r0, [fp, #-8]
80026de8:	ebfff44d 	bl	80023f24 <dirlookup>
80026dec:	e50b000c 	str	r0, [fp, #-12]
80026df0:	e51b300c 	ldr	r3, [fp, #-12]
80026df4:	e3530000 	cmp	r3, #0
80026df8:	0a000043 	beq	80026f0c <sys_unlink+0x1d4>
80026dfc:	e51b000c 	ldr	r0, [fp, #-12]
80026e00:	ebfff18c 	bl	80023438 <ilock>
80026e04:	e51b300c 	ldr	r3, [fp, #-12]
80026e08:	e1d331f6 	ldrsh	r3, [r3, #22]
80026e0c:	e3530000 	cmp	r3, #0
80026e10:	ca000001 	bgt	80026e1c <sys_unlink+0xe4>
80026e14:	e59f0118 	ldr	r0, [pc, #280]	@ 80026f34 <sys_unlink+0x1fc>
80026e18:	ebffeb23 	bl	80021aac <panic>
80026e1c:	e51b300c 	ldr	r3, [fp, #-12]
80026e20:	e1d331f0 	ldrsh	r3, [r3, #16]
80026e24:	e3530001 	cmp	r3, #1
80026e28:	1a000007 	bne	80026e4c <sys_unlink+0x114>
80026e2c:	e51b000c 	ldr	r0, [fp, #-12]
80026e30:	ebffff9d 	bl	80026cac <isdirempty>
80026e34:	e1a03000 	mov	r3, r0
80026e38:	e3530000 	cmp	r3, #0
80026e3c:	1a000002 	bne	80026e4c <sys_unlink+0x114>
80026e40:	e51b000c 	ldr	r0, [fp, #-12]
80026e44:	ebfff23c 	bl	8002373c <iunlockput>
80026e48:	ea000030 	b	80026f10 <sys_unlink+0x1d8>
80026e4c:	e24b301c 	sub	r3, fp, #28
80026e50:	e3a02010 	mov	r2, #16
80026e54:	e3a01000 	mov	r1, #0
80026e58:	e1a00003 	mov	r0, r3
80026e5c:	ebffe467 	bl	80020000 <memset>
80026e60:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80026e64:	e24b101c 	sub	r1, fp, #28
80026e68:	e3a03010 	mov	r3, #16
80026e6c:	e51b0008 	ldr	r0, [fp, #-8]
80026e70:	ebfff397 	bl	80023cd4 <writei>
80026e74:	e1a03000 	mov	r3, r0
80026e78:	e3530010 	cmp	r3, #16
80026e7c:	0a000001 	beq	80026e88 <sys_unlink+0x150>
80026e80:	e59f00b0 	ldr	r0, [pc, #176]	@ 80026f38 <sys_unlink+0x200>
80026e84:	ebffeb08 	bl	80021aac <panic>
80026e88:	e51b300c 	ldr	r3, [fp, #-12]
80026e8c:	e1d331f0 	ldrsh	r3, [r3, #16]
80026e90:	e3530001 	cmp	r3, #1
80026e94:	1a000009 	bne	80026ec0 <sys_unlink+0x188>
80026e98:	e51b3008 	ldr	r3, [fp, #-8]
80026e9c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026ea0:	e6ff3073 	uxth	r3, r3
80026ea4:	e2433001 	sub	r3, r3, #1
80026ea8:	e6ff3073 	uxth	r3, r3
80026eac:	e6bf2073 	sxth	r2, r3
80026eb0:	e51b3008 	ldr	r3, [fp, #-8]
80026eb4:	e1c321b6 	strh	r2, [r3, #22]
80026eb8:	e51b0008 	ldr	r0, [fp, #-8]
80026ebc:	ebfff0c3 	bl	800231d0 <iupdate>
80026ec0:	e51b0008 	ldr	r0, [fp, #-8]
80026ec4:	ebfff21c 	bl	8002373c <iunlockput>
80026ec8:	e51b300c 	ldr	r3, [fp, #-12]
80026ecc:	e1d331f6 	ldrsh	r3, [r3, #22]
80026ed0:	e6ff3073 	uxth	r3, r3
80026ed4:	e2433001 	sub	r3, r3, #1
80026ed8:	e6ff3073 	uxth	r3, r3
80026edc:	e6bf2073 	sxth	r2, r3
80026ee0:	e51b300c 	ldr	r3, [fp, #-12]
80026ee4:	e1c321b6 	strh	r2, [r3, #22]
80026ee8:	e51b000c 	ldr	r0, [fp, #-12]
80026eec:	ebfff0b7 	bl	800231d0 <iupdate>
80026ef0:	e51b000c 	ldr	r0, [fp, #-12]
80026ef4:	ebfff210 	bl	8002373c <iunlockput>
80026ef8:	ebfff60e 	bl	80024738 <commit_trans>
80026efc:	e3a03000 	mov	r3, #0
80026f00:	ea000006 	b	80026f20 <sys_unlink+0x1e8>
80026f04:	e1a00000 	nop			@ (mov r0, r0)
80026f08:	ea000000 	b	80026f10 <sys_unlink+0x1d8>
80026f0c:	e1a00000 	nop			@ (mov r0, r0)
80026f10:	e51b0008 	ldr	r0, [fp, #-8]
80026f14:	ebfff208 	bl	8002373c <iunlockput>
80026f18:	ebfff606 	bl	80024738 <commit_trans>
80026f1c:	e3e03000 	mvn	r3, #0
80026f20:	e1a00003 	mov	r0, r3
80026f24:	e24bd004 	sub	sp, fp, #4
80026f28:	e8bd8800 	pop	{fp, pc}
80026f2c:	8002a364 	.word	0x8002a364
80026f30:	8002a368 	.word	0x8002a368
80026f34:	8002a36c 	.word	0x8002a36c
80026f38:	8002a380 	.word	0x8002a380

80026f3c <create>:
80026f3c:	e92d4800 	push	{fp, lr}
80026f40:	e28db004 	add	fp, sp, #4
80026f44:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026f48:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80026f4c:	e1a00001 	mov	r0, r1
80026f50:	e1a01002 	mov	r1, r2
80026f54:	e1a02003 	mov	r2, r3
80026f58:	e1a03000 	mov	r3, r0
80026f5c:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80026f60:	e1a03001 	mov	r3, r1
80026f64:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80026f68:	e1a03002 	mov	r3, r2
80026f6c:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80026f70:	e24b3020 	sub	r3, fp, #32
80026f74:	e1a01003 	mov	r1, r3
80026f78:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80026f7c:	ebfff50d 	bl	800243b8 <nameiparent>
80026f80:	e50b0008 	str	r0, [fp, #-8]
80026f84:	e51b3008 	ldr	r3, [fp, #-8]
80026f88:	e3530000 	cmp	r3, #0
80026f8c:	1a000001 	bne	80026f98 <create+0x5c>
80026f90:	e3a03000 	mov	r3, #0
80026f94:	ea000063 	b	80027128 <create+0x1ec>
80026f98:	e51b0008 	ldr	r0, [fp, #-8]
80026f9c:	ebfff125 	bl	80023438 <ilock>
80026fa0:	e24b2010 	sub	r2, fp, #16
80026fa4:	e24b3020 	sub	r3, fp, #32
80026fa8:	e1a01003 	mov	r1, r3
80026fac:	e51b0008 	ldr	r0, [fp, #-8]
80026fb0:	ebfff3db 	bl	80023f24 <dirlookup>
80026fb4:	e50b000c 	str	r0, [fp, #-12]
80026fb8:	e51b300c 	ldr	r3, [fp, #-12]
80026fbc:	e3530000 	cmp	r3, #0
80026fc0:	0a000010 	beq	80027008 <create+0xcc>
80026fc4:	e51b0008 	ldr	r0, [fp, #-8]
80026fc8:	ebfff1db 	bl	8002373c <iunlockput>
80026fcc:	e51b000c 	ldr	r0, [fp, #-12]
80026fd0:	ebfff118 	bl	80023438 <ilock>
80026fd4:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026fd8:	e3530002 	cmp	r3, #2
80026fdc:	1a000005 	bne	80026ff8 <create+0xbc>
80026fe0:	e51b300c 	ldr	r3, [fp, #-12]
80026fe4:	e1d331f0 	ldrsh	r3, [r3, #16]
80026fe8:	e3530002 	cmp	r3, #2
80026fec:	1a000001 	bne	80026ff8 <create+0xbc>
80026ff0:	e51b300c 	ldr	r3, [fp, #-12]
80026ff4:	ea00004b 	b	80027128 <create+0x1ec>
80026ff8:	e51b000c 	ldr	r0, [fp, #-12]
80026ffc:	ebfff1ce 	bl	8002373c <iunlockput>
80027000:	e3a03000 	mov	r3, #0
80027004:	ea000047 	b	80027128 <create+0x1ec>
80027008:	e51b3008 	ldr	r3, [fp, #-8]
8002700c:	e5933000 	ldr	r3, [r3]
80027010:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80027014:	e1a01002 	mov	r1, r2
80027018:	e1a00003 	mov	r0, r3
8002701c:	ebfff02b 	bl	800230d0 <ialloc>
80027020:	e50b000c 	str	r0, [fp, #-12]
80027024:	e51b300c 	ldr	r3, [fp, #-12]
80027028:	e3530000 	cmp	r3, #0
8002702c:	1a000001 	bne	80027038 <create+0xfc>
80027030:	e59f00fc 	ldr	r0, [pc, #252]	@ 80027134 <create+0x1f8>
80027034:	ebffea9c 	bl	80021aac <panic>
80027038:	e51b000c 	ldr	r0, [fp, #-12]
8002703c:	ebfff0fd 	bl	80023438 <ilock>
80027040:	e51b300c 	ldr	r3, [fp, #-12]
80027044:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80027048:	e1c321b2 	strh	r2, [r3, #18]
8002704c:	e51b300c 	ldr	r3, [fp, #-12]
80027050:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
80027054:	e1c321b4 	strh	r2, [r3, #20]
80027058:	e51b300c 	ldr	r3, [fp, #-12]
8002705c:	e3a02001 	mov	r2, #1
80027060:	e1c321b6 	strh	r2, [r3, #22]
80027064:	e51b000c 	ldr	r0, [fp, #-12]
80027068:	ebfff058 	bl	800231d0 <iupdate>
8002706c:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80027070:	e3530001 	cmp	r3, #1
80027074:	1a00001d 	bne	800270f0 <create+0x1b4>
80027078:	e51b3008 	ldr	r3, [fp, #-8]
8002707c:	e1d331f6 	ldrsh	r3, [r3, #22]
80027080:	e6ff3073 	uxth	r3, r3
80027084:	e2833001 	add	r3, r3, #1
80027088:	e6ff3073 	uxth	r3, r3
8002708c:	e6bf2073 	sxth	r2, r3
80027090:	e51b3008 	ldr	r3, [fp, #-8]
80027094:	e1c321b6 	strh	r2, [r3, #22]
80027098:	e51b0008 	ldr	r0, [fp, #-8]
8002709c:	ebfff04b 	bl	800231d0 <iupdate>
800270a0:	e51b300c 	ldr	r3, [fp, #-12]
800270a4:	e5933004 	ldr	r3, [r3, #4]
800270a8:	e1a02003 	mov	r2, r3
800270ac:	e59f1084 	ldr	r1, [pc, #132]	@ 80027138 <create+0x1fc>
800270b0:	e51b000c 	ldr	r0, [fp, #-12]
800270b4:	ebfff3dc 	bl	8002402c <dirlink>
800270b8:	e1a03000 	mov	r3, r0
800270bc:	e3530000 	cmp	r3, #0
800270c0:	ba000008 	blt	800270e8 <create+0x1ac>
800270c4:	e51b3008 	ldr	r3, [fp, #-8]
800270c8:	e5933004 	ldr	r3, [r3, #4]
800270cc:	e1a02003 	mov	r2, r3
800270d0:	e59f1064 	ldr	r1, [pc, #100]	@ 8002713c <create+0x200>
800270d4:	e51b000c 	ldr	r0, [fp, #-12]
800270d8:	ebfff3d3 	bl	8002402c <dirlink>
800270dc:	e1a03000 	mov	r3, r0
800270e0:	e3530000 	cmp	r3, #0
800270e4:	aa000001 	bge	800270f0 <create+0x1b4>
800270e8:	e59f0050 	ldr	r0, [pc, #80]	@ 80027140 <create+0x204>
800270ec:	ebffea6e 	bl	80021aac <panic>
800270f0:	e51b300c 	ldr	r3, [fp, #-12]
800270f4:	e5932004 	ldr	r2, [r3, #4]
800270f8:	e24b3020 	sub	r3, fp, #32
800270fc:	e1a01003 	mov	r1, r3
80027100:	e51b0008 	ldr	r0, [fp, #-8]
80027104:	ebfff3c8 	bl	8002402c <dirlink>
80027108:	e1a03000 	mov	r3, r0
8002710c:	e3530000 	cmp	r3, #0
80027110:	aa000001 	bge	8002711c <create+0x1e0>
80027114:	e59f0028 	ldr	r0, [pc, #40]	@ 80027144 <create+0x208>
80027118:	ebffea63 	bl	80021aac <panic>
8002711c:	e51b0008 	ldr	r0, [fp, #-8]
80027120:	ebfff185 	bl	8002373c <iunlockput>
80027124:	e51b300c 	ldr	r3, [fp, #-12]
80027128:	e1a00003 	mov	r0, r3
8002712c:	e24bd004 	sub	sp, fp, #4
80027130:	e8bd8800 	pop	{fp, pc}
80027134:	8002a390 	.word	0x8002a390
80027138:	8002a364 	.word	0x8002a364
8002713c:	8002a368 	.word	0x8002a368
80027140:	8002a3a0 	.word	0x8002a3a0
80027144:	8002a3ac 	.word	0x8002a3ac

80027148 <sys_open>:
80027148:	e92d4800 	push	{fp, lr}
8002714c:	e28db004 	add	fp, sp, #4
80027150:	e24dd018 	sub	sp, sp, #24
80027154:	e24b3014 	sub	r3, fp, #20
80027158:	e1a01003 	mov	r1, r3
8002715c:	e3a00000 	mov	r0, #0
80027160:	ebfffd21 	bl	800265ec <argstr>
80027164:	e1a03000 	mov	r3, r0
80027168:	e3530000 	cmp	r3, #0
8002716c:	ba000006 	blt	8002718c <sys_open+0x44>
80027170:	e24b3018 	sub	r3, fp, #24
80027174:	e1a01003 	mov	r1, r3
80027178:	e3a00001 	mov	r0, #1
8002717c:	ebfffcd6 	bl	800264dc <argint>
80027180:	e1a03000 	mov	r3, r0
80027184:	e3530000 	cmp	r3, #0
80027188:	aa000001 	bge	80027194 <sys_open+0x4c>
8002718c:	e3e03000 	mvn	r3, #0
80027190:	ea00005d 	b	8002730c <sys_open+0x1c4>
80027194:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027198:	e2033c02 	and	r3, r3, #512	@ 0x200
8002719c:	e3530000 	cmp	r3, #0
800271a0:	0a00000c 	beq	800271d8 <sys_open+0x90>
800271a4:	ebfff54f 	bl	800246e8 <begin_trans>
800271a8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800271ac:	e3a03000 	mov	r3, #0
800271b0:	e3a02000 	mov	r2, #0
800271b4:	e3a01002 	mov	r1, #2
800271b8:	ebffff5f 	bl	80026f3c <create>
800271bc:	e50b0008 	str	r0, [fp, #-8]
800271c0:	ebfff55c 	bl	80024738 <commit_trans>
800271c4:	e51b3008 	ldr	r3, [fp, #-8]
800271c8:	e3530000 	cmp	r3, #0
800271cc:	1a000017 	bne	80027230 <sys_open+0xe8>
800271d0:	e3e03000 	mvn	r3, #0
800271d4:	ea00004c 	b	8002730c <sys_open+0x1c4>
800271d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800271dc:	e1a00003 	mov	r0, r3
800271e0:	ebfff467 	bl	80024384 <namei>
800271e4:	e50b0008 	str	r0, [fp, #-8]
800271e8:	e51b3008 	ldr	r3, [fp, #-8]
800271ec:	e3530000 	cmp	r3, #0
800271f0:	1a000001 	bne	800271fc <sys_open+0xb4>
800271f4:	e3e03000 	mvn	r3, #0
800271f8:	ea000043 	b	8002730c <sys_open+0x1c4>
800271fc:	e51b0008 	ldr	r0, [fp, #-8]
80027200:	ebfff08c 	bl	80023438 <ilock>
80027204:	e51b3008 	ldr	r3, [fp, #-8]
80027208:	e1d331f0 	ldrsh	r3, [r3, #16]
8002720c:	e3530001 	cmp	r3, #1
80027210:	1a000006 	bne	80027230 <sys_open+0xe8>
80027214:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027218:	e3530000 	cmp	r3, #0
8002721c:	0a000003 	beq	80027230 <sys_open+0xe8>
80027220:	e51b0008 	ldr	r0, [fp, #-8]
80027224:	ebfff144 	bl	8002373c <iunlockput>
80027228:	e3e03000 	mvn	r3, #0
8002722c:	ea000036 	b	8002730c <sys_open+0x1c4>
80027230:	ebffed79 	bl	8002281c <filealloc>
80027234:	e50b000c 	str	r0, [fp, #-12]
80027238:	e51b300c 	ldr	r3, [fp, #-12]
8002723c:	e3530000 	cmp	r3, #0
80027240:	0a000005 	beq	8002725c <sys_open+0x114>
80027244:	e51b000c 	ldr	r0, [fp, #-12]
80027248:	ebfffd69 	bl	800267f4 <fdalloc>
8002724c:	e50b0010 	str	r0, [fp, #-16]
80027250:	e51b3010 	ldr	r3, [fp, #-16]
80027254:	e3530000 	cmp	r3, #0
80027258:	aa000008 	bge	80027280 <sys_open+0x138>
8002725c:	e51b300c 	ldr	r3, [fp, #-12]
80027260:	e3530000 	cmp	r3, #0
80027264:	0a000001 	beq	80027270 <sys_open+0x128>
80027268:	e51b000c 	ldr	r0, [fp, #-12]
8002726c:	ebffeda6 	bl	8002290c <fileclose>
80027270:	e51b0008 	ldr	r0, [fp, #-8]
80027274:	ebfff130 	bl	8002373c <iunlockput>
80027278:	e3e03000 	mvn	r3, #0
8002727c:	ea000022 	b	8002730c <sys_open+0x1c4>
80027280:	e51b0008 	ldr	r0, [fp, #-8]
80027284:	ebfff0cf 	bl	800235c8 <iunlock>
80027288:	e51b300c 	ldr	r3, [fp, #-12]
8002728c:	e3a02002 	mov	r2, #2
80027290:	e5c32000 	strb	r2, [r3]
80027294:	e51b300c 	ldr	r3, [fp, #-12]
80027298:	e51b2008 	ldr	r2, [fp, #-8]
8002729c:	e5832010 	str	r2, [r3, #16]
800272a0:	e51b300c 	ldr	r3, [fp, #-12]
800272a4:	e3a02000 	mov	r2, #0
800272a8:	e5832014 	str	r2, [r3, #20]
800272ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800272b0:	e2033001 	and	r3, r3, #1
800272b4:	e3530000 	cmp	r3, #0
800272b8:	03a03001 	moveq	r3, #1
800272bc:	13a03000 	movne	r3, #0
800272c0:	e6ef3073 	uxtb	r3, r3
800272c4:	e1a02003 	mov	r2, r3
800272c8:	e51b300c 	ldr	r3, [fp, #-12]
800272cc:	e5c32008 	strb	r2, [r3, #8]
800272d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800272d4:	e2033001 	and	r3, r3, #1
800272d8:	e3530000 	cmp	r3, #0
800272dc:	1a000003 	bne	800272f0 <sys_open+0x1a8>
800272e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800272e4:	e2033002 	and	r3, r3, #2
800272e8:	e3530000 	cmp	r3, #0
800272ec:	0a000001 	beq	800272f8 <sys_open+0x1b0>
800272f0:	e3a03001 	mov	r3, #1
800272f4:	ea000000 	b	800272fc <sys_open+0x1b4>
800272f8:	e3a03000 	mov	r3, #0
800272fc:	e6ef2073 	uxtb	r2, r3
80027300:	e51b300c 	ldr	r3, [fp, #-12]
80027304:	e5c32009 	strb	r2, [r3, #9]
80027308:	e51b3010 	ldr	r3, [fp, #-16]
8002730c:	e1a00003 	mov	r0, r3
80027310:	e24bd004 	sub	sp, fp, #4
80027314:	e8bd8800 	pop	{fp, pc}

80027318 <sys_mkdir>:
80027318:	e92d4800 	push	{fp, lr}
8002731c:	e28db004 	add	fp, sp, #4
80027320:	e24dd008 	sub	sp, sp, #8
80027324:	ebfff4ef 	bl	800246e8 <begin_trans>
80027328:	e24b300c 	sub	r3, fp, #12
8002732c:	e1a01003 	mov	r1, r3
80027330:	e3a00000 	mov	r0, #0
80027334:	ebfffcac 	bl	800265ec <argstr>
80027338:	e1a03000 	mov	r3, r0
8002733c:	e3530000 	cmp	r3, #0
80027340:	ba000008 	blt	80027368 <sys_mkdir+0x50>
80027344:	e51b000c 	ldr	r0, [fp, #-12]
80027348:	e3a03000 	mov	r3, #0
8002734c:	e3a02000 	mov	r2, #0
80027350:	e3a01001 	mov	r1, #1
80027354:	ebfffef8 	bl	80026f3c <create>
80027358:	e50b0008 	str	r0, [fp, #-8]
8002735c:	e51b3008 	ldr	r3, [fp, #-8]
80027360:	e3530000 	cmp	r3, #0
80027364:	1a000002 	bne	80027374 <sys_mkdir+0x5c>
80027368:	ebfff4f2 	bl	80024738 <commit_trans>
8002736c:	e3e03000 	mvn	r3, #0
80027370:	ea000003 	b	80027384 <sys_mkdir+0x6c>
80027374:	e51b0008 	ldr	r0, [fp, #-8]
80027378:	ebfff0ef 	bl	8002373c <iunlockput>
8002737c:	ebfff4ed 	bl	80024738 <commit_trans>
80027380:	e3a03000 	mov	r3, #0
80027384:	e1a00003 	mov	r0, r3
80027388:	e24bd004 	sub	sp, fp, #4
8002738c:	e8bd8800 	pop	{fp, pc}

80027390 <sys_mknod>:
80027390:	e92d4800 	push	{fp, lr}
80027394:	e28db004 	add	fp, sp, #4
80027398:	e24dd018 	sub	sp, sp, #24
8002739c:	ebfff4d1 	bl	800246e8 <begin_trans>
800273a0:	e24b3010 	sub	r3, fp, #16
800273a4:	e1a01003 	mov	r1, r3
800273a8:	e3a00000 	mov	r0, #0
800273ac:	ebfffc8e 	bl	800265ec <argstr>
800273b0:	e50b0008 	str	r0, [fp, #-8]
800273b4:	e51b3008 	ldr	r3, [fp, #-8]
800273b8:	e3530000 	cmp	r3, #0
800273bc:	ba000018 	blt	80027424 <sys_mknod+0x94>
800273c0:	e24b3014 	sub	r3, fp, #20
800273c4:	e1a01003 	mov	r1, r3
800273c8:	e3a00001 	mov	r0, #1
800273cc:	ebfffc42 	bl	800264dc <argint>
800273d0:	e1a03000 	mov	r3, r0
800273d4:	e3530000 	cmp	r3, #0
800273d8:	ba000011 	blt	80027424 <sys_mknod+0x94>
800273dc:	e24b3018 	sub	r3, fp, #24
800273e0:	e1a01003 	mov	r1, r3
800273e4:	e3a00002 	mov	r0, #2
800273e8:	ebfffc3b 	bl	800264dc <argint>
800273ec:	e1a03000 	mov	r3, r0
800273f0:	e3530000 	cmp	r3, #0
800273f4:	ba00000a 	blt	80027424 <sys_mknod+0x94>
800273f8:	e51b0010 	ldr	r0, [fp, #-16]
800273fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027400:	e6bf2073 	sxth	r2, r3
80027404:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027408:	e6bf3073 	sxth	r3, r3
8002740c:	e3a01003 	mov	r1, #3
80027410:	ebfffec9 	bl	80026f3c <create>
80027414:	e50b000c 	str	r0, [fp, #-12]
80027418:	e51b300c 	ldr	r3, [fp, #-12]
8002741c:	e3530000 	cmp	r3, #0
80027420:	1a000002 	bne	80027430 <sys_mknod+0xa0>
80027424:	ebfff4c3 	bl	80024738 <commit_trans>
80027428:	e3e03000 	mvn	r3, #0
8002742c:	ea000003 	b	80027440 <sys_mknod+0xb0>
80027430:	e51b000c 	ldr	r0, [fp, #-12]
80027434:	ebfff0c0 	bl	8002373c <iunlockput>
80027438:	ebfff4be 	bl	80024738 <commit_trans>
8002743c:	e3a03000 	mov	r3, #0
80027440:	e1a00003 	mov	r0, r3
80027444:	e24bd004 	sub	sp, fp, #4
80027448:	e8bd8800 	pop	{fp, pc}

8002744c <sys_chdir>:
8002744c:	e92d4800 	push	{fp, lr}
80027450:	e28db004 	add	fp, sp, #4
80027454:	e24dd008 	sub	sp, sp, #8
80027458:	e24b300c 	sub	r3, fp, #12
8002745c:	e1a01003 	mov	r1, r3
80027460:	e3a00000 	mov	r0, #0
80027464:	ebfffc60 	bl	800265ec <argstr>
80027468:	e1a03000 	mov	r3, r0
8002746c:	e3530000 	cmp	r3, #0
80027470:	ba000006 	blt	80027490 <sys_chdir+0x44>
80027474:	e51b300c 	ldr	r3, [fp, #-12]
80027478:	e1a00003 	mov	r0, r3
8002747c:	ebfff3c0 	bl	80024384 <namei>
80027480:	e50b0008 	str	r0, [fp, #-8]
80027484:	e51b3008 	ldr	r3, [fp, #-8]
80027488:	e3530000 	cmp	r3, #0
8002748c:	1a000001 	bne	80027498 <sys_chdir+0x4c>
80027490:	e3e03000 	mvn	r3, #0
80027494:	ea000015 	b	800274f0 <sys_chdir+0xa4>
80027498:	e51b0008 	ldr	r0, [fp, #-8]
8002749c:	ebffefe5 	bl	80023438 <ilock>
800274a0:	e51b3008 	ldr	r3, [fp, #-8]
800274a4:	e1d331f0 	ldrsh	r3, [r3, #16]
800274a8:	e3530001 	cmp	r3, #1
800274ac:	0a000003 	beq	800274c0 <sys_chdir+0x74>
800274b0:	e51b0008 	ldr	r0, [fp, #-8]
800274b4:	ebfff0a0 	bl	8002373c <iunlockput>
800274b8:	e3e03000 	mvn	r3, #0
800274bc:	ea00000b 	b	800274f0 <sys_chdir+0xa4>
800274c0:	e51b0008 	ldr	r0, [fp, #-8]
800274c4:	ebfff03f 	bl	800235c8 <iunlock>
800274c8:	e59f302c 	ldr	r3, [pc, #44]	@ 800274fc <sys_chdir+0xb0>
800274cc:	e5933000 	ldr	r3, [r3]
800274d0:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800274d4:	e1a00003 	mov	r0, r3
800274d8:	ebfff05c 	bl	80023650 <iput>
800274dc:	e59f3018 	ldr	r3, [pc, #24]	@ 800274fc <sys_chdir+0xb0>
800274e0:	e5933000 	ldr	r3, [r3]
800274e4:	e51b2008 	ldr	r2, [fp, #-8]
800274e8:	e5832068 	str	r2, [r3, #104]	@ 0x68
800274ec:	e3a03000 	mov	r3, #0
800274f0:	e1a00003 	mov	r0, r3
800274f4:	e24bd004 	sub	sp, fp, #4
800274f8:	e8bd8800 	pop	{fp, pc}
800274fc:	800b0dc0 	.word	0x800b0dc0

80027500 <sys_exec>:
80027500:	e92d4800 	push	{fp, lr}
80027504:	e28db004 	add	fp, sp, #4
80027508:	e24dd090 	sub	sp, sp, #144	@ 0x90
8002750c:	e24b300c 	sub	r3, fp, #12
80027510:	e1a01003 	mov	r1, r3
80027514:	e3a00000 	mov	r0, #0
80027518:	ebfffc33 	bl	800265ec <argstr>
8002751c:	e1a03000 	mov	r3, r0
80027520:	e3530000 	cmp	r3, #0
80027524:	ba000006 	blt	80027544 <sys_exec+0x44>
80027528:	e24b3090 	sub	r3, fp, #144	@ 0x90
8002752c:	e1a01003 	mov	r1, r3
80027530:	e3a00001 	mov	r0, #1
80027534:	ebfffbe8 	bl	800264dc <argint>
80027538:	e1a03000 	mov	r3, r0
8002753c:	e3530000 	cmp	r3, #0
80027540:	aa000001 	bge	8002754c <sys_exec+0x4c>
80027544:	e3e03000 	mvn	r3, #0
80027548:	ea00003a 	b	80027638 <sys_exec+0x138>
8002754c:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80027550:	e3a02080 	mov	r2, #128	@ 0x80
80027554:	e3a01000 	mov	r1, #0
80027558:	e1a00003 	mov	r0, r3
8002755c:	ebffe2a7 	bl	80020000 <memset>
80027560:	e3a03000 	mov	r3, #0
80027564:	e50b3008 	str	r3, [fp, #-8]
80027568:	e51b3008 	ldr	r3, [fp, #-8]
8002756c:	e353001f 	cmp	r3, #31
80027570:	9a000001 	bls	8002757c <sys_exec+0x7c>
80027574:	e3e03000 	mvn	r3, #0
80027578:	ea00002e 	b	80027638 <sys_exec+0x138>
8002757c:	e51b3008 	ldr	r3, [fp, #-8]
80027580:	e1a03103 	lsl	r3, r3, #2
80027584:	e1a02003 	mov	r2, r3
80027588:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
8002758c:	e0823003 	add	r3, r2, r3
80027590:	e24b2094 	sub	r2, fp, #148	@ 0x94
80027594:	e1a01002 	mov	r1, r2
80027598:	e1a00003 	mov	r0, r3
8002759c:	ebfffb82 	bl	800263ac <fetchint>
800275a0:	e1a03000 	mov	r3, r0
800275a4:	e3530000 	cmp	r3, #0
800275a8:	aa000001 	bge	800275b4 <sys_exec+0xb4>
800275ac:	e3e03000 	mvn	r3, #0
800275b0:	ea000020 	b	80027638 <sys_exec+0x138>
800275b4:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
800275b8:	e3530000 	cmp	r3, #0
800275bc:	1a00000d 	bne	800275f8 <sys_exec+0xf8>
800275c0:	e51b3008 	ldr	r3, [fp, #-8]
800275c4:	e1a03103 	lsl	r3, r3, #2
800275c8:	e2433004 	sub	r3, r3, #4
800275cc:	e083300b 	add	r3, r3, fp
800275d0:	e3a02000 	mov	r2, #0
800275d4:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
800275d8:	e1a00000 	nop			@ (mov r0, r0)
800275dc:	e51b300c 	ldr	r3, [fp, #-12]
800275e0:	e24b208c 	sub	r2, fp, #140	@ 0x8c
800275e4:	e1a01002 	mov	r1, r2
800275e8:	e1a00003 	mov	r0, r3
800275ec:	ebffeb4e 	bl	8002232c <exec>
800275f0:	e1a03000 	mov	r3, r0
800275f4:	ea00000f 	b	80027638 <sys_exec+0x138>
800275f8:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
800275fc:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027600:	e51b3008 	ldr	r3, [fp, #-8]
80027604:	e1a03103 	lsl	r3, r3, #2
80027608:	e0823003 	add	r3, r2, r3
8002760c:	e1a01003 	mov	r1, r3
80027610:	ebfffb83 	bl	80026424 <fetchstr>
80027614:	e1a03000 	mov	r3, r0
80027618:	e3530000 	cmp	r3, #0
8002761c:	aa000001 	bge	80027628 <sys_exec+0x128>
80027620:	e3e03000 	mvn	r3, #0
80027624:	ea000003 	b	80027638 <sys_exec+0x138>
80027628:	e51b3008 	ldr	r3, [fp, #-8]
8002762c:	e2833001 	add	r3, r3, #1
80027630:	e50b3008 	str	r3, [fp, #-8]
80027634:	eaffffcb 	b	80027568 <sys_exec+0x68>
80027638:	e1a00003 	mov	r0, r3
8002763c:	e24bd004 	sub	sp, fp, #4
80027640:	e8bd8800 	pop	{fp, pc}

80027644 <sys_pipe>:
80027644:	e92d4800 	push	{fp, lr}
80027648:	e28db004 	add	fp, sp, #4
8002764c:	e24dd018 	sub	sp, sp, #24
80027650:	e24b3010 	sub	r3, fp, #16
80027654:	e3a02008 	mov	r2, #8
80027658:	e1a01003 	mov	r1, r3
8002765c:	e3a00000 	mov	r0, #0
80027660:	ebfffbb8 	bl	80026548 <argptr>
80027664:	e1a03000 	mov	r3, r0
80027668:	e3530000 	cmp	r3, #0
8002766c:	aa000001 	bge	80027678 <sys_pipe+0x34>
80027670:	e3e03000 	mvn	r3, #0
80027674:	ea000032 	b	80027744 <sys_pipe+0x100>
80027678:	e24b2018 	sub	r2, fp, #24
8002767c:	e24b3014 	sub	r3, fp, #20
80027680:	e1a01002 	mov	r1, r2
80027684:	e1a00003 	mov	r0, r3
80027688:	ebfff53d 	bl	80024b84 <pipealloc>
8002768c:	e1a03000 	mov	r3, r0
80027690:	e3530000 	cmp	r3, #0
80027694:	aa000001 	bge	800276a0 <sys_pipe+0x5c>
80027698:	e3e03000 	mvn	r3, #0
8002769c:	ea000028 	b	80027744 <sys_pipe+0x100>
800276a0:	e3e03000 	mvn	r3, #0
800276a4:	e50b3008 	str	r3, [fp, #-8]
800276a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800276ac:	e1a00003 	mov	r0, r3
800276b0:	ebfffc4f 	bl	800267f4 <fdalloc>
800276b4:	e50b0008 	str	r0, [fp, #-8]
800276b8:	e51b3008 	ldr	r3, [fp, #-8]
800276bc:	e3530000 	cmp	r3, #0
800276c0:	ba000006 	blt	800276e0 <sys_pipe+0x9c>
800276c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800276c8:	e1a00003 	mov	r0, r3
800276cc:	ebfffc48 	bl	800267f4 <fdalloc>
800276d0:	e50b000c 	str	r0, [fp, #-12]
800276d4:	e51b300c 	ldr	r3, [fp, #-12]
800276d8:	e3530000 	cmp	r3, #0
800276dc:	aa000010 	bge	80027724 <sys_pipe+0xe0>
800276e0:	e51b3008 	ldr	r3, [fp, #-8]
800276e4:	e3530000 	cmp	r3, #0
800276e8:	ba000005 	blt	80027704 <sys_pipe+0xc0>
800276ec:	e59f305c 	ldr	r3, [pc, #92]	@ 80027750 <sys_pipe+0x10c>
800276f0:	e5933000 	ldr	r3, [r3]
800276f4:	e51b2008 	ldr	r2, [fp, #-8]
800276f8:	e282200a 	add	r2, r2, #10
800276fc:	e3a01000 	mov	r1, #0
80027700:	e7831102 	str	r1, [r3, r2, lsl #2]
80027704:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027708:	e1a00003 	mov	r0, r3
8002770c:	ebffec7e 	bl	8002290c <fileclose>
80027710:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027714:	e1a00003 	mov	r0, r3
80027718:	ebffec7b 	bl	8002290c <fileclose>
8002771c:	e3e03000 	mvn	r3, #0
80027720:	ea000007 	b	80027744 <sys_pipe+0x100>
80027724:	e51b3010 	ldr	r3, [fp, #-16]
80027728:	e51b2008 	ldr	r2, [fp, #-8]
8002772c:	e5832000 	str	r2, [r3]
80027730:	e51b3010 	ldr	r3, [fp, #-16]
80027734:	e2833004 	add	r3, r3, #4
80027738:	e51b200c 	ldr	r2, [fp, #-12]
8002773c:	e5832000 	str	r2, [r3]
80027740:	e3a03000 	mov	r3, #0
80027744:	e1a00003 	mov	r0, r3
80027748:	e24bd004 	sub	sp, fp, #4
8002774c:	e8bd8800 	pop	{fp, pc}
80027750:	800b0dc0 	.word	0x800b0dc0

80027754 <sys_fork>:
80027754:	e92d4800 	push	{fp, lr}
80027758:	e28db004 	add	fp, sp, #4
8002775c:	ebfff76e 	bl	8002551c <fork>
80027760:	e1a03000 	mov	r3, r0
80027764:	e1a00003 	mov	r0, r3
80027768:	e8bd8800 	pop	{fp, pc}

8002776c <sys_exit>:
8002776c:	e92d4800 	push	{fp, lr}
80027770:	e28db004 	add	fp, sp, #4
80027774:	ebfff7ed 	bl	80025730 <exit>
80027778:	e3a03000 	mov	r3, #0
8002777c:	e1a00003 	mov	r0, r3
80027780:	e8bd8800 	pop	{fp, pc}

80027784 <sys_wait>:
80027784:	e92d4800 	push	{fp, lr}
80027788:	e28db004 	add	fp, sp, #4
8002778c:	ebfff849 	bl	800258b8 <wait>
80027790:	e1a03000 	mov	r3, r0
80027794:	e1a00003 	mov	r0, r3
80027798:	e8bd8800 	pop	{fp, pc}

8002779c <sys_kill>:
8002779c:	e92d4800 	push	{fp, lr}
800277a0:	e28db004 	add	fp, sp, #4
800277a4:	e24dd008 	sub	sp, sp, #8
800277a8:	e24b3008 	sub	r3, fp, #8
800277ac:	e1a01003 	mov	r1, r3
800277b0:	e3a00000 	mov	r0, #0
800277b4:	ebfffb48 	bl	800264dc <argint>
800277b8:	e1a03000 	mov	r3, r0
800277bc:	e3530000 	cmp	r3, #0
800277c0:	aa000001 	bge	800277cc <sys_kill+0x30>
800277c4:	e3e03000 	mvn	r3, #0
800277c8:	ea000003 	b	800277dc <sys_kill+0x40>
800277cc:	e51b3008 	ldr	r3, [fp, #-8]
800277d0:	e1a00003 	mov	r0, r3
800277d4:	ebfffa1e 	bl	80026054 <kill>
800277d8:	e1a03000 	mov	r3, r0
800277dc:	e1a00003 	mov	r0, r3
800277e0:	e24bd004 	sub	sp, fp, #4
800277e4:	e8bd8800 	pop	{fp, pc}

800277e8 <sys_getpid>:
800277e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800277ec:	e28db000 	add	fp, sp, #0
800277f0:	e59f3014 	ldr	r3, [pc, #20]	@ 8002780c <sys_getpid+0x24>
800277f4:	e5933000 	ldr	r3, [r3]
800277f8:	e5933010 	ldr	r3, [r3, #16]
800277fc:	e1a00003 	mov	r0, r3
80027800:	e28bd000 	add	sp, fp, #0
80027804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027808:	e12fff1e 	bx	lr
8002780c:	800b0dc0 	.word	0x800b0dc0

80027810 <sys_sbrk>:
80027810:	e92d4800 	push	{fp, lr}
80027814:	e28db004 	add	fp, sp, #4
80027818:	e24dd008 	sub	sp, sp, #8
8002781c:	e24b300c 	sub	r3, fp, #12
80027820:	e1a01003 	mov	r1, r3
80027824:	e3a00000 	mov	r0, #0
80027828:	ebfffb2b 	bl	800264dc <argint>
8002782c:	e1a03000 	mov	r3, r0
80027830:	e3530000 	cmp	r3, #0
80027834:	aa000001 	bge	80027840 <sys_sbrk+0x30>
80027838:	e3e03000 	mvn	r3, #0
8002783c:	ea00000c 	b	80027874 <sys_sbrk+0x64>
80027840:	e59f3038 	ldr	r3, [pc, #56]	@ 80027880 <sys_sbrk+0x70>
80027844:	e5933000 	ldr	r3, [r3]
80027848:	e5933000 	ldr	r3, [r3]
8002784c:	e50b3008 	str	r3, [fp, #-8]
80027850:	e51b300c 	ldr	r3, [fp, #-12]
80027854:	e1a00003 	mov	r0, r3
80027858:	ebfff6f8 	bl	80025440 <growproc>
8002785c:	e1a03000 	mov	r3, r0
80027860:	e3530000 	cmp	r3, #0
80027864:	aa000001 	bge	80027870 <sys_sbrk+0x60>
80027868:	e3e03000 	mvn	r3, #0
8002786c:	ea000000 	b	80027874 <sys_sbrk+0x64>
80027870:	e51b3008 	ldr	r3, [fp, #-8]
80027874:	e1a00003 	mov	r0, r3
80027878:	e24bd004 	sub	sp, fp, #4
8002787c:	e8bd8800 	pop	{fp, pc}
80027880:	800b0dc0 	.word	0x800b0dc0

80027884 <sys_sleep>:
80027884:	e92d4800 	push	{fp, lr}
80027888:	e28db004 	add	fp, sp, #4
8002788c:	e24dd008 	sub	sp, sp, #8
80027890:	e24b300c 	sub	r3, fp, #12
80027894:	e1a01003 	mov	r1, r3
80027898:	e3a00000 	mov	r0, #0
8002789c:	ebfffb0e 	bl	800264dc <argint>
800278a0:	e1a03000 	mov	r3, r0
800278a4:	e3530000 	cmp	r3, #0
800278a8:	aa000001 	bge	800278b4 <sys_sleep+0x30>
800278ac:	e3e03000 	mvn	r3, #0
800278b0:	ea000023 	b	80027944 <sys_sleep+0xc0>
800278b4:	e59f0094 	ldr	r0, [pc, #148]	@ 80027950 <sys_sleep+0xcc>
800278b8:	ebfffa96 	bl	80026318 <acquire>
800278bc:	e59f3090 	ldr	r3, [pc, #144]	@ 80027954 <sys_sleep+0xd0>
800278c0:	e5933000 	ldr	r3, [r3]
800278c4:	e50b3008 	str	r3, [fp, #-8]
800278c8:	e59f3084 	ldr	r3, [pc, #132]	@ 80027954 <sys_sleep+0xd0>
800278cc:	e5932000 	ldr	r2, [r3]
800278d0:	e51b300c 	ldr	r3, [fp, #-12]
800278d4:	e1a01003 	mov	r1, r3
800278d8:	e59f3078 	ldr	r3, [pc, #120]	@ 80027958 <sys_sleep+0xd4>
800278dc:	e5933000 	ldr	r3, [r3]
800278e0:	e0822001 	add	r2, r2, r1
800278e4:	e5832090 	str	r2, [r3, #144]	@ 0x90
800278e8:	ea00000b 	b	8002791c <sys_sleep+0x98>
800278ec:	e59f3064 	ldr	r3, [pc, #100]	@ 80027958 <sys_sleep+0xd4>
800278f0:	e5933000 	ldr	r3, [r3]
800278f4:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800278f8:	e3530000 	cmp	r3, #0
800278fc:	0a000003 	beq	80027910 <sys_sleep+0x8c>
80027900:	e59f0048 	ldr	r0, [pc, #72]	@ 80027950 <sys_sleep+0xcc>
80027904:	ebfffa8e 	bl	80026344 <release>
80027908:	e3e03000 	mvn	r3, #0
8002790c:	ea00000c 	b	80027944 <sys_sleep+0xc0>
80027910:	e59f1038 	ldr	r1, [pc, #56]	@ 80027950 <sys_sleep+0xcc>
80027914:	e59f0038 	ldr	r0, [pc, #56]	@ 80027954 <sys_sleep+0xd0>
80027918:	ebfff92b 	bl	80025dcc <sleep>
8002791c:	e59f3030 	ldr	r3, [pc, #48]	@ 80027954 <sys_sleep+0xd0>
80027920:	e5932000 	ldr	r2, [r3]
80027924:	e51b3008 	ldr	r3, [fp, #-8]
80027928:	e0423003 	sub	r3, r2, r3
8002792c:	e51b200c 	ldr	r2, [fp, #-12]
80027930:	e1530002 	cmp	r3, r2
80027934:	3affffec 	bcc	800278ec <sys_sleep+0x68>
80027938:	e59f0010 	ldr	r0, [pc, #16]	@ 80027950 <sys_sleep+0xcc>
8002793c:	ebfffa80 	bl	80026344 <release>
80027940:	e3a03000 	mov	r3, #0
80027944:	e1a00003 	mov	r0, r3
80027948:	e24bd004 	sub	sp, fp, #4
8002794c:	e8bd8800 	pop	{fp, pc}
80027950:	800b0e84 	.word	0x800b0e84
80027954:	800b0eb8 	.word	0x800b0eb8
80027958:	800b0dc0 	.word	0x800b0dc0

8002795c <sys_uptime>:
8002795c:	e92d4800 	push	{fp, lr}
80027960:	e28db004 	add	fp, sp, #4
80027964:	e24dd008 	sub	sp, sp, #8
80027968:	e59f0024 	ldr	r0, [pc, #36]	@ 80027994 <sys_uptime+0x38>
8002796c:	ebfffa69 	bl	80026318 <acquire>
80027970:	e59f3020 	ldr	r3, [pc, #32]	@ 80027998 <sys_uptime+0x3c>
80027974:	e5933000 	ldr	r3, [r3]
80027978:	e50b3008 	str	r3, [fp, #-8]
8002797c:	e59f0010 	ldr	r0, [pc, #16]	@ 80027994 <sys_uptime+0x38>
80027980:	ebfffa6f 	bl	80026344 <release>
80027984:	e51b3008 	ldr	r3, [fp, #-8]
80027988:	e1a00003 	mov	r0, r3
8002798c:	e24bd004 	sub	sp, fp, #4
80027990:	e8bd8800 	pop	{fp, pc}
80027994:	800b0e84 	.word	0x800b0e84
80027998:	800b0eb8 	.word	0x800b0eb8

8002799c <sys_ps>:
8002799c:	e92d4800 	push	{fp, lr}
800279a0:	e28db004 	add	fp, sp, #4
800279a4:	ebfffa0f 	bl	800261e8 <psdump>
800279a8:	e3a03000 	mov	r3, #0
800279ac:	e1a00003 	mov	r0, r3
800279b0:	e8bd8800 	pop	{fp, pc}

800279b4 <sys_srand>:
800279b4:	e92d4800 	push	{fp, lr}
800279b8:	e28db004 	add	fp, sp, #4
800279bc:	e24dd008 	sub	sp, sp, #8
800279c0:	e24b3008 	sub	r3, fp, #8
800279c4:	e1a01003 	mov	r1, r3
800279c8:	e3a00000 	mov	r0, #0
800279cc:	ebfffac2 	bl	800264dc <argint>
800279d0:	e1a03000 	mov	r3, r0
800279d4:	e3530000 	cmp	r3, #0
800279d8:	aa000001 	bge	800279e4 <sys_srand+0x30>
800279dc:	e3e03000 	mvn	r3, #0
800279e0:	ea000004 	b	800279f8 <sys_srand+0x44>
800279e4:	e51b3008 	ldr	r3, [fp, #-8]
800279e8:	e1a02003 	mov	r2, r3
800279ec:	e59f3010 	ldr	r3, [pc, #16]	@ 80027a04 <sys_srand+0x50>
800279f0:	e5832000 	str	r2, [r3]
800279f4:	e3a03000 	mov	r3, #0
800279f8:	e1a00003 	mov	r0, r3
800279fc:	e24bd004 	sub	sp, fp, #4
80027a00:	e8bd8800 	pop	{fp, pc}
80027a04:	800ae684 	.word	0x800ae684

80027a08 <sys_settickets>:
80027a08:	e92d4800 	push	{fp, lr}
80027a0c:	e28db004 	add	fp, sp, #4
80027a10:	e24dd010 	sub	sp, sp, #16
80027a14:	e24b300c 	sub	r3, fp, #12
80027a18:	e1a01003 	mov	r1, r3
80027a1c:	e3a00000 	mov	r0, #0
80027a20:	ebfffaad 	bl	800264dc <argint>
80027a24:	e1a03000 	mov	r3, r0
80027a28:	e3530000 	cmp	r3, #0
80027a2c:	ba000006 	blt	80027a4c <sys_settickets+0x44>
80027a30:	e24b3010 	sub	r3, fp, #16
80027a34:	e1a01003 	mov	r1, r3
80027a38:	e3a00001 	mov	r0, #1
80027a3c:	ebfffaa6 	bl	800264dc <argint>
80027a40:	e1a03000 	mov	r3, r0
80027a44:	e3530000 	cmp	r3, #0
80027a48:	aa000001 	bge	80027a54 <sys_settickets+0x4c>
80027a4c:	e3e03000 	mvn	r3, #0
80027a50:	ea00001f 	b	80027ad4 <sys_settickets+0xcc>
80027a54:	e51b3010 	ldr	r3, [fp, #-16]
80027a58:	e3530000 	cmp	r3, #0
80027a5c:	ca000001 	bgt	80027a68 <sys_settickets+0x60>
80027a60:	e3e03000 	mvn	r3, #0
80027a64:	ea00001a 	b	80027ad4 <sys_settickets+0xcc>
80027a68:	e59f0070 	ldr	r0, [pc, #112]	@ 80027ae0 <sys_settickets+0xd8>
80027a6c:	ebfffa29 	bl	80026318 <acquire>
80027a70:	e59f306c 	ldr	r3, [pc, #108]	@ 80027ae4 <sys_settickets+0xdc>
80027a74:	e50b3008 	str	r3, [fp, #-8]
80027a78:	ea00000e 	b	80027ab8 <sys_settickets+0xb0>
80027a7c:	e51b3008 	ldr	r3, [fp, #-8]
80027a80:	e5932010 	ldr	r2, [r3, #16]
80027a84:	e51b300c 	ldr	r3, [fp, #-12]
80027a88:	e1520003 	cmp	r2, r3
80027a8c:	1a000006 	bne	80027aac <sys_settickets+0xa4>
80027a90:	e51b2010 	ldr	r2, [fp, #-16]
80027a94:	e51b3008 	ldr	r3, [fp, #-8]
80027a98:	e5832080 	str	r2, [r3, #128]	@ 0x80
80027a9c:	e59f003c 	ldr	r0, [pc, #60]	@ 80027ae0 <sys_settickets+0xd8>
80027aa0:	ebfffa27 	bl	80026344 <release>
80027aa4:	e3a03000 	mov	r3, #0
80027aa8:	ea000009 	b	80027ad4 <sys_settickets+0xcc>
80027aac:	e51b3008 	ldr	r3, [fp, #-8]
80027ab0:	e283309c 	add	r3, r3, #156	@ 0x9c
80027ab4:	e50b3008 	str	r3, [fp, #-8]
80027ab8:	e51b3008 	ldr	r3, [fp, #-8]
80027abc:	e59f2024 	ldr	r2, [pc, #36]	@ 80027ae8 <sys_settickets+0xe0>
80027ac0:	e1530002 	cmp	r3, r2
80027ac4:	3affffec 	bcc	80027a7c <sys_settickets+0x74>
80027ac8:	e59f0010 	ldr	r0, [pc, #16]	@ 80027ae0 <sys_settickets+0xd8>
80027acc:	ebfffa1c 	bl	80026344 <release>
80027ad0:	e3e03000 	mvn	r3, #0
80027ad4:	e1a00003 	mov	r0, r3
80027ad8:	e24bd004 	sub	sp, fp, #4
80027adc:	e8bd8800 	pop	{fp, pc}
80027ae0:	800ae688 	.word	0x800ae688
80027ae4:	800ae6bc 	.word	0x800ae6bc
80027ae8:	800b0dbc 	.word	0x800b0dbc

80027aec <sys_getpinfo>:
80027aec:	e92d4800 	push	{fp, lr}
80027af0:	e28db004 	add	fp, sp, #4
80027af4:	e24dd010 	sub	sp, sp, #16
80027af8:	e3a03000 	mov	r3, #0
80027afc:	e50b300c 	str	r3, [fp, #-12]
80027b00:	e24b3010 	sub	r3, fp, #16
80027b04:	e3a02c05 	mov	r2, #1280	@ 0x500
80027b08:	e1a01003 	mov	r1, r3
80027b0c:	e3a00000 	mov	r0, #0
80027b10:	ebfffa8c 	bl	80026548 <argptr>
80027b14:	e1a03000 	mov	r3, r0
80027b18:	e3530000 	cmp	r3, #0
80027b1c:	aa000001 	bge	80027b28 <sys_getpinfo+0x3c>
80027b20:	e3e03000 	mvn	r3, #0
80027b24:	ea000033 	b	80027bf8 <sys_getpinfo+0x10c>
80027b28:	e59f00d4 	ldr	r0, [pc, #212]	@ 80027c04 <sys_getpinfo+0x118>
80027b2c:	ebfff9f9 	bl	80026318 <acquire>
80027b30:	e59f30d0 	ldr	r3, [pc, #208]	@ 80027c08 <sys_getpinfo+0x11c>
80027b34:	e50b3008 	str	r3, [fp, #-8]
80027b38:	ea000027 	b	80027bdc <sys_getpinfo+0xf0>
80027b3c:	e51b3008 	ldr	r3, [fp, #-8]
80027b40:	e5d3300c 	ldrb	r3, [r3, #12]
80027b44:	e3530000 	cmp	r3, #0
80027b48:	13a03001 	movne	r3, #1
80027b4c:	03a03000 	moveq	r3, #0
80027b50:	e6ef2073 	uxtb	r2, r3
80027b54:	e51b3010 	ldr	r3, [fp, #-16]
80027b58:	e1a01002 	mov	r1, r2
80027b5c:	e51b200c 	ldr	r2, [fp, #-12]
80027b60:	e7831102 	str	r1, [r3, r2, lsl #2]
80027b64:	e51b3010 	ldr	r3, [fp, #-16]
80027b68:	e51b2008 	ldr	r2, [fp, #-8]
80027b6c:	e5921010 	ldr	r1, [r2, #16]
80027b70:	e51b200c 	ldr	r2, [fp, #-12]
80027b74:	e2822040 	add	r2, r2, #64	@ 0x40
80027b78:	e7831102 	str	r1, [r3, r2, lsl #2]
80027b7c:	e51b3010 	ldr	r3, [fp, #-16]
80027b80:	e51b2008 	ldr	r2, [fp, #-8]
80027b84:	e5921080 	ldr	r1, [r2, #128]	@ 0x80
80027b88:	e51b200c 	ldr	r2, [fp, #-12]
80027b8c:	e2822080 	add	r2, r2, #128	@ 0x80
80027b90:	e7831102 	str	r1, [r3, r2, lsl #2]
80027b94:	e51b3010 	ldr	r3, [fp, #-16]
80027b98:	e51b2008 	ldr	r2, [fp, #-8]
80027b9c:	e5921084 	ldr	r1, [r2, #132]	@ 0x84
80027ba0:	e51b200c 	ldr	r2, [fp, #-12]
80027ba4:	e28220c0 	add	r2, r2, #192	@ 0xc0
80027ba8:	e7831102 	str	r1, [r3, r2, lsl #2]
80027bac:	e51b3010 	ldr	r3, [fp, #-16]
80027bb0:	e51b2008 	ldr	r2, [fp, #-8]
80027bb4:	e5921094 	ldr	r1, [r2, #148]	@ 0x94
80027bb8:	e51b200c 	ldr	r2, [fp, #-12]
80027bbc:	e2822c01 	add	r2, r2, #256	@ 0x100
80027bc0:	e7831102 	str	r1, [r3, r2, lsl #2]
80027bc4:	e51b3008 	ldr	r3, [fp, #-8]
80027bc8:	e283309c 	add	r3, r3, #156	@ 0x9c
80027bcc:	e50b3008 	str	r3, [fp, #-8]
80027bd0:	e51b300c 	ldr	r3, [fp, #-12]
80027bd4:	e2833001 	add	r3, r3, #1
80027bd8:	e50b300c 	str	r3, [fp, #-12]
80027bdc:	e51b3008 	ldr	r3, [fp, #-8]
80027be0:	e59f2024 	ldr	r2, [pc, #36]	@ 80027c0c <sys_getpinfo+0x120>
80027be4:	e1530002 	cmp	r3, r2
80027be8:	3affffd3 	bcc	80027b3c <sys_getpinfo+0x50>
80027bec:	e59f0010 	ldr	r0, [pc, #16]	@ 80027c04 <sys_getpinfo+0x118>
80027bf0:	ebfff9d3 	bl	80026344 <release>
80027bf4:	e3a03000 	mov	r3, #0
80027bf8:	e1a00003 	mov	r0, r3
80027bfc:	e24bd004 	sub	sp, fp, #4
80027c00:	e8bd8800 	pop	{fp, pc}
80027c04:	800ae688 	.word	0x800ae688
80027c08:	800ae6bc 	.word	0x800ae6bc
80027c0c:	800b0dbc 	.word	0x800b0dbc

80027c10 <sys_printpt>:
80027c10:	e92d4800 	push	{fp, lr}
80027c14:	e28db004 	add	fp, sp, #4
80027c18:	e59f302c 	ldr	r3, [pc, #44]	@ 80027c4c <sys_printpt+0x3c>
80027c1c:	e5933000 	ldr	r3, [r3]
80027c20:	e3530000 	cmp	r3, #0
80027c24:	1a000001 	bne	80027c30 <sys_printpt+0x20>
80027c28:	e3e03000 	mvn	r3, #0
80027c2c:	ea000004 	b	80027c44 <sys_printpt+0x34>
80027c30:	e59f3014 	ldr	r3, [pc, #20]	@ 80027c4c <sys_printpt+0x3c>
80027c34:	e5933000 	ldr	r3, [r3]
80027c38:	e1a00003 	mov	r0, r3
80027c3c:	eb0005b6 	bl	8002931c <print_proc_page_table>
80027c40:	e3a03000 	mov	r3, #0
80027c44:	e1a00003 	mov	r0, r3
80027c48:	e8bd8800 	pop	{fp, pc}
80027c4c:	800b0dc0 	.word	0x800b0dc0

80027c50 <sys_ugetpid>:
80027c50:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027c54:	e28db000 	add	fp, sp, #0
80027c58:	e59f302c 	ldr	r3, [pc, #44]	@ 80027c8c <sys_ugetpid+0x3c>
80027c5c:	e5933000 	ldr	r3, [r3]
80027c60:	e3530000 	cmp	r3, #0
80027c64:	1a000001 	bne	80027c70 <sys_ugetpid+0x20>
80027c68:	e3e03000 	mvn	r3, #0
80027c6c:	ea000002 	b	80027c7c <sys_ugetpid+0x2c>
80027c70:	e59f3014 	ldr	r3, [pc, #20]	@ 80027c8c <sys_ugetpid+0x3c>
80027c74:	e5933000 	ldr	r3, [r3]
80027c78:	e5933010 	ldr	r3, [r3, #16]
80027c7c:	e1a00003 	mov	r0, r3
80027c80:	e28bd000 	add	sp, fp, #0
80027c84:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027c88:	e12fff1e 	bx	lr
80027c8c:	800b0dc0 	.word	0x800b0dc0

80027c90 <sys_pgpte>:
80027c90:	e92d4800 	push	{fp, lr}
80027c94:	e28db004 	add	fp, sp, #4
80027c98:	e24dd008 	sub	sp, sp, #8
80027c9c:	e24b300c 	sub	r3, fp, #12
80027ca0:	e3a02004 	mov	r2, #4
80027ca4:	e1a01003 	mov	r1, r3
80027ca8:	e3a00000 	mov	r0, #0
80027cac:	ebfffa25 	bl	80026548 <argptr>
80027cb0:	e1a03000 	mov	r3, r0
80027cb4:	e3530000 	cmp	r3, #0
80027cb8:	aa000001 	bge	80027cc4 <sys_pgpte+0x34>
80027cbc:	e3e03000 	mvn	r3, #0
80027cc0:	ea000014 	b	80027d18 <sys_pgpte+0x88>
80027cc4:	e59f3058 	ldr	r3, [pc, #88]	@ 80027d24 <sys_pgpte+0x94>
80027cc8:	e5933000 	ldr	r3, [r3]
80027ccc:	e3530000 	cmp	r3, #0
80027cd0:	1a000001 	bne	80027cdc <sys_pgpte+0x4c>
80027cd4:	e3e03000 	mvn	r3, #0
80027cd8:	ea00000e 	b	80027d18 <sys_pgpte+0x88>
80027cdc:	e59f3040 	ldr	r3, [pc, #64]	@ 80027d24 <sys_pgpte+0x94>
80027ce0:	e5933000 	ldr	r3, [r3]
80027ce4:	e5933004 	ldr	r3, [r3, #4]
80027ce8:	e51b100c 	ldr	r1, [fp, #-12]
80027cec:	e3a02000 	mov	r2, #0
80027cf0:	e1a00003 	mov	r0, r3
80027cf4:	eb000277 	bl	800286d8 <walkpgdir>
80027cf8:	e50b0008 	str	r0, [fp, #-8]
80027cfc:	e51b3008 	ldr	r3, [fp, #-8]
80027d00:	e3530000 	cmp	r3, #0
80027d04:	1a000001 	bne	80027d10 <sys_pgpte+0x80>
80027d08:	e3a03000 	mov	r3, #0
80027d0c:	ea000001 	b	80027d18 <sys_pgpte+0x88>
80027d10:	e51b3008 	ldr	r3, [fp, #-8]
80027d14:	e5933000 	ldr	r3, [r3]
80027d18:	e1a00003 	mov	r0, r3
80027d1c:	e24bd004 	sub	sp, fp, #4
80027d20:	e8bd8800 	pop	{fp, pc}
80027d24:	800b0dc0 	.word	0x800b0dc0

80027d28 <sys_kpt>:
80027d28:	e92d4800 	push	{fp, lr}
80027d2c:	e28db004 	add	fp, sp, #4
80027d30:	eb000507 	bl	80029154 <kpt>
80027d34:	e3a03000 	mov	r3, #0
80027d38:	e1a00003 	mov	r0, r3
80027d3c:	e8bd8800 	pop	{fp, pc}

80027d40 <trap_swi>:
80027d40:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027d44:	e14f2000 	mrs	r2, SPSR
80027d48:	e92d0004 	stmfd	sp!, {r2}
80027d4c:	e92d4000 	stmfd	sp!, {lr}
80027d50:	e94d6000 	stmdb	sp, {sp, lr}^
80027d54:	e24dd008 	sub	sp, sp, #8
80027d58:	e1a0000d 	mov	r0, sp
80027d5c:	eb000054 	bl	80027eb4 <swi_handler>

80027d60 <trapret>:
80027d60:	e8dd6000 	ldm	sp, {sp, lr}^
80027d64:	e28dd008 	add	sp, sp, #8
80027d68:	e8bd4000 	ldmfd	sp!, {lr}
80027d6c:	e8bd0004 	ldmfd	sp!, {r2}
80027d70:	e16ff002 	msr	SPSR_fsxc, r2
80027d74:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027d78 <trap_irq>:
80027d78:	e24ee004 	sub	lr, lr, #4
80027d7c:	e92d4007 	push	{r0, r1, r2, lr}
80027d80:	e14f1000 	mrs	r1, SPSR
80027d84:	e1a0000d 	mov	r0, sp
80027d88:	e28dd010 	add	sp, sp, #16
80027d8c:	e10f2000 	mrs	r2, CPSR
80027d90:	e3c2201f 	bic	r2, r2, #31
80027d94:	e3822013 	orr	r2, r2, #19
80027d98:	e12ff002 	msr	CPSR_fsxc, r2
80027d9c:	e590200c 	ldr	r2, [r0, #12]
80027da0:	e92d0004 	stmfd	sp!, {r2}
80027da4:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027da8:	e8900038 	ldm	r0, {r3, r4, r5}
80027dac:	e92d0038 	push	{r3, r4, r5}
80027db0:	e92d0002 	stmfd	sp!, {r1}
80027db4:	e92d4000 	stmfd	sp!, {lr}
80027db8:	e94d6000 	stmdb	sp, {sp, lr}^
80027dbc:	e24dd008 	sub	sp, sp, #8
80027dc0:	e1a0000d 	mov	r0, sp
80027dc4:	eb000047 	bl	80027ee8 <irq_handler>
80027dc8:	eaffffe4 	b	80027d60 <trapret>

80027dcc <trap_reset>:
80027dcc:	e3a0e000 	mov	lr, #0
80027dd0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027dd4:	e14f2000 	mrs	r2, SPSR
80027dd8:	e92d0004 	stmfd	sp!, {r2}
80027ddc:	e92d4000 	stmfd	sp!, {lr}
80027de0:	e94d6000 	stmdb	sp, {sp, lr}^
80027de4:	e24dd008 	sub	sp, sp, #8
80027de8:	e1a0000d 	mov	r0, sp
80027dec:	eb00005c 	bl	80027f64 <reset_handler>
80027df0:	eafffffe 	b	80027df0 <trap_reset+0x24>

80027df4 <trap_und>:
80027df4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027df8:	e14f2000 	mrs	r2, SPSR
80027dfc:	e92d0004 	stmfd	sp!, {r2}
80027e00:	e92d4000 	stmfd	sp!, {lr}
80027e04:	e94d6000 	stmdb	sp, {sp, lr}^
80027e08:	e24dd008 	sub	sp, sp, #8
80027e0c:	e1a0000d 	mov	r0, sp
80027e10:	eb000061 	bl	80027f9c <und_handler>
80027e14:	eafffffe 	b	80027e14 <trap_und+0x20>

80027e18 <trap_iabort>:
80027e18:	e24ee004 	sub	lr, lr, #4
80027e1c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027e20:	e14f2000 	mrs	r2, SPSR
80027e24:	e92d0004 	stmfd	sp!, {r2}
80027e28:	e92d4000 	stmfd	sp!, {lr}
80027e2c:	e94d6000 	stmdb	sp, {sp, lr}^
80027e30:	e24dd008 	sub	sp, sp, #8
80027e34:	e1a0000d 	mov	r0, sp
80027e38:	eb00008d 	bl	80028074 <iabort_handler>
80027e3c:	eafffffe 	b	80027e3c <trap_iabort+0x24>

80027e40 <trap_dabort>:
80027e40:	e24ee008 	sub	lr, lr, #8
80027e44:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027e48:	e14f2000 	mrs	r2, SPSR
80027e4c:	e92d0004 	stmfd	sp!, {r2}
80027e50:	e92d4000 	stmfd	sp!, {lr}
80027e54:	e94d6000 	stmdb	sp, {sp, lr}^
80027e58:	e24dd008 	sub	sp, sp, #8
80027e5c:	e1a0000d 	mov	r0, sp
80027e60:	eb00005b 	bl	80027fd4 <dabort_handler>
80027e64:	eaffffbd 	b	80027d60 <trapret>

80027e68 <trap_na>:
80027e68:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027e6c:	e14f2000 	mrs	r2, SPSR
80027e70:	e92d0004 	stmfd	sp!, {r2}
80027e74:	e92d4000 	stmfd	sp!, {lr}
80027e78:	e94d6000 	stmdb	sp, {sp, lr}^
80027e7c:	e24dd008 	sub	sp, sp, #8
80027e80:	e1a0000d 	mov	r0, sp
80027e84:	eb00008d 	bl	800280c0 <na_handler>
80027e88:	eafffffe 	b	80027e88 <trap_na+0x20>

80027e8c <trap_fiq>:
80027e8c:	e24ee004 	sub	lr, lr, #4
80027e90:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027e94:	e14f2000 	mrs	r2, SPSR
80027e98:	e92d0004 	stmfd	sp!, {r2}
80027e9c:	e92d4000 	stmfd	sp!, {lr}
80027ea0:	e94d6000 	stmdb	sp, {sp, lr}^
80027ea4:	e24dd008 	sub	sp, sp, #8
80027ea8:	e1a0000d 	mov	r0, sp
80027eac:	eb000091 	bl	800280f8 <fiq_handler>
80027eb0:	eafffffe 	b	80027eb0 <trap_fiq+0x24>

80027eb4 <swi_handler>:
80027eb4:	e92d4800 	push	{fp, lr}
80027eb8:	e28db004 	add	fp, sp, #4
80027ebc:	e24dd008 	sub	sp, sp, #8
80027ec0:	e50b0008 	str	r0, [fp, #-8]
80027ec4:	e59f3018 	ldr	r3, [pc, #24]	@ 80027ee4 <swi_handler+0x30>
80027ec8:	e5933000 	ldr	r3, [r3]
80027ecc:	e51b2008 	ldr	r2, [fp, #-8]
80027ed0:	e5832018 	str	r2, [r3, #24]
80027ed4:	ebfff9da 	bl	80026644 <syscall>
80027ed8:	e1a00000 	nop			@ (mov r0, r0)
80027edc:	e24bd004 	sub	sp, fp, #4
80027ee0:	e8bd8800 	pop	{fp, pc}
80027ee4:	800b0dc0 	.word	0x800b0dc0

80027ee8 <irq_handler>:
80027ee8:	e92d4800 	push	{fp, lr}
80027eec:	e28db004 	add	fp, sp, #4
80027ef0:	e24dd008 	sub	sp, sp, #8
80027ef4:	e50b0008 	str	r0, [fp, #-8]
80027ef8:	e59f3058 	ldr	r3, [pc, #88]	@ 80027f58 <irq_handler+0x70>
80027efc:	e5933000 	ldr	r3, [r3]
80027f00:	e3530000 	cmp	r3, #0
80027f04:	0a000003 	beq	80027f18 <irq_handler+0x30>
80027f08:	e59f3048 	ldr	r3, [pc, #72]	@ 80027f58 <irq_handler+0x70>
80027f0c:	e5933000 	ldr	r3, [r3]
80027f10:	e51b2008 	ldr	r2, [fp, #-8]
80027f14:	e5832018 	str	r2, [r3, #24]
80027f18:	e59f003c 	ldr	r0, [pc, #60]	@ 80027f5c <irq_handler+0x74>
80027f1c:	ebfff8fd 	bl	80026318 <acquire>
80027f20:	e59f3038 	ldr	r3, [pc, #56]	@ 80027f60 <irq_handler+0x78>
80027f24:	e5933000 	ldr	r3, [r3]
80027f28:	e2833001 	add	r3, r3, #1
80027f2c:	e59f202c 	ldr	r2, [pc, #44]	@ 80027f60 <irq_handler+0x78>
80027f30:	e5823000 	str	r3, [r2]
80027f34:	e59f0024 	ldr	r0, [pc, #36]	@ 80027f60 <irq_handler+0x78>
80027f38:	ebfff837 	bl	8002601c <wakeup>
80027f3c:	e59f0018 	ldr	r0, [pc, #24]	@ 80027f5c <irq_handler+0x74>
80027f40:	ebfff8ff 	bl	80026344 <release>
80027f44:	e51b0008 	ldr	r0, [fp, #-8]
80027f48:	eb0005e3 	bl	800296dc <pic_dispatch>
80027f4c:	e1a00000 	nop			@ (mov r0, r0)
80027f50:	e24bd004 	sub	sp, fp, #4
80027f54:	e8bd8800 	pop	{fp, pc}
80027f58:	800b0dc0 	.word	0x800b0dc0
80027f5c:	800b0e84 	.word	0x800b0e84
80027f60:	800b0eb8 	.word	0x800b0eb8

80027f64 <reset_handler>:
80027f64:	e92d4800 	push	{fp, lr}
80027f68:	e28db004 	add	fp, sp, #4
80027f6c:	e24dd008 	sub	sp, sp, #8
80027f70:	e50b0008 	str	r0, [fp, #-8]
80027f74:	ebffe171 	bl	80020540 <cli>
80027f78:	e51b3008 	ldr	r3, [fp, #-8]
80027f7c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027f80:	e1a01003 	mov	r1, r3
80027f84:	e59f000c 	ldr	r0, [pc, #12]	@ 80027f98 <reset_handler+0x34>
80027f88:	ebffe641 	bl	80021894 <cprintf>
80027f8c:	e1a00000 	nop			@ (mov r0, r0)
80027f90:	e24bd004 	sub	sp, fp, #4
80027f94:	e8bd8800 	pop	{fp, pc}
80027f98:	8002a3bc 	.word	0x8002a3bc

80027f9c <und_handler>:
80027f9c:	e92d4800 	push	{fp, lr}
80027fa0:	e28db004 	add	fp, sp, #4
80027fa4:	e24dd008 	sub	sp, sp, #8
80027fa8:	e50b0008 	str	r0, [fp, #-8]
80027fac:	ebffe163 	bl	80020540 <cli>
80027fb0:	e51b3008 	ldr	r3, [fp, #-8]
80027fb4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027fb8:	e1a01003 	mov	r1, r3
80027fbc:	e59f000c 	ldr	r0, [pc, #12]	@ 80027fd0 <und_handler+0x34>
80027fc0:	ebffe633 	bl	80021894 <cprintf>
80027fc4:	e1a00000 	nop			@ (mov r0, r0)
80027fc8:	e24bd004 	sub	sp, fp, #4
80027fcc:	e8bd8800 	pop	{fp, pc}
80027fd0:	8002a3d0 	.word	0x8002a3d0

80027fd4 <dabort_handler>:
80027fd4:	e92d4800 	push	{fp, lr}
80027fd8:	e28db004 	add	fp, sp, #4
80027fdc:	e24dd010 	sub	sp, sp, #16
80027fe0:	e50b0010 	str	r0, [fp, #-16]
80027fe4:	ebffe155 	bl	80020540 <cli>
80027fe8:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027fec:	e50b3008 	str	r3, [fp, #-8]
80027ff0:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80027ff4:	e50b300c 	str	r3, [fp, #-12]
80027ff8:	e59f3064 	ldr	r3, [pc, #100]	@ 80028064 <dabort_handler+0x90>
80027ffc:	e5933000 	ldr	r3, [r3]
80028000:	e3530000 	cmp	r3, #0
80028004:	0a00000c 	beq	8002803c <dabort_handler+0x68>
80028008:	e51b000c 	ldr	r0, [fp, #-12]
8002800c:	eb000479 	bl	800291f8 <handle_page_fault>
80028010:	e1a03000 	mov	r3, r0
80028014:	e3530000 	cmp	r3, #0
80028018:	1a000004 	bne	80028030 <dabort_handler+0x5c>
8002801c:	e51b100c 	ldr	r1, [fp, #-12]
80028020:	e59f0040 	ldr	r0, [pc, #64]	@ 80028068 <dabort_handler+0x94>
80028024:	ebffe61a 	bl	80021894 <cprintf>
80028028:	ebffe152 	bl	80020578 <sti>
8002802c:	ea00000a 	b	8002805c <dabort_handler+0x88>
80028030:	e51b100c 	ldr	r1, [fp, #-12]
80028034:	e59f0030 	ldr	r0, [pc, #48]	@ 8002806c <dabort_handler+0x98>
80028038:	ebffe615 	bl	80021894 <cprintf>
8002803c:	e51b3010 	ldr	r3, [fp, #-16]
80028040:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80028044:	e51b3008 	ldr	r3, [fp, #-8]
80028048:	e51b200c 	ldr	r2, [fp, #-12]
8002804c:	e59f001c 	ldr	r0, [pc, #28]	@ 80028070 <dabort_handler+0x9c>
80028050:	ebffe60f 	bl	80021894 <cprintf>
80028054:	e51b0010 	ldr	r0, [fp, #-16]
80028058:	eb0000b5 	bl	80028334 <dump_trapframe>
8002805c:	e24bd004 	sub	sp, fp, #4
80028060:	e8bd8800 	pop	{fp, pc}
80028064:	800b0dc0 	.word	0x800b0dc0
80028068:	8002a3e0 	.word	0x8002a3e0
8002806c:	8002a40c 	.word	0x8002a40c
80028070:	8002a440 	.word	0x8002a440

80028074 <iabort_handler>:
80028074:	e92d4800 	push	{fp, lr}
80028078:	e28db004 	add	fp, sp, #4
8002807c:	e24dd010 	sub	sp, sp, #16
80028080:	e50b0010 	str	r0, [fp, #-16]
80028084:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80028088:	e50b3008 	str	r3, [fp, #-8]
8002808c:	ebffe12b 	bl	80020540 <cli>
80028090:	e51b3010 	ldr	r3, [fp, #-16]
80028094:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028098:	e51b2008 	ldr	r2, [fp, #-8]
8002809c:	e1a01003 	mov	r1, r3
800280a0:	e59f0014 	ldr	r0, [pc, #20]	@ 800280bc <iabort_handler+0x48>
800280a4:	ebffe5fa 	bl	80021894 <cprintf>
800280a8:	e51b0010 	ldr	r0, [fp, #-16]
800280ac:	eb0000a0 	bl	80028334 <dump_trapframe>
800280b0:	e1a00000 	nop			@ (mov r0, r0)
800280b4:	e24bd004 	sub	sp, fp, #4
800280b8:	e8bd8800 	pop	{fp, pc}
800280bc:	8002a480 	.word	0x8002a480

800280c0 <na_handler>:
800280c0:	e92d4800 	push	{fp, lr}
800280c4:	e28db004 	add	fp, sp, #4
800280c8:	e24dd008 	sub	sp, sp, #8
800280cc:	e50b0008 	str	r0, [fp, #-8]
800280d0:	ebffe11a 	bl	80020540 <cli>
800280d4:	e51b3008 	ldr	r3, [fp, #-8]
800280d8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800280dc:	e1a01003 	mov	r1, r3
800280e0:	e59f000c 	ldr	r0, [pc, #12]	@ 800280f4 <na_handler+0x34>
800280e4:	ebffe5ea 	bl	80021894 <cprintf>
800280e8:	e1a00000 	nop			@ (mov r0, r0)
800280ec:	e24bd004 	sub	sp, fp, #4
800280f0:	e8bd8800 	pop	{fp, pc}
800280f4:	8002a4a8 	.word	0x8002a4a8

800280f8 <fiq_handler>:
800280f8:	e92d4800 	push	{fp, lr}
800280fc:	e28db004 	add	fp, sp, #4
80028100:	e24dd008 	sub	sp, sp, #8
80028104:	e50b0008 	str	r0, [fp, #-8]
80028108:	ebffe10c 	bl	80020540 <cli>
8002810c:	e51b3008 	ldr	r3, [fp, #-8]
80028110:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028114:	e1a01003 	mov	r1, r3
80028118:	e59f000c 	ldr	r0, [pc, #12]	@ 8002812c <fiq_handler+0x34>
8002811c:	ebffe5dc 	bl	80021894 <cprintf>
80028120:	e1a00000 	nop			@ (mov r0, r0)
80028124:	e24bd004 	sub	sp, fp, #4
80028128:	e8bd8800 	pop	{fp, pc}
8002812c:	8002a4b8 	.word	0x8002a4b8

80028130 <trap_init>:
80028130:	e92d4800 	push	{fp, lr}
80028134:	e28db004 	add	fp, sp, #4
80028138:	e24dd020 	sub	sp, sp, #32
8002813c:	e59f31c0 	ldr	r3, [pc, #448]	@ 80028304 <trap_init+0x1d4>
80028140:	e24bc020 	sub	ip, fp, #32
80028144:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80028148:	e88c000f 	stm	ip, {r0, r1, r2, r3}
8002814c:	e59f31b4 	ldr	r3, [pc, #436]	@ 80028308 <trap_init+0x1d8>
80028150:	e50b300c 	str	r3, [fp, #-12]
80028154:	e59f31b0 	ldr	r3, [pc, #432]	@ 8002830c <trap_init+0x1dc>
80028158:	e5933000 	ldr	r3, [r3]
8002815c:	e3832018 	orr	r2, r3, #24
80028160:	e51b300c 	ldr	r3, [fp, #-12]
80028164:	e5832000 	str	r2, [r3]
80028168:	e59f319c 	ldr	r3, [pc, #412]	@ 8002830c <trap_init+0x1dc>
8002816c:	e5932000 	ldr	r2, [r3]
80028170:	e51b300c 	ldr	r3, [fp, #-12]
80028174:	e2833004 	add	r3, r3, #4
80028178:	e3822018 	orr	r2, r2, #24
8002817c:	e5832000 	str	r2, [r3]
80028180:	e59f3184 	ldr	r3, [pc, #388]	@ 8002830c <trap_init+0x1dc>
80028184:	e5932000 	ldr	r2, [r3]
80028188:	e51b300c 	ldr	r3, [fp, #-12]
8002818c:	e2833008 	add	r3, r3, #8
80028190:	e3822018 	orr	r2, r2, #24
80028194:	e5832000 	str	r2, [r3]
80028198:	e59f316c 	ldr	r3, [pc, #364]	@ 8002830c <trap_init+0x1dc>
8002819c:	e5932000 	ldr	r2, [r3]
800281a0:	e51b300c 	ldr	r3, [fp, #-12]
800281a4:	e283300c 	add	r3, r3, #12
800281a8:	e3822018 	orr	r2, r2, #24
800281ac:	e5832000 	str	r2, [r3]
800281b0:	e59f3154 	ldr	r3, [pc, #340]	@ 8002830c <trap_init+0x1dc>
800281b4:	e5932000 	ldr	r2, [r3]
800281b8:	e51b300c 	ldr	r3, [fp, #-12]
800281bc:	e2833010 	add	r3, r3, #16
800281c0:	e3822018 	orr	r2, r2, #24
800281c4:	e5832000 	str	r2, [r3]
800281c8:	e59f313c 	ldr	r3, [pc, #316]	@ 8002830c <trap_init+0x1dc>
800281cc:	e5932000 	ldr	r2, [r3]
800281d0:	e51b300c 	ldr	r3, [fp, #-12]
800281d4:	e2833014 	add	r3, r3, #20
800281d8:	e3822018 	orr	r2, r2, #24
800281dc:	e5832000 	str	r2, [r3]
800281e0:	e59f3124 	ldr	r3, [pc, #292]	@ 8002830c <trap_init+0x1dc>
800281e4:	e5932000 	ldr	r2, [r3]
800281e8:	e51b300c 	ldr	r3, [fp, #-12]
800281ec:	e2833018 	add	r3, r3, #24
800281f0:	e3822018 	orr	r2, r2, #24
800281f4:	e5832000 	str	r2, [r3]
800281f8:	e59f310c 	ldr	r3, [pc, #268]	@ 8002830c <trap_init+0x1dc>
800281fc:	e5932000 	ldr	r2, [r3]
80028200:	e51b300c 	ldr	r3, [fp, #-12]
80028204:	e283301c 	add	r3, r3, #28
80028208:	e3822018 	orr	r2, r2, #24
8002820c:	e5832000 	str	r2, [r3]
80028210:	e51b300c 	ldr	r3, [fp, #-12]
80028214:	e2833020 	add	r3, r3, #32
80028218:	e59f20f0 	ldr	r2, [pc, #240]	@ 80028310 <trap_init+0x1e0>
8002821c:	e5832000 	str	r2, [r3]
80028220:	e51b300c 	ldr	r3, [fp, #-12]
80028224:	e2833024 	add	r3, r3, #36	@ 0x24
80028228:	e59f20e4 	ldr	r2, [pc, #228]	@ 80028314 <trap_init+0x1e4>
8002822c:	e5832000 	str	r2, [r3]
80028230:	e51b300c 	ldr	r3, [fp, #-12]
80028234:	e2833028 	add	r3, r3, #40	@ 0x28
80028238:	e59f20d8 	ldr	r2, [pc, #216]	@ 80028318 <trap_init+0x1e8>
8002823c:	e5832000 	str	r2, [r3]
80028240:	e51b300c 	ldr	r3, [fp, #-12]
80028244:	e283302c 	add	r3, r3, #44	@ 0x2c
80028248:	e59f20cc 	ldr	r2, [pc, #204]	@ 8002831c <trap_init+0x1ec>
8002824c:	e5832000 	str	r2, [r3]
80028250:	e51b300c 	ldr	r3, [fp, #-12]
80028254:	e2833030 	add	r3, r3, #48	@ 0x30
80028258:	e59f20c0 	ldr	r2, [pc, #192]	@ 80028320 <trap_init+0x1f0>
8002825c:	e5832000 	str	r2, [r3]
80028260:	e51b300c 	ldr	r3, [fp, #-12]
80028264:	e2833034 	add	r3, r3, #52	@ 0x34
80028268:	e59f20b4 	ldr	r2, [pc, #180]	@ 80028324 <trap_init+0x1f4>
8002826c:	e5832000 	str	r2, [r3]
80028270:	e51b300c 	ldr	r3, [fp, #-12]
80028274:	e2833038 	add	r3, r3, #56	@ 0x38
80028278:	e59f20a8 	ldr	r2, [pc, #168]	@ 80028328 <trap_init+0x1f8>
8002827c:	e5832000 	str	r2, [r3]
80028280:	e51b300c 	ldr	r3, [fp, #-12]
80028284:	e283303c 	add	r3, r3, #60	@ 0x3c
80028288:	e59f209c 	ldr	r2, [pc, #156]	@ 8002832c <trap_init+0x1fc>
8002828c:	e5832000 	str	r2, [r3]
80028290:	e3a03000 	mov	r3, #0
80028294:	e50b3008 	str	r3, [fp, #-8]
80028298:	ea000012 	b	800282e8 <trap_init+0x1b8>
8002829c:	ebffe4e3 	bl	80021630 <alloc_page>
800282a0:	e50b0010 	str	r0, [fp, #-16]
800282a4:	e51b3010 	ldr	r3, [fp, #-16]
800282a8:	e3530000 	cmp	r3, #0
800282ac:	1a000001 	bne	800282b8 <trap_init+0x188>
800282b0:	e59f0078 	ldr	r0, [pc, #120]	@ 80028330 <trap_init+0x200>
800282b4:	ebffe5fc 	bl	80021aac <panic>
800282b8:	e51b3008 	ldr	r3, [fp, #-8]
800282bc:	e1a03103 	lsl	r3, r3, #2
800282c0:	e2433004 	sub	r3, r3, #4
800282c4:	e083300b 	add	r3, r3, fp
800282c8:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
800282cc:	e51b2010 	ldr	r2, [fp, #-16]
800282d0:	e1a01002 	mov	r1, r2
800282d4:	e1a00003 	mov	r0, r3
800282d8:	ebffe171 	bl	800208a4 <set_stk>
800282dc:	e51b3008 	ldr	r3, [fp, #-8]
800282e0:	e2833001 	add	r3, r3, #1
800282e4:	e50b3008 	str	r3, [fp, #-8]
800282e8:	e51b3008 	ldr	r3, [fp, #-8]
800282ec:	e3530003 	cmp	r3, #3
800282f0:	9affffe9 	bls	8002829c <trap_init+0x16c>
800282f4:	e1a00000 	nop			@ (mov r0, r0)
800282f8:	e1a00000 	nop			@ (mov r0, r0)
800282fc:	e24bd004 	sub	sp, fp, #4
80028300:	e8bd8800 	pop	{fp, pc}
80028304:	8002a4f0 	.word	0x8002a4f0
80028308:	ffff0000 	.word	0xffff0000
8002830c:	8002a600 	.word	0x8002a600
80028310:	80027dcc 	.word	0x80027dcc
80028314:	80027df4 	.word	0x80027df4
80028318:	80027d40 	.word	0x80027d40
8002831c:	80027e18 	.word	0x80027e18
80028320:	80027e40 	.word	0x80027e40
80028324:	80027e68 	.word	0x80027e68
80028328:	80027d78 	.word	0x80027d78
8002832c:	80027e8c 	.word	0x80027e8c
80028330:	8002a4c8 	.word	0x8002a4c8

80028334 <dump_trapframe>:
80028334:	e92d4800 	push	{fp, lr}
80028338:	e28db004 	add	fp, sp, #4
8002833c:	e24dd008 	sub	sp, sp, #8
80028340:	e50b0008 	str	r0, [fp, #-8]
80028344:	e51b3008 	ldr	r3, [fp, #-8]
80028348:	e5933008 	ldr	r3, [r3, #8]
8002834c:	e1a01003 	mov	r1, r3
80028350:	e59f0138 	ldr	r0, [pc, #312]	@ 80028490 <dump_trapframe+0x15c>
80028354:	ebffe54e 	bl	80021894 <cprintf>
80028358:	e51b3008 	ldr	r3, [fp, #-8]
8002835c:	e593300c 	ldr	r3, [r3, #12]
80028360:	e1a01003 	mov	r1, r3
80028364:	e59f0128 	ldr	r0, [pc, #296]	@ 80028494 <dump_trapframe+0x160>
80028368:	ebffe549 	bl	80021894 <cprintf>
8002836c:	e51b3008 	ldr	r3, [fp, #-8]
80028370:	e5933010 	ldr	r3, [r3, #16]
80028374:	e1a01003 	mov	r1, r3
80028378:	e59f0118 	ldr	r0, [pc, #280]	@ 80028498 <dump_trapframe+0x164>
8002837c:	ebffe544 	bl	80021894 <cprintf>
80028380:	e51b3008 	ldr	r3, [fp, #-8]
80028384:	e5933014 	ldr	r3, [r3, #20]
80028388:	e1a01003 	mov	r1, r3
8002838c:	e59f0108 	ldr	r0, [pc, #264]	@ 8002849c <dump_trapframe+0x168>
80028390:	ebffe53f 	bl	80021894 <cprintf>
80028394:	e51b3008 	ldr	r3, [fp, #-8]
80028398:	e5933018 	ldr	r3, [r3, #24]
8002839c:	e1a01003 	mov	r1, r3
800283a0:	e59f00f8 	ldr	r0, [pc, #248]	@ 800284a0 <dump_trapframe+0x16c>
800283a4:	ebffe53a 	bl	80021894 <cprintf>
800283a8:	e51b3008 	ldr	r3, [fp, #-8]
800283ac:	e593301c 	ldr	r3, [r3, #28]
800283b0:	e1a01003 	mov	r1, r3
800283b4:	e59f00e8 	ldr	r0, [pc, #232]	@ 800284a4 <dump_trapframe+0x170>
800283b8:	ebffe535 	bl	80021894 <cprintf>
800283bc:	e51b3008 	ldr	r3, [fp, #-8]
800283c0:	e5933020 	ldr	r3, [r3, #32]
800283c4:	e1a01003 	mov	r1, r3
800283c8:	e59f00d8 	ldr	r0, [pc, #216]	@ 800284a8 <dump_trapframe+0x174>
800283cc:	ebffe530 	bl	80021894 <cprintf>
800283d0:	e51b3008 	ldr	r3, [fp, #-8]
800283d4:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800283d8:	e1a01003 	mov	r1, r3
800283dc:	e59f00c8 	ldr	r0, [pc, #200]	@ 800284ac <dump_trapframe+0x178>
800283e0:	ebffe52b 	bl	80021894 <cprintf>
800283e4:	e51b3008 	ldr	r3, [fp, #-8]
800283e8:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
800283ec:	e1a01003 	mov	r1, r3
800283f0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800284b0 <dump_trapframe+0x17c>
800283f4:	ebffe526 	bl	80021894 <cprintf>
800283f8:	e51b3008 	ldr	r3, [fp, #-8]
800283fc:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80028400:	e1a01003 	mov	r1, r3
80028404:	e59f00a8 	ldr	r0, [pc, #168]	@ 800284b4 <dump_trapframe+0x180>
80028408:	ebffe521 	bl	80021894 <cprintf>
8002840c:	e51b3008 	ldr	r3, [fp, #-8]
80028410:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80028414:	e1a01003 	mov	r1, r3
80028418:	e59f0098 	ldr	r0, [pc, #152]	@ 800284b8 <dump_trapframe+0x184>
8002841c:	ebffe51c 	bl	80021894 <cprintf>
80028420:	e51b3008 	ldr	r3, [fp, #-8]
80028424:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028428:	e1a01003 	mov	r1, r3
8002842c:	e59f0088 	ldr	r0, [pc, #136]	@ 800284bc <dump_trapframe+0x188>
80028430:	ebffe517 	bl	80021894 <cprintf>
80028434:	e51b3008 	ldr	r3, [fp, #-8]
80028438:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
8002843c:	e1a01003 	mov	r1, r3
80028440:	e59f0078 	ldr	r0, [pc, #120]	@ 800284c0 <dump_trapframe+0x18c>
80028444:	ebffe512 	bl	80021894 <cprintf>
80028448:	e51b3008 	ldr	r3, [fp, #-8]
8002844c:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80028450:	e1a01003 	mov	r1, r3
80028454:	e59f0068 	ldr	r0, [pc, #104]	@ 800284c4 <dump_trapframe+0x190>
80028458:	ebffe50d 	bl	80021894 <cprintf>
8002845c:	e51b3008 	ldr	r3, [fp, #-8]
80028460:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80028464:	e1a01003 	mov	r1, r3
80028468:	e59f0058 	ldr	r0, [pc, #88]	@ 800284c8 <dump_trapframe+0x194>
8002846c:	ebffe508 	bl	80021894 <cprintf>
80028470:	e51b3008 	ldr	r3, [fp, #-8]
80028474:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80028478:	e1a01003 	mov	r1, r3
8002847c:	e59f0048 	ldr	r0, [pc, #72]	@ 800284cc <dump_trapframe+0x198>
80028480:	ebffe503 	bl	80021894 <cprintf>
80028484:	e1a00000 	nop			@ (mov r0, r0)
80028488:	e24bd004 	sub	sp, fp, #4
8002848c:	e8bd8800 	pop	{fp, pc}
80028490:	8002a500 	.word	0x8002a500
80028494:	8002a510 	.word	0x8002a510
80028498:	8002a520 	.word	0x8002a520
8002849c:	8002a530 	.word	0x8002a530
800284a0:	8002a540 	.word	0x8002a540
800284a4:	8002a550 	.word	0x8002a550
800284a8:	8002a560 	.word	0x8002a560
800284ac:	8002a570 	.word	0x8002a570
800284b0:	8002a580 	.word	0x8002a580
800284b4:	8002a590 	.word	0x8002a590
800284b8:	8002a5a0 	.word	0x8002a5a0
800284bc:	8002a5b0 	.word	0x8002a5b0
800284c0:	8002a5c0 	.word	0x8002a5c0
800284c4:	8002a5d0 	.word	0x8002a5d0
800284c8:	8002a5e0 	.word	0x8002a5e0
800284cc:	8002a5f0 	.word	0x8002a5f0

800284d0 <v2p>:
800284d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800284d4:	e28db000 	add	fp, sp, #0
800284d8:	e24dd00c 	sub	sp, sp, #12
800284dc:	e50b0008 	str	r0, [fp, #-8]
800284e0:	e51b3008 	ldr	r3, [fp, #-8]
800284e4:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800284e8:	e1a00003 	mov	r0, r3
800284ec:	e28bd000 	add	sp, fp, #0
800284f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800284f4:	e12fff1e 	bx	lr

800284f8 <p2v>:
800284f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800284fc:	e28db000 	add	fp, sp, #0
80028500:	e24dd00c 	sub	sp, sp, #12
80028504:	e50b0008 	str	r0, [fp, #-8]
80028508:	e51b3008 	ldr	r3, [fp, #-8]
8002850c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028510:	e1a00003 	mov	r0, r3
80028514:	e28bd000 	add	sp, fp, #0
80028518:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002851c:	e12fff1e 	bx	lr

80028520 <init_vmm>:
80028520:	e92d4800 	push	{fp, lr}
80028524:	e28db004 	add	fp, sp, #4
80028528:	e59f1018 	ldr	r1, [pc, #24]	@ 80028548 <init_vmm+0x28>
8002852c:	e59f0018 	ldr	r0, [pc, #24]	@ 8002854c <init_vmm+0x2c>
80028530:	ebfff766 	bl	800262d0 <initlock>
80028534:	e59f3010 	ldr	r3, [pc, #16]	@ 8002854c <init_vmm+0x2c>
80028538:	e3a02000 	mov	r2, #0
8002853c:	e5832034 	str	r2, [r3, #52]	@ 0x34
80028540:	e1a00000 	nop			@ (mov r0, r0)
80028544:	e8bd8800 	pop	{fp, pc}
80028548:	8002a604 	.word	0x8002a604
8002854c:	800b0dc8 	.word	0x800b0dc8

80028550 <_kpt_free>:
80028550:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028554:	e28db000 	add	fp, sp, #0
80028558:	e24dd014 	sub	sp, sp, #20
8002855c:	e50b0010 	str	r0, [fp, #-16]
80028560:	e51b3010 	ldr	r3, [fp, #-16]
80028564:	e50b3008 	str	r3, [fp, #-8]
80028568:	e59f3024 	ldr	r3, [pc, #36]	@ 80028594 <_kpt_free+0x44>
8002856c:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80028570:	e51b3008 	ldr	r3, [fp, #-8]
80028574:	e5832000 	str	r2, [r3]
80028578:	e59f2014 	ldr	r2, [pc, #20]	@ 80028594 <_kpt_free+0x44>
8002857c:	e51b3008 	ldr	r3, [fp, #-8]
80028580:	e5823034 	str	r3, [r2, #52]	@ 0x34
80028584:	e1a00000 	nop			@ (mov r0, r0)
80028588:	e28bd000 	add	sp, fp, #0
8002858c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028590:	e12fff1e 	bx	lr
80028594:	800b0dc8 	.word	0x800b0dc8

80028598 <kpt_free>:
80028598:	e92d4800 	push	{fp, lr}
8002859c:	e28db004 	add	fp, sp, #4
800285a0:	e24dd008 	sub	sp, sp, #8
800285a4:	e50b0008 	str	r0, [fp, #-8]
800285a8:	e51b3008 	ldr	r3, [fp, #-8]
800285ac:	e59f2034 	ldr	r2, [pc, #52]	@ 800285e8 <kpt_free+0x50>
800285b0:	e1530002 	cmp	r3, r2
800285b4:	9a000003 	bls	800285c8 <kpt_free+0x30>
800285b8:	e3a0100a 	mov	r1, #10
800285bc:	e51b0008 	ldr	r0, [fp, #-8]
800285c0:	ebffe3ee 	bl	80021580 <kfree>
800285c4:	ea000005 	b	800285e0 <kpt_free+0x48>
800285c8:	e59f001c 	ldr	r0, [pc, #28]	@ 800285ec <kpt_free+0x54>
800285cc:	ebfff751 	bl	80026318 <acquire>
800285d0:	e51b0008 	ldr	r0, [fp, #-8]
800285d4:	ebffffdd 	bl	80028550 <_kpt_free>
800285d8:	e59f000c 	ldr	r0, [pc, #12]	@ 800285ec <kpt_free+0x54>
800285dc:	ebfff758 	bl	80026344 <release>
800285e0:	e24bd004 	sub	sp, fp, #4
800285e4:	e8bd8800 	pop	{fp, pc}
800285e8:	800fffff 	.word	0x800fffff
800285ec:	800b0dc8 	.word	0x800b0dc8

800285f0 <kpt_freerange>:
800285f0:	e92d4800 	push	{fp, lr}
800285f4:	e28db004 	add	fp, sp, #4
800285f8:	e24dd008 	sub	sp, sp, #8
800285fc:	e50b0008 	str	r0, [fp, #-8]
80028600:	e50b100c 	str	r1, [fp, #-12]
80028604:	ea000005 	b	80028620 <kpt_freerange+0x30>
80028608:	e51b3008 	ldr	r3, [fp, #-8]
8002860c:	e1a00003 	mov	r0, r3
80028610:	ebffffce 	bl	80028550 <_kpt_free>
80028614:	e51b3008 	ldr	r3, [fp, #-8]
80028618:	e2833b01 	add	r3, r3, #1024	@ 0x400
8002861c:	e50b3008 	str	r3, [fp, #-8]
80028620:	e51b2008 	ldr	r2, [fp, #-8]
80028624:	e51b300c 	ldr	r3, [fp, #-12]
80028628:	e1520003 	cmp	r2, r3
8002862c:	3afffff5 	bcc	80028608 <kpt_freerange+0x18>
80028630:	e1a00000 	nop			@ (mov r0, r0)
80028634:	e1a00000 	nop			@ (mov r0, r0)
80028638:	e24bd004 	sub	sp, fp, #4
8002863c:	e8bd8800 	pop	{fp, pc}

80028640 <kpt_alloc>:
80028640:	e92d4800 	push	{fp, lr}
80028644:	e28db004 	add	fp, sp, #4
80028648:	e24dd008 	sub	sp, sp, #8
8002864c:	e59f007c 	ldr	r0, [pc, #124]	@ 800286d0 <kpt_alloc+0x90>
80028650:	ebfff730 	bl	80026318 <acquire>
80028654:	e59f3074 	ldr	r3, [pc, #116]	@ 800286d0 <kpt_alloc+0x90>
80028658:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002865c:	e50b3008 	str	r3, [fp, #-8]
80028660:	e51b3008 	ldr	r3, [fp, #-8]
80028664:	e3530000 	cmp	r3, #0
80028668:	0a000003 	beq	8002867c <kpt_alloc+0x3c>
8002866c:	e51b3008 	ldr	r3, [fp, #-8]
80028670:	e5933000 	ldr	r3, [r3]
80028674:	e59f2054 	ldr	r2, [pc, #84]	@ 800286d0 <kpt_alloc+0x90>
80028678:	e5823034 	str	r3, [r2, #52]	@ 0x34
8002867c:	e59f004c 	ldr	r0, [pc, #76]	@ 800286d0 <kpt_alloc+0x90>
80028680:	ebfff72f 	bl	80026344 <release>
80028684:	e51b3008 	ldr	r3, [fp, #-8]
80028688:	e3530000 	cmp	r3, #0
8002868c:	1a000007 	bne	800286b0 <kpt_alloc+0x70>
80028690:	e3a0000a 	mov	r0, #10
80028694:	ebffe362 	bl	80021424 <kmalloc>
80028698:	e50b0008 	str	r0, [fp, #-8]
8002869c:	e51b3008 	ldr	r3, [fp, #-8]
800286a0:	e3530000 	cmp	r3, #0
800286a4:	1a000001 	bne	800286b0 <kpt_alloc+0x70>
800286a8:	e59f0024 	ldr	r0, [pc, #36]	@ 800286d4 <kpt_alloc+0x94>
800286ac:	ebffe4fe 	bl	80021aac <panic>
800286b0:	e3a02b01 	mov	r2, #1024	@ 0x400
800286b4:	e3a01000 	mov	r1, #0
800286b8:	e51b0008 	ldr	r0, [fp, #-8]
800286bc:	ebffde4f 	bl	80020000 <memset>
800286c0:	e51b3008 	ldr	r3, [fp, #-8]
800286c4:	e1a00003 	mov	r0, r3
800286c8:	e24bd004 	sub	sp, fp, #4
800286cc:	e8bd8800 	pop	{fp, pc}
800286d0:	800b0dc8 	.word	0x800b0dc8
800286d4:	8002a608 	.word	0x8002a608

800286d8 <walkpgdir>:
800286d8:	e92d4800 	push	{fp, lr}
800286dc:	e28db004 	add	fp, sp, #4
800286e0:	e24dd018 	sub	sp, sp, #24
800286e4:	e50b0010 	str	r0, [fp, #-16]
800286e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800286ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800286f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800286f4:	e1a03a23 	lsr	r3, r3, #20
800286f8:	e1a03103 	lsl	r3, r3, #2
800286fc:	e51b2010 	ldr	r2, [fp, #-16]
80028700:	e0823003 	add	r3, r2, r3
80028704:	e50b300c 	str	r3, [fp, #-12]
80028708:	e51b300c 	ldr	r3, [fp, #-12]
8002870c:	e5933000 	ldr	r3, [r3]
80028710:	e2033003 	and	r3, r3, #3
80028714:	e3530000 	cmp	r3, #0
80028718:	0a000007 	beq	8002873c <walkpgdir+0x64>
8002871c:	e51b300c 	ldr	r3, [fp, #-12]
80028720:	e5933000 	ldr	r3, [r3]
80028724:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028728:	e3c33003 	bic	r3, r3, #3
8002872c:	e1a00003 	mov	r0, r3
80028730:	ebffff70 	bl	800284f8 <p2v>
80028734:	e50b0008 	str	r0, [fp, #-8]
80028738:	ea000013 	b	8002878c <walkpgdir+0xb4>
8002873c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028740:	e3530000 	cmp	r3, #0
80028744:	0a000004 	beq	8002875c <walkpgdir+0x84>
80028748:	ebffffbc 	bl	80028640 <kpt_alloc>
8002874c:	e50b0008 	str	r0, [fp, #-8]
80028750:	e51b3008 	ldr	r3, [fp, #-8]
80028754:	e3530000 	cmp	r3, #0
80028758:	1a000001 	bne	80028764 <walkpgdir+0x8c>
8002875c:	e3a03000 	mov	r3, #0
80028760:	ea00000f 	b	800287a4 <walkpgdir+0xcc>
80028764:	e3a02b01 	mov	r2, #1024	@ 0x400
80028768:	e3a01000 	mov	r1, #0
8002876c:	e51b0008 	ldr	r0, [fp, #-8]
80028770:	ebffde22 	bl	80020000 <memset>
80028774:	e51b0008 	ldr	r0, [fp, #-8]
80028778:	ebffff54 	bl	800284d0 <v2p>
8002877c:	e1a03000 	mov	r3, r0
80028780:	e3832001 	orr	r2, r3, #1
80028784:	e51b300c 	ldr	r3, [fp, #-12]
80028788:	e5832000 	str	r2, [r3]
8002878c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028790:	e1a03623 	lsr	r3, r3, #12
80028794:	e6ef3073 	uxtb	r3, r3
80028798:	e1a03103 	lsl	r3, r3, #2
8002879c:	e51b2008 	ldr	r2, [fp, #-8]
800287a0:	e0823003 	add	r3, r2, r3
800287a4:	e1a00003 	mov	r0, r3
800287a8:	e24bd004 	sub	sp, fp, #4
800287ac:	e8bd8800 	pop	{fp, pc}

800287b0 <mappages>:
800287b0:	e92d4800 	push	{fp, lr}
800287b4:	e28db004 	add	fp, sp, #4
800287b8:	e24dd020 	sub	sp, sp, #32
800287bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800287c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800287c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800287c8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800287cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800287d0:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800287d4:	e3c3300f 	bic	r3, r3, #15
800287d8:	e50b3008 	str	r3, [fp, #-8]
800287dc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800287e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800287e4:	e0823003 	add	r3, r2, r3
800287e8:	e2433001 	sub	r3, r3, #1
800287ec:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800287f0:	e3c3300f 	bic	r3, r3, #15
800287f4:	e50b300c 	str	r3, [fp, #-12]
800287f8:	e3a02001 	mov	r2, #1
800287fc:	e51b1008 	ldr	r1, [fp, #-8]
80028800:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028804:	ebffffb3 	bl	800286d8 <walkpgdir>
80028808:	e50b0010 	str	r0, [fp, #-16]
8002880c:	e51b3010 	ldr	r3, [fp, #-16]
80028810:	e3530000 	cmp	r3, #0
80028814:	1a000001 	bne	80028820 <mappages+0x70>
80028818:	e3e03000 	mvn	r3, #0
8002881c:	ea00001b 	b	80028890 <mappages+0xe0>
80028820:	e51b3010 	ldr	r3, [fp, #-16]
80028824:	e5933000 	ldr	r3, [r3]
80028828:	e2033003 	and	r3, r3, #3
8002882c:	e3530000 	cmp	r3, #0
80028830:	0a000001 	beq	8002883c <mappages+0x8c>
80028834:	e59f0060 	ldr	r0, [pc, #96]	@ 8002889c <mappages+0xec>
80028838:	ebffe49b 	bl	80021aac <panic>
8002883c:	e59b3004 	ldr	r3, [fp, #4]
80028840:	e1a03203 	lsl	r3, r3, #4
80028844:	e2032030 	and	r2, r3, #48	@ 0x30
80028848:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002884c:	e1823003 	orr	r3, r2, r3
80028850:	e383200e 	orr	r2, r3, #14
80028854:	e51b3010 	ldr	r3, [fp, #-16]
80028858:	e5832000 	str	r2, [r3]
8002885c:	e51b2008 	ldr	r2, [fp, #-8]
80028860:	e51b300c 	ldr	r3, [fp, #-12]
80028864:	e1520003 	cmp	r2, r3
80028868:	0a000006 	beq	80028888 <mappages+0xd8>
8002886c:	e51b3008 	ldr	r3, [fp, #-8]
80028870:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028874:	e50b3008 	str	r3, [fp, #-8]
80028878:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002887c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028880:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028884:	eaffffdb 	b	800287f8 <mappages+0x48>
80028888:	e1a00000 	nop			@ (mov r0, r0)
8002888c:	e3a03000 	mov	r3, #0
80028890:	e1a00003 	mov	r0, r3
80028894:	e24bd004 	sub	sp, fp, #4
80028898:	e8bd8800 	pop	{fp, pc}
8002889c:	8002a618 	.word	0x8002a618

800288a0 <flush_tlb>:
800288a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800288a4:	e28db000 	add	fp, sp, #0
800288a8:	e24dd00c 	sub	sp, sp, #12
800288ac:	e3a03000 	mov	r3, #0
800288b0:	e50b3008 	str	r3, [fp, #-8]
800288b4:	e51b3008 	ldr	r3, [fp, #-8]
800288b8:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
800288bc:	e51b3008 	ldr	r3, [fp, #-8]
800288c0:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
800288c4:	e51b3008 	ldr	r3, [fp, #-8]
800288c8:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
800288cc:	e1a00000 	nop			@ (mov r0, r0)
800288d0:	e28bd000 	add	sp, fp, #0
800288d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800288d8:	e12fff1e 	bx	lr

800288dc <switchuvm>:
800288dc:	e92d4800 	push	{fp, lr}
800288e0:	e28db004 	add	fp, sp, #4
800288e4:	e24dd010 	sub	sp, sp, #16
800288e8:	e50b0010 	str	r0, [fp, #-16]
800288ec:	ebffdf4e 	bl	8002062c <pushcli>
800288f0:	e51b3010 	ldr	r3, [fp, #-16]
800288f4:	e5933004 	ldr	r3, [r3, #4]
800288f8:	e3530000 	cmp	r3, #0
800288fc:	1a000001 	bne	80028908 <switchuvm+0x2c>
80028900:	e59f002c 	ldr	r0, [pc, #44]	@ 80028934 <switchuvm+0x58>
80028904:	ebffe468 	bl	80021aac <panic>
80028908:	e51b3010 	ldr	r3, [fp, #-16]
8002890c:	e5933004 	ldr	r3, [r3, #4]
80028910:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028914:	e50b3008 	str	r3, [fp, #-8]
80028918:	e51b3008 	ldr	r3, [fp, #-8]
8002891c:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80028920:	ebffffde 	bl	800288a0 <flush_tlb>
80028924:	ebffdf55 	bl	80020680 <popcli>
80028928:	e1a00000 	nop			@ (mov r0, r0)
8002892c:	e24bd004 	sub	sp, fp, #4
80028930:	e8bd8800 	pop	{fp, pc}
80028934:	8002a620 	.word	0x8002a620

80028938 <inituvm>:
80028938:	e92d4800 	push	{fp, lr}
8002893c:	e28db004 	add	fp, sp, #4
80028940:	e24dd020 	sub	sp, sp, #32
80028944:	e50b0010 	str	r0, [fp, #-16]
80028948:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002894c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028950:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028954:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028958:	3a000001 	bcc	80028964 <inituvm+0x2c>
8002895c:	e59f0058 	ldr	r0, [pc, #88]	@ 800289bc <inituvm+0x84>
80028960:	ebffe451 	bl	80021aac <panic>
80028964:	ebffe331 	bl	80021630 <alloc_page>
80028968:	e50b0008 	str	r0, [fp, #-8]
8002896c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028970:	e3a01000 	mov	r1, #0
80028974:	e51b0008 	ldr	r0, [fp, #-8]
80028978:	ebffdda0 	bl	80020000 <memset>
8002897c:	e51b0008 	ldr	r0, [fp, #-8]
80028980:	ebfffed2 	bl	800284d0 <v2p>
80028984:	e1a03000 	mov	r3, r0
80028988:	e3a02003 	mov	r2, #3
8002898c:	e58d2000 	str	r2, [sp]
80028990:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028994:	e3a01000 	mov	r1, #0
80028998:	e51b0010 	ldr	r0, [fp, #-16]
8002899c:	ebffff83 	bl	800287b0 <mappages>
800289a0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800289a4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800289a8:	e51b0008 	ldr	r0, [fp, #-8]
800289ac:	ebffde05 	bl	800201c8 <memmove>
800289b0:	e1a00000 	nop			@ (mov r0, r0)
800289b4:	e24bd004 	sub	sp, fp, #4
800289b8:	e8bd8800 	pop	{fp, pc}
800289bc:	8002a634 	.word	0x8002a634

800289c0 <loaduvm>:
800289c0:	e92d4800 	push	{fp, lr}
800289c4:	e28db004 	add	fp, sp, #4
800289c8:	e24dd020 	sub	sp, sp, #32
800289cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800289d0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800289d4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800289d8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800289dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800289e0:	e1a03a03 	lsl	r3, r3, #20
800289e4:	e1a03a23 	lsr	r3, r3, #20
800289e8:	e3530000 	cmp	r3, #0
800289ec:	0a000001 	beq	800289f8 <loaduvm+0x38>
800289f0:	e59f00f0 	ldr	r0, [pc, #240]	@ 80028ae8 <loaduvm+0x128>
800289f4:	ebffe42c 	bl	80021aac <panic>
800289f8:	e3a03000 	mov	r3, #0
800289fc:	e50b3008 	str	r3, [fp, #-8]
80028a00:	ea000030 	b	80028ac8 <loaduvm+0x108>
80028a04:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028a08:	e51b3008 	ldr	r3, [fp, #-8]
80028a0c:	e0823003 	add	r3, r2, r3
80028a10:	e3a02000 	mov	r2, #0
80028a14:	e1a01003 	mov	r1, r3
80028a18:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028a1c:	ebffff2d 	bl	800286d8 <walkpgdir>
80028a20:	e50b0010 	str	r0, [fp, #-16]
80028a24:	e51b3010 	ldr	r3, [fp, #-16]
80028a28:	e3530000 	cmp	r3, #0
80028a2c:	1a000001 	bne	80028a38 <loaduvm+0x78>
80028a30:	e59f00b4 	ldr	r0, [pc, #180]	@ 80028aec <loaduvm+0x12c>
80028a34:	ebffe41c 	bl	80021aac <panic>
80028a38:	e51b3010 	ldr	r3, [fp, #-16]
80028a3c:	e5933000 	ldr	r3, [r3]
80028a40:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028a44:	e3c3300f 	bic	r3, r3, #15
80028a48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028a4c:	e59b2004 	ldr	r2, [fp, #4]
80028a50:	e51b3008 	ldr	r3, [fp, #-8]
80028a54:	e0423003 	sub	r3, r2, r3
80028a58:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028a5c:	2a000004 	bcs	80028a74 <loaduvm+0xb4>
80028a60:	e59b2004 	ldr	r2, [fp, #4]
80028a64:	e51b3008 	ldr	r3, [fp, #-8]
80028a68:	e0423003 	sub	r3, r2, r3
80028a6c:	e50b300c 	str	r3, [fp, #-12]
80028a70:	ea000001 	b	80028a7c <loaduvm+0xbc>
80028a74:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028a78:	e50b300c 	str	r3, [fp, #-12]
80028a7c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028a80:	ebfffe9c 	bl	800284f8 <p2v>
80028a84:	e1a01000 	mov	r1, r0
80028a88:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028a8c:	e51b3008 	ldr	r3, [fp, #-8]
80028a90:	e0822003 	add	r2, r2, r3
80028a94:	e51b300c 	ldr	r3, [fp, #-12]
80028a98:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80028a9c:	ebffec11 	bl	80023ae8 <readi>
80028aa0:	e1a03000 	mov	r3, r0
80028aa4:	e1a02003 	mov	r2, r3
80028aa8:	e51b300c 	ldr	r3, [fp, #-12]
80028aac:	e1530002 	cmp	r3, r2
80028ab0:	0a000001 	beq	80028abc <loaduvm+0xfc>
80028ab4:	e3e03000 	mvn	r3, #0
80028ab8:	ea000007 	b	80028adc <loaduvm+0x11c>
80028abc:	e51b3008 	ldr	r3, [fp, #-8]
80028ac0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028ac4:	e50b3008 	str	r3, [fp, #-8]
80028ac8:	e51b2008 	ldr	r2, [fp, #-8]
80028acc:	e59b3004 	ldr	r3, [fp, #4]
80028ad0:	e1520003 	cmp	r2, r3
80028ad4:	3affffca 	bcc	80028a04 <loaduvm+0x44>
80028ad8:	e3a03000 	mov	r3, #0
80028adc:	e1a00003 	mov	r0, r3
80028ae0:	e24bd004 	sub	sp, fp, #4
80028ae4:	e8bd8800 	pop	{fp, pc}
80028ae8:	8002a650 	.word	0x8002a650
80028aec:	8002a674 	.word	0x8002a674

80028af0 <allocuvm>:
80028af0:	e92d4810 	push	{r4, fp, lr}
80028af4:	e28db008 	add	fp, sp, #8
80028af8:	e24dd024 	sub	sp, sp, #36	@ 0x24
80028afc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028b00:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028b04:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028b08:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028b0c:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028b10:	9a000001 	bls	80028b1c <allocuvm+0x2c>
80028b14:	e3a03000 	mov	r3, #0
80028b18:	ea00002f 	b	80028bdc <allocuvm+0xec>
80028b1c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028b20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028b24:	e1520003 	cmp	r2, r3
80028b28:	2a000001 	bcs	80028b34 <allocuvm+0x44>
80028b2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028b30:	ea000029 	b	80028bdc <allocuvm+0xec>
80028b34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028b38:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028b3c:	e283300f 	add	r3, r3, #15
80028b40:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028b44:	e3c3300f 	bic	r3, r3, #15
80028b48:	e50b3010 	str	r3, [fp, #-16]
80028b4c:	ea00001d 	b	80028bc8 <allocuvm+0xd8>
80028b50:	ebffe2b6 	bl	80021630 <alloc_page>
80028b54:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028b58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028b5c:	e3530000 	cmp	r3, #0
80028b60:	1a000007 	bne	80028b84 <allocuvm+0x94>
80028b64:	e59f007c 	ldr	r0, [pc, #124]	@ 80028be8 <allocuvm+0xf8>
80028b68:	ebffe349 	bl	80021894 <cprintf>
80028b6c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028b70:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80028b74:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028b78:	eb00001b 	bl	80028bec <deallocuvm>
80028b7c:	e3a03000 	mov	r3, #0
80028b80:	ea000015 	b	80028bdc <allocuvm+0xec>
80028b84:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028b88:	e3a01000 	mov	r1, #0
80028b8c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028b90:	ebffdd1a 	bl	80020000 <memset>
80028b94:	e51b4010 	ldr	r4, [fp, #-16]
80028b98:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028b9c:	ebfffe4b 	bl	800284d0 <v2p>
80028ba0:	e1a03000 	mov	r3, r0
80028ba4:	e3a02003 	mov	r2, #3
80028ba8:	e58d2000 	str	r2, [sp]
80028bac:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028bb0:	e1a01004 	mov	r1, r4
80028bb4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028bb8:	ebfffefc 	bl	800287b0 <mappages>
80028bbc:	e51b3010 	ldr	r3, [fp, #-16]
80028bc0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028bc4:	e50b3010 	str	r3, [fp, #-16]
80028bc8:	e51b2010 	ldr	r2, [fp, #-16]
80028bcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028bd0:	e1520003 	cmp	r2, r3
80028bd4:	3affffdd 	bcc	80028b50 <allocuvm+0x60>
80028bd8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028bdc:	e1a00003 	mov	r0, r3
80028be0:	e24bd008 	sub	sp, fp, #8
80028be4:	e8bd8810 	pop	{r4, fp, pc}
80028be8:	8002a694 	.word	0x8002a694

80028bec <deallocuvm>:
80028bec:	e92d4800 	push	{fp, lr}
80028bf0:	e28db004 	add	fp, sp, #4
80028bf4:	e24dd020 	sub	sp, sp, #32
80028bf8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028bfc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028c00:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028c04:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028c08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c0c:	e1520003 	cmp	r2, r3
80028c10:	3a000001 	bcc	80028c1c <deallocuvm+0x30>
80028c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028c18:	ea000035 	b	80028cf4 <deallocuvm+0x108>
80028c1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028c20:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028c24:	e283300f 	add	r3, r3, #15
80028c28:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028c2c:	e3c3300f 	bic	r3, r3, #15
80028c30:	e50b3008 	str	r3, [fp, #-8]
80028c34:	ea000029 	b	80028ce0 <deallocuvm+0xf4>
80028c38:	e51b3008 	ldr	r3, [fp, #-8]
80028c3c:	e3a02000 	mov	r2, #0
80028c40:	e1a01003 	mov	r1, r3
80028c44:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028c48:	ebfffea2 	bl	800286d8 <walkpgdir>
80028c4c:	e50b000c 	str	r0, [fp, #-12]
80028c50:	e51b300c 	ldr	r3, [fp, #-12]
80028c54:	e3530000 	cmp	r3, #0
80028c58:	1a000006 	bne	80028c78 <deallocuvm+0x8c>
80028c5c:	e51b3008 	ldr	r3, [fp, #-8]
80028c60:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80028c64:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028c68:	e1a03a23 	lsr	r3, r3, #20
80028c6c:	e1a03a03 	lsl	r3, r3, #20
80028c70:	e50b3008 	str	r3, [fp, #-8]
80028c74:	ea000016 	b	80028cd4 <deallocuvm+0xe8>
80028c78:	e51b300c 	ldr	r3, [fp, #-12]
80028c7c:	e5933000 	ldr	r3, [r3]
80028c80:	e2033003 	and	r3, r3, #3
80028c84:	e3530000 	cmp	r3, #0
80028c88:	0a000011 	beq	80028cd4 <deallocuvm+0xe8>
80028c8c:	e51b300c 	ldr	r3, [fp, #-12]
80028c90:	e5933000 	ldr	r3, [r3]
80028c94:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028c98:	e3c3300f 	bic	r3, r3, #15
80028c9c:	e50b3010 	str	r3, [fp, #-16]
80028ca0:	e51b3010 	ldr	r3, [fp, #-16]
80028ca4:	e3530000 	cmp	r3, #0
80028ca8:	1a000001 	bne	80028cb4 <deallocuvm+0xc8>
80028cac:	e59f004c 	ldr	r0, [pc, #76]	@ 80028d00 <deallocuvm+0x114>
80028cb0:	ebffe37d 	bl	80021aac <panic>
80028cb4:	e51b0010 	ldr	r0, [fp, #-16]
80028cb8:	ebfffe0e 	bl	800284f8 <p2v>
80028cbc:	e1a03000 	mov	r3, r0
80028cc0:	e1a00003 	mov	r0, r3
80028cc4:	ebffe24f 	bl	80021608 <free_page>
80028cc8:	e51b300c 	ldr	r3, [fp, #-12]
80028ccc:	e3a02000 	mov	r2, #0
80028cd0:	e5832000 	str	r2, [r3]
80028cd4:	e51b3008 	ldr	r3, [fp, #-8]
80028cd8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028cdc:	e50b3008 	str	r3, [fp, #-8]
80028ce0:	e51b2008 	ldr	r2, [fp, #-8]
80028ce4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028ce8:	e1520003 	cmp	r2, r3
80028cec:	3affffd1 	bcc	80028c38 <deallocuvm+0x4c>
80028cf0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028cf4:	e1a00003 	mov	r0, r3
80028cf8:	e24bd004 	sub	sp, fp, #4
80028cfc:	e8bd8800 	pop	{fp, pc}
80028d00:	8002a6ac 	.word	0x8002a6ac

80028d04 <freevm>:
80028d04:	e92d4800 	push	{fp, lr}
80028d08:	e28db004 	add	fp, sp, #4
80028d0c:	e24dd010 	sub	sp, sp, #16
80028d10:	e50b0010 	str	r0, [fp, #-16]
80028d14:	e51b3010 	ldr	r3, [fp, #-16]
80028d18:	e3530000 	cmp	r3, #0
80028d1c:	1a000001 	bne	80028d28 <freevm+0x24>
80028d20:	e59f0098 	ldr	r0, [pc, #152]	@ 80028dc0 <freevm+0xbc>
80028d24:	ebffe360 	bl	80021aac <panic>
80028d28:	e3a02000 	mov	r2, #0
80028d2c:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028d30:	e51b0010 	ldr	r0, [fp, #-16]
80028d34:	ebffffac 	bl	80028bec <deallocuvm>
80028d38:	e3a03000 	mov	r3, #0
80028d3c:	e50b3008 	str	r3, [fp, #-8]
80028d40:	ea000016 	b	80028da0 <freevm+0x9c>
80028d44:	e51b3008 	ldr	r3, [fp, #-8]
80028d48:	e1a03103 	lsl	r3, r3, #2
80028d4c:	e51b2010 	ldr	r2, [fp, #-16]
80028d50:	e0823003 	add	r3, r2, r3
80028d54:	e5933000 	ldr	r3, [r3]
80028d58:	e2033003 	and	r3, r3, #3
80028d5c:	e3530000 	cmp	r3, #0
80028d60:	0a00000b 	beq	80028d94 <freevm+0x90>
80028d64:	e51b3008 	ldr	r3, [fp, #-8]
80028d68:	e1a03103 	lsl	r3, r3, #2
80028d6c:	e51b2010 	ldr	r2, [fp, #-16]
80028d70:	e0823003 	add	r3, r2, r3
80028d74:	e5933000 	ldr	r3, [r3]
80028d78:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028d7c:	e3c33003 	bic	r3, r3, #3
80028d80:	e1a00003 	mov	r0, r3
80028d84:	ebfffddb 	bl	800284f8 <p2v>
80028d88:	e50b000c 	str	r0, [fp, #-12]
80028d8c:	e51b000c 	ldr	r0, [fp, #-12]
80028d90:	ebfffe00 	bl	80028598 <kpt_free>
80028d94:	e51b3008 	ldr	r3, [fp, #-8]
80028d98:	e2833001 	add	r3, r3, #1
80028d9c:	e50b3008 	str	r3, [fp, #-8]
80028da0:	e51b3008 	ldr	r3, [fp, #-8]
80028da4:	e35300ff 	cmp	r3, #255	@ 0xff
80028da8:	9affffe5 	bls	80028d44 <freevm+0x40>
80028dac:	e51b0010 	ldr	r0, [fp, #-16]
80028db0:	ebfffdf8 	bl	80028598 <kpt_free>
80028db4:	e1a00000 	nop			@ (mov r0, r0)
80028db8:	e24bd004 	sub	sp, fp, #4
80028dbc:	e8bd8800 	pop	{fp, pc}
80028dc0:	8002a6b8 	.word	0x8002a6b8

80028dc4 <clearpteu>:
80028dc4:	e92d4800 	push	{fp, lr}
80028dc8:	e28db004 	add	fp, sp, #4
80028dcc:	e24dd010 	sub	sp, sp, #16
80028dd0:	e50b0010 	str	r0, [fp, #-16]
80028dd4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028dd8:	e3a02000 	mov	r2, #0
80028ddc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028de0:	e51b0010 	ldr	r0, [fp, #-16]
80028de4:	ebfffe3b 	bl	800286d8 <walkpgdir>
80028de8:	e50b0008 	str	r0, [fp, #-8]
80028dec:	e51b3008 	ldr	r3, [fp, #-8]
80028df0:	e3530000 	cmp	r3, #0
80028df4:	1a000001 	bne	80028e00 <clearpteu+0x3c>
80028df8:	e59f0024 	ldr	r0, [pc, #36]	@ 80028e24 <clearpteu+0x60>
80028dfc:	ebffe32a 	bl	80021aac <panic>
80028e00:	e51b3008 	ldr	r3, [fp, #-8]
80028e04:	e5933000 	ldr	r3, [r3]
80028e08:	e3c33030 	bic	r3, r3, #48	@ 0x30
80028e0c:	e3832010 	orr	r2, r3, #16
80028e10:	e51b3008 	ldr	r3, [fp, #-8]
80028e14:	e5832000 	str	r2, [r3]
80028e18:	e1a00000 	nop			@ (mov r0, r0)
80028e1c:	e24bd004 	sub	sp, fp, #4
80028e20:	e8bd8800 	pop	{fp, pc}
80028e24:	8002a6cc 	.word	0x8002a6cc

80028e28 <copyuvm>:
80028e28:	e92d4810 	push	{r4, fp, lr}
80028e2c:	e28db008 	add	fp, sp, #8
80028e30:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
80028e34:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80028e38:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80028e3c:	ebfffdff 	bl	80028640 <kpt_alloc>
80028e40:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028e44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028e48:	e3530000 	cmp	r3, #0
80028e4c:	1a000001 	bne	80028e58 <copyuvm+0x30>
80028e50:	e3a03000 	mov	r3, #0
80028e54:	ea000045 	b	80028f70 <copyuvm+0x148>
80028e58:	e3a03000 	mov	r3, #0
80028e5c:	e50b3010 	str	r3, [fp, #-16]
80028e60:	ea000036 	b	80028f40 <copyuvm+0x118>
80028e64:	e51b3010 	ldr	r3, [fp, #-16]
80028e68:	e3a02000 	mov	r2, #0
80028e6c:	e1a01003 	mov	r1, r3
80028e70:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80028e74:	ebfffe17 	bl	800286d8 <walkpgdir>
80028e78:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028e80:	e3530000 	cmp	r3, #0
80028e84:	0a000029 	beq	80028f30 <copyuvm+0x108>
80028e88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028e8c:	e5933000 	ldr	r3, [r3]
80028e90:	e2033003 	and	r3, r3, #3
80028e94:	e3530000 	cmp	r3, #0
80028e98:	0a000024 	beq	80028f30 <copyuvm+0x108>
80028e9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028ea0:	e5933000 	ldr	r3, [r3]
80028ea4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028ea8:	e3c3300f 	bic	r3, r3, #15
80028eac:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028eb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028eb4:	e5933000 	ldr	r3, [r3]
80028eb8:	e1a03223 	lsr	r3, r3, #4
80028ebc:	e2033003 	and	r3, r3, #3
80028ec0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80028ec4:	ebffe1d9 	bl	80021630 <alloc_page>
80028ec8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028ecc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028ed0:	e3530000 	cmp	r3, #0
80028ed4:	0a00001f 	beq	80028f58 <copyuvm+0x130>
80028ed8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80028edc:	ebfffd85 	bl	800284f8 <p2v>
80028ee0:	e1a03000 	mov	r3, r0
80028ee4:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028ee8:	e1a01003 	mov	r1, r3
80028eec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028ef0:	ebffdcb4 	bl	800201c8 <memmove>
80028ef4:	e51b4010 	ldr	r4, [fp, #-16]
80028ef8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028efc:	ebfffd73 	bl	800284d0 <v2p>
80028f00:	e1a02000 	mov	r2, r0
80028f04:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028f08:	e58d3000 	str	r3, [sp]
80028f0c:	e1a03002 	mov	r3, r2
80028f10:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028f14:	e1a01004 	mov	r1, r4
80028f18:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028f1c:	ebfffe23 	bl	800287b0 <mappages>
80028f20:	e1a03000 	mov	r3, r0
80028f24:	e3530000 	cmp	r3, #0
80028f28:	ba00000c 	blt	80028f60 <copyuvm+0x138>
80028f2c:	ea000000 	b	80028f34 <copyuvm+0x10c>
80028f30:	e1a00000 	nop			@ (mov r0, r0)
80028f34:	e51b3010 	ldr	r3, [fp, #-16]
80028f38:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028f3c:	e50b3010 	str	r3, [fp, #-16]
80028f40:	e51b2010 	ldr	r2, [fp, #-16]
80028f44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80028f48:	e1520003 	cmp	r2, r3
80028f4c:	3affffc4 	bcc	80028e64 <copyuvm+0x3c>
80028f50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028f54:	ea000005 	b	80028f70 <copyuvm+0x148>
80028f58:	e1a00000 	nop			@ (mov r0, r0)
80028f5c:	ea000000 	b	80028f64 <copyuvm+0x13c>
80028f60:	e1a00000 	nop			@ (mov r0, r0)
80028f64:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028f68:	ebffff65 	bl	80028d04 <freevm>
80028f6c:	e3a03000 	mov	r3, #0
80028f70:	e1a00003 	mov	r0, r3
80028f74:	e24bd008 	sub	sp, fp, #8
80028f78:	e8bd8810 	pop	{r4, fp, pc}

80028f7c <uva2ka>:
80028f7c:	e92d4800 	push	{fp, lr}
80028f80:	e28db004 	add	fp, sp, #4
80028f84:	e24dd010 	sub	sp, sp, #16
80028f88:	e50b0010 	str	r0, [fp, #-16]
80028f8c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028f90:	e3a02000 	mov	r2, #0
80028f94:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028f98:	e51b0010 	ldr	r0, [fp, #-16]
80028f9c:	ebfffdcd 	bl	800286d8 <walkpgdir>
80028fa0:	e50b0008 	str	r0, [fp, #-8]
80028fa4:	e51b3008 	ldr	r3, [fp, #-8]
80028fa8:	e5933000 	ldr	r3, [r3]
80028fac:	e2033003 	and	r3, r3, #3
80028fb0:	e3530000 	cmp	r3, #0
80028fb4:	1a000001 	bne	80028fc0 <uva2ka+0x44>
80028fb8:	e3a03000 	mov	r3, #0
80028fbc:	ea00000e 	b	80028ffc <uva2ka+0x80>
80028fc0:	e51b3008 	ldr	r3, [fp, #-8]
80028fc4:	e5933000 	ldr	r3, [r3]
80028fc8:	e2033030 	and	r3, r3, #48	@ 0x30
80028fcc:	e3530030 	cmp	r3, #48	@ 0x30
80028fd0:	0a000001 	beq	80028fdc <uva2ka+0x60>
80028fd4:	e3a03000 	mov	r3, #0
80028fd8:	ea000007 	b	80028ffc <uva2ka+0x80>
80028fdc:	e51b3008 	ldr	r3, [fp, #-8]
80028fe0:	e5933000 	ldr	r3, [r3]
80028fe4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028fe8:	e3c3300f 	bic	r3, r3, #15
80028fec:	e1a00003 	mov	r0, r3
80028ff0:	ebfffd40 	bl	800284f8 <p2v>
80028ff4:	e1a03000 	mov	r3, r0
80028ff8:	e1a00000 	nop			@ (mov r0, r0)
80028ffc:	e1a00003 	mov	r0, r3
80029000:	e24bd004 	sub	sp, fp, #4
80029004:	e8bd8800 	pop	{fp, pc}

80029008 <copyout>:
80029008:	e92d4800 	push	{fp, lr}
8002900c:	e28db004 	add	fp, sp, #4
80029010:	e24dd020 	sub	sp, sp, #32
80029014:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029018:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002901c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029020:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029024:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029028:	e50b3008 	str	r3, [fp, #-8]
8002902c:	ea00002c 	b	800290e4 <copyout+0xdc>
80029030:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029034:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029038:	e3c3300f 	bic	r3, r3, #15
8002903c:	e50b3010 	str	r3, [fp, #-16]
80029040:	e51b3010 	ldr	r3, [fp, #-16]
80029044:	e1a01003 	mov	r1, r3
80029048:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002904c:	ebffffca 	bl	80028f7c <uva2ka>
80029050:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80029054:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029058:	e3530000 	cmp	r3, #0
8002905c:	1a000001 	bne	80029068 <copyout+0x60>
80029060:	e3e03000 	mvn	r3, #0
80029064:	ea000022 	b	800290f4 <copyout+0xec>
80029068:	e51b2010 	ldr	r2, [fp, #-16]
8002906c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029070:	e0423003 	sub	r3, r2, r3
80029074:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029078:	e50b300c 	str	r3, [fp, #-12]
8002907c:	e51b200c 	ldr	r2, [fp, #-12]
80029080:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029084:	e1520003 	cmp	r2, r3
80029088:	9a000001 	bls	80029094 <copyout+0x8c>
8002908c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029090:	e50b300c 	str	r3, [fp, #-12]
80029094:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029098:	e51b3010 	ldr	r3, [fp, #-16]
8002909c:	e0423003 	sub	r3, r2, r3
800290a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800290a4:	e0823003 	add	r3, r2, r3
800290a8:	e51b200c 	ldr	r2, [fp, #-12]
800290ac:	e51b1008 	ldr	r1, [fp, #-8]
800290b0:	e1a00003 	mov	r0, r3
800290b4:	ebffdc43 	bl	800201c8 <memmove>
800290b8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800290bc:	e51b300c 	ldr	r3, [fp, #-12]
800290c0:	e0423003 	sub	r3, r2, r3
800290c4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800290c8:	e51b2008 	ldr	r2, [fp, #-8]
800290cc:	e51b300c 	ldr	r3, [fp, #-12]
800290d0:	e0823003 	add	r3, r2, r3
800290d4:	e50b3008 	str	r3, [fp, #-8]
800290d8:	e51b3010 	ldr	r3, [fp, #-16]
800290dc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800290e0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800290e4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800290e8:	e3530000 	cmp	r3, #0
800290ec:	1affffcf 	bne	80029030 <copyout+0x28>
800290f0:	e3a03000 	mov	r3, #0
800290f4:	e1a00003 	mov	r0, r3
800290f8:	e24bd004 	sub	sp, fp, #4
800290fc:	e8bd8800 	pop	{fp, pc}

80029100 <paging_init>:
80029100:	e92d4800 	push	{fp, lr}
80029104:	e28db004 	add	fp, sp, #4
80029108:	e24dd010 	sub	sp, sp, #16
8002910c:	e50b0008 	str	r0, [fp, #-8]
80029110:	e50b100c 	str	r1, [fp, #-12]
80029114:	e59f0034 	ldr	r0, [pc, #52]	@ 80029150 <paging_init+0x50>
80029118:	e51b3008 	ldr	r3, [fp, #-8]
8002911c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029120:	e1a01003 	mov	r1, r3
80029124:	e51b200c 	ldr	r2, [fp, #-12]
80029128:	e51b3008 	ldr	r3, [fp, #-8]
8002912c:	e0422003 	sub	r2, r2, r3
80029130:	e3a03003 	mov	r3, #3
80029134:	e58d3000 	str	r3, [sp]
80029138:	e51b3008 	ldr	r3, [fp, #-8]
8002913c:	ebfffd9b 	bl	800287b0 <mappages>
80029140:	ebfffdd6 	bl	800288a0 <flush_tlb>
80029144:	e1a00000 	nop			@ (mov r0, r0)
80029148:	e24bd004 	sub	sp, fp, #4
8002914c:	e8bd8800 	pop	{fp, pc}
80029150:	80014000 	.word	0x80014000

80029154 <kpt>:
80029154:	e92d4800 	push	{fp, lr}
80029158:	e28db004 	add	fp, sp, #4
8002915c:	e24dd008 	sub	sp, sp, #8
80029160:	e59f0080 	ldr	r0, [pc, #128]	@ 800291e8 <kpt+0x94>
80029164:	ebffe1ca 	bl	80021894 <cprintf>
80029168:	e3a03000 	mov	r3, #0
8002916c:	e50b3008 	str	r3, [fp, #-8]
80029170:	ea000014 	b	800291c8 <kpt+0x74>
80029174:	e59f3070 	ldr	r3, [pc, #112]	@ 800291ec <kpt+0x98>
80029178:	e5932000 	ldr	r2, [r3]
8002917c:	e51b3008 	ldr	r3, [fp, #-8]
80029180:	e1a03103 	lsl	r3, r3, #2
80029184:	e0823003 	add	r3, r2, r3
80029188:	e5933000 	ldr	r3, [r3]
8002918c:	e50b300c 	str	r3, [fp, #-12]
80029190:	e51b300c 	ldr	r3, [fp, #-12]
80029194:	e2033003 	and	r3, r3, #3
80029198:	e3530000 	cmp	r3, #0
8002919c:	0a000006 	beq	800291bc <kpt+0x68>
800291a0:	e51b300c 	ldr	r3, [fp, #-12]
800291a4:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
800291a8:	e3c33003 	bic	r3, r3, #3
800291ac:	e51b200c 	ldr	r2, [fp, #-12]
800291b0:	e51b1008 	ldr	r1, [fp, #-8]
800291b4:	e59f0034 	ldr	r0, [pc, #52]	@ 800291f0 <kpt+0x9c>
800291b8:	ebffe1b5 	bl	80021894 <cprintf>
800291bc:	e51b3008 	ldr	r3, [fp, #-8]
800291c0:	e2833001 	add	r3, r3, #1
800291c4:	e50b3008 	str	r3, [fp, #-8]
800291c8:	e51b3008 	ldr	r3, [fp, #-8]
800291cc:	e35300ff 	cmp	r3, #255	@ 0xff
800291d0:	daffffe7 	ble	80029174 <kpt+0x20>
800291d4:	e59f0018 	ldr	r0, [pc, #24]	@ 800291f4 <kpt+0xa0>
800291d8:	ebffe1ad 	bl	80021894 <cprintf>
800291dc:	e1a00000 	nop			@ (mov r0, r0)
800291e0:	e24bd004 	sub	sp, fp, #4
800291e4:	e8bd8800 	pop	{fp, pc}
800291e8:	8002a6d8 	.word	0x8002a6d8
800291ec:	800b0dc4 	.word	0x800b0dc4
800291f0:	8002a6f8 	.word	0x8002a6f8
800291f4:	8002a714 	.word	0x8002a714

800291f8 <handle_page_fault>:
800291f8:	e92d4800 	push	{fp, lr}
800291fc:	e28db004 	add	fp, sp, #4
80029200:	e24dd018 	sub	sp, sp, #24
80029204:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029208:	e59f3108 	ldr	r3, [pc, #264]	@ 80029318 <handle_page_fault+0x120>
8002920c:	e5933000 	ldr	r3, [r3]
80029210:	e3530000 	cmp	r3, #0
80029214:	0a000004 	beq	8002922c <handle_page_fault+0x34>
80029218:	e59f30f8 	ldr	r3, [pc, #248]	@ 80029318 <handle_page_fault+0x120>
8002921c:	e5933000 	ldr	r3, [r3]
80029220:	e5933004 	ldr	r3, [r3, #4]
80029224:	e3530000 	cmp	r3, #0
80029228:	1a000001 	bne	80029234 <handle_page_fault+0x3c>
8002922c:	e3e03000 	mvn	r3, #0
80029230:	ea000035 	b	8002930c <handle_page_fault+0x114>
80029234:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029238:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002923c:	e3c3300f 	bic	r3, r3, #15
80029240:	e50b3008 	str	r3, [fp, #-8]
80029244:	e59f30cc 	ldr	r3, [pc, #204]	@ 80029318 <handle_page_fault+0x120>
80029248:	e5933000 	ldr	r3, [r3]
8002924c:	e5933000 	ldr	r3, [r3]
80029250:	e51b2008 	ldr	r2, [fp, #-8]
80029254:	e1520003 	cmp	r2, r3
80029258:	2a000002 	bcs	80029268 <handle_page_fault+0x70>
8002925c:	e51b3008 	ldr	r3, [fp, #-8]
80029260:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80029264:	9a000001 	bls	80029270 <handle_page_fault+0x78>
80029268:	e3e03000 	mvn	r3, #0
8002926c:	ea000026 	b	8002930c <handle_page_fault+0x114>
80029270:	e59f30a0 	ldr	r3, [pc, #160]	@ 80029318 <handle_page_fault+0x120>
80029274:	e5933000 	ldr	r3, [r3]
80029278:	e5933004 	ldr	r3, [r3, #4]
8002927c:	e51b1008 	ldr	r1, [fp, #-8]
80029280:	e3a02001 	mov	r2, #1
80029284:	e1a00003 	mov	r0, r3
80029288:	ebfffd12 	bl	800286d8 <walkpgdir>
8002928c:	e50b000c 	str	r0, [fp, #-12]
80029290:	e51b300c 	ldr	r3, [fp, #-12]
80029294:	e3530000 	cmp	r3, #0
80029298:	1a000001 	bne	800292a4 <handle_page_fault+0xac>
8002929c:	e3e03000 	mvn	r3, #0
800292a0:	ea000019 	b	8002930c <handle_page_fault+0x114>
800292a4:	e51b300c 	ldr	r3, [fp, #-12]
800292a8:	e5933000 	ldr	r3, [r3]
800292ac:	e2033003 	and	r3, r3, #3
800292b0:	e3530000 	cmp	r3, #0
800292b4:	0a000001 	beq	800292c0 <handle_page_fault+0xc8>
800292b8:	e3a03000 	mov	r3, #0
800292bc:	ea000012 	b	8002930c <handle_page_fault+0x114>
800292c0:	ebffe0da 	bl	80021630 <alloc_page>
800292c4:	e50b0010 	str	r0, [fp, #-16]
800292c8:	e51b3010 	ldr	r3, [fp, #-16]
800292cc:	e3530000 	cmp	r3, #0
800292d0:	1a000001 	bne	800292dc <handle_page_fault+0xe4>
800292d4:	e3e03000 	mvn	r3, #0
800292d8:	ea00000b 	b	8002930c <handle_page_fault+0x114>
800292dc:	e3a02a01 	mov	r2, #4096	@ 0x1000
800292e0:	e3a01000 	mov	r1, #0
800292e4:	e51b0010 	ldr	r0, [fp, #-16]
800292e8:	ebffdb44 	bl	80020000 <memset>
800292ec:	e51b0010 	ldr	r0, [fp, #-16]
800292f0:	ebfffc76 	bl	800284d0 <v2p>
800292f4:	e1a03000 	mov	r3, r0
800292f8:	e383203e 	orr	r2, r3, #62	@ 0x3e
800292fc:	e51b300c 	ldr	r3, [fp, #-12]
80029300:	e5832000 	str	r2, [r3]
80029304:	ebfffd65 	bl	800288a0 <flush_tlb>
80029308:	e3a03000 	mov	r3, #0
8002930c:	e1a00003 	mov	r0, r3
80029310:	e24bd004 	sub	sp, fp, #4
80029314:	e8bd8800 	pop	{fp, pc}
80029318:	800b0dc0 	.word	0x800b0dc0

8002931c <print_proc_page_table>:
8002931c:	e92d4800 	push	{fp, lr}
80029320:	e28db004 	add	fp, sp, #4
80029324:	e24dd028 	sub	sp, sp, #40	@ 0x28
80029328:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002932c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029330:	e3530000 	cmp	r3, #0
80029334:	1a000002 	bne	80029344 <print_proc_page_table+0x28>
80029338:	e59f01e0 	ldr	r0, [pc, #480]	@ 80029520 <print_proc_page_table+0x204>
8002933c:	ebffe154 	bl	80021894 <cprintf>
80029340:	ea000074 	b	80029518 <print_proc_page_table+0x1fc>
80029344:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029348:	e5931010 	ldr	r1, [r3, #16]
8002934c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029350:	e283306c 	add	r3, r3, #108	@ 0x6c
80029354:	e1a02003 	mov	r2, r3
80029358:	e59f01c4 	ldr	r0, [pc, #452]	@ 80029524 <print_proc_page_table+0x208>
8002935c:	ebffe14c 	bl	80021894 <cprintf>
80029360:	e3a03801 	mov	r3, #65536	@ 0x10000
80029364:	e50b300c 	str	r3, [fp, #-12]
80029368:	e3a03000 	mov	r3, #0
8002936c:	e50b3008 	str	r3, [fp, #-8]
80029370:	ea000027 	b	80029414 <print_proc_page_table+0xf8>
80029374:	e51b3008 	ldr	r3, [fp, #-8]
80029378:	e1a03603 	lsl	r3, r3, #12
8002937c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029380:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029384:	e5933004 	ldr	r3, [r3, #4]
80029388:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002938c:	e3a02000 	mov	r2, #0
80029390:	e1a00003 	mov	r0, r3
80029394:	ebfffccf 	bl	800286d8 <walkpgdir>
80029398:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002939c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800293a0:	e3530000 	cmp	r3, #0
800293a4:	0a000004 	beq	800293bc <print_proc_page_table+0xa0>
800293a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800293ac:	e5933000 	ldr	r3, [r3]
800293b0:	e2033003 	and	r3, r3, #3
800293b4:	e3530000 	cmp	r3, #0
800293b8:	1a000003 	bne	800293cc <print_proc_page_table+0xb0>
800293bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800293c0:	e59f0160 	ldr	r0, [pc, #352]	@ 80029528 <print_proc_page_table+0x20c>
800293c4:	ebffe132 	bl	80021894 <cprintf>
800293c8:	ea00000e 	b	80029408 <print_proc_page_table+0xec>
800293cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800293d0:	e5931000 	ldr	r1, [r3]
800293d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800293d8:	e5933000 	ldr	r3, [r3]
800293dc:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800293e0:	e3c3300f 	bic	r3, r3, #15
800293e4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800293e8:	e5922000 	ldr	r2, [r2]
800293ec:	e1a02222 	lsr	r2, r2, #4
800293f0:	e2022003 	and	r2, r2, #3
800293f4:	e58d2000 	str	r2, [sp]
800293f8:	e1a02001 	mov	r2, r1
800293fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029400:	e59f0124 	ldr	r0, [pc, #292]	@ 8002952c <print_proc_page_table+0x210>
80029404:	ebffe122 	bl	80021894 <cprintf>
80029408:	e51b3008 	ldr	r3, [fp, #-8]
8002940c:	e2833001 	add	r3, r3, #1
80029410:	e50b3008 	str	r3, [fp, #-8]
80029414:	e51b3008 	ldr	r3, [fp, #-8]
80029418:	e3530009 	cmp	r3, #9
8002941c:	9affffd4 	bls	80029374 <print_proc_page_table+0x58>
80029420:	e51b300c 	ldr	r3, [fp, #-12]
80029424:	e3530009 	cmp	r3, #9
80029428:	8a000002 	bhi	80029438 <print_proc_page_table+0x11c>
8002942c:	e59f00fc 	ldr	r0, [pc, #252]	@ 80029530 <print_proc_page_table+0x214>
80029430:	ebffe117 	bl	80021894 <cprintf>
80029434:	ea000032 	b	80029504 <print_proc_page_table+0x1e8>
80029438:	e51b300c 	ldr	r3, [fp, #-12]
8002943c:	e243300a 	sub	r3, r3, #10
80029440:	e50b3010 	str	r3, [fp, #-16]
80029444:	e3a03000 	mov	r3, #0
80029448:	e50b3008 	str	r3, [fp, #-8]
8002944c:	ea000029 	b	800294f8 <print_proc_page_table+0x1dc>
80029450:	e51b2010 	ldr	r2, [fp, #-16]
80029454:	e51b3008 	ldr	r3, [fp, #-8]
80029458:	e0823003 	add	r3, r2, r3
8002945c:	e1a03603 	lsl	r3, r3, #12
80029460:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029464:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029468:	e5933004 	ldr	r3, [r3, #4]
8002946c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029470:	e3a02000 	mov	r2, #0
80029474:	e1a00003 	mov	r0, r3
80029478:	ebfffc96 	bl	800286d8 <walkpgdir>
8002947c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029480:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029484:	e3530000 	cmp	r3, #0
80029488:	0a000004 	beq	800294a0 <print_proc_page_table+0x184>
8002948c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029490:	e5933000 	ldr	r3, [r3]
80029494:	e2033003 	and	r3, r3, #3
80029498:	e3530000 	cmp	r3, #0
8002949c:	1a000003 	bne	800294b0 <print_proc_page_table+0x194>
800294a0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800294a4:	e59f007c 	ldr	r0, [pc, #124]	@ 80029528 <print_proc_page_table+0x20c>
800294a8:	ebffe0f9 	bl	80021894 <cprintf>
800294ac:	ea00000e 	b	800294ec <print_proc_page_table+0x1d0>
800294b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800294b4:	e5931000 	ldr	r1, [r3]
800294b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800294bc:	e5933000 	ldr	r3, [r3]
800294c0:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800294c4:	e3c3300f 	bic	r3, r3, #15
800294c8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800294cc:	e5922000 	ldr	r2, [r2]
800294d0:	e1a02222 	lsr	r2, r2, #4
800294d4:	e2022003 	and	r2, r2, #3
800294d8:	e58d2000 	str	r2, [sp]
800294dc:	e1a02001 	mov	r2, r1
800294e0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800294e4:	e59f0040 	ldr	r0, [pc, #64]	@ 8002952c <print_proc_page_table+0x210>
800294e8:	ebffe0e9 	bl	80021894 <cprintf>
800294ec:	e51b3008 	ldr	r3, [fp, #-8]
800294f0:	e2833001 	add	r3, r3, #1
800294f4:	e50b3008 	str	r3, [fp, #-8]
800294f8:	e51b3008 	ldr	r3, [fp, #-8]
800294fc:	e3530009 	cmp	r3, #9
80029500:	9affffd2 	bls	80029450 <print_proc_page_table+0x134>
80029504:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029508:	e5933010 	ldr	r3, [r3, #16]
8002950c:	e1a01003 	mov	r1, r3
80029510:	e59f001c 	ldr	r0, [pc, #28]	@ 80029534 <print_proc_page_table+0x218>
80029514:	ebffe0de 	bl	80021894 <cprintf>
80029518:	e24bd004 	sub	sp, fp, #4
8002951c:	e8bd8800 	pop	{fp, pc}
80029520:	8002a728 	.word	0x8002a728
80029524:	8002a748 	.word	0x8002a748
80029528:	8002a76c 	.word	0x8002a76c
8002952c:	8002a784 	.word	0x8002a784
80029530:	8002a7b4 	.word	0x8002a7b4
80029534:	8002a7e0 	.word	0x8002a7e0

80029538 <default_isr>:
80029538:	e92d4800 	push	{fp, lr}
8002953c:	e28db004 	add	fp, sp, #4
80029540:	e24dd008 	sub	sp, sp, #8
80029544:	e50b0008 	str	r0, [fp, #-8]
80029548:	e50b100c 	str	r1, [fp, #-12]
8002954c:	e51b100c 	ldr	r1, [fp, #-12]
80029550:	e59f000c 	ldr	r0, [pc, #12]	@ 80029564 <default_isr+0x2c>
80029554:	ebffe0ce 	bl	80021894 <cprintf>
80029558:	e1a00000 	nop			@ (mov r0, r0)
8002955c:	e24bd004 	sub	sp, fp, #4
80029560:	e8bd8800 	pop	{fp, pc}
80029564:	8002a804 	.word	0x8002a804

80029568 <pic_init>:
80029568:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002956c:	e28db000 	add	fp, sp, #0
80029570:	e24dd014 	sub	sp, sp, #20
80029574:	e50b0010 	str	r0, [fp, #-16]
80029578:	e59f2060 	ldr	r2, [pc, #96]	@ 800295e0 <pic_init+0x78>
8002957c:	e51b3010 	ldr	r3, [fp, #-16]
80029580:	e5823000 	str	r3, [r2]
80029584:	e59f3054 	ldr	r3, [pc, #84]	@ 800295e0 <pic_init+0x78>
80029588:	e5933000 	ldr	r3, [r3]
8002958c:	e2833014 	add	r3, r3, #20
80029590:	e3e02000 	mvn	r2, #0
80029594:	e5832000 	str	r2, [r3]
80029598:	e3a03000 	mov	r3, #0
8002959c:	e50b3008 	str	r3, [fp, #-8]
800295a0:	ea000006 	b	800295c0 <pic_init+0x58>
800295a4:	e59f2038 	ldr	r2, [pc, #56]	@ 800295e4 <pic_init+0x7c>
800295a8:	e51b3008 	ldr	r3, [fp, #-8]
800295ac:	e59f1034 	ldr	r1, [pc, #52]	@ 800295e8 <pic_init+0x80>
800295b0:	e7821103 	str	r1, [r2, r3, lsl #2]
800295b4:	e51b3008 	ldr	r3, [fp, #-8]
800295b8:	e2833001 	add	r3, r3, #1
800295bc:	e50b3008 	str	r3, [fp, #-8]
800295c0:	e51b3008 	ldr	r3, [fp, #-8]
800295c4:	e353001f 	cmp	r3, #31
800295c8:	dafffff5 	ble	800295a4 <pic_init+0x3c>
800295cc:	e1a00000 	nop			@ (mov r0, r0)
800295d0:	e1a00000 	nop			@ (mov r0, r0)
800295d4:	e28bd000 	add	sp, fp, #0
800295d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800295dc:	e12fff1e 	bx	lr
800295e0:	800b0e00 	.word	0x800b0e00
800295e4:	800b0e04 	.word	0x800b0e04
800295e8:	80029538 	.word	0x80029538

800295ec <pic_enable>:
800295ec:	e92d4800 	push	{fp, lr}
800295f0:	e28db004 	add	fp, sp, #4
800295f4:	e24dd008 	sub	sp, sp, #8
800295f8:	e50b0008 	str	r0, [fp, #-8]
800295fc:	e50b100c 	str	r1, [fp, #-12]
80029600:	e51b3008 	ldr	r3, [fp, #-8]
80029604:	e3530000 	cmp	r3, #0
80029608:	ba000002 	blt	80029618 <pic_enable+0x2c>
8002960c:	e51b3008 	ldr	r3, [fp, #-8]
80029610:	e353001f 	cmp	r3, #31
80029614:	da000001 	ble	80029620 <pic_enable+0x34>
80029618:	e59f0038 	ldr	r0, [pc, #56]	@ 80029658 <pic_enable+0x6c>
8002961c:	ebffe122 	bl	80021aac <panic>
80029620:	e59f1034 	ldr	r1, [pc, #52]	@ 8002965c <pic_enable+0x70>
80029624:	e51b3008 	ldr	r3, [fp, #-8]
80029628:	e51b200c 	ldr	r2, [fp, #-12]
8002962c:	e7812103 	str	r2, [r1, r3, lsl #2]
80029630:	e3a02001 	mov	r2, #1
80029634:	e51b3008 	ldr	r3, [fp, #-8]
80029638:	e1a02312 	lsl	r2, r2, r3
8002963c:	e59f301c 	ldr	r3, [pc, #28]	@ 80029660 <pic_enable+0x74>
80029640:	e5933000 	ldr	r3, [r3]
80029644:	e2833010 	add	r3, r3, #16
80029648:	e5832000 	str	r2, [r3]
8002964c:	e1a00000 	nop			@ (mov r0, r0)
80029650:	e24bd004 	sub	sp, fp, #4
80029654:	e8bd8800 	pop	{fp, pc}
80029658:	8002a820 	.word	0x8002a820
8002965c:	800b0e04 	.word	0x800b0e04
80029660:	800b0e00 	.word	0x800b0e00

80029664 <pic_disable>:
80029664:	e92d4800 	push	{fp, lr}
80029668:	e28db004 	add	fp, sp, #4
8002966c:	e24dd008 	sub	sp, sp, #8
80029670:	e50b0008 	str	r0, [fp, #-8]
80029674:	e51b3008 	ldr	r3, [fp, #-8]
80029678:	e3530000 	cmp	r3, #0
8002967c:	ba000002 	blt	8002968c <pic_disable+0x28>
80029680:	e51b3008 	ldr	r3, [fp, #-8]
80029684:	e353001f 	cmp	r3, #31
80029688:	da000001 	ble	80029694 <pic_disable+0x30>
8002968c:	e59f0038 	ldr	r0, [pc, #56]	@ 800296cc <pic_disable+0x68>
80029690:	ebffe105 	bl	80021aac <panic>
80029694:	e3a02001 	mov	r2, #1
80029698:	e51b3008 	ldr	r3, [fp, #-8]
8002969c:	e1a02312 	lsl	r2, r2, r3
800296a0:	e59f3028 	ldr	r3, [pc, #40]	@ 800296d0 <pic_disable+0x6c>
800296a4:	e5933000 	ldr	r3, [r3]
800296a8:	e2833014 	add	r3, r3, #20
800296ac:	e5832000 	str	r2, [r3]
800296b0:	e59f201c 	ldr	r2, [pc, #28]	@ 800296d4 <pic_disable+0x70>
800296b4:	e51b3008 	ldr	r3, [fp, #-8]
800296b8:	e59f1018 	ldr	r1, [pc, #24]	@ 800296d8 <pic_disable+0x74>
800296bc:	e7821103 	str	r1, [r2, r3, lsl #2]
800296c0:	e1a00000 	nop			@ (mov r0, r0)
800296c4:	e24bd004 	sub	sp, fp, #4
800296c8:	e8bd8800 	pop	{fp, pc}
800296cc:	8002a820 	.word	0x8002a820
800296d0:	800b0e00 	.word	0x800b0e00
800296d4:	800b0e04 	.word	0x800b0e04
800296d8:	80029538 	.word	0x80029538

800296dc <pic_dispatch>:
800296dc:	e92d4800 	push	{fp, lr}
800296e0:	e28db004 	add	fp, sp, #4
800296e4:	e24dd010 	sub	sp, sp, #16
800296e8:	e50b0010 	str	r0, [fp, #-16]
800296ec:	e59f3080 	ldr	r3, [pc, #128]	@ 80029774 <pic_dispatch+0x98>
800296f0:	e5933000 	ldr	r3, [r3]
800296f4:	e5933000 	ldr	r3, [r3]
800296f8:	e50b300c 	str	r3, [fp, #-12]
800296fc:	e3a03000 	mov	r3, #0
80029700:	e50b3008 	str	r3, [fp, #-8]
80029704:	ea000010 	b	8002974c <pic_dispatch+0x70>
80029708:	e3a02001 	mov	r2, #1
8002970c:	e51b3008 	ldr	r3, [fp, #-8]
80029710:	e1a03312 	lsl	r3, r2, r3
80029714:	e1a02003 	mov	r2, r3
80029718:	e51b300c 	ldr	r3, [fp, #-12]
8002971c:	e0033002 	and	r3, r3, r2
80029720:	e3530000 	cmp	r3, #0
80029724:	0a000005 	beq	80029740 <pic_dispatch+0x64>
80029728:	e59f2048 	ldr	r2, [pc, #72]	@ 80029778 <pic_dispatch+0x9c>
8002972c:	e51b3008 	ldr	r3, [fp, #-8]
80029730:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80029734:	e51b1008 	ldr	r1, [fp, #-8]
80029738:	e51b0010 	ldr	r0, [fp, #-16]
8002973c:	e12fff33 	blx	r3
80029740:	e51b3008 	ldr	r3, [fp, #-8]
80029744:	e2833001 	add	r3, r3, #1
80029748:	e50b3008 	str	r3, [fp, #-8]
8002974c:	e51b3008 	ldr	r3, [fp, #-8]
80029750:	e353001f 	cmp	r3, #31
80029754:	daffffeb 	ble	80029708 <pic_dispatch+0x2c>
80029758:	e59f3014 	ldr	r3, [pc, #20]	@ 80029774 <pic_dispatch+0x98>
8002975c:	e5933000 	ldr	r3, [r3]
80029760:	e5933000 	ldr	r3, [r3]
80029764:	e50b300c 	str	r3, [fp, #-12]
80029768:	e1a00000 	nop			@ (mov r0, r0)
8002976c:	e24bd004 	sub	sp, fp, #4
80029770:	e8bd8800 	pop	{fp, pc}
80029774:	800b0e00 	.word	0x800b0e00
80029778:	800b0e04 	.word	0x800b0e04

8002977c <ack_timer>:
8002977c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029780:	e28db000 	add	fp, sp, #0
80029784:	e24dd00c 	sub	sp, sp, #12
80029788:	e59f3020 	ldr	r3, [pc, #32]	@ 800297b0 <ack_timer+0x34>
8002978c:	e50b3008 	str	r3, [fp, #-8]
80029790:	e51b3008 	ldr	r3, [fp, #-8]
80029794:	e283300c 	add	r3, r3, #12
80029798:	e3a02001 	mov	r2, #1
8002979c:	e5832000 	str	r2, [r3]
800297a0:	e1a00000 	nop			@ (mov r0, r0)
800297a4:	e28bd000 	add	sp, fp, #0
800297a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800297ac:	e12fff1e 	bx	lr
800297b0:	901e2000 	.word	0x901e2000

800297b4 <timer_init>:
800297b4:	e92d4800 	push	{fp, lr}
800297b8:	e28db004 	add	fp, sp, #4
800297bc:	e24dd010 	sub	sp, sp, #16
800297c0:	e50b0010 	str	r0, [fp, #-16]
800297c4:	e59f3050 	ldr	r3, [pc, #80]	@ 8002981c <timer_init+0x68>
800297c8:	e50b3008 	str	r3, [fp, #-8]
800297cc:	e59f104c 	ldr	r1, [pc, #76]	@ 80029820 <timer_init+0x6c>
800297d0:	e59f004c 	ldr	r0, [pc, #76]	@ 80029824 <timer_init+0x70>
800297d4:	ebfff2bd 	bl	800262d0 <initlock>
800297d8:	e51b1010 	ldr	r1, [fp, #-16]
800297dc:	e59f0044 	ldr	r0, [pc, #68]	@ 80029828 <timer_init+0x74>
800297e0:	eb000109 	bl	80029c0c <__divsi3>
800297e4:	e1a03000 	mov	r3, r0
800297e8:	e1a02003 	mov	r2, r3
800297ec:	e51b3008 	ldr	r3, [fp, #-8]
800297f0:	e5832000 	str	r2, [r3]
800297f4:	e51b3008 	ldr	r3, [fp, #-8]
800297f8:	e2833008 	add	r3, r3, #8
800297fc:	e3a020e2 	mov	r2, #226	@ 0xe2
80029800:	e5832000 	str	r2, [r3]
80029804:	e59f1020 	ldr	r1, [pc, #32]	@ 8002982c <timer_init+0x78>
80029808:	e3a00004 	mov	r0, #4
8002980c:	ebffff76 	bl	800295ec <pic_enable>
80029810:	e1a00000 	nop			@ (mov r0, r0)
80029814:	e24bd004 	sub	sp, fp, #4
80029818:	e8bd8800 	pop	{fp, pc}
8002981c:	901e2000 	.word	0x901e2000
80029820:	8002a83c 	.word	0x8002a83c
80029824:	800b0e84 	.word	0x800b0e84
80029828:	000f4240 	.word	0x000f4240
8002982c:	80029830 	.word	0x80029830

80029830 <isr_timer>:
80029830:	e92d4800 	push	{fp, lr}
80029834:	e28db004 	add	fp, sp, #4
80029838:	e24dd008 	sub	sp, sp, #8
8002983c:	e50b0008 	str	r0, [fp, #-8]
80029840:	e50b100c 	str	r1, [fp, #-12]
80029844:	e59f0034 	ldr	r0, [pc, #52]	@ 80029880 <isr_timer+0x50>
80029848:	ebfff2b2 	bl	80026318 <acquire>
8002984c:	e59f3030 	ldr	r3, [pc, #48]	@ 80029884 <isr_timer+0x54>
80029850:	e5933000 	ldr	r3, [r3]
80029854:	e2833001 	add	r3, r3, #1
80029858:	e59f2024 	ldr	r2, [pc, #36]	@ 80029884 <isr_timer+0x54>
8002985c:	e5823000 	str	r3, [r2]
80029860:	e59f001c 	ldr	r0, [pc, #28]	@ 80029884 <isr_timer+0x54>
80029864:	ebfff1ec 	bl	8002601c <wakeup>
80029868:	e59f0010 	ldr	r0, [pc, #16]	@ 80029880 <isr_timer+0x50>
8002986c:	ebfff2b4 	bl	80026344 <release>
80029870:	ebffffc1 	bl	8002977c <ack_timer>
80029874:	e1a00000 	nop			@ (mov r0, r0)
80029878:	e24bd004 	sub	sp, fp, #4
8002987c:	e8bd8800 	pop	{fp, pc}
80029880:	800b0e84 	.word	0x800b0e84
80029884:	800b0eb8 	.word	0x800b0eb8

80029888 <micro_delay>:
80029888:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002988c:	e28db000 	add	fp, sp, #0
80029890:	e24dd014 	sub	sp, sp, #20
80029894:	e50b0010 	str	r0, [fp, #-16]
80029898:	e59f3054 	ldr	r3, [pc, #84]	@ 800298f4 <micro_delay+0x6c>
8002989c:	e50b3008 	str	r3, [fp, #-8]
800298a0:	e51b3008 	ldr	r3, [fp, #-8]
800298a4:	e2833008 	add	r3, r3, #8
800298a8:	e3a02082 	mov	r2, #130	@ 0x82
800298ac:	e5832000 	str	r2, [r3]
800298b0:	e51b2010 	ldr	r2, [fp, #-16]
800298b4:	e51b3008 	ldr	r3, [fp, #-8]
800298b8:	e5832000 	str	r2, [r3]
800298bc:	e1a00000 	nop			@ (mov r0, r0)
800298c0:	e51b3008 	ldr	r3, [fp, #-8]
800298c4:	e2833004 	add	r3, r3, #4
800298c8:	e5933000 	ldr	r3, [r3]
800298cc:	e3530000 	cmp	r3, #0
800298d0:	cafffffa 	bgt	800298c0 <micro_delay+0x38>
800298d4:	e51b3008 	ldr	r3, [fp, #-8]
800298d8:	e2833008 	add	r3, r3, #8
800298dc:	e3a02000 	mov	r2, #0
800298e0:	e5832000 	str	r2, [r3]
800298e4:	e1a00000 	nop			@ (mov r0, r0)
800298e8:	e28bd000 	add	sp, fp, #0
800298ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800298f0:	e12fff1e 	bx	lr
800298f4:	901e2020 	.word	0x901e2020

800298f8 <uart_init>:
800298f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800298fc:	e28db000 	add	fp, sp, #0
80029900:	e24dd014 	sub	sp, sp, #20
80029904:	e50b0010 	str	r0, [fp, #-16]
80029908:	e59f20a4 	ldr	r2, [pc, #164]	@ 800299b4 <uart_init+0xbc>
8002990c:	e51b3010 	ldr	r3, [fp, #-16]
80029910:	e5823000 	str	r3, [r2]
80029914:	e59f3098 	ldr	r3, [pc, #152]	@ 800299b4 <uart_init+0xbc>
80029918:	e5933000 	ldr	r3, [r3]
8002991c:	e2833024 	add	r3, r3, #36	@ 0x24
80029920:	e3a0204e 	mov	r2, #78	@ 0x4e
80029924:	e5832000 	str	r2, [r3]
80029928:	e3a03c96 	mov	r3, #38400	@ 0x9600
8002992c:	e50b3008 	str	r3, [fp, #-8]
80029930:	e51b3008 	ldr	r3, [fp, #-8]
80029934:	e2833e96 	add	r3, r3, #2400	@ 0x960
80029938:	e1a02103 	lsl	r2, r3, #2
8002993c:	e59f3070 	ldr	r3, [pc, #112]	@ 800299b4 <uart_init+0xbc>
80029940:	e5933000 	ldr	r3, [r3]
80029944:	e2833028 	add	r3, r3, #40	@ 0x28
80029948:	e59f1068 	ldr	r1, [pc, #104]	@ 800299b8 <uart_init+0xc0>
8002994c:	e0821291 	umull	r1, r2, r1, r2
80029950:	e1a025a2 	lsr	r2, r2, #11
80029954:	e5832000 	str	r2, [r3]
80029958:	e59f3054 	ldr	r3, [pc, #84]	@ 800299b4 <uart_init+0xbc>
8002995c:	e5933000 	ldr	r3, [r3]
80029960:	e2833030 	add	r3, r3, #48	@ 0x30
80029964:	e5933000 	ldr	r3, [r3]
80029968:	e59f2044 	ldr	r2, [pc, #68]	@ 800299b4 <uart_init+0xbc>
8002996c:	e5922000 	ldr	r2, [r2]
80029970:	e2822030 	add	r2, r2, #48	@ 0x30
80029974:	e3833c03 	orr	r3, r3, #768	@ 0x300
80029978:	e3833001 	orr	r3, r3, #1
8002997c:	e5823000 	str	r3, [r2]
80029980:	e59f302c 	ldr	r3, [pc, #44]	@ 800299b4 <uart_init+0xbc>
80029984:	e5933000 	ldr	r3, [r3]
80029988:	e283302c 	add	r3, r3, #44	@ 0x2c
8002998c:	e5932000 	ldr	r2, [r3]
80029990:	e59f301c 	ldr	r3, [pc, #28]	@ 800299b4 <uart_init+0xbc>
80029994:	e5933000 	ldr	r3, [r3]
80029998:	e283302c 	add	r3, r3, #44	@ 0x2c
8002999c:	e3822010 	orr	r2, r2, #16
800299a0:	e5832000 	str	r2, [r3]
800299a4:	e1a00000 	nop			@ (mov r0, r0)
800299a8:	e28bd000 	add	sp, fp, #0
800299ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800299b0:	e12fff1e 	bx	lr
800299b4:	800b0ebc 	.word	0x800b0ebc
800299b8:	1b4e81b5 	.word	0x1b4e81b5

800299bc <uart_enable_rx>:
800299bc:	e92d4800 	push	{fp, lr}
800299c0:	e28db004 	add	fp, sp, #4
800299c4:	e59f3020 	ldr	r3, [pc, #32]	@ 800299ec <uart_enable_rx+0x30>
800299c8:	e5933000 	ldr	r3, [r3]
800299cc:	e2833038 	add	r3, r3, #56	@ 0x38
800299d0:	e3a02010 	mov	r2, #16
800299d4:	e5832000 	str	r2, [r3]
800299d8:	e59f1010 	ldr	r1, [pc, #16]	@ 800299f0 <uart_enable_rx+0x34>
800299dc:	e3a0000c 	mov	r0, #12
800299e0:	ebffff01 	bl	800295ec <pic_enable>
800299e4:	e1a00000 	nop			@ (mov r0, r0)
800299e8:	e8bd8800 	pop	{fp, pc}
800299ec:	800b0ebc 	.word	0x800b0ebc
800299f0:	80029a98 	.word	0x80029a98

800299f4 <uartputc>:
800299f4:	e92d4800 	push	{fp, lr}
800299f8:	e28db004 	add	fp, sp, #4
800299fc:	e24dd008 	sub	sp, sp, #8
80029a00:	e50b0008 	str	r0, [fp, #-8]
80029a04:	ea000001 	b	80029a10 <uartputc+0x1c>
80029a08:	e3a0000a 	mov	r0, #10
80029a0c:	ebffff9d 	bl	80029888 <micro_delay>
80029a10:	e59f3030 	ldr	r3, [pc, #48]	@ 80029a48 <uartputc+0x54>
80029a14:	e5933000 	ldr	r3, [r3]
80029a18:	e2833018 	add	r3, r3, #24
80029a1c:	e5933000 	ldr	r3, [r3]
80029a20:	e2033020 	and	r3, r3, #32
80029a24:	e3530000 	cmp	r3, #0
80029a28:	1afffff6 	bne	80029a08 <uartputc+0x14>
80029a2c:	e59f3014 	ldr	r3, [pc, #20]	@ 80029a48 <uartputc+0x54>
80029a30:	e5933000 	ldr	r3, [r3]
80029a34:	e51b2008 	ldr	r2, [fp, #-8]
80029a38:	e5832000 	str	r2, [r3]
80029a3c:	e1a00000 	nop			@ (mov r0, r0)
80029a40:	e24bd004 	sub	sp, fp, #4
80029a44:	e8bd8800 	pop	{fp, pc}
80029a48:	800b0ebc 	.word	0x800b0ebc

80029a4c <uartgetc>:
80029a4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029a50:	e28db000 	add	fp, sp, #0
80029a54:	e59f3038 	ldr	r3, [pc, #56]	@ 80029a94 <uartgetc+0x48>
80029a58:	e5933000 	ldr	r3, [r3]
80029a5c:	e2833018 	add	r3, r3, #24
80029a60:	e5933000 	ldr	r3, [r3]
80029a64:	e2033010 	and	r3, r3, #16
80029a68:	e3530000 	cmp	r3, #0
80029a6c:	0a000001 	beq	80029a78 <uartgetc+0x2c>
80029a70:	e3e03000 	mvn	r3, #0
80029a74:	ea000002 	b	80029a84 <uartgetc+0x38>
80029a78:	e59f3014 	ldr	r3, [pc, #20]	@ 80029a94 <uartgetc+0x48>
80029a7c:	e5933000 	ldr	r3, [r3]
80029a80:	e5933000 	ldr	r3, [r3]
80029a84:	e1a00003 	mov	r0, r3
80029a88:	e28bd000 	add	sp, fp, #0
80029a8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029a90:	e12fff1e 	bx	lr
80029a94:	800b0ebc 	.word	0x800b0ebc

80029a98 <isr_uart>:
80029a98:	e92d4800 	push	{fp, lr}
80029a9c:	e28db004 	add	fp, sp, #4
80029aa0:	e24dd008 	sub	sp, sp, #8
80029aa4:	e50b0008 	str	r0, [fp, #-8]
80029aa8:	e50b100c 	str	r1, [fp, #-12]
80029aac:	e59f303c 	ldr	r3, [pc, #60]	@ 80029af0 <isr_uart+0x58>
80029ab0:	e5933000 	ldr	r3, [r3]
80029ab4:	e2833040 	add	r3, r3, #64	@ 0x40
80029ab8:	e5933000 	ldr	r3, [r3]
80029abc:	e2033010 	and	r3, r3, #16
80029ac0:	e3530000 	cmp	r3, #0
80029ac4:	0a000001 	beq	80029ad0 <isr_uart+0x38>
80029ac8:	e59f0024 	ldr	r0, [pc, #36]	@ 80029af4 <isr_uart+0x5c>
80029acc:	ebffe0a2 	bl	80021d5c <consoleintr>
80029ad0:	e59f3018 	ldr	r3, [pc, #24]	@ 80029af0 <isr_uart+0x58>
80029ad4:	e5933000 	ldr	r3, [r3]
80029ad8:	e2833044 	add	r3, r3, #68	@ 0x44
80029adc:	e3a02030 	mov	r2, #48	@ 0x30
80029ae0:	e5832000 	str	r2, [r3]
80029ae4:	e1a00000 	nop			@ (mov r0, r0)
80029ae8:	e24bd004 	sub	sp, fp, #4
80029aec:	e8bd8800 	pop	{fp, pc}
80029af0:	800b0ebc 	.word	0x800b0ebc
80029af4:	80029a4c 	.word	0x80029a4c

80029af8 <__udivsi3>:
80029af8:	e2512001 	subs	r2, r1, #1
80029afc:	012fff1e 	bxeq	lr
80029b00:	3a000036 	bcc	80029be0 <__udivsi3+0xe8>
80029b04:	e1500001 	cmp	r0, r1
80029b08:	9a000022 	bls	80029b98 <__udivsi3+0xa0>
80029b0c:	e1110002 	tst	r1, r2
80029b10:	0a000023 	beq	80029ba4 <__udivsi3+0xac>
80029b14:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029b18:	01a01181 	lsleq	r1, r1, #3
80029b1c:	03a03008 	moveq	r3, #8
80029b20:	13a03001 	movne	r3, #1
80029b24:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029b28:	31510000 	cmpcc	r1, r0
80029b2c:	31a01201 	lslcc	r1, r1, #4
80029b30:	31a03203 	lslcc	r3, r3, #4
80029b34:	3afffffa 	bcc	80029b24 <__udivsi3+0x2c>
80029b38:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029b3c:	31510000 	cmpcc	r1, r0
80029b40:	31a01081 	lslcc	r1, r1, #1
80029b44:	31a03083 	lslcc	r3, r3, #1
80029b48:	3afffffa 	bcc	80029b38 <__udivsi3+0x40>
80029b4c:	e3a02000 	mov	r2, #0
80029b50:	e1500001 	cmp	r0, r1
80029b54:	20400001 	subcs	r0, r0, r1
80029b58:	21822003 	orrcs	r2, r2, r3
80029b5c:	e15000a1 	cmp	r0, r1, lsr #1
80029b60:	204000a1 	subcs	r0, r0, r1, lsr #1
80029b64:	218220a3 	orrcs	r2, r2, r3, lsr #1
80029b68:	e1500121 	cmp	r0, r1, lsr #2
80029b6c:	20400121 	subcs	r0, r0, r1, lsr #2
80029b70:	21822123 	orrcs	r2, r2, r3, lsr #2
80029b74:	e15001a1 	cmp	r0, r1, lsr #3
80029b78:	204001a1 	subcs	r0, r0, r1, lsr #3
80029b7c:	218221a3 	orrcs	r2, r2, r3, lsr #3
80029b80:	e3500000 	cmp	r0, #0
80029b84:	11b03223 	lsrsne	r3, r3, #4
80029b88:	11a01221 	lsrne	r1, r1, #4
80029b8c:	1affffef 	bne	80029b50 <__udivsi3+0x58>
80029b90:	e1a00002 	mov	r0, r2
80029b94:	e12fff1e 	bx	lr
80029b98:	03a00001 	moveq	r0, #1
80029b9c:	13a00000 	movne	r0, #0
80029ba0:	e12fff1e 	bx	lr
80029ba4:	e3510801 	cmp	r1, #65536	@ 0x10000
80029ba8:	21a01821 	lsrcs	r1, r1, #16
80029bac:	23a02010 	movcs	r2, #16
80029bb0:	33a02000 	movcc	r2, #0
80029bb4:	e3510c01 	cmp	r1, #256	@ 0x100
80029bb8:	21a01421 	lsrcs	r1, r1, #8
80029bbc:	22822008 	addcs	r2, r2, #8
80029bc0:	e3510010 	cmp	r1, #16
80029bc4:	21a01221 	lsrcs	r1, r1, #4
80029bc8:	22822004 	addcs	r2, r2, #4
80029bcc:	e3510004 	cmp	r1, #4
80029bd0:	82822003 	addhi	r2, r2, #3
80029bd4:	908220a1 	addls	r2, r2, r1, lsr #1
80029bd8:	e1a00230 	lsr	r0, r0, r2
80029bdc:	e12fff1e 	bx	lr
80029be0:	e3500000 	cmp	r0, #0
80029be4:	13e00000 	mvnne	r0, #0
80029be8:	ea000059 	b	80029d54 <__aeabi_idiv0>

80029bec <__aeabi_uidivmod>:
80029bec:	e3510000 	cmp	r1, #0
80029bf0:	0afffffa 	beq	80029be0 <__udivsi3+0xe8>
80029bf4:	e92d4003 	push	{r0, r1, lr}
80029bf8:	ebffffbe 	bl	80029af8 <__udivsi3>
80029bfc:	e8bd4006 	pop	{r1, r2, lr}
80029c00:	e0030092 	mul	r3, r2, r0
80029c04:	e0411003 	sub	r1, r1, r3
80029c08:	e12fff1e 	bx	lr

80029c0c <__divsi3>:
80029c0c:	e3510000 	cmp	r1, #0
80029c10:	0a000043 	beq	80029d24 <.divsi3_skip_div0_test+0x110>

80029c14 <.divsi3_skip_div0_test>:
80029c14:	e020c001 	eor	ip, r0, r1
80029c18:	42611000 	rsbmi	r1, r1, #0
80029c1c:	e2512001 	subs	r2, r1, #1
80029c20:	0a000027 	beq	80029cc4 <.divsi3_skip_div0_test+0xb0>
80029c24:	e1b03000 	movs	r3, r0
80029c28:	42603000 	rsbmi	r3, r0, #0
80029c2c:	e1530001 	cmp	r3, r1
80029c30:	9a000026 	bls	80029cd0 <.divsi3_skip_div0_test+0xbc>
80029c34:	e1110002 	tst	r1, r2
80029c38:	0a000028 	beq	80029ce0 <.divsi3_skip_div0_test+0xcc>
80029c3c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029c40:	01a01181 	lsleq	r1, r1, #3
80029c44:	03a02008 	moveq	r2, #8
80029c48:	13a02001 	movne	r2, #1
80029c4c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029c50:	31510003 	cmpcc	r1, r3
80029c54:	31a01201 	lslcc	r1, r1, #4
80029c58:	31a02202 	lslcc	r2, r2, #4
80029c5c:	3afffffa 	bcc	80029c4c <.divsi3_skip_div0_test+0x38>
80029c60:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029c64:	31510003 	cmpcc	r1, r3
80029c68:	31a01081 	lslcc	r1, r1, #1
80029c6c:	31a02082 	lslcc	r2, r2, #1
80029c70:	3afffffa 	bcc	80029c60 <.divsi3_skip_div0_test+0x4c>
80029c74:	e3a00000 	mov	r0, #0
80029c78:	e1530001 	cmp	r3, r1
80029c7c:	20433001 	subcs	r3, r3, r1
80029c80:	21800002 	orrcs	r0, r0, r2
80029c84:	e15300a1 	cmp	r3, r1, lsr #1
80029c88:	204330a1 	subcs	r3, r3, r1, lsr #1
80029c8c:	218000a2 	orrcs	r0, r0, r2, lsr #1
80029c90:	e1530121 	cmp	r3, r1, lsr #2
80029c94:	20433121 	subcs	r3, r3, r1, lsr #2
80029c98:	21800122 	orrcs	r0, r0, r2, lsr #2
80029c9c:	e15301a1 	cmp	r3, r1, lsr #3
80029ca0:	204331a1 	subcs	r3, r3, r1, lsr #3
80029ca4:	218001a2 	orrcs	r0, r0, r2, lsr #3
80029ca8:	e3530000 	cmp	r3, #0
80029cac:	11b02222 	lsrsne	r2, r2, #4
80029cb0:	11a01221 	lsrne	r1, r1, #4
80029cb4:	1affffef 	bne	80029c78 <.divsi3_skip_div0_test+0x64>
80029cb8:	e35c0000 	cmp	ip, #0
80029cbc:	42600000 	rsbmi	r0, r0, #0
80029cc0:	e12fff1e 	bx	lr
80029cc4:	e13c0000 	teq	ip, r0
80029cc8:	42600000 	rsbmi	r0, r0, #0
80029ccc:	e12fff1e 	bx	lr
80029cd0:	33a00000 	movcc	r0, #0
80029cd4:	01a00fcc 	asreq	r0, ip, #31
80029cd8:	03800001 	orreq	r0, r0, #1
80029cdc:	e12fff1e 	bx	lr
80029ce0:	e3510801 	cmp	r1, #65536	@ 0x10000
80029ce4:	21a01821 	lsrcs	r1, r1, #16
80029ce8:	23a02010 	movcs	r2, #16
80029cec:	33a02000 	movcc	r2, #0
80029cf0:	e3510c01 	cmp	r1, #256	@ 0x100
80029cf4:	21a01421 	lsrcs	r1, r1, #8
80029cf8:	22822008 	addcs	r2, r2, #8
80029cfc:	e3510010 	cmp	r1, #16
80029d00:	21a01221 	lsrcs	r1, r1, #4
80029d04:	22822004 	addcs	r2, r2, #4
80029d08:	e3510004 	cmp	r1, #4
80029d0c:	82822003 	addhi	r2, r2, #3
80029d10:	908220a1 	addls	r2, r2, r1, lsr #1
80029d14:	e35c0000 	cmp	ip, #0
80029d18:	e1a00233 	lsr	r0, r3, r2
80029d1c:	42600000 	rsbmi	r0, r0, #0
80029d20:	e12fff1e 	bx	lr
80029d24:	e3500000 	cmp	r0, #0
80029d28:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029d2c:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029d30:	ea000007 	b	80029d54 <__aeabi_idiv0>

80029d34 <__aeabi_idivmod>:
80029d34:	e3510000 	cmp	r1, #0
80029d38:	0afffff9 	beq	80029d24 <.divsi3_skip_div0_test+0x110>
80029d3c:	e92d4003 	push	{r0, r1, lr}
80029d40:	ebffffb3 	bl	80029c14 <.divsi3_skip_div0_test>
80029d44:	e8bd4006 	pop	{r1, r2, lr}
80029d48:	e0030092 	mul	r3, r2, r0
80029d4c:	e0411003 	sub	r1, r1, r3
80029d50:	e12fff1e 	bx	lr

80029d54 <__aeabi_idiv0>:
80029d54:	e12fff1e 	bx	lr
