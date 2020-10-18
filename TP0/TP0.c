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


/*

	DECOUDER

*/


/*
01010100	01010001  =   =

01010100	01010001	00000000	00000000

	84			81
	T           Q



01001101

	M



static char encoding_table[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                                'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                                'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
                                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                                'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                                'w', 'x', 'y', 'z', '0', '1', '2', '3',
                                '4', '5', '6', '7', '8', '9', '+', '/'};
*/
unsigned int optener_posicion64(unsigned char original){
	
	unsigned int valor = (unsigned int) original;
	unsigned int posicion = 0;

	if( valor > 96 && valor < 123){//MINUSCULAS
			
			posicion = (unsigned int) valor - 71;


	}else if(valor> 64 && valor < 91){//MAYUSCULAS
			
			posicion = (unsigned int) valor - 65;
	}else if(valor > 47 && valor < 58){
			posicion = (unsigned int) valor +4;
	}else if(valor == 47){ // +
	 		posicion = 63;
	}else if(valor == 43){ ///
	 		posicion = 62;
	}else if(valor != 0){
		
		char ms1[] = "  <--Entre\n";
		ms1[0] = (char)original;
		write(1,ms1, mystrlen(ms1));

		char msg[]= "\n ROMPIO LA DECO de posciones \n";
		write(1, msg, mystrlen(msg));
	}


	return posicion;
}




 void decodificador64_4Bytes(unsigned char letras_a_Decodificar[5], char* destino){

	unsigned int decodificado = 0;
	for(int x = 0 ; x < 4; x++){
	decodificado += optener_posicion64(letras_a_Decodificar[x]);
	decodificado = decodificado << 6;
	}
	decodificado = decodificado << 2;

	strcpy(destino, (char*)&decodificado);


}

void decodificador64(unsigned char* palabra, char* palabra_nueva){
	
	size_t tamanio_palabra = strlen((char*)palabra);
	

	if(palabra[tamanio_palabra-1] == '='){
		palabra[tamanio_palabra-1] = '\0';
	 	if(palabra[tamanio_palabra -2] == '=')
			palabra[tamanio_palabra - 2] = '\0';
	}

	
	unsigned char buffer64[5];
	buffer64[4] = '\0';
	char bufferNormal[5]; 
	for(int i = 0; i < tamanio_palabra - 1 ; i += 4){
		buffer64[0] = palabra[i];
		buffer64[1] = palabra[i+1];
		buffer64[2] = palabra[i+2];
		buffer64[3] = palabra[i+3];

		decodificador64_4Bytes(buffer64, bufferNormal);
		strcat(palabra_nueva, bufferNormal);
	}

}




void test06(){
	unsigned char msg[] = "TQ==";
	char decodificado[5] = "";
	decodificador64(msg,decodificado);
	escribirPrueba("6", msg, decodificado, strcmp(decodificado, "M") == 0);
}

void test07(){
	unsigned char msg[] = "TWFu";
	char decodificado[10] = "";
	decodificador64(msg,decodificado);
	escribirPrueba("7", msg, decodificado, strcmp(decodificado, "Man") == 0);
}


void test08(){
	unsigned char msg[] = "RW4gdW4gbHVnYXIgZGUgTGEgTWFuY2hhIGRlIGN1eW8gbm9tYnJlIG5vIHF1aWVybyBhY29yZGFybWU=";
	char decodificado[61] = "";
	decodificador64(msg,decodificado);
	escribirPrueba("8", msg, decodificado, strcmp(decodificado, "En un lugar de La Mancha de cuyo nombre no quiero acordarme") == 0);
}

void testEncouder(){
	test00();
	test01();
	test02();
	test03();
	test04();
	test05();
}


void testDecouder(){
	test06();
	test07();
	test08();
}

int main(int argc, char * const argv[]){
	testDecouder();
	return 0;
}
