main(){

  String name = 'David';
  String lastName = 'Grajales';

  // properties

  // Una lista no modificable de las unidades de código UTF-16 de esta cadena.
  print('codeUnits : ${name.codeUnits}');

  // retorna un codigo hash para un valor numerico , este codigo retorna el mismo valor para int y double , ademas de ser compatible con la igualda
  print('hashCode : ${name.hashCode}');

  // retorna un boolean , forma de saber si un string esta vacio o no
  print('isEmpty : ${name.isEmpty}');

  // retorna un boolean , forma de saber si un string tiene cotenido
  print('isNotEmpty : ${name.isNotEmpty}');


}