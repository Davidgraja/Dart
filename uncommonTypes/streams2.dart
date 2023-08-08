import 'dart:async';

void main(List<String> args) {
  // Tambien podemos definir el tip de dato que va a fluir dentro del stream y de esa manerar tener un tipado
  // * Forma larga : final StreamController<String> streamController = StreamController();

  // Forma corta :
  final streamController = new StreamController<String>.broadcast();

  /** 
   * Streams de una o multiples  suscripciones , normalmente solemos hacer que un listen() q solo escuchena una suscripcióno stream ,
   * pero podemos configurar para que se pueda tener multiles suscriptciones.
   * 
   * Esto lo hacemos añadiendo la funcion broadcast como lo vemos arriba en la declaracion del stream 
   * con esto se podra tener un stream de multiples suscripciones 
   */
  streamController.stream.listen((event) => print('evento : $event'),
      onError: (err) => print('Error : $err'),
      cancelOnError: false,
      onDone: () => print('Done : Todo ok'));

  streamController.stream.listen((event) => print('evento 2: $event'),
      onError: (err) => print('Error 2: $err'),
      cancelOnError: false,
      onDone: () => print('Done 2: Todo ok'));

  // añadiendo informacion a la corriente de datos
  streamController.sink.add('Credenciales correctas');
  streamController.sink.add('Envio de credenciales');
  streamController.sink.addError('credenciales incorrecta');
  streamController.sink.add('gmail correcto');

// podemos cerrar el stream para que no acepte mas eventos
  streamController.sink.close();
  print('fin del programa');
}
