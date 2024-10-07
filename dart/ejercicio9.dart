import 'dart:io';

int potencia(int base, int exponente) {
  int resultado = 1;
  while (exponente > 0) {
    resultado *= base;
    exponente--;
  }
  return resultado;
}

void main() {
  stdout.write('Ingrese la base: ');
  int base = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el exponente: ');
  int exponente = int.parse(stdin.readLineSync()!);

  print('El resultado de $base^$exponente es: ${potencia(base, exponente)}');
}
