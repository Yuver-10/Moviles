import 'dart:io'; //Libreria para pedir dar entrada al Usuario


double CacularRecorrido(double V, double T){
  return V * T;
}




void main() {
  int opcion = 0;

  print("Bienvenido al Sistema de Análisis y Soluciones");

  // Bucle principal
  do {
    print("\nSelecciona una Opción:");
    print("1. ➡ Calcular distancia de Automóvil");
    print("2. ➡ Obtener Promedio de Notas");
    print("3. ➡ Estadísticas de Partidos");
    print("4. ➡ Plantilla de Empleado");
    print("5. ➡ Hallar Hipotenusa");
    print("6. ➡ Transformar temperatura Fahrenheit");
    print("7. ➡ Salir");

    
    stdout.write("Ingresa una opción: ");
    String? entrada = stdin.readLineSync();
    opcion = int.tryParse(entrada ?? '') ?? 0;


    switch (opcion) {
      case 1:

        print("\n ➡ Calcular distancia del Vehículo");

        print("Ingresa la Velocidad del Vehiculo");
        double V = double.parse(stdin.readLineSync()!);
        print("Ingresa la Velocidad del Vehiculo");
        double T = double.parse(stdin.readLineSync()!);

        double D = CacularRecorrido(V, T);
        print("La Distancia Recorrida por el AutoMovil es de: $D Km");
        break;



      case 2:
        print("➡ Obtener Promedio de Notas");
        break;

      case 3:
        print("➡ Estadísticas de Partidos");
        break;

      case 4:
        print("➡ Plantilla de Empleado");
        break;

      case 5:
        print("➡ Hallar Hipotenusa");
        break;

      case 6:
        print("➡ Transformar temperatura Fahrenheit");
        break;

      case 7:
        print("Saliendo del Sistema... ¡Hasta luego!");
        break;

      default:
      print("-----------------------------------------------");
        print("⚠ Opción no válida. Intenta de nuevo.");
      print("-----------------------------------------------");
    }

  } while (opcion != 7);
}
