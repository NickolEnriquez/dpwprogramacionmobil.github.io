import 'dart:io';

bool esNumeroPerfecto(int numero) {
  int suma = 0;
  for (int i = 1; i <= numero ~/ 2; i++) {
    if (numero % i == 0) suma += i;
  }
  return suma == numero;
}

void main() {
  stdout.write('Ingrese el rango superior: ');
  int limite = int.parse(stdin.readLineSync()!);

  print('Los números perfectos entre 1 y $limite son:');
  for (int i = 1; i <= limite; i++) {
    if (esNumeroPerfecto(i)) {
      print(i);
    }
  }
}
