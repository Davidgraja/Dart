/**
 * EL constructor Stream.periodic  permite crear una secuencia que emite evento repetitivamente en intervalor de tiempo 
 * Los valores de los eventos se calculan invocando computation , que en palabras mas entendibles es el argumento de devolución  que nos entrega la secuencia,
 * este argumento de devolucion tiene como valor un numero entero  el cual inicia en 0 y se incrementa en cada evento generado
 * 
 * La duración de cada evento debe ser no negativa
 * 
 *  */

void main(List<String> args) {
  final messages = <String>[
    'Todo bien',
    'hay gono.....',
    'Mis respetos',
    'hay mk...',
    'ummmmmmmm',
    'Que se dice ! '
  ];

  final stream =
      Stream.periodic(const Duration(seconds: 1), (value) => messages[value])
          .take(messages.length);

  stream.forEach(print);

  //? podemos controlar o imponer reglas sobre que datos queremos tener y cuales no
  /* final stream =
      Stream.periodic(const Duration(seconds: 1), (value) => value + 1).take(5);

  final newStream = stream.where((event) => event != 2);
  newStream.forEach(print); */
}
