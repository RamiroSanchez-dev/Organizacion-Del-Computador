
tp1:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

0000000000000900 <_init>:
 900:	48 83 ec 08          	sub    $0x8,%rsp
 904:	48 8b 05 dd 16 20 00 	mov    0x2016dd(%rip),%rax        # 201fe8 <__gmon_start__>
 90b:	48 85 c0             	test   %rax,%rax
 90e:	74 02                	je     912 <_init+0x12>
 910:	ff d0                	callq  *%rax
 912:	48 83 c4 08          	add    $0x8,%rsp
 916:	c3                   	retq   

Desensamblado de la sección .plt:

0000000000000920 <.plt>:
 920:	ff 35 42 16 20 00    	pushq  0x201642(%rip)        # 201f68 <_GLOBAL_OFFSET_TABLE_+0x8>
 926:	ff 25 44 16 20 00    	jmpq   *0x201644(%rip)        # 201f70 <_GLOBAL_OFFSET_TABLE_+0x10>
 92c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000930 <putchar@plt>:
 930:	ff 25 42 16 20 00    	jmpq   *0x201642(%rip)        # 201f78 <putchar@GLIBC_2.2.5>
 936:	68 00 00 00 00       	pushq  $0x0
 93b:	e9 e0 ff ff ff       	jmpq   920 <.plt>

0000000000000940 <__errno_location@plt>:
 940:	ff 25 3a 16 20 00    	jmpq   *0x20163a(%rip)        # 201f80 <__errno_location@GLIBC_2.2.5>
 946:	68 01 00 00 00       	pushq  $0x1
 94b:	e9 d0 ff ff ff       	jmpq   920 <.plt>

0000000000000950 <strcpy@plt>:
 950:	ff 25 32 16 20 00    	jmpq   *0x201632(%rip)        # 201f88 <strcpy@GLIBC_2.2.5>
 956:	68 02 00 00 00       	pushq  $0x2
 95b:	e9 c0 ff ff ff       	jmpq   920 <.plt>

0000000000000960 <puts@plt>:
 960:	ff 25 2a 16 20 00    	jmpq   *0x20162a(%rip)        # 201f90 <puts@GLIBC_2.2.5>
 966:	68 03 00 00 00       	pushq  $0x3
 96b:	e9 b0 ff ff ff       	jmpq   920 <.plt>

0000000000000970 <fclose@plt>:
 970:	ff 25 22 16 20 00    	jmpq   *0x201622(%rip)        # 201f98 <fclose@GLIBC_2.2.5>
 976:	68 04 00 00 00       	pushq  $0x4
 97b:	e9 a0 ff ff ff       	jmpq   920 <.plt>

0000000000000980 <__stack_chk_fail@plt>:
 980:	ff 25 1a 16 20 00    	jmpq   *0x20161a(%rip)        # 201fa0 <__stack_chk_fail@GLIBC_2.4>
 986:	68 05 00 00 00       	pushq  $0x5
 98b:	e9 90 ff ff ff       	jmpq   920 <.plt>

0000000000000990 <getopt_long@plt>:
 990:	ff 25 12 16 20 00    	jmpq   *0x201612(%rip)        # 201fa8 <getopt_long@GLIBC_2.2.5>
 996:	68 06 00 00 00       	pushq  $0x6
 99b:	e9 80 ff ff ff       	jmpq   920 <.plt>

00000000000009a0 <printf@plt>:
 9a0:	ff 25 0a 16 20 00    	jmpq   *0x20160a(%rip)        # 201fb0 <printf@GLIBC_2.2.5>
 9a6:	68 07 00 00 00       	pushq  $0x7
 9ab:	e9 70 ff ff ff       	jmpq   920 <.plt>

00000000000009b0 <fprintf@plt>:
 9b0:	ff 25 02 16 20 00    	jmpq   *0x201602(%rip)        # 201fb8 <fprintf@GLIBC_2.2.5>
 9b6:	68 08 00 00 00       	pushq  $0x8
 9bb:	e9 60 ff ff ff       	jmpq   920 <.plt>

00000000000009c0 <strtol@plt>:
 9c0:	ff 25 fa 15 20 00    	jmpq   *0x2015fa(%rip)        # 201fc0 <strtol@GLIBC_2.2.5>
 9c6:	68 09 00 00 00       	pushq  $0x9
 9cb:	e9 50 ff ff ff       	jmpq   920 <.plt>

00000000000009d0 <fopen@plt>:
 9d0:	ff 25 f2 15 20 00    	jmpq   *0x2015f2(%rip)        # 201fc8 <fopen@GLIBC_2.2.5>
 9d6:	68 0a 00 00 00       	pushq  $0xa
 9db:	e9 40 ff ff ff       	jmpq   920 <.plt>

00000000000009e0 <fwrite@plt>:
 9e0:	ff 25 ea 15 20 00    	jmpq   *0x2015ea(%rip)        # 201fd0 <fwrite@GLIBC_2.2.5>
 9e6:	68 0b 00 00 00       	pushq  $0xb
 9eb:	e9 30 ff ff ff       	jmpq   920 <.plt>

Desensamblado de la sección .plt.got:

00000000000009f0 <__cxa_finalize@plt>:
 9f0:	ff 25 02 16 20 00    	jmpq   *0x201602(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 9f6:	66 90                	xchg   %ax,%ax

Desensamblado de la sección .text:

0000000000000a00 <_start>:
     a00:	31 ed                	xor    %ebp,%ebp
     a02:	49 89 d1             	mov    %rdx,%r9
     a05:	5e                   	pop    %rsi
     a06:	48 89 e2             	mov    %rsp,%rdx
     a09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     a0d:	50                   	push   %rax
     a0e:	54                   	push   %rsp
     a0f:	4c 8d 05 4a 09 00 00 	lea    0x94a(%rip),%r8        # 1360 <__libc_csu_fini>
     a16:	48 8d 0d d3 08 00 00 	lea    0x8d3(%rip),%rcx        # 12f0 <__libc_csu_init>
     a1d:	48 8d 3d 15 06 00 00 	lea    0x615(%rip),%rdi        # 1039 <main>
     a24:	ff 15 b6 15 20 00    	callq  *0x2015b6(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
     a2a:	f4                   	hlt    
     a2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a30 <deregister_tm_clones>:
     a30:	48 8d 3d a9 16 20 00 	lea    0x2016a9(%rip),%rdi        # 2020e0 <stdout@@GLIBC_2.2.5>
     a37:	55                   	push   %rbp
     a38:	48 8d 05 a1 16 20 00 	lea    0x2016a1(%rip),%rax        # 2020e0 <stdout@@GLIBC_2.2.5>
     a3f:	48 39 f8             	cmp    %rdi,%rax
     a42:	48 89 e5             	mov    %rsp,%rbp
     a45:	74 19                	je     a60 <deregister_tm_clones+0x30>
     a47:	48 8b 05 8a 15 20 00 	mov    0x20158a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
     a4e:	48 85 c0             	test   %rax,%rax
     a51:	74 0d                	je     a60 <deregister_tm_clones+0x30>
     a53:	5d                   	pop    %rbp
     a54:	ff e0                	jmpq   *%rax
     a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     a5d:	00 00 00 
     a60:	5d                   	pop    %rbp
     a61:	c3                   	retq   
     a62:	0f 1f 40 00          	nopl   0x0(%rax)
     a66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     a6d:	00 00 00 

0000000000000a70 <register_tm_clones>:
     a70:	48 8d 3d 69 16 20 00 	lea    0x201669(%rip),%rdi        # 2020e0 <stdout@@GLIBC_2.2.5>
     a77:	48 8d 35 62 16 20 00 	lea    0x201662(%rip),%rsi        # 2020e0 <stdout@@GLIBC_2.2.5>
     a7e:	55                   	push   %rbp
     a7f:	48 29 fe             	sub    %rdi,%rsi
     a82:	48 89 e5             	mov    %rsp,%rbp
     a85:	48 c1 fe 03          	sar    $0x3,%rsi
     a89:	48 89 f0             	mov    %rsi,%rax
     a8c:	48 c1 e8 3f          	shr    $0x3f,%rax
     a90:	48 01 c6             	add    %rax,%rsi
     a93:	48 d1 fe             	sar    %rsi
     a96:	74 18                	je     ab0 <register_tm_clones+0x40>
     a98:	48 8b 05 51 15 20 00 	mov    0x201551(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
     a9f:	48 85 c0             	test   %rax,%rax
     aa2:	74 0c                	je     ab0 <register_tm_clones+0x40>
     aa4:	5d                   	pop    %rbp
     aa5:	ff e0                	jmpq   *%rax
     aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     aae:	00 00 
     ab0:	5d                   	pop    %rbp
     ab1:	c3                   	retq   
     ab2:	0f 1f 40 00          	nopl   0x0(%rax)
     ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     abd:	00 00 00 

0000000000000ac0 <__do_global_dtors_aux>:
     ac0:	80 3d 41 16 20 00 00 	cmpb   $0x0,0x201641(%rip)        # 202108 <completed.7698>
     ac7:	75 2f                	jne    af8 <__do_global_dtors_aux+0x38>
     ac9:	48 83 3d 27 15 20 00 	cmpq   $0x0,0x201527(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
     ad0:	00 
     ad1:	55                   	push   %rbp
     ad2:	48 89 e5             	mov    %rsp,%rbp
     ad5:	74 0c                	je     ae3 <__do_global_dtors_aux+0x23>
     ad7:	48 8b 3d 2a 15 20 00 	mov    0x20152a(%rip),%rdi        # 202008 <__dso_handle>
     ade:	e8 0d ff ff ff       	callq  9f0 <__cxa_finalize@plt>
     ae3:	e8 48 ff ff ff       	callq  a30 <deregister_tm_clones>
     ae8:	c6 05 19 16 20 00 01 	movb   $0x1,0x201619(%rip)        # 202108 <completed.7698>
     aef:	5d                   	pop    %rbp
     af0:	c3                   	retq   
     af1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     af8:	f3 c3                	repz retq 
     afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b00 <frame_dummy>:
     b00:	55                   	push   %rbp
     b01:	48 89 e5             	mov    %rsp,%rbp
     b04:	5d                   	pop    %rbp
     b05:	e9 66 ff ff ff       	jmpq   a70 <register_tm_clones>

0000000000000b0a <mostrar_version>:
#define ERROR_LEC_INT 1
#define ERROR_LECTURA -1
const char VERSION[] = "1.0.1";


void mostrar_version(){
     b0a:	55                   	push   %rbp
     b0b:	48 89 e5             	mov    %rsp,%rbp
	printf("Version %s\n", VERSION);
     b0e:	48 8d 35 63 08 00 00 	lea    0x863(%rip),%rsi        # 1378 <VERSION>
     b15:	48 8d 3d 62 08 00 00 	lea    0x862(%rip),%rdi        # 137e <VERSION+0x6>
     b1c:	b8 00 00 00 00       	mov    $0x0,%eax
     b21:	e8 7a fe ff ff       	callq  9a0 <printf@plt>
}
     b26:	90                   	nop
     b27:	5d                   	pop    %rbp
     b28:	c3                   	retq   

0000000000000b29 <mostrar_ayudas>:

void mostrar_ayudas(){
     b29:	55                   	push   %rbp
     b2a:	48 89 e5             	mov    %rsp,%rbp
	printf("\n");
     b2d:	bf 0a 00 00 00       	mov    $0xa,%edi
     b32:	e8 f9 fd ff ff       	callq  930 <putchar@plt>

	printf("-h, --help: Muestra la interfaz de ayudas.\n");
     b37:	48 8d 3d 52 08 00 00 	lea    0x852(%rip),%rdi        # 1390 <VERSION+0x18>
     b3e:	e8 1d fe ff ff       	callq  960 <puts@plt>
	printf("-v, --version: Indica la version del programa.\n");
     b43:	48 8d 3d 76 08 00 00 	lea    0x876(%rip),%rdi        # 13c0 <VERSION+0x48>
     b4a:	e8 11 fe ff ff       	callq  960 <puts@plt>
	printf("-m, --multiple: Imprime solo el mcm.\n");
     b4f:	48 8d 3d 9a 08 00 00 	lea    0x89a(%rip),%rdi        # 13f0 <VERSION+0x78>
     b56:	e8 05 fe ff ff       	callq  960 <puts@plt>
	printf("-d, --divisor: Imprime solo el mcd.\n");
     b5b:	48 8d 3d b6 08 00 00 	lea    0x8b6(%rip),%rdi        # 1418 <VERSION+0xa0>
     b62:	e8 f9 fd ff ff       	callq  960 <puts@plt>
	printf("-o, --output: Indica la direccion donde esta el archivo a escribir.\n");
     b67:	48 8d 3d d2 08 00 00 	lea    0x8d2(%rip),%rdi        # 1440 <VERSION+0xc8>
     b6e:	e8 ed fd ff ff       	callq  960 <puts@plt>
	
	printf("\n");
     b73:	bf 0a 00 00 00       	mov    $0xa,%edi
     b78:	e8 b3 fd ff ff       	callq  930 <putchar@plt>

	printf("Modo de uso:\n");
     b7d:	48 8d 3d 00 09 00 00 	lea    0x900(%rip),%rdi        # 1484 <VERSION+0x10c>
     b84:	e8 d7 fd ff ff       	callq  960 <puts@plt>
	printf("Los dos numeros a operar DEBEN ser introducidos inmediatamente despues de la direccion especificada en -o\n");
     b89:	48 8d 3d 08 09 00 00 	lea    0x908(%rip),%rdi        # 1498 <VERSION+0x120>
     b90:	e8 cb fd ff ff       	callq  960 <puts@plt>
	printf("Se usa '-' como argumento de -o para pedir la salida por stdout.\n");
     b95:	48 8d 3d 6c 09 00 00 	lea    0x96c(%rip),%rdi        # 1508 <VERSION+0x190>
     b9c:	e8 bf fd ff ff       	callq  960 <puts@plt>
	printf("El resto de los flags pueden ir en cualquier orden.\n");
     ba1:	48 8d 3d a8 09 00 00 	lea    0x9a8(%rip),%rdi        # 1550 <VERSION+0x1d8>
     ba8:	e8 b3 fd ff ff       	callq  960 <puts@plt>
	printf("\n");
     bad:	bf 0a 00 00 00       	mov    $0xa,%edi
     bb2:	e8 79 fd ff ff       	callq  930 <putchar@plt>
	printf("Ejemplo:\n\t> ./tp1 -o - 256 192\n");
     bb7:	48 8d 3d ca 09 00 00 	lea    0x9ca(%rip),%rdi        # 1588 <VERSION+0x210>
     bbe:	e8 9d fd ff ff       	callq  960 <puts@plt>
	printf("\t64\n\t768\n");
     bc3:	48 8d 3d dd 09 00 00 	lea    0x9dd(%rip),%rdi        # 15a7 <VERSION+0x22f>
     bca:	e8 91 fd ff ff       	callq  960 <puts@plt>
	printf("\n");
     bcf:	bf 0a 00 00 00       	mov    $0xa,%edi
     bd4:	e8 57 fd ff ff       	callq  930 <putchar@plt>
	printf("Otro ejemplo:\n\t> ./tp1 -o a.out 256 192 -d\n");
     bd9:	48 8d 3d d0 09 00 00 	lea    0x9d0(%rip),%rdi        # 15b0 <VERSION+0x238>
     be0:	e8 7b fd ff ff       	callq  960 <puts@plt>
	printf("\t> cat a.out\n");
     be5:	48 8d 3d ef 09 00 00 	lea    0x9ef(%rip),%rdi        # 15db <VERSION+0x263>
     bec:	e8 6f fd ff ff       	callq  960 <puts@plt>
	printf("\t64\n");
     bf1:	48 8d 3d f0 09 00 00 	lea    0x9f0(%rip),%rdi        # 15e8 <VERSION+0x270>
     bf8:	e8 63 fd ff ff       	callq  960 <puts@plt>
	printf("\n");
     bfd:	bf 0a 00 00 00       	mov    $0xa,%edi
     c02:	e8 29 fd ff ff       	callq  930 <putchar@plt>

	printf("Al calcular el mcm, en caso de overflow se devuelve 0 y se escribe en stderr el error.\n");
     c07:	48 8d 3d e2 09 00 00 	lea    0x9e2(%rip),%rdi        # 15f0 <VERSION+0x278>
     c0e:	e8 4d fd ff ff       	callq  960 <puts@plt>
}
     c13:	90                   	nop
     c14:	5d                   	pop    %rbp
     c15:	c3                   	retq   

0000000000000c16 <leer_uint>:

unsigned int leer_uint(char* string){
     c16:	55                   	push   %rbp
     c17:	48 89 e5             	mov    %rsp,%rbp
     c1a:	48 83 ec 20          	sub    $0x20,%rsp
     c1e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
	long resultado = strtol(string, NULL, 10);
     c22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     c26:	ba 0a 00 00 00       	mov    $0xa,%edx
     c2b:	be 00 00 00 00       	mov    $0x0,%esi
     c30:	48 89 c7             	mov    %rax,%rdi
     c33:	e8 88 fd ff ff       	callq  9c0 <strtol@plt>
     c38:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	if(resultado > UINT_MAX || errno == ERANGE || resultado <= 1){
     c3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     c41:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
     c45:	7f 13                	jg     c5a <leer_uint+0x44>
     c47:	e8 f4 fc ff ff       	callq  940 <__errno_location@plt>
     c4c:	8b 00                	mov    (%rax),%eax
     c4e:	83 f8 22             	cmp    $0x22,%eax
     c51:	74 07                	je     c5a <leer_uint+0x44>
     c53:	48 83 7d f8 01       	cmpq   $0x1,-0x8(%rbp)
     c58:	7f 07                	jg     c61 <leer_uint+0x4b>
		return ERROR_LEC_INT;
     c5a:	b8 01 00 00 00       	mov    $0x1,%eax
     c5f:	eb 04                	jmp    c65 <leer_uint+0x4f>
	}
	return (unsigned int) resultado;
     c61:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
}
     c65:	c9                   	leaveq 
     c66:	c3                   	retq   

0000000000000c67 <leer_entrada>:
/*
 * Lee la entrada y escribe los argumentos en las variables pasadas por parámetro.
 * Devuelve la cantidad de argumentos leidos.
 * En caso de un error devuelve (-1).
 */
int leer_entrada(int argc, char** argv, unsigned int *m, unsigned int* n, char nombre_archivo_salida[MAXIMO_ARCHIVO], bool* divisor, bool* multiple, bool* pidio_info, bool* pidio_ayuda, bool* escribio_numeros){
     c67:	55                   	push   %rbp
     c68:	48 89 e5             	mov    %rsp,%rbp
     c6b:	48 83 ec 40          	sub    $0x40,%rsp
     c6f:	89 7d ec             	mov    %edi,-0x14(%rbp)
     c72:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
     c76:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
     c7a:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
     c7e:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
     c82:	4c 89 4d c0          	mov    %r9,-0x40(%rbp)
	
	if(argc == 1 ){
     c86:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
     c8a:	75 2a                	jne    cb6 <leer_entrada+0x4f>
		
		fprintf(stderr,"Insuficiente información: Ingrese los argumentos. Consulta las ayudas con ./tp1 -h\n");
     c8c:	48 8b 05 6d 14 20 00 	mov    0x20146d(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
     c93:	48 89 c1             	mov    %rax,%rcx
     c96:	ba 54 00 00 00       	mov    $0x54,%edx
     c9b:	be 01 00 00 00       	mov    $0x1,%esi
     ca0:	48 8d 3d a1 09 00 00 	lea    0x9a1(%rip),%rdi        # 1648 <VERSION+0x2d0>
     ca7:	e8 34 fd ff ff       	callq  9e0 <fwrite@plt>
		return ERROR_LECTURA;
     cac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     cb1:	e9 b5 02 00 00       	jmpq   f6b <leer_entrada+0x304>
		{"multiple", no_argument, 0, 'm'},
		{"output",required_argument, 0, 'o'},
		{0,0,0,0}
	};

	int argumentos_leidos = 0;
     cb6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
	
	while((opt = getopt_long(argc, argv, "o:mdvh",long_options,NULL)) != -1 ) {
     cbd:	e9 a6 01 00 00       	jmpq   e68 <leer_entrada+0x201>
		argumentos_leidos++;
     cc2:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
		switch(opt){
     cc6:	8b 45 fc             	mov    -0x4(%rbp),%eax
     cc9:	83 e8 64             	sub    $0x64,%eax
     ccc:	83 f8 12             	cmp    $0x12,%eax
     ccf:	0f 87 93 01 00 00    	ja     e68 <leer_entrada+0x201>
     cd5:	89 c0                	mov    %eax,%eax
     cd7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
     cde:	00 
     cdf:	48 8d 05 4a 0a 00 00 	lea    0xa4a(%rip),%rax        # 1730 <VERSION+0x3b8>
     ce6:	8b 04 02             	mov    (%rdx,%rax,1),%eax
     ce9:	48 63 d0             	movslq %eax,%rdx
     cec:	48 8d 05 3d 0a 00 00 	lea    0xa3d(%rip),%rax        # 1730 <VERSION+0x3b8>
     cf3:	48 01 d0             	add    %rdx,%rax
     cf6:	ff e0                	jmpq   *%rax

			case 'o':
				strcpy(nombre_archivo_salida, optarg);
     cf8:	48 8b 15 f1 13 20 00 	mov    0x2013f1(%rip),%rdx        # 2020f0 <optarg@@GLIBC_2.2.5>
     cff:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     d03:	48 89 d6             	mov    %rdx,%rsi
     d06:	48 89 c7             	mov    %rax,%rdi
     d09:	e8 42 fc ff ff       	callq  950 <strcpy@plt>
				if(optind > argc - 2){
     d0e:	8b 45 ec             	mov    -0x14(%rbp),%eax
     d11:	8d 50 fe             	lea    -0x2(%rax),%edx
     d14:	8b 05 ce 13 20 00    	mov    0x2013ce(%rip),%eax        # 2020e8 <optind@@GLIBC_2.2.5>
     d1a:	39 c2                	cmp    %eax,%edx
     d1c:	7d 2a                	jge    d48 <leer_entrada+0xe1>
					fprintf(stderr,"Error en los argumentos: Insuficiente información. Consulta las ayudas con ./tp1 -h\n");
     d1e:	48 8b 05 db 13 20 00 	mov    0x2013db(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
     d25:	48 89 c1             	mov    %rax,%rcx
     d28:	ba 55 00 00 00       	mov    $0x55,%edx
     d2d:	be 01 00 00 00       	mov    $0x1,%esi
     d32:	48 8d 3d 67 09 00 00 	lea    0x967(%rip),%rdi        # 16a0 <VERSION+0x328>
     d39:	e8 a2 fc ff ff       	callq  9e0 <fwrite@plt>
					return ERROR_LECTURA;
     d3e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     d43:	e9 23 02 00 00       	jmpq   f6b <leer_entrada+0x304>
				}

				*m = leer_uint(argv[optind]);
     d48:	8b 05 9a 13 20 00    	mov    0x20139a(%rip),%eax        # 2020e8 <optind@@GLIBC_2.2.5>
     d4e:	48 98                	cltq   
     d50:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     d57:	00 
     d58:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d5c:	48 01 d0             	add    %rdx,%rax
     d5f:	48 8b 00             	mov    (%rax),%rax
     d62:	48 89 c7             	mov    %rax,%rdi
     d65:	e8 ac fe ff ff       	callq  c16 <leer_uint>
     d6a:	89 c2                	mov    %eax,%edx
     d6c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d70:	89 10                	mov    %edx,(%rax)
				if(*m == ERROR_LEC_INT){
     d72:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     d76:	8b 00                	mov    (%rax),%eax
     d78:	83 f8 01             	cmp    $0x1,%eax
     d7b:	75 3f                	jne    dbc <leer_entrada+0x155>
					fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[optind]);
     d7d:	8b 05 65 13 20 00    	mov    0x201365(%rip),%eax        # 2020e8 <optind@@GLIBC_2.2.5>
     d83:	48 98                	cltq   
     d85:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     d8c:	00 
     d8d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     d91:	48 01 d0             	add    %rdx,%rax
     d94:	48 8b 10             	mov    (%rax),%rdx
     d97:	48 8b 05 62 13 20 00 	mov    0x201362(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
     d9e:	48 8d 35 53 09 00 00 	lea    0x953(%rip),%rsi        # 16f8 <VERSION+0x380>
     da5:	48 89 c7             	mov    %rax,%rdi
     da8:	b8 00 00 00 00       	mov    $0x0,%eax
     dad:	e8 fe fb ff ff       	callq  9b0 <fprintf@plt>
					return ERROR_LECTURA;
     db2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     db7:	e9 af 01 00 00       	jmpq   f6b <leer_entrada+0x304>
				}

				*n = leer_uint(argv[optind + 1]);
     dbc:	8b 05 26 13 20 00    	mov    0x201326(%rip),%eax        # 2020e8 <optind@@GLIBC_2.2.5>
     dc2:	48 98                	cltq   
     dc4:	48 83 c0 01          	add    $0x1,%rax
     dc8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     dcf:	00 
     dd0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     dd4:	48 01 d0             	add    %rdx,%rax
     dd7:	48 8b 00             	mov    (%rax),%rax
     dda:	48 89 c7             	mov    %rax,%rdi
     ddd:	e8 34 fe ff ff       	callq  c16 <leer_uint>
     de2:	89 c2                	mov    %eax,%edx
     de4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     de8:	89 10                	mov    %edx,(%rax)
				if(*n == ERROR_LEC_INT){
     dea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     dee:	8b 00                	mov    (%rax),%eax
     df0:	83 f8 01             	cmp    $0x1,%eax
     df3:	75 43                	jne    e38 <leer_entrada+0x1d1>
					fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[optind + 1]);
     df5:	8b 05 ed 12 20 00    	mov    0x2012ed(%rip),%eax        # 2020e8 <optind@@GLIBC_2.2.5>
     dfb:	48 98                	cltq   
     dfd:	48 83 c0 01          	add    $0x1,%rax
     e01:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     e08:	00 
     e09:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     e0d:	48 01 d0             	add    %rdx,%rax
     e10:	48 8b 10             	mov    (%rax),%rdx
     e13:	48 8b 05 e6 12 20 00 	mov    0x2012e6(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
     e1a:	48 8d 35 d7 08 00 00 	lea    0x8d7(%rip),%rsi        # 16f8 <VERSION+0x380>
     e21:	48 89 c7             	mov    %rax,%rdi
     e24:	b8 00 00 00 00       	mov    $0x0,%eax
     e29:	e8 82 fb ff ff       	callq  9b0 <fprintf@plt>
					return ERROR_LECTURA;
     e2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     e33:	e9 33 01 00 00       	jmpq   f6b <leer_entrada+0x304>
				}

				*escribio_numeros = true;
     e38:	48 8b 45 28          	mov    0x28(%rbp),%rax
     e3c:	c6 00 01             	movb   $0x1,(%rax)
				argumentos_leidos += 3; 
     e3f:	83 45 f8 03          	addl   $0x3,-0x8(%rbp)
			break;
     e43:	eb 23                	jmp    e68 <leer_entrada+0x201>

			case 'm':
				*multiple = true;
     e45:	48 8b 45 10          	mov    0x10(%rbp),%rax
     e49:	c6 00 01             	movb   $0x1,(%rax)
			break;
     e4c:	eb 1a                	jmp    e68 <leer_entrada+0x201>

			case 'd':
				*divisor = true;
     e4e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
     e52:	c6 00 01             	movb   $0x1,(%rax)
			break;
     e55:	eb 11                	jmp    e68 <leer_entrada+0x201>

			case 'h':
				*pidio_ayuda = true;
     e57:	48 8b 45 20          	mov    0x20(%rbp),%rax
     e5b:	c6 00 01             	movb   $0x1,(%rax)
			break;
     e5e:	eb 08                	jmp    e68 <leer_entrada+0x201>

			case 'v':
				*pidio_info = true;
     e60:	48 8b 45 18          	mov    0x18(%rbp),%rax
     e64:	c6 00 01             	movb   $0x1,(%rax)
			break;
     e67:	90                   	nop
	while((opt = getopt_long(argc, argv, "o:mdvh",long_options,NULL)) != -1 ) {
     e68:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
     e6c:	8b 45 ec             	mov    -0x14(%rbp),%eax
     e6f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
     e75:	48 8d 0d a4 11 20 00 	lea    0x2011a4(%rip),%rcx        # 202020 <long_options.2692>
     e7c:	48 8d 15 a3 08 00 00 	lea    0x8a3(%rip),%rdx        # 1726 <VERSION+0x3ae>
     e83:	89 c7                	mov    %eax,%edi
     e85:	e8 06 fb ff ff       	callq  990 <getopt_long@plt>
     e8a:	89 45 fc             	mov    %eax,-0x4(%rbp)
     e8d:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
     e91:	0f 85 2b fe ff ff    	jne    cc2 <leer_entrada+0x5b>
		}
	}
	
	if( (argc == 3) && (argumentos_leidos == 0) ){
     e97:	83 7d ec 03          	cmpl   $0x3,-0x14(%rbp)
     e9b:	0f 85 c7 00 00 00    	jne    f68 <leer_entrada+0x301>
     ea1:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
     ea5:	0f 85 bd 00 00 00    	jne    f68 <leer_entrada+0x301>
		*m = leer_uint(argv[1]);
     eab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     eaf:	48 83 c0 08          	add    $0x8,%rax
     eb3:	48 8b 00             	mov    (%rax),%rax
     eb6:	48 89 c7             	mov    %rax,%rdi
     eb9:	e8 58 fd ff ff       	callq  c16 <leer_uint>
     ebe:	89 c2                	mov    %eax,%edx
     ec0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     ec4:	89 10                	mov    %edx,(%rax)
		if(*m == ERROR_LEC_INT){
     ec6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     eca:	8b 00                	mov    (%rax),%eax
     ecc:	83 f8 01             	cmp    $0x1,%eax
     ecf:	75 2d                	jne    efe <leer_entrada+0x297>
			fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[1]);
     ed1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     ed5:	48 83 c0 08          	add    $0x8,%rax
     ed9:	48 8b 10             	mov    (%rax),%rdx
     edc:	48 8b 05 1d 12 20 00 	mov    0x20121d(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
     ee3:	48 8d 35 0e 08 00 00 	lea    0x80e(%rip),%rsi        # 16f8 <VERSION+0x380>
     eea:	48 89 c7             	mov    %rax,%rdi
     eed:	b8 00 00 00 00       	mov    $0x0,%eax
     ef2:	e8 b9 fa ff ff       	callq  9b0 <fprintf@plt>
			return ERROR_LECTURA;
     ef7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     efc:	eb 6d                	jmp    f6b <leer_entrada+0x304>
		}
		*n = leer_uint(argv[2]);
     efe:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     f02:	48 83 c0 10          	add    $0x10,%rax
     f06:	48 8b 00             	mov    (%rax),%rax
     f09:	48 89 c7             	mov    %rax,%rdi
     f0c:	e8 05 fd ff ff       	callq  c16 <leer_uint>
     f11:	89 c2                	mov    %eax,%edx
     f13:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f17:	89 10                	mov    %edx,(%rax)
		if(*n == ERROR_LEC_INT){
     f19:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f1d:	8b 00                	mov    (%rax),%eax
     f1f:	83 f8 01             	cmp    $0x1,%eax
     f22:	75 2d                	jne    f51 <leer_entrada+0x2ea>
			fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[2]);
     f24:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     f28:	48 83 c0 10          	add    $0x10,%rax
     f2c:	48 8b 10             	mov    (%rax),%rdx
     f2f:	48 8b 05 ca 11 20 00 	mov    0x2011ca(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
     f36:	48 8d 35 bb 07 00 00 	lea    0x7bb(%rip),%rsi        # 16f8 <VERSION+0x380>
     f3d:	48 89 c7             	mov    %rax,%rdi
     f40:	b8 00 00 00 00       	mov    $0x0,%eax
     f45:	e8 66 fa ff ff       	callq  9b0 <fprintf@plt>
			return ERROR_LECTURA;
     f4a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     f4f:	eb 1a                	jmp    f6b <leer_entrada+0x304>
		}
		*escribio_numeros = true;
     f51:	48 8b 45 28          	mov    0x28(%rbp),%rax
     f55:	c6 00 01             	movb   $0x1,(%rax)
		argumentos_leidos=3; //Porque este es un caso excepcional
     f58:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
		strcpy(nombre_archivo_salida, "-");
     f5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     f63:	66 c7 00 2d 00       	movw   $0x2d,(%rax)
	}
	
	return argumentos_leidos;
     f68:	8b 45 f8             	mov    -0x8(%rbp),%eax
}
     f6b:	c9                   	leaveq 
     f6c:	c3                   	retq   

0000000000000f6d <mostrar_common>:


void mostrar_common(bool multiple, bool divisor, unsigned int m, unsigned int n, FILE* fsalida){
     f6d:	55                   	push   %rbp
     f6e:	48 89 e5             	mov    %rsp,%rbp
     f71:	48 83 ec 30          	sub    $0x30,%rsp
     f75:	89 f0                	mov    %esi,%eax
     f77:	89 55 e4             	mov    %edx,-0x1c(%rbp)
     f7a:	89 4d e0             	mov    %ecx,-0x20(%rbp)
     f7d:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
     f81:	89 fa                	mov    %edi,%edx
     f83:	88 55 ec             	mov    %dl,-0x14(%rbp)
     f86:	88 45 e8             	mov    %al,-0x18(%rbp)
	if(!multiple && !divisor){
     f89:	0f b6 45 ec          	movzbl -0x14(%rbp),%eax
     f8d:	83 f0 01             	xor    $0x1,%eax
     f90:	84 c0                	test   %al,%al
     f92:	74 13                	je     fa7 <mostrar_common+0x3a>
     f94:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
     f98:	83 f0 01             	xor    $0x1,%eax
     f9b:	84 c0                	test   %al,%al
     f9d:	74 08                	je     fa7 <mostrar_common+0x3a>
		multiple = true;
     f9f:	c6 45 ec 01          	movb   $0x1,-0x14(%rbp)
		divisor = true;
     fa3:	c6 45 e8 01          	movb   $0x1,-0x18(%rbp)
	}
	
	if(divisor){
     fa7:	80 7d e8 00          	cmpb   $0x0,-0x18(%rbp)
     fab:	74 2d                	je     fda <mostrar_common+0x6d>
		unsigned int res = mcd(m, n);
     fad:	8b 55 e0             	mov    -0x20(%rbp),%edx
     fb0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     fb3:	89 d6                	mov    %edx,%esi
     fb5:	89 c7                	mov    %eax,%edi
     fb7:	e8 8a 02 00 00       	callq  1246 <mcd>
     fbc:	89 45 f8             	mov    %eax,-0x8(%rbp)
		fprintf(fsalida,"%u\n", res);
     fbf:	8b 55 f8             	mov    -0x8(%rbp),%edx
     fc2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     fc6:	48 8d 35 af 07 00 00 	lea    0x7af(%rip),%rsi        # 177c <VERSION+0x404>
     fcd:	48 89 c7             	mov    %rax,%rdi
     fd0:	b8 00 00 00 00       	mov    $0x0,%eax
     fd5:	e8 d6 f9 ff ff       	callq  9b0 <fprintf@plt>
	}

	if(multiple){
     fda:	80 7d ec 00          	cmpb   $0x0,-0x14(%rbp)
     fde:	74 56                	je     1036 <mostrar_common+0xc9>
		unsigned int res = mcm(m, n);
     fe0:	8b 55 e0             	mov    -0x20(%rbp),%edx
     fe3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     fe6:	89 d6                	mov    %edx,%esi
     fe8:	89 c7                	mov    %eax,%edi
     fea:	e8 a2 02 00 00       	callq  1291 <mcm>
     fef:	89 45 fc             	mov    %eax,-0x4(%rbp)
		if(res == 0)
     ff2:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
     ff6:	75 23                	jne    101b <mostrar_common+0xae>
			fprintf(stderr, "Hubo overflow en la multiplicacion entre %u y %u\n",m,n);
     ff8:	48 8b 05 01 11 20 00 	mov    0x201101(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
     fff:	8b 4d e0             	mov    -0x20(%rbp),%ecx
    1002:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    1005:	48 8d 35 74 07 00 00 	lea    0x774(%rip),%rsi        # 1780 <VERSION+0x408>
    100c:	48 89 c7             	mov    %rax,%rdi
    100f:	b8 00 00 00 00       	mov    $0x0,%eax
    1014:	e8 97 f9 ff ff       	callq  9b0 <fprintf@plt>
		else
			fprintf(fsalida,"%u\n", res);
	}
}
    1019:	eb 1b                	jmp    1036 <mostrar_common+0xc9>
			fprintf(fsalida,"%u\n", res);
    101b:	8b 55 fc             	mov    -0x4(%rbp),%edx
    101e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1022:	48 8d 35 53 07 00 00 	lea    0x753(%rip),%rsi        # 177c <VERSION+0x404>
    1029:	48 89 c7             	mov    %rax,%rdi
    102c:	b8 00 00 00 00       	mov    $0x0,%eax
    1031:	e8 7a f9 ff ff       	callq  9b0 <fprintf@plt>
}
    1036:	90                   	nop
    1037:	c9                   	leaveq 
    1038:	c3                   	retq   

0000000000001039 <main>:

int main(int argc, char** argv){
    1039:	55                   	push   %rbp
    103a:	48 89 e5             	mov    %rsp,%rbp
    103d:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    1044:	89 bd 6c ff ff ff    	mov    %edi,-0x94(%rbp)
    104a:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
    1051:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1058:	00 00 
    105a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    105e:	31 c0                	xor    %eax,%eax
	

	bool divisor = false;
    1060:	c6 85 77 ff ff ff 00 	movb   $0x0,-0x89(%rbp)
	bool multiple = false;
    1067:	c6 85 78 ff ff ff 00 	movb   $0x0,-0x88(%rbp)
	bool pidio_info = false;
    106e:	c6 85 79 ff ff ff 00 	movb   $0x0,-0x87(%rbp)
	bool pidio_ayuda = false;
    1075:	c6 85 7a ff ff ff 00 	movb   $0x0,-0x86(%rbp)
	bool escribio_numeros = false;
    107c:	c6 85 7b ff ff ff 00 	movb   $0x0,-0x85(%rbp)
	
	unsigned int m;
	unsigned int n;

	FILE *fsalida = stdout;
    1083:	48 8b 05 56 10 20 00 	mov    0x201056(%rip),%rax        # 2020e0 <stdout@@GLIBC_2.2.5>
    108a:	48 89 45 88          	mov    %rax,-0x78(%rbp)
	char nombre_archivo_salida[MAXIMO_ARCHIVO] = "";
    108e:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    1095:	00 
    1096:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    109d:	00 
    109e:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    10a2:	b8 00 00 00 00       	mov    $0x0,%eax
    10a7:	b9 0a 00 00 00       	mov    $0xa,%ecx
    10ac:	48 89 d7             	mov    %rdx,%rdi
    10af:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    10b2:	48 89 fa             	mov    %rdi,%rdx
    10b5:	89 02                	mov    %eax,(%rdx)
    10b7:	48 83 c2 04          	add    $0x4,%rdx


	int cantidad_argumentos_leidos = leer_entrada(argc, argv, &m, &n, nombre_archivo_salida,
    10bb:	4c 8d 8d 77 ff ff ff 	lea    -0x89(%rbp),%r9
    10c2:	4c 8d 45 90          	lea    -0x70(%rbp),%r8
    10c6:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    10ca:	48 8d 95 7c ff ff ff 	lea    -0x84(%rbp),%rdx
    10d1:	48 8b b5 60 ff ff ff 	mov    -0xa0(%rbp),%rsi
    10d8:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
    10de:	48 8d bd 7b ff ff ff 	lea    -0x85(%rbp),%rdi
    10e5:	57                   	push   %rdi
    10e6:	48 8d bd 7a ff ff ff 	lea    -0x86(%rbp),%rdi
    10ed:	57                   	push   %rdi
    10ee:	48 8d bd 79 ff ff ff 	lea    -0x87(%rbp),%rdi
    10f5:	57                   	push   %rdi
    10f6:	48 8d bd 78 ff ff ff 	lea    -0x88(%rbp),%rdi
    10fd:	57                   	push   %rdi
    10fe:	89 c7                	mov    %eax,%edi
    1100:	e8 62 fb ff ff       	callq  c67 <leer_entrada>
    1105:	48 83 c4 20          	add    $0x20,%rsp
    1109:	89 45 84             	mov    %eax,-0x7c(%rbp)
										 &divisor, &multiple, &pidio_info, &pidio_ayuda,
										 &escribio_numeros);

	if(cantidad_argumentos_leidos == ERROR_LECTURA){
    110c:	83 7d 84 ff          	cmpl   $0xffffffff,-0x7c(%rbp)
    1110:	75 0a                	jne    111c <main+0xe3>
		return ERROR_LECTURA;
    1112:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1117:	e9 14 01 00 00       	jmpq   1230 <main+0x1f7>
	}

	if(pidio_ayuda){
    111c:	0f b6 85 7a ff ff ff 	movzbl -0x86(%rbp),%eax
    1123:	84 c0                	test   %al,%al
    1125:	74 14                	je     113b <main+0x102>
		mostrar_ayudas();
    1127:	b8 00 00 00 00       	mov    $0x0,%eax
    112c:	e8 f8 f9 ff ff       	callq  b29 <mostrar_ayudas>
		return 0;
    1131:	b8 00 00 00 00       	mov    $0x0,%eax
    1136:	e9 f5 00 00 00       	jmpq   1230 <main+0x1f7>
	}

	if(pidio_info){
    113b:	0f b6 85 79 ff ff ff 	movzbl -0x87(%rbp),%eax
    1142:	84 c0                	test   %al,%al
    1144:	74 14                	je     115a <main+0x121>
		mostrar_version();
    1146:	b8 00 00 00 00       	mov    $0x0,%eax
    114b:	e8 ba f9 ff ff       	callq  b0a <mostrar_version>
		return 0;
    1150:	b8 00 00 00 00       	mov    $0x0,%eax
    1155:	e9 d6 00 00 00       	jmpq   1230 <main+0x1f7>
	}

	if(!escribio_numeros || cantidad_argumentos_leidos < (argc -1)){
    115a:	0f b6 85 7b ff ff ff 	movzbl -0x85(%rbp),%eax
    1161:	83 f0 01             	xor    $0x1,%eax
    1164:	84 c0                	test   %al,%al
    1166:	75 0e                	jne    1176 <main+0x13d>
    1168:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
    116e:	83 e8 01             	sub    $0x1,%eax
    1171:	39 45 84             	cmp    %eax,-0x7c(%rbp)
    1174:	7d 2a                	jge    11a0 <main+0x167>
		fprintf(stderr,"Error en los argumentos ingresados. Consulta las ayudas con ./tp1 -h\n");
    1176:	48 8b 05 83 0f 20 00 	mov    0x200f83(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
    117d:	48 89 c1             	mov    %rax,%rcx
    1180:	ba 45 00 00 00       	mov    $0x45,%edx
    1185:	be 01 00 00 00       	mov    $0x1,%esi
    118a:	48 8d 3d 27 06 00 00 	lea    0x627(%rip),%rdi        # 17b8 <VERSION+0x440>
    1191:	e8 4a f8 ff ff       	callq  9e0 <fwrite@plt>
		return ERROR_LECTURA;
    1196:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    119b:	e9 90 00 00 00       	jmpq   1230 <main+0x1f7>
	}

	if(*nombre_archivo_salida != '-'){
    11a0:	0f b6 45 90          	movzbl -0x70(%rbp),%eax
    11a4:	3c 2d                	cmp    $0x2d,%al
    11a6:	74 44                	je     11ec <main+0x1b3>
		fsalida = fopen(nombre_archivo_salida, "w");
    11a8:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    11ac:	48 8d 35 4b 06 00 00 	lea    0x64b(%rip),%rsi        # 17fe <VERSION+0x486>
    11b3:	48 89 c7             	mov    %rax,%rdi
    11b6:	e8 15 f8 ff ff       	callq  9d0 <fopen@plt>
    11bb:	48 89 45 88          	mov    %rax,-0x78(%rbp)
		if(!fsalida){
    11bf:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    11c4:	75 26                	jne    11ec <main+0x1b3>
			fprintf(stderr,"No se logro abrir el archivo: (%s).\n", nombre_archivo_salida);
    11c6:	48 8b 05 33 0f 20 00 	mov    0x200f33(%rip),%rax        # 202100 <stderr@@GLIBC_2.2.5>
    11cd:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
    11d1:	48 8d 35 28 06 00 00 	lea    0x628(%rip),%rsi        # 1800 <VERSION+0x488>
    11d8:	48 89 c7             	mov    %rax,%rdi
    11db:	b8 00 00 00 00       	mov    $0x0,%eax
    11e0:	e8 cb f7 ff ff       	callq  9b0 <fprintf@plt>
			return ERROR_LECTURA;
    11e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11ea:	eb 44                	jmp    1230 <main+0x1f7>
		}
	}

	mostrar_common(multiple, divisor, m, n, fsalida);
    11ec:	8b 4d 80             	mov    -0x80(%rbp),%ecx
    11ef:	8b 95 7c ff ff ff    	mov    -0x84(%rbp),%edx
    11f5:	0f b6 85 77 ff ff ff 	movzbl -0x89(%rbp),%eax
    11fc:	0f b6 f0             	movzbl %al,%esi
    11ff:	0f b6 85 78 ff ff ff 	movzbl -0x88(%rbp),%eax
    1206:	0f b6 c0             	movzbl %al,%eax
    1209:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
    120d:	49 89 f8             	mov    %rdi,%r8
    1210:	89 c7                	mov    %eax,%edi
    1212:	e8 56 fd ff ff       	callq  f6d <mostrar_common>
	
	if(*nombre_archivo_salida !='-')
    1217:	0f b6 45 90          	movzbl -0x70(%rbp),%eax
    121b:	3c 2d                	cmp    $0x2d,%al
    121d:	74 0c                	je     122b <main+0x1f2>
		fclose(fsalida);
    121f:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1223:	48 89 c7             	mov    %rax,%rdi
    1226:	e8 45 f7 ff ff       	callq  970 <fclose@plt>

	return 0;
    122b:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1230:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1234:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    123b:	00 00 
    123d:	74 05                	je     1244 <main+0x20b>
    123f:	e8 3c f7 ff ff       	callq  980 <__stack_chk_fail@plt>
    1244:	c9                   	leaveq 
    1245:	c3                   	retq   

0000000000001246 <mcd>:
#include "common.h"
#include <stdlib.h>
#include <stdio.h>

unsigned int mcd(unsigned int m, unsigned int n){
    1246:	55                   	push   %rbp
    1247:	48 89 e5             	mov    %rsp,%rbp
    124a:	89 7d ec             	mov    %edi,-0x14(%rbp)
    124d:	89 75 e8             	mov    %esi,-0x18(%rbp)
	unsigned int resto;
	if(m<n){
    1250:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1253:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    1256:	73 2e                	jae    1286 <mcd+0x40>
		unsigned int aux = m;
    1258:	8b 45 ec             	mov    -0x14(%rbp),%eax
    125b:	89 45 f8             	mov    %eax,-0x8(%rbp)
		m = n;
    125e:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1261:	89 45 ec             	mov    %eax,-0x14(%rbp)
		n = aux;
    1264:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1267:	89 45 e8             	mov    %eax,-0x18(%rbp)
	}
	while(n!=0){
    126a:	eb 1a                	jmp    1286 <mcd+0x40>
		resto = m%n;
    126c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    126f:	ba 00 00 00 00       	mov    $0x0,%edx
    1274:	f7 75 e8             	divl   -0x18(%rbp)
    1277:	89 55 fc             	mov    %edx,-0x4(%rbp)
		m = n;
    127a:	8b 45 e8             	mov    -0x18(%rbp),%eax
    127d:	89 45 ec             	mov    %eax,-0x14(%rbp)
		n = resto;
    1280:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1283:	89 45 e8             	mov    %eax,-0x18(%rbp)
	while(n!=0){
    1286:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    128a:	75 e0                	jne    126c <mcd+0x26>
	}
	return m;
    128c:	8b 45 ec             	mov    -0x14(%rbp),%eax
}
    128f:	5d                   	pop    %rbp
    1290:	c3                   	retq   

0000000000001291 <mcm>:

unsigned int mcm(unsigned int m, unsigned int n){
    1291:	55                   	push   %rbp
    1292:	48 89 e5             	mov    %rsp,%rbp
    1295:	48 83 ec 18          	sub    $0x18,%rsp
    1299:	89 7d ec             	mov    %edi,-0x14(%rbp)
    129c:	89 75 e8             	mov    %esi,-0x18(%rbp)
	unsigned int multiplicacion = m*n;
    129f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    12a2:	0f af 45 e8          	imul   -0x18(%rbp),%eax
    12a6:	89 45 fc             	mov    %eax,-0x4(%rbp)
	if (m != 0 && multiplicacion / m != n) { //Es porque hubo overflow.
    12a9:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    12ad:	74 17                	je     12c6 <mcm+0x35>
    12af:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12b2:	ba 00 00 00 00       	mov    $0x0,%edx
    12b7:	f7 75 ec             	divl   -0x14(%rbp)
    12ba:	39 45 e8             	cmp    %eax,-0x18(%rbp)
    12bd:	74 07                	je     12c6 <mcm+0x35>
		return 0;
    12bf:	b8 00 00 00 00       	mov    $0x0,%eax
    12c4:	eb 1b                	jmp    12e1 <mcm+0x50>
	}
	else 
		return (multiplicacion/mcd(m,n));
    12c6:	8b 55 e8             	mov    -0x18(%rbp),%edx
    12c9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    12cc:	89 d6                	mov    %edx,%esi
    12ce:	89 c7                	mov    %eax,%edi
    12d0:	e8 71 ff ff ff       	callq  1246 <mcd>
    12d5:	89 c1                	mov    %eax,%ecx
    12d7:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12da:	ba 00 00 00 00       	mov    $0x0,%edx
    12df:	f7 f1                	div    %ecx
    12e1:	c9                   	leaveq 
    12e2:	c3                   	retq   
    12e3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12ea:	00 00 00 
    12ed:	0f 1f 00             	nopl   (%rax)

00000000000012f0 <__libc_csu_init>:
    12f0:	41 57                	push   %r15
    12f2:	41 56                	push   %r14
    12f4:	49 89 d7             	mov    %rdx,%r15
    12f7:	41 55                	push   %r13
    12f9:	41 54                	push   %r12
    12fb:	4c 8d 25 5e 0a 20 00 	lea    0x200a5e(%rip),%r12        # 201d60 <__frame_dummy_init_array_entry>
    1302:	55                   	push   %rbp
    1303:	48 8d 2d 5e 0a 20 00 	lea    0x200a5e(%rip),%rbp        # 201d68 <__init_array_end>
    130a:	53                   	push   %rbx
    130b:	41 89 fd             	mov    %edi,%r13d
    130e:	49 89 f6             	mov    %rsi,%r14
    1311:	4c 29 e5             	sub    %r12,%rbp
    1314:	48 83 ec 08          	sub    $0x8,%rsp
    1318:	48 c1 fd 03          	sar    $0x3,%rbp
    131c:	e8 df f5 ff ff       	callq  900 <_init>
    1321:	48 85 ed             	test   %rbp,%rbp
    1324:	74 20                	je     1346 <__libc_csu_init+0x56>
    1326:	31 db                	xor    %ebx,%ebx
    1328:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    132f:	00 
    1330:	4c 89 fa             	mov    %r15,%rdx
    1333:	4c 89 f6             	mov    %r14,%rsi
    1336:	44 89 ef             	mov    %r13d,%edi
    1339:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    133d:	48 83 c3 01          	add    $0x1,%rbx
    1341:	48 39 dd             	cmp    %rbx,%rbp
    1344:	75 ea                	jne    1330 <__libc_csu_init+0x40>
    1346:	48 83 c4 08          	add    $0x8,%rsp
    134a:	5b                   	pop    %rbx
    134b:	5d                   	pop    %rbp
    134c:	41 5c                	pop    %r12
    134e:	41 5d                	pop    %r13
    1350:	41 5e                	pop    %r14
    1352:	41 5f                	pop    %r15
    1354:	c3                   	retq   
    1355:	90                   	nop
    1356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    135d:	00 00 00 

0000000000001360 <__libc_csu_fini>:
    1360:	f3 c3                	repz retq 

Desensamblado de la sección .fini:

0000000000001364 <_fini>:
    1364:	48 83 ec 08          	sub    $0x8,%rsp
    1368:	48 83 c4 08          	add    $0x8,%rsp
    136c:	c3                   	retq   
