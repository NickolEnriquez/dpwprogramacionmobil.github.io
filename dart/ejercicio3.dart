import 'dart:io';

BigInt factorial(int n) {
  if (n <= 1) return BigInt.one;
  return BigInt.from(n) * factorial(n - 1);
}

void main() {
  stdout.write('Ingrese un número para calcular el factorial: ');
  int numero = int.parse(stdin.readLineSync()!);

  print('El factorial de $numero es: ${factorial(numero)}');
}
