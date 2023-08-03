main() {
  arithmeticOperators();
}

arithmeticOperators() {
  int a = 10 + 5; //  + 15
  a = 10 - 5; //   -  5

  a = 20 * 2; //  *  40

  double b = 34 / 4; // / , 8.5

  b = 10 % 3; //  % modulo o resto de la division, 1.o
  b = -b; // -expresion , usado para negar la expresion

  int c = 10 ~/ 3; //  divicion entera: 3

  int d = 1;

  d++; // incrementar en 1
  d--; // desincrementar en 1

  d += 3; // incrementar en 3
  d -= 2; // desincrementar en 2
  d *= 4; // multiplicar por 4

  print(d);
}

assigmentOperators() {
  // asignacion
  int a = 10;

  int? b;

  b ??= 2; // solo se asigna si el valor  es nulo , asignacion condicional

  // operador ternario:
  String res;

  res = b > a ? 'b es mayor que a' : 'b es menor que a';

  int? c;
  int? d;

  int z;

  z = c ?? d ?? 90;

  // print(z);

  //? operador de tipo :

  int i = 10;
  String y = '20';

  print(i is int);
  print(y is! int);
}
