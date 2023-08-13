void main(List<String> args) {
  //? properties y methods stactis
  // methodsAndPropertiesStatics();

  //? properties y methods of instances

  methodsAndPropertiesOfInstaces();
}

methodsAndPropertiesOfInstaces() {
  //? properties

  print('*********** propierties ***********');

  double example = 3.56;

  /**firma al double , retorna +1.0 si es mayor a 0 , -1.0 si es menor que cero ,
   * o el valor en si mismo si -0.0 , 0.0 o NaN
  */
  print('sing : ${example.sign}  :: $example');

  // retorna un codigo hash para un valor numerico , este codigo retorna el mismo valor para int y double , ademas de ser compatible con la igualda
  print('hashCode : ${example.hashCode} :: $example');

  // saber si un double es finito
  print('isFinite: ${example.isFinite} :: $example');

  // saber si un double es infinito
  print('isInFinite: ${example.isInfinite} :: $example');

  // saber si un double  no es un numero
  print('isNaN: ${example.isNaN} :: $example');

  // saber si un double es negativo
  print('isNegative: ${example.isNegative} :: $example');

  // Una representación del tipo de tiempo de ejecución del objeto.
  print('runtimeType: ${example.runtimeType} :: $example \n');

  print('*********** methods ***********');

  // retorna el valor absoluto
  print('abs: ${example.abs()} :: $example');

  // devuelve el menor entero que no sea menor que este numero
  print('ceil: ${example.ceil()} :: $example');

  // devuelve el menor double que no sea menor que este numero
  print('ceilToDouble: ${example.ceilToDouble()} :: $example');

  /** 
   * evalua el valor y lo  pone dentro de un rango o un limite 
   * si sobre pasa el rango toamra como valor el rango mas alto
   * si esta por debajo del rango tomara el valor mas bajo
   * si esta dentro del rango tomara su propio valor
   * */
  print('clamp: ${example.clamp(1, 4)} :: $example');

  // retorna -1 si es menor , 1 si es mayor y 0 si son iguales
  print('compareTo: ${example.compareTo(3.56)} :: $example');

  // devuelve el entero mas grande  no mayor que este numero
  print('floor: ${example.floor()} :: $example');

  // devuelve el entero mas grande  no mayor que este numero
  print('floorToDouble: ${example.floorToDouble()} :: $example');

  // devuelve el resto de la division entre ambos numeros
  print('remainder: ${example.remainder(2.0)} :: $example');

  // devuelve el entero mas cercano
  print('round: ${example.round()} :: $example');

  // devuelve el double mas cercano
  print('roundToDouble: ${example.roundToDouble()} :: $example');

  // devuelve el numero como double
  print('toDouble: ${5.toDouble()} :: $example');

  // devuelve el numero como un int , solo toma la parte entera
  print('toInt: ${example.toInt()} :: $example');

  // proporciona una representacion de este valor en formato String
  print('toString: ${example.toString()} :: $example');

  // proporciona una representacion exponencial en formato String de este valor , podemos añadir la facción de los digitos
  print(
      'toStringAsExponential: ${example.toStringAsExponential()} :: $example');

  // proporciona una representacion decimal en formato String de este valor , podemos añadir la facción de los digitos
  print('toStringAsFixed: ${example.toStringAsFixed(4)} :: $example');

  // proporciona una representacion en formato String  con exactamente los digitos de presicion dados
  print('toStringAsPrecision: ${example.toStringAsPrecision(3)} :: $example');

  // retorna el entero , despues de descartar cualquier parte fraccionaria de este numero
  print('truncate: ${example.truncate()} :: $example');

  // retorna el double , despues de descartar cualquier parte fraccionaria de este numero
  print('truncate: ${example.truncateToDouble()} :: $example');
}

methodsAndPropertiesStatics() {
  //?  propierties:

  print('*********** propierties ***********');

  /** 
   * forma de implementar un double infinito , no retorna un numero 
   * Como tal no retorna un numero , ya que es la implementacion de como dart
   * interpreta como un numero infito
   * */
  double infinity = double.infinity;
  print('infinity : ${infinity}');

  // retorna el numero mas alto de manera finita  segun dart
  double maxFinite = double.maxFinite;
  print('maxFinite: $maxFinite');

  // retorna el double minimo positivo
  double minPositive = double.minPositive;
  print('minPositive: $minPositive');

  // no is a number
  double nan = double.nan;
  print('nan: $nan');

  /**
   * implementación de un negativo infito  , como tal no es un numero , solo
   * es la forma de declararlo , dart se encargara de definirlo internamente y 
   * intrepretarlo
  */
  double negativeInfinity = double.negativeInfinity;
  print('negativeInfinity : $negativeInfinity');

  //? Methods :

  print('*********** Methods ***********');

  /**
   * Este metodo permite recibir como valor un string , lo analiza y retorna el valor 
   * analizado en un double
   * 
   * si no logra analizar correctamente el valor , retornara un error 
   */
  double parseMethod = double.parse('26.33');
  print('parse : $parseMethod');

  /**
   * Funciona igual que el metodo parse , pero con la diferencia de que 
   * si en el proceso de analisis  no logra establecer el valor , este puede
   * retornar un null en ves de lanzar un error 
   */
  double? tryParse = double.tryParse('fdsfsd');
  print('tryParse : $tryParse');
}
