main() async {
  try {
    String test = await throwError();
    print(test);
  } catch (e) {
    print(e);
  }
  print('fin del programa');
}

Future<String> throwError() {
  Future<String> test = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      return throw 'Esto se jodio !!!';
    }

    return 'retorno del Future';
  });

  return test;
}
