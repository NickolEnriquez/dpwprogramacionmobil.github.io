import 'dart:io';

void main() {
  stdout.write('Ingrese el número de términos de Fibonacci: ');
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1, siguiente;

  print('Secuencia Fibonacci:');
  for (int i = 1; i <= n; i++) {
    print(a);
    siguiente = a + b;
    a = b;
    b = siguiente;
  }
}
