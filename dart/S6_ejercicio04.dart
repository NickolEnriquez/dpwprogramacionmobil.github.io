import 'dart:io';

double calcularTarifaHoraria(String categoria) {
  if (categoria == 'A') {
    return 45.0;
  } else if (categoria == 'B') {
    return 37.5;
  } else {
    throw Exception('Categoría no válida');
  }
}

double calcularBonificacion(int hijos) {
  if (hijos <= 3) {
    return hijos * 40.5;
  } else {
    return hijos * 35.0;
  }
}

double calcularDescuento(double sueldoBruto) {
  if (sueldoBruto >= 3500) {
    return sueldoBruto * 0.135;
  } else {
    return sueldoBruto * 0.10;
  }
}

void main() {
  print('Ingrese la categoría del empleado (A o B):');
  String categoria = stdin.readLineSync()!.toUpperCase();

  print('Ingrese las horas trabajadas:');
  int horasTrabajadas = int.parse(stdin.readLineSync()!);

  print('Ingrese la cantidad de hijos:');
  int hijos = int.parse(stdin.readLineSync()!);

  double tarifaHoraria = calcularTarifaHoraria(categoria);
  double sueldoBasico = horasTrabajadas * tarifaHoraria;
  double bonificacion = calcularBonificacion(hijos);
  double sueldoBruto = sueldoBasico + bonificacion;
  double descuento = calcularDescuento(sueldoBruto);
  double sueldoNeto = sueldoBruto - descuento;

  print('Sueldo Básico: S/ $sueldoBasico');
  print('Bonificación por hijos: S/ $bonificacion');
  print('Sueldo Bruto: S/ $sueldoBruto');
  print('Descuento: S/ $descuento');
  print('Sueldo Neto: S/ $sueldoNeto');
}