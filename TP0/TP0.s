	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
$Ltext0:
	.cfi_sections	.debug_frame
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
$LFB0 = .
	.file 1 "TP0.c"
	.loc 1 12 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	.loc 1 13 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL0 = .
	lw	$28,16($fp)
	.loc 1 14 0
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL1 = .
	lw	$28,16($fp)
	.loc 1 15 0
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL2 = .
	lw	$28,16($fp)
	.loc 1 16 0
	lw	$2,%got($LC2)($28)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL3 = .
	lw	$28,16($fp)
	.loc 1 17 0
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL4 = .
	lw	$28,16($fp)
	.loc 1 18 0
	lw	$2,%got($LC4)($28)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL5 = .
	lw	$28,16($fp)
	.loc 1 20 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL6 = .
	lw	$28,16($fp)
	.loc 1 21 0
	lw	$2,%got($LC5)($28)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL7 = .
	lw	$28,16($fp)
	.loc 1 22 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL8 = .
	lw	$28,16($fp)
	.loc 1 23 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL9 = .
	lw	$28,16($fp)
	.loc 1 25 0
	lw	$2,%got($LC6)($28)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL10 = .
	lw	$28,16($fp)
	.loc 1 26 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL11 = .
	lw	$28,16($fp)
	.loc 1 28 0
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL12 = .
	lw	$28,16($fp)
	.loc 1 29 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL13 = .
	lw	$28,16($fp)
	.loc 1 31 0
	lw	$2,%got($LC8)($28)
	addiu	$4,$2,%lo($LC8)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL14 = .
	lw	$28,16($fp)
	.loc 1 32 0
	lw	$2,%got($LC9)($28)
	addiu	$4,$2,%lo($LC9)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL15 = .
	lw	$28,16($fp)
	.loc 1 33 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL16 = .
	lw	$28,16($fp)
	.loc 1 35 0
	lw	$2,%got($LC10)($28)
	addiu	$4,$2,%lo($LC10)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL17 = .
	lw	$28,16($fp)
	.loc 1 36 0
	lw	$2,%got($LC11)($28)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL18 = .
	lw	$28,16($fp)
	.loc 1 37 0
	li	$4,10			# 0xa
	lw	$2,%call16(putchar)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,putchar
1:	jalr	$25
	nop

$LVL19 = .
	lw	$28,16($fp)
	.loc 1 38 0
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mostrar_ayudas
	.cfi_endproc
$LFE0:
	.size	mostrar_ayudas, .-mostrar_ayudas
	.rdata
	.align	2
$LC12:
	.ascii	"Version 1.0.0\000"
	.text
	.align	2
	.globl	mostrar_version
$LFB1 = .
	.loc 1 40 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	.loc 1 41 0
	lw	$2,%got($LC12)($28)
	addiu	$4,$2,%lo($LC12)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL20 = .
	lw	$28,16($fp)
	.loc 1 42 0
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mostrar_version
	.cfi_endproc
$LFE1:
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
$LFB2 = .
	.loc 1 45 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 256
	sw	$31,252($sp)
	sw	$fp,248($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	24
	sw	$4,256($fp)
	sw	$5,260($fp)
	.loc 1 58 0
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

$LVL21 = .
	lw	$28,24($fp)
	.loc 1 59 0
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

$LVL22 = .
	lw	$28,24($fp)
	.loc 1 60 0
	sb	$0,40($fp)
	.loc 1 61 0
	sb	$0,41($fp)
	.loc 1 63 0
	b	$L4
	nop

$L14:
	.loc 1 64 0
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
	.loc 1 66 0
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

$LVL23 = .
	lw	$28,24($fp)
	.loc 1 67 0
	b	$L4
	nop

$L10:
	.loc 1 70 0
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

$LVL24 = .
	lw	$28,24($fp)
	.loc 1 71 0
	b	$L4
	nop

$L6:
	.loc 1 74 0
	li	$2,1			# 0x1
	sb	$2,40($fp)
	.loc 1 75 0
	b	$L4
	nop

$L8:
	.loc 1 78 0
	lbu	$2,41($fp)
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L4
	nop

	.loc 1 79 0
	lw	$2,%got(mostrar_ayudas)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,mostrar_ayudas
1:	jalr	$25
	nop

$LVL25 = .
	lw	$28,24($fp)
	.loc 1 80 0
	li	$2,1			# 0x1
	sb	$2,41($fp)
	.loc 1 82 0
	b	$L4
	nop

$L11:
	.loc 1 85 0
	lbu	$2,41($fp)
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L4
	nop

	.loc 1 86 0
	li	$2,1			# 0x1
	sb	$2,41($fp)
	.loc 1 87 0
	lw	$2,%got(mostrar_version)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,mostrar_version
1:	jalr	$25
	nop

$LVL26 = .
	lw	$28,24($fp)
	.loc 1 89 0
	b	$L4
	nop

$L26:
	.loc 1 92 0
	nop
$L4:
	.loc 1 63 0
	sw	$0,16($sp)
	lw	$2,%got(long_options.2286)($28)
	addiu	$7,$2,%lo(long_options.2286)
	lw	$2,%got($LC13)($28)
	addiu	$6,$2,%lo($LC13)
	lw	$5,260($fp)
	lw	$4,256($fp)
	lw	$2,%call16(getopt_long)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,getopt_long
1:	jalr	$25
	nop

$LVL27 = .
	lw	$28,24($fp)
	sw	$2,44($fp)
	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L14
	nop

	.loc 1 96 0
	lbu	$2,41($fp)
	beq	$2,$0,$L15
	nop

	.loc 1 97 0
	move	$2,$0
	b	$L25
	nop

$L15:
	.loc 1 99 0
	addiu	$2,$fp,48
	lb	$2,0($2)
	bne	$2,$0,$L17
	nop

	.loc 1 100 0
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	sw	$2,32($fp)
	b	$L18
	nop

$L17:
	.loc 1 102 0
	addiu	$3,$fp,48
	lw	$2,%got($LC14)($28)
	addiu	$5,$2,%lo($LC14)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

$LVL28 = .
	lw	$28,24($fp)
	sw	$2,32($fp)
$L18:
	.loc 1 103 0
	lw	$2,32($fp)
	bne	$2,$0,$L19
	nop

	.loc 1 104 0
	lw	$2,%got($LC15)($28)
	addiu	$4,$2,%lo($LC15)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL29 = .
	lw	$28,24($fp)
	.loc 1 105 0
	li	$2,-1			# 0xffffffffffffffff
	b	$L25
	nop

$L19:
	.loc 1 107 0
	addiu	$2,$fp,148
	lb	$2,0($2)
	bne	$2,$0,$L20
	nop

	.loc 1 108 0
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	sw	$2,36($fp)
	b	$L21
	nop

$L20:
	.loc 1 110 0
	addiu	$3,$fp,148
	lw	$2,%got($LC16)($28)
	addiu	$5,$2,%lo($LC16)
	move	$4,$3
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

$LVL30 = .
	lw	$28,24($fp)
	sw	$2,36($fp)
$L21:
	.loc 1 111 0
	lw	$2,36($fp)
	bne	$2,$0,$L22
	nop

	.loc 1 112 0
	lw	$4,32($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL31 = .
	lw	$28,24($fp)
	.loc 1 113 0
	lw	$2,%got($LC17)($28)
	addiu	$4,$2,%lo($LC17)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LVL32 = .
	lw	$28,24($fp)
	.loc 1 114 0
	li	$2,-1			# 0xffffffffffffffff
	b	$L25
	nop

$L22:
	.loc 1 118 0
	lbu	$2,40($fp)
	beq	$2,$0,$L23
	nop

	.loc 1 119 0
	lw	$5,36($fp)
	lw	$4,32($fp)
	lw	$2,%call16(decodificar_archivo)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decodificar_archivo
1:	jalr	$25
	nop

$LVL33 = .
	lw	$28,24($fp)
	b	$L24
	nop

$L23:
	.loc 1 121 0
	lw	$5,36($fp)
	lw	$4,32($fp)
	lw	$2,%call16(codificar_archivo)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificar_archivo
1:	jalr	$25
	nop

$LVL34 = .
	lw	$28,24($fp)
$L24:
	.loc 1 123 0
	lw	$4,32($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL35 = .
	lw	$28,24($fp)
	.loc 1 124 0
	lw	$4,36($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL36 = .
	lw	$28,24($fp)
	.loc 1 125 0
	move	$2,$0
$L25:
	.loc 1 126 0 discriminator 1
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,252($sp)
	lw	$fp,248($sp)
	addiu	$sp,$sp,256
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE2:
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
	.type	long_options.2286, @object
	.size	long_options.2286, 96
long_options.2286:
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
	.text
$Letext0:
	.file 2 "/usr/lib/gcc/mips-linux-gnu/6/include/stddef.h"
	.file 3 "/usr/include/mips-linux-gnu/bits/types.h"
	.file 4 "/usr/include/unistd.h"
	.file 5 "/usr/include/getopt.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x471
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF77
	.byte	0xc
	.4byte	$LASF78
	.4byte	$LASF79
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.4byte	$LASF8
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	$LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	$LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	$LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	$LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	$LASF7
	.uleb128 0x2
	.4byte	$LASF9
	.byte	0x3
	.byte	0x37
	.4byte	0x61
	.uleb128 0x2
	.4byte	$LASF10
	.byte	0x3
	.byte	0x83
	.4byte	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	$LASF11
	.uleb128 0x2
	.4byte	$LASF12
	.byte	0x3
	.byte	0x84
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF14
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x8
	.4byte	$LASF15
	.byte	0x4
	.2byte	0x222
	.4byte	0xbe
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x9
	.4byte	$LASF16
	.byte	0x5
	.byte	0x39
	.4byte	0xa0
	.uleb128 0x9
	.4byte	$LASF17
	.byte	0x5
	.byte	0x47
	.4byte	0x5a
	.uleb128 0x9
	.4byte	$LASF18
	.byte	0x5
	.byte	0x4c
	.4byte	0x5a
	.uleb128 0x9
	.4byte	$LASF19
	.byte	0x5
	.byte	0x50
	.4byte	0x5a
	.uleb128 0xa
	.4byte	$LASF24
	.byte	0x10
	.byte	0x5
	.byte	0x68
	.4byte	0x12d
	.uleb128 0xb
	.4byte	$LASF20
	.byte	0x5
	.byte	0x6a
	.4byte	0x12d
	.byte	0
	.uleb128 0xb
	.4byte	$LASF21
	.byte	0x5
	.byte	0x6d
	.4byte	0x5a
	.byte	0x4
	.uleb128 0xb
	.4byte	$LASF22
	.byte	0x5
	.byte	0x6e
	.4byte	0x133
	.byte	0x8
	.uleb128 0xc
	.ascii	"val\000"
	.byte	0x5
	.byte	0x6f
	.4byte	0x5a
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a
	.uleb128 0x2
	.4byte	$LASF23
	.byte	0x6
	.byte	0x30
	.4byte	0x144
	.uleb128 0xa
	.4byte	$LASF25
	.byte	0x98
	.byte	0x7
	.byte	0xf1
	.4byte	0x2c1
	.uleb128 0xb
	.4byte	$LASF26
	.byte	0x7
	.byte	0xf2
	.4byte	0x5a
	.byte	0
	.uleb128 0xb
	.4byte	$LASF27
	.byte	0x7
	.byte	0xf7
	.4byte	0xa0
	.byte	0x4
	.uleb128 0xb
	.4byte	$LASF28
	.byte	0x7
	.byte	0xf8
	.4byte	0xa0
	.byte	0x8
	.uleb128 0xb
	.4byte	$LASF29
	.byte	0x7
	.byte	0xf9
	.4byte	0xa0
	.byte	0xc
	.uleb128 0xb
	.4byte	$LASF30
	.byte	0x7
	.byte	0xfa
	.4byte	0xa0
	.byte	0x10
	.uleb128 0xb
	.4byte	$LASF31
	.byte	0x7
	.byte	0xfb
	.4byte	0xa0
	.byte	0x14
	.uleb128 0xb
	.4byte	$LASF32
	.byte	0x7
	.byte	0xfc
	.4byte	0xa0
	.byte	0x18
	.uleb128 0xb
	.4byte	$LASF33
	.byte	0x7
	.byte	0xfd
	.4byte	0xa0
	.byte	0x1c
	.uleb128 0xb
	.4byte	$LASF34
	.byte	0x7
	.byte	0xfe
	.4byte	0xa0
	.byte	0x20
	.uleb128 0xd
	.4byte	$LASF35
	.byte	0x7
	.2byte	0x100
	.4byte	0xa0
	.byte	0x24
	.uleb128 0xd
	.4byte	$LASF36
	.byte	0x7
	.2byte	0x101
	.4byte	0xa0
	.byte	0x28
	.uleb128 0xd
	.4byte	$LASF37
	.byte	0x7
	.2byte	0x102
	.4byte	0xa0
	.byte	0x2c
	.uleb128 0xd
	.4byte	$LASF38
	.byte	0x7
	.2byte	0x104
	.4byte	0x2f9
	.byte	0x30
	.uleb128 0xd
	.4byte	$LASF39
	.byte	0x7
	.2byte	0x106
	.4byte	0x2ff
	.byte	0x34
	.uleb128 0xd
	.4byte	$LASF40
	.byte	0x7
	.2byte	0x108
	.4byte	0x5a
	.byte	0x38
	.uleb128 0xd
	.4byte	$LASF41
	.byte	0x7
	.2byte	0x10c
	.4byte	0x5a
	.byte	0x3c
	.uleb128 0xd
	.4byte	$LASF42
	.byte	0x7
	.2byte	0x10e
	.4byte	0x7a
	.byte	0x40
	.uleb128 0xd
	.4byte	$LASF43
	.byte	0x7
	.2byte	0x112
	.4byte	0x3e
	.byte	0x44
	.uleb128 0xd
	.4byte	$LASF44
	.byte	0x7
	.2byte	0x113
	.4byte	0x4c
	.byte	0x46
	.uleb128 0xd
	.4byte	$LASF45
	.byte	0x7
	.2byte	0x114
	.4byte	0x305
	.byte	0x47
	.uleb128 0xd
	.4byte	$LASF46
	.byte	0x7
	.2byte	0x118
	.4byte	0x315
	.byte	0x48
	.uleb128 0xd
	.4byte	$LASF47
	.byte	0x7
	.2byte	0x121
	.4byte	0x8c
	.byte	0x50
	.uleb128 0xd
	.4byte	$LASF48
	.byte	0x7
	.2byte	0x129
	.4byte	0x9e
	.byte	0x58
	.uleb128 0xd
	.4byte	$LASF49
	.byte	0x7
	.2byte	0x12a
	.4byte	0x9e
	.byte	0x5c
	.uleb128 0xd
	.4byte	$LASF50
	.byte	0x7
	.2byte	0x12b
	.4byte	0x9e
	.byte	0x60
	.uleb128 0xd
	.4byte	$LASF51
	.byte	0x7
	.2byte	0x12c
	.4byte	0x9e
	.byte	0x64
	.uleb128 0xd
	.4byte	$LASF52
	.byte	0x7
	.2byte	0x12e
	.4byte	0x25
	.byte	0x68
	.uleb128 0xd
	.4byte	$LASF53
	.byte	0x7
	.2byte	0x12f
	.4byte	0x5a
	.byte	0x6c
	.uleb128 0xd
	.4byte	$LASF54
	.byte	0x7
	.2byte	0x131
	.4byte	0x31b
	.byte	0x70
	.byte	0
	.uleb128 0xe
	.4byte	$LASF80
	.byte	0x7
	.byte	0x96
	.uleb128 0xa
	.4byte	$LASF55
	.byte	0xc
	.byte	0x7
	.byte	0x9c
	.4byte	0x2f9
	.uleb128 0xb
	.4byte	$LASF56
	.byte	0x7
	.byte	0x9d
	.4byte	0x2f9
	.byte	0
	.uleb128 0xb
	.4byte	$LASF57
	.byte	0x7
	.byte	0x9e
	.4byte	0x2ff
	.byte	0x4
	.uleb128 0xb
	.4byte	$LASF58
	.byte	0x7
	.byte	0xa2
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x144
	.uleb128 0xf
	.4byte	0xa6
	.4byte	0x315
	.uleb128 0x10
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c1
	.uleb128 0xf
	.4byte	0xa6
	.4byte	0x32b
	.uleb128 0x10
	.4byte	0x97
	.byte	0x27
	.byte	0
	.uleb128 0x11
	.4byte	$LASF81
	.uleb128 0x8
	.4byte	$LASF59
	.byte	0x7
	.2byte	0x13b
	.4byte	0x32b
	.uleb128 0x8
	.4byte	$LASF60
	.byte	0x7
	.2byte	0x13c
	.4byte	0x32b
	.uleb128 0x8
	.4byte	$LASF61
	.byte	0x7
	.2byte	0x13d
	.4byte	0x32b
	.uleb128 0x9
	.4byte	$LASF62
	.byte	0x6
	.byte	0xaa
	.4byte	0x2ff
	.uleb128 0x9
	.4byte	$LASF63
	.byte	0x6
	.byte	0xab
	.4byte	0x2ff
	.uleb128 0x9
	.4byte	$LASF64
	.byte	0x6
	.byte	0xac
	.4byte	0x2ff
	.uleb128 0x12
	.4byte	$LASF82
	.byte	0x1
	.byte	0x2d
	.4byte	0x5a
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x425
	.uleb128 0x13
	.4byte	$LASF65
	.byte	0x1
	.byte	0x2d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.4byte	$LASF66
	.byte	0x1
	.byte	0x2d
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	$LASF67
	.byte	0x1
	.byte	0x2f
	.4byte	0x425
	.uleb128 0x5
	.byte	0x3
	.4byte	long_options.2286
	.uleb128 0x15
	.ascii	"opt\000"
	.byte	0x1
	.byte	0x38
	.4byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x14
	.4byte	$LASF68
	.byte	0x1
	.byte	0x39
	.4byte	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x14
	.4byte	$LASF69
	.byte	0x1
	.byte	0x39
	.4byte	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x14
	.4byte	$LASF70
	.byte	0x1
	.byte	0x3a
	.4byte	0x43b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x14
	.4byte	$LASF71
	.byte	0x1
	.byte	0x3b
	.4byte	0x43b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x14
	.4byte	$LASF72
	.byte	0x1
	.byte	0x3c
	.4byte	0x44b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.4byte	$LASF73
	.byte	0x1
	.byte	0x3d
	.4byte	0x44b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -215
	.byte	0
	.uleb128 0xf
	.4byte	0xf0
	.4byte	0x435
	.uleb128 0x10
	.4byte	0x97
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x139
	.uleb128 0xf
	.4byte	0xa6
	.4byte	0x44b
	.uleb128 0x10
	.4byte	0x97
	.byte	0x63
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	$LASF74
	.uleb128 0x16
	.4byte	$LASF75
	.byte	0x1
	.byte	0x28
	.4byte	$LFB1
	.4byte	$LFE1-$LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	$LASF76
	.byte	0x1
	.byte	0xc
	.4byte	$LFB0
	.4byte	$LFE0-$LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
$LASF77:
	.ascii	"GNU C99 6.3.0 20170516 -meb -mips32 -mfpxx -mllsc -mno-l"
	.ascii	"xc1-sxc1 -mabi=32 -g -O0 -std=c99\000"
$LASF17:
	.ascii	"optind\000"
$LASF16:
	.ascii	"optarg\000"
$LASF73:
	.ascii	"pidio_info\000"
$LASF25:
	.ascii	"_IO_FILE\000"
$LASF37:
	.ascii	"_IO_save_end\000"
$LASF5:
	.ascii	"short int\000"
$LASF8:
	.ascii	"size_t\000"
$LASF67:
	.ascii	"long_options\000"
$LASF47:
	.ascii	"_offset\000"
$LASF31:
	.ascii	"_IO_write_ptr\000"
$LASF26:
	.ascii	"_flags\000"
$LASF41:
	.ascii	"_flags2\000"
$LASF60:
	.ascii	"_IO_2_1_stdout_\000"
$LASF15:
	.ascii	"__environ\000"
$LASF38:
	.ascii	"_markers\000"
$LASF28:
	.ascii	"_IO_read_end\000"
$LASF75:
	.ascii	"mostrar_version\000"
$LASF27:
	.ascii	"_IO_read_ptr\000"
$LASF24:
	.ascii	"option\000"
$LASF76:
	.ascii	"mostrar_ayudas\000"
$LASF64:
	.ascii	"stderr\000"
$LASF6:
	.ascii	"long long int\000"
$LASF21:
	.ascii	"has_arg\000"
$LASF78:
	.ascii	"TP0.c\000"
$LASF46:
	.ascii	"_lock\000"
$LASF11:
	.ascii	"long int\000"
$LASF43:
	.ascii	"_cur_column\000"
$LASF61:
	.ascii	"_IO_2_1_stderr_\000"
$LASF81:
	.ascii	"_IO_FILE_plus\000"
$LASF58:
	.ascii	"_pos\000"
$LASF66:
	.ascii	"argv\000"
$LASF20:
	.ascii	"name\000"
$LASF57:
	.ascii	"_sbuf\000"
$LASF42:
	.ascii	"_old_offset\000"
$LASF1:
	.ascii	"unsigned char\000"
$LASF51:
	.ascii	"__pad4\000"
$LASF65:
	.ascii	"argc\000"
$LASF4:
	.ascii	"signed char\000"
$LASF7:
	.ascii	"long long unsigned int\000"
$LASF59:
	.ascii	"_IO_2_1_stdin_\000"
$LASF0:
	.ascii	"unsigned int\000"
$LASF55:
	.ascii	"_IO_marker\000"
$LASF45:
	.ascii	"_shortbuf\000"
$LASF30:
	.ascii	"_IO_write_base\000"
$LASF54:
	.ascii	"_unused2\000"
$LASF70:
	.ascii	"nombre_archivo_entrada\000"
$LASF18:
	.ascii	"opterr\000"
$LASF79:
	.ascii	"/home/OrganizacionCompu\000"
$LASF34:
	.ascii	"_IO_buf_end\000"
$LASF14:
	.ascii	"char\000"
$LASF82:
	.ascii	"main\000"
$LASF56:
	.ascii	"_next\000"
$LASF48:
	.ascii	"__pad1\000"
$LASF49:
	.ascii	"__pad2\000"
$LASF50:
	.ascii	"__pad3\000"
$LASF74:
	.ascii	"_Bool\000"
$LASF52:
	.ascii	"__pad5\000"
$LASF68:
	.ascii	"fentrada\000"
$LASF2:
	.ascii	"short unsigned int\000"
$LASF3:
	.ascii	"long unsigned int\000"
$LASF32:
	.ascii	"_IO_write_end\000"
$LASF12:
	.ascii	"__off64_t\000"
$LASF40:
	.ascii	"_fileno\000"
$LASF39:
	.ascii	"_chain\000"
$LASF10:
	.ascii	"__off_t\000"
$LASF36:
	.ascii	"_IO_backup_base\000"
$LASF62:
	.ascii	"stdin\000"
$LASF33:
	.ascii	"_IO_buf_base\000"
$LASF9:
	.ascii	"__quad_t\000"
$LASF53:
	.ascii	"_mode\000"
$LASF29:
	.ascii	"_IO_read_base\000"
$LASF13:
	.ascii	"sizetype\000"
$LASF44:
	.ascii	"_vtable_offset\000"
$LASF35:
	.ascii	"_IO_save_base\000"
$LASF22:
	.ascii	"flag\000"
$LASF19:
	.ascii	"optopt\000"
$LASF23:
	.ascii	"FILE\000"
$LASF71:
	.ascii	"nombre_archivo_salida\000"
$LASF72:
	.ascii	"decode\000"
$LASF63:
	.ascii	"stdout\000"
$LASF80:
	.ascii	"_IO_lock_t\000"
$LASF69:
	.ascii	"fsalida\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
