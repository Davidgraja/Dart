void main() {

  throwErrorExample4(5);
}

void throwError(int num) {
  if (num < 0) {
    throw FormatException('no se permiten valores menores a $num');
  }

  print(num);
}

void throwErrorExample2(int num) {
  if (num < 10) {
    throw 'no se permiten valores menores a $num';
  }

  print(num);
}


void throwErrorExample3(int num) {
  if (num < 10) {
    throw UnimplementedError('no se permiten valores menores a $num');
  }

  print(num);
}

void throwErrorExample4(int num) {
  if (num < 10) {
    throw Exception('no se permiten valores menores a $num');
  }

  print(num);
}
