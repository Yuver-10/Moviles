import 'dart:io';

// Función para calcular el factorial
int factorial(int n) {
  int resultado = 1;
  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

// Función principal para pedir el número y mostrar el factorial
void calcularFactorial() {
  stdout.write("Ingresa un número positivo: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print("No se puede calcular el factorial de un número negativo.");
  } else {
    int resultado = factorial(numero);
    print("El factorial de $numero es: $resultado");
  }
}



void Switch() {
  String? continuar;

  do {
    // Menú principal
    print("\n📘 MENÚ DE OPERACIONES:");
    print("1. Verificar si un número es par o impar");
    print("2. Calcular el factorial de un número");
    print("3. Salir");
    stdout.write("Elige una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        verificarParOImpar();
        break;
      case '2':
        calcularFactorial();
        break;
      case '3':
        print("👋 Gracias por usar el sistema. ¡Hasta luego!");
        return; // Sale del programa completamente
      default:
        print("❌ Opción inválida. Intenta de nuevo.");
    }

    // Preguntar si desea repetir
    stdout.write("\n¿Deseas hacer otra operación? (s para sí, cualquier otra tecla para salir): ");
    continuar = stdin.readLineSync();

  } while (continuar?.toLowerCase() == 's');
}

// Función para verificar si un número es par o impar
void verificarParOImpar() {
  stdout.write("Ingresa un número: ");
  try {
    int numero = int.parse(stdin.readLineSync()!);
    if (numero % 2 == 0) {
      print("✅ El número $numero es par.");
    } else {
      print("✅ El número $numero es impar.");
    }
  } catch (e) {
    print("❌ Entrada no válida. Debes ingresar un número.");
  }
}
