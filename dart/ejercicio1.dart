import 'dart:io';

bool esPrimo(int numero) {
  if (numero < 2) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write('Ingrese el rango inferior: ');
  int inicio = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el rango superior: ');
  int fin = int.parse(stdin.readLineSync()!);

  int suma = 0;
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      suma += i;
    }
  }

  print('La suma de los números primos entre $inicio y $fin es: $suma');
}
