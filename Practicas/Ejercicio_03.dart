import 'dart:io';

void main() {
  Exercise();
}

void Exercise() {
  Map<String, int> Estudiantes() {
    return {
      'Yuver': 19,
      'Messi': 10,
      'Lamine': 19,
      'Luis': 9,
    };
  }

  print("Ingresa tu nombre:");
  String nombre = stdin.readLineSync()!;


  for (var estudiante in Estudiantes().entries) {
    if (estudiante.key.toLowerCase() == nombre.toLowerCase()) {
      print('La edad de ${estudiante.key} es ${estudiante.value} años.');
      break;
    }
    else{
        print("El nombre no existe");
        break;
    }
  }
}
