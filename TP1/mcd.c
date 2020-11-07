#include <stdio.h>
extern unsigned int mcd(unsigned int m, unsigned int n);

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
	return ((m*n)/mcd(m,n));

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

int main(){
	
	static struct option long_options[] = {
                   {"version", no_argument, 0, 'v'},
                   {"help",no_argument, 0, 'h'},
                   {"divisor",required_argument, 0, 'd'},
                   {"output",required_argument, 0, 'o'},
                   {"multiple", no_argument, 0, 'm'},
                   {0,0,0,0}
               };

	while((opt = getopt_long(argc, argv, "mo:dvh",long_options,NULL)) != -1) {
		switch(opt){
			case 'm':
				strcpy(nombre_archivo_entrada, optarg);
			break;

			case 'o':
				strcpy(nombre_archivo_salida, optarg);
			break;

			case 'd':
				decode = true;
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

	if(pidio_info)
		return 0;

	return 0;
}
