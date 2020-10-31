
TP0:     file format elf32-tradbigmips
architecture: mips:isa32r2, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x00000b70


Disassembly of section .init:

00000b28 <_init>:
 b28:	3c1c0002 	lui	gp,0x2
 b2c:	279caa48 	addiu	gp,gp,-21944
 b30:	0399e021 	addu	gp,gp,t9
 b34:	27bdffe0 	addiu	sp,sp,-32
 b38:	afbc0010 	sw	gp,16(sp)
 b3c:	afbf001c 	sw	ra,28(sp)
 b40:	8f8280c4 	lw	v0,-32572(gp)
 b44:	10400004 	beqz	v0,b58 <_init+0x30>
 b48:	00000000 	nop
 b4c:	8f9980c4 	lw	t9,-32572(gp)
 b50:	0320f809 	jalr	t9
 b54:	00000000 	nop
 b58:	8fbf001c 	lw	ra,28(sp)
 b5c:	03e00008 	jr	ra
 b60:	27bd0020 	addiu	sp,sp,32

Disassembly of section .text:

00000b70 <__start>:
     b70:	03e00025 	move	zero,ra
     b74:	04110001 	bal	b7c <__start+0xc>
     b78:	00000000 	nop
     b7c:	3c1c0002 	lui	gp,0x2
     b80:	279ca9f4 	addiu	gp,gp,-22028
     b84:	039fe021 	addu	gp,gp,ra
     b88:	0000f825 	move	ra,zero
     b8c:	8f848018 	lw	a0,-32744(gp)
     b90:	8fa50000 	lw	a1,0(sp)
     b94:	27a60004 	addiu	a2,sp,4
     b98:	2401fff8 	li	at,-8
     b9c:	03a1e824 	and	sp,sp,at
     ba0:	27bdffe0 	addiu	sp,sp,-32
     ba4:	8f87801c 	lw	a3,-32740(gp)
     ba8:	8f888020 	lw	t0,-32736(gp)
     bac:	afa80010 	sw	t0,16(sp)
     bb0:	afa20014 	sw	v0,20(sp)
     bb4:	afbd0018 	sw	sp,24(sp)
     bb8:	8f9980b8 	lw	t9,-32584(gp)
     bbc:	0320f809 	jalr	t9
     bc0:	00000000 	nop

00000bc4 <hlt>:
     bc4:	1000ffff 	b	bc4 <hlt>
     bc8:	00000000 	nop
     bcc:	00000000 	nop

00000bd0 <deregister_tm_clones>:
     bd0:	3c1c0002 	lui	gp,0x2
     bd4:	279ca9a0 	addiu	gp,gp,-22112
     bd8:	0399e021 	addu	gp,gp,t9
     bdc:	8f848028 	lw	a0,-32728(gp)
     be0:	8f828024 	lw	v0,-32732(gp)
     be4:	24843574 	addiu	a0,a0,13684
     be8:	24420003 	addiu	v0,v0,3
     bec:	00441023 	subu	v0,v0,a0
     bf0:	2c420007 	sltiu	v0,v0,7
     bf4:	14400005 	bnez	v0,c0c <deregister_tm_clones+0x3c>
     bf8:	8f9980ec 	lw	t9,-32532(gp)
     bfc:	13200003 	beqz	t9,c0c <deregister_tm_clones+0x3c>
     c00:	00000000 	nop
     c04:	03200008 	jr	t9
     c08:	00000000 	nop
     c0c:	03e00008 	jr	ra
     c10:	00000000 	nop

00000c14 <register_tm_clones>:
     c14:	3c1c0002 	lui	gp,0x2
     c18:	279ca95c 	addiu	gp,gp,-22180
     c1c:	0399e021 	addu	gp,gp,t9
     c20:	8f848028 	lw	a0,-32728(gp)
     c24:	8f858024 	lw	a1,-32732(gp)
     c28:	24843574 	addiu	a0,a0,13684
     c2c:	00a42823 	subu	a1,a1,a0
     c30:	00052883 	sra	a1,a1,0x2
     c34:	000517c2 	srl	v0,a1,0x1f
     c38:	00452821 	addu	a1,v0,a1
     c3c:	00052843 	sra	a1,a1,0x1
     c40:	10a00005 	beqz	a1,c58 <register_tm_clones+0x44>
     c44:	8f99809c 	lw	t9,-32612(gp)
     c48:	13200003 	beqz	t9,c58 <register_tm_clones+0x44>
     c4c:	00000000 	nop
     c50:	03200008 	jr	t9
     c54:	00000000 	nop
     c58:	03e00008 	jr	ra
     c5c:	00000000 	nop

00000c60 <__do_global_dtors_aux>:
     c60:	3c1c0002 	lui	gp,0x2
     c64:	279ca910 	addiu	gp,gp,-22256
     c68:	0399e021 	addu	gp,gp,t9
     c6c:	27bdffe0 	addiu	sp,sp,-32
     c70:	afb00018 	sw	s0,24(sp)
     c74:	8f908028 	lw	s0,-32728(gp)
     c78:	afbc0010 	sw	gp,16(sp)
     c7c:	afbf001c 	sw	ra,28(sp)
     c80:	92023670 	lbu	v0,13936(s0)
     c84:	1440000d 	bnez	v0,cbc <__do_global_dtors_aux+0x5c>
     c88:	8f8280f0 	lw	v0,-32528(gp)
     c8c:	10400005 	beqz	v0,ca4 <__do_global_dtors_aux+0x44>
     c90:	8f82802c 	lw	v0,-32724(gp)
     c94:	8f9980f0 	lw	t9,-32528(gp)
     c98:	0320f809 	jalr	t9
     c9c:	8c440000 	lw	a0,0(v0)
     ca0:	8fbc0010 	lw	gp,16(sp)
     ca4:	8f998030 	lw	t9,-32720(gp)
     ca8:	27390bd0 	addiu	t9,t9,3024
     cac:	0411ffc8 	bal	bd0 <deregister_tm_clones>
     cb0:	00000000 	nop
     cb4:	24020001 	li	v0,1
     cb8:	a2023670 	sb	v0,13936(s0)
     cbc:	8fbf001c 	lw	ra,28(sp)
     cc0:	8fb00018 	lw	s0,24(sp)
     cc4:	03e00008 	jr	ra
     cc8:	27bd0020 	addiu	sp,sp,32

00000ccc <frame_dummy>:
     ccc:	3c1c0002 	lui	gp,0x2
     cd0:	279ca8a4 	addiu	gp,gp,-22364
     cd4:	0399e021 	addu	gp,gp,t9
     cd8:	8f828028 	lw	v0,-32728(gp)
     cdc:	27bdffe0 	addiu	sp,sp,-32
     ce0:	244434bc 	addiu	a0,v0,13500
     ce4:	afbc0010 	sw	gp,16(sp)
     ce8:	afbf001c 	sw	ra,28(sp)
     cec:	8c820000 	lw	v0,0(a0)
     cf0:	14400006 	bnez	v0,d0c <frame_dummy+0x40>
     cf4:	8f9980a8 	lw	t9,-32600(gp)
     cf8:	8f998030 	lw	t9,-32720(gp)
     cfc:	8fbf001c 	lw	ra,28(sp)
     d00:	27390c14 	addiu	t9,t9,3092
     d04:	1000ffc3 	b	c14 <register_tm_clones>
     d08:	27bd0020 	addiu	sp,sp,32
     d0c:	1320fffa 	beqz	t9,cf8 <frame_dummy+0x2c>
     d10:	00000000 	nop
     d14:	0320f809 	jalr	t9
     d18:	00000000 	nop
     d1c:	1000fff6 	b	cf8 <frame_dummy+0x2c>
     d20:	8fbc0010 	lw	gp,16(sp)
	...

00000d30 <obtener_tamanio_decode>:
#include "decode_encode.h"

#define MAXIMO_ARCHIVO 100

/* DECODE */
size_t obtener_tamanio_decode(size_t tamanio){
     d30:	27bdfff8 	addiu	sp,sp,-8
     d34:	afbe0004 	sw	s8,4(sp)
     d38:	03a0f025 	move	s8,sp
     d3c:	afc40008 	sw	a0,8(s8)
	return tamanio*3/4 + 1;
     d40:	8fc30008 	lw	v1,8(s8)
     d44:	00601025 	move	v0,v1
     d48:	00021040 	sll	v0,v0,0x1
     d4c:	00431021 	addu	v0,v0,v1
     d50:	00021082 	srl	v0,v0,0x2
     d54:	24420001 	addiu	v0,v0,1
}
     d58:	03c0e825 	move	sp,s8
     d5c:	8fbe0004 	lw	s8,4(sp)
     d60:	27bd0008 	addiu	sp,sp,8
     d64:	03e00008 	jr	ra
     d68:	00000000 	nop

00000d6c <decodificar_archivo_archivo>:

void decodificar_archivo_archivo(char nombre_fentrada[MAXIMO_ARCHIVO], char nombre_fsalida[MAXIMO_ARCHIVO]){
     d6c:	3c1c0002 	lui	gp,0x2
     d70:	279ca804 	addiu	gp,gp,-22524
     d74:	0399e021 	addu	gp,gp,t9
     d78:	27bdffc8 	addiu	sp,sp,-56
     d7c:	afbf0034 	sw	ra,52(sp)
     d80:	afbe0030 	sw	s8,48(sp)
     d84:	03a0f025 	move	s8,sp
     d88:	afbc0010 	sw	gp,16(sp)
     d8c:	afc40038 	sw	a0,56(s8)
     d90:	afc5003c 	sw	a1,60(s8)
	FILE* fentrada = fopen(nombre_fentrada, "r");
     d94:	8f828030 	lw	v0,-32720(gp)
     d98:	24453080 	addiu	a1,v0,12416
     d9c:	8fc40038 	lw	a0,56(s8)
     da0:	8f8280e4 	lw	v0,-32540(gp)
     da4:	0040c825 	move	t9,v0
     da8:	0320f809 	jalr	t9
     dac:	00000000 	nop
     db0:	8fdc0010 	lw	gp,16(s8)
     db4:	afc20018 	sw	v0,24(s8)
	if(!fentrada){
     db8:	8fc20018 	lw	v0,24(s8)
     dbc:	1440000b 	bnez	v0,dec <decodificar_archivo_archivo+0x80>
     dc0:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fentrada);
     dc4:	8fc50038 	lw	a1,56(s8)
     dc8:	8f828030 	lw	v0,-32720(gp)
     dcc:	24443084 	addiu	a0,v0,12420
     dd0:	8f8280e8 	lw	v0,-32536(gp)
     dd4:	0040c825 	move	t9,v0
     dd8:	0320f809 	jalr	t9
     ddc:	00000000 	nop
     de0:	8fdc0010 	lw	gp,16(s8)
		return;
     de4:	1000008e 	b	1020 <decodificar_archivo_archivo+0x2b4>
     de8:	00000000 	nop
	}
	FILE* fsalida = fopen(nombre_fsalida, "w");
     dec:	8f828030 	lw	v0,-32720(gp)
     df0:	244530f4 	addiu	a1,v0,12532
     df4:	8fc4003c 	lw	a0,60(s8)
     df8:	8f8280e4 	lw	v0,-32540(gp)
     dfc:	0040c825 	move	t9,v0
     e00:	0320f809 	jalr	t9
     e04:	00000000 	nop
     e08:	8fdc0010 	lw	gp,16(s8)
     e0c:	afc2001c 	sw	v0,28(s8)
	if(!fsalida){
     e10:	8fc2001c 	lw	v0,28(s8)
     e14:	14400011 	bnez	v0,e5c <decodificar_archivo_archivo+0xf0>
     e18:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fsalida);
     e1c:	8fc5003c 	lw	a1,60(s8)
     e20:	8f828030 	lw	v0,-32720(gp)
     e24:	24443084 	addiu	a0,v0,12420
     e28:	8f8280e8 	lw	v0,-32536(gp)
     e2c:	0040c825 	move	t9,v0
     e30:	0320f809 	jalr	t9
     e34:	00000000 	nop
     e38:	8fdc0010 	lw	gp,16(s8)
		fclose(fentrada);
     e3c:	8fc40018 	lw	a0,24(s8)
     e40:	8f8280a4 	lw	v0,-32604(gp)
     e44:	0040c825 	move	t9,v0
     e48:	0320f809 	jalr	t9
     e4c:	00000000 	nop
     e50:	8fdc0010 	lw	gp,16(s8)
		return;
     e54:	10000072 	b	1020 <decodificar_archivo_archivo+0x2b4>
     e58:	00000000 	nop
	}

	fseek(fentrada, 0, SEEK_END); 
     e5c:	24060002 	li	a2,2
     e60:	00002825 	move	a1,zero
     e64:	8fc40018 	lw	a0,24(s8)
     e68:	8f8280dc 	lw	v0,-32548(gp)
     e6c:	0040c825 	move	t9,v0
     e70:	0320f809 	jalr	t9
     e74:	00000000 	nop
     e78:	8fdc0010 	lw	gp,16(s8)
	size_t size = (size_t) ftell(fentrada);
     e7c:	8fc40018 	lw	a0,24(s8)
     e80:	8f8280b4 	lw	v0,-32588(gp)
     e84:	0040c825 	move	t9,v0
     e88:	0320f809 	jalr	t9
     e8c:	00000000 	nop
     e90:	8fdc0010 	lw	gp,16(s8)
     e94:	afc20020 	sw	v0,32(s8)
	fseek(fentrada, 0, SEEK_SET); 
     e98:	00003025 	move	a2,zero
     e9c:	00002825 	move	a1,zero
     ea0:	8fc40018 	lw	a0,24(s8)
     ea4:	8f8280dc 	lw	v0,-32548(gp)
     ea8:	0040c825 	move	t9,v0
     eac:	0320f809 	jalr	t9
     eb0:	00000000 	nop
     eb4:	8fdc0010 	lw	gp,16(s8)

	char* entrada = calloc(size + 1, sizeof(char));
     eb8:	8fc20020 	lw	v0,32(s8)
     ebc:	24420001 	addiu	v0,v0,1
     ec0:	24050001 	li	a1,1
     ec4:	00402025 	move	a0,v0
     ec8:	8f828094 	lw	v0,-32620(gp)
     ecc:	0040c825 	move	t9,v0
     ed0:	0320f809 	jalr	t9
     ed4:	00000000 	nop
     ed8:	8fdc0010 	lw	gp,16(s8)
     edc:	afc20024 	sw	v0,36(s8)
	if(!entrada){
     ee0:	8fc20024 	lw	v0,36(s8)
     ee4:	1440000f 	bnez	v0,f24 <decodificar_archivo_archivo+0x1b8>
     ee8:	00000000 	nop
		fclose(fentrada);
     eec:	8fc40018 	lw	a0,24(s8)
     ef0:	8f8280a4 	lw	v0,-32604(gp)
     ef4:	0040c825 	move	t9,v0
     ef8:	0320f809 	jalr	t9
     efc:	00000000 	nop
     f00:	8fdc0010 	lw	gp,16(s8)
		fclose(fsalida);
     f04:	8fc4001c 	lw	a0,28(s8)
     f08:	8f8280a4 	lw	v0,-32604(gp)
     f0c:	0040c825 	move	t9,v0
     f10:	0320f809 	jalr	t9
     f14:	00000000 	nop
     f18:	8fdc0010 	lw	gp,16(s8)
		return;
     f1c:	10000040 	b	1020 <decodificar_archivo_archivo+0x2b4>
     f20:	00000000 	nop
	}

	fread(entrada, 1, size, fentrada);
     f24:	8fc70018 	lw	a3,24(s8)
     f28:	8fc60020 	lw	a2,32(s8)
     f2c:	24050001 	li	a1,1
     f30:	8fc40024 	lw	a0,36(s8)
     f34:	8f8280d0 	lw	v0,-32560(gp)
     f38:	0040c825 	move	t9,v0
     f3c:	0320f809 	jalr	t9
     f40:	00000000 	nop
     f44:	8fdc0010 	lw	gp,16(s8)

	char* salida = calloc(obtener_tamanio_decode(size), sizeof(char));
     f48:	8fc40020 	lw	a0,32(s8)
     f4c:	8f828034 	lw	v0,-32716(gp)
     f50:	0040c825 	move	t9,v0
     f54:	0411ff76 	bal	d30 <obtener_tamanio_decode>
     f58:	00000000 	nop
     f5c:	8fdc0010 	lw	gp,16(s8)
     f60:	24050001 	li	a1,1
     f64:	00402025 	move	a0,v0
     f68:	8f828094 	lw	v0,-32620(gp)
     f6c:	0040c825 	move	t9,v0
     f70:	0320f809 	jalr	t9
     f74:	00000000 	nop
     f78:	8fdc0010 	lw	gp,16(s8)
     f7c:	afc20028 	sw	v0,40(s8)

	decodificador64((unsigned char*)entrada, salida);
     f80:	8fc50028 	lw	a1,40(s8)
     f84:	8fc40024 	lw	a0,36(s8)
     f88:	8f828038 	lw	v0,-32712(gp)
     f8c:	0040c825 	move	t9,v0
     f90:	04110735 	bal	2c68 <decodificador64>
     f94:	00000000 	nop
     f98:	8fdc0010 	lw	gp,16(s8)
	
	fwrite(salida, 1, obtener_tamanio_decode(size), fsalida);
     f9c:	8fc40020 	lw	a0,32(s8)
     fa0:	8f828034 	lw	v0,-32716(gp)
     fa4:	0040c825 	move	t9,v0
     fa8:	0411ff61 	bal	d30 <obtener_tamanio_decode>
     fac:	00000000 	nop
     fb0:	8fdc0010 	lw	gp,16(s8)
     fb4:	8fc7001c 	lw	a3,28(s8)
     fb8:	00403025 	move	a2,v0
     fbc:	24050001 	li	a1,1
     fc0:	8fc40028 	lw	a0,40(s8)
     fc4:	8f8280d8 	lw	v0,-32552(gp)
     fc8:	0040c825 	move	t9,v0
     fcc:	0320f809 	jalr	t9
     fd0:	00000000 	nop
     fd4:	8fdc0010 	lw	gp,16(s8)

	fclose(fentrada);
     fd8:	8fc40018 	lw	a0,24(s8)
     fdc:	8f8280a4 	lw	v0,-32604(gp)
     fe0:	0040c825 	move	t9,v0
     fe4:	0320f809 	jalr	t9
     fe8:	00000000 	nop
     fec:	8fdc0010 	lw	gp,16(s8)
	fclose(fsalida);
     ff0:	8fc4001c 	lw	a0,28(s8)
     ff4:	8f8280a4 	lw	v0,-32604(gp)
     ff8:	0040c825 	move	t9,v0
     ffc:	0320f809 	jalr	t9
    1000:	00000000 	nop
    1004:	8fdc0010 	lw	gp,16(s8)
	free(entrada);
    1008:	8fc40024 	lw	a0,36(s8)
    100c:	8f8280e0 	lw	v0,-32544(gp)
    1010:	0040c825 	move	t9,v0
    1014:	0320f809 	jalr	t9
    1018:	00000000 	nop
    101c:	8fdc0010 	lw	gp,16(s8)
}
    1020:	03c0e825 	move	sp,s8
    1024:	8fbf0034 	lw	ra,52(sp)
    1028:	8fbe0030 	lw	s8,48(sp)
    102c:	27bd0038 	addiu	sp,sp,56
    1030:	03e00008 	jr	ra
    1034:	00000000 	nop

00001038 <decodificar_archivo_stdout>:

void decodificar_archivo_stdout(char nombre_fentrada[MAXIMO_ARCHIVO]){
    1038:	3c1c0002 	lui	gp,0x2
    103c:	279ca538 	addiu	gp,gp,-23240
    1040:	0399e021 	addu	gp,gp,t9
    1044:	27bdffd0 	addiu	sp,sp,-48
    1048:	afbf002c 	sw	ra,44(sp)
    104c:	afbe0028 	sw	s8,40(sp)
    1050:	03a0f025 	move	s8,sp
    1054:	afbc0010 	sw	gp,16(sp)
    1058:	afc40030 	sw	a0,48(s8)
	FILE* fentrada = fopen(nombre_fentrada, "r");
    105c:	8f828030 	lw	v0,-32720(gp)
    1060:	24453080 	addiu	a1,v0,12416
    1064:	8fc40030 	lw	a0,48(s8)
    1068:	8f8280e4 	lw	v0,-32540(gp)
    106c:	0040c825 	move	t9,v0
    1070:	0320f809 	jalr	t9
    1074:	00000000 	nop
    1078:	8fdc0010 	lw	gp,16(s8)
    107c:	afc20018 	sw	v0,24(s8)
	if(!fentrada){
    1080:	8fc20018 	lw	v0,24(s8)
    1084:	1440000b 	bnez	v0,10b4 <decodificar_archivo_stdout+0x7c>
    1088:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fentrada);
    108c:	8fc50030 	lw	a1,48(s8)
    1090:	8f828030 	lw	v0,-32720(gp)
    1094:	24443084 	addiu	a0,v0,12420
    1098:	8f8280e8 	lw	v0,-32536(gp)
    109c:	0040c825 	move	t9,v0
    10a0:	0320f809 	jalr	t9
    10a4:	00000000 	nop
    10a8:	8fdc0010 	lw	gp,16(s8)
		return;
    10ac:	1000005f 	b	122c <decodificar_archivo_stdout+0x1f4>
    10b0:	00000000 	nop
	}
	fseek(fentrada, 0, SEEK_END);
    10b4:	24060002 	li	a2,2
    10b8:	00002825 	move	a1,zero
    10bc:	8fc40018 	lw	a0,24(s8)
    10c0:	8f8280dc 	lw	v0,-32548(gp)
    10c4:	0040c825 	move	t9,v0
    10c8:	0320f809 	jalr	t9
    10cc:	00000000 	nop
    10d0:	8fdc0010 	lw	gp,16(s8)
	size_t size = (size_t) ftell(fentrada);
    10d4:	8fc40018 	lw	a0,24(s8)
    10d8:	8f8280b4 	lw	v0,-32588(gp)
    10dc:	0040c825 	move	t9,v0
    10e0:	0320f809 	jalr	t9
    10e4:	00000000 	nop
    10e8:	8fdc0010 	lw	gp,16(s8)
    10ec:	afc2001c 	sw	v0,28(s8)
	fseek(fentrada, 0, SEEK_SET);
    10f0:	00003025 	move	a2,zero
    10f4:	00002825 	move	a1,zero
    10f8:	8fc40018 	lw	a0,24(s8)
    10fc:	8f8280dc 	lw	v0,-32548(gp)
    1100:	0040c825 	move	t9,v0
    1104:	0320f809 	jalr	t9
    1108:	00000000 	nop
    110c:	8fdc0010 	lw	gp,16(s8)

	char* entrada = calloc(size + 1, sizeof(char));
    1110:	8fc2001c 	lw	v0,28(s8)
    1114:	24420001 	addiu	v0,v0,1
    1118:	24050001 	li	a1,1
    111c:	00402025 	move	a0,v0
    1120:	8f828094 	lw	v0,-32620(gp)
    1124:	0040c825 	move	t9,v0
    1128:	0320f809 	jalr	t9
    112c:	00000000 	nop
    1130:	8fdc0010 	lw	gp,16(s8)
    1134:	afc20020 	sw	v0,32(s8)
	if(!entrada){
    1138:	8fc20020 	lw	v0,32(s8)
    113c:	14400009 	bnez	v0,1164 <decodificar_archivo_stdout+0x12c>
    1140:	00000000 	nop
		fclose(fentrada);
    1144:	8fc40018 	lw	a0,24(s8)
    1148:	8f8280a4 	lw	v0,-32604(gp)
    114c:	0040c825 	move	t9,v0
    1150:	0320f809 	jalr	t9
    1154:	00000000 	nop
    1158:	8fdc0010 	lw	gp,16(s8)
		return;
    115c:	10000033 	b	122c <decodificar_archivo_stdout+0x1f4>
    1160:	00000000 	nop
	}

	fread(entrada, 1, size, fentrada);
    1164:	8fc70018 	lw	a3,24(s8)
    1168:	8fc6001c 	lw	a2,28(s8)
    116c:	24050001 	li	a1,1
    1170:	8fc40020 	lw	a0,32(s8)
    1174:	8f8280d0 	lw	v0,-32560(gp)
    1178:	0040c825 	move	t9,v0
    117c:	0320f809 	jalr	t9
    1180:	00000000 	nop
    1184:	8fdc0010 	lw	gp,16(s8)

	char* salida = calloc(obtener_tamanio_decode(size), sizeof(char));
    1188:	8fc4001c 	lw	a0,28(s8)
    118c:	8f828034 	lw	v0,-32716(gp)
    1190:	0040c825 	move	t9,v0
    1194:	0411fee6 	bal	d30 <obtener_tamanio_decode>
    1198:	00000000 	nop
    119c:	8fdc0010 	lw	gp,16(s8)
    11a0:	24050001 	li	a1,1
    11a4:	00402025 	move	a0,v0
    11a8:	8f828094 	lw	v0,-32620(gp)
    11ac:	0040c825 	move	t9,v0
    11b0:	0320f809 	jalr	t9
    11b4:	00000000 	nop
    11b8:	8fdc0010 	lw	gp,16(s8)
    11bc:	afc20024 	sw	v0,36(s8)

	decodificador64((unsigned char*)entrada, salida);
    11c0:	8fc50024 	lw	a1,36(s8)
    11c4:	8fc40020 	lw	a0,32(s8)
    11c8:	8f828038 	lw	v0,-32712(gp)
    11cc:	0040c825 	move	t9,v0
    11d0:	041106a5 	bal	2c68 <decodificador64>
    11d4:	00000000 	nop
    11d8:	8fdc0010 	lw	gp,16(s8)

	printf("%s",salida);
    11dc:	8fc50024 	lw	a1,36(s8)
    11e0:	8f828030 	lw	v0,-32720(gp)
    11e4:	244430f8 	addiu	a0,v0,12536
    11e8:	8f8280e8 	lw	v0,-32536(gp)
    11ec:	0040c825 	move	t9,v0
    11f0:	0320f809 	jalr	t9
    11f4:	00000000 	nop
    11f8:	8fdc0010 	lw	gp,16(s8)

	fclose(fentrada);
    11fc:	8fc40018 	lw	a0,24(s8)
    1200:	8f8280a4 	lw	v0,-32604(gp)
    1204:	0040c825 	move	t9,v0
    1208:	0320f809 	jalr	t9
    120c:	00000000 	nop
    1210:	8fdc0010 	lw	gp,16(s8)
	free(entrada);
    1214:	8fc40020 	lw	a0,32(s8)
    1218:	8f8280e0 	lw	v0,-32544(gp)
    121c:	0040c825 	move	t9,v0
    1220:	0320f809 	jalr	t9
    1224:	00000000 	nop
    1228:	8fdc0010 	lw	gp,16(s8)
}
    122c:	03c0e825 	move	sp,s8
    1230:	8fbf002c 	lw	ra,44(sp)
    1234:	8fbe0028 	lw	s8,40(sp)
    1238:	27bd0030 	addiu	sp,sp,48
    123c:	03e00008 	jr	ra
    1240:	00000000 	nop

00001244 <decodificar_stdin_archivo>:

void decodificar_stdin_archivo(char nombre_fsalida[MAXIMO_ARCHIVO]){
    1244:	3c1c0002 	lui	gp,0x2
    1248:	279ca32c 	addiu	gp,gp,-23764
    124c:	0399e021 	addu	gp,gp,t9
    1250:	27bdffc0 	addiu	sp,sp,-64
    1254:	afbf003c 	sw	ra,60(sp)
    1258:	afbe0038 	sw	s8,56(sp)
    125c:	03a0f025 	move	s8,sp
    1260:	afbc0018 	sw	gp,24(sp)
    1264:	afc40040 	sw	a0,64(s8)
	FILE* fsalida = fopen(nombre_fsalida, "w");
    1268:	8f828030 	lw	v0,-32720(gp)
    126c:	244530f4 	addiu	a1,v0,12532
    1270:	8fc40040 	lw	a0,64(s8)
    1274:	8f8280e4 	lw	v0,-32540(gp)
    1278:	0040c825 	move	t9,v0
    127c:	0320f809 	jalr	t9
    1280:	00000000 	nop
    1284:	8fdc0018 	lw	gp,24(s8)
    1288:	afc20024 	sw	v0,36(s8)
	if(!fsalida){
    128c:	8fc20024 	lw	v0,36(s8)
    1290:	1440000b 	bnez	v0,12c0 <decodificar_stdin_archivo+0x7c>
    1294:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fsalida);
    1298:	8fc50040 	lw	a1,64(s8)
    129c:	8f828030 	lw	v0,-32720(gp)
    12a0:	24443084 	addiu	a0,v0,12420
    12a4:	8f8280e8 	lw	v0,-32536(gp)
    12a8:	0040c825 	move	t9,v0
    12ac:	0320f809 	jalr	t9
    12b0:	00000000 	nop
    12b4:	8fdc0018 	lw	gp,24(s8)
		return;
    12b8:	10000057 	b	1418 <decodificar_stdin_archivo+0x1d4>
    12bc:	00000000 	nop
	}

	bool sigo_leyendo = true;
    12c0:	24020001 	li	v0,1
    12c4:	a3c20020 	sb	v0,32(s8)
	do{
		char array_aDeco[5] = "";
    12c8:	afc00028 	sw	zero,40(s8)
    12cc:	a3c0002c 	sb	zero,44(s8)
		char array_decodificado[4] = "";
    12d0:	afc00030 	sw	zero,48(s8)
		scanf("%c%c%c%c", &array_aDeco[0], &array_aDeco[1], &array_aDeco[2], &array_aDeco[3]);
    12d4:	27c20028 	addiu	v0,s8,40
    12d8:	24450002 	addiu	a1,v0,2
    12dc:	27c20028 	addiu	v0,s8,40
    12e0:	24440001 	addiu	a0,v0,1
    12e4:	27c30028 	addiu	v1,s8,40
    12e8:	27c20028 	addiu	v0,s8,40
    12ec:	24420003 	addiu	v0,v0,3
    12f0:	afa20010 	sw	v0,16(sp)
    12f4:	00a03825 	move	a3,a1
    12f8:	00803025 	move	a2,a0
    12fc:	00602825 	move	a1,v1
    1300:	8f828030 	lw	v0,-32720(gp)
    1304:	244430fc 	addiu	a0,v0,12540
    1308:	8f8280a0 	lw	v0,-32608(gp)
    130c:	0040c825 	move	t9,v0
    1310:	0320f809 	jalr	t9
    1314:	00000000 	nop
    1318:	8fdc0018 	lw	gp,24(s8)
		if(strlen(array_aDeco) == 0){
    131c:	27c20028 	addiu	v0,s8,40
    1320:	80420000 	lb	v0,0(v0)
    1324:	14400004 	bnez	v0,1338 <decodificar_stdin_archivo+0xf4>
    1328:	00000000 	nop
			sigo_leyendo = false;
    132c:	a3c00020 	sb	zero,32(s8)
    1330:	10000036 	b	140c <decodificar_stdin_archivo+0x1c8>
    1334:	00000000 	nop
		}else if(strlen(array_aDeco) < 4){
    1338:	27c20028 	addiu	v0,s8,40
    133c:	00402025 	move	a0,v0
    1340:	8f8280bc 	lw	v0,-32580(gp)
    1344:	0040c825 	move	t9,v0
    1348:	0320f809 	jalr	t9
    134c:	00000000 	nop
    1350:	8fdc0018 	lw	gp,24(s8)
    1354:	2c420004 	sltiu	v0,v0,4
    1358:	1040000b 	beqz	v0,1388 <decodificar_stdin_archivo+0x144>
    135c:	00000000 	nop
			printf("Entrada invalida. La entrada deberia ser multiplo de 4\n");
    1360:	8f828030 	lw	v0,-32720(gp)
    1364:	24443108 	addiu	a0,v0,12552
    1368:	8f8280c8 	lw	v0,-32568(gp)
    136c:	0040c825 	move	t9,v0
    1370:	0320f809 	jalr	t9
    1374:	00000000 	nop
    1378:	8fdc0018 	lw	gp,24(s8)
			sigo_leyendo = false;
    137c:	a3c00020 	sb	zero,32(s8)
    1380:	10000022 	b	140c <decodificar_stdin_archivo+0x1c8>
    1384:	00000000 	nop
		}else{
			decodificador64((unsigned char*)array_aDeco, array_decodificado);
    1388:	27c30030 	addiu	v1,s8,48
    138c:	27c20028 	addiu	v0,s8,40
    1390:	00602825 	move	a1,v1
    1394:	00402025 	move	a0,v0
    1398:	8f828038 	lw	v0,-32712(gp)
    139c:	0040c825 	move	t9,v0
    13a0:	04110631 	bal	2c68 <decodificador64>
    13a4:	00000000 	nop
    13a8:	8fdc0018 	lw	gp,24(s8)
			fwrite(array_decodificado, 1, obtener_tamanio_decode(strlen(array_decodificado)), fsalida);
    13ac:	27c20030 	addiu	v0,s8,48
    13b0:	00402025 	move	a0,v0
    13b4:	8f8280bc 	lw	v0,-32580(gp)
    13b8:	0040c825 	move	t9,v0
    13bc:	0320f809 	jalr	t9
    13c0:	00000000 	nop
    13c4:	8fdc0018 	lw	gp,24(s8)
    13c8:	00402025 	move	a0,v0
    13cc:	8f828034 	lw	v0,-32716(gp)
    13d0:	0040c825 	move	t9,v0
    13d4:	0411fe56 	bal	d30 <obtener_tamanio_decode>
    13d8:	00000000 	nop
    13dc:	8fdc0018 	lw	gp,24(s8)
    13e0:	00401825 	move	v1,v0
    13e4:	27c20030 	addiu	v0,s8,48
    13e8:	8fc70024 	lw	a3,36(s8)
    13ec:	00603025 	move	a2,v1
    13f0:	24050001 	li	a1,1
    13f4:	00402025 	move	a0,v0
    13f8:	8f8280d8 	lw	v0,-32552(gp)
    13fc:	0040c825 	move	t9,v0
    1400:	0320f809 	jalr	t9
    1404:	00000000 	nop
    1408:	8fdc0018 	lw	gp,24(s8)
		}
	}while(sigo_leyendo);
    140c:	93c20020 	lbu	v0,32(s8)
    1410:	1440ffad 	bnez	v0,12c8 <decodificar_stdin_archivo+0x84>
    1414:	00000000 	nop
}
    1418:	03c0e825 	move	sp,s8
    141c:	8fbf003c 	lw	ra,60(sp)
    1420:	8fbe0038 	lw	s8,56(sp)
    1424:	27bd0040 	addiu	sp,sp,64
    1428:	03e00008 	jr	ra
    142c:	00000000 	nop

00001430 <decodificar_stdin_stdout>:

void decodificar_stdin_stdout(){
    1430:	3c1c0002 	lui	gp,0x2
    1434:	279ca140 	addiu	gp,gp,-24256
    1438:	0399e021 	addu	gp,gp,t9
    143c:	27bdffc8 	addiu	sp,sp,-56
    1440:	afbf0034 	sw	ra,52(sp)
    1444:	afbe0030 	sw	s8,48(sp)
    1448:	03a0f025 	move	s8,sp
    144c:	afbc0018 	sw	gp,24(sp)
	bool sigo_leyendo = true;
    1450:	24020001 	li	v0,1
    1454:	a3c20020 	sb	v0,32(s8)
	do{
		char array_aDeco[5] = "";
    1458:	afc00024 	sw	zero,36(s8)
    145c:	a3c00028 	sb	zero,40(s8)
		char array_decodificado[4] = "";
    1460:	afc0002c 	sw	zero,44(s8)
		scanf("%c%c%c%c", &array_aDeco[0], &array_aDeco[1], &array_aDeco[2], &array_aDeco[3]);
    1464:	27c20024 	addiu	v0,s8,36
    1468:	24450002 	addiu	a1,v0,2
    146c:	27c20024 	addiu	v0,s8,36
    1470:	24440001 	addiu	a0,v0,1
    1474:	27c30024 	addiu	v1,s8,36
    1478:	27c20024 	addiu	v0,s8,36
    147c:	24420003 	addiu	v0,v0,3
    1480:	afa20010 	sw	v0,16(sp)
    1484:	00a03825 	move	a3,a1
    1488:	00803025 	move	a2,a0
    148c:	00602825 	move	a1,v1
    1490:	8f828030 	lw	v0,-32720(gp)
    1494:	244430fc 	addiu	a0,v0,12540
    1498:	8f8280a0 	lw	v0,-32608(gp)
    149c:	0040c825 	move	t9,v0
    14a0:	0320f809 	jalr	t9
    14a4:	00000000 	nop
    14a8:	8fdc0018 	lw	gp,24(s8)
		if(strlen(array_aDeco) == 0 || (strlen(array_aDeco) == 1 && array_aDeco[0] == '\n')){
    14ac:	27c20024 	addiu	v0,s8,36
    14b0:	80420000 	lb	v0,0(v0)
    14b4:	10400010 	beqz	v0,14f8 <decodificar_stdin_stdout+0xc8>
    14b8:	00000000 	nop
    14bc:	27c20024 	addiu	v0,s8,36
    14c0:	00402025 	move	a0,v0
    14c4:	8f8280bc 	lw	v0,-32580(gp)
    14c8:	0040c825 	move	t9,v0
    14cc:	0320f809 	jalr	t9
    14d0:	00000000 	nop
    14d4:	8fdc0018 	lw	gp,24(s8)
    14d8:	00401825 	move	v1,v0
    14dc:	24020001 	li	v0,1
    14e0:	14620008 	bne	v1,v0,1504 <decodificar_stdin_stdout+0xd4>
    14e4:	00000000 	nop
    14e8:	83c30024 	lb	v1,36(s8)
    14ec:	2402000a 	li	v0,10
    14f0:	14620004 	bne	v1,v0,1504 <decodificar_stdin_stdout+0xd4>
    14f4:	00000000 	nop
			sigo_leyendo = false;
    14f8:	a3c00020 	sb	zero,32(s8)
    14fc:	10000027 	b	159c <decodificar_stdin_stdout+0x16c>
    1500:	00000000 	nop
		}else if(strlen(array_aDeco) < 4){
    1504:	27c20024 	addiu	v0,s8,36
    1508:	00402025 	move	a0,v0
    150c:	8f8280bc 	lw	v0,-32580(gp)
    1510:	0040c825 	move	t9,v0
    1514:	0320f809 	jalr	t9
    1518:	00000000 	nop
    151c:	8fdc0018 	lw	gp,24(s8)
    1520:	2c420004 	sltiu	v0,v0,4
    1524:	1040000b 	beqz	v0,1554 <decodificar_stdin_stdout+0x124>
    1528:	00000000 	nop
			printf("Entrada invalida. La entrada deberia ser multiplo de 4\n");
    152c:	8f828030 	lw	v0,-32720(gp)
    1530:	24443108 	addiu	a0,v0,12552
    1534:	8f8280c8 	lw	v0,-32568(gp)
    1538:	0040c825 	move	t9,v0
    153c:	0320f809 	jalr	t9
    1540:	00000000 	nop
    1544:	8fdc0018 	lw	gp,24(s8)
			sigo_leyendo = false;
    1548:	a3c00020 	sb	zero,32(s8)
    154c:	10000013 	b	159c <decodificar_stdin_stdout+0x16c>
    1550:	00000000 	nop
		}else{
			decodificador64((unsigned char*)array_aDeco, array_decodificado);
    1554:	27c3002c 	addiu	v1,s8,44
    1558:	27c20024 	addiu	v0,s8,36
    155c:	00602825 	move	a1,v1
    1560:	00402025 	move	a0,v0
    1564:	8f828038 	lw	v0,-32712(gp)
    1568:	0040c825 	move	t9,v0
    156c:	041105be 	bal	2c68 <decodificador64>
    1570:	00000000 	nop
    1574:	8fdc0018 	lw	gp,24(s8)
			printf("%s", array_decodificado);
    1578:	27c2002c 	addiu	v0,s8,44
    157c:	00402825 	move	a1,v0
    1580:	8f828030 	lw	v0,-32720(gp)
    1584:	244430f8 	addiu	a0,v0,12536
    1588:	8f8280e8 	lw	v0,-32536(gp)
    158c:	0040c825 	move	t9,v0
    1590:	0320f809 	jalr	t9
    1594:	00000000 	nop
    1598:	8fdc0018 	lw	gp,24(s8)
		}
	}while(sigo_leyendo);
    159c:	93c20020 	lbu	v0,32(s8)
    15a0:	1440ffad 	bnez	v0,1458 <decodificar_stdin_stdout+0x28>
    15a4:	00000000 	nop
}
    15a8:	00000000 	nop
    15ac:	03c0e825 	move	sp,s8
    15b0:	8fbf0034 	lw	ra,52(sp)
    15b4:	8fbe0030 	lw	s8,48(sp)
    15b8:	27bd0038 	addiu	sp,sp,56
    15bc:	03e00008 	jr	ra
    15c0:	00000000 	nop

000015c4 <obtener_tamanio_encode>:


/* ENCODE */
size_t obtener_tamanio_encode(size_t tamanio){
    15c4:	27bdfff8 	addiu	sp,sp,-8
    15c8:	afbe0004 	sw	s8,4(sp)
    15cc:	03a0f025 	move	s8,sp
    15d0:	afc40008 	sw	a0,8(s8)
	switch(tamanio%3){
    15d4:	8fc40008 	lw	a0,8(s8)
    15d8:	3c02aaaa 	lui	v0,0xaaaa
    15dc:	3442aaab 	ori	v0,v0,0xaaab
    15e0:	00820019 	multu	a0,v0
    15e4:	00001010 	mfhi	v0
    15e8:	00021042 	srl	v0,v0,0x1
    15ec:	00401825 	move	v1,v0
    15f0:	00031840 	sll	v1,v1,0x1
    15f4:	00621821 	addu	v1,v1,v0
    15f8:	00831023 	subu	v0,a0,v1
    15fc:	24030001 	li	v1,1
    1600:	10430013 	beq	v0,v1,1650 <obtener_tamanio_encode+0x8c>
    1604:	00000000 	nop
    1608:	2c430001 	sltiu	v1,v0,1
    160c:	14600006 	bnez	v1,1628 <obtener_tamanio_encode+0x64>
    1610:	00000000 	nop
    1614:	24030002 	li	v1,2
    1618:	10430018 	beq	v0,v1,167c <obtener_tamanio_encode+0xb8>
    161c:	00000000 	nop
    1620:	10000021 	b	16a8 <obtener_tamanio_encode+0xe4>
    1624:	00000000 	nop
		case 0:
			return tamanio*4/3 + 1;
    1628:	8fc20008 	lw	v0,8(s8)
    162c:	00021880 	sll	v1,v0,0x2
    1630:	3c02aaaa 	lui	v0,0xaaaa
    1634:	3442aaab 	ori	v0,v0,0xaaab
    1638:	00620019 	multu	v1,v0
    163c:	00001010 	mfhi	v0
    1640:	00021042 	srl	v0,v0,0x1
    1644:	24420001 	addiu	v0,v0,1
    1648:	10000018 	b	16ac <obtener_tamanio_encode+0xe8>
    164c:	00000000 	nop
		break;
		case 1:
			return (tamanio+2)*4/3 + 1;
    1650:	8fc20008 	lw	v0,8(s8)
    1654:	24420002 	addiu	v0,v0,2
    1658:	00021880 	sll	v1,v0,0x2
    165c:	3c02aaaa 	lui	v0,0xaaaa
    1660:	3442aaab 	ori	v0,v0,0xaaab
    1664:	00620019 	multu	v1,v0
    1668:	00001010 	mfhi	v0
    166c:	00021042 	srl	v0,v0,0x1
    1670:	24420001 	addiu	v0,v0,1
    1674:	1000000d 	b	16ac <obtener_tamanio_encode+0xe8>
    1678:	00000000 	nop
		break;
		case 2:
			return (tamanio+1)*4/3 + 1;
    167c:	8fc20008 	lw	v0,8(s8)
    1680:	24420001 	addiu	v0,v0,1
    1684:	00021880 	sll	v1,v0,0x2
    1688:	3c02aaaa 	lui	v0,0xaaaa
    168c:	3442aaab 	ori	v0,v0,0xaaab
    1690:	00620019 	multu	v1,v0
    1694:	00001010 	mfhi	v0
    1698:	00021042 	srl	v0,v0,0x1
    169c:	24420001 	addiu	v0,v0,1
    16a0:	10000002 	b	16ac <obtener_tamanio_encode+0xe8>
    16a4:	00000000 	nop
		break;
	}
	return 0;
    16a8:	00001025 	move	v0,zero
}
    16ac:	03c0e825 	move	sp,s8
    16b0:	8fbe0004 	lw	s8,4(sp)
    16b4:	27bd0008 	addiu	sp,sp,8
    16b8:	03e00008 	jr	ra
    16bc:	00000000 	nop

000016c0 <codificar_archivo_archivo>:

void codificar_archivo_archivo(char nombre_fentrada[MAXIMO_ARCHIVO], char nombre_fsalida[MAXIMO_ARCHIVO]){
    16c0:	3c1c0002 	lui	gp,0x2
    16c4:	279c9eb0 	addiu	gp,gp,-24912
    16c8:	0399e021 	addu	gp,gp,t9
    16cc:	27bdffc8 	addiu	sp,sp,-56
    16d0:	afbf0034 	sw	ra,52(sp)
    16d4:	afbe0030 	sw	s8,48(sp)
    16d8:	03a0f025 	move	s8,sp
    16dc:	afbc0010 	sw	gp,16(sp)
    16e0:	afc40038 	sw	a0,56(s8)
    16e4:	afc5003c 	sw	a1,60(s8)
	FILE* fentrada = fopen(nombre_fentrada, "r");
    16e8:	8f828030 	lw	v0,-32720(gp)
    16ec:	24453080 	addiu	a1,v0,12416
    16f0:	8fc40038 	lw	a0,56(s8)
    16f4:	8f8280e4 	lw	v0,-32540(gp)
    16f8:	0040c825 	move	t9,v0
    16fc:	0320f809 	jalr	t9
    1700:	00000000 	nop
    1704:	8fdc0010 	lw	gp,16(s8)
    1708:	afc20018 	sw	v0,24(s8)
	if(!fentrada){
    170c:	8fc20018 	lw	v0,24(s8)
    1710:	1440000b 	bnez	v0,1740 <codificar_archivo_archivo+0x80>
    1714:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fentrada);
    1718:	8fc50038 	lw	a1,56(s8)
    171c:	8f828030 	lw	v0,-32720(gp)
    1720:	24443084 	addiu	a0,v0,12420
    1724:	8f8280e8 	lw	v0,-32536(gp)
    1728:	0040c825 	move	t9,v0
    172c:	0320f809 	jalr	t9
    1730:	00000000 	nop
    1734:	8fdc0010 	lw	gp,16(s8)
		return;
    1738:	1000008e 	b	1974 <codificar_archivo_archivo+0x2b4>
    173c:	00000000 	nop
	}
	FILE* fsalida = fopen(nombre_fsalida, "w");
    1740:	8f828030 	lw	v0,-32720(gp)
    1744:	244530f4 	addiu	a1,v0,12532
    1748:	8fc4003c 	lw	a0,60(s8)
    174c:	8f8280e4 	lw	v0,-32540(gp)
    1750:	0040c825 	move	t9,v0
    1754:	0320f809 	jalr	t9
    1758:	00000000 	nop
    175c:	8fdc0010 	lw	gp,16(s8)
    1760:	afc2001c 	sw	v0,28(s8)
	if(!fsalida){		
    1764:	8fc2001c 	lw	v0,28(s8)
    1768:	14400011 	bnez	v0,17b0 <codificar_archivo_archivo+0xf0>
    176c:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fsalida);
    1770:	8fc5003c 	lw	a1,60(s8)
    1774:	8f828030 	lw	v0,-32720(gp)
    1778:	24443084 	addiu	a0,v0,12420
    177c:	8f8280e8 	lw	v0,-32536(gp)
    1780:	0040c825 	move	t9,v0
    1784:	0320f809 	jalr	t9
    1788:	00000000 	nop
    178c:	8fdc0010 	lw	gp,16(s8)
		fclose(fentrada);
    1790:	8fc40018 	lw	a0,24(s8)
    1794:	8f8280a4 	lw	v0,-32604(gp)
    1798:	0040c825 	move	t9,v0
    179c:	0320f809 	jalr	t9
    17a0:	00000000 	nop
    17a4:	8fdc0010 	lw	gp,16(s8)
		return;
    17a8:	10000072 	b	1974 <codificar_archivo_archivo+0x2b4>
    17ac:	00000000 	nop
	}

	fseek(fentrada, 0, SEEK_END); 
    17b0:	24060002 	li	a2,2
    17b4:	00002825 	move	a1,zero
    17b8:	8fc40018 	lw	a0,24(s8)
    17bc:	8f8280dc 	lw	v0,-32548(gp)
    17c0:	0040c825 	move	t9,v0
    17c4:	0320f809 	jalr	t9
    17c8:	00000000 	nop
    17cc:	8fdc0010 	lw	gp,16(s8)
	size_t size = (size_t) ftell(fentrada);
    17d0:	8fc40018 	lw	a0,24(s8)
    17d4:	8f8280b4 	lw	v0,-32588(gp)
    17d8:	0040c825 	move	t9,v0
    17dc:	0320f809 	jalr	t9
    17e0:	00000000 	nop
    17e4:	8fdc0010 	lw	gp,16(s8)
    17e8:	afc20020 	sw	v0,32(s8)
	fseek(fentrada, 0, SEEK_SET); 
    17ec:	00003025 	move	a2,zero
    17f0:	00002825 	move	a1,zero
    17f4:	8fc40018 	lw	a0,24(s8)
    17f8:	8f8280dc 	lw	v0,-32548(gp)
    17fc:	0040c825 	move	t9,v0
    1800:	0320f809 	jalr	t9
    1804:	00000000 	nop
    1808:	8fdc0010 	lw	gp,16(s8)

	char* entrada = calloc(size + 1, sizeof(char));
    180c:	8fc20020 	lw	v0,32(s8)
    1810:	24420001 	addiu	v0,v0,1
    1814:	24050001 	li	a1,1
    1818:	00402025 	move	a0,v0
    181c:	8f828094 	lw	v0,-32620(gp)
    1820:	0040c825 	move	t9,v0
    1824:	0320f809 	jalr	t9
    1828:	00000000 	nop
    182c:	8fdc0010 	lw	gp,16(s8)
    1830:	afc20024 	sw	v0,36(s8)
	if(!entrada){
    1834:	8fc20024 	lw	v0,36(s8)
    1838:	1440000f 	bnez	v0,1878 <codificar_archivo_archivo+0x1b8>
    183c:	00000000 	nop
		fclose(fentrada);
    1840:	8fc40018 	lw	a0,24(s8)
    1844:	8f8280a4 	lw	v0,-32604(gp)
    1848:	0040c825 	move	t9,v0
    184c:	0320f809 	jalr	t9
    1850:	00000000 	nop
    1854:	8fdc0010 	lw	gp,16(s8)
		fclose(fsalida);
    1858:	8fc4001c 	lw	a0,28(s8)
    185c:	8f8280a4 	lw	v0,-32604(gp)
    1860:	0040c825 	move	t9,v0
    1864:	0320f809 	jalr	t9
    1868:	00000000 	nop
    186c:	8fdc0010 	lw	gp,16(s8)
		return;
    1870:	10000040 	b	1974 <codificar_archivo_archivo+0x2b4>
    1874:	00000000 	nop
	}

	fread(entrada, 1, size, fentrada);
    1878:	8fc70018 	lw	a3,24(s8)
    187c:	8fc60020 	lw	a2,32(s8)
    1880:	24050001 	li	a1,1
    1884:	8fc40024 	lw	a0,36(s8)
    1888:	8f8280d0 	lw	v0,-32560(gp)
    188c:	0040c825 	move	t9,v0
    1890:	0320f809 	jalr	t9
    1894:	00000000 	nop
    1898:	8fdc0010 	lw	gp,16(s8)

	char* salida = calloc(obtener_tamanio_encode(size), sizeof(char));
    189c:	8fc40020 	lw	a0,32(s8)
    18a0:	8f82803c 	lw	v0,-32708(gp)
    18a4:	0040c825 	move	t9,v0
    18a8:	0411ff46 	bal	15c4 <obtener_tamanio_encode>
    18ac:	00000000 	nop
    18b0:	8fdc0010 	lw	gp,16(s8)
    18b4:	24050001 	li	a1,1
    18b8:	00402025 	move	a0,v0
    18bc:	8f828094 	lw	v0,-32620(gp)
    18c0:	0040c825 	move	t9,v0
    18c4:	0320f809 	jalr	t9
    18c8:	00000000 	nop
    18cc:	8fdc0010 	lw	gp,16(s8)
    18d0:	afc20028 	sw	v0,40(s8)

	codificador64((unsigned char*)entrada, salida);
    18d4:	8fc50028 	lw	a1,40(s8)
    18d8:	8fc40024 	lw	a0,36(s8)
    18dc:	8f828040 	lw	v0,-32704(gp)
    18e0:	0040c825 	move	t9,v0
    18e4:	041103cf 	bal	2824 <codificador64>
    18e8:	00000000 	nop
    18ec:	8fdc0010 	lw	gp,16(s8)
	
	fwrite(salida, 1, obtener_tamanio_encode(size), fsalida);
    18f0:	8fc40020 	lw	a0,32(s8)
    18f4:	8f82803c 	lw	v0,-32708(gp)
    18f8:	0040c825 	move	t9,v0
    18fc:	0411ff31 	bal	15c4 <obtener_tamanio_encode>
    1900:	00000000 	nop
    1904:	8fdc0010 	lw	gp,16(s8)
    1908:	8fc7001c 	lw	a3,28(s8)
    190c:	00403025 	move	a2,v0
    1910:	24050001 	li	a1,1
    1914:	8fc40028 	lw	a0,40(s8)
    1918:	8f8280d8 	lw	v0,-32552(gp)
    191c:	0040c825 	move	t9,v0
    1920:	0320f809 	jalr	t9
    1924:	00000000 	nop
    1928:	8fdc0010 	lw	gp,16(s8)

	fclose(fentrada);
    192c:	8fc40018 	lw	a0,24(s8)
    1930:	8f8280a4 	lw	v0,-32604(gp)
    1934:	0040c825 	move	t9,v0
    1938:	0320f809 	jalr	t9
    193c:	00000000 	nop
    1940:	8fdc0010 	lw	gp,16(s8)
	fclose(fsalida);
    1944:	8fc4001c 	lw	a0,28(s8)
    1948:	8f8280a4 	lw	v0,-32604(gp)
    194c:	0040c825 	move	t9,v0
    1950:	0320f809 	jalr	t9
    1954:	00000000 	nop
    1958:	8fdc0010 	lw	gp,16(s8)
	free(entrada);
    195c:	8fc40024 	lw	a0,36(s8)
    1960:	8f8280e0 	lw	v0,-32544(gp)
    1964:	0040c825 	move	t9,v0
    1968:	0320f809 	jalr	t9
    196c:	00000000 	nop
    1970:	8fdc0010 	lw	gp,16(s8)
}
    1974:	03c0e825 	move	sp,s8
    1978:	8fbf0034 	lw	ra,52(sp)
    197c:	8fbe0030 	lw	s8,48(sp)
    1980:	27bd0038 	addiu	sp,sp,56
    1984:	03e00008 	jr	ra
    1988:	00000000 	nop

0000198c <codificar_archivo_stdout>:

void codificar_archivo_stdout(char nombre_fentrada[MAXIMO_ARCHIVO]){
    198c:	3c1c0002 	lui	gp,0x2
    1990:	279c9be4 	addiu	gp,gp,-25628
    1994:	0399e021 	addu	gp,gp,t9
    1998:	27bdffd0 	addiu	sp,sp,-48
    199c:	afbf002c 	sw	ra,44(sp)
    19a0:	afbe0028 	sw	s8,40(sp)
    19a4:	03a0f025 	move	s8,sp
    19a8:	afbc0010 	sw	gp,16(sp)
    19ac:	afc40030 	sw	a0,48(s8)
	FILE* fentrada = fopen(nombre_fentrada, "r");
    19b0:	8f828030 	lw	v0,-32720(gp)
    19b4:	24453080 	addiu	a1,v0,12416
    19b8:	8fc40030 	lw	a0,48(s8)
    19bc:	8f8280e4 	lw	v0,-32540(gp)
    19c0:	0040c825 	move	t9,v0
    19c4:	0320f809 	jalr	t9
    19c8:	00000000 	nop
    19cc:	8fdc0010 	lw	gp,16(s8)
    19d0:	afc20018 	sw	v0,24(s8)
	if(!fentrada){
    19d4:	8fc20018 	lw	v0,24(s8)
    19d8:	1440000b 	bnez	v0,1a08 <codificar_archivo_stdout+0x7c>
    19dc:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fentrada);
    19e0:	8fc50030 	lw	a1,48(s8)
    19e4:	8f828030 	lw	v0,-32720(gp)
    19e8:	24443084 	addiu	a0,v0,12420
    19ec:	8f8280e8 	lw	v0,-32536(gp)
    19f0:	0040c825 	move	t9,v0
    19f4:	0320f809 	jalr	t9
    19f8:	00000000 	nop
    19fc:	8fdc0010 	lw	gp,16(s8)
		return;
    1a00:	1000005f 	b	1b80 <codificar_archivo_stdout+0x1f4>
    1a04:	00000000 	nop
	}

	fseek(fentrada, 0, SEEK_END); 
    1a08:	24060002 	li	a2,2
    1a0c:	00002825 	move	a1,zero
    1a10:	8fc40018 	lw	a0,24(s8)
    1a14:	8f8280dc 	lw	v0,-32548(gp)
    1a18:	0040c825 	move	t9,v0
    1a1c:	0320f809 	jalr	t9
    1a20:	00000000 	nop
    1a24:	8fdc0010 	lw	gp,16(s8)
	size_t size = (size_t) ftell(fentrada);
    1a28:	8fc40018 	lw	a0,24(s8)
    1a2c:	8f8280b4 	lw	v0,-32588(gp)
    1a30:	0040c825 	move	t9,v0
    1a34:	0320f809 	jalr	t9
    1a38:	00000000 	nop
    1a3c:	8fdc0010 	lw	gp,16(s8)
    1a40:	afc2001c 	sw	v0,28(s8)
	fseek(fentrada, 0, SEEK_SET); 
    1a44:	00003025 	move	a2,zero
    1a48:	00002825 	move	a1,zero
    1a4c:	8fc40018 	lw	a0,24(s8)
    1a50:	8f8280dc 	lw	v0,-32548(gp)
    1a54:	0040c825 	move	t9,v0
    1a58:	0320f809 	jalr	t9
    1a5c:	00000000 	nop
    1a60:	8fdc0010 	lw	gp,16(s8)

	char* entrada = calloc(size + 1, sizeof(char));
    1a64:	8fc2001c 	lw	v0,28(s8)
    1a68:	24420001 	addiu	v0,v0,1
    1a6c:	24050001 	li	a1,1
    1a70:	00402025 	move	a0,v0
    1a74:	8f828094 	lw	v0,-32620(gp)
    1a78:	0040c825 	move	t9,v0
    1a7c:	0320f809 	jalr	t9
    1a80:	00000000 	nop
    1a84:	8fdc0010 	lw	gp,16(s8)
    1a88:	afc20020 	sw	v0,32(s8)
	if(!entrada){
    1a8c:	8fc20020 	lw	v0,32(s8)
    1a90:	14400009 	bnez	v0,1ab8 <codificar_archivo_stdout+0x12c>
    1a94:	00000000 	nop
		fclose(fentrada);
    1a98:	8fc40018 	lw	a0,24(s8)
    1a9c:	8f8280a4 	lw	v0,-32604(gp)
    1aa0:	0040c825 	move	t9,v0
    1aa4:	0320f809 	jalr	t9
    1aa8:	00000000 	nop
    1aac:	8fdc0010 	lw	gp,16(s8)
		return;
    1ab0:	10000033 	b	1b80 <codificar_archivo_stdout+0x1f4>
    1ab4:	00000000 	nop
	}

	fread(entrada, 1, size, fentrada);
    1ab8:	8fc70018 	lw	a3,24(s8)
    1abc:	8fc6001c 	lw	a2,28(s8)
    1ac0:	24050001 	li	a1,1
    1ac4:	8fc40020 	lw	a0,32(s8)
    1ac8:	8f8280d0 	lw	v0,-32560(gp)
    1acc:	0040c825 	move	t9,v0
    1ad0:	0320f809 	jalr	t9
    1ad4:	00000000 	nop
    1ad8:	8fdc0010 	lw	gp,16(s8)

	char* salida = calloc(obtener_tamanio_encode(size), sizeof(char));
    1adc:	8fc4001c 	lw	a0,28(s8)
    1ae0:	8f82803c 	lw	v0,-32708(gp)
    1ae4:	0040c825 	move	t9,v0
    1ae8:	0411feb6 	bal	15c4 <obtener_tamanio_encode>
    1aec:	00000000 	nop
    1af0:	8fdc0010 	lw	gp,16(s8)
    1af4:	24050001 	li	a1,1
    1af8:	00402025 	move	a0,v0
    1afc:	8f828094 	lw	v0,-32620(gp)
    1b00:	0040c825 	move	t9,v0
    1b04:	0320f809 	jalr	t9
    1b08:	00000000 	nop
    1b0c:	8fdc0010 	lw	gp,16(s8)
    1b10:	afc20024 	sw	v0,36(s8)

	codificador64((unsigned char*)entrada, salida);
    1b14:	8fc50024 	lw	a1,36(s8)
    1b18:	8fc40020 	lw	a0,32(s8)
    1b1c:	8f828040 	lw	v0,-32704(gp)
    1b20:	0040c825 	move	t9,v0
    1b24:	0411033f 	bal	2824 <codificador64>
    1b28:	00000000 	nop
    1b2c:	8fdc0010 	lw	gp,16(s8)
	
	printf("%s", salida);
    1b30:	8fc50024 	lw	a1,36(s8)
    1b34:	8f828030 	lw	v0,-32720(gp)
    1b38:	244430f8 	addiu	a0,v0,12536
    1b3c:	8f8280e8 	lw	v0,-32536(gp)
    1b40:	0040c825 	move	t9,v0
    1b44:	0320f809 	jalr	t9
    1b48:	00000000 	nop
    1b4c:	8fdc0010 	lw	gp,16(s8)

	fclose(fentrada);
    1b50:	8fc40018 	lw	a0,24(s8)
    1b54:	8f8280a4 	lw	v0,-32604(gp)
    1b58:	0040c825 	move	t9,v0
    1b5c:	0320f809 	jalr	t9
    1b60:	00000000 	nop
    1b64:	8fdc0010 	lw	gp,16(s8)
	free(entrada);
    1b68:	8fc40020 	lw	a0,32(s8)
    1b6c:	8f8280e0 	lw	v0,-32544(gp)
    1b70:	0040c825 	move	t9,v0
    1b74:	0320f809 	jalr	t9
    1b78:	00000000 	nop
    1b7c:	8fdc0010 	lw	gp,16(s8)
}
    1b80:	03c0e825 	move	sp,s8
    1b84:	8fbf002c 	lw	ra,44(sp)
    1b88:	8fbe0028 	lw	s8,40(sp)
    1b8c:	27bd0030 	addiu	sp,sp,48
    1b90:	03e00008 	jr	ra
    1b94:	00000000 	nop

00001b98 <codificar_stdin_archivo>:

void codificar_stdin_archivo(char nombre_fsalida[MAXIMO_ARCHIVO]){
    1b98:	3c1c0002 	lui	gp,0x2
    1b9c:	279c99d8 	addiu	gp,gp,-26152
    1ba0:	0399e021 	addu	gp,gp,t9
    1ba4:	27bdffc8 	addiu	sp,sp,-56
    1ba8:	afbf0034 	sw	ra,52(sp)
    1bac:	afbe0030 	sw	s8,48(sp)
    1bb0:	03a0f025 	move	s8,sp
    1bb4:	afbc0010 	sw	gp,16(sp)
    1bb8:	afc40038 	sw	a0,56(s8)
	FILE* fsalida = fopen(nombre_fsalida, "w");
    1bbc:	8f828030 	lw	v0,-32720(gp)
    1bc0:	244530f4 	addiu	a1,v0,12532
    1bc4:	8fc40038 	lw	a0,56(s8)
    1bc8:	8f8280e4 	lw	v0,-32540(gp)
    1bcc:	0040c825 	move	t9,v0
    1bd0:	0320f809 	jalr	t9
    1bd4:	00000000 	nop
    1bd8:	8fdc0010 	lw	gp,16(s8)
    1bdc:	afc2001c 	sw	v0,28(s8)
	if(!fsalida){
    1be0:	8fc2001c 	lw	v0,28(s8)
    1be4:	1440000b 	bnez	v0,1c14 <codificar_stdin_archivo+0x7c>
    1be8:	00000000 	nop
		printf("ERROR: El archivo %s no ha sido encontrado. Revisar que el nombre ingresado y/o el directorio sea el correcto.\n", nombre_fsalida);
    1bec:	8fc50038 	lw	a1,56(s8)
    1bf0:	8f828030 	lw	v0,-32720(gp)
    1bf4:	24443084 	addiu	a0,v0,12420
    1bf8:	8f8280e8 	lw	v0,-32536(gp)
    1bfc:	0040c825 	move	t9,v0
    1c00:	0320f809 	jalr	t9
    1c04:	00000000 	nop
    1c08:	8fdc0010 	lw	gp,16(s8)
		return;
    1c0c:	10000076 	b	1de8 <codificar_stdin_archivo+0x250>
    1c10:	00000000 	nop
	}
	bool sigo_leyendo = true;
    1c14:	24020001 	li	v0,1
    1c18:	a3c20018 	sb	v0,24(s8)
	do{
		char array_aEnco[4] = "";
    1c1c:	afc00020 	sw	zero,32(s8)
		char array_encodificado[5] = "";
    1c20:	afc00024 	sw	zero,36(s8)
    1c24:	a3c00028 	sb	zero,40(s8)
		scanf("%c%c%c", &array_aEnco[0], &array_aEnco[1], &array_aEnco[2]);
    1c28:	27c20020 	addiu	v0,s8,32
    1c2c:	24440002 	addiu	a0,v0,2
    1c30:	27c20020 	addiu	v0,s8,32
    1c34:	24430001 	addiu	v1,v0,1
    1c38:	27c20020 	addiu	v0,s8,32
    1c3c:	00803825 	move	a3,a0
    1c40:	00603025 	move	a2,v1
    1c44:	00402825 	move	a1,v0
    1c48:	8f828030 	lw	v0,-32720(gp)
    1c4c:	24443140 	addiu	a0,v0,12608
    1c50:	8f8280a0 	lw	v0,-32608(gp)
    1c54:	0040c825 	move	t9,v0
    1c58:	0320f809 	jalr	t9
    1c5c:	00000000 	nop
    1c60:	8fdc0010 	lw	gp,16(s8)
		if(strlen(array_aEnco) == 3){
    1c64:	27c20020 	addiu	v0,s8,32
    1c68:	00402025 	move	a0,v0
    1c6c:	8f8280bc 	lw	v0,-32580(gp)
    1c70:	0040c825 	move	t9,v0
    1c74:	0320f809 	jalr	t9
    1c78:	00000000 	nop
    1c7c:	8fdc0010 	lw	gp,16(s8)
    1c80:	00401825 	move	v1,v0
    1c84:	24020003 	li	v0,3
    1c88:	1462000c 	bne	v1,v0,1cbc <codificar_stdin_archivo+0x124>
    1c8c:	00000000 	nop
			codificador64((unsigned char*)array_aEnco, array_encodificado);
    1c90:	27c30024 	addiu	v1,s8,36
    1c94:	27c20020 	addiu	v0,s8,32
    1c98:	00602825 	move	a1,v1
    1c9c:	00402025 	move	a0,v0
    1ca0:	8f828040 	lw	v0,-32704(gp)
    1ca4:	0040c825 	move	t9,v0
    1ca8:	041102de 	bal	2824 <codificador64>
    1cac:	00000000 	nop
    1cb0:	8fdc0010 	lw	gp,16(s8)
    1cb4:	10000031 	b	1d7c <codificar_stdin_archivo+0x1e4>
    1cb8:	00000000 	nop
		}else if(strlen(array_aEnco) == 2){
    1cbc:	27c20020 	addiu	v0,s8,32
    1cc0:	00402025 	move	a0,v0
    1cc4:	8f8280bc 	lw	v0,-32580(gp)
    1cc8:	0040c825 	move	t9,v0
    1ccc:	0320f809 	jalr	t9
    1cd0:	00000000 	nop
    1cd4:	8fdc0010 	lw	gp,16(s8)
    1cd8:	00401825 	move	v1,v0
    1cdc:	24020002 	li	v0,2
    1ce0:	1462000d 	bne	v1,v0,1d18 <codificar_stdin_archivo+0x180>
    1ce4:	00000000 	nop
			codificador64((unsigned char*)array_aEnco, array_encodificado);
    1ce8:	27c30024 	addiu	v1,s8,36
    1cec:	27c20020 	addiu	v0,s8,32
    1cf0:	00602825 	move	a1,v1
    1cf4:	00402025 	move	a0,v0
    1cf8:	8f828040 	lw	v0,-32704(gp)
    1cfc:	0040c825 	move	t9,v0
    1d00:	041102c8 	bal	2824 <codificador64>
    1d04:	00000000 	nop
    1d08:	8fdc0010 	lw	gp,16(s8)
			sigo_leyendo = false;
    1d0c:	a3c00018 	sb	zero,24(s8)
    1d10:	1000001a 	b	1d7c <codificar_stdin_archivo+0x1e4>
    1d14:	00000000 	nop
		}else if(strlen(array_aEnco) == 1){
    1d18:	27c20020 	addiu	v0,s8,32
    1d1c:	00402025 	move	a0,v0
    1d20:	8f8280bc 	lw	v0,-32580(gp)
    1d24:	0040c825 	move	t9,v0
    1d28:	0320f809 	jalr	t9
    1d2c:	00000000 	nop
    1d30:	8fdc0010 	lw	gp,16(s8)
    1d34:	00401825 	move	v1,v0
    1d38:	24020001 	li	v0,1
    1d3c:	1462000e 	bne	v1,v0,1d78 <codificar_stdin_archivo+0x1e0>
    1d40:	00000000 	nop
			array_aEnco[2] = '\0';
    1d44:	a3c00022 	sb	zero,34(s8)
			codificador64((unsigned char*)array_aEnco, array_encodificado);
    1d48:	27c30024 	addiu	v1,s8,36
    1d4c:	27c20020 	addiu	v0,s8,32
    1d50:	00602825 	move	a1,v1
    1d54:	00402025 	move	a0,v0
    1d58:	8f828040 	lw	v0,-32704(gp)
    1d5c:	0040c825 	move	t9,v0
    1d60:	041102b0 	bal	2824 <codificador64>
    1d64:	00000000 	nop
    1d68:	8fdc0010 	lw	gp,16(s8)
			sigo_leyendo = false;
    1d6c:	a3c00018 	sb	zero,24(s8)
    1d70:	10000002 	b	1d7c <codificar_stdin_archivo+0x1e4>
    1d74:	00000000 	nop
		}else{
			sigo_leyendo = false;
    1d78:	a3c00018 	sb	zero,24(s8)
		}
		fwrite(array_encodificado, 1, obtener_tamanio_decode(strlen(array_encodificado)), fsalida);
    1d7c:	27c20024 	addiu	v0,s8,36
    1d80:	00402025 	move	a0,v0
    1d84:	8f8280bc 	lw	v0,-32580(gp)
    1d88:	0040c825 	move	t9,v0
    1d8c:	0320f809 	jalr	t9
    1d90:	00000000 	nop
    1d94:	8fdc0010 	lw	gp,16(s8)
    1d98:	00402025 	move	a0,v0
    1d9c:	8f828034 	lw	v0,-32716(gp)
    1da0:	0040c825 	move	t9,v0
    1da4:	0411fbe2 	bal	d30 <obtener_tamanio_decode>
    1da8:	00000000 	nop
    1dac:	8fdc0010 	lw	gp,16(s8)
    1db0:	00401825 	move	v1,v0
    1db4:	27c20024 	addiu	v0,s8,36
    1db8:	8fc7001c 	lw	a3,28(s8)
    1dbc:	00603025 	move	a2,v1
    1dc0:	24050001 	li	a1,1
    1dc4:	00402025 	move	a0,v0
    1dc8:	8f8280d8 	lw	v0,-32552(gp)
    1dcc:	0040c825 	move	t9,v0
    1dd0:	0320f809 	jalr	t9
    1dd4:	00000000 	nop
    1dd8:	8fdc0010 	lw	gp,16(s8)
	}while(sigo_leyendo);
    1ddc:	93c20018 	lbu	v0,24(s8)
    1de0:	1440ff8e 	bnez	v0,1c1c <codificar_stdin_archivo+0x84>
    1de4:	00000000 	nop
}
    1de8:	03c0e825 	move	sp,s8
    1dec:	8fbf0034 	lw	ra,52(sp)
    1df0:	8fbe0030 	lw	s8,48(sp)
    1df4:	27bd0038 	addiu	sp,sp,56
    1df8:	03e00008 	jr	ra
    1dfc:	00000000 	nop

00001e00 <codificar_stdin_stdout>:

void codificar_stdin_stdout(){
    1e00:	3c1c0002 	lui	gp,0x2
    1e04:	279c9770 	addiu	gp,gp,-26768
    1e08:	0399e021 	addu	gp,gp,t9
    1e0c:	27bdffd0 	addiu	sp,sp,-48
    1e10:	afbf002c 	sw	ra,44(sp)
    1e14:	afbe0028 	sw	s8,40(sp)
    1e18:	03a0f025 	move	s8,sp
    1e1c:	afbc0010 	sw	gp,16(sp)
	bool sigo_leyendo = true;
    1e20:	24020001 	li	v0,1
    1e24:	a3c20018 	sb	v0,24(s8)
	do{
		char array_aEnco[4] = "";
    1e28:	afc0001c 	sw	zero,28(s8)
		char array_encodificado[5] = "";
    1e2c:	afc00020 	sw	zero,32(s8)
    1e30:	a3c00024 	sb	zero,36(s8)
		scanf("%c%c%c", &array_aEnco[0], &array_aEnco[1], &array_aEnco[2]);
    1e34:	27c2001c 	addiu	v0,s8,28
    1e38:	24440002 	addiu	a0,v0,2
    1e3c:	27c2001c 	addiu	v0,s8,28
    1e40:	24430001 	addiu	v1,v0,1
    1e44:	27c2001c 	addiu	v0,s8,28
    1e48:	00803825 	move	a3,a0
    1e4c:	00603025 	move	a2,v1
    1e50:	00402825 	move	a1,v0
    1e54:	8f828030 	lw	v0,-32720(gp)
    1e58:	24443140 	addiu	a0,v0,12608
    1e5c:	8f8280a0 	lw	v0,-32608(gp)
    1e60:	0040c825 	move	t9,v0
    1e64:	0320f809 	jalr	t9
    1e68:	00000000 	nop
    1e6c:	8fdc0010 	lw	gp,16(s8)
		if(strlen(array_aEnco) == 3){
    1e70:	27c2001c 	addiu	v0,s8,28
    1e74:	00402025 	move	a0,v0
    1e78:	8f8280bc 	lw	v0,-32580(gp)
    1e7c:	0040c825 	move	t9,v0
    1e80:	0320f809 	jalr	t9
    1e84:	00000000 	nop
    1e88:	8fdc0010 	lw	gp,16(s8)
    1e8c:	00401825 	move	v1,v0
    1e90:	24020003 	li	v0,3
    1e94:	1462000c 	bne	v1,v0,1ec8 <codificar_stdin_stdout+0xc8>
    1e98:	00000000 	nop
			codificador64((unsigned char*)array_aEnco, array_encodificado);
    1e9c:	27c30020 	addiu	v1,s8,32
    1ea0:	27c2001c 	addiu	v0,s8,28
    1ea4:	00602825 	move	a1,v1
    1ea8:	00402025 	move	a0,v0
    1eac:	8f828040 	lw	v0,-32704(gp)
    1eb0:	0040c825 	move	t9,v0
    1eb4:	0411025b 	bal	2824 <codificador64>
    1eb8:	00000000 	nop
    1ebc:	8fdc0010 	lw	gp,16(s8)
    1ec0:	10000031 	b	1f88 <codificar_stdin_stdout+0x188>
    1ec4:	00000000 	nop
		}else if(strlen(array_aEnco) == 2){
    1ec8:	27c2001c 	addiu	v0,s8,28
    1ecc:	00402025 	move	a0,v0
    1ed0:	8f8280bc 	lw	v0,-32580(gp)
    1ed4:	0040c825 	move	t9,v0
    1ed8:	0320f809 	jalr	t9
    1edc:	00000000 	nop
    1ee0:	8fdc0010 	lw	gp,16(s8)
    1ee4:	00401825 	move	v1,v0
    1ee8:	24020002 	li	v0,2
    1eec:	1462000d 	bne	v1,v0,1f24 <codificar_stdin_stdout+0x124>
    1ef0:	00000000 	nop
			codificador64((unsigned char*)array_aEnco, array_encodificado);
    1ef4:	27c30020 	addiu	v1,s8,32
    1ef8:	27c2001c 	addiu	v0,s8,28
    1efc:	00602825 	move	a1,v1
    1f00:	00402025 	move	a0,v0
    1f04:	8f828040 	lw	v0,-32704(gp)
    1f08:	0040c825 	move	t9,v0
    1f0c:	04110245 	bal	2824 <codificador64>
    1f10:	00000000 	nop
    1f14:	8fdc0010 	lw	gp,16(s8)
			sigo_leyendo = false;
    1f18:	a3c00018 	sb	zero,24(s8)
    1f1c:	1000001a 	b	1f88 <codificar_stdin_stdout+0x188>
    1f20:	00000000 	nop
		}else if(strlen(array_aEnco) == 1){
    1f24:	27c2001c 	addiu	v0,s8,28
    1f28:	00402025 	move	a0,v0
    1f2c:	8f8280bc 	lw	v0,-32580(gp)
    1f30:	0040c825 	move	t9,v0
    1f34:	0320f809 	jalr	t9
    1f38:	00000000 	nop
    1f3c:	8fdc0010 	lw	gp,16(s8)
    1f40:	00401825 	move	v1,v0
    1f44:	24020001 	li	v0,1
    1f48:	1462000e 	bne	v1,v0,1f84 <codificar_stdin_stdout+0x184>
    1f4c:	00000000 	nop
			array_aEnco[2] = '\0';
    1f50:	a3c0001e 	sb	zero,30(s8)
			codificador64((unsigned char*)array_aEnco, array_encodificado);
    1f54:	27c30020 	addiu	v1,s8,32
    1f58:	27c2001c 	addiu	v0,s8,28
    1f5c:	00602825 	move	a1,v1
    1f60:	00402025 	move	a0,v0
    1f64:	8f828040 	lw	v0,-32704(gp)
    1f68:	0040c825 	move	t9,v0
    1f6c:	0411022d 	bal	2824 <codificador64>
    1f70:	00000000 	nop
    1f74:	8fdc0010 	lw	gp,16(s8)
			sigo_leyendo = false;
    1f78:	a3c00018 	sb	zero,24(s8)
    1f7c:	10000002 	b	1f88 <codificar_stdin_stdout+0x188>
    1f80:	00000000 	nop
		}else{
			sigo_leyendo = false;
    1f84:	a3c00018 	sb	zero,24(s8)
		}
		printf("%s", array_encodificado);
    1f88:	27c20020 	addiu	v0,s8,32
    1f8c:	00402825 	move	a1,v0
    1f90:	8f828030 	lw	v0,-32720(gp)
    1f94:	244430f8 	addiu	a0,v0,12536
    1f98:	8f8280e8 	lw	v0,-32536(gp)
    1f9c:	0040c825 	move	t9,v0
    1fa0:	0320f809 	jalr	t9
    1fa4:	00000000 	nop
    1fa8:	8fdc0010 	lw	gp,16(s8)
	}while(sigo_leyendo);
    1fac:	93c20018 	lbu	v0,24(s8)
    1fb0:	1440ff9d 	bnez	v0,1e28 <codificar_stdin_stdout+0x28>
    1fb4:	00000000 	nop
}
    1fb8:	00000000 	nop
    1fbc:	03c0e825 	move	sp,s8
    1fc0:	8fbf002c 	lw	ra,44(sp)
    1fc4:	8fbe0028 	lw	s8,40(sp)
    1fc8:	27bd0030 	addiu	sp,sp,48
    1fcc:	03e00008 	jr	ra
    1fd0:	00000000 	nop

00001fd4 <mostrar_ayudas>:


void mostrar_ayudas(){
    1fd4:	3c1c0002 	lui	gp,0x2
    1fd8:	279c959c 	addiu	gp,gp,-27236
    1fdc:	0399e021 	addu	gp,gp,t9
    1fe0:	27bdffe0 	addiu	sp,sp,-32
    1fe4:	afbf001c 	sw	ra,28(sp)
    1fe8:	afbe0018 	sw	s8,24(sp)
    1fec:	03a0f025 	move	s8,sp
    1ff0:	afbc0010 	sw	gp,16(sp)
	printf("\n");
    1ff4:	2404000a 	li	a0,10
    1ff8:	8f8280ac 	lw	v0,-32596(gp)
    1ffc:	0040c825 	move	t9,v0
    2000:	0320f809 	jalr	t9
    2004:	00000000 	nop
    2008:	8fdc0010 	lw	gp,16(s8)
	printf("-h, --help: Muestra la interfaz de ayudas.\n");
    200c:	8f828030 	lw	v0,-32720(gp)
    2010:	24443148 	addiu	a0,v0,12616
    2014:	8f8280c8 	lw	v0,-32568(gp)
    2018:	0040c825 	move	t9,v0
    201c:	0320f809 	jalr	t9
    2020:	00000000 	nop
    2024:	8fdc0010 	lw	gp,16(s8)
	printf("-v, --version: Indica la version del programa.\n");
    2028:	8f828030 	lw	v0,-32720(gp)
    202c:	24443174 	addiu	a0,v0,12660
    2030:	8f8280c8 	lw	v0,-32568(gp)
    2034:	0040c825 	move	t9,v0
    2038:	0320f809 	jalr	t9
    203c:	00000000 	nop
    2040:	8fdc0010 	lw	gp,16(s8)
	printf("-i, --input: Indica la direccion donde esta el archivo a leer.\n");
    2044:	8f828030 	lw	v0,-32720(gp)
    2048:	244431a4 	addiu	a0,v0,12708
    204c:	8f8280c8 	lw	v0,-32568(gp)
    2050:	0040c825 	move	t9,v0
    2054:	0320f809 	jalr	t9
    2058:	00000000 	nop
    205c:	8fdc0010 	lw	gp,16(s8)
	printf("-o, --output: Indica la direccion donde esta el archivo a escribir.\n");
    2060:	8f828030 	lw	v0,-32720(gp)
    2064:	244431e4 	addiu	a0,v0,12772
    2068:	8f8280c8 	lw	v0,-32568(gp)
    206c:	0040c825 	move	t9,v0
    2070:	0320f809 	jalr	t9
    2074:	00000000 	nop
    2078:	8fdc0010 	lw	gp,16(s8)
	printf("-d, --decode: Si se utiliza este flag se decodificara la entrada. De forma estandar la entrada es codificada.\n");
    207c:	8f828030 	lw	v0,-32720(gp)
    2080:	24443228 	addiu	a0,v0,12840
    2084:	8f8280c8 	lw	v0,-32568(gp)
    2088:	0040c825 	move	t9,v0
    208c:	0320f809 	jalr	t9
    2090:	00000000 	nop
    2094:	8fdc0010 	lw	gp,16(s8)
	
	printf("\n");
    2098:	2404000a 	li	a0,10
    209c:	8f8280ac 	lw	v0,-32596(gp)
    20a0:	0040c825 	move	t9,v0
    20a4:	0320f809 	jalr	t9
    20a8:	00000000 	nop
    20ac:	8fdc0010 	lw	gp,16(s8)
	printf("Ejemplos:\n");
    20b0:	8f828030 	lw	v0,-32720(gp)
    20b4:	24443298 	addiu	a0,v0,12952
    20b8:	8f8280c8 	lw	v0,-32568(gp)
    20bc:	0040c825 	move	t9,v0
    20c0:	0320f809 	jalr	t9
    20c4:	00000000 	nop
    20c8:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
    20cc:	2404000a 	li	a0,10
    20d0:	8f8280ac 	lw	v0,-32596(gp)
    20d4:	0040c825 	move	t9,v0
    20d8:	0320f809 	jalr	t9
    20dc:	00000000 	nop
    20e0:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
    20e4:	2404000a 	li	a0,10
    20e8:	8f8280ac 	lw	v0,-32596(gp)
    20ec:	0040c825 	move	t9,v0
    20f0:	0320f809 	jalr	t9
    20f4:	00000000 	nop
    20f8:	8fdc0010 	lw	gp,16(s8)

	printf("> ./TP0 -i input.txt -o output.txt\n");
    20fc:	8f828030 	lw	v0,-32720(gp)
    2100:	244432a4 	addiu	a0,v0,12964
    2104:	8f8280c8 	lw	v0,-32568(gp)
    2108:	0040c825 	move	t9,v0
    210c:	0320f809 	jalr	t9
    2110:	00000000 	nop
    2114:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
    2118:	2404000a 	li	a0,10
    211c:	8f8280ac 	lw	v0,-32596(gp)
    2120:	0040c825 	move	t9,v0
    2124:	0320f809 	jalr	t9
    2128:	00000000 	nop
    212c:	8fdc0010 	lw	gp,16(s8)
	
	printf("> ./TP0 -i input.txt -o output.txt -d\n");
    2130:	8f828030 	lw	v0,-32720(gp)
    2134:	244432c8 	addiu	a0,v0,13000
    2138:	8f8280c8 	lw	v0,-32568(gp)
    213c:	0040c825 	move	t9,v0
    2140:	0320f809 	jalr	t9
    2144:	00000000 	nop
    2148:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
    214c:	2404000a 	li	a0,10
    2150:	8f8280ac 	lw	v0,-32596(gp)
    2154:	0040c825 	move	t9,v0
    2158:	0320f809 	jalr	t9
    215c:	00000000 	nop
    2160:	8fdc0010 	lw	gp,16(s8)
	
	printf("> echo \"Eres debil Sasuke te falta odio.\" | ./TP0\n");
    2164:	8f828030 	lw	v0,-32720(gp)
    2168:	244432f0 	addiu	a0,v0,13040
    216c:	8f8280c8 	lw	v0,-32568(gp)
    2170:	0040c825 	move	t9,v0
    2174:	0320f809 	jalr	t9
    2178:	00000000 	nop
    217c:	8fdc0010 	lw	gp,16(s8)
	printf("> RXJlcyBkZWJpbCBTYXN1a2UgdGUgZmFsdGEgb2Rpby4K\n");
    2180:	8f828030 	lw	v0,-32720(gp)
    2184:	24443324 	addiu	a0,v0,13092
    2188:	8f8280c8 	lw	v0,-32568(gp)
    218c:	0040c825 	move	t9,v0
    2190:	0320f809 	jalr	t9
    2194:	00000000 	nop
    2198:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
    219c:	2404000a 	li	a0,10
    21a0:	8f8280ac 	lw	v0,-32596(gp)
    21a4:	0040c825 	move	t9,v0
    21a8:	0320f809 	jalr	t9
    21ac:	00000000 	nop
    21b0:	8fdc0010 	lw	gp,16(s8)
	
	printf("> echo \"RXJlcyBkZWJpbCBTYXN1a2UgdGUgZmFsdGEgb2Rpby4K\" | ./TP0\n");
    21b4:	8f828030 	lw	v0,-32720(gp)
    21b8:	24443354 	addiu	a0,v0,13140
    21bc:	8f8280c8 	lw	v0,-32568(gp)
    21c0:	0040c825 	move	t9,v0
    21c4:	0320f809 	jalr	t9
    21c8:	00000000 	nop
    21cc:	8fdc0010 	lw	gp,16(s8)
	printf("> Eres debil Sasuke te falta odio.\n");
    21d0:	8f828030 	lw	v0,-32720(gp)
    21d4:	24443394 	addiu	a0,v0,13204
    21d8:	8f8280c8 	lw	v0,-32568(gp)
    21dc:	0040c825 	move	t9,v0
    21e0:	0320f809 	jalr	t9
    21e4:	00000000 	nop
    21e8:	8fdc0010 	lw	gp,16(s8)
	printf("\n");
    21ec:	2404000a 	li	a0,10
    21f0:	8f8280ac 	lw	v0,-32596(gp)
    21f4:	0040c825 	move	t9,v0
    21f8:	0320f809 	jalr	t9
    21fc:	00000000 	nop
    2200:	8fdc0010 	lw	gp,16(s8)
}
    2204:	00000000 	nop
    2208:	03c0e825 	move	sp,s8
    220c:	8fbf001c 	lw	ra,28(sp)
    2210:	8fbe0018 	lw	s8,24(sp)
    2214:	27bd0020 	addiu	sp,sp,32
    2218:	03e00008 	jr	ra
    221c:	00000000 	nop

00002220 <mostrar_version>:

void mostrar_version(){
    2220:	3c1c0002 	lui	gp,0x2
    2224:	279c9350 	addiu	gp,gp,-27824
    2228:	0399e021 	addu	gp,gp,t9
    222c:	27bdffe0 	addiu	sp,sp,-32
    2230:	afbf001c 	sw	ra,28(sp)
    2234:	afbe0018 	sw	s8,24(sp)
    2238:	03a0f025 	move	s8,sp
    223c:	afbc0010 	sw	gp,16(sp)
	printf("Version 1.0.0\n");
    2240:	8f828030 	lw	v0,-32720(gp)
    2244:	244433b8 	addiu	a0,v0,13240
    2248:	8f8280c8 	lw	v0,-32568(gp)
    224c:	0040c825 	move	t9,v0
    2250:	0320f809 	jalr	t9
    2254:	00000000 	nop
    2258:	8fdc0010 	lw	gp,16(s8)
}
    225c:	00000000 	nop
    2260:	03c0e825 	move	sp,s8
    2264:	8fbf001c 	lw	ra,28(sp)
    2268:	8fbe0018 	lw	s8,24(sp)
    226c:	27bd0020 	addiu	sp,sp,32
    2270:	03e00008 	jr	ra
    2274:	00000000 	nop

00002278 <main>:


int main(int argc, char** argv){
    2278:	3c1c0002 	lui	gp,0x2
    227c:	279c92f8 	addiu	gp,gp,-27912
    2280:	0399e021 	addu	gp,gp,t9
    2284:	27bdff08 	addiu	sp,sp,-248
    2288:	afbf00f4 	sw	ra,244(sp)
    228c:	afbe00f0 	sw	s8,240(sp)
    2290:	03a0f025 	move	s8,sp
    2294:	afbc0018 	sw	gp,24(sp)
    2298:	afc400f8 	sw	a0,248(s8)
    229c:	afc500fc 	sw	a1,252(s8)
                   {"decode", no_argument, 0, 'd'},
                   {0,0,0,0}
               };

	int opt;
	char archivo_entrada[MAXIMO_ARCHIVO] = "";
    22a0:	afc00028 	sw	zero,40(s8)
    22a4:	27c2002c 	addiu	v0,s8,44
    22a8:	24030060 	li	v1,96
    22ac:	00603025 	move	a2,v1
    22b0:	00002825 	move	a1,zero
    22b4:	00402025 	move	a0,v0
    22b8:	8f8280b0 	lw	v0,-32592(gp)
    22bc:	0040c825 	move	t9,v0
    22c0:	0320f809 	jalr	t9
    22c4:	00000000 	nop
    22c8:	8fdc0018 	lw	gp,24(s8)
	char archivo_salida[MAXIMO_ARCHIVO] = "";
    22cc:	afc0008c 	sw	zero,140(s8)
    22d0:	27c20090 	addiu	v0,s8,144
    22d4:	24030060 	li	v1,96
    22d8:	00603025 	move	a2,v1
    22dc:	00002825 	move	a1,zero
    22e0:	00402025 	move	a0,v0
    22e4:	8f8280b0 	lw	v0,-32592(gp)
    22e8:	0040c825 	move	t9,v0
    22ec:	0320f809 	jalr	t9
    22f0:	00000000 	nop
    22f4:	8fdc0018 	lw	gp,24(s8)
	bool decode = false;
    22f8:	a3c00020 	sb	zero,32(s8)
	bool pidio_info = false;
    22fc:	a3c00021 	sb	zero,33(s8)

	while((opt = getopt_long(argc, argv, "i:o:dvh",long_options,NULL)) != -1) {
    2300:	10000047 	b	2420 <main+0x1a8>
    2304:	00000000 	nop
		switch(opt){
    2308:	8fc20024 	lw	v0,36(s8)
    230c:	2442ff9c 	addiu	v0,v0,-100
    2310:	2c430013 	sltiu	v1,v0,19
    2314:	10600041 	beqz	v1,241c <main+0x1a4>
    2318:	00000000 	nop
    231c:	00021880 	sll	v1,v0,0x2
    2320:	8f828030 	lw	v0,-32720(gp)
    2324:	244233d0 	addiu	v0,v0,13264
    2328:	00621021 	addu	v0,v1,v0
    232c:	8c420000 	lw	v0,0(v0)
    2330:	005c1021 	addu	v0,v0,gp
    2334:	00400008 	jr	v0
    2338:	00000000 	nop
			case 'i':
				strcpy(archivo_entrada, optarg);
    233c:	8f828098 	lw	v0,-32616(gp)
    2340:	8c430000 	lw	v1,0(v0)
    2344:	27c20028 	addiu	v0,s8,40
    2348:	00602825 	move	a1,v1
    234c:	00402025 	move	a0,v0
    2350:	8f8280cc 	lw	v0,-32564(gp)
    2354:	0040c825 	move	t9,v0
    2358:	0320f809 	jalr	t9
    235c:	00000000 	nop
    2360:	8fdc0018 	lw	gp,24(s8)
			break;
    2364:	1000002e 	b	2420 <main+0x1a8>
    2368:	00000000 	nop

			case 'o':
				strcpy(archivo_salida, optarg);
    236c:	8f828098 	lw	v0,-32616(gp)
    2370:	8c430000 	lw	v1,0(v0)
    2374:	27c2008c 	addiu	v0,s8,140
    2378:	00602825 	move	a1,v1
    237c:	00402025 	move	a0,v0
    2380:	8f8280cc 	lw	v0,-32564(gp)
    2384:	0040c825 	move	t9,v0
    2388:	0320f809 	jalr	t9
    238c:	00000000 	nop
    2390:	8fdc0018 	lw	gp,24(s8)
			break;
    2394:	10000022 	b	2420 <main+0x1a8>
    2398:	00000000 	nop

			case 'd':
				decode = true;
    239c:	24020001 	li	v0,1
    23a0:	a3c20020 	sb	v0,32(s8)
			break;
    23a4:	1000001e 	b	2420 <main+0x1a8>
    23a8:	00000000 	nop

			case 'h':
				if(!pidio_info){
    23ac:	93c20021 	lbu	v0,33(s8)
    23b0:	38420001 	xori	v0,v0,0x1
    23b4:	304200ff 	andi	v0,v0,0xff
    23b8:	10400019 	beqz	v0,2420 <main+0x1a8>
    23bc:	00000000 	nop
					mostrar_ayudas();
    23c0:	8f828044 	lw	v0,-32700(gp)
    23c4:	0040c825 	move	t9,v0
    23c8:	0411ff02 	bal	1fd4 <mostrar_ayudas>
    23cc:	00000000 	nop
    23d0:	8fdc0018 	lw	gp,24(s8)
					pidio_info = true;
    23d4:	24020001 	li	v0,1
    23d8:	a3c20021 	sb	v0,33(s8)
				}
			break;
    23dc:	10000010 	b	2420 <main+0x1a8>
    23e0:	00000000 	nop

			case 'v':
				if(!pidio_info){
    23e4:	93c20021 	lbu	v0,33(s8)
    23e8:	38420001 	xori	v0,v0,0x1
    23ec:	304200ff 	andi	v0,v0,0xff
    23f0:	1040000b 	beqz	v0,2420 <main+0x1a8>
    23f4:	00000000 	nop
					pidio_info = true;
    23f8:	24020001 	li	v0,1
    23fc:	a3c20021 	sb	v0,33(s8)
					mostrar_version();
    2400:	8f828048 	lw	v0,-32696(gp)
    2404:	0040c825 	move	t9,v0
    2408:	0411ff85 	bal	2220 <mostrar_version>
    240c:	00000000 	nop
    2410:	8fdc0018 	lw	gp,24(s8)
				}
			break;
    2414:	10000002 	b	2420 <main+0x1a8>
    2418:	00000000 	nop

			default:
			break;
    241c:	00000000 	nop
	while((opt = getopt_long(argc, argv, "i:o:dvh",long_options,NULL)) != -1) {
    2420:	afa00010 	sw	zero,16(sp)
    2424:	8f828028 	lw	v0,-32728(gp)
    2428:	244734d0 	addiu	a3,v0,13520
    242c:	8f828030 	lw	v0,-32720(gp)
    2430:	244633c8 	addiu	a2,v0,13256
    2434:	8fc500fc 	lw	a1,252(s8)
    2438:	8fc400f8 	lw	a0,248(s8)
    243c:	8f8280c0 	lw	v0,-32576(gp)
    2440:	0040c825 	move	t9,v0
    2444:	0320f809 	jalr	t9
    2448:	00000000 	nop
    244c:	8fdc0018 	lw	gp,24(s8)
    2450:	afc20024 	sw	v0,36(s8)
    2454:	8fc30024 	lw	v1,36(s8)
    2458:	2402ffff 	li	v0,-1
    245c:	1462ffaa 	bne	v1,v0,2308 <main+0x90>
    2460:	00000000 	nop
		}
	}
	
	if(pidio_info){
    2464:	93c20021 	lbu	v0,33(s8)
    2468:	10400004 	beqz	v0,247c <main+0x204>
    246c:	00000000 	nop
		return 0;
    2470:	00001025 	move	v0,zero
    2474:	1000007b 	b	2664 <main+0x3ec>
    2478:	00000000 	nop
	}
	if(decode){
    247c:	93c20020 	lbu	v0,32(s8)
    2480:	1040003d 	beqz	v0,2578 <main+0x300>
    2484:	00000000 	nop
		if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) == 0){
    2488:	27c20028 	addiu	v0,s8,40
    248c:	80420000 	lb	v0,0(v0)
    2490:	1440000c 	bnez	v0,24c4 <main+0x24c>
    2494:	00000000 	nop
    2498:	27c2008c 	addiu	v0,s8,140
    249c:	80420000 	lb	v0,0(v0)
    24a0:	14400008 	bnez	v0,24c4 <main+0x24c>
    24a4:	00000000 	nop
			decodificar_stdin_stdout();
    24a8:	8f82804c 	lw	v0,-32692(gp)
    24ac:	0040c825 	move	t9,v0
    24b0:	0411fbdf 	bal	1430 <decodificar_stdin_stdout>
    24b4:	00000000 	nop
    24b8:	8fdc0018 	lw	gp,24(s8)
    24bc:	10000068 	b	2660 <main+0x3e8>
    24c0:	00000000 	nop
		}else if(strlen(archivo_entrada) != 0 && strlen(archivo_salida) == 0){
    24c4:	27c20028 	addiu	v0,s8,40
    24c8:	80420000 	lb	v0,0(v0)
    24cc:	1040000e 	beqz	v0,2508 <main+0x290>
    24d0:	00000000 	nop
    24d4:	27c2008c 	addiu	v0,s8,140
    24d8:	80420000 	lb	v0,0(v0)
    24dc:	1440000a 	bnez	v0,2508 <main+0x290>
    24e0:	00000000 	nop
			decodificar_archivo_stdout(archivo_entrada);
    24e4:	27c20028 	addiu	v0,s8,40
    24e8:	00402025 	move	a0,v0
    24ec:	8f828050 	lw	v0,-32688(gp)
    24f0:	0040c825 	move	t9,v0
    24f4:	0411fad0 	bal	1038 <decodificar_archivo_stdout>
    24f8:	00000000 	nop
    24fc:	8fdc0018 	lw	gp,24(s8)
    2500:	10000057 	b	2660 <main+0x3e8>
    2504:	00000000 	nop
		}else if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) != 0){
    2508:	27c20028 	addiu	v0,s8,40
    250c:	80420000 	lb	v0,0(v0)
    2510:	1440000e 	bnez	v0,254c <main+0x2d4>
    2514:	00000000 	nop
    2518:	27c2008c 	addiu	v0,s8,140
    251c:	80420000 	lb	v0,0(v0)
    2520:	1040000a 	beqz	v0,254c <main+0x2d4>
    2524:	00000000 	nop
			decodificar_stdin_archivo(archivo_salida);
    2528:	27c2008c 	addiu	v0,s8,140
    252c:	00402025 	move	a0,v0
    2530:	8f828054 	lw	v0,-32684(gp)
    2534:	0040c825 	move	t9,v0
    2538:	0411fb42 	bal	1244 <decodificar_stdin_archivo>
    253c:	00000000 	nop
    2540:	8fdc0018 	lw	gp,24(s8)
    2544:	10000046 	b	2660 <main+0x3e8>
    2548:	00000000 	nop
		}else{
			decodificar_archivo_archivo(archivo_entrada, archivo_salida);
    254c:	27c3008c 	addiu	v1,s8,140
    2550:	27c20028 	addiu	v0,s8,40
    2554:	00602825 	move	a1,v1
    2558:	00402025 	move	a0,v0
    255c:	8f828058 	lw	v0,-32680(gp)
    2560:	0040c825 	move	t9,v0
    2564:	0411fa01 	bal	d6c <decodificar_archivo_archivo>
    2568:	00000000 	nop
    256c:	8fdc0018 	lw	gp,24(s8)
    2570:	1000003b 	b	2660 <main+0x3e8>
    2574:	00000000 	nop
		}
	}else{
		if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) == 0){
    2578:	27c20028 	addiu	v0,s8,40
    257c:	80420000 	lb	v0,0(v0)
    2580:	1440000c 	bnez	v0,25b4 <main+0x33c>
    2584:	00000000 	nop
    2588:	27c2008c 	addiu	v0,s8,140
    258c:	80420000 	lb	v0,0(v0)
    2590:	14400008 	bnez	v0,25b4 <main+0x33c>
    2594:	00000000 	nop
			codificar_stdin_stdout();
    2598:	8f82805c 	lw	v0,-32676(gp)
    259c:	0040c825 	move	t9,v0
    25a0:	0411fe17 	bal	1e00 <codificar_stdin_stdout>
    25a4:	00000000 	nop
    25a8:	8fdc0018 	lw	gp,24(s8)
    25ac:	1000002c 	b	2660 <main+0x3e8>
    25b0:	00000000 	nop
		}else if(strlen(archivo_entrada) != 0 && strlen(archivo_salida) == 0){
    25b4:	27c20028 	addiu	v0,s8,40
    25b8:	80420000 	lb	v0,0(v0)
    25bc:	1040000e 	beqz	v0,25f8 <main+0x380>
    25c0:	00000000 	nop
    25c4:	27c2008c 	addiu	v0,s8,140
    25c8:	80420000 	lb	v0,0(v0)
    25cc:	1440000a 	bnez	v0,25f8 <main+0x380>
    25d0:	00000000 	nop
			codificar_archivo_stdout(archivo_entrada);
    25d4:	27c20028 	addiu	v0,s8,40
    25d8:	00402025 	move	a0,v0
    25dc:	8f828060 	lw	v0,-32672(gp)
    25e0:	0040c825 	move	t9,v0
    25e4:	0411fce9 	bal	198c <codificar_archivo_stdout>
    25e8:	00000000 	nop
    25ec:	8fdc0018 	lw	gp,24(s8)
    25f0:	1000001b 	b	2660 <main+0x3e8>
    25f4:	00000000 	nop
		}else if(strlen(archivo_entrada) == 0 && strlen(archivo_salida) != 0){
    25f8:	27c20028 	addiu	v0,s8,40
    25fc:	80420000 	lb	v0,0(v0)
    2600:	1440000e 	bnez	v0,263c <main+0x3c4>
    2604:	00000000 	nop
    2608:	27c2008c 	addiu	v0,s8,140
    260c:	80420000 	lb	v0,0(v0)
    2610:	1040000a 	beqz	v0,263c <main+0x3c4>
    2614:	00000000 	nop
			codificar_stdin_archivo(archivo_salida);
    2618:	27c2008c 	addiu	v0,s8,140
    261c:	00402025 	move	a0,v0
    2620:	8f828064 	lw	v0,-32668(gp)
    2624:	0040c825 	move	t9,v0
    2628:	0411fd5b 	bal	1b98 <codificar_stdin_archivo>
    262c:	00000000 	nop
    2630:	8fdc0018 	lw	gp,24(s8)
    2634:	1000000a 	b	2660 <main+0x3e8>
    2638:	00000000 	nop
		}else{
			codificar_archivo_archivo(archivo_entrada, archivo_salida);
    263c:	27c3008c 	addiu	v1,s8,140
    2640:	27c20028 	addiu	v0,s8,40
    2644:	00602825 	move	a1,v1
    2648:	00402025 	move	a0,v0
    264c:	8f828068 	lw	v0,-32664(gp)
    2650:	0040c825 	move	t9,v0
    2654:	0411fc1a 	bal	16c0 <codificar_archivo_archivo>
    2658:	00000000 	nop
    265c:	8fdc0018 	lw	gp,24(s8)
		}
	}		
	return 0;
    2660:	00001025 	move	v0,zero
}
    2664:	03c0e825 	move	sp,s8
    2668:	8fbf00f4 	lw	ra,244(sp)
    266c:	8fbe00f0 	lw	s8,240(sp)
    2670:	27bd00f8 	addiu	sp,sp,248
    2674:	03e00008 	jr	ra
    2678:	00000000 	nop
    267c:	00000000 	nop

00002680 <codificador64_puntual>:
                                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                                'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                                'w', 'x', 'y', 'z', '0', '1', '2', '3',
                                '4', '5', '6', '7', '8', '9', '+', '/'};

char codificador64_puntual(unsigned char original){
    2680:	3c1c0002 	lui	gp,0x2
    2684:	279c8ef0 	addiu	gp,gp,-28944
    2688:	0399e021 	addu	gp,gp,t9
    268c:	27bdffe8 	addiu	sp,sp,-24
    2690:	afbe0014 	sw	s8,20(sp)
    2694:	03a0f025 	move	s8,sp
    2698:	afbc0000 	sw	gp,0(sp)
    269c:	00801025 	move	v0,a0
    26a0:	a3c20018 	sb	v0,24(s8)
	int shifteado = original >> 2;
    26a4:	93c20018 	lbu	v0,24(s8)
    26a8:	00021082 	srl	v0,v0,0x2
    26ac:	304200ff 	andi	v0,v0,0xff
    26b0:	afc20008 	sw	v0,8(s8)
	char letra = encoding_table[shifteado];
    26b4:	8f828028 	lw	v0,-32728(gp)
    26b8:	24433530 	addiu	v1,v0,13616
    26bc:	8fc20008 	lw	v0,8(s8)
    26c0:	00621021 	addu	v0,v1,v0
    26c4:	90420000 	lbu	v0,0(v0)
    26c8:	a3c2000c 	sb	v0,12(s8)
	return letra;
    26cc:	83c2000c 	lb	v0,12(s8)
}
    26d0:	03c0e825 	move	sp,s8
    26d4:	8fbe0014 	lw	s8,20(sp)
    26d8:	27bd0018 	addiu	sp,sp,24
    26dc:	03e00008 	jr	ra
    26e0:	00000000 	nop

000026e4 <codificador64_3Bytes>:

 void codificador64_3Bytes(unsigned char letras_a_codificar[4], char* destino){
    26e4:	3c1c0002 	lui	gp,0x2
    26e8:	279c8e8c 	addiu	gp,gp,-29044
    26ec:	0399e021 	addu	gp,gp,t9
    26f0:	27bdffd0 	addiu	sp,sp,-48
    26f4:	afbf002c 	sw	ra,44(sp)
    26f8:	afbe0028 	sw	s8,40(sp)
    26fc:	03a0f025 	move	s8,sp
    2700:	afbc0010 	sw	gp,16(sp)
    2704:	afc40030 	sw	a0,48(s8)
    2708:	afc50034 	sw	a1,52(s8)

	size_t tamanio_palabra = strlen((char*)letras_a_codificar);
    270c:	8fc40030 	lw	a0,48(s8)
    2710:	8f8280bc 	lw	v0,-32580(gp)
    2714:	0040c825 	move	t9,v0
    2718:	0320f809 	jalr	t9
    271c:	00000000 	nop
    2720:	8fdc0010 	lw	gp,16(s8)
    2724:	afc2001c 	sw	v0,28(s8)
	unsigned int numero = *((unsigned int*) letras_a_codificar);
    2728:	8fc20030 	lw	v0,48(s8)
    272c:	8c420000 	lw	v0,0(v0)
    2730:	afc20024 	sw	v0,36(s8)
 	for(int i = 0; i <= tamanio_palabra; i++){
    2734:	afc00018 	sw	zero,24(s8)
    2738:	10000015 	b	2790 <codificador64_3Bytes+0xac>
    273c:	00000000 	nop
		char primerchar = codificador64_puntual(((unsigned char*)(&numero))[0]);
    2740:	27c20024 	addiu	v0,s8,36
    2744:	90420000 	lbu	v0,0(v0)
    2748:	00402025 	move	a0,v0
    274c:	8f82806c 	lw	v0,-32660(gp)
    2750:	0040c825 	move	t9,v0
    2754:	0411ffca 	bal	2680 <codificador64_puntual>
    2758:	00000000 	nop
    275c:	8fdc0010 	lw	gp,16(s8)
    2760:	a3c20020 	sb	v0,32(s8)
		numero = numero << 6;
    2764:	8fc20024 	lw	v0,36(s8)
    2768:	00021180 	sll	v0,v0,0x6
    276c:	afc20024 	sw	v0,36(s8)
		destino[i] = primerchar;
    2770:	8fc20018 	lw	v0,24(s8)
    2774:	8fc30034 	lw	v1,52(s8)
    2778:	00621021 	addu	v0,v1,v0
    277c:	93c30020 	lbu	v1,32(s8)
    2780:	a0430000 	sb	v1,0(v0)
 	for(int i = 0; i <= tamanio_palabra; i++){
    2784:	8fc20018 	lw	v0,24(s8)
    2788:	24420001 	addiu	v0,v0,1
    278c:	afc20018 	sw	v0,24(s8)
    2790:	8fc30018 	lw	v1,24(s8)
    2794:	8fc2001c 	lw	v0,28(s8)
    2798:	0043102b 	sltu	v0,v0,v1
    279c:	1040ffe8 	beqz	v0,2740 <codificador64_3Bytes+0x5c>
    27a0:	00000000 	nop
 	}
	if(tamanio_palabra == 2){
    27a4:	8fc3001c 	lw	v1,28(s8)
    27a8:	24020002 	li	v0,2
    27ac:	14620007 	bne	v1,v0,27cc <codificador64_3Bytes+0xe8>
    27b0:	00000000 	nop
		destino[3] = '=';
    27b4:	8fc20034 	lw	v0,52(s8)
    27b8:	24420003 	addiu	v0,v0,3
    27bc:	2403003d 	li	v1,61
    27c0:	a0430000 	sb	v1,0(v0)
    27c4:	1000000d 	b	27fc <codificador64_3Bytes+0x118>
    27c8:	00000000 	nop
	}else if(tamanio_palabra == 1){
    27cc:	8fc3001c 	lw	v1,28(s8)
    27d0:	24020001 	li	v0,1
    27d4:	14620009 	bne	v1,v0,27fc <codificador64_3Bytes+0x118>
    27d8:	00000000 	nop
		destino[3] = '=';
    27dc:	8fc20034 	lw	v0,52(s8)
    27e0:	24420003 	addiu	v0,v0,3
    27e4:	2403003d 	li	v1,61
    27e8:	a0430000 	sb	v1,0(v0)
		destino[2] = '=';
    27ec:	8fc20034 	lw	v0,52(s8)
    27f0:	24420002 	addiu	v0,v0,2
    27f4:	2403003d 	li	v1,61
    27f8:	a0430000 	sb	v1,0(v0)
	}
 	destino[4] = '\0';
    27fc:	8fc20034 	lw	v0,52(s8)
    2800:	24420004 	addiu	v0,v0,4
    2804:	a0400000 	sb	zero,0(v0)
}
    2808:	00000000 	nop
    280c:	03c0e825 	move	sp,s8
    2810:	8fbf002c 	lw	ra,44(sp)
    2814:	8fbe0028 	lw	s8,40(sp)
    2818:	27bd0030 	addiu	sp,sp,48
    281c:	03e00008 	jr	ra
    2820:	00000000 	nop

00002824 <codificador64>:

void codificador64(unsigned char* palabra, char* palabra_nueva){
    2824:	3c1c0002 	lui	gp,0x2
    2828:	279c8d4c 	addiu	gp,gp,-29364
    282c:	0399e021 	addu	gp,gp,t9
    2830:	27bdffc0 	addiu	sp,sp,-64
    2834:	afbf003c 	sw	ra,60(sp)
    2838:	afbe0038 	sw	s8,56(sp)
    283c:	03a0f025 	move	s8,sp
    2840:	afbc0010 	sw	gp,16(sp)
    2844:	afc40040 	sw	a0,64(s8)
    2848:	afc50044 	sw	a1,68(s8)
	
	size_t tope;
	size_t tamanio_palabra = strlen((char*)palabra);
    284c:	8fc40040 	lw	a0,64(s8)
    2850:	8f8280bc 	lw	v0,-32580(gp)
    2854:	0040c825 	move	t9,v0
    2858:	0320f809 	jalr	t9
    285c:	00000000 	nop
    2860:	8fdc0010 	lw	gp,16(s8)
    2864:	afc20020 	sw	v0,32(s8)
	if(tamanio_palabra%3 == 0)
    2868:	8fc40020 	lw	a0,32(s8)
    286c:	3c02aaaa 	lui	v0,0xaaaa
    2870:	3442aaab 	ori	v0,v0,0xaaab
    2874:	00820019 	multu	a0,v0
    2878:	00001010 	mfhi	v0
    287c:	00021842 	srl	v1,v0,0x1
    2880:	00601025 	move	v0,v1
    2884:	00021040 	sll	v0,v0,0x1
    2888:	00431021 	addu	v0,v0,v1
    288c:	00821823 	subu	v1,a0,v0
    2890:	14600006 	bnez	v1,28ac <codificador64+0x88>
    2894:	00000000 	nop
		tope = tamanio_palabra + 1;
    2898:	8fc20020 	lw	v0,32(s8)
    289c:	24420001 	addiu	v0,v0,1
    28a0:	afc20018 	sw	v0,24(s8)
    28a4:	10000016 	b	2900 <codificador64+0xdc>
    28a8:	00000000 	nop
	else if(tamanio_palabra%3 == 1)
    28ac:	8fc40020 	lw	a0,32(s8)
    28b0:	3c02aaaa 	lui	v0,0xaaaa
    28b4:	3442aaab 	ori	v0,v0,0xaaab
    28b8:	00820019 	multu	a0,v0
    28bc:	00001010 	mfhi	v0
    28c0:	00021842 	srl	v1,v0,0x1
    28c4:	00601025 	move	v0,v1
    28c8:	00021040 	sll	v0,v0,0x1
    28cc:	00431021 	addu	v0,v0,v1
    28d0:	00821823 	subu	v1,a0,v0
    28d4:	24020001 	li	v0,1
    28d8:	14620006 	bne	v1,v0,28f4 <codificador64+0xd0>
    28dc:	00000000 	nop
		tope = tamanio_palabra + 3;
    28e0:	8fc20020 	lw	v0,32(s8)
    28e4:	24420003 	addiu	v0,v0,3
    28e8:	afc20018 	sw	v0,24(s8)
    28ec:	10000004 	b	2900 <codificador64+0xdc>
    28f0:	00000000 	nop
	else
		tope = tamanio_palabra + 2;
    28f4:	8fc20020 	lw	v0,32(s8)
    28f8:	24420002 	addiu	v0,v0,2
    28fc:	afc20018 	sw	v0,24(s8)

	unsigned char* palabra_extendida = calloc(tope, sizeof(unsigned char));
    2900:	24050001 	li	a1,1
    2904:	8fc40018 	lw	a0,24(s8)
    2908:	8f828094 	lw	v0,-32620(gp)
    290c:	0040c825 	move	t9,v0
    2910:	0320f809 	jalr	t9
    2914:	00000000 	nop
    2918:	8fdc0010 	lw	gp,16(s8)
    291c:	afc20024 	sw	v0,36(s8)
	strcpy((char*)palabra_extendida, (char*) palabra);
    2920:	8fc50040 	lw	a1,64(s8)
    2924:	8fc40024 	lw	a0,36(s8)
    2928:	8f8280cc 	lw	v0,-32564(gp)
    292c:	0040c825 	move	t9,v0
    2930:	0320f809 	jalr	t9
    2934:	00000000 	nop
    2938:	8fdc0010 	lw	gp,16(s8)

	unsigned char buffer[4];
	buffer[3] = '\0';
    293c:	a3c0002b 	sb	zero,43(s8)
	char buffer64[5];
	for(int i = 0; i < tope - 1; i += 3){
    2940:	afc0001c 	sw	zero,28(s8)
    2944:	10000026 	b	29e0 <codificador64+0x1bc>
    2948:	00000000 	nop
		buffer[0] = palabra_extendida[i];
    294c:	8fc2001c 	lw	v0,28(s8)
    2950:	8fc30024 	lw	v1,36(s8)
    2954:	00621021 	addu	v0,v1,v0
    2958:	90420000 	lbu	v0,0(v0)
    295c:	a3c20028 	sb	v0,40(s8)
		buffer[1] = palabra_extendida[i+1];
    2960:	8fc2001c 	lw	v0,28(s8)
    2964:	24420001 	addiu	v0,v0,1
    2968:	8fc30024 	lw	v1,36(s8)
    296c:	00621021 	addu	v0,v1,v0
    2970:	90420000 	lbu	v0,0(v0)
    2974:	a3c20029 	sb	v0,41(s8)
		buffer[2] = palabra_extendida[i+2];
    2978:	8fc2001c 	lw	v0,28(s8)
    297c:	24420002 	addiu	v0,v0,2
    2980:	8fc30024 	lw	v1,36(s8)
    2984:	00621021 	addu	v0,v1,v0
    2988:	90420000 	lbu	v0,0(v0)
    298c:	a3c2002a 	sb	v0,42(s8)

		codificador64_3Bytes(buffer, buffer64);
    2990:	27c3002c 	addiu	v1,s8,44
    2994:	27c20028 	addiu	v0,s8,40
    2998:	00602825 	move	a1,v1
    299c:	00402025 	move	a0,v0
    29a0:	8f828070 	lw	v0,-32656(gp)
    29a4:	0040c825 	move	t9,v0
    29a8:	0411ff4e 	bal	26e4 <codificador64_3Bytes>
    29ac:	00000000 	nop
    29b0:	8fdc0010 	lw	gp,16(s8)
		strcat(palabra_nueva, buffer64);
    29b4:	27c2002c 	addiu	v0,s8,44
    29b8:	00402825 	move	a1,v0
    29bc:	8fc40044 	lw	a0,68(s8)
    29c0:	8f8280d4 	lw	v0,-32556(gp)
    29c4:	0040c825 	move	t9,v0
    29c8:	0320f809 	jalr	t9
    29cc:	00000000 	nop
    29d0:	8fdc0010 	lw	gp,16(s8)
	for(int i = 0; i < tope - 1; i += 3){
    29d4:	8fc2001c 	lw	v0,28(s8)
    29d8:	24420003 	addiu	v0,v0,3
    29dc:	afc2001c 	sw	v0,28(s8)
    29e0:	8fc20018 	lw	v0,24(s8)
    29e4:	2443ffff 	addiu	v1,v0,-1
    29e8:	8fc2001c 	lw	v0,28(s8)
    29ec:	0043102b 	sltu	v0,v0,v1
    29f0:	1440ffd6 	bnez	v0,294c <codificador64+0x128>
    29f4:	00000000 	nop
	}

	free(palabra_extendida);
    29f8:	8fc40024 	lw	a0,36(s8)
    29fc:	8f8280e0 	lw	v0,-32544(gp)
    2a00:	0040c825 	move	t9,v0
    2a04:	0320f809 	jalr	t9
    2a08:	00000000 	nop
    2a0c:	8fdc0010 	lw	gp,16(s8)
}
    2a10:	00000000 	nop
    2a14:	03c0e825 	move	sp,s8
    2a18:	8fbf003c 	lw	ra,60(sp)
    2a1c:	8fbe0038 	lw	s8,56(sp)
    2a20:	27bd0040 	addiu	sp,sp,64
    2a24:	03e00008 	jr	ra
    2a28:	00000000 	nop

00002a2c <optener_posicion64>:
	DECOUDER

*/


unsigned int optener_posicion64(unsigned char original){
    2a2c:	3c1c0002 	lui	gp,0x2
    2a30:	279c8b44 	addiu	gp,gp,-29884
    2a34:	0399e021 	addu	gp,gp,t9
    2a38:	27bdffd8 	addiu	sp,sp,-40
    2a3c:	afbf0024 	sw	ra,36(sp)
    2a40:	afbe0020 	sw	s8,32(sp)
    2a44:	03a0f025 	move	s8,sp
    2a48:	afbc0010 	sw	gp,16(sp)
    2a4c:	00801025 	move	v0,a0
    2a50:	a3c20028 	sb	v0,40(s8)
	
	unsigned int valor = (unsigned int) original;
    2a54:	93c20028 	lbu	v0,40(s8)
    2a58:	afc2001c 	sw	v0,28(s8)
	unsigned int posicion = 0;
    2a5c:	afc00018 	sw	zero,24(s8)

	if( valor > 96 && valor < 123){//MINUSCULAS
    2a60:	8fc2001c 	lw	v0,28(s8)
    2a64:	2c420061 	sltiu	v0,v0,97
    2a68:	1440000a 	bnez	v0,2a94 <optener_posicion64+0x68>
    2a6c:	00000000 	nop
    2a70:	8fc2001c 	lw	v0,28(s8)
    2a74:	2c42007b 	sltiu	v0,v0,123
    2a78:	10400006 	beqz	v0,2a94 <optener_posicion64+0x68>
    2a7c:	00000000 	nop
			
			posicion = (unsigned int) valor - 71;
    2a80:	8fc2001c 	lw	v0,28(s8)
    2a84:	2442ffb9 	addiu	v0,v0,-71
    2a88:	afc20018 	sw	v0,24(s8)
    2a8c:	10000037 	b	2b6c <optener_posicion64+0x140>
    2a90:	00000000 	nop


	}else if(valor> 64 && valor < 91){//MAYUSCULAS
    2a94:	8fc2001c 	lw	v0,28(s8)
    2a98:	2c420041 	sltiu	v0,v0,65
    2a9c:	1440000a 	bnez	v0,2ac8 <optener_posicion64+0x9c>
    2aa0:	00000000 	nop
    2aa4:	8fc2001c 	lw	v0,28(s8)
    2aa8:	2c42005b 	sltiu	v0,v0,91
    2aac:	10400006 	beqz	v0,2ac8 <optener_posicion64+0x9c>
    2ab0:	00000000 	nop
			
			posicion = (unsigned int) valor - 65;
    2ab4:	8fc2001c 	lw	v0,28(s8)
    2ab8:	2442ffbf 	addiu	v0,v0,-65
    2abc:	afc20018 	sw	v0,24(s8)
    2ac0:	1000002a 	b	2b6c <optener_posicion64+0x140>
    2ac4:	00000000 	nop
	}else if(valor > 47 && valor < 58){
    2ac8:	8fc2001c 	lw	v0,28(s8)
    2acc:	2c420030 	sltiu	v0,v0,48
    2ad0:	1440000a 	bnez	v0,2afc <optener_posicion64+0xd0>
    2ad4:	00000000 	nop
    2ad8:	8fc2001c 	lw	v0,28(s8)
    2adc:	2c42003a 	sltiu	v0,v0,58
    2ae0:	10400006 	beqz	v0,2afc <optener_posicion64+0xd0>
    2ae4:	00000000 	nop
			posicion = (unsigned int) valor +4;
    2ae8:	8fc2001c 	lw	v0,28(s8)
    2aec:	24420004 	addiu	v0,v0,4
    2af0:	afc20018 	sw	v0,24(s8)
    2af4:	1000001d 	b	2b6c <optener_posicion64+0x140>
    2af8:	00000000 	nop
	}else if(valor == 47){ // +
    2afc:	8fc3001c 	lw	v1,28(s8)
    2b00:	2402002f 	li	v0,47
    2b04:	14620005 	bne	v1,v0,2b1c <optener_posicion64+0xf0>
    2b08:	00000000 	nop
	 		posicion = 63;
    2b0c:	2402003f 	li	v0,63
    2b10:	afc20018 	sw	v0,24(s8)
    2b14:	10000015 	b	2b6c <optener_posicion64+0x140>
    2b18:	00000000 	nop
	}else if(valor == 43){ ///
    2b1c:	8fc3001c 	lw	v1,28(s8)
    2b20:	2402002b 	li	v0,43
    2b24:	14620005 	bne	v1,v0,2b3c <optener_posicion64+0x110>
    2b28:	00000000 	nop
	 		posicion = 62;
    2b2c:	2402003e 	li	v0,62
    2b30:	afc20018 	sw	v0,24(s8)
    2b34:	1000000d 	b	2b6c <optener_posicion64+0x140>
    2b38:	00000000 	nop
	}else if(valor != 0){
    2b3c:	8fc2001c 	lw	v0,28(s8)
    2b40:	1040000a 	beqz	v0,2b6c <optener_posicion64+0x140>
    2b44:	00000000 	nop
		printf("\n El caracter: '%c' no es un caracter decodificable en base64. Compruebe la entrada.\n", original);
    2b48:	93c20028 	lbu	v0,40(s8)
    2b4c:	00402825 	move	a1,v0
    2b50:	8f828030 	lw	v0,-32720(gp)
    2b54:	24443450 	addiu	a0,v0,13392
    2b58:	8f8280e8 	lw	v0,-32536(gp)
    2b5c:	0040c825 	move	t9,v0
    2b60:	0320f809 	jalr	t9
    2b64:	00000000 	nop
    2b68:	8fdc0010 	lw	gp,16(s8)
	}


	return posicion;
    2b6c:	8fc20018 	lw	v0,24(s8)
}
    2b70:	03c0e825 	move	sp,s8
    2b74:	8fbf0024 	lw	ra,36(sp)
    2b78:	8fbe0020 	lw	s8,32(sp)
    2b7c:	27bd0028 	addiu	sp,sp,40
    2b80:	03e00008 	jr	ra
    2b84:	00000000 	nop

00002b88 <decodificador64_4Bytes>:




 void decodificador64_4Bytes(unsigned char letras_a_Decodificar[5], char* destino){
    2b88:	3c1c0002 	lui	gp,0x2
    2b8c:	279c89e8 	addiu	gp,gp,-30232
    2b90:	0399e021 	addu	gp,gp,t9
    2b94:	27bdffd8 	addiu	sp,sp,-40
    2b98:	afbf0024 	sw	ra,36(sp)
    2b9c:	afbe0020 	sw	s8,32(sp)
    2ba0:	03a0f025 	move	s8,sp
    2ba4:	afbc0010 	sw	gp,16(sp)
    2ba8:	afc40028 	sw	a0,40(s8)
    2bac:	afc5002c 	sw	a1,44(s8)

	unsigned int decodificado = 0;
    2bb0:	afc0001c 	sw	zero,28(s8)
	for(int x = 0 ; x < 4; x++){
    2bb4:	afc00018 	sw	zero,24(s8)
    2bb8:	10000015 	b	2c10 <decodificador64_4Bytes+0x88>
    2bbc:	00000000 	nop
	decodificado += optener_posicion64(letras_a_Decodificar[x]);
    2bc0:	8fc20018 	lw	v0,24(s8)
    2bc4:	8fc30028 	lw	v1,40(s8)
    2bc8:	00621021 	addu	v0,v1,v0
    2bcc:	90420000 	lbu	v0,0(v0)
    2bd0:	00402025 	move	a0,v0
    2bd4:	8f828074 	lw	v0,-32652(gp)
    2bd8:	0040c825 	move	t9,v0
    2bdc:	0411ff93 	bal	2a2c <optener_posicion64>
    2be0:	00000000 	nop
    2be4:	8fdc0010 	lw	gp,16(s8)
    2be8:	00401825 	move	v1,v0
    2bec:	8fc2001c 	lw	v0,28(s8)
    2bf0:	00621021 	addu	v0,v1,v0
    2bf4:	afc2001c 	sw	v0,28(s8)
	decodificado = decodificado << 6;
    2bf8:	8fc2001c 	lw	v0,28(s8)
    2bfc:	00021180 	sll	v0,v0,0x6
    2c00:	afc2001c 	sw	v0,28(s8)
	for(int x = 0 ; x < 4; x++){
    2c04:	8fc20018 	lw	v0,24(s8)
    2c08:	24420001 	addiu	v0,v0,1
    2c0c:	afc20018 	sw	v0,24(s8)
    2c10:	8fc20018 	lw	v0,24(s8)
    2c14:	28420004 	slti	v0,v0,4
    2c18:	1440ffe9 	bnez	v0,2bc0 <decodificador64_4Bytes+0x38>
    2c1c:	00000000 	nop
	}
	decodificado = decodificado << 2;
    2c20:	8fc2001c 	lw	v0,28(s8)
    2c24:	00021080 	sll	v0,v0,0x2
    2c28:	afc2001c 	sw	v0,28(s8)

	strcpy(destino, (char*)&decodificado);
    2c2c:	27c2001c 	addiu	v0,s8,28
    2c30:	00402825 	move	a1,v0
    2c34:	8fc4002c 	lw	a0,44(s8)
    2c38:	8f8280cc 	lw	v0,-32564(gp)
    2c3c:	0040c825 	move	t9,v0
    2c40:	0320f809 	jalr	t9
    2c44:	00000000 	nop
    2c48:	8fdc0010 	lw	gp,16(s8)


}
    2c4c:	00000000 	nop
    2c50:	03c0e825 	move	sp,s8
    2c54:	8fbf0024 	lw	ra,36(sp)
    2c58:	8fbe0020 	lw	s8,32(sp)
    2c5c:	27bd0028 	addiu	sp,sp,40
    2c60:	03e00008 	jr	ra
    2c64:	00000000 	nop

00002c68 <decodificador64>:

void decodificador64(unsigned char* palabra, char* palabra_nueva){
    2c68:	3c1c0002 	lui	gp,0x2
    2c6c:	279c8908 	addiu	gp,gp,-30456
    2c70:	0399e021 	addu	gp,gp,t9
    2c74:	27bdffc8 	addiu	sp,sp,-56
    2c78:	afbf0034 	sw	ra,52(sp)
    2c7c:	afbe0030 	sw	s8,48(sp)
    2c80:	03a0f025 	move	s8,sp
    2c84:	afbc0010 	sw	gp,16(sp)
    2c88:	afc40038 	sw	a0,56(s8)
    2c8c:	afc5003c 	sw	a1,60(s8)
	
	size_t tamanio_palabra = strlen((char*)palabra);
    2c90:	8fc40038 	lw	a0,56(s8)
    2c94:	8f8280bc 	lw	v0,-32580(gp)
    2c98:	0040c825 	move	t9,v0
    2c9c:	0320f809 	jalr	t9
    2ca0:	00000000 	nop
    2ca4:	8fdc0010 	lw	gp,16(s8)
    2ca8:	afc2001c 	sw	v0,28(s8)
	

	if(palabra[tamanio_palabra-1] == '='){
    2cac:	8fc2001c 	lw	v0,28(s8)
    2cb0:	2442ffff 	addiu	v0,v0,-1
    2cb4:	8fc30038 	lw	v1,56(s8)
    2cb8:	00621021 	addu	v0,v1,v0
    2cbc:	90430000 	lbu	v1,0(v0)
    2cc0:	2402003d 	li	v0,61
    2cc4:	14620013 	bne	v1,v0,2d14 <decodificador64+0xac>
    2cc8:	00000000 	nop
		palabra[tamanio_palabra-1] = '\0';
    2ccc:	8fc2001c 	lw	v0,28(s8)
    2cd0:	2442ffff 	addiu	v0,v0,-1
    2cd4:	8fc30038 	lw	v1,56(s8)
    2cd8:	00621021 	addu	v0,v1,v0
    2cdc:	a0400000 	sb	zero,0(v0)
	 	if(palabra[tamanio_palabra -2] == '=')
    2ce0:	8fc2001c 	lw	v0,28(s8)
    2ce4:	2442fffe 	addiu	v0,v0,-2
    2ce8:	8fc30038 	lw	v1,56(s8)
    2cec:	00621021 	addu	v0,v1,v0
    2cf0:	90430000 	lbu	v1,0(v0)
    2cf4:	2402003d 	li	v0,61
    2cf8:	14620006 	bne	v1,v0,2d14 <decodificador64+0xac>
    2cfc:	00000000 	nop
			palabra[tamanio_palabra - 2] = '\0';
    2d00:	8fc2001c 	lw	v0,28(s8)
    2d04:	2442fffe 	addiu	v0,v0,-2
    2d08:	8fc30038 	lw	v1,56(s8)
    2d0c:	00621021 	addu	v0,v1,v0
    2d10:	a0400000 	sb	zero,0(v0)
	}

	
	unsigned char buffer64[5];
	buffer64[4] = '\0';
    2d14:	a3c00024 	sb	zero,36(s8)
	char bufferNormal[5]; 
	for(int i = 0; i < tamanio_palabra - 1 ; i += 4){
    2d18:	afc00018 	sw	zero,24(s8)
    2d1c:	1000002c 	b	2dd0 <decodificador64+0x168>
    2d20:	00000000 	nop
		buffer64[0] = palabra[i];
    2d24:	8fc20018 	lw	v0,24(s8)
    2d28:	8fc30038 	lw	v1,56(s8)
    2d2c:	00621021 	addu	v0,v1,v0
    2d30:	90420000 	lbu	v0,0(v0)
    2d34:	a3c20020 	sb	v0,32(s8)
		buffer64[1] = palabra[i+1];
    2d38:	8fc20018 	lw	v0,24(s8)
    2d3c:	24420001 	addiu	v0,v0,1
    2d40:	8fc30038 	lw	v1,56(s8)
    2d44:	00621021 	addu	v0,v1,v0
    2d48:	90420000 	lbu	v0,0(v0)
    2d4c:	a3c20021 	sb	v0,33(s8)
		buffer64[2] = palabra[i+2];
    2d50:	8fc20018 	lw	v0,24(s8)
    2d54:	24420002 	addiu	v0,v0,2
    2d58:	8fc30038 	lw	v1,56(s8)
    2d5c:	00621021 	addu	v0,v1,v0
    2d60:	90420000 	lbu	v0,0(v0)
    2d64:	a3c20022 	sb	v0,34(s8)
		buffer64[3] = palabra[i+3];
    2d68:	8fc20018 	lw	v0,24(s8)
    2d6c:	24420003 	addiu	v0,v0,3
    2d70:	8fc30038 	lw	v1,56(s8)
    2d74:	00621021 	addu	v0,v1,v0
    2d78:	90420000 	lbu	v0,0(v0)
    2d7c:	a3c20023 	sb	v0,35(s8)

		decodificador64_4Bytes(buffer64, bufferNormal);
    2d80:	27c30028 	addiu	v1,s8,40
    2d84:	27c20020 	addiu	v0,s8,32
    2d88:	00602825 	move	a1,v1
    2d8c:	00402025 	move	a0,v0
    2d90:	8f828078 	lw	v0,-32648(gp)
    2d94:	0040c825 	move	t9,v0
    2d98:	0411ff7b 	bal	2b88 <decodificador64_4Bytes>
    2d9c:	00000000 	nop
    2da0:	8fdc0010 	lw	gp,16(s8)
		strcat(palabra_nueva, bufferNormal);
    2da4:	27c20028 	addiu	v0,s8,40
    2da8:	00402825 	move	a1,v0
    2dac:	8fc4003c 	lw	a0,60(s8)
    2db0:	8f8280d4 	lw	v0,-32556(gp)
    2db4:	0040c825 	move	t9,v0
    2db8:	0320f809 	jalr	t9
    2dbc:	00000000 	nop
    2dc0:	8fdc0010 	lw	gp,16(s8)
	for(int i = 0; i < tamanio_palabra - 1 ; i += 4){
    2dc4:	8fc20018 	lw	v0,24(s8)
    2dc8:	24420004 	addiu	v0,v0,4
    2dcc:	afc20018 	sw	v0,24(s8)
    2dd0:	8fc2001c 	lw	v0,28(s8)
    2dd4:	2443ffff 	addiu	v1,v0,-1
    2dd8:	8fc20018 	lw	v0,24(s8)
    2ddc:	0043102b 	sltu	v0,v0,v1
    2de0:	1440ffd0 	bnez	v0,2d24 <decodificador64+0xbc>
    2de4:	00000000 	nop
	}

}
    2de8:	00000000 	nop
    2dec:	03c0e825 	move	sp,s8
    2df0:	8fbf0034 	lw	ra,52(sp)
    2df4:	8fbe0030 	lw	s8,48(sp)
    2df8:	27bd0038 	addiu	sp,sp,56
    2dfc:	03e00008 	jr	ra
    2e00:	00000000 	nop
	...

00002e10 <mystrlen>:
.globl mystrlen
.ent mystrlen
mystrlen:
.frame fp, 16, ra
.set noreorder
.cpload t9
    2e10:	3c1c0002 	lui	gp,0x2
    2e14:	279c8760 	addiu	gp,gp,-30880
    2e18:	0399e021 	addu	gp,gp,t9
.set reorder
subu sp, sp, 16
    2e1c:	27bdfff0 	addiu	sp,sp,-16
.cprestore 0
    2e20:	afbc0000 	sw	gp,0(sp)

sw fp, 4(sp)
    2e24:	afbe0004 	sw	s8,4(sp)
move fp, sp
    2e28:	03a0f025 	move	s8,sp
li v0, 0
    2e2c:	24020000 	li	v0,0

00002e30 <mystrlen_loop>:
mystrlen_loop:
lb t0, 0(a0)
    2e30:	80880000 	lb	t0,0(a0)
beqz t0, mystrlen_return
    2e34:	11000005 	beqz	t0,2e4c <mystrlen_return>
    2e38:	00000000 	nop
addiu a0, a0, 1
    2e3c:	24840001 	addiu	a0,a0,1
addiu v0, v0, 1
    2e40:	24420001 	addiu	v0,v0,1
j mystrlen_loop
    2e44:	1000fffa 	b	2e30 <mystrlen_loop>
    2e48:	00000000 	nop

00002e4c <mystrlen_return>:
mystrlen_return:
lw fp, 4(sp)
    2e4c:	8fbe0004 	lw	s8,4(sp)
addu sp, sp, 16
    2e50:	27bd0010 	addiu	sp,sp,16
j ra
    2e54:	03e00008 	jr	ra
    2e58:	00000000 	nop
    2e5c:	00000000 	nop

00002e60 <__libc_csu_init>:
    2e60:	3c1c0002 	lui	gp,0x2
    2e64:	279c8710 	addiu	gp,gp,-30960
    2e68:	0399e021 	addu	gp,gp,t9
    2e6c:	27bdffc8 	addiu	sp,sp,-56
    2e70:	8f99807c 	lw	t9,-32644(gp)
    2e74:	afbc0010 	sw	gp,16(sp)
    2e78:	afb50030 	sw	s5,48(sp)
    2e7c:	00c0a825 	move	s5,a2
    2e80:	afb4002c 	sw	s4,44(sp)
    2e84:	00a0a025 	move	s4,a1
    2e88:	afb30028 	sw	s3,40(sp)
    2e8c:	00809825 	move	s3,a0
    2e90:	afb20024 	sw	s2,36(sp)
    2e94:	afb0001c 	sw	s0,28(sp)
    2e98:	afbf0034 	sw	ra,52(sp)
    2e9c:	0411f722 	bal	b28 <_init>
    2ea0:	afb10020 	sw	s1,32(sp)
    2ea4:	8fbc0010 	lw	gp,16(sp)
    2ea8:	8f908080 	lw	s0,-32640(gp)
    2eac:	8f928084 	lw	s2,-32636(gp)
    2eb0:	02509023 	subu	s2,s2,s0
    2eb4:	00129083 	sra	s2,s2,0x2
    2eb8:	12400009 	beqz	s2,2ee0 <__libc_csu_init+0x80>
    2ebc:	00008825 	move	s1,zero
    2ec0:	8e190000 	lw	t9,0(s0)
    2ec4:	26310001 	addiu	s1,s1,1
    2ec8:	02a03025 	move	a2,s5
    2ecc:	02802825 	move	a1,s4
    2ed0:	0320f809 	jalr	t9
    2ed4:	02602025 	move	a0,s3
    2ed8:	1651fff9 	bne	s2,s1,2ec0 <__libc_csu_init+0x60>
    2edc:	26100004 	addiu	s0,s0,4
    2ee0:	8fbf0034 	lw	ra,52(sp)
    2ee4:	8fb50030 	lw	s5,48(sp)
    2ee8:	8fb4002c 	lw	s4,44(sp)
    2eec:	8fb30028 	lw	s3,40(sp)
    2ef0:	8fb20024 	lw	s2,36(sp)
    2ef4:	8fb10020 	lw	s1,32(sp)
    2ef8:	8fb0001c 	lw	s0,28(sp)
    2efc:	03e00008 	jr	ra
    2f00:	27bd0038 	addiu	sp,sp,56

00002f04 <__libc_csu_fini>:
    2f04:	03e00008 	jr	ra
    2f08:	00000000 	nop
    2f0c:	00000000 	nop

Disassembly of section .MIPS.stubs:

00002f10 <_MIPS_STUBS_>:
    2f10:	8f998010 	lw	t9,-32752(gp)
    2f14:	03e07825 	move	t7,ra
    2f18:	0320f809 	jalr	t9
    2f1c:	24180030 	li	t8,48
    2f20:	8f998010 	lw	t9,-32752(gp)
    2f24:	03e07825 	move	t7,ra
    2f28:	0320f809 	jalr	t9
    2f2c:	2418002f 	li	t8,47
    2f30:	8f998010 	lw	t9,-32752(gp)
    2f34:	03e07825 	move	t7,ra
    2f38:	0320f809 	jalr	t9
    2f3c:	2418002e 	li	t8,46
    2f40:	8f998010 	lw	t9,-32752(gp)
    2f44:	03e07825 	move	t7,ra
    2f48:	0320f809 	jalr	t9
    2f4c:	2418002d 	li	t8,45
    2f50:	8f998010 	lw	t9,-32752(gp)
    2f54:	03e07825 	move	t7,ra
    2f58:	0320f809 	jalr	t9
    2f5c:	2418002c 	li	t8,44
    2f60:	8f998010 	lw	t9,-32752(gp)
    2f64:	03e07825 	move	t7,ra
    2f68:	0320f809 	jalr	t9
    2f6c:	2418002b 	li	t8,43
    2f70:	8f998010 	lw	t9,-32752(gp)
    2f74:	03e07825 	move	t7,ra
    2f78:	0320f809 	jalr	t9
    2f7c:	2418002a 	li	t8,42
    2f80:	8f998010 	lw	t9,-32752(gp)
    2f84:	03e07825 	move	t7,ra
    2f88:	0320f809 	jalr	t9
    2f8c:	24180029 	li	t8,41
    2f90:	8f998010 	lw	t9,-32752(gp)
    2f94:	03e07825 	move	t7,ra
    2f98:	0320f809 	jalr	t9
    2f9c:	24180028 	li	t8,40
    2fa0:	8f998010 	lw	t9,-32752(gp)
    2fa4:	03e07825 	move	t7,ra
    2fa8:	0320f809 	jalr	t9
    2fac:	24180026 	li	t8,38
    2fb0:	8f998010 	lw	t9,-32752(gp)
    2fb4:	03e07825 	move	t7,ra
    2fb8:	0320f809 	jalr	t9
    2fbc:	24180025 	li	t8,37
    2fc0:	8f998010 	lw	t9,-32752(gp)
    2fc4:	03e07825 	move	t7,ra
    2fc8:	0320f809 	jalr	t9
    2fcc:	24180024 	li	t8,36
    2fd0:	8f998010 	lw	t9,-32752(gp)
    2fd4:	03e07825 	move	t7,ra
    2fd8:	0320f809 	jalr	t9
    2fdc:	24180023 	li	t8,35
    2fe0:	8f998010 	lw	t9,-32752(gp)
    2fe4:	03e07825 	move	t7,ra
    2fe8:	0320f809 	jalr	t9
    2fec:	24180022 	li	t8,34
    2ff0:	8f998010 	lw	t9,-32752(gp)
    2ff4:	03e07825 	move	t7,ra
    2ff8:	0320f809 	jalr	t9
    2ffc:	24180021 	li	t8,33
    3000:	8f998010 	lw	t9,-32752(gp)
    3004:	03e07825 	move	t7,ra
    3008:	0320f809 	jalr	t9
    300c:	2418001f 	li	t8,31
    3010:	8f998010 	lw	t9,-32752(gp)
    3014:	03e07825 	move	t7,ra
    3018:	0320f809 	jalr	t9
    301c:	2418001e 	li	t8,30
    3020:	8f998010 	lw	t9,-32752(gp)
    3024:	03e07825 	move	t7,ra
    3028:	0320f809 	jalr	t9
    302c:	2418001b 	li	t8,27
	...

Disassembly of section .fini:

00003040 <_fini>:
    3040:	3c1c0002 	lui	gp,0x2
    3044:	279c8530 	addiu	gp,gp,-31440
    3048:	0399e021 	addu	gp,gp,t9
    304c:	27bdffe0 	addiu	sp,sp,-32
    3050:	afbc0010 	sw	gp,16(sp)
    3054:	afbf001c 	sw	ra,28(sp)
    3058:	8fbf001c 	lw	ra,28(sp)
    305c:	03e00008 	jr	ra
    3060:	27bd0020 	addiu	sp,sp,32
