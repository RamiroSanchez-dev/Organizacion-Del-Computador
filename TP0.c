#define SonIGUALES 0
#include <unistd.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>

extern size_t mystrlen(const char *);
const char* Prueba_Pasada = "Pase la prueba";
const char* Prueba_Fallada = "No paso la prueba :(";


static char encoding_table[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                                'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                                'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
                                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                                'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                                'w', 'x', 'y', 'z', '0', '1', '2', '3',
                                '4', '5', '6', '7', '8', '9', '+', '/'};

char codificador64_puntual(unsigned char original){
	int shifteado = original >> 2;
	char letra = encoding_table[shifteado];
	return letra;
}

 void codificador64_3Bytes(unsigned char letras_a_codificar[4], char* destino){

	size_t tamanio_palabra = strlen((char*)letras_a_codificar);
	unsigned int numero = *((unsigned int*) letras_a_codificar);
 	for(int i = 0; i <= tamanio_palabra; i++){
		char primerchar = codificador64_puntual(((unsigned char*)(&numero))[0]);
		numero = numero << 6;
		destino[i] = primerchar;
 	}
	if(tamanio_palabra == 2){
		destino[3] = '=';
	}else if(tamanio_palabra == 1){
		destino[3] = '=';
		destino[2] = '=';
	}
 	destino[4] = '\0';
}

void codificador64(unsigned char* palabra, char* palabra_nueva){
	
	size_t tope;
	size_t tamanio_palabra = strlen((char*)palabra);
	if(tamanio_palabra%3 == 0)
		tope = tamanio_palabra + 1;
	else if(tamanio_palabra%3 == 1)
		tope = tamanio_palabra + 3;
	else
		tope = tamanio_palabra + 2;

	unsigned char* palabra_extendida = calloc(tope, sizeof(unsigned char));
	strcpy((char*)palabra_extendida, (char*) palabra);

	unsigned char buffer[4];
	buffer[3] = '\0';
	char buffer64[5];
	for(int i = 0; i < tope - 1; i += 3){
		buffer[0] = palabra_extendida[i];
		buffer[1] = palabra_extendida[i+1];
		buffer[2] = palabra_extendida[i+2];

		codificador64_3Bytes(buffer, buffer64);
		strcat(palabra_nueva, buffer64);
	}

	free(palabra_extendida);
}

void escribirPrueba(char* numPrueba, unsigned char* palabraIngresada, char* palabraObtenida, bool pasoPrueba){
	if(pasoPrueba){
		char primerParte[]  = "Pasamos la prueba ";
		write(1, primerParte, mystrlen(primerParte));
	}else{
		char primerParte[]  = "No pasamos la prueba ";
		write(1, primerParte, mystrlen(primerParte));
	}
	char segundaParte[] = ", la palabra ingresada es: ";
	char tercerParte[] = ", la palabra obtenida fue: ";	
	write(1, numPrueba, mystrlen(numPrueba));
	write(1, segundaParte, mystrlen(numPrueba));
	write(1, (char*)palabraIngresada, mystrlen((char*)palabraIngresada));
	write(1, tercerParte, mystrlen(tercerParte));
	write(1, palabraObtenida, mystrlen(palabraObtenida));
	char carro[] = "\n";
	write(1, carro, mystrlen(carro));
}


void test00(){
	unsigned char msg[] = "Man";//TWFu
	char decodificado[5];
	codificador64_3Bytes(msg, decodificado);
	escribirPrueba("0", msg, decodificado, strcmp(decodificado, "TWFu") == 0);
}

void test01(){
	unsigned char msg[] = "Cat"; // Q2F0
	char decodificado[5];
	codificador64_3Bytes(msg, decodificado);

	escribirPrueba("1", msg, decodificado,strcmp(decodificado, "Q2F0") == 0);
}

void test02(){
	unsigned char msg[] = "ManCat"; // TWFuQ2F0;
	char decodificado[9] = "";
	codificador64(msg, decodificado);
	escribirPrueba("2", msg, decodificado, strcmp(decodificado, "TWFuQ2F0") == 0);
}

void test03(){
	unsigned char msg[] = "ManCatOS"; //TWFuQ2F0T1M9
	char decodificado[13] = "";
	codificador64(msg, decodificado);
	escribirPrueba("3", msg, decodificado, strcmp(decodificado, "TWFuQ2F0T1M=") == 0);

}

void test04(){
	unsigned char msg[] = "M";
	char decodificado[5] = "";
	codificador64(msg, decodificado);
	escribirPrueba("4", msg, decodificado, strcmp(decodificado, "TQ==") == 0);
}


void test05(){
	unsigned char msg[] = "En un lugar de La Mancha de cuyo nombre no quiero acordarme";
	char decodificado[100] = "";
	codificador64(msg, decodificado);
	escribirPrueba("5", msg, decodificado, strcmp(decodificado, "RW4gdW4gbHVnYXIgZGUgTGEgTWFuY2hhIGRlIGN1eW8gbm9tYnJlIG5vIHF1aWVybyBhY29yZGFybWU=") == 0);	
}
int main(int argc, char * const argv[]){
	test00();
	test01();
	test02();
	test03();
	test04();
	test05();
	return 0;
}
