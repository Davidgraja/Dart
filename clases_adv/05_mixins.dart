/**
 * los mixin funcionan de manera parecida a como lo  hacen las clases abstractas , estas no pueden tener un constructor  y no pueden ser instanciadas
 * Por lo tanto la funcion de estas al final es la de compartir funciones y propiedades con las clases  y clases abstractas
 * 
 * Podriamos  comparar estas con las interfaces en otros  lenguages de programación
 * 
 * cuando queremos que una clase herede propiedades de un mixin se debe de hacer con la palabra reservada with , ya que extends solo es posible 
 * usarse con clases 
 * 
 * 
 * ? en conclución la finalidad de un mixin es compartir  propiedades y funciones con las clases , algo muy similiar a las interfaces en otros lenguages de programación
 *  */

mixin Contador {
  int total = 0;

  int incremetar() {
    total += 1;

    return total;
  }

  int desIncrementar() {
    if (total == 0) return 0;

    total -= 1;
    return total;
  }

  void reset() {
    total = 0;
  }
}

class Tickets with Contador {
  Tickets(int init) {
    super.total = init;
  }
}

class State with Contador {
  String? name;

  State(String name, int initial) {
    this.name = name;
    this.total = initial;
  }
}

void main() {
  final prueba = new Tickets(5);

  prueba.desIncrementar();
  prueba.desIncrementar();
  print(prueba.total);
  prueba.reset();
  print(prueba.total);

  final clicks = new State('clicks', 0);

  clicks.incremetar();
  clicks.incremetar();
  clicks.incremetar();
  print(clicks.total);
}
