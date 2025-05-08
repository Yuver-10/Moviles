import 'dart:io';

double calcularTotalPago(double totalDeLaCuenta, double propina) {
  return totalDeLaCuenta + propina;
}

double calcularPropina(double totalDeLaCuenta, double porcentajePropina) {
  return totalDeLaCuenta * (porcentajePropina / 100);
}

double calcularPagoPorPersona(int personas, double totalPago) {
  return totalPago / personas;
}

void main() {
  print("Bienvenido a la Calculadora de Propinas");

  stdout.write("Ingresa el total de la cuenta: ");
  double totalDeLaCuenta = double.parse(stdin.readLineSync()!);

  stdout.write("Ingresa el porcentaje de propina: ");
  double porcentajePropina = double.parse(stdin.readLineSync()!);

  stdout.write("Ingresa el número de personas que van a pagar: ");
  int personas = int.parse(stdin.readLineSync()!);

  double propina = calcularPropina(totalDeLaCuenta, porcentajePropina);
  double totalPago = calcularTotalPago(totalDeLaCuenta, propina);
  double pagoPorPersona = calcularPagoPorPersona(personas, totalPago);

  print("\n--- Detalles de Pago ---\n");
  print("Propina: \$${propina.toStringAsFixed(2)}");
  print("Total a pagar: \$${totalPago.toStringAsFixed(2)}");
  print("Pago por persona: \$${pagoPorPersona.toStringAsFixed(2)}");
}
