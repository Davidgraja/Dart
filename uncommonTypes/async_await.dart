import 'dart:io';

void main(List<String> args) async {
  String path = Directory.current.path + '/uncommonTypes/assets/persons.txt';

  String response = await readFile(path);

  print(response);

  print('Fin del programa');
}

Future<String> readFile(String path) async {
  File file = new File(path);
  return file.readAsString();
}
