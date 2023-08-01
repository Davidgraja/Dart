main() {
  typeBoolean();
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
  if (isActive!) {
    print('sleeping: $sleeping , programming: $programming');
  }
}
