import 'estructuras/Person.dart';

void main(List<String> args) {
  final persona = new Person(edad: 22, nombre: 'Carlos');

  // forma no tan recomendada de asignar las propiedades a la instancia , aun asi es permitido
  //! persona.nombre = 'David';
  //! persona.edad = 22;
  //! persona.bio = 'Nacio en cartago valle';

  /** 
   * podemos hacer uso del operador de cascada  si no tenemos un constructor, Este operador nos permite realizar una
   * secuencia de operaciones sobre un mismo objeto , ademas de poder acceder a cada una
   * de las propiedades de la instancia.
   * 
   * Tambien es posible  llamae metodos de instancia en ese mismo objeto , Esto permite 
   * escribir un codigo mas fluido

      persona
        ..nombre = 'David'
        ..edad = 22;
   */
  print(persona);

  // haciendo uso de contructores por nombre
  final persona2 = new Person.personName('Juan Luis');
  print(persona2);
}
