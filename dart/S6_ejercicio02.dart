import 'dart:io';

void main() {
  double porcentajeAlquiler = 0.23;
  double porcentajePublicidad = 0.07;
  double porcentajeTransporte = 0.26;
  double porcentajeServiciosFerias = 0.12;
  double porcentajeDecoracion = 0.21;
  double porcentajeGastosVarios = 0.11;
  
  print('Ingresa el monto total de dinero a invertir: ');
  String? input = stdin.readLineSync();
  double montoTotal = double.parse(input!); // Convierte la entrada a double
  
  double alquiler = montoTotal * porcentajeAlquiler;
  double publicidad = montoTotal * porcentajePublicidad;
  double transporte = montoTotal * porcentajeTransporte;
  double serviciosFerias = montoTotal * porcentajeServiciosFerias;
  double decoracion = montoTotal * porcentajeDecoracion;
  double gastosVarios = montoTotal * porcentajeGastosVarios;

  print('\n--- Distribución de Gastos ---');
  print('Alquiler de espacio en la feria: S/. ${alquiler.toStringAsFixed(2)}');
  print('Publicidad: S/. ${publicidad.toStringAsFixed(2)}');
  print('Transporte: S/. ${transporte.toStringAsFixed(2)}');
  print('Servicios feriales: S/. ${serviciosFerias.toStringAsFixed(2)}');
  print('Decoración: S/. ${decoracion.toStringAsFixed(2)}');
  print('Gastos varios: S/. ${gastosVarios.toStringAsFixed(2)}');
}
