import 'dart:io';

void main() {
  
  print('Ingresa el precio de la camisa: ');
  String? inputPrecio = stdin.readLineSync();
  double precioCamisa = double.parse(inputPrecio!);

  print('Ingresa la cantidad de camisas adquiridas: ');
  String? inputCantidad = stdin.readLineSync();
  int cantidadCamisas = int.parse(inputCantidad!); 
  
  double importeCompra = precioCamisa * cantidadCamisas;

  double primerDescuento = importeCompra * 0.07;

  double restanteDespuesPrimerDescuento = importeCompra - primerDescuento;
  double segundoDescuento = restanteDespuesPrimerDescuento * 0.07;

  double descuentoTotal = primerDescuento + segundoDescuento;

  double importeAPagar = importeCompra - descuentoTotal;

  print('\n--- Detalles de la Compra ---');
  print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
  print('Primer descuento (7%): S/. ${primerDescuento.toStringAsFixed(2)}');
  print('Segundo descuento (7% del restante): S/. ${segundoDescuento.toStringAsFixed(2)}');
  print('Descuento total: S/. ${descuentoTotal.toStringAsFixed(2)}');
  print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
}
