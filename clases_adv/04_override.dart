/**
 * Como ya hemos visto anteriormente , @override es basimente un decorador que nos permite saber que un metodo esta siendo sobreescrito
 * 
 * nos es obligatorio el poner este decorador , pero si es un bueno hacerlo , ya que eso le inidica  a los demas desarrolladores de que
 * se esta sobre escribiendo dicho metodo
 * 
 * ? Nota : si queremos hacer uso del  metodo padre que se esta sobre escribiendo solo es necesario hacer uso de la palabra reservada super (super.method)
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

  Cliente(super.nombre, super.edad, this.direccion);

  @override
  void info() {
    //  si queremos Heredar  la funcion de la clase padre
    // super.info();

    print(
        'Cliente : $nombre , edad ($edad) , pedido : $pedidos , dirección : $direccion');
  }
}

void main(List<String> args) {
  final david = new Cliente('Julio David', 22, 'calle san emilio');

  david.info();
}
