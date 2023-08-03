main() {
  //El label o etiquetas en ciclos for , while , do while , etc , me permite  que desde un ciclo o loop anidado pueda cerrar un loop superior

  iterationOne:
  for (int i = 0; i < 5; i++) {
    print('valor de i: $i');

    iterationTwo:
    for (int j = 0; j < 5; j++) {
      if (j == 2) break iterationOne;
      print('j : $j');
    }
  }
}
