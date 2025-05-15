import 'dart:io';

List<Map<String, dynamic>> productos = [];

void main() {
  int opcion = 0;
  print(" Bienvenido a Gestión de Productos");

  do {
    print("\n MENÚ DE OPERACIONES:");
    print("1. Agregar Productos");
    print("2. Listar Productos");
    print("3. Actualizar Producto");
    print("4. Eliminar Producto");
    print("5. Salir");

    stdout.write("Selecciona una opción: ");
    opcion = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (opcion) {
      case 1:
        agregarProducto();
        break;
      case 2:
        listarProductos();
        break;
      case 3:
        actualizarProducto();
        break;
      case 4:
        eliminarProducto();
        break;
      case 5:
        print("¡Gracias por usar el sistema!");
        break;
      default:
        print("Opción inválida. Intenta nuevamente.");
    }
  } while (opcion != 5);
}

void agregarProducto() {
  stdout.write("\n¿Cuántos productos deseas registrar? ");
  int cantidadProductos = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidadProductos; i++) {
    print("\n Producto #${i + 1}");

    stdout.write("Nombre del producto: ");
    String? nombre = stdin.readLineSync();

    stdout.write("Precio del producto: ");
    double? precio = double.tryParse(stdin.readLineSync()!);

    stdout.write("Cantidad disponible: ");
    int? cantidad = int.tryParse(stdin.readLineSync()!);

    if (nombre != null && precio != null && cantidad != null) {
      productos.add({
        "nombre": nombre,
        "precio": precio,
        "cantidad": cantidad,
      });
      print("Producto registrado con éxito.");
    } else {
      print("Error: Datos inválidos. Producto no registrado.");
    }
  }
}

void listarProductos() {
  if (productos.isEmpty) {
    print("\n No hay productos registrados.");
    return;
  }

  print("\n Lista de Productos Registrados:");
  for (var i = 0; i < productos.length; i++) {
    print(" Producto #${i + 1}");
    print("   Nombre: ${productos[i]['nombre']}");
    print("   Precio: \$${productos[i]['precio']}");
    print("   Cantidad disponible: ${productos[i]['cantidad']}\n");
  }
}

void actualizarProducto() {
  if (productos.isEmpty) {
    print("No hay productos registrados para actualizar.");
    return;
  }

  listarProductos();

  stdout.write("Ingresa el número del producto a actualizar: ");
  int numero = int.parse(stdin.readLineSync()!);

  int index = numero - 1;

  if (index < 0 || index >= productos.length) {
    print(" Número de producto inválido.");
    return;
  }

  stdout.write("Nuevo nombre del producto: ");
  String? nuevoNombre = stdin.readLineSync();

  stdout.write("Nuevo precio del producto: ");
  double? nuevoPrecio = double.tryParse(stdin.readLineSync()!);

  stdout.write("Nueva cantidad disponible: ");
  int? nuevaCantidad = int.tryParse(stdin.readLineSync()!);

  if (nuevoNombre != null && nuevoPrecio != null && nuevaCantidad != null) {
    productos[index]['nombre'] = nuevoNombre;
    productos[index]['precio'] = nuevoPrecio;
    productos[index]['cantidad'] = nuevaCantidad;
    print(" Producto actualizado correctamente.");
  } else {
    print(" Error: Datos inválidos. No se actualizó el producto.");
    }
  }

void eliminarProducto() {
  if (productos.isEmpty) {
    print(" No hay productos para eliminar.");
    return;
  }

  listarProductos();

  stdout.write("Ingresa el número del producto a eliminar: ");
  int eliminar = int.parse(stdin.readLineSync()!);

  int i = eliminar - 1;

  if (i < 0 || i >= productos.length) {
    print("Número inválido. No se eliminó ningún producto.");
    return;
  }

  productos.removeAt(i);
  print("Producto eliminado correctamente.");
}
