class Person {
  //! campos y propiedades
  String? nombre;
  int? edad;

  // *  forma de definir una propiedad o metodo privado , esto lo hacemos anteponiendo el simbolo _ antes de la propiedad o metodo
  String _bio = 'es una humano';

  //! Get y Sets
  // * Función normal
  // String get bio {
  //   return _bio;
  // }

  // * Función de flecha
  String get bio => _bio.toUpperCase();

  // * Función normal
  // set bio(String text) {
  //   _bio = text;
  // }

  // * Función de flecha
  set bio(String text) => _bio = text;

  //! Constructores

  //! Métodos

  @override
  String toString() => 'Nombre : $nombre , tiene: $edad  y  $_bio';

  void exampleFuntion() => print('esto es una prueba');

  //* Función privada
  void _privateFunction() => print('esto es una funcion privada');
}
