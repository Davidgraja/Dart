/** 
 * Los Future es basicamente trabajar con promesas  , es muy parecido a como se trabaja con JavaScript  
 * basicamente es la forma en como podemos ejecutar tareas mientras que el programa sigue con el flujo normal del codigo
 * El Future puede retornar todo tipo de dato u objeto 
 */
main() {
  Future<String> test = Future.delayed(Duration(seconds: 5), () {
    print('5 segundos despues');
    return 'retorno del Future';
  });

  test.then((value) => print(value));
  print('fin del programa');
}
