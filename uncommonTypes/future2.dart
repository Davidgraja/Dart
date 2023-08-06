import 'dart:io';

// Ejemplo de como podemos trabajar , leer o manipular asincronicamente archivos con dart
void main(List<String> args) {
  File file =
      new File(Directory.current.path + '/uncommonTypes/assets/persons.txt');

  Future<String> f = file.readAsString();

  f.then((value) => print(value));

  print('Fin del programa');
}
