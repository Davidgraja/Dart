/**
 * como podemos ver en dart tener varias formas de  crear constructores dentro de las clases
 * una de esas formas  son los constructores constantes.
 *
 * estos tipos de constructores tiene algo muy curioso por que vamos a poder seguir creando instancias como normalmente hariamos 
 * pero el detalle entra cuando declaramos una instancia como constante , lo primero no usariamos la palabra reservado new , sino const 
 * y si una instancia es exactamente igual a otra estas vana a apuntar al mismo espacio de memoria 
 * 
 * como repaso recordemos que una declaracion constante  es compilada en tiempo de ejecución del programa ,
 * en pocas palabras cuando se ejecuta hay se define el espacio en memoria.
 * 
 * en conclución toda instancia constante  creado con un contructor constante , si son iguales van a apuntar al mismo espacio en memoria 
 */

class Location {
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
}

void main(List<String> args) {
  final location1 = new Location(20.222, 45.000);
  final location2 = new Location(20.222, 45.001);
  final location3 = new Location(20.222, 45.001);

  print(location1 == location2); // * false
  print(location2 == location3); //* false

  print('');

  const location4 = const Location(20.222, 45.000);
  const location5 = const Location(20.222, 45.001);
  const location6 = const Location(20.222, 45.001);

  print(location4 == location5); //* false
  print(location5 == location6); //* true
  // print(location2 == location3);
}
