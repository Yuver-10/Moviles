import 'dart:io';

void main() {
  List<int> listaNumeros = [];

  stdout.write('Ingresa el tamaño de la lista: ');
  int tamano = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < tamano; i++) {
    stdout.write('Ingresa el número ${i + 1}: ');
    int numero = int.parse(stdin.readLineSync()!);
    listaNumeros.add(numero);
  }

  
  print('\nLista ingresada: $listaNumeros');

  List<int> primos = listaNumeros.where((n) => esPrimo(n)).toList();
  print('\nNúmeros primos en la lista: $primos');

  List<int> noesprimo = listaNumeros.where((n) => !esPrimo(n)).toList();
  print('\nNúmeros No primos en la lista: $noesprimo');
}

bool esPrimo(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}








