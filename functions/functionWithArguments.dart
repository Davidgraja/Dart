// Argumentos posicionales
void greet(String message) {
  print(message);
}

/**
 * podemos recibir o no un  valor en el argumento : le podemos decir al argumento [message] que puede recibir o no un valor anteponiento el caracter ? en la declaracion del tipo de dato 
 *  Esto permite que un argumento pueda recibir como valor un  nulo , hay que tener encuenta de que si o si hay que enviar un valor , ya sea del tipo de dato que se declaro el argumento o null 
 */

void greet2(String? message, String name) {
  print('$message , $name');
}

/**
 * Definir valores por defecto si un argumento no es enviado
 * como podemos ver en la funcion los argumentos se envuelven dento de llaves cuadradas [] , 
 * y es aqui donde definimos si vana tener un valor por defecto o incluso si van a ser null
 */
void greet3([String name = 'empty', String lastName = 'empty', int? edad]) {
  print('Name : $name , lastName: $lastName , edad: $edad ');
}

/**
 * Argumentos por nombre : podemos definir argumentos por nombres, 
 * esto lo podemos hacer envolviendo los arguementos dentro de  llaves normales {},
 * y aqui es donde definimos los argumentos , como vemos en el ejemplo , [name] puede ser null
 * [ nickName ] usa la palabra reservada required para hacer obligatorio este arguemento y
 * [power] tiene un valor por defecto.
 * 
 * cada una de estas definiciones es posible  cuando creamos arguementos por nombres
 * 
 * Ahora , si queremos trabajar de la mano argumentos posicionales y arguementos por nombres 
 * podemos crear argumentos por fuera de las llaves los cuales seran argumentos posicionales , y los que esten
 * dentro de las llaves seran siguiendo argumentos por nombre  
 * 
 */
void greet4({String? name, required String nickName, int power = 0}) {
  print('$name - $nickName - $power');
}

void main(List<String> args) {
  // greet('hi , David');
  // greet2(null, 'David');
  // greet3('Julio David', 'Grajales Paredes', 22);

  // greet4(nickName: 'Iron Man', name: 'Tony Stark', power: 8);
  greet4(nickName: 'Iron Man');
}
