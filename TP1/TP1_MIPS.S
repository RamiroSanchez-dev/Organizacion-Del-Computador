
tp1:     file format elf32-tradbigmips


Disassembly of section .init:

00000934 <_init>:
 934:	3c1c0002 	lui	gp,0x2
 938:	279c974c 	addiu	gp,gp,-26804
 93c:	0399e021 	addu	gp,gp,t9
 940:	27bdffe0 	addiu	sp,sp,-32
 944:	afbc0010 	sw	gp,16(sp)
 948:	afbf001c 	sw	ra,28(sp)
 94c:	8f82809c 	lw	v0,-32612(gp)
 950:	10400004 	beqz	v0,964 <_init+0x30>
 954:	00000000 	nop
 958:	8f99809c 	lw	t9,-32612(gp)
 95c:	0320f809 	jalr	t9
 960:	00000000 	nop
 964:	8fbf001c 	lw	ra,28(sp)
 968:	03e00008 	jr	ra
 96c:	27bd0020 	addiu	sp,sp,32

Disassembly of section .text:

00000970 <__start>:
     970:	03e00025 	move	zero,ra
     974:	04110001 	bal	97c <__start+0xc>
     978:	00000000 	nop
     97c:	3c1c0002 	lui	gp,0x2
     980:	279c9704 	addiu	gp,gp,-26876
     984:	039fe021 	addu	gp,gp,ra
     988:	0000f825 	move	ra,zero
     98c:	8f848018 	lw	a0,-32744(gp)
     990:	8fa50000 	lw	a1,0(sp)
     994:	27a60004 	addiu	a2,sp,4
     998:	2401fff8 	li	at,-8
     99c:	03a1e824 	and	sp,sp,at
     9a0:	27bdffe0 	addiu	sp,sp,-32
     9a4:	8f87801c 	lw	a3,-32740(gp)
     9a8:	8f888020 	lw	t0,-32736(gp)
     9ac:	afa80010 	sw	t0,16(sp)
     9b0:	afa20014 	sw	v0,20(sp)
     9b4:	afbd0018 	sw	sp,24(sp)
     9b8:	8f998094 	lw	t9,-32620(gp)
     9bc:	0320f809 	jalr	t9
     9c0:	00000000 	nop

000009c4 <hlt>:
     9c4:	1000ffff 	b	9c4 <hlt>
     9c8:	00000000 	nop
     9cc:	00000000 	nop

000009d0 <deregister_tm_clones>:
     9d0:	3c1c0002 	lui	gp,0x2
     9d4:	279c96b0 	addiu	gp,gp,-26960
     9d8:	0399e021 	addu	gp,gp,t9
     9dc:	8f848028 	lw	a0,-32728(gp)
     9e0:	8f828024 	lw	v0,-32732(gp)
     9e4:	24842084 	addiu	a0,a0,8324
     9e8:	24420003 	addiu	v0,v0,3
     9ec:	00441023 	subu	v0,v0,a0
     9f0:	2c420007 	sltiu	v0,v0,7
     9f4:	14400005 	bnez	v0,a0c <deregister_tm_clones+0x3c>
     9f8:	8f9980bc 	lw	t9,-32580(gp)
     9fc:	13200003 	beqz	t9,a0c <deregister_tm_clones+0x3c>
     a00:	00000000 	nop
     a04:	03200008 	jr	t9
     a08:	00000000 	nop
     a0c:	03e00008 	jr	ra
     a10:	00000000 	nop

00000a14 <register_tm_clones>:
     a14:	3c1c0002 	lui	gp,0x2
     a18:	279c966c 	addiu	gp,gp,-27028
     a1c:	0399e021 	addu	gp,gp,t9
     a20:	8f848028 	lw	a0,-32728(gp)
     a24:	8f858024 	lw	a1,-32732(gp)
     a28:	24842084 	addiu	a0,a0,8324
     a2c:	00a42823 	subu	a1,a1,a0
     a30:	00052883 	sra	a1,a1,0x2
     a34:	000517c2 	srl	v0,a1,0x1f
     a38:	00452821 	addu	a1,v0,a1
     a3c:	00052843 	sra	a1,a1,0x1
     a40:	10a00005 	beqz	a1,a58 <register_tm_clones+0x44>
     a44:	8f998074 	lw	t9,-32652(gp)
     a48:	13200003 	beqz	t9,a58 <register_tm_clones+0x44>
     a4c:	00000000 	nop
     a50:	03200008 	jr	t9
     a54:	00000000 	nop
     a58:	03e00008 	jr	ra
     a5c:	00000000 	nop

00000a60 <__do_global_dtors_aux>:
     a60:	3c1c0002 	lui	gp,0x2
     a64:	279c9620 	addiu	gp,gp,-27104
     a68:	0399e021 	addu	gp,gp,t9
     a6c:	27bdffe0 	addiu	sp,sp,-32
     a70:	afb00018 	sw	s0,24(sp)
     a74:	8f908028 	lw	s0,-32728(gp)
     a78:	afbc0010 	sw	gp,16(sp)
     a7c:	afbf001c 	sw	ra,28(sp)
     a80:	92022150 	lbu	v0,8528(s0)
     a84:	1440000d 	bnez	v0,abc <__do_global_dtors_aux+0x5c>
     a88:	8f8280c0 	lw	v0,-32576(gp)
     a8c:	10400005 	beqz	v0,aa4 <__do_global_dtors_aux+0x44>
     a90:	8f82802c 	lw	v0,-32724(gp)
     a94:	8f9980c0 	lw	t9,-32576(gp)
     a98:	0320f809 	jalr	t9
     a9c:	8c440000 	lw	a0,0(v0)
     aa0:	8fbc0010 	lw	gp,16(sp)
     aa4:	8f998030 	lw	t9,-32720(gp)
     aa8:	273909d0 	addiu	t9,t9,2512
     aac:	0411ffc8 	bal	9d0 <deregister_tm_clones>
     ab0:	00000000 	nop
     ab4:	24020001 	li	v0,1
     ab8:	a2022150 	sb	v0,8528(s0)
     abc:	8fbf001c 	lw	ra,28(sp)
     ac0:	8fb00018 	lw	s0,24(sp)
     ac4:	03e00008 	jr	ra
     ac8:	27bd0020 	addiu	sp,sp,32

00000acc <frame_dummy>:
     acc:	3c1c0002 	lui	gp,0x2
     ad0:	279c95b4 	addiu	gp,gp,-27212
     ad4:	0399e021 	addu	gp,gp,t9
     ad8:	8f828028 	lw	v0,-32728(gp)
     adc:	27bdffe0 	addiu	sp,sp,-32
     ae0:	24442008 	addiu	a0,v0,8200
     ae4:	afbc0010 	sw	gp,16(sp)
     ae8:	afbf001c 	sw	ra,28(sp)
     aec:	8c820000 	lw	v0,0(a0)
     af0:	14400006 	bnez	v0,b0c <frame_dummy+0x40>
     af4:	8f99807c 	lw	t9,-32644(gp)
     af8:	8f998030 	lw	t9,-32720(gp)
     afc:	8fbf001c 	lw	ra,28(sp)
     b00:	27390a14 	addiu	t9,t9,2580
     b04:	1000ffc3 	b	a14 <register_tm_clones>
     b08:	27bd0020 	addiu	sp,sp,32
     b0c:	1320fffa 	beqz	t9,af8 <frame_dummy+0x2c>
     b10:	00000000 	nop
     b14:	0320f809 	jalr	t9
     b18:	00000000 	nop
     b1c:	1000fff6 	b	af8 <frame_dummy+0x2c>
     b20:	8fbc0010 	lw	gp,16(sp)
	...

00000b30 <mostrar_version>:
#define ERROR_LEC_INT 1
#define ERROR_LECTURA -1
const char VERSION[] = "1.0.1";


void mostrar_version(){
     b30:	3c1c0002 	lui	gp,0x2
     b34:	279c9550 	addiu	gp,gp,-27312
     b38:	0399e021 	addu	gp,gp,t9
     b3c:	27bdffe0 	addiu	sp,sp,-32
     b40:	afbf001c 	sw	ra,28(sp)
     b44:	afbe0018 	sw	s8,24(sp)
     b48:	03a0f025 	move	s8,sp
     b4c:	afbc0010 	sw	gp,16(sp)
	printf("Version %s\n", VERSION);
     b50:	8f858034 	lw	a1,-32716(gp)
     b54:	8f828030 	lw	v0,-32720(gp)
     b58:	24441a28 	addiu	a0,v0,6696
     b5c:	8f8280b8 	lw	v0,-32584(gp)
     b60:	0040c825 	move	t9,v0
     b64:	0320f809 	jalr	t9
     b68:	00000000 	nop
     b6c:	8fdc0010 	lw	gp,16(s8)
}
     b70:	00000000 	nop
     b74:	03c0e825 	move	sp,s8
     b78:	8fbf001c 	lw	ra,28(sp)
     b7c:	8fbe0018 	lw	s8,24(sp)
     b80:	27bd0020 	addiu	sp,sp,32
     b84:	03e00008 	jr	ra
     b88:	00000000 	nop

00000b8c <mostrar_ayudas>:

void mostrar_ayudas(){
     b8c:	3c1c0002 	lui	gp,0x2
     b90:	279c94f4 	addiu	gp,gp,-27404
     b94:	0399e021 	addu	gp,gp,t9
     b98:	27bdffe0 	addiu	sp,sp,-32
     b9c:	afbf001c 	sw	ra,28(sp)
     ba0:	afbe0018 	sw	s8,24(sp)
     ba4:	03a0f025 	move	s8,sp
     ba8:	afbc0010 	sw	gp,16(sp)
	printf("\n");
     bac:	2404000a 	li	a0,10
     bb0:	8f828088 	lw	v0,-32632(gp)
     bb4:	0040c825 	move	t9,v0
     bb8:	0320f809 	jalr	t9
     bbc:	00000000 	nop
     bc0:	8fdc0010 	lw	gp,16(s8)

	printf("-h, --help: Muestra la interfaz de ayudas.\n");
     bc4:	8f828030 	lw	v0,-32720(gp)
     bc8:	24441a34 	addiu	a0,v0,6708
     bcc:	8f8280a0 	lw	v0,-32608(gp)
     bd0:	0040c825 	move	t9,v0
     bd4:	0320f809 	jalr	t9
     bd8:	00000000 	nop
     bdc:	8fdc0010 	lw	gp,16(s8)
	printf("-v, --version: Indica la version del programa.\n");
     be0:	8f828030 	lw	v0,-32720(gp)
     be4:	24441a60 	addiu	a0,v0,6752
     be8:	8f8280a0 	lw	v0,-32608(gp)
     bec:	0040c825 	move	t9,v0
     bf0:	0320f809 	jalr	t9
     bf4:	00000000 	nop
     bf8:	8fdc0010 	lw	gp,16(s8)
	printf("-m, --multiple: Imprime solo el mcm.\n");
     bfc:	8f828030 	lw	v0,-32720(gp)
     c00:	24441a90 	addiu	a0,v0,6800
     c04:	8f8280a0 	lw	v0,-32608(gp)
     c08:	0040c825 	move	t9,v0
     c0c:	0320f809 	jalr	t9
     c10:	00000000 	nop
     c14:	8fdc0010 	lw	gp,16(s8)
	printf("-d, --divisor: Imprime solo el mcd.\n");
     c18:	8f828030 	lw	v0,-32720(gp)
     c1c:	24441ab8 	addiu	a0,v0,6840
     c20:	8f8280a0 	lw	v0,-32608(gp)
     c24:	0040c825 	move	t9,v0
     c28:	0320f809 	jalr	t9
     c2c:	00000000 	nop
     c30:	8fdc0010 	lw	gp,16(s8)
	printf("-o, --output: Indica la direccion donde esta el archivo a escribir.\n");
     c34:	8f828030 	lw	v0,-32720(gp)
     c38:	24441adc 	addiu	a0,v0,6876
     c3c:	8f8280a0 	lw	v0,-32608(gp)
     c40:	0040c825 	move	t9,v0
     c44:	0320f809 	jalr	t9
     c48:	00000000 	nop
     c4c:	8fdc0010 	lw	gp,16(s8)
	
	printf("\n");
     c50:	2404000a 	li	a0,10
     c54:	8f828088 	lw	v0,-32632(gp)
     c58:	0040c825 	move	t9,v0
     c5c:	0320f809 	jalr	t9
     c60:	00000000 	nop
     c64:	8fdc0010 	lw	gp,16(s8)

	printf("Modo de uso:\n");
     c68:	8f828030 	lw	v0,-32720(gp)
     c6c:	24441b20 	addiu	a0,v0,6944
     c70:	8f8280a0 	lw	v0,-32608(gp)
     c74:	0040c825 	move	t9,v0
     c78:	0320f809 	jalr	t9
     c7c:	00000000 	nop
     c80:	8fdc0010 	lw	gp,16(s8)
	printf("Los dos numeros a operar DEBEN ser introducidos inmediatamente despues de la direccion especificada en -o\n");
     c84:	8f828030 	lw	v0,-32720(gp)
     c88:	24441b30 	addiu	a0,v0,6960
     c8c:	8f8280a0 	lw	v0,-32608(gp)
     c90:	0040c825 	move	t9,v0
     c94:	0320f809 	jalr	t9
     c98:	00000000 	nop
     c9c:	8fdc0010 	lw	gp,16(s8)
	printf("Se usa '-' como argumento de -o para pedir la salida por stdout.\n");
     ca0:	8f828030 	lw	v0,-32720(gp)
     ca4:	24441b9c 	addiu	a0,v0,7068
     ca8:	8f8280a0 	lw	v0,-32608(gp)
     cac:	0040c825 	move	t9,v0
     cb0:	0320f809 	jalr	t9
     cb4:	00000000 	nop
     cb8:	8fdc0010 	lw	gp,16(s8)
	printf("El resto de los flags pueden ir en cualquier orden.\n");
     cbc:	8f828030 	lw	v0,-32720(gp)
     cc0:	24441be0 	addiu	a0,v0,7136
     cc4:	8f8280a0 	lw	v0,-32608(gp)
     cc8:	0040c825 	move	t9,v0
     ccc:	0320f809 	jalr	t9
     cd0:	00000000 	nop
     cd4:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
     cd8:	2404000a 	li	a0,10
     cdc:	8f828088 	lw	v0,-32632(gp)
     ce0:	0040c825 	move	t9,v0
     ce4:	0320f809 	jalr	t9
     ce8:	00000000 	nop
     cec:	8fdc0010 	lw	gp,16(s8)
	printf("Ejemplo:\n\t> ./tp1 -o - 256 192\n");
     cf0:	8f828030 	lw	v0,-32720(gp)
     cf4:	24441c14 	addiu	a0,v0,7188
     cf8:	8f8280a0 	lw	v0,-32608(gp)
     cfc:	0040c825 	move	t9,v0
     d00:	0320f809 	jalr	t9
     d04:	00000000 	nop
     d08:	8fdc0010 	lw	gp,16(s8)
	printf("\t64\n\t768\n");
     d0c:	8f828030 	lw	v0,-32720(gp)
     d10:	24441c34 	addiu	a0,v0,7220
     d14:	8f8280a0 	lw	v0,-32608(gp)
     d18:	0040c825 	move	t9,v0
     d1c:	0320f809 	jalr	t9
     d20:	00000000 	nop
     d24:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
     d28:	2404000a 	li	a0,10
     d2c:	8f828088 	lw	v0,-32632(gp)
     d30:	0040c825 	move	t9,v0
     d34:	0320f809 	jalr	t9
     d38:	00000000 	nop
     d3c:	8fdc0010 	lw	gp,16(s8)
	printf("Otro ejemplo:\n\t> ./tp1 -o a.out 256 192 -d\n");
     d40:	8f828030 	lw	v0,-32720(gp)
     d44:	24441c40 	addiu	a0,v0,7232
     d48:	8f8280a0 	lw	v0,-32608(gp)
     d4c:	0040c825 	move	t9,v0
     d50:	0320f809 	jalr	t9
     d54:	00000000 	nop
     d58:	8fdc0010 	lw	gp,16(s8)
	printf("\t> cat a.out\n");
     d5c:	8f828030 	lw	v0,-32720(gp)
     d60:	24441c6c 	addiu	a0,v0,7276
     d64:	8f8280a0 	lw	v0,-32608(gp)
     d68:	0040c825 	move	t9,v0
     d6c:	0320f809 	jalr	t9
     d70:	00000000 	nop
     d74:	8fdc0010 	lw	gp,16(s8)
	printf("\t64\n");
     d78:	8f828030 	lw	v0,-32720(gp)
     d7c:	24441c7c 	addiu	a0,v0,7292
     d80:	8f8280a0 	lw	v0,-32608(gp)
     d84:	0040c825 	move	t9,v0
     d88:	0320f809 	jalr	t9
     d8c:	00000000 	nop
     d90:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
     d94:	2404000a 	li	a0,10
     d98:	8f828088 	lw	v0,-32632(gp)
     d9c:	0040c825 	move	t9,v0
     da0:	0320f809 	jalr	t9
     da4:	00000000 	nop
     da8:	8fdc0010 	lw	gp,16(s8)

	printf("Al calcular el mcm, en caso de overflow se devuelve 0 y se escribe en stderr el error.\n");
     dac:	8f828030 	lw	v0,-32720(gp)
     db0:	24441c80 	addiu	a0,v0,7296
     db4:	8f8280a0 	lw	v0,-32608(gp)
     db8:	0040c825 	move	t9,v0
     dbc:	0320f809 	jalr	t9
     dc0:	00000000 	nop
     dc4:	8fdc0010 	lw	gp,16(s8)
}
     dc8:	00000000 	nop
     dcc:	03c0e825 	move	sp,s8
     dd0:	8fbf001c 	lw	ra,28(sp)
     dd4:	8fbe0018 	lw	s8,24(sp)
     dd8:	27bd0020 	addiu	sp,sp,32
     ddc:	03e00008 	jr	ra
     de0:	00000000 	nop

00000de4 <leer_uint>:

unsigned int leer_uint(char* string){
     de4:	3c1c0002 	lui	gp,0x2
     de8:	279c929c 	addiu	gp,gp,-28004
     dec:	0399e021 	addu	gp,gp,t9
     df0:	27bdffd8 	addiu	sp,sp,-40
     df4:	afbf0024 	sw	ra,36(sp)
     df8:	afbe0020 	sw	s8,32(sp)
     dfc:	03a0f025 	move	s8,sp
     e00:	afbc0010 	sw	gp,16(sp)
     e04:	afc40028 	sw	a0,40(s8)
	long resultado = strtol(string, NULL, 10);
     e08:	2406000a 	li	a2,10
     e0c:	00002825 	move	a1,zero
     e10:	8fc40028 	lw	a0,40(s8)
     e14:	8f82806c 	lw	v0,-32660(gp)
     e18:	0040c825 	move	t9,v0
     e1c:	0320f809 	jalr	t9
     e20:	00000000 	nop
     e24:	8fdc0010 	lw	gp,16(s8)
     e28:	afc20018 	sw	v0,24(s8)
	if(resultado > UINT_MAX || errno == ERANGE || resultado <= 1){
     e2c:	8f828084 	lw	v0,-32636(gp)
     e30:	0040c825 	move	t9,v0
     e34:	0320f809 	jalr	t9
     e38:	00000000 	nop
     e3c:	8fdc0010 	lw	gp,16(s8)
     e40:	8c430000 	lw	v1,0(v0)
     e44:	24020022 	li	v0,34
     e48:	10620005 	beq	v1,v0,e60 <leer_uint+0x7c>
     e4c:	00000000 	nop
     e50:	8fc20018 	lw	v0,24(s8)
     e54:	28420002 	slti	v0,v0,2
     e58:	10400004 	beqz	v0,e6c <leer_uint+0x88>
     e5c:	00000000 	nop
		return ERROR_LEC_INT;
     e60:	24020001 	li	v0,1
     e64:	10000002 	b	e70 <leer_uint+0x8c>
     e68:	00000000 	nop
	}
	return (unsigned int) resultado;
     e6c:	8fc20018 	lw	v0,24(s8)
}
     e70:	03c0e825 	move	sp,s8
     e74:	8fbf0024 	lw	ra,36(sp)
     e78:	8fbe0020 	lw	s8,32(sp)
     e7c:	27bd0028 	addiu	sp,sp,40
     e80:	03e00008 	jr	ra
     e84:	00000000 	nop

00000e88 <leer_entrada>:
/*
 * Lee la entrada y escribe los argumentos en las variables pasadas por parámetro.
 * Devuelve la cantidad de argumentos leidos.
 * En caso de un error devuelve (-1).
 */
int leer_entrada(int argc, char** argv, unsigned int *m, unsigned int* n, char nombre_archivo_salida[MAXIMO_ARCHIVO], bool* divisor, bool* multiple, bool* pidio_info, bool* pidio_ayuda, bool* escribio_numeros){
     e88:	3c1c0002 	lui	gp,0x2
     e8c:	279c91f8 	addiu	gp,gp,-28168
     e90:	0399e021 	addu	gp,gp,t9
     e94:	27bdffd0 	addiu	sp,sp,-48
     e98:	afbf002c 	sw	ra,44(sp)
     e9c:	afbe0028 	sw	s8,40(sp)
     ea0:	03a0f025 	move	s8,sp
     ea4:	afbc0018 	sw	gp,24(sp)
     ea8:	afc40030 	sw	a0,48(s8)
     eac:	afc50034 	sw	a1,52(s8)
     eb0:	afc60038 	sw	a2,56(s8)
     eb4:	afc7003c 	sw	a3,60(s8)
	
	if(argc == 1 ){
     eb8:	8fc30030 	lw	v1,48(s8)
     ebc:	24020001 	li	v0,1
     ec0:	14620010 	bne	v1,v0,f04 <leer_entrada+0x7c>
     ec4:	00000000 	nop
		
		fprintf(stderr,"Insuficiente información: Ingrese los argumentos. Consulta las ayudas con ./tp1 -h\n");
     ec8:	8f8280b0 	lw	v0,-32592(gp)
     ecc:	8c420000 	lw	v0,0(v0)
     ed0:	00403825 	move	a3,v0
     ed4:	24060054 	li	a2,84
     ed8:	24050001 	li	a1,1
     edc:	8f828030 	lw	v0,-32720(gp)
     ee0:	24441cd8 	addiu	a0,v0,7384
     ee4:	8f8280a8 	lw	v0,-32600(gp)
     ee8:	0040c825 	move	t9,v0
     eec:	0320f809 	jalr	t9
     ef0:	00000000 	nop
     ef4:	8fdc0018 	lw	gp,24(s8)
		return ERROR_LECTURA;
     ef8:	2402ffff 	li	v0,-1
     efc:	10000104 	b	1310 <leer_entrada+0x488>
     f00:	00000000 	nop
		{"multiple", no_argument, 0, 'm'},
		{"output",required_argument, 0, 'o'},
		{0,0,0,0}
	};

	int argumentos_leidos = 0;
     f04:	afc00020 	sw	zero,32(s8)
	
	while((opt = getopt_long(argc, argv, "o:mdvh",long_options,NULL)) != -1 ) {
     f08:	1000009b 	b	1178 <leer_entrada+0x2f0>
     f0c:	00000000 	nop
		argumentos_leidos++;
     f10:	8fc20020 	lw	v0,32(s8)
     f14:	24420001 	addiu	v0,v0,1
     f18:	afc20020 	sw	v0,32(s8)
		switch(opt){
     f1c:	8fc20024 	lw	v0,36(s8)
     f20:	2442ff9c 	addiu	v0,v0,-100
     f24:	2c430013 	sltiu	v1,v0,19
     f28:	10600093 	beqz	v1,1178 <leer_entrada+0x2f0>
     f2c:	00000000 	nop
     f30:	00021880 	sll	v1,v0,0x2
     f34:	8f828030 	lw	v0,-32720(gp)
     f38:	24421dc0 	addiu	v0,v0,7616
     f3c:	00621021 	addu	v0,v1,v0
     f40:	8c420000 	lw	v0,0(v0)
     f44:	005c1021 	addu	v0,v0,gp
     f48:	00400008 	jr	v0
     f4c:	00000000 	nop

			case 'o':
				strcpy(nombre_archivo_salida, optarg);
     f50:	8f828070 	lw	v0,-32656(gp)
     f54:	8c420000 	lw	v0,0(v0)
     f58:	00402825 	move	a1,v0
     f5c:	8fc40040 	lw	a0,64(s8)
     f60:	8f8280a4 	lw	v0,-32604(gp)
     f64:	0040c825 	move	t9,v0
     f68:	0320f809 	jalr	t9
     f6c:	00000000 	nop
     f70:	8fdc0018 	lw	gp,24(s8)
				if(optind > argc - 2){
     f74:	8fc20030 	lw	v0,48(s8)
     f78:	2443fffe 	addiu	v1,v0,-2
     f7c:	8f8280ac 	lw	v0,-32596(gp)
     f80:	8c420000 	lw	v0,0(v0)
     f84:	0062102a 	slt	v0,v1,v0
     f88:	10400010 	beqz	v0,fcc <leer_entrada+0x144>
     f8c:	00000000 	nop
					fprintf(stderr,"Error en los argumentos: Insuficiente información. Consulta las ayudas con ./tp1 -h\n");
     f90:	8f8280b0 	lw	v0,-32592(gp)
     f94:	8c420000 	lw	v0,0(v0)
     f98:	00403825 	move	a3,v0
     f9c:	24060055 	li	a2,85
     fa0:	24050001 	li	a1,1
     fa4:	8f828030 	lw	v0,-32720(gp)
     fa8:	24441d30 	addiu	a0,v0,7472
     fac:	8f8280a8 	lw	v0,-32600(gp)
     fb0:	0040c825 	move	t9,v0
     fb4:	0320f809 	jalr	t9
     fb8:	00000000 	nop
     fbc:	8fdc0018 	lw	gp,24(s8)
					return ERROR_LECTURA;
     fc0:	2402ffff 	li	v0,-1
     fc4:	100000d2 	b	1310 <leer_entrada+0x488>
     fc8:	00000000 	nop
				}

				*m = leer_uint(argv[optind]);
     fcc:	8f8280ac 	lw	v0,-32596(gp)
     fd0:	8c420000 	lw	v0,0(v0)
     fd4:	00021080 	sll	v0,v0,0x2
     fd8:	8fc30034 	lw	v1,52(s8)
     fdc:	00621021 	addu	v0,v1,v0
     fe0:	8c420000 	lw	v0,0(v0)
     fe4:	00402025 	move	a0,v0
     fe8:	8f828038 	lw	v0,-32712(gp)
     fec:	0040c825 	move	t9,v0
     ff0:	0411ff7c 	bal	de4 <leer_uint>
     ff4:	00000000 	nop
     ff8:	8fdc0018 	lw	gp,24(s8)
     ffc:	00401825 	move	v1,v0
    1000:	8fc20038 	lw	v0,56(s8)
    1004:	ac430000 	sw	v1,0(v0)
				if(*m == ERROR_LEC_INT){
    1008:	8fc20038 	lw	v0,56(s8)
    100c:	8c430000 	lw	v1,0(v0)
    1010:	24020001 	li	v0,1
    1014:	14620014 	bne	v1,v0,1068 <leer_entrada+0x1e0>
    1018:	00000000 	nop
					fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[optind]);
    101c:	8f8280b0 	lw	v0,-32592(gp)
    1020:	8c440000 	lw	a0,0(v0)
    1024:	8f8280ac 	lw	v0,-32596(gp)
    1028:	8c420000 	lw	v0,0(v0)
    102c:	00021080 	sll	v0,v0,0x2
    1030:	8fc30034 	lw	v1,52(s8)
    1034:	00621021 	addu	v0,v1,v0
    1038:	8c420000 	lw	v0,0(v0)
    103c:	00403025 	move	a2,v0
    1040:	8f828030 	lw	v0,-32720(gp)
    1044:	24451d88 	addiu	a1,v0,7560
    1048:	8f828090 	lw	v0,-32624(gp)
    104c:	0040c825 	move	t9,v0
    1050:	0320f809 	jalr	t9
    1054:	00000000 	nop
    1058:	8fdc0018 	lw	gp,24(s8)
					return ERROR_LECTURA;
    105c:	2402ffff 	li	v0,-1
    1060:	100000ab 	b	1310 <leer_entrada+0x488>
    1064:	00000000 	nop
				}

				*n = leer_uint(argv[optind + 1]);
    1068:	8f8280ac 	lw	v0,-32596(gp)
    106c:	8c420000 	lw	v0,0(v0)
    1070:	24420001 	addiu	v0,v0,1
    1074:	00021080 	sll	v0,v0,0x2
    1078:	8fc30034 	lw	v1,52(s8)
    107c:	00621021 	addu	v0,v1,v0
    1080:	8c420000 	lw	v0,0(v0)
    1084:	00402025 	move	a0,v0
    1088:	8f828038 	lw	v0,-32712(gp)
    108c:	0040c825 	move	t9,v0
    1090:	0411ff54 	bal	de4 <leer_uint>
    1094:	00000000 	nop
    1098:	8fdc0018 	lw	gp,24(s8)
    109c:	00401825 	move	v1,v0
    10a0:	8fc2003c 	lw	v0,60(s8)
    10a4:	ac430000 	sw	v1,0(v0)
				if(*n == ERROR_LEC_INT){
    10a8:	8fc2003c 	lw	v0,60(s8)
    10ac:	8c430000 	lw	v1,0(v0)
    10b0:	24020001 	li	v0,1
    10b4:	14620015 	bne	v1,v0,110c <leer_entrada+0x284>
    10b8:	00000000 	nop
					fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[optind + 1]);
    10bc:	8f8280b0 	lw	v0,-32592(gp)
    10c0:	8c440000 	lw	a0,0(v0)
    10c4:	8f8280ac 	lw	v0,-32596(gp)
    10c8:	8c420000 	lw	v0,0(v0)
    10cc:	24420001 	addiu	v0,v0,1
    10d0:	00021080 	sll	v0,v0,0x2
    10d4:	8fc30034 	lw	v1,52(s8)
    10d8:	00621021 	addu	v0,v1,v0
    10dc:	8c420000 	lw	v0,0(v0)
    10e0:	00403025 	move	a2,v0
    10e4:	8f828030 	lw	v0,-32720(gp)
    10e8:	24451d88 	addiu	a1,v0,7560
    10ec:	8f828090 	lw	v0,-32624(gp)
    10f0:	0040c825 	move	t9,v0
    10f4:	0320f809 	jalr	t9
    10f8:	00000000 	nop
    10fc:	8fdc0018 	lw	gp,24(s8)
					return ERROR_LECTURA;
    1100:	2402ffff 	li	v0,-1
    1104:	10000082 	b	1310 <leer_entrada+0x488>
    1108:	00000000 	nop
				}

				*escribio_numeros = true;
    110c:	8fc20054 	lw	v0,84(s8)
    1110:	24030001 	li	v1,1
    1114:	a0430000 	sb	v1,0(v0)
				argumentos_leidos += 3; 
    1118:	8fc20020 	lw	v0,32(s8)
    111c:	24420003 	addiu	v0,v0,3
    1120:	afc20020 	sw	v0,32(s8)
			break;
    1124:	10000014 	b	1178 <leer_entrada+0x2f0>
    1128:	00000000 	nop

			case 'm':
				*multiple = true;
    112c:	8fc20048 	lw	v0,72(s8)
    1130:	24030001 	li	v1,1
    1134:	a0430000 	sb	v1,0(v0)
			break;
    1138:	1000000f 	b	1178 <leer_entrada+0x2f0>
    113c:	00000000 	nop

			case 'd':
				*divisor = true;
    1140:	8fc20044 	lw	v0,68(s8)
    1144:	24030001 	li	v1,1
    1148:	a0430000 	sb	v1,0(v0)
			break;
    114c:	1000000a 	b	1178 <leer_entrada+0x2f0>
    1150:	00000000 	nop

			case 'h':
				*pidio_ayuda = true;
    1154:	8fc20050 	lw	v0,80(s8)
    1158:	24030001 	li	v1,1
    115c:	a0430000 	sb	v1,0(v0)
			break;
    1160:	10000005 	b	1178 <leer_entrada+0x2f0>
    1164:	00000000 	nop

			case 'v':
				*pidio_info = true;
    1168:	8fc2004c 	lw	v0,76(s8)
    116c:	24030001 	li	v1,1
    1170:	a0430000 	sb	v1,0(v0)
			break;
    1174:	00000000 	nop
	while((opt = getopt_long(argc, argv, "o:mdvh",long_options,NULL)) != -1 ) {
    1178:	afa00010 	sw	zero,16(sp)
    117c:	8f828028 	lw	v0,-32728(gp)
    1180:	24472020 	addiu	a3,v0,8224
    1184:	8f828030 	lw	v0,-32720(gp)
    1188:	24461db8 	addiu	a2,v0,7608
    118c:	8fc50034 	lw	a1,52(s8)
    1190:	8fc40030 	lw	a0,48(s8)
    1194:	8f828098 	lw	v0,-32616(gp)
    1198:	0040c825 	move	t9,v0
    119c:	0320f809 	jalr	t9
    11a0:	00000000 	nop
    11a4:	8fdc0018 	lw	gp,24(s8)
    11a8:	afc20024 	sw	v0,36(s8)
    11ac:	8fc30024 	lw	v1,36(s8)
    11b0:	2402ffff 	li	v0,-1
    11b4:	1462ff56 	bne	v1,v0,f10 <leer_entrada+0x88>
    11b8:	00000000 	nop
		}
	}
	
	if( (argc == 3) && (argumentos_leidos == 0) ){
    11bc:	8fc30030 	lw	v1,48(s8)
    11c0:	24020003 	li	v0,3
    11c4:	14620051 	bne	v1,v0,130c <leer_entrada+0x484>
    11c8:	00000000 	nop
    11cc:	8fc20020 	lw	v0,32(s8)
    11d0:	1440004e 	bnez	v0,130c <leer_entrada+0x484>
    11d4:	00000000 	nop
		*m = leer_uint(argv[1]);
    11d8:	8fc20034 	lw	v0,52(s8)
    11dc:	24420004 	addiu	v0,v0,4
    11e0:	8c420000 	lw	v0,0(v0)
    11e4:	00402025 	move	a0,v0
    11e8:	8f828038 	lw	v0,-32712(gp)
    11ec:	0040c825 	move	t9,v0
    11f0:	0411fefc 	bal	de4 <leer_uint>
    11f4:	00000000 	nop
    11f8:	8fdc0018 	lw	gp,24(s8)
    11fc:	00401825 	move	v1,v0
    1200:	8fc20038 	lw	v0,56(s8)
    1204:	ac430000 	sw	v1,0(v0)
		if(*m == ERROR_LEC_INT){
    1208:	8fc20038 	lw	v0,56(s8)
    120c:	8c430000 	lw	v1,0(v0)
    1210:	24020001 	li	v0,1
    1214:	14620012 	bne	v1,v0,1260 <leer_entrada+0x3d8>
    1218:	00000000 	nop
			fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[1]);
    121c:	8f8280b0 	lw	v0,-32592(gp)
    1220:	8c430000 	lw	v1,0(v0)
    1224:	8fc20034 	lw	v0,52(s8)
    1228:	24420004 	addiu	v0,v0,4
    122c:	8c420000 	lw	v0,0(v0)
    1230:	00403025 	move	a2,v0
    1234:	8f828030 	lw	v0,-32720(gp)
    1238:	24451d88 	addiu	a1,v0,7560
    123c:	00602025 	move	a0,v1
    1240:	8f828090 	lw	v0,-32624(gp)
    1244:	0040c825 	move	t9,v0
    1248:	0320f809 	jalr	t9
    124c:	00000000 	nop
    1250:	8fdc0018 	lw	gp,24(s8)
			return ERROR_LECTURA;
    1254:	2402ffff 	li	v0,-1
    1258:	1000002d 	b	1310 <leer_entrada+0x488>
    125c:	00000000 	nop
		}
		*n = leer_uint(argv[2]);
    1260:	8fc20034 	lw	v0,52(s8)
    1264:	24420008 	addiu	v0,v0,8
    1268:	8c420000 	lw	v0,0(v0)
    126c:	00402025 	move	a0,v0
    1270:	8f828038 	lw	v0,-32712(gp)
    1274:	0040c825 	move	t9,v0
    1278:	0411feda 	bal	de4 <leer_uint>
    127c:	00000000 	nop
    1280:	8fdc0018 	lw	gp,24(s8)
    1284:	00401825 	move	v1,v0
    1288:	8fc2003c 	lw	v0,60(s8)
    128c:	ac430000 	sw	v1,0(v0)
		if(*n == ERROR_LEC_INT){
    1290:	8fc2003c 	lw	v0,60(s8)
    1294:	8c430000 	lw	v1,0(v0)
    1298:	24020001 	li	v0,1
    129c:	14620012 	bne	v1,v0,12e8 <leer_entrada+0x460>
    12a0:	00000000 	nop
			fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[2]);
    12a4:	8f8280b0 	lw	v0,-32592(gp)
    12a8:	8c430000 	lw	v1,0(v0)
    12ac:	8fc20034 	lw	v0,52(s8)
    12b0:	24420008 	addiu	v0,v0,8
    12b4:	8c420000 	lw	v0,0(v0)
    12b8:	00403025 	move	a2,v0
    12bc:	8f828030 	lw	v0,-32720(gp)
    12c0:	24451d88 	addiu	a1,v0,7560
    12c4:	00602025 	move	a0,v1
    12c8:	8f828090 	lw	v0,-32624(gp)
    12cc:	0040c825 	move	t9,v0
    12d0:	0320f809 	jalr	t9
    12d4:	00000000 	nop
    12d8:	8fdc0018 	lw	gp,24(s8)
			return ERROR_LECTURA;
    12dc:	2402ffff 	li	v0,-1
    12e0:	1000000b 	b	1310 <leer_entrada+0x488>
    12e4:	00000000 	nop
		}
		*escribio_numeros = true;
    12e8:	8fc20054 	lw	v0,84(s8)
    12ec:	24030001 	li	v1,1
    12f0:	a0430000 	sb	v1,0(v0)
		argumentos_leidos=3; //Porque este es un caso excepcional
    12f4:	24020003 	li	v0,3
    12f8:	afc20020 	sw	v0,32(s8)
		strcpy(nombre_archivo_salida, "-");
    12fc:	8fc20040 	lw	v0,64(s8)
    1300:	2403002d 	li	v1,45
    1304:	a0430000 	sb	v1,0(v0)
    1308:	a0400001 	sb	zero,1(v0)
	}
	
	return argumentos_leidos;
    130c:	8fc20020 	lw	v0,32(s8)
}
    1310:	03c0e825 	move	sp,s8
    1314:	8fbf002c 	lw	ra,44(sp)
    1318:	8fbe0028 	lw	s8,40(sp)
    131c:	27bd0030 	addiu	sp,sp,48
    1320:	03e00008 	jr	ra
    1324:	00000000 	nop

00001328 <mostrar_common>:


void mostrar_common(bool multiple, bool divisor, unsigned int m, unsigned int n, FILE* fsalida){
    1328:	3c1c0002 	lui	gp,0x2
    132c:	279c8d58 	addiu	gp,gp,-29352
    1330:	0399e021 	addu	gp,gp,t9
    1334:	27bdffd8 	addiu	sp,sp,-40
    1338:	afbf0024 	sw	ra,36(sp)
    133c:	afbe0020 	sw	s8,32(sp)
    1340:	03a0f025 	move	s8,sp
    1344:	afbc0010 	sw	gp,16(sp)
    1348:	00801825 	move	v1,a0
    134c:	00a01025 	move	v0,a1
    1350:	afc60030 	sw	a2,48(s8)
    1354:	afc70034 	sw	a3,52(s8)
    1358:	a3c30028 	sb	v1,40(s8)
    135c:	a3c2002c 	sb	v0,44(s8)
	if(!multiple && !divisor){
    1360:	93c20028 	lbu	v0,40(s8)
    1364:	38420001 	xori	v0,v0,0x1
    1368:	304200ff 	andi	v0,v0,0xff
    136c:	1040000a 	beqz	v0,1398 <mostrar_common+0x70>
    1370:	00000000 	nop
    1374:	93c2002c 	lbu	v0,44(s8)
    1378:	38420001 	xori	v0,v0,0x1
    137c:	304200ff 	andi	v0,v0,0xff
    1380:	10400005 	beqz	v0,1398 <mostrar_common+0x70>
    1384:	00000000 	nop
		multiple = true;
    1388:	24020001 	li	v0,1
    138c:	a3c20028 	sb	v0,40(s8)
		divisor = true;
    1390:	24020001 	li	v0,1
    1394:	a3c2002c 	sb	v0,44(s8)
	}
	
	if(divisor){
    1398:	93c2002c 	lbu	v0,44(s8)
    139c:	10400012 	beqz	v0,13e8 <mostrar_common+0xc0>
    13a0:	00000000 	nop
		unsigned int res = mcd(m, n);
    13a4:	8fc50034 	lw	a1,52(s8)
    13a8:	8fc40030 	lw	a0,48(s8)
    13ac:	8f82803c 	lw	v0,-32708(gp)
    13b0:	0040c825 	move	t9,v0
    13b4:	041100e6 	bal	1750 <mcd>
    13b8:	00000000 	nop
    13bc:	8fdc0010 	lw	gp,16(s8)
    13c0:	afc20018 	sw	v0,24(s8)
		fprintf(fsalida,"%u\n", res);
    13c4:	8fc60018 	lw	a2,24(s8)
    13c8:	8f828030 	lw	v0,-32720(gp)
    13cc:	24451e0c 	addiu	a1,v0,7692
    13d0:	8fc40038 	lw	a0,56(s8)
    13d4:	8f828090 	lw	v0,-32624(gp)
    13d8:	0040c825 	move	t9,v0
    13dc:	0320f809 	jalr	t9
    13e0:	00000000 	nop
    13e4:	8fdc0010 	lw	gp,16(s8)
	}

	if(multiple){
    13e8:	93c20028 	lbu	v0,40(s8)
    13ec:	10400023 	beqz	v0,147c <mostrar_common+0x154>
    13f0:	00000000 	nop
		unsigned int res = mcm(m, n);
    13f4:	8fc50034 	lw	a1,52(s8)
    13f8:	8fc40030 	lw	a0,48(s8)
    13fc:	8f828040 	lw	v0,-32704(gp)
    1400:	0040c825 	move	t9,v0
    1404:	041100ee 	bal	17c0 <mcm>
    1408:	00000000 	nop
    140c:	8fdc0010 	lw	gp,16(s8)
    1410:	afc2001c 	sw	v0,28(s8)
		if(res == 0)
    1414:	8fc2001c 	lw	v0,28(s8)
    1418:	1440000f 	bnez	v0,1458 <mostrar_common+0x130>
    141c:	00000000 	nop
			fprintf(stderr, "Hubo overflow en la multiplicacion entre %u y %u\n",m,n);
    1420:	8f8280b0 	lw	v0,-32592(gp)
    1424:	8c430000 	lw	v1,0(v0)
    1428:	8fc70034 	lw	a3,52(s8)
    142c:	8fc60030 	lw	a2,48(s8)
    1430:	8f828030 	lw	v0,-32720(gp)
    1434:	24451e10 	addiu	a1,v0,7696
    1438:	00602025 	move	a0,v1
    143c:	8f828090 	lw	v0,-32624(gp)
    1440:	0040c825 	move	t9,v0
    1444:	0320f809 	jalr	t9
    1448:	00000000 	nop
    144c:	8fdc0010 	lw	gp,16(s8)
		else
			fprintf(fsalida,"%u\n", res);
	}
}
    1450:	1000000a 	b	147c <mostrar_common+0x154>
    1454:	00000000 	nop
			fprintf(fsalida,"%u\n", res);
    1458:	8fc6001c 	lw	a2,28(s8)
    145c:	8f828030 	lw	v0,-32720(gp)
    1460:	24451e0c 	addiu	a1,v0,7692
    1464:	8fc40038 	lw	a0,56(s8)
    1468:	8f828090 	lw	v0,-32624(gp)
    146c:	0040c825 	move	t9,v0
    1470:	0320f809 	jalr	t9
    1474:	00000000 	nop
    1478:	8fdc0010 	lw	gp,16(s8)
}
    147c:	00000000 	nop
    1480:	03c0e825 	move	sp,s8
    1484:	8fbf0024 	lw	ra,36(sp)
    1488:	8fbe0020 	lw	s8,32(sp)
    148c:	27bd0028 	addiu	sp,sp,40
    1490:	03e00008 	jr	ra
    1494:	00000000 	nop

00001498 <main>:

int main(int argc, char** argv){
    1498:	3c1c0002 	lui	gp,0x2
    149c:	279c8be8 	addiu	gp,gp,-29720
    14a0:	0399e021 	addu	gp,gp,t9
    14a4:	27bdff48 	addiu	sp,sp,-184
    14a8:	afbf00b4 	sw	ra,180(sp)
    14ac:	afbe00b0 	sw	s8,176(sp)
    14b0:	03a0f025 	move	s8,sp
    14b4:	afbc0028 	sw	gp,40(sp)
    14b8:	afc400b8 	sw	a0,184(s8)
    14bc:	afc500bc 	sw	a1,188(s8)
	

	bool divisor = false;
    14c0:	a3c00038 	sb	zero,56(s8)
	bool multiple = false;
    14c4:	a3c00039 	sb	zero,57(s8)
	bool pidio_info = false;
    14c8:	a3c0003a 	sb	zero,58(s8)
	bool pidio_ayuda = false;
    14cc:	a3c0003b 	sb	zero,59(s8)
	bool escribio_numeros = false;
    14d0:	a3c0003c 	sb	zero,60(s8)
	
	unsigned int m;
	unsigned int n;

	FILE *fsalida = stdout;
    14d4:	8f828080 	lw	v0,-32640(gp)
    14d8:	8c420000 	lw	v0,0(v0)
    14dc:	afc20030 	sw	v0,48(s8)
	char nombre_archivo_salida[MAXIMO_ARCHIVO] = "";
    14e0:	afc00048 	sw	zero,72(s8)
    14e4:	27c2004c 	addiu	v0,s8,76
    14e8:	24030060 	li	v1,96
    14ec:	00603025 	move	a2,v1
    14f0:	00002825 	move	a1,zero
    14f4:	00402025 	move	a0,v0
    14f8:	8f82808c 	lw	v0,-32628(gp)
    14fc:	0040c825 	move	t9,v0
    1500:	0320f809 	jalr	t9
    1504:	00000000 	nop
    1508:	8fdc0028 	lw	gp,40(s8)


	int cantidad_argumentos_leidos = leer_entrada(argc, argv, &m, &n, nombre_archivo_salida,
    150c:	27c40044 	addiu	a0,s8,68
    1510:	27c30040 	addiu	v1,s8,64
    1514:	27c2003c 	addiu	v0,s8,60
    1518:	afa20024 	sw	v0,36(sp)
    151c:	27c2003b 	addiu	v0,s8,59
    1520:	afa20020 	sw	v0,32(sp)
    1524:	27c2003a 	addiu	v0,s8,58
    1528:	afa2001c 	sw	v0,28(sp)
    152c:	27c20039 	addiu	v0,s8,57
    1530:	afa20018 	sw	v0,24(sp)
    1534:	27c20038 	addiu	v0,s8,56
    1538:	afa20014 	sw	v0,20(sp)
    153c:	27c20048 	addiu	v0,s8,72
    1540:	afa20010 	sw	v0,16(sp)
    1544:	00803825 	move	a3,a0
    1548:	00603025 	move	a2,v1
    154c:	8fc500bc 	lw	a1,188(s8)
    1550:	8fc400b8 	lw	a0,184(s8)
    1554:	8f828044 	lw	v0,-32700(gp)
    1558:	0040c825 	move	t9,v0
    155c:	0411fe4a 	bal	e88 <leer_entrada>
    1560:	00000000 	nop
    1564:	8fdc0028 	lw	gp,40(s8)
    1568:	afc20034 	sw	v0,52(s8)
										 &divisor, &multiple, &pidio_info, &pidio_ayuda,
										 &escribio_numeros);

	if(cantidad_argumentos_leidos == ERROR_LECTURA){
    156c:	8fc30034 	lw	v1,52(s8)
    1570:	2402ffff 	li	v0,-1
    1574:	14620004 	bne	v1,v0,1588 <main+0xf0>
    1578:	00000000 	nop
		return ERROR_LECTURA;
    157c:	2402ffff 	li	v0,-1
    1580:	1000006b 	b	1730 <main+0x298>
    1584:	00000000 	nop
	}

	if(pidio_ayuda){
    1588:	93c2003b 	lbu	v0,59(s8)
    158c:	10400009 	beqz	v0,15b4 <main+0x11c>
    1590:	00000000 	nop
		mostrar_ayudas();
    1594:	8f828048 	lw	v0,-32696(gp)
    1598:	0040c825 	move	t9,v0
    159c:	0411fd7b 	bal	b8c <mostrar_ayudas>
    15a0:	00000000 	nop
    15a4:	8fdc0028 	lw	gp,40(s8)
		return 0;
    15a8:	00001025 	move	v0,zero
    15ac:	10000060 	b	1730 <main+0x298>
    15b0:	00000000 	nop
	}

	if(pidio_info){
    15b4:	93c2003a 	lbu	v0,58(s8)
    15b8:	10400009 	beqz	v0,15e0 <main+0x148>
    15bc:	00000000 	nop
		mostrar_version();
    15c0:	8f82804c 	lw	v0,-32692(gp)
    15c4:	0040c825 	move	t9,v0
    15c8:	0411fd59 	bal	b30 <mostrar_version>
    15cc:	00000000 	nop
    15d0:	8fdc0028 	lw	gp,40(s8)
		return 0;
    15d4:	00001025 	move	v0,zero
    15d8:	10000055 	b	1730 <main+0x298>
    15dc:	00000000 	nop
	}

	if(!escribio_numeros || cantidad_argumentos_leidos < (argc -1)){
    15e0:	93c2003c 	lbu	v0,60(s8)
    15e4:	38420001 	xori	v0,v0,0x1
    15e8:	304200ff 	andi	v0,v0,0xff
    15ec:	14400007 	bnez	v0,160c <main+0x174>
    15f0:	00000000 	nop
    15f4:	8fc200b8 	lw	v0,184(s8)
    15f8:	2443ffff 	addiu	v1,v0,-1
    15fc:	8fc20034 	lw	v0,52(s8)
    1600:	0043102a 	slt	v0,v0,v1
    1604:	10400010 	beqz	v0,1648 <main+0x1b0>
    1608:	00000000 	nop
		fprintf(stderr,"Error en los argumentos ingresados. Consulta las ayudas con ./tp1 -h\n");
    160c:	8f8280b0 	lw	v0,-32592(gp)
    1610:	8c420000 	lw	v0,0(v0)
    1614:	00403825 	move	a3,v0
    1618:	24060045 	li	a2,69
    161c:	24050001 	li	a1,1
    1620:	8f828030 	lw	v0,-32720(gp)
    1624:	24441e44 	addiu	a0,v0,7748
    1628:	8f8280a8 	lw	v0,-32600(gp)
    162c:	0040c825 	move	t9,v0
    1630:	0320f809 	jalr	t9
    1634:	00000000 	nop
    1638:	8fdc0028 	lw	gp,40(s8)
		return ERROR_LECTURA;
    163c:	2402ffff 	li	v0,-1
    1640:	1000003b 	b	1730 <main+0x298>
    1644:	00000000 	nop
	}

	if(*nombre_archivo_salida != '-'){
    1648:	83c30048 	lb	v1,72(s8)
    164c:	2402002d 	li	v0,45
    1650:	1062001d 	beq	v1,v0,16c8 <main+0x230>
    1654:	00000000 	nop
		fsalida = fopen(nombre_archivo_salida, "w");
    1658:	27c30048 	addiu	v1,s8,72
    165c:	8f828030 	lw	v0,-32720(gp)
    1660:	24451e8c 	addiu	a1,v0,7820
    1664:	00602025 	move	a0,v1
    1668:	8f8280b4 	lw	v0,-32588(gp)
    166c:	0040c825 	move	t9,v0
    1670:	0320f809 	jalr	t9
    1674:	00000000 	nop
    1678:	8fdc0028 	lw	gp,40(s8)
    167c:	afc20030 	sw	v0,48(s8)
		if(!fsalida){
    1680:	8fc20030 	lw	v0,48(s8)
    1684:	14400010 	bnez	v0,16c8 <main+0x230>
    1688:	00000000 	nop
			fprintf(stderr,"No se logro abrir el archivo: (%s).\n", nombre_archivo_salida);
    168c:	8f8280b0 	lw	v0,-32592(gp)
    1690:	8c430000 	lw	v1,0(v0)
    1694:	27c20048 	addiu	v0,s8,72
    1698:	00403025 	move	a2,v0
    169c:	8f828030 	lw	v0,-32720(gp)
    16a0:	24451e90 	addiu	a1,v0,7824
    16a4:	00602025 	move	a0,v1
    16a8:	8f828090 	lw	v0,-32624(gp)
    16ac:	0040c825 	move	t9,v0
    16b0:	0320f809 	jalr	t9
    16b4:	00000000 	nop
    16b8:	8fdc0028 	lw	gp,40(s8)
			return ERROR_LECTURA;
    16bc:	2402ffff 	li	v0,-1
    16c0:	1000001b 	b	1730 <main+0x298>
    16c4:	00000000 	nop
		}
	}

	mostrar_common(multiple, divisor, m, n, fsalida);
    16c8:	93c30039 	lbu	v1,57(s8)
    16cc:	93c40038 	lbu	a0,56(s8)
    16d0:	8fc50040 	lw	a1,64(s8)
    16d4:	8fc60044 	lw	a2,68(s8)
    16d8:	8fc20030 	lw	v0,48(s8)
    16dc:	afa20010 	sw	v0,16(sp)
    16e0:	00c03825 	move	a3,a2
    16e4:	00a03025 	move	a2,a1
    16e8:	00802825 	move	a1,a0
    16ec:	00602025 	move	a0,v1
    16f0:	8f828050 	lw	v0,-32688(gp)
    16f4:	0040c825 	move	t9,v0
    16f8:	0411ff0b 	bal	1328 <mostrar_common>
    16fc:	00000000 	nop
    1700:	8fdc0028 	lw	gp,40(s8)
	
	if(*nombre_archivo_salida !='-')
    1704:	83c30048 	lb	v1,72(s8)
    1708:	2402002d 	li	v0,45
    170c:	10620007 	beq	v1,v0,172c <main+0x294>
    1710:	00000000 	nop
		fclose(fsalida);
    1714:	8fc40030 	lw	a0,48(s8)
    1718:	8f828078 	lw	v0,-32648(gp)
    171c:	0040c825 	move	t9,v0
    1720:	0320f809 	jalr	t9
    1724:	00000000 	nop
    1728:	8fdc0028 	lw	gp,40(s8)

	return 0;
    172c:	00001025 	move	v0,zero
}
    1730:	03c0e825 	move	sp,s8
    1734:	8fbf00b4 	lw	ra,180(sp)
    1738:	8fbe00b0 	lw	s8,176(sp)
    173c:	27bd00b8 	addiu	sp,sp,184
    1740:	03e00008 	jr	ra
    1744:	00000000 	nop
	...

00001750 <mcd>:
mcd(unsigned int m, unsigned int n)
*/
.globl mcd
.ent mcd
mcd:
	subu sp, sp, SS
    1750:	27bdfff8 	addiu	sp,sp,-8
	sw   fp, O_FP(sp)
    1754:	afbe0004 	sw	s8,4(sp)
 	sw   gp, O_GP(sp)
    1758:	afbc0000 	sw	gp,0(sp)
 	move fp, sp
    175c:	03a0f025 	move	s8,sp
	
	sw    a0, O_A0_CALLER(fp)
    1760:	afc40008 	sw	a0,8(s8)
	sw    a1, O_A1_CALLER(fp)
    1764:	afc5000c 	sw	a1,12(s8)


	bgtu a0,a1,while
    1768:	00a4082b 	sltu	at,a1,a0
    176c:	14200004 	bnez	at,1780 <while>
    1770:	00000000 	nop

	/*hacemos el swap */
	move t0,a0
    1774:	00804025 	move	t0,a0
	move a0,a1
    1778:	00a02025 	move	a0,a1
	move a1,t0
    177c:	01002825 	move	a1,t0

00001780 <while>:

while:
	beqz a1,return
    1780:	10a00009 	beqz	a1,17a8 <return>
    1784:	00000000 	nop
	divu a0,a1
    1788:	14a00002 	bnez	a1,1794 <while+0x14>
    178c:	0085001b 	divu	zero,a0,a1
    1790:	0007000d 	break	0x7
    1794:	00002012 	mflo	a0
	move a0,a1
    1798:	00a02025 	move	a0,a1
	mfhi a1
    179c:	00002810 	mfhi	a1
	b while	
    17a0:	1000fff7 	b	1780 <while>
    17a4:	00000000 	nop

000017a8 <return>:

return: 
	move v0,a0
    17a8:	00801025 	move	v0,a0

	/* stack unwinding */
	lw    fp, O_FP(sp)
    17ac:	8fbe0004 	lw	s8,4(sp)
	lw    gp, O_GP(sp)
    17b0:	8fbc0000 	lw	gp,0(sp)
	addiu sp, sp, SS
    17b4:	27bd0008 	addiu	sp,sp,8

	jr ra
    17b8:	03e00008 	jr	ra
    17bc:	00000000 	nop

000017c0 <mcm>:

.globl mcm
.ent   mcm

mcm:
	subu  sp, sp, SS_MCM
    17c0:	27bdffd8 	addiu	sp,sp,-40
	.cprestore O_GP
    17c4:	afbc0018 	sw	gp,24(sp)
	sw    fp, O_FP(sp)
    17c8:	afbe001c 	sw	s8,28(sp)
	sw    gp, O_GP(sp)
    17cc:	afbc0018 	sw	gp,24(sp)
	sw    ra, O_RA(sp)
    17d0:	afbf0020 	sw	ra,32(sp)
	move  fp, sp
    17d4:	03a0f025 	move	s8,sp

	sw    a0, O_A0_CALLER(fp)
    17d8:	afc40028 	sw	a0,40(s8)
	sw    a1, O_A1_CALLER(fp)
    17dc:	afc5002c 	sw	a1,44(s8)


	multu a0, a1				// acc64 = a0·a1
    17e0:	00850019 	multu	a0,a1
	mfhi  t0					// Traigo la parte alta de acc64.
    17e4:	00004010 	mfhi	t0
	bnez  t0, return0			// Si no es 0 hubo overflow: devuelvo 0.
    17e8:	15000012 	bnez	t0,1834 <return0>
    17ec:	00000000 	nop

	mflo  t0					// Traigo la parte baja de acc64 a t0.
    17f0:	00004012 	mflo	t0

	sw    t0, O_MUL(fp)
    17f4:	afc80010 	sw	t0,16(s8)
	bal   mcd					// v0 = mcd(a0, a1)
    17f8:	0411ffd5 	bal	1750 <mcd>
    17fc:	00000000 	nop

	ld    t0, O_MUL(fp)
    1800:	8fc80010 	lw	t0,16(s8)
    1804:	8fc90014 	lw	t1,20(s8)
	divu  t0, v0				// acc = a0·a1/mcd(a0, a1)
    1808:	14400002 	bnez	v0,1814 <mcm+0x54>
    180c:	0102001b 	divu	zero,t0,v0
    1810:	0007000d 	break	0x7
    1814:	00004012 	mflo	t0
	mflo  v0
    1818:	00001012 	mflo	v0
	/* Stack unwiding */
	lw    ra, O_RA(sp)
    181c:	8fbf0020 	lw	ra,32(sp)
	lw    fp, O_FP(sp)
    1820:	8fbe001c 	lw	s8,28(sp)
	lw    gp, O_GP(sp)
    1824:	8fbc0018 	lw	gp,24(sp)
	addiu sp, sp, SS_MCM
    1828:	27bd0028 	addiu	sp,sp,40

	jr ra
    182c:	03e00008 	jr	ra
    1830:	00000000 	nop

00001834 <return0>:
return0:
	move  v0, zero
    1834:	00001025 	move	v0,zero
	/* Stack unwiding */
	lw    ra, O_RA(sp)
    1838:	8fbf0020 	lw	ra,32(sp)
	lw    fp, O_FP(sp)
    183c:	8fbe001c 	lw	s8,28(sp)
	lw    gp, O_GP(sp)
    1840:	8fbc0018 	lw	gp,24(sp)

	addiu sp, sp, SS_MCM
    1844:	27bd0028 	addiu	sp,sp,40

	jr ra
    1848:	03e00008 	jr	ra
    184c:	00000000 	nop

00001850 <__libc_csu_init>:
    1850:	3c1c0002 	lui	gp,0x2
    1854:	279c8830 	addiu	gp,gp,-30672
    1858:	0399e021 	addu	gp,gp,t9
    185c:	27bdffc8 	addiu	sp,sp,-56
    1860:	8f998054 	lw	t9,-32684(gp)
    1864:	afbc0010 	sw	gp,16(sp)
    1868:	afb50030 	sw	s5,48(sp)
    186c:	00c0a825 	move	s5,a2
    1870:	afb4002c 	sw	s4,44(sp)
    1874:	00a0a025 	move	s4,a1
    1878:	afb30028 	sw	s3,40(sp)
    187c:	00809825 	move	s3,a0
    1880:	afb20024 	sw	s2,36(sp)
    1884:	afb0001c 	sw	s0,28(sp)
    1888:	afbf0034 	sw	ra,52(sp)
    188c:	0411fc29 	bal	934 <_init>
    1890:	afb10020 	sw	s1,32(sp)
    1894:	8fbc0010 	lw	gp,16(sp)
    1898:	8f908058 	lw	s0,-32680(gp)
    189c:	8f92805c 	lw	s2,-32676(gp)
    18a0:	02509023 	subu	s2,s2,s0
    18a4:	00129083 	sra	s2,s2,0x2
    18a8:	12400009 	beqz	s2,18d0 <__libc_csu_init+0x80>
    18ac:	00008825 	move	s1,zero
    18b0:	8e190000 	lw	t9,0(s0)
    18b4:	26310001 	addiu	s1,s1,1
    18b8:	02a03025 	move	a2,s5
    18bc:	02802825 	move	a1,s4
    18c0:	0320f809 	jalr	t9
    18c4:	02602025 	move	a0,s3
    18c8:	1651fff9 	bne	s2,s1,18b0 <__libc_csu_init+0x60>
    18cc:	26100004 	addiu	s0,s0,4
    18d0:	8fbf0034 	lw	ra,52(sp)
    18d4:	8fb50030 	lw	s5,48(sp)
    18d8:	8fb4002c 	lw	s4,44(sp)
    18dc:	8fb30028 	lw	s3,40(sp)
    18e0:	8fb20024 	lw	s2,36(sp)
    18e4:	8fb10020 	lw	s1,32(sp)
    18e8:	8fb0001c 	lw	s0,28(sp)
    18ec:	03e00008 	jr	ra
    18f0:	27bd0038 	addiu	sp,sp,56

000018f4 <__libc_csu_fini>:
    18f4:	03e00008 	jr	ra
    18f8:	00000000 	nop
    18fc:	00000000 	nop

Disassembly of section .MIPS.stubs:

00001900 <_MIPS_STUBS_>:
    1900:	8f998010 	lw	t9,-32752(gp)
    1904:	03e07825 	move	t7,ra
    1908:	0320f809 	jalr	t9
    190c:	24180024 	li	t8,36
    1910:	8f998010 	lw	t9,-32752(gp)
    1914:	03e07825 	move	t7,ra
    1918:	0320f809 	jalr	t9
    191c:	24180023 	li	t8,35
    1920:	8f998010 	lw	t9,-32752(gp)
    1924:	03e07825 	move	t7,ra
    1928:	0320f809 	jalr	t9
    192c:	24180020 	li	t8,32
    1930:	8f998010 	lw	t9,-32752(gp)
    1934:	03e07825 	move	t7,ra
    1938:	0320f809 	jalr	t9
    193c:	2418001f 	li	t8,31
    1940:	8f998010 	lw	t9,-32752(gp)
    1944:	03e07825 	move	t7,ra
    1948:	0320f809 	jalr	t9
    194c:	2418001e 	li	t8,30
    1950:	8f998010 	lw	t9,-32752(gp)
    1954:	03e07825 	move	t7,ra
    1958:	0320f809 	jalr	t9
    195c:	2418001c 	li	t8,28
    1960:	8f998010 	lw	t9,-32752(gp)
    1964:	03e07825 	move	t7,ra
    1968:	0320f809 	jalr	t9
    196c:	2418001b 	li	t8,27
    1970:	8f998010 	lw	t9,-32752(gp)
    1974:	03e07825 	move	t7,ra
    1978:	0320f809 	jalr	t9
    197c:	2418001a 	li	t8,26
    1980:	8f998010 	lw	t9,-32752(gp)
    1984:	03e07825 	move	t7,ra
    1988:	0320f809 	jalr	t9
    198c:	24180019 	li	t8,25
    1990:	8f998010 	lw	t9,-32752(gp)
    1994:	03e07825 	move	t7,ra
    1998:	0320f809 	jalr	t9
    199c:	24180018 	li	t8,24
    19a0:	8f998010 	lw	t9,-32752(gp)
    19a4:	03e07825 	move	t7,ra
    19a8:	0320f809 	jalr	t9
    19ac:	24180017 	li	t8,23
    19b0:	8f998010 	lw	t9,-32752(gp)
    19b4:	03e07825 	move	t7,ra
    19b8:	0320f809 	jalr	t9
    19bc:	24180014 	li	t8,20
    19c0:	8f998010 	lw	t9,-32752(gp)
    19c4:	03e07825 	move	t7,ra
    19c8:	0320f809 	jalr	t9
    19cc:	24180011 	li	t8,17
	...

Disassembly of section .fini:

000019e0 <_fini>:
    19e0:	3c1c0002 	lui	gp,0x2
    19e4:	279c86a0 	addiu	gp,gp,-31072
    19e8:	0399e021 	addu	gp,gp,t9
    19ec:	27bdffe0 	addiu	sp,sp,-32
    19f0:	afbc0010 	sw	gp,16(sp)
    19f4:	afbf001c 	sw	ra,28(sp)
    19f8:	8fbf001c 	lw	ra,28(sp)
    19fc:	03e00008 	jr	ra
    1a00:	27bd0020 	addiu	sp,sp,32
