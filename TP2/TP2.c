

void hay_error(int cs, int bs, int w){
	// TODO.
	// Fijarse que sean potencias de 2.
}

void leer_entrada(int argc, char const *argv[], FILE* archivo, int* cs, int* bs, int* w){
	// TODO
}

void interpretar(FILE* archivo){
	// TODO
	while(!feof(archivo)){}
}

int main(int argc, char const *argv[]){
	FILE* archivo;

	leer_entrada(argc, argv, archivo);
	if(hay_error()){
		/* error */
		return -1;
	}
	init();
	interpretar(archivo);
	destroy();
	return 0;
}