import 'dart:io';

void main() {
  stdout.write('Ingrese el tamaño de la matriz NxN: ');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));
  int valor = 1;
  int filaInicio = 0, filaFin = n - 1, columnaInicio = 0, columnaFin = n - 1;

  while (filaInicio <= filaFin && columnaInicio <= columnaFin) {
    for (int i = columnaInicio; i <= columnaFin; i++) matriz[filaInicio][i] = valor++;
    filaInicio++;
    for (int i = filaInicio; i <= filaFin; i++) matriz[i][columnaFin] = valor++;
    columnaFin--;
    for (int i = columnaFin; i >= columnaInicio; i--) matriz[filaFin][i] = valor++;
    filaFin--;
    for (int i = filaFin; i >= filaInicio; i--) matriz[i][columnaInicio] = valor++;
    columnaInicio++;
  }

  print('Matriz en espiral:');
  for (int i = 0; i < n; i++) {
    print(matriz[i]);
  }
}
