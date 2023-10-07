/** 
 * podemos hacer uso de los Stream de forma cotidiana ,  ya que tbrinda uan forma agradable y legible de crear transmisiones,
 * hay que tener en cuenta de que si vamos a generar transmisiones desde una funcion y enviarla hacia otro lado  del programa ,
 * debemos de hacer uso de las palabras reservadas async* y yield 
 * 
 * aunque ya sabemos que los Stream trabajan de manera asincrona , la plabara reservada async* va indicar a la funcion que va a trabajar
 * con Stream , habilitando de esta forma el uso de la palabra reservada yeild  y deshablitamos  el uso de return
 * 
 * Siempre que queramos trabajar y transmitir  informacion  con los Streams debemos de hacerlo de esta forma
 */

void main() {
  final number = generateNumber(2);
  final myNum = number.take(2);
  myNum.forEach(print);
}

Stream<int> generateNumber(int num) async* {
  while (num < 20) {
    yield num++;
  }
}
