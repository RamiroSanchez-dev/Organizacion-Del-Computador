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



//extern unsigned int mcd(unsigned int m, unsigned int n);



#define MAXIMO_ARCHIVO 100

#define ERROR 1




unsigned int mcd_c(unsigned int m, unsigned int n){
	//FALTA EN CASO DE ERRORES (fuera de rango)
	unsigned int resto;
	if(m<n){
		unsigned int aux=m;
		m=n;
		n=aux;
	}
	while(n!=0){
		resto=m%n;
		m=n;
		n=resto;
	}
	return m;
}

unsigned int mcm_c(unsigned int m, unsigned int n){
	return ((m*n)/mcd_c(m,n));
}

void mostrar_version(){
	printf("Version 1.0.0\n");
}

void mostrar_ayudas(){
	printf("\n");
	printf("Usos:\n");
	printf("./tp1 -h\n");
	printf("./tp1 -v\n");
	printf("./tp1 [opciones] M N\n");
	printf("Opciones:\n");

	printf("-h, --help: Muestra la interfaz de ayudas.\n");
	printf("-v, --version: Indica la version del programa.\n");
	printf("-m, --multiple: Imprime solo el mcm.\n");
	printf("-d, --divisor: Imprime solo el mcd.\n");
	printf("-o, --output: Indica la direccion donde esta el archivo a escribir.\n");
	
	
}

unsigned int leer_uint(char* string){
	long resultado = strtol(string, NULL, 10);
	if(resultado > UINT_MAX || errno == ERANGE || resultado <= 1){
		printf("Che flaco patinaste...\n");// TODO: Escribir por stderr
		printf("Abortamos\n");
		return ERROR;
	}
	return (unsigned int) resultado;
}

int main(int argc, char** argv){
	

	bool divisor = false;
	bool multiple = false;
	bool pidio_info = false;
	bool escribio_numeros = false;
	unsigned int m;
	unsigned int n;
	//FILE *fsalida;
	char nombre_archivo_salida[MAXIMO_ARCHIVO] = "";
	int opt;
	static struct option long_options[] = {
		{"version", no_argument, 0, 'v'},
		{"help",no_argument, 0, 'h'},
		{"divisor",no_argument, 0, 'd'},
		{"multiple", no_argument, 0, 'm'},
		{"output",required_argument, 0, 'o'},
		{0,0,0,0}
	};


	if(argc == 1 || argc == 2){
		printf("No se reconoce la entrada\n");
		mostrar_ayudas();
		return 0;	
	}

	if(argc == 3){
		m = leer_uint(argv[1]);
		if(m == ERROR){
			return -1;
		}
		n = leer_uint(argv[2]);
		if(n == ERROR){
			return -1;
		}
		escribio_numeros = true;
	}

	while((opt = getopt_long(argc, argv, "o:mdvh",long_options,NULL)) != -1) {
		switch(opt){

			case 'o':
				strcpy(nombre_archivo_salida, optarg);

				if(optind > argc - 2){
					printf("Abortamos xq escribiste cualquiera\n"); // TODO: Cambiar
					mostrar_ayudas();
					return -1;
				}

				m = leer_uint(argv[optind]);
				if(m == ERROR){
					return -1;
				}

				n = leer_uint(argv[optind + 1]);
				if(n == ERROR){
					return -1;
				}
				escribio_numeros = true;

			break;

			case 'm':
				divisor = true;
			break;

			case 'd':
				multiple = true;
			break;

			case 'h':
				if(!pidio_info){
					mostrar_ayudas();
					pidio_info = true;
				}
			break;

			case 'v':
				if(!pidio_info){
					pidio_info = true;
					mostrar_version();
				}
			break;

			default:
			break;
		}
	}

	if(!escribio_numeros){
		printf("Te faltó escribir los numeritos\n");
		return -1;
	}

	if(pidio_info)
		return 0;


	if(!multiple && !divisor){
		multiple = true;
		divisor = true;
	}
	
	if(divisor){
		unsigned int res = mcd_c(m, n);
		printf("%u\n", res);
	}

	if(multiple){
		unsigned int res = mcm_c(m, n);
		printf("%u\n", res);
	}

	printf("%s\n", nombre_archivo_salida);

	return 0;
}
