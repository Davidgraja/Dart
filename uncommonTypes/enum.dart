main() {
  States state = States.comprometido; // comprometido , soltero , viudo
  switch (state) {
    case States.casado:
      print('Esta casado');
      break;
    case States.comprometido:
      print('Esta comprometido');
      break;
    case States.soltero:
      print('Esta soltero');
      break;
    case States.viudo:
      print('Esta viudo');
      break;
  }
}

/**
 * Los enumeraciones o enums  segun la documentación son un tipo de clase que se utiliza para representar un numero fijo de valores constantes 
 * es muy util en muchos casos en el cual deseas tener valores fijo dentro de un extructura , por ejemplo el estado civil de una persona 
 */
enum States { casado, comprometido, soltero, viudo }
