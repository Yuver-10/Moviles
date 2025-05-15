// Listas	Crear, modificar, agregar, eliminar, recorrer, limpiar
// Sets	Crear conjuntos sin duplicados, agregar, eliminar, limpiar y recorrer
// Mapas	Asociar claves y valores, agregar, eliminar por clave o condición, imprimir


// Función principal, punto de entrada del programa
void main() {
  listExample(); // Llama a la función que trabaja con listas
  setExample();  // Llama a la función que trabaja con sets
  mapExample();  // Llama a la función que trabaja con mapas
}

// 📌 FUNCIONES DE LISTAS
void listExample() {
  // Lista de strings con valores iniciales
  List<String> numbers = ["Uno", "Dos", "Tres"];
  
  // Otras dos listas que podrían usarse con addAll
  var numbers2 = ["Cuatro", "Cinco", "Seis"];
  var numbers3 = ["Siete", "Ocho"];

  // Modifica el primer valor de la lista
  numbers[0] = "Uno Modificado";

  // Agrega un nuevo elemento al final
  numbers.add("Siete");

  // Agrega todos los elementos de numbers2 y numbers3
  numbers.addAll(numbers2);
  numbers.addAll(numbers3);

  // Elimina un elemento por su valor
  numbers.remove("Siete");

  // Inserta un elemento al inicio de la lista
  numbers.insert(0, "Yuver Martinez");

  // Imprime toda la lista
  print("Lista completa:");
  print(numbers);

  // Recorre e imprime cada elemento usando un bucle for
  print("Elementos uno por uno:");
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // Elimina otro elemento
  numbers.remove("Dos");

  // Limpia completamente la lista
  numbers.clear();

  // Imprime después de limpiar (no mostrará nada)
  print("Lista después de limpiar:");
  for (var i = 0; i < numbers.length; i++) {
    print(numbers.elementAt(i));
  }
}

// 📌 FUNCIONES DE SET (conjuntos, no permiten valores duplicados)
void setExample() {
  // Declaración de un Set (conjunto de valores únicos)
  Set<String> set1 = {"Uno", "Dos", "Tres"};
  Set<String> set2 = {"Dos", "Cuatro"};

  // Agregar un nuevo valor
  set1.add("Cinco");

  // Agregar todos los elementos de otro set
  set1.addAll(set2);

  // Eliminar un valor
  set1.remove("Dos");

  // Imprimir todos los elementos
  print("Contenido del Set:");
  for (var value in set1) {
    print(value);
  }

  // Limpiar el set
  set1.clear();

  // Imprimir después de limpiar
  print("Set después de limpiar:");
  print(set1);
}

// 📌 FUNCIONES DE MAP (clave-valor)
void mapExample() {
  // Crear un mapa donde la clave es String y el valor es int
  Map<String, int> numbers = {
    "Uno": 1,
    "Tres": 3,
  };

  // Agregar una nueva entrada
  numbers["Cuatro"] = 4;

  // Eliminar por clave
  numbers.remove("Uno");

  // Eliminar usando condición
  numbers.removeWhere((key, value) => key == "Tres");

  // Imprimir el mapa resultante
  print("Contenido del Mapa:");
  print(numbers);
}




