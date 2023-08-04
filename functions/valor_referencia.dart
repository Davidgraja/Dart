/**
 * cuando enviamos datos primitivos como (booleans , int , double , String , etc )  a funciones , estos datos primitivos se pasan por valor y no por referencia 
 * Esto quiere decir de no va a apuntar al mismo espacion de memoria , si no que crearan un nuevo espacio en memoria 
 * donde se hara el respectivo proceso a ese valor.
 */
String capitalize(String text) {
  return text.toUpperCase();
}

/**
 * Cuando enviamos objetos como (List , Sets , Maps , Etc) a funciones , estos objetos se pasn por referencia ,
 * Esto quiere decir de que se envia a esa función  la referencia al objeto original , por lo tanto  toda modificación
 * que se haga a tal referencia  se vera reflejada en el objeto original 
 * 
 * podemos solucionar esto , simplemente rompiendo la referencia a ese objeto , Esto lo podemos hacer de muchas formas
 * la forma mas facil en este caso es usar el operador spread { ...object } , [...object], etc
 */
Map<String, String> capitalizeTwo(Map<String, String> mapa) {
  mapa = {...mapa}; //? rompiendo la referencia

  mapa['name'] = mapa['name']?.toUpperCase() ?? 'no hay valor';

  return mapa;
}

void main(List<String> args) {
  String name = 'david';
  String name2 = capitalize(name);

  Map<String, String> hero = {'name': 'Tony Stark', 'NickName': 'Iron Man'};

  Map<String, String> heroTwo = capitalizeTwo(hero);

  print(hero);
  print(heroTwo);
}
