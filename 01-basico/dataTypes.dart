main() {
  typeSets();
}

int typeInt() {
  int myInt1 = 34;
  var myint2 = 43;

  int myInt3 = myInt1 + myint2;

  return myInt3;
}

double typeDouble() {
  double myDouble = 23.5;
  var myDouble2 = 34.42;
  return myDouble2 + myDouble;
}

// * dynamic lo podemos usar cuando queremos desabilitar en una variable o funcion etc, la comprobacion estatica
dynamic typeNull() {
  // Por defecto dart necesita recibir el tipo de dato , pero tambien podemos definir variables con valor nulo , o sin valor , claramente debemos de indicar el tipo de dato pero al  momento de inicializarla va a tomar el valor de null.

  int? c;
  return c;
}

String typeString() {
  String name = 'David';
  var LastName = "Grajales Paredes";

  String multiline = '''
  this is a message multiline in dart
  the name of user is $name $LastName''';

  return multiline;
}

typeBoolean() {
  bool sleeping = false;
  bool programming = !sleeping;

  bool? isActive;
  isActive = true;
  if (isActive) {
    print('sleeping: $sleeping , programming: $programming');
  }
}

typeList() {
  //? Primera forma de definir una lista , una lista la podemos definir como una collecion de datos
  var lenguages = ['JavaScript', 'python', 'Golang', 'c#'];

  //? segunda forma
  List<String> lenguagesTwo = ['Dart', 'php', 'ruby'];

  //? tercera forma
  var numbers = <int>[
    1,
    2,
    3,
  ];

  print(numbers);
}

typeSets() {
  //? los sets al igual que las listas son un tipo de collecion pero en este caso son desordenadas y tienen la cualidad de no permitir datos repetidos dentro de su extructura
  Set<String> lenguages = {'Dart', 'php', 'ruby'};

  //? no se permiten datos repetidos
  lenguages.add('python');
  lenguages.add('python');
  lenguages.add('python');
  lenguages.add('python');

  //? en este punto lenguages tendra como valores {'Dart', 'php', 'ruby' , 'python'};
  // print(lenguages);

  //? tambien podemos transformar una lista a set  y de esa poder trabajar con esta extructura
  var lenguagesList = ['JavaScript', 'python', 'Golang', 'c#'];

  lenguagesList.add('Java');
  lenguagesList.add('Java');
  lenguagesList.add('Java');

  Set<String> newLengages = lenguagesList.toSet(); // tranformacion set
  print(newLengages.toList().length); //trasnformacion a lista nuevamente
}
