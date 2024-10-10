import 'dart:io';

class Vendedor {
  double sueldoBasico = 350.75;
  double porcentajeComision = 0.05;
  double porcentajeDescuento = 0.15;
  double totalVendido = 0.0;
  
  Vendedor(double totalVendido) {
    this.totalVendido = totalVendido;
  }

  double calcularComision() {
    return totalVendido * porcentajeComision;
  }
  
  double calcularSueldoBruto() {
    return sueldoBasico + calcularComision();
  }

  double calcularDescuento() {
    return calcularSueldoBruto() * porcentajeDescuento;
  }

  double calcularSueldoNeto() {
    return calcularSueldoBruto() - calcularDescuento();
  }

  void imprimirBoleta() {
    print('\n--- Boleta de Pago ---');
    print('Sueldo Básico: S/. ${sueldoBasico.toStringAsFixed(2)}');
    print('Comisión: S/. ${calcularComision().toStringAsFixed(2)}');
    print('Sueldo Bruto: S/. ${calcularSueldoBruto().toStringAsFixed(2)}');
    print('Descuento (15%): S/. ${calcularDescuento().toStringAsFixed(2)}');
    print('Sueldo Neto: S/. ${calcularSueldoNeto().toStringAsFixed(2)}');
  }
}

void main() {
  // Solicitar el importe total vendido en el mes
  print('Ingresa el importe total vendido en el mes: ');
  String? input = stdin.readLineSync();
  double totalVendido = double.parse(input!); // Convierte la entrada a double
  
  // Crear un objeto de la clase Vendedor
  Vendedor vendedor = Vendedor(totalVendido);
  
  // Imprimir la boleta del vendedor
  vendedor.imprimirBoleta();
}