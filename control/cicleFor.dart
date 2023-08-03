import 'dart:io';

main() {
  int num;

  try {
    stdout.write('Ingrese numero de la tabla que desea obtener : ');

    num = int.parse(stdin.readLineSync() ?? '1');
  } catch (e) {
    num = 1;
  }

  for (int i = 1; i <= 10; i++) {
    int res = num * i;
    stdout.writeln('$num * $i = $res');
  }
}
