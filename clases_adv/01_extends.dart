/**
 * hacemos uso de la palabra reservada extends cuando queremos heredar de otra clase sus propiedades y metodos
 * 
 * ademas podemos  declarar propiedades y metodos propios  aunque estemos heredando de otra clase
 */

class Vehiculo {
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
}

class Moto extends Vehiculo {
  int altura = 0;

  void infoMoto() {
    print('Vehiculo : $tipo , tiene una altura de : $altura');
  }
}

main() {
  final yamaha = new Moto();

  yamaha
    ..tipo = 'Moto'
    ..altura = 140;

  yamaha.encender();
  yamaha.apagar();
  yamaha.infoMoto();
}
