import 'dart:collection';

/**
 * un  queue o cola , es un tipo de dato no muy comun en dart  , este trabaja de forma muy similar a 
 * como lo hace las lista , incluso podemos hacer uso de muchos metodos sobre estos , solo que los queue trabajan de forma secuencial 
 */

main() {
  // De esta forma podemos declarar un queue y hasta podemos definir su tipo de dato
  Queue<int> cola = new Queue();
  final cola2 = Queue<int>();

  // Podemos añadir los datos que va almacenar , ya sea una lista o set
  // * cola 1 :
  cola.addAll([10, 20, 30, 40]);

  // * cola 2:
  cola2.addAll({1, 2, 3, 4, 5});
  cola2.addFirst(0);
  cola2.addLast(6);

  /** NOTA:
   * ? Una forma sencilla en como podemos recorrer un queue ,lista , set  es por medio de un tipo de dato Iterator
   * ? este permite asignar a una variable de tipo Iterator cada uno de los indices , de esta manera podemos controlar y 
   * ? barrer cada uno de los elementos de estas colleciones
   * tambien se puede barrer por un ciclo for , forEach , while ,  si haci lo deseamos 
   */

  Iterator i = cola.iterator; // declaracion de un Iterator

  while (i.moveNext()) {
    print(i.current);
  }
}
