import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Ingrese un número: ');
  int numero = int.parse(stdin.readLineSync()!);
  int temp = numero;
  int suma = 0;
  int digitos = numero.toString().length;

  while (temp != 0) {
    int digito = temp % 10;
    suma += pow(digito, digitos).toInt();
    temp ~/= 10;
  }

  if (suma == numero) {
    print('$numero es un número Armstrong');
  } else {
    print('$numero no es un número Armstrong');
  }
}
