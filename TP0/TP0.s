	.file	1 "TP0.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"-h, --help: Muestra la interfaz de ayudas.\000"
	.align	2
$LC1:
	.ascii	"-v, --version: Indica la version del programa.\000"
	.align	2
$LC2:
	.ascii	"-i, --input: Indica la direccion donde esta el archivo a"
	.ascii	" leer.\000"
	.align	2
$LC3:
	.ascii	"-o, --output: Indica la direccion donde esta el archivo "
	.ascii	"a escribir.\000"
	.align	2
$LC4:
	.ascii	"-d, --decode: Si se utiliza este flag se decodificara la"
	.ascii	" entrada. De forma estandar la entrada es codificada.\000"
	.align	2
$LC5:
	.ascii	"Ejemplos:\000"
	.align	2
$LC6:
	.ascii	"> ./TP0 -i input.txt -o output.txt\000"
	.align	2
$LC7:
	.ascii	"> ./TP0 -i input.txt -o output.txt -d\000"
	.align	2
$LC8:
	.ascii	"> echo \"Eres debil Sasuke te falta odio.\" | ./TP0\000"
	.align	2
$LC9:
	.ascii	"> RXJlcyBkZWJpbCBTYXN1a2UgdGUgZmFsdGEgb2Rpby4K\000"
	.align	2
$LC10:
	.ascii	"> echo \"RXJlcyBkZWJpbCBTYXN1a2UgdGUgZmFsdGEgb2Rpby4K\" "
	.ascii	"| ./TP0\000"
	.align	2
$LC11:
	.ascii	"> Eres debil Sasuke te falta odio.\000"
	.text
	.align	2
	.globl	mostrar_ayudas
	.set	nomips16
	.set	nomicromips
	.ent	mostrar_ayudas
	.type	mostrar_ayudas, @function
mostrar_ayudas:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC2)($28)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC4)($28)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC5)($28)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC6)($28)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC8)($28)
	addiu	$4,$2,%lo($LC8)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC9)($28)
	addiu	$4,$2,%lo($LC9)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC10)($28)
	addiu	$4,$2,%lo($LC10)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC11)($28)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mostrar_ayudas
	.size	mostrar_ayudas, .-mostrar_ayudas
	.rdata
	.align	2
$LC12:
	.ascii	"Version 1.0.0\000"
	.text
	.align	2
	.globl	mostrar_version
	.set	nomips16
	.set	nomicromips
	.ent	mostrar_version
	.type	mostrar_version, @function
mostrar_version:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	lw	$2,%got($LC12)($28)
	addiu	$4,$2,%lo($LC12)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mostrar_version
	.size	mostrar_version, .-mostrar_version
	.rdata
	.align	2
$LC13:
	.ascii	"i:o:dvh\000"
	.align	2
$LC14:
	.ascii	"r\000"
	.align	2
$LC15:
	.ascii	"No se logro abrir el archivo de entrada.\000"
	.align	2
$LC16:
	.ascii	"w\000"
	.align	2
$LC17:
	.ascii	"No se logro abrir el archivo de salida.\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,256,$31		# vars= 216, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-256
	sw	$31,252($sp)
	sw	$fp,248($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,256($fp)
	sw	$5,260($fp)
	sw	$0,48($fp)
	addiu	$2,$fp,52
	li	$3,96			# 0x60
	move	$6,$3
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(memset)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$0,148($fp)
	addiu	$2,$fp,152
	li	$3,96			# 0x60
	move	$6,$3
	move	$5,$0
	move	$4,$2
	lw	$2,%call16(memset)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sb	$0,40($fp)
	sb	$0,41($fp)
	b	$L4
	nop

$L14:
	lw	$2,44($fp)
	addiu	$2,$2,-100
	sltu	$3,$2,19
	beq	$3,$0,$L26
	nop

	sll	$3,$2,2
	lw	$2,%got($L7)($28)
	addiu	$2,$2,%lo($L7)
	addu	$2,$3,$2
	lw	$2,0($2)
	addu	$2,$2,$28
	jr	$2
	nop

	.rdata
	.align	2
	.align	2
$L7:
	.gpword	$L6
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L8
	.gpword	$L9
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L10
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L26
	.gpword	$L11
	.text
$L9:
	lw	$2,%got(optarg)($28)
	lw	$3,0($2)
	addiu	$2,$fp,48
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(strcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L4
	nop

$L10:
	lw	$2,%got(optarg)($28)
	lw	$3,0($2)
	addiu	$2,$fp,148
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(strcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L4
	nop

$L6:
	li	$2,1			# 0x1
	sb	$2,40($fp)
	b	$L4
	nop

$L8:
	lbu	$2,41($fp)
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L4
	nop

	lw	$2,%got(mostrar_ayudas)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,mostrar_ayudas
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,1			# 0x1
	sb	$2,41($fp)
	b	$L4
	nop

$L11:
	lbu	$2,41($fp)
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L4
	nop

	li	$2,1			# 0x1
	sb	$2,41($fp)
	lw	$2,%got(mostrar_version)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,mostrar_version
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L4
	nop

$L26:
	nop
$L4:
	sw	$0,16($sp)
	lw	$2,%got(long_options.3160)($28)
	addiu	$7,$2,%lo(long_options.3160)
	lw	$2,%got($LC13)($28)
	addiu	$6,$2,%lo($LC13)
	lw	$5,260($fp)
	lw	$4,256($fp)
	lw	$2,%call16(getopt_long)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,getopt_long
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,44($fp)
	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L14
	nop

	lbu	$2,41($fp)
	beq	$2,$0,$L15
	nop

	move	$2,$0
	b	$L25
	nop

$L15:
	addiu	$2,$fp,48
	lb	$2,0($2)
	bne	$2,$0,$L17
	nop

	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	sw	$2,32($fp)
	b	$L18
	nop

$L17:
	addiu	$3,$fp,48
	lw	$2,%got($LC14)($28)
	addiu	$5,$2,%lo($LC14)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,32($fp)
$L18:
	lw	$2,32($fp)
	bne	$2,$0,$L19
	nop

	lw	$2,%got($LC15)($28)
	addiu	$4,$2,%lo($LC15)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L25
	nop

$L19:
	addiu	$2,$fp,148
	lb	$2,0($2)
	bne	$2,$0,$L20
	nop

	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	sw	$2,36($fp)
	b	$L21
	nop

$L20:
	addiu	$3,$fp,148
	lw	$2,%got($LC16)($28)
	addiu	$5,$2,%lo($LC16)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,36($fp)
$L21:
	lw	$2,36($fp)
	bne	$2,$0,$L22
	nop

	lw	$4,32($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,%got($LC17)($28)
	addiu	$4,$2,%lo($LC17)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L25
	nop

$L22:
	lbu	$2,40($fp)
	beq	$2,$0,$L23
	nop

	lw	$5,36($fp)
	lw	$4,32($fp)
	lw	$2,%call16(decodificar_archivo)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decodificar_archivo
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L24
	nop

$L23:
	lw	$5,36($fp)
	lw	$4,32($fp)
	lw	$2,%call16(codificar_archivo)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificar_archivo
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L24:
	lw	$4,32($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$4,36($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$2,$0
$L25:
	move	$sp,$fp
	lw	$31,252($sp)
	lw	$fp,248($sp)
	addiu	$sp,$sp,256
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.rdata
	.align	2
$LC18:
	.ascii	"version\000"
	.align	2
$LC19:
	.ascii	"help\000"
	.align	2
$LC20:
	.ascii	"input\000"
	.align	2
$LC21:
	.ascii	"output\000"
	.align	2
$LC22:
	.ascii	"decode\000"
	.section	.data.rel.local,"aw",@progbits
	.align	2
	.type	long_options.3160, @object
	.size	long_options.3160, 96
long_options.3160:
	.word	$LC18
	.word	0
	.word	0
	.word	118
	.word	$LC19
	.word	0
	.word	0
	.word	104
	.word	$LC20
	.word	1
	.word	0
	.word	105
	.word	$LC21
	.word	1
	.word	0
	.word	111
	.word	$LC22
	.word	0
	.word	0
	.word	100
	.word	0
	.word	0
	.word	0
	.word	0
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
