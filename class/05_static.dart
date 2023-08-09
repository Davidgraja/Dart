/**
 * forma de trabajar con metodo y propiedades de clase  ( static )
 */

class Tools {
  // hacemos uso de const para evitar la mutabilidad de la lista
  static List<String> toolBox = const [
    'Martillo',
    'Destornillador',
    'Llave inglesa'
  ];

  static readList() => toolBox.forEach(print);
}

void main(List<String> args) {
  Tools.readList();
}
