#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <unistd.h>

#include <limits.h>
#include <errno.h>

#include <getopt.h>
extern char *optarg;
extern int optind, opterr, optopt;


/* 
 * Si se compiló con common.h serán los de C [Portables].
 * Si se compiló con mcd.S y mcm.S serán los de MIPS32.
 */
extern unsigned int mcd(unsigned int m, unsigned int n);

extern unsigned int mcm(unsigned int m, unsigned int n);


#define MAXIMO_ARCHIVO 100
#define ERROR_LEC_INT 1
#define ERROR_LECTURA -1
const char VERSION[] = "1.0.1";


void mostrar_version(){
	printf("Version %s\n", VERSION);
}

void mostrar_ayudas(){
	printf("\n");

	printf("-h, --help: Muestra la interfaz de ayudas.\n");
	printf("-v, --version: Indica la version del programa.\n");
	printf("-m, --multiple: Imprime solo el mcm.\n");
	printf("-d, --divisor: Imprime solo el mcd.\n");
	printf("-o, --output: Indica la direccion donde esta el archivo a escribir.\n");
	
	printf("\n");

	printf("Modo de uso:\n");
	printf("Los dos numeros a operar DEBEN ser introducidos inmediatamente despues de la direccion especificada en -o\n");
	printf("Se usa '-' como argumento de -o para pedir la salida por stdout.\n");
	printf("El resto de los flags pueden ir en cualquier orden.\n");
	printf("\n");
	printf("Ejemplo:\n\t> ./tp1 -o - 256 192\n");
	printf("\t64\n\t768\n");
	printf("\n");
	printf("Otro ejemplo:\n\t> ./tp1 -o a.out 256 192 -d\n");
	printf("\t> cat a.out\n");
	printf("\t64\n");
	printf("\n");

	printf("Al calcular el mcm, en caso de overflow se devuelve 0 y se escribe en stderr el error.\n");
}

unsigned int leer_uint(char* string){
	long resultado = strtol(string, NULL, 10);
	if(resultado > UINT_MAX || errno == ERANGE || resultado <= 1){
		return ERROR_LEC_INT;
	}
	return (unsigned int) resultado;
}



/*
 * Lee la entrada y escribe los argumentos en las variables pasadas por parámetro.
 * Devuelve la cantidad de argumentos leidos.
 * En caso de un error devuelve (-1).
 */
int leer_entrada(int argc, char** argv, unsigned int *m, unsigned int* n, char nombre_archivo_salida[MAXIMO_ARCHIVO], bool* divisor, bool* multiple, bool* pidio_info, bool* pidio_ayuda, bool* escribio_numeros){
	
	if(argc == 1 ){
		
		fprintf(stderr,"Insuficiente información: Ingrese los argumentos. Consulta las ayudas con ./tp1 -h\n");
		return ERROR_LECTURA;
	}

	int opt;
	static struct option long_options[] = {
		{"version", no_argument, 0, 'v'},
		{"help",no_argument, 0, 'h'},
		{"divisor",no_argument, 0, 'd'},
		{"multiple", no_argument, 0, 'm'},
		{"output",required_argument, 0, 'o'},
		{0,0,0,0}
	};

	/* <<<<<<<<<<<<<<<<<< TODO >>> TODO <<< TODO >>> TODO <<< TODO >>>>>>>>>>>>>>>>>>
	if(argc == 3){
		*m = leer_uint(argv[1]);
		if(m == ERROR_LEC_INT){
			return -1;
		}
		*n = leer_uint(argv[2]);
		if(n == ERROR_LEC_INT){
			return -1;
		}
		*escribio_numeros = true;
	}*/
	int argumentos_leidos = 0;
	
	while((opt = getopt_long(argc, argv, "o:mdvh",long_options,NULL)) != -1 ) {
		argumentos_leidos++;
		switch(opt){

			case 'o':
				strcpy(nombre_archivo_salida, optarg);
				if(optind > argc - 2){
					fprintf(stderr,"Error en los argumentos: Insuficiente información. Consulta las ayudas con ./tp1 -h\n");
					return ERROR_LECTURA;
				}

				*m = leer_uint(argv[optind]);
				if(*m == ERROR_LEC_INT){
					fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[optind]);
					return ERROR_LECTURA;
				}

				*n = leer_uint(argv[optind + 1]);
				if(*n == ERROR_LEC_INT){
					fprintf(stderr,"El parámetro ingresado: (%s) no es válido.\n",argv[optind + 1]);
					return ERROR_LECTURA;
				}

				*escribio_numeros = true;
				argumentos_leidos += 3; 
			break;

			case 'm':
				*multiple = true;
			break;

			case 'd':
				*divisor = true;
			break;

			case 'h':
				*pidio_ayuda = true;
			break;

			case 'v':
				*pidio_info = true;
			break;
		}
	}

	return argumentos_leidos;
}


void mostrar_common(bool multiple, bool divisor, unsigned int m, unsigned int n, FILE* fsalida){
	if(!multiple && !divisor){
		multiple = true;
		divisor = true;
	}
	
	if(divisor){
		unsigned int res = mcd(m, n);
		fprintf(fsalida,"%u\n", res);
	}

	if(multiple){
		unsigned int res = mcm(m, n);
		fprintf(fsalida,"%u\n", res);
	}
}

int main(int argc, char** argv){
	

	bool divisor = false;
	bool multiple = false;
	bool pidio_info = false;
	bool pidio_ayuda = false;
	bool escribio_numeros = false;
	
	unsigned int m;
	unsigned int n;

	FILE *fsalida = stdout;
	char nombre_archivo_salida[MAXIMO_ARCHIVO] = "";


	int cantidad_argumentos_leidos = leer_entrada(argc, argv, &m, &n, nombre_archivo_salida,
										 &divisor, &multiple, &pidio_info, &pidio_ayuda,
										 &escribio_numeros);

	if(cantidad_argumentos_leidos == ERROR_LECTURA){
		return ERROR_LECTURA;
	}

	if(pidio_ayuda){
		mostrar_ayudas();
		return 0;
	}

	if(pidio_info){
		mostrar_version();
		return 0;
	}

	if(!escribio_numeros || cantidad_argumentos_leidos < (argc -1)){
		fprintf(stderr,"Error en los argumentos ingresados. Consulta las ayudas con ./tp1 -h\n");
		return ERROR_LECTURA;
	}

	if(*nombre_archivo_salida != '-'){
		fsalida = fopen(nombre_archivo_salida, "w");
		if(!fsalida){
			fprintf(stderr,"No se logro abrir el archivo: (%s).\n", nombre_archivo_salida);
			return ERROR_LECTURA;
		}
	}

	mostrar_common(multiple, divisor, m, n, fsalida);
	
	if(*nombre_archivo_salida !='-')
		fclose(fsalida);

	return 0;
}
