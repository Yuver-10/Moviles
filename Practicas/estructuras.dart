void main() {
  mapExample();
}

void mapExample() {
  List<String> numbers = ["UNo", "Dos", "Tres"];

  var numbers2 = ["Cuatro", "Cinco", "Seis"];
  var numbers3 = ["Cuatro", "Cinco", "Seis"];

  numbers[0] = "Uno Modificado";
  numbers.add("Siete");
  // numbers.addAll(numbers2, numbers3);
  numbers.remove("Siete");
  numbers.insert(0, "Yuver Martinez");
  // numbers.sort();
  // numbers.clear();
  print(numbers);

  // Imprimir los datos de la lista recorriendo el contenido
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // Sets listas con valores no repetidos
  void setExample() {
    Set<String> numbers = {"Uno", "Dos", "Tres"};
    var numbers2 = {"Dos", "Cuatro"};
  }

  numbers.add("Siete");
  // numbers2.addAll(numbers2);
  numbers.remove("Dos");
  numbers.clear();

  for (var i = 0; i < numbers.length; i++) {
    print(numbers.elementAt(i));
  }

  print("numbers");

  void mapExample() {
    Map<String, int> numbers = {"Uno": 1, "Tres": 3};
    numbers["Cuatro"] = 4;
    numbers.remove("Uno");
    numbers.removeWhere((key, value) => key == "Tres");
    print(numbers);
  }
}
