import 'dart:async';

void main() {
  final streamController = new StreamController<String>();

  streamController.stream.listen((event) {
    print('evento : $event');  //? información recibida o añadida 
  },
      cancelOnError: true,  //?  Si hay algun error se detendra la ejecucion del stream y entrara en callback onError
      onDone: () => print('Done : Todo ok'), //? Se ejecuta si no se genera ningun error  al finalizar la ejecución del stream 
      onError: (err) => print('Error : $err')); //? Se ejecuta si se genera un error en el proceso de ejecución del stream 

  streamController.sink.add('data correcta'); //? Se añade data o un nuevo evento al stream 
  streamController.sink.add('información recibida');
  streamController.sink.addError('data no permitida'); //! Se añade un evento de error dentro del stream 

  streamController.close(); //? Se hace el cierre  del stream 
  print('fin del programa');
}
