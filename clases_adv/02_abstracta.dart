/**
 * Cuando trabajamos con clases abstractas  , estas pasan a ser un tipo de molde , al ser abstractas no se va a permitir
 * crear instancias de esta clases , ya que solo va a tener como objetivo  solamente heredar sus propiedades y metodos
 * 
 * algo a tener en cuenta es de que por medio de una clase abstracta podemos obligar a clases hijas implementar metodos 
 * por ejemplo , puedo definir un metodo pero no implementarlo  , esto hara que en las clases que hereden de la abstracta 
 * deban de implementar ducho metodo
 */

abstract class Vehiculo {
  bool encendido = false;
  String tipo = '';
  void encender() {
    this.encendido = true;
    print('se encuentra encendido');
  }

  void apagar() {
    this.encendido = false;
    print('se encuentra apagado');
  }

  bool
      certificada(); //? metodo definido pero no implementao , es obligatorio su implementación en clases hijas
}

class Moto extends Vehiculo {
  int altura = 0;

  void infoMoto() {
    print('Vehiculo : $tipo , tiene una altura de : $altura');
  }

  //? implementacion obligatoria por parte de la clase abstracta
  @override
  bool certificada() {
    print('Moto certificada');
    return true;
  }
}

void main(List<String> args) {
  // final prueba = new Vehiculo(); //! esto genera un error ya que no podemos instanciar clases abstractas

  final honda = new Moto();

  honda
    ..tipo = 'moto'
    ..altura = 155
    ..encender()
    ..certificada()
    ..infoMoto();
}
