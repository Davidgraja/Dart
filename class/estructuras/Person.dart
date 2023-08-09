class Person {
  //! campos y propiedades
  String nombre = '';
  int edad = 0;

  // *  forma de definir una propiedad o metodo privado , esto lo hacemos anteponiendo el simbolo _ antes de la propiedad o metodo
  String _bio = 'es un humano';

  //! Get y Sets
  // * Función get normal
  // String get bio {
  //   return _bio;
  // }

  // * Función get de flecha
  String get bio => _bio.toUpperCase();

  // * Función  set normal
  // set bio(String text) {
  //   _bio = text;
  // }

  // * Función set de flecha
  set bio(String text) => _bio = text;

  //! Constructores

  // * forma comun de crear un constructor
  // Person(int edad, String nombre) {
  //   this.edad = edad;
  //   this.nombre = nombre;
  // }

  //* Forma corta de crear un constructor , ademas tambien podemos hacer requeridos los argumentos
  Person({required this.edad, required this.nombre});

  // * Constructores por nombres
  Person.personName(this.nombre) {}

  //! Métodos

  @override
  String toString() => 'Nombre : $nombre , tiene: $edad  y  $_bio';

  void exampleFuntion() => print('esto es una prueba');

  //* Función privada
  void _privateFunction() => print('esto es una funcion privada');
}
