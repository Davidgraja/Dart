import 'dart:io';

main() {
  // Imprimir en el cmd
  stdout.write('ingrese su nombre: ');

  // Leer información del usuario

  String? nombre = stdin.readLineSync();

  stdout.writeln('tu nombre es : $nombre');
}
