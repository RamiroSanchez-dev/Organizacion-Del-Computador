	.file	1 "decode_encode.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.data
	.align	2
	.type	encoding_table, @object
	.size	encoding_table, 64
encoding_table:
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	43
	.byte	47
	.text
	.align	2
	.globl	codificador64_3Bytes
	.set	nomips16
	.set	nomicromips
	.ent	codificador64_3Bytes
	.type	codificador64_3Bytes, @function
codificador64_3Bytes:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	.cprestore	0
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,32($fp)
	lbu	$2,0($2)
	srl	$2,$2,2
	andi	$2,$2,0x00ff
	sw	$2,8($fp)
	lw	$2,32($fp)
	lbu	$2,0($2)
	sll	$2,$2,4
	andi	$2,$2,0x30
	lw	$3,32($fp)
	addiu	$3,$3,1
	lbu	$3,0($3)
	srl	$3,$3,4
	andi	$3,$3,0x00ff
	or	$2,$2,$3
	sw	$2,12($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	sll	$2,$2,2
	andi	$2,$2,0x3c
	lw	$3,32($fp)
	addiu	$3,$3,2
	lbu	$3,0($3)
	srl	$3,$3,6
	andi	$3,$3,0x00ff
	or	$2,$2,$3
	sw	$2,16($fp)
	lw	$2,32($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	andi	$2,$2,0x3f
	sw	$2,20($fp)
	lw	$2,%got(encoding_table)($28)
	addiu	$3,$2,%lo(encoding_table)
	lw	$2,8($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,36($fp)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	lw	$3,%got(encoding_table)($28)
	addiu	$4,$3,%lo(encoding_table)
	lw	$3,12($fp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,2
	lw	$3,%got(encoding_table)($28)
	addiu	$4,$3,%lo(encoding_table)
	lw	$3,16($fp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,36($fp)
	addiu	$2,$2,3
	lw	$3,%got(encoding_table)($28)
	addiu	$4,$3,%lo(encoding_table)
	lw	$3,20($fp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	codificador64_3Bytes
	.size	codificador64_3Bytes, .-codificador64_3Bytes
	.rdata
	.align	2
$LC0:
	.ascii	"w\000"
	.align	2
$LC1:
	.ascii	"log-errores\000"
	.align	2
$LC2:
	.ascii	"Ocurri\303\263 un error interno. Ejecute nuevamente el p"
	.ascii	"rograma.\000"
	.align	2
$LC3:
	.ascii	"%c%c%c\000"
	.text
	.align	2
	.globl	codificar_archivo
	.set	nomips16
	.set	nomicromips
	.ent	codificar_archivo
	.type	codificar_archivo, @function
codificar_archivo:
	.frame	$fp,64,$31		# vars= 24, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,64($fp)
	sw	$5,68($fp)
	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,36($fp)
	lw	$2,36($fp)
	bne	$2,$0,$L3
	nop

	lw	$2,%got($LC2)($28)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L2
	nop

$L3:
	lw	$4,36($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,1			# 0x1
	sb	$2,32($fp)
$L9:
	sh	$0,44($fp)
	sb	$0,46($fp)
	sw	$0,48($fp)
	addiu	$2,$fp,44
	addiu	$4,$2,1
	addiu	$3,$fp,44
	addiu	$2,$fp,44
	addiu	$2,$2,2
	sw	$2,16($sp)
	move	$7,$4
	move	$6,$3
	lw	$2,%got($LC3)($28)
	addiu	$5,$2,%lo($LC3)
	lw	$4,64($fp)
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,40($fp)
	lw	$3,40($fp)
	li	$2,3			# 0x3
	bne	$3,$2,$L5
	nop

	addiu	$3,$fp,48
	addiu	$2,$fp,44
	move	$5,$3
	move	$4,$2
	lw	$2,%got(codificador64_3Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificador64_3Bytes
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L6
	nop

$L5:
	lw	$3,40($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L7
	nop

	addiu	$3,$fp,48
	addiu	$2,$fp,44
	move	$5,$3
	move	$4,$2
	lw	$2,%got(codificador64_3Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificador64_3Bytes
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,61			# 0x3d
	sb	$2,51($fp)
	sb	$0,32($fp)
	b	$L6
	nop

$L7:
	lw	$3,40($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L8
	nop

	addiu	$3,$fp,48
	addiu	$2,$fp,44
	move	$5,$3
	move	$4,$2
	lw	$2,%got(codificador64_3Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificador64_3Bytes
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$2,61			# 0x3d
	sb	$2,50($fp)
	li	$2,61			# 0x3d
	sb	$2,51($fp)
	sb	$0,32($fp)
	b	$L6
	nop

$L8:
	sb	$0,32($fp)
	b	$L2
	nop

$L6:
	addiu	$2,$fp,48
	lw	$7,68($fp)
	li	$6,1			# 0x1
	li	$5,4			# 0x4
	move	$4,$2
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lbu	$2,32($fp)
	bne	$2,$0,$L9
	nop

$L2:
	move	$sp,$fp
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	codificar_archivo
	.size	codificar_archivo, .-codificar_archivo
	.data
	.align	2
	.type	error, @object
	.size	error, 55
error:
	.ascii	"El caracter _ no pertenece a base64. Revise la entrada\000"
	.text
	.align	2
	.globl	obtener_posicion64
	.set	nomips16
	.set	nomicromips
	.ent	obtener_posicion64
	.type	obtener_posicion64, @function
obtener_posicion64:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	.cprestore	0
	move	$2,$4
	sb	$2,24($fp)
	lbu	$2,24($fp)
	sw	$2,12($fp)
	sw	$0,8($fp)
	lw	$2,12($fp)
	slt	$2,$2,97
	bne	$2,$0,$L11
	nop

	lw	$2,12($fp)
	slt	$2,$2,123
	beq	$2,$0,$L11
	nop

	lw	$2,12($fp)
	addiu	$2,$2,-71
	sw	$2,8($fp)
	b	$L12
	nop

$L11:
	lw	$2,12($fp)
	slt	$2,$2,65
	bne	$2,$0,$L13
	nop

	lw	$2,12($fp)
	slt	$2,$2,91
	beq	$2,$0,$L13
	nop

	lw	$2,12($fp)
	addiu	$2,$2,-65
	sw	$2,8($fp)
	b	$L12
	nop

$L13:
	lw	$2,12($fp)
	slt	$2,$2,48
	bne	$2,$0,$L14
	nop

	lw	$2,12($fp)
	slt	$2,$2,58
	beq	$2,$0,$L14
	nop

	lw	$2,12($fp)
	addiu	$2,$2,4
	sw	$2,8($fp)
	b	$L12
	nop

$L14:
	lw	$3,12($fp)
	li	$2,47			# 0x2f
	bne	$3,$2,$L15
	nop

	li	$2,63			# 0x3f
	sw	$2,8($fp)
	b	$L12
	nop

$L15:
	lw	$3,12($fp)
	li	$2,43			# 0x2b
	bne	$3,$2,$L16
	nop

	li	$2,62			# 0x3e
	sw	$2,8($fp)
	b	$L12
	nop

$L16:
	lw	$2,12($fp)
	beq	$2,$0,$L12
	nop

	lb	$3,24($fp)
	lw	$2,%got(error)($28)
	addiu	$2,$2,%lo(error)
	sb	$3,12($2)
	li	$2,-1			# 0xffffffffffffffff
	b	$L17
	nop

$L12:
	lw	$2,8($fp)
$L17:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	obtener_posicion64
	.size	obtener_posicion64, .-obtener_posicion64
	.align	2
	.globl	decodificador64_4Bytes
	.set	nomips16
	.set	nomicromips
	.ent	decodificador64_4Bytes
	.type	decodificador64_4Bytes, @function
decodificador64_4Bytes:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,72($fp)
	sw	$5,76($fp)
	lw	$2,72($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L19
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L24
	nop

$L19:
	lw	$2,24($fp)
	sw	$2,44($fp)
	lw	$2,72($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L21
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L24
	nop

$L21:
	lw	$2,28($fp)
	sw	$2,48($fp)
	lw	$2,72($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L22
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L24
	nop

$L22:
	lw	$2,32($fp)
	sw	$2,52($fp)
	lw	$2,72($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L23
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L24
	nop

$L23:
	lw	$2,36($fp)
	sw	$2,56($fp)
	lw	$2,44($fp)
	andi	$2,$2,0x00ff
	sll	$2,$2,2
	andi	$3,$2,0x00ff
	lw	$2,48($fp)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	sb	$2,40($fp)
	lw	$2,48($fp)
	andi	$2,$2,0x00ff
	sll	$2,$2,4
	andi	$3,$2,0x00ff
	lw	$2,52($fp)
	srl	$2,$2,2
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	sb	$2,41($fp)
	lw	$2,52($fp)
	andi	$2,$2,0x00ff
	sll	$2,$2,6
	andi	$3,$2,0x00ff
	lw	$2,56($fp)
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	sb	$2,42($fp)
	lw	$2,76($fp)
	lbu	$3,40($fp)
	sb	$3,0($2)
	lw	$2,76($fp)
	addiu	$2,$2,1
	lbu	$3,41($fp)
	sb	$3,0($2)
	lw	$2,76($fp)
	addiu	$2,$2,2
	lbu	$3,42($fp)
	sb	$3,0($2)
	move	$2,$0
$L24:
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decodificador64_4Bytes
	.size	decodificador64_4Bytes, .-decodificador64_4Bytes
	.rdata
	.align	2
$LC4:
	.ascii	"%c%c%c%c\000"
	.align	2
$LC6:
	.ascii	"%s\012\000"
	.align	2
$LC5:
	.ascii	"Informaci\303\263n insuficiente para decodificar. Revise"
	.ascii	" que la entrada sea correcta.\000"
	.text
	.align	2
	.globl	decodificar_archivo
	.set	nomips16
	.set	nomicromips
	.ent	decodificar_archivo
	.type	decodificar_archivo, @function
decodificar_archivo:
	.frame	$fp,152,$31		# vars= 112, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-152
	sw	$31,148($sp)
	sw	$fp,144($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,152($fp)
	sw	$5,156($fp)
	li	$2,1			# 0x1
	sb	$2,32($fp)
	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,40($fp)
	lw	$2,40($fp)
	bne	$2,$0,$L26
	nop

	lw	$2,%got($LC2)($28)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L25
	nop

$L26:
	sw	$0,52($fp)
	sh	$0,56($fp)
	sb	$0,58($fp)
	li	$2,3			# 0x3
	sw	$2,36($fp)
	addiu	$2,$fp,52
	addiu	$4,$2,1
	addiu	$3,$fp,52
	addiu	$2,$fp,52
	addiu	$2,$2,3
	sw	$2,20($sp)
	addiu	$2,$fp,52
	addiu	$2,$2,2
	sw	$2,16($sp)
	move	$7,$4
	move	$6,$3
	lw	$2,%got($LC4)($28)
	addiu	$5,$2,%lo($LC4)
	lw	$4,152($fp)
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,44($fp)
	lb	$3,52($fp)
	li	$2,10			# 0xa
	beq	$3,$2,$L28
	nop

	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L29
	nop

$L28:
	sb	$0,32($fp)
	lw	$4,40($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L25
	nop

$L29:
	lw	$3,44($fp)
	li	$2,4			# 0x4
	beq	$3,$2,$L31
	nop

	lw	$3,44($fp)
	li	$2,-1			# 0xffffffffffffffff
	beq	$3,$2,$L31
	nop

	lw	$2,%got($LC5)($28)
	addiu	$3,$fp,60
	addiu	$2,$2,%lo($LC5)
	li	$4,80			# 0x50
	move	$6,$4
	move	$5,$2
	move	$4,$3
	lw	$2,%call16(memcpy)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	nop

	lw	$28,24($fp)
	addiu	$2,$fp,60
	move	$6,$2
	lw	$2,%got($LC6)($28)
	addiu	$5,$2,%lo($LC6)
	lw	$4,40($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sb	$0,32($fp)
	lw	$4,40($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	nop
	b	$L25
	nop

$L31:
	lb	$3,55($fp)
	li	$2,61			# 0x3d
	bne	$3,$2,$L32
	nop

	li	$2,2			# 0x2
	sw	$2,36($fp)
	sb	$0,55($fp)
	lb	$3,54($fp)
	li	$2,61			# 0x3d
	bne	$3,$2,$L33
	nop

	li	$2,1			# 0x1
	sw	$2,36($fp)
	sb	$0,54($fp)
$L33:
	sb	$0,32($fp)
$L32:
	addiu	$3,$fp,56
	addiu	$2,$fp,52
	move	$5,$3
	move	$4,$2
	lw	$2,%got(decodificador64_4Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decodificador64_4Bytes
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,48($fp)
	lw	$3,48($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L34
	nop

	lw	$2,%got(error)($28)
	addiu	$6,$2,%lo(error)
	lw	$2,%got($LC6)($28)
	addiu	$5,$2,%lo($LC6)
	lw	$4,40($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$4,40($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
	nop
	b	$L25
	nop

$L34:
	addiu	$2,$fp,56
	lw	$7,156($fp)
	li	$6,1			# 0x1
	lw	$5,36($fp)
	move	$4,$2
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lbu	$2,32($fp)
	bne	$2,$0,$L26
	nop

	lw	$4,40($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L25:
	move	$sp,$fp
	lw	$31,148($sp)
	lw	$fp,144($sp)
	addiu	$sp,$sp,152
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decodificar_archivo
	.size	decodificar_archivo, .-decodificar_archivo
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
