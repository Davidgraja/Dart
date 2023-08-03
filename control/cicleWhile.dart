import 'dart:io';

main() {
  cicleDowhile();
}

cicleWhile() {
  String continuar = 'y';
  int count = 0;

  while (continuar == 'y') {
    count++;

    stdout.writeln('contador: $count');

    stdout.writeln('Desea continuar (y/n)');

    continuar = stdin.readLineSync() ?? 'n';
  }
}

cicleDowhile() {
  String continuar = 'y';
  int count = 0;

  do {
    count++;

    stdout.writeln('contador: $count');

    stdout.writeln('Desea continuar (y/n)');

    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');
}
