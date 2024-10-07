import 'dart:io';

void main() {
  stdout.write('Ingrese el tamaño de la matriz N: ');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz1 = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matriz2 = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> suma = List.generate(n, (_) => List.filled(n, 0));

  print('Ingrese los elementos de la primera matriz:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matriz1[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print('Ingrese los elementos de la segunda matriz:');
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      matriz2[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      suma[i][j] = matriz1[i][j] + matriz2[i][j];
    }
  }

  print('La suma de las matrices es:');
  for (int i = 0; i < n; i++) {
    print(suma[i]);
  }
}
