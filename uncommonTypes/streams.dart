import 'dart:async';

/**
 * los streams  se pueden definir como una corriente de datos o flujo de información 
 * estos funcionan de manera similar a las extenciones reactivas
 * 
 * Estos trabajan por defecto asincronamente , pero a diferencia de los Future  los stream 
 * se deben de definir antes de recibir a información
 * 
 * Los stream son el tipo de estructura que permite el trabajo con los sockets
 */
void main(List<String> args) {
  final streamController = StreamController();

  // hacemos referencia al flujo de formacion y definición  del proceso de la información
  streamController.stream.listen((event) => print('evento : $event'),
      onError: (err) => print('Error : $err'),
      // si cancelOnError esta en true no continuara con el flujo del stream
      cancelOnError: false,
      // El OnDone solo se ejecutara si hacemos el cierre del stream
      onDone: () => print('Done : Todo ok'));

  // añadiendo informacion a la corriente de datos
  streamController.sink.add('Credenciales correctas');
  streamController.sink.add('Envio de credenciales');
  streamController.sink.addError('credenciales incorrecta');
  streamController.sink.add('gmail correcto');

// podemos cerrar el stream para que no acepte mas eventos
  streamController.sink.close();
  print('fin del programa');
}
