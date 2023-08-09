/**
 * Cuando trabajamos con clases tambien es posible declarar las propiedades de esa clse como final y de esa menera tener los beneficios de este tipo de  declaracion
 * 
 * El problema es que al definir por medio de final estas obligatoriamente tienen que ser inicializadas , esto es un problema ya que en la mayoria de las veces vamos 
 * a querer definir estas por medio del constructor 
 * 
 * algo ah tener en cuenta es que al declrar con final , no existe el setters en estas declaraciones
 * 
 */

class Cuadrado {
  final int lado;
  final int area;

  // ! de esta forma no es permitida , ya que no existe setters para establecer en declaraciones final
  // Cuadrado(int lado, int area) {
  //   this.lado = lado;
  //   this.area = area;
  // }

  //* posible solución , en el caso de que un argumento no dependa de otro  , es posible establecer los valores desde el constructor
  // Cuadrado(this.lado, this.area) {}

  // * solucion  mas factible de establecer las declaraciones final desde el contructor
  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}

void main(List<String> args) {
  final cuadrado = new Cuadrado(5);

  print(cuadrado.area);
}
