import 'dart:io';

void main() {
  int opcion = 0;

  print("Bienvenido a Sistem Operations");

  do {
    try {
      print("\n--- MENÚ DE OPCIONES ---");
      print("1. Verifica si un número es primo");
      print("2. Tabla de multiplicar");
      print("3. Contar cuántos dígitos tiene un número");
      print("4. Sumar los dígitos de un número");
      print("5. Invertir un número");
      print("6. Salir");

      stdout.write("Selecciona una opción: ");
      opcion = int.parse(stdin.readLineSync()!);

      switch (opcion) {
        case 1:
          verificarNumeroPrimo(); 
          break;
        case 2:
          tablaMultiplicar();     
          break;
        case 3:
          contarDigitos();        
          break;
        case 4:
          sumarDigitos();         
          break;
        case 5:
          invertirNumero();       
          break;
        case 6:
          print("¡Gracias por usar el sistema!");
          break;
        default:
          print("❌ Opción no válida. Intenta de nuevo.");
      }
    } catch (e) {
      print("\n❌ Opción inválida. Ingresa un número válido.");
      opcion = 0;
    }
  } while (opcion != 6);
}

// 👇 Aquí defines tus funciones (fuera del main)

void verificarNumeroPrimo() {
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (esPrimo(numero)) {
    print("✅ El número $numero es primo.");
  } else {
    print("❌ El número $numero NO es primo.");
  }
}

bool esPrimo(int n) {
  if (n <= 1) return false;

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }

  return true;
}


void tablaMultiplicar() {
  stdout.write('Ingresa un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  print('\n📊 Tabla de multiplicar del $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}


void contarDigitos() {
  stdout.write("Ingresa un número: ");
  String caracteres = stdin.readLineSync()!;
  print("✅ El número tiene ${caracteres.length} dígitos.");
}



void sumarDigitos() {
  stdout.write("Ingresa primer Numero");
  int numero1 = int.parse(stdin.readLineSync()!);
  
  stdout.write("Ingresa Segundo Numero");
  int numero2 = int.parse(stdin.readLineSync()!);

  print("\n ✅ Total =${numero1 + numero2}");

}

void invertirNumero() {
  stdout.write("Ingresa un número: ");
  String numero = stdin.readLineSync()!;
  String invertido = numero.split('').reversed.join();
  print("✅ El número invertido es: $invertido");
}


