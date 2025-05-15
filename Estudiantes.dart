import 'dart:io';

void main() {
  List<String> estudiantes = [];
  Map<String, int> edades = {};

  print("¿Cuántos estudiantes vas a registrar?");
  int cantidad = int.parse(stdin.readLineSync()!);

  // Registrar estudiantes iniciales
  for (int i = 0; i < cantidad; i++) {
    stdout.write("Ingresa el nombre del estudiante #${i + 1}: ");
    String nombre = stdin.readLineSync()!;
    estudiantes.add(nombre);

    stdout.write("Ingresa la edad de $nombre: ");
    int edad = int.parse(stdin.readLineSync()!);
    edades[nombre] = edad;
  }

  print("\nLista de estudiantes registrados:");
  print(estudiantes);

  // Agregar nuevo estudiante
  stdout.write("\n¿Deseas agregar un nuevo estudiante? (si/no): ");
  String respuesta = stdin.readLineSync()!.toLowerCase();

  if (respuesta == "si") {
    stdout.write("Nombre del nuevo estudiante: ");
    String nuevo = stdin.readLineSync()!;
    estudiantes.add(nuevo);

    stdout.write("Edad de $nuevo: ");
    int edadNueva = int.parse(stdin.readLineSync()!);
    edades[nuevo] = edadNueva;
  }

  // Eliminar estudiante
  stdout.write("\n¿Deseas eliminar un estudiante? (si/no): ");
  String eliminar = stdin.readLineSync()!.toLowerCase();

  if (eliminar == "si") {
    stdout.write("Nombre del estudiante a eliminar: ");
    String eliminarNombre = stdin.readLineSync()!;
    estudiantes.remove(eliminarNombre);
    edades.remove(eliminarNombre);
  }

  // Mostrar lista sin duplicados
  Set<String> estudiantesUnicos = Set.from(estudiantes);
  print("\nLista de estudiantes sin duplicados:");
  print(estudiantesUnicos);

  // Mostrar edades
  print("\nEstudiantes con sus edades:");
  for (var estudiante in estudiantesUnicos) {
    if (edades.containsKey(estudiante)) {
      print("$estudiante tiene ${edades[estudiante]} años.");
    } else {
      print("$estudiante no tiene edad registrada.");
    }
  }
}
