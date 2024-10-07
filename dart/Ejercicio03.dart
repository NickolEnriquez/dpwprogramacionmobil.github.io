import 'dart:io';

void main() {

  const double sueldoBasico = 600.0;
  const double comisionAlto = 0.07;
  const double comisionBajo = 0.05;
  const double bonificacionBajo = 25.0;
  const double bonificacionAlto = 22.0;
  const double descuentoAlto = 0.15;
  const double descuentoBajo = 0.11;
  const double limiteSueldoBruto = 3500.0;


  print('Ingrese el importe total vendido (en soles):');
  double importeVendido = double.parse(stdin.readLineSync()!);

  print('Ingrese el número de hijos:');
  int numeroHijos = int.parse(stdin.readLineSync()!);


  double comision;
  if (importeVendido > 15000) {
    comision = importeVendido * comisionAlto;
  } else {
    comision = importeVendido * comisionBajo;
  }


  double bonificacion;
  if (numeroHijos < 5) {
    bonificacion = numeroHijos * bonificacionBajo;
  } else {
    bonificacion = numeroHijos * bonificacionAlto;
  }


  double sueldoBruto = sueldoBasico + comision + bonificacion;


  double descuento;
  if (sueldoBruto > limiteSueldoBruto) {
    descuento = sueldoBruto * descuentoAlto;
  } else {
    descuento = sueldoBruto * descuentoBajo;
  }


  double sueldoNeto = sueldoBruto - descuento;

  // Mostrar resultados
  print('Sueldo básico: \$${sueldoBasico.toStringAsFixed(2)}');
  print('Comisión: \$${comision.toStringAsFixed(2)}');
  print('Bonificación: \$${bonificacion.toStringAsFixed(2)}');
  print('Sueldo bruto: \$${sueldoBruto.toStringAsFixed(2)}');
  print('Descuento: \$${descuento.toStringAsFixed(2)}');
  print('Sueldo neto: \$${sueldoNeto.toStringAsFixed(2)}');
}
