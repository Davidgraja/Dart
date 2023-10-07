/** El contructor Stream.fromFutures funciona de manera similar a como hace el constructor Stream.fromFuture , ya que si crea un flujo de suscripción unica
 * pero en este caso lo hace a partir de un grupo de Futures, Esto quiere decir de que vamos a tener un grupo de Futures ejecutandose en paralelo  y 
 * el Stream , flujo o secuencia de datos va ir informando los resultados de los Futures en el orden que se vayan completando .
 * 
 * cada Future va a proporcionar un evento de datos o de error , esto va a depender de como se complete el Future
 * 
 * Cuando todos los Futures se completen la transmisión se cerrará
 * 
 * Si el conjunto de FUtures esta vacio , este hara el cierre de la transmision lo antes posible 
 */


void main() {
  final Stream stream = Stream.fromFutures([firstTask(), secondTask() , thirdTask()]);

  stream.listen(print, onDone: () => print('Complete'), onError: print);
}

Future<int> firstTask() async {
  await Future.delayed(const Duration(seconds: 5));

  final operation = 32 / 2;

  return operation.toInt();
}

Future<String> secondTask() async {
  await Future.delayed(const Duration(seconds: 2));

  return 'Second task complete';
}

Future<dynamic> thirdTask() async {
  final operation = 5 % 2;

  return (operation != 0) ? AssertionError('El numero es impar') : operation; 
}
