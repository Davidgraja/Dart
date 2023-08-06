main() {
  Future<String> test = Future.delayed(Duration(seconds: 5), () {
    if (1 == 1) {
      throw 'Esto se jodio !!!';
    }

    return 'retorno del Future';
  });

  test.then(print).catchError(print);
  print('fin del programa');
}
