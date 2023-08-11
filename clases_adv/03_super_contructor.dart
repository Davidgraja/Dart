/**
 * cuando estamos heredando de una clase y esta clase contiene un constructor , implicitamente debemos de hacer uso de este 
 * ya que cuando hacemos uso del contructor de la clase que heredad debe tambien  de hacer uso del constructor de su la clase padre
 * 
 * A esto es a lo que le llamamos como super constructor , ya que es la forma implicita de como le podemos pasar informacion al constructor padre
 */

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void info() => print('Nombre: $nombre , edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List pedidos = [];

  //* Primera forma en como le podemos pasar informacion al constructor padre
  Cliente(super.nombre, super.edad, this.direccion);

  //* Segunda forma en como le podemos enviar informacion al conntructor padre
  // esta forma es mucho mas larga pero es aceptable , basicamente los dos puntos significan que primero se ejecute ese codigo antes de ejecutar el contructor de la clase
  // Cliente(int edadNueva, String nombreNuevo , this.direccion) : super(nombreNuevo, edadNueva);
}

void main(List<String> args) {
  // final david = new Cliente(22, 'Julio David');
  final david = new Cliente('Julio David', 22, 'calle san emilio');

  david.info();
}
