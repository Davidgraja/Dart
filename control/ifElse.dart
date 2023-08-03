import 'dart:io';

main() {
  stdout.write('¿ Cual es tu edad ? : ');

  int age = int.parse(stdin.readLineSync() ?? '0');

  if (age >= 21) {
    stdout.writeln('Ciudadano');
  } else if (age >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Menor de edad');
  }
}
