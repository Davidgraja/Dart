import 'dart:io';

main() async {
  String path = Directory.current.path + '/uncommonTypes/assets/test.dart';

  File file = new File(path);

  await file.create().then(print).catchError(print);

  String path2 =
      Directory.current.path + '/uncommonTypes/assets/testModified.dart';

  // file.delete();

  Future.delayed(Duration(seconds: 3), () {
    file.rename(path2);
    print('Nombre renombrado');
  });

  print('fin del programa');
}
