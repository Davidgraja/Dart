import 'dart:async';

void main(List<String> args) {
 
  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen((event) => print('evento : $event'),
      onError: (err) => print('Error : $err'),
      cancelOnError: false,
      onDone: () => print('Done : Todo ok'));

  streamController.stream.listen((event) => print('evento 2: $event'),
      onError: (err) => print('Error 2: $err'),
      cancelOnError: true,
      onDone: () => print('Done 2: Todo ok'));

  // añadiendo informacion a la corriente de datos
  streamController.sink.add('Credenciales correctas');
  streamController.sink.add('Envio de credenciales');
  streamController.sink.addError('credenciales incorrecta');
  streamController.sink.add('gmail correcto');

  streamController.sink.close();
  print('fin del programa');
}