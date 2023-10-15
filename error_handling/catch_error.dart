void main(List<String> args) {
  try {
    throwErrors('Exception');
  } on FormatException {
    print('FormatException caturado ');
  } on UnimplementedError catch (e) {
    print('UnimplementedError caturado --> $e ');
  } on Exception {
    print('Exception caturado ');
  } catch (e) {
    print('Error capturado : $e');
  } finally {
    print('captura de errores finalizado');
  }
}

throwErrors(String phrase) {
  if (phrase case 'FormatException') {
    throw FormatException('called to FormatException');
  } else if (phrase case 'UnimplementedError') {
    throw UnimplementedError('called to UnimplementedError');
  } else if (phrase case 'Exception') {
    throw Exception('called to Exception');
  } else if (phrase case '') {
    throw 'Out of llamas!';
  }

  print(phrase);
}
