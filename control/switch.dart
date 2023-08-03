import 'dart:math';

main() {
  int num = Random().nextInt(7);

  // num = 10;
  print(num);

  switch (num) {
    case 0:
      print('lunes');
      break;
    case 1:
      print('martes');
      break;
    case 2:
      print('miercoles');
      break;
    case 3:
      print('jueves');
      break;
    case 4:
      print('viernes');
      break;

    case 5:
      print('sabado');
      break;

    case 6:
      print('Domingo');
      break;

    default:
      print('no es un dia de la semana');
  }
}
