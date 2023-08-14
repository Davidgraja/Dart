main(){

  String name = 'David';
  String lastName = 'Grajales';
  String fullName = '$name $lastName';
  // String fullName = '$name' ' ' '$lastName';

  // properties

  print('*********** propierties ***********');

  // Una lista no modificable de las unidades de código UTF-16 de esta cadena.
  print('codeUnits : ${name.codeUnits}');

  // retorna un codigo hash para un valor numerico , este codigo retorna el mismo valor para int y double , ademas de ser compatible con la igualda
  print('hashCode : ${name.hashCode}');

  // retorna un boolean , forma de saber si un string esta vacio o no
  print('isEmpty : ${name.isEmpty}');

  // retorna un boolean , forma de saber si un string tiene cotenido
  print('isNotEmpty : ${name.isNotEmpty} \n');

  // retorna un la longitud del String
  print('length : ${name.length}');

  // methods

  print('*********** methods ***********');

  // boolean  que confirma si una serie de caracteres se encuentra dentro del String
  print('contains : ${lastName.contains('G')}');

  // boolean  que confirma si un String finaliaza en un caracter en especial
  print('endsWith : ${lastName.endsWith('S')}');

  // boolean  que confirma si un String inicia en un caracter en especial
  print('startsWith : ${lastName.startsWith('G')}');

  // hacer el relleno de un string al lado izquierdo , dependiendo del length del String , se repitira el patron hasta llegar al numero deseado
  print('endsWith : ${lastName.padLeft( 10  , '***' )}');

  // hacer el relleno de un string al lado derecho , dependiendo del length del String , se repitira el patron hasta llegar al numero deseado
  print('padRight : ${lastName.padRight( 10  , '***' )}');

  // reemplazar  todos los caracteres que coincidan con el patron
  print('replaceAll : ${lastName.replaceAll(RegExp(r'a')  , '*' )}');

  // reemplazar el primer caracter que coincida con el patron
  print('replaceFirst : ${lastName.replaceFirst(RegExp(r'a')  , '*' )}');

  // reemplazar  dentro de un rango el String desde inicio a fin , podemos añadir el start , end y el nuevo String
  print('replaceRange : ${fullName.replaceRange( 6 , null ,  'Paredes') }');

  // cortar una parte del String
  print('substring : ${lastName.substring(0,4)}');

  // Saber el index de un caracter dentro del String
  print('indexOf : ${lastName.indexOf('e')}');

  // Saber el ultimo index del caracter dentro del String que coincida con el patron
  print('lastIndexOf : ${lastName.lastIndexOf('a')}');

  // forma de recordar un String por medio de un patron
  print('split : ${fullName.split(' ')}');

  // Tarea: Capitalizar ultima letra del String
  print('capitalizar s : ${fullName[fullName.length - 1 ].toUpperCase()}');

  // Transformar el  String en mayusculas
  print('toUpperCase : ${fullName.toUpperCase()}');

  // Transformar el  String en minusculas
  print('toLowerCase : ${fullName.toLowerCase()}');

  // Eliminar espacios de un String a su lado izquierdo
  print('trimLeft : ${'      my name'.trimLeft()}');

  // Eliminar espacios de un String a su lado derecho
  print('trimLeft : ${'my name      '.trimRight()}');

  // Eliminar espacios de un String en ambos lados
  print('trim : ${'      my name      '.trim()}');


  // Operadores

  print('*********** operators ***********');

  // Hace que el String se repita 3 veces
  print('operador * : ${ name * 3 }');

  // Hace que podamos concatenar otro String
  print('operador + : ${ name + ' :)' }');

  // Hace que podamos acceder a los caracteres de un String de forma similar que en una lista
  print('operador [] : ${ name[0] }');



}