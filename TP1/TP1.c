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



extern unsigned int mcd(unsigned int m, unsigned int n);

extern unsigned int mcm(unsigned int m, unsigned int n);

#define MAXIMO_ARCHIVO 100

#define ERROR 1




unsigned int mcd_c(unsigned int m, unsigned int n){
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
	unsigned int multiplicacion = m*n;
	if (m != 0 && multiplicacion / m != n) { //Es porque hubo overflow.
    fprintf(stderr, "Hubo overflow en la multiplicacion entre %u y %u\n",m,n);
    return 0;
	}
	else 
		return (multiplicacion/mcd_c(m,n));

}

void mostrar_version(){
	printf("Version 1.0.0\n");
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
	printf("Ejemplo: ./tp1 -o - 256 192\n");
	printf("Obtiene como salida:\n64\n768\n");

	printf("\n");
	
	printf("Al calcular el mcm, en caso de overflow se devuelve 0 y se manda un mensaje a stderr.\n");
}

unsigned int leer_uint(char* string){
	long resultado = strtol(string, NULL, 10);
	if(resultado > UINT_MAX || errno == ERANGE || resultado <= 1){
		fprintf(stderr,"Los numeros ingresados no se encuentran en el rango permitido o no son numeros.\n");
		return ERROR;
	}
	return (unsigned int) resultado;
}

int main(int argc, char** argv){
	

	bool divisor = false;
	bool multiple = false;
	bool pidio_info = false;
	bool pidio_ayuda = false;
	bool escribio_numeros = false;
	unsigned int m;
	unsigned int n;
	FILE *fsalida= stdout;
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


	if(argc == 1 ){
		
		fprintf(stderr,"Error en los argumentos ingresados. Consulta las ayudas con ./tp1 -h\n");
		return -1;	
	}
	/*
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
	}*/
	int argumentos_leidos = 0;
	
	while((opt = getopt_long(argc, argv, "o:mdvh",long_options,NULL)) != -1 ) {
		argumentos_leidos++;
		switch(opt){

			case 'o':
				strcpy(nombre_archivo_salida, optarg);
				if(optind > argc - 2){
					fprintf(stderr,"Error en los argumentos ingresados. Consulta las ayudas con ./tp1 -h\n");
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
				if(*nombre_archivo_salida !='-')
					fsalida = fopen(nombre_archivo_salida, "w");
				if(!fsalida){
					fprintf(stderr,"No se logro abrir el archivo %s.\n",nombre_archivo_salida);
					return -1;
				}
				escribio_numeros = true;
				argumentos_leidos += 3; 
			break;

			case 'm':
				multiple = true;
			break;

			case 'd':
				divisor = true;
			break;

			case 'h':
				if(!pidio_ayuda){
					mostrar_ayudas();
					pidio_ayuda = true;
				}
			break;

			case 'v':
				if(!pidio_info){
					pidio_info = true;
					mostrar_version();
				}
			break;
		}
	}
	
	if(pidio_info || pidio_ayuda)
		return 0;

	if(!escribio_numeros || argumentos_leidos < (argc -1)){
		fprintf(stderr,"Error en los argumentos ingresados. Consulta las ayudas con ./tp1 -h\n");
		return -1;
	}


	if(!multiple && !divisor){
		multiple = true;
		divisor = true;
	}
	
	if(divisor){
		unsigned int res = mcd_c(m, n);
		fprintf(fsalida,"%u\n", res);
	}

	if(multiple){
		unsigned int res = mcm_c(m, n);
		fprintf(fsalida,"%u\n", res);
	}

	fclose(fsalida);

	return 0;
}
