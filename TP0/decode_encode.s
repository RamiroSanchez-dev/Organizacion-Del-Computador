	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
$Ltext0:
	.cfi_sections	.debug_frame
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
$LFB0 = .
	.file 1 "decode_encode.c"
	.loc 1 17 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 32
	sw	$fp,28($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	0
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 18 0
	lw	$2,32($fp)
	lbu	$2,0($2)
	srl	$2,$2,2
	andi	$2,$2,0x00ff
	sw	$2,8($fp)
	.loc 1 19 0
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
	.loc 1 20 0
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
	.loc 1 21 0
	lw	$2,32($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	andi	$2,$2,0x3f
	sw	$2,20($fp)
	.loc 1 23 0
	lw	$2,%got(encoding_table)($28)
	addiu	$3,$2,%lo(encoding_table)
	lw	$2,8($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,36($fp)
	sb	$3,0($2)
	.loc 1 24 0
	lw	$2,36($fp)
	addiu	$2,$2,1
	lw	$3,%got(encoding_table)($28)
	addiu	$4,$3,%lo(encoding_table)
	lw	$3,12($fp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	.loc 1 25 0
	lw	$2,36($fp)
	addiu	$2,$2,2
	lw	$3,%got(encoding_table)($28)
	addiu	$4,$3,%lo(encoding_table)
	lw	$3,16($fp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	.loc 1 26 0
	lw	$2,36($fp)
	addiu	$2,$2,3
	lw	$3,%got(encoding_table)($28)
	addiu	$4,$3,%lo(encoding_table)
	lw	$3,20($fp)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	.loc 1 27 0
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	codificador64_3Bytes
	.cfi_endproc
$LFE0:
	.size	codificador64_3Bytes, .-codificador64_3Bytes
	.rdata
	.align	2
$LC0:
	.ascii	"%c%c%c\000"
	.text
	.align	2
	.globl	codificar_archivo
$LFB1 = .
	.loc 1 29 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	codificar_archivo
	.type	codificar_archivo, @function
codificar_archivo:
	.frame	$fp,56,$31		# vars= 16, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-56
	.cfi_def_cfa_offset 56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	24
	sw	$4,56($fp)
	sw	$5,60($fp)
	.loc 1 30 0
	li	$2,1			# 0x1
	sb	$2,32($fp)
$L8:
$LBB2 = .
	.loc 1 32 0
	sh	$0,40($fp)
	sb	$0,42($fp)
	.loc 1 33 0
	sw	$0,44($fp)
	.loc 1 35 0
	addiu	$2,$fp,40
	addiu	$4,$2,1
	addiu	$3,$fp,40
	addiu	$2,$fp,40
	addiu	$2,$2,2
	sw	$2,16($sp)
	move	$7,$4
	move	$6,$3
	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	lw	$4,56($fp)
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

$LVL0 = .
	lw	$28,24($fp)
	sw	$2,36($fp)
	.loc 1 37 0
	lw	$3,36($fp)
	li	$2,3			# 0x3
	bne	$3,$2,$L3
	nop

	.loc 1 38 0
	addiu	$3,$fp,44
	addiu	$2,$fp,40
	move	$5,$3
	move	$4,$2
	lw	$2,%got(codificador64_3Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificador64_3Bytes
1:	jalr	$25
	nop

$LVL1 = .
	lw	$28,24($fp)
	b	$L4
	nop

$L3:
	.loc 1 40 0
	lw	$3,36($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L5
	nop

	.loc 1 41 0
	addiu	$3,$fp,44
	addiu	$2,$fp,40
	move	$5,$3
	move	$4,$2
	lw	$2,%got(codificador64_3Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificador64_3Bytes
1:	jalr	$25
	nop

$LVL2 = .
	lw	$28,24($fp)
	.loc 1 42 0
	li	$2,61			# 0x3d
	sb	$2,47($fp)
	.loc 1 43 0
	sb	$0,32($fp)
	b	$L4
	nop

$L5:
	.loc 1 45 0
	lw	$3,36($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L6
	nop

	.loc 1 46 0
	addiu	$3,$fp,44
	addiu	$2,$fp,40
	move	$5,$3
	move	$4,$2
	lw	$2,%got(codificador64_3Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,codificador64_3Bytes
1:	jalr	$25
	nop

$LVL3 = .
	lw	$28,24($fp)
	.loc 1 47 0
	li	$2,61			# 0x3d
	sb	$2,46($fp)
	.loc 1 48 0
	li	$2,61			# 0x3d
	sb	$2,47($fp)
	.loc 1 49 0
	sb	$0,32($fp)
	b	$L4
	nop

$L6:
	.loc 1 52 0
	sb	$0,32($fp)
	b	$L2
	nop

$L4:
	.loc 1 57 0
	addiu	$2,$fp,44
	lw	$7,60($fp)
	li	$6,1			# 0x1
	li	$5,4			# 0x4
	move	$4,$2
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

$LVL4 = .
	lw	$28,24($fp)
$LBE2 = .
	.loc 1 58 0
	lbu	$2,32($fp)
	bne	$2,$0,$L8
	nop

$L2:
	.loc 1 59 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	codificar_archivo
	.cfi_endproc
$LFE1:
	.size	codificar_archivo, .-codificar_archivo
	.rdata
	.align	2
$LC1:
	.ascii	"\012 El caracter: '%c' no es un caracter decodificable e"
	.ascii	"n base64. Compruebe la entrada.\012\000"
	.text
	.align	2
	.globl	obtener_posicion64
$LFB2 = .
	.loc 1 66 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	obtener_posicion64
	.type	obtener_posicion64, @function
obtener_posicion64:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	move	$2,$4
	sb	$2,40($fp)
	.loc 1 68 0
	lbu	$2,40($fp)
	sw	$2,28($fp)
	.loc 1 69 0
	sw	$0,24($fp)
	.loc 1 71 0
	lw	$2,28($fp)
	sltu	$2,$2,97
	bne	$2,$0,$L10
	nop

	.loc 1 71 0 is_stmt 0 discriminator 1
	lw	$2,28($fp)
	sltu	$2,$2,123
	beq	$2,$0,$L10
	nop

	.loc 1 72 0 is_stmt 1
	lw	$2,28($fp)
	addiu	$2,$2,-71
	sw	$2,24($fp)
	b	$L11
	nop

$L10:
	.loc 1 73 0
	lw	$2,28($fp)
	sltu	$2,$2,65
	bne	$2,$0,$L12
	nop

	.loc 1 73 0 is_stmt 0 discriminator 1
	lw	$2,28($fp)
	sltu	$2,$2,91
	beq	$2,$0,$L12
	nop

	.loc 1 74 0 is_stmt 1
	lw	$2,28($fp)
	addiu	$2,$2,-65
	sw	$2,24($fp)
	b	$L11
	nop

$L12:
	.loc 1 75 0
	lw	$2,28($fp)
	sltu	$2,$2,48
	bne	$2,$0,$L13
	nop

	.loc 1 75 0 is_stmt 0 discriminator 1
	lw	$2,28($fp)
	sltu	$2,$2,58
	beq	$2,$0,$L13
	nop

	.loc 1 76 0 is_stmt 1
	lw	$2,28($fp)
	addiu	$2,$2,4
	sw	$2,24($fp)
	b	$L11
	nop

$L13:
	.loc 1 77 0
	lw	$3,28($fp)
	li	$2,47			# 0x2f
	bne	$3,$2,$L14
	nop

	.loc 1 78 0
	li	$2,63			# 0x3f
	sw	$2,24($fp)
	b	$L11
	nop

$L14:
	.loc 1 79 0
	lw	$3,28($fp)
	li	$2,43			# 0x2b
	bne	$3,$2,$L15
	nop

	.loc 1 80 0
	li	$2,62			# 0x3e
	sw	$2,24($fp)
	b	$L11
	nop

$L15:
	.loc 1 81 0
	lw	$2,28($fp)
	beq	$2,$0,$L11
	nop

	.loc 1 82 0
	lbu	$2,40($fp)
	move	$5,$2
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

$LVL5 = .
	lw	$28,16($fp)
$L11:
	.loc 1 84 0
	lw	$2,24($fp)
	.loc 1 85 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	obtener_posicion64
	.cfi_endproc
$LFE2:
	.size	obtener_posicion64, .-obtener_posicion64
	.align	2
	.globl	decodificador64_4Bytes
$LFB3 = .
	.loc 1 87 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	decodificador64_4Bytes
	.type	decodificador64_4Bytes, @function
decodificador64_4Bytes:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-56
	.cfi_def_cfa_offset 56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,56($fp)
	sw	$5,60($fp)
	.loc 1 91 0
	lw	$2,56($fp)
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

$LVL6 = .
	lw	$28,16($fp)
	sw	$2,28($fp)
	.loc 1 92 0
	lw	$2,56($fp)
	addiu	$2,$2,1
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

$LVL7 = .
	lw	$28,16($fp)
	sw	$2,32($fp)
	.loc 1 93 0
	lw	$2,56($fp)
	addiu	$2,$2,2
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

$LVL8 = .
	lw	$28,16($fp)
	sw	$2,36($fp)
	.loc 1 94 0
	lw	$2,56($fp)
	addiu	$2,$2,3
	lbu	$2,0($2)
	move	$4,$2
	lw	$2,%got(obtener_posicion64)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,obtener_posicion64
1:	jalr	$25
	nop

$LVL9 = .
	lw	$28,16($fp)
	sw	$2,40($fp)
	.loc 1 96 0
	lw	$2,28($fp)
	andi	$2,$2,0x00ff
	sll	$2,$2,2
	andi	$3,$2,0x00ff
	lw	$2,32($fp)
	srl	$2,$2,4
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	sb	$2,24($fp)
	.loc 1 97 0
	lw	$2,32($fp)
	andi	$2,$2,0x00ff
	sll	$2,$2,4
	andi	$3,$2,0x00ff
	lw	$2,36($fp)
	srl	$2,$2,2
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	sb	$2,25($fp)
	.loc 1 98 0
	lw	$2,36($fp)
	andi	$2,$2,0x00ff
	sll	$2,$2,6
	andi	$3,$2,0x00ff
	lw	$2,40($fp)
	andi	$2,$2,0x00ff
	or	$2,$3,$2
	sb	$2,26($fp)
	.loc 1 100 0
	lw	$2,60($fp)
	lbu	$3,24($fp)
	sb	$3,0($2)
	.loc 1 101 0
	lw	$2,60($fp)
	addiu	$2,$2,1
	lbu	$3,25($fp)
	sb	$3,0($2)
	.loc 1 102 0
	lw	$2,60($fp)
	addiu	$2,$2,2
	lbu	$3,26($fp)
	sb	$3,0($2)
	.loc 1 103 0
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decodificador64_4Bytes
	.cfi_endproc
$LFE3:
	.size	decodificador64_4Bytes, .-decodificador64_4Bytes
	.rdata
	.align	2
$LC2:
	.ascii	"%c%c%c%c\000"
	.text
	.align	2
	.globl	decodificar_archivo
$LFB4 = .
	.loc 1 105 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	decodificar_archivo
	.type	decodificar_archivo, @function
decodificar_archivo:
	.frame	$fp,64,$31		# vars= 24, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	24
	sw	$4,64($fp)
	sw	$5,68($fp)
	.loc 1 106 0
	li	$2,1			# 0x1
	sb	$2,32($fp)
$L24:
$LBB3 = .
	.loc 1 108 0
	sw	$0,44($fp)
	.loc 1 109 0
	sh	$0,48($fp)
	sb	$0,50($fp)
	.loc 1 110 0
	li	$2,3			# 0x3
	sw	$2,36($fp)
	.loc 1 112 0
	addiu	$2,$fp,44
	addiu	$4,$2,1
	addiu	$3,$fp,44
	addiu	$2,$fp,44
	addiu	$2,$2,3
	sw	$2,20($sp)
	addiu	$2,$fp,44
	addiu	$2,$2,2
	sw	$2,16($sp)
	move	$7,$4
	move	$6,$3
	lw	$2,%got($LC2)($28)
	addiu	$5,$2,%lo($LC2)
	lw	$4,64($fp)
	lw	$2,%call16(__isoc99_fscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_fscanf
1:	jalr	$25
	nop

$LVL10 = .
	lw	$28,24($fp)
	sw	$2,40($fp)
	.loc 1 113 0
	lb	$3,44($fp)
	li	$2,10			# 0xa
	beq	$3,$2,$L19
	nop

	.loc 1 113 0 is_stmt 0 discriminator 1
	lw	$3,40($fp)
	li	$2,4			# 0x4
	beq	$3,$2,$L20
	nop

$L19:
	.loc 1 114 0 is_stmt 1
	sb	$0,32($fp)
	b	$L18
	nop

$L20:
	.loc 1 117 0
	lb	$3,47($fp)
	li	$2,61			# 0x3d
	bne	$3,$2,$L22
	nop

	.loc 1 118 0
	li	$2,2			# 0x2
	sw	$2,36($fp)
	.loc 1 119 0
	sb	$0,47($fp)
	.loc 1 120 0
	lb	$3,46($fp)
	li	$2,61			# 0x3d
	bne	$3,$2,$L23
	nop

	.loc 1 121 0
	li	$2,1			# 0x1
	sw	$2,36($fp)
	.loc 1 122 0
	sb	$0,46($fp)
$L23:
	.loc 1 124 0
	sb	$0,32($fp)
$L22:
	.loc 1 127 0
	addiu	$3,$fp,48
	addiu	$2,$fp,44
	move	$5,$3
	move	$4,$2
	lw	$2,%got(decodificador64_4Bytes)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decodificador64_4Bytes
1:	jalr	$25
	nop

$LVL11 = .
	lw	$28,24($fp)
	.loc 1 129 0
	addiu	$2,$fp,48
	lw	$7,68($fp)
	li	$6,1			# 0x1
	lw	$5,36($fp)
	move	$4,$2
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

$LVL12 = .
	lw	$28,24($fp)
$LBE3 = .
	.loc 1 131 0
	lbu	$2,32($fp)
	bne	$2,$0,$L24
	nop

$L18:
	.loc 1 132 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decodificar_archivo
	.cfi_endproc
$LFE4:
	.size	decodificar_archivo, .-decodificar_archivo
$Letext0:
	.file 2 "/usr/include/mips-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/mips-linux-gnu/6/include/stddef.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/unistd.h"
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x55f
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF78
	.byte	0xc
	.4byte	$LASF79
	.4byte	$LASF80
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	$LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	$LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	$LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	$LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	$LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	$LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	$LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	$LASF7
	.uleb128 0x4
	.4byte	$LASF8
	.byte	0x2
	.byte	0x37
	.4byte	0x56
	.uleb128 0x4
	.4byte	$LASF9
	.byte	0x2
	.byte	0x83
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	$LASF10
	.uleb128 0x4
	.4byte	$LASF11
	.byte	0x2
	.byte	0x84
	.4byte	0x64
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	$LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	$LASF13
	.uleb128 0x4
	.4byte	$LASF14
	.byte	0x3
	.byte	0xd8
	.4byte	0x33
	.uleb128 0x7
	.4byte	$LASF50
	.byte	0x6
	.2byte	0x222
	.4byte	0xb9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x95
	.uleb128 0x4
	.4byte	$LASF15
	.byte	0x4
	.byte	0x30
	.4byte	0xca
	.uleb128 0x8
	.4byte	$LASF45
	.byte	0x98
	.byte	0x5
	.byte	0xf1
	.4byte	0x247
	.uleb128 0x9
	.4byte	$LASF16
	.byte	0x5
	.byte	0xf2
	.4byte	0x4f
	.byte	0
	.uleb128 0x9
	.4byte	$LASF17
	.byte	0x5
	.byte	0xf7
	.4byte	0x95
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF18
	.byte	0x5
	.byte	0xf8
	.4byte	0x95
	.byte	0x8
	.uleb128 0x9
	.4byte	$LASF19
	.byte	0x5
	.byte	0xf9
	.4byte	0x95
	.byte	0xc
	.uleb128 0x9
	.4byte	$LASF20
	.byte	0x5
	.byte	0xfa
	.4byte	0x95
	.byte	0x10
	.uleb128 0x9
	.4byte	$LASF21
	.byte	0x5
	.byte	0xfb
	.4byte	0x95
	.byte	0x14
	.uleb128 0x9
	.4byte	$LASF22
	.byte	0x5
	.byte	0xfc
	.4byte	0x95
	.byte	0x18
	.uleb128 0x9
	.4byte	$LASF23
	.byte	0x5
	.byte	0xfd
	.4byte	0x95
	.byte	0x1c
	.uleb128 0x9
	.4byte	$LASF24
	.byte	0x5
	.byte	0xfe
	.4byte	0x95
	.byte	0x20
	.uleb128 0xa
	.4byte	$LASF25
	.byte	0x5
	.2byte	0x100
	.4byte	0x95
	.byte	0x24
	.uleb128 0xa
	.4byte	$LASF26
	.byte	0x5
	.2byte	0x101
	.4byte	0x95
	.byte	0x28
	.uleb128 0xa
	.4byte	$LASF27
	.byte	0x5
	.2byte	0x102
	.4byte	0x95
	.byte	0x2c
	.uleb128 0xa
	.4byte	$LASF28
	.byte	0x5
	.2byte	0x104
	.4byte	0x28f
	.byte	0x30
	.uleb128 0xa
	.4byte	$LASF29
	.byte	0x5
	.2byte	0x106
	.4byte	0x295
	.byte	0x34
	.uleb128 0xa
	.4byte	$LASF30
	.byte	0x5
	.2byte	0x108
	.4byte	0x4f
	.byte	0x38
	.uleb128 0xa
	.4byte	$LASF31
	.byte	0x5
	.2byte	0x10c
	.4byte	0x4f
	.byte	0x3c
	.uleb128 0xa
	.4byte	$LASF32
	.byte	0x5
	.2byte	0x10e
	.4byte	0x6f
	.byte	0x40
	.uleb128 0xa
	.4byte	$LASF33
	.byte	0x5
	.2byte	0x112
	.4byte	0x2c
	.byte	0x44
	.uleb128 0xa
	.4byte	$LASF34
	.byte	0x5
	.2byte	0x113
	.4byte	0x41
	.byte	0x46
	.uleb128 0xa
	.4byte	$LASF35
	.byte	0x5
	.2byte	0x114
	.4byte	0x29b
	.byte	0x47
	.uleb128 0xa
	.4byte	$LASF36
	.byte	0x5
	.2byte	0x118
	.4byte	0x2ab
	.byte	0x48
	.uleb128 0xa
	.4byte	$LASF37
	.byte	0x5
	.2byte	0x121
	.4byte	0x81
	.byte	0x50
	.uleb128 0xa
	.4byte	$LASF38
	.byte	0x5
	.2byte	0x129
	.4byte	0x93
	.byte	0x58
	.uleb128 0xa
	.4byte	$LASF39
	.byte	0x5
	.2byte	0x12a
	.4byte	0x93
	.byte	0x5c
	.uleb128 0xa
	.4byte	$LASF40
	.byte	0x5
	.2byte	0x12b
	.4byte	0x93
	.byte	0x60
	.uleb128 0xa
	.4byte	$LASF41
	.byte	0x5
	.2byte	0x12c
	.4byte	0x93
	.byte	0x64
	.uleb128 0xa
	.4byte	$LASF42
	.byte	0x5
	.2byte	0x12e
	.4byte	0xa2
	.byte	0x68
	.uleb128 0xa
	.4byte	$LASF43
	.byte	0x5
	.2byte	0x12f
	.4byte	0x4f
	.byte	0x6c
	.uleb128 0xa
	.4byte	$LASF44
	.byte	0x5
	.2byte	0x131
	.4byte	0x2b1
	.byte	0x70
	.byte	0
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x257
	.uleb128 0xc
	.4byte	0x8c
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	$LASF81
	.byte	0x5
	.byte	0x96
	.uleb128 0x8
	.4byte	$LASF46
	.byte	0xc
	.byte	0x5
	.byte	0x9c
	.4byte	0x28f
	.uleb128 0x9
	.4byte	$LASF47
	.byte	0x5
	.byte	0x9d
	.4byte	0x28f
	.byte	0
	.uleb128 0x9
	.4byte	$LASF48
	.byte	0x5
	.byte	0x9e
	.4byte	0x295
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF49
	.byte	0x5
	.byte	0xa2
	.4byte	0x4f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x2ab
	.uleb128 0xc
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x257
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x2c1
	.uleb128 0xc
	.4byte	0x8c
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	$LASF82
	.uleb128 0x7
	.4byte	$LASF51
	.byte	0x5
	.2byte	0x13b
	.4byte	0x2c1
	.uleb128 0x7
	.4byte	$LASF52
	.byte	0x5
	.2byte	0x13c
	.4byte	0x2c1
	.uleb128 0x7
	.4byte	$LASF53
	.byte	0x5
	.2byte	0x13d
	.4byte	0x2c1
	.uleb128 0xf
	.4byte	$LASF54
	.byte	0x4
	.byte	0xaa
	.4byte	0x295
	.uleb128 0xf
	.4byte	$LASF55
	.byte	0x4
	.byte	0xab
	.4byte	0x295
	.uleb128 0xf
	.4byte	$LASF56
	.byte	0x4
	.byte	0xac
	.4byte	0x295
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x31b
	.uleb128 0xc
	.4byte	0x8c
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.4byte	$LASF59
	.byte	0x1
	.byte	0x3
	.4byte	0x30b
	.uleb128 0x5
	.byte	0x3
	.4byte	encoding_table
	.uleb128 0x11
	.4byte	$LASF66
	.byte	0x1
	.byte	0x69
	.4byte	$LFB4
	.4byte	$LFE4-$LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ae
	.uleb128 0x12
	.4byte	$LASF57
	.byte	0x1
	.byte	0x69
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.4byte	$LASF58
	.byte	0x1
	.byte	0x69
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.4byte	$LASF60
	.byte	0x1
	.byte	0x6a
	.4byte	0x3b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	$LBB3
	.4byte	$LBE3-$LBB3
	.uleb128 0x10
	.4byte	$LASF61
	.byte	0x1
	.byte	0x6c
	.4byte	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	$LASF62
	.byte	0x1
	.byte	0x6d
	.4byte	0x3bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.4byte	$LASF63
	.byte	0x1
	.byte	0x6e
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	$LASF64
	.byte	0x1
	.byte	0x70
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	$LASF65
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x3cb
	.uleb128 0xc
	.4byte	0x8c
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	$LASF67
	.byte	0x1
	.byte	0x57
	.4byte	$LFB3
	.4byte	$LFE3-$LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x432
	.uleb128 0x12
	.4byte	$LASF68
	.byte	0x1
	.byte	0x57
	.4byte	0x432
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.4byte	$LASF69
	.byte	0x1
	.byte	0x57
	.4byte	0x432
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.4byte	$LASF70
	.byte	0x1
	.byte	0x59
	.4byte	0x438
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.ascii	"c1\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.ascii	"c2\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -31
	.uleb128 0x14
	.ascii	"c3\000"
	.byte	0x1
	.byte	0x62
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x448
	.uleb128 0xc
	.4byte	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	$LASF83
	.byte	0x1
	.byte	0x42
	.4byte	0x33
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48c
	.uleb128 0x12
	.4byte	$LASF71
	.byte	0x1
	.byte	0x42
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.4byte	$LASF72
	.byte	0x1
	.byte	0x44
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	$LASF73
	.byte	0x1
	.byte	0x45
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	$LASF74
	.byte	0x1
	.byte	0x1d
	.4byte	$LFB1
	.4byte	$LFE1-$LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x500
	.uleb128 0x12
	.4byte	$LASF57
	.byte	0x1
	.byte	0x1d
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.4byte	$LASF58
	.byte	0x1
	.byte	0x1d
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.4byte	$LASF60
	.byte	0x1
	.byte	0x1e
	.4byte	0x3b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	$LBB2
	.4byte	$LBE2-$LBB2
	.uleb128 0x10
	.4byte	$LASF75
	.byte	0x1
	.byte	0x20
	.4byte	0x3bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.4byte	$LASF76
	.byte	0x1
	.byte	0x21
	.4byte	0x247
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	$LASF64
	.byte	0x1
	.byte	0x23
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	$LASF84
	.byte	0x1
	.byte	0x11
	.4byte	$LFB0
	.4byte	$LFE0-$LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.4byte	$LASF77
	.byte	0x1
	.byte	0x11
	.4byte	0x432
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.4byte	$LASF69
	.byte	0x1
	.byte	0x11
	.4byte	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.ascii	"i1\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.ascii	"i2\000"
	.byte	0x1
	.byte	0x13
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.ascii	"i3\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.ascii	"i4\000"
	.byte	0x1
	.byte	0x15
	.4byte	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
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
$LASF78:
	.ascii	"GNU C99 6.3.0 20170516 -meb -mips32 -mfpxx -mllsc -mno-l"
	.ascii	"xc1-sxc1 -mabi=32 -g -O0 -std=c99\000"
$LASF8:
	.ascii	"__quad_t\000"
$LASF75:
	.ascii	"array_aEnco\000"
$LASF37:
	.ascii	"_offset\000"
$LASF45:
	.ascii	"_IO_FILE\000"
$LASF27:
	.ascii	"_IO_save_end\000"
$LASF5:
	.ascii	"short int\000"
$LASF14:
	.ascii	"size_t\000"
$LASF69:
	.ascii	"destino\000"
$LASF84:
	.ascii	"codificador64_3Bytes\000"
$LASF21:
	.ascii	"_IO_write_ptr\000"
$LASF16:
	.ascii	"_flags\000"
$LASF52:
	.ascii	"_IO_2_1_stdout_\000"
$LASF36:
	.ascii	"_lock\000"
$LASF50:
	.ascii	"__environ\000"
$LASF28:
	.ascii	"_markers\000"
$LASF18:
	.ascii	"_IO_read_end\000"
$LASF64:
	.ascii	"leidos\000"
$LASF62:
	.ascii	"array_decodificado\000"
$LASF77:
	.ascii	"letras_a_codificar\000"
$LASF76:
	.ascii	"array_encodificado\000"
$LASF41:
	.ascii	"__pad4\000"
$LASF56:
	.ascii	"stderr\000"
$LASF6:
	.ascii	"long long int\000"
$LASF13:
	.ascii	"char\000"
$LASF10:
	.ascii	"long int\000"
$LASF33:
	.ascii	"_cur_column\000"
$LASF53:
	.ascii	"_IO_2_1_stderr_\000"
$LASF63:
	.ascii	"tamanio_decodificado\000"
$LASF82:
	.ascii	"_IO_FILE_plus\000"
$LASF49:
	.ascii	"_pos\000"
$LASF74:
	.ascii	"codificar_archivo\000"
$LASF48:
	.ascii	"_sbuf\000"
$LASF32:
	.ascii	"_old_offset\000"
$LASF0:
	.ascii	"unsigned char\000"
$LASF68:
	.ascii	"letras_a_Decodificar\000"
$LASF4:
	.ascii	"signed char\000"
$LASF7:
	.ascii	"long long unsigned int\000"
$LASF51:
	.ascii	"_IO_2_1_stdin_\000"
$LASF2:
	.ascii	"unsigned int\000"
$LASF46:
	.ascii	"_IO_marker\000"
$LASF35:
	.ascii	"_shortbuf\000"
$LASF20:
	.ascii	"_IO_write_base\000"
$LASF44:
	.ascii	"_unused2\000"
$LASF17:
	.ascii	"_IO_read_ptr\000"
$LASF80:
	.ascii	"/home/OrganizacionCompu\000"
$LASF24:
	.ascii	"_IO_buf_end\000"
$LASF79:
	.ascii	"decode_encode.c\000"
$LASF72:
	.ascii	"valor\000"
$LASF83:
	.ascii	"obtener_posicion64\000"
$LASF70:
	.ascii	"vector_posiciones\000"
$LASF47:
	.ascii	"_next\000"
$LASF38:
	.ascii	"__pad1\000"
$LASF39:
	.ascii	"__pad2\000"
$LASF40:
	.ascii	"__pad3\000"
$LASF65:
	.ascii	"_Bool\000"
$LASF42:
	.ascii	"__pad5\000"
$LASF57:
	.ascii	"fentrada\000"
$LASF66:
	.ascii	"decodificar_archivo\000"
$LASF1:
	.ascii	"short unsigned int\000"
$LASF3:
	.ascii	"long unsigned int\000"
$LASF73:
	.ascii	"posicion\000"
$LASF22:
	.ascii	"_IO_write_end\000"
$LASF11:
	.ascii	"__off64_t\000"
$LASF67:
	.ascii	"decodificador64_4Bytes\000"
$LASF30:
	.ascii	"_fileno\000"
$LASF29:
	.ascii	"_chain\000"
$LASF9:
	.ascii	"__off_t\000"
$LASF61:
	.ascii	"array_aDeco\000"
$LASF26:
	.ascii	"_IO_backup_base\000"
$LASF54:
	.ascii	"stdin\000"
$LASF23:
	.ascii	"_IO_buf_base\000"
$LASF31:
	.ascii	"_flags2\000"
$LASF43:
	.ascii	"_mode\000"
$LASF19:
	.ascii	"_IO_read_base\000"
$LASF12:
	.ascii	"sizetype\000"
$LASF59:
	.ascii	"encoding_table\000"
$LASF34:
	.ascii	"_vtable_offset\000"
$LASF71:
	.ascii	"original\000"
$LASF25:
	.ascii	"_IO_save_base\000"
$LASF15:
	.ascii	"FILE\000"
$LASF55:
	.ascii	"stdout\000"
$LASF81:
	.ascii	"_IO_lock_t\000"
$LASF60:
	.ascii	"sigo_leyendo\000"
$LASF58:
	.ascii	"fsalida\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
