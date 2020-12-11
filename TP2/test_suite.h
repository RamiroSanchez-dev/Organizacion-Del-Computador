#ifndef __TEST_SUITE_H_
#define __TEST_SUITE_H_

#include <stdio.h>
#include <stdbool.h>

#define BLANCO "\x1b[37;1m"
#define VERDE "\x1b[32;1m"
#define ROJO "\x1b[31;1m"
#define AMARILLO "\x1b[33;1m"
#define NORMAL "\x1b[0m"
#define CIAN "\x1b[36;1m"

#define TILDE "✓"
#define CRUZ "✗"

int __test_suite_cantidad_de_pruebas_corridas = 0;
int __test_suite_cantidad_de_pruebas_fallidas = 0;

void test_suite_afirmar(bool afirmacion, const char *descripcion) {
  if (afirmacion) {
    printf(VERDE TILDE " ");
  } else {
    __test_suite_cantidad_de_pruebas_fallidas++;
    printf(ROJO CRUZ " ");
  }
  printf(BLANCO "%s\n", descripcion);
  fflush(stdout);
  __test_suite_cantidad_de_pruebas_corridas++;
}

void test_suite_nuevo_grupo(const char* descripcion){
  printf(AMARILLO "\n%s\n", descripcion);
  while(*(descripcion++)) printf("=");
  printf(BLANCO "\n");
}

void test_suite_informar_error(const char* descripcion){
  printf(ROJO "\n%s\n" BLANCO, descripcion);
}

void test_suite_informar(const char* descripcion){
  printf(CIAN "\n%s\n", descripcion);
  printf(BLANCO "\n");
}

int test_suite_mostrar_reporte() {
  printf("\n---------------------------------\n"
         "%i pruebas corridas, %i errores - %s\n" NORMAL,
         __test_suite_cantidad_de_pruebas_corridas,
         __test_suite_cantidad_de_pruebas_fallidas,
         __test_suite_cantidad_de_pruebas_fallidas == 0 ? "OK" : "F");
  return __test_suite_cantidad_de_pruebas_fallidas;
}

#endif // __TEST_SUITE_H_
