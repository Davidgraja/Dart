/**
 * con el contructor Stream.fromFuture creamos una secunecia de suscripción unica , la cual depende de un Future
 * una vez completado el Future , la transmisión activa el listen  del stream el cual tiene los datos entrantes , y emitira data ya sea  de datos o de error 
 * posteriormente el metodo onDone marca la finalización y  hara el cierre del flujo
 * 
 *? Nota : 
 * aunque en este caso las funciones onDone y onError hacen automaticamente el cierre del flujo del stream , siempre debemos estar pendiente del cierre , ya que 
 * en ocasiones vamos a tener que cerrarlo  nosotros mismos , si este cierre no se hace podria generar problemas de rendimiento y mucho mas si es el caso de una 
 * aplicación compleja o cuando hay muchas secuancias activas 
 * 
 * por lo tanto siempre cerrar el flujo una vez finalizado 
*/

void main() {
  Stream<String> stream = Stream.fromFuture(getData());

  String dataReceived = '';

  stream.listen(
    (data) {
      // print('data received : $data');
      dataReceived = data + '- manipulated data';
    },
    onDone: () => print('Done: ${dataReceived}'),
  );

}

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 5));
  print('getData function');
  return 'this is a data of the future';
}
