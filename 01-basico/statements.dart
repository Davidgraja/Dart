void main() {
  lateStatement();
}

finalAndConst() {
  var a = 10;

  //? las declaraciones con final y conts no nos permitiran reasignar la variable , pero ambas no son iguales ,  final es mas ligera en mememoria , por lo tanto lo mas recomentado es usar final , const es considerada una variable de memoria  ya que una vez se compila se crea en memoria y no permite su modificación

  final double b = 10;
  const double c = 10;

  //? diferencias entre final y const , ejemplo :

  final List<String> lenguages = ['JavaScript', 'python', 'Golang', 'c#'];

  const List<String> lenguagesTwo = ['Dart', 'php', 'ruby'];
  //* List<String> lenguagesTwo = const ['Dart', 'php', 'ruby'];  segunda forma de declarar una lista de tipo const

  //* final si nos permite alterar la lista , pero no reasignar la variable
  lenguages.add('Java');

  //! const no nos permite alterar la lista , saldra un error
  // lenguagesTwo.add('kotlin');
}

lateStatement() {
  //* late es muy utilizada cuando se esta trabajando en flutter y sobre todo con clases

  final double example;
  example = 23.8;

  late final double x;
  x = 2.89;

  print(x);

  //? en resumen , las declaraciones de variables con final y late son similares , ambos permiten la declaracion de una variable y luego asignar  como vemos en el ejemplo , tambien hay que añadir de que late se suele usar mas en declaracion dentro de clases
}
