/**
 * cuando declaramos un factory  , hay que entender de que este  nos premite  retornar la creación de 
 * una instancia  o una instancia posteriormente creada.
 * 
 * Para entender un poco mas podemos ver que :
 * 
 * 1. un factory no es un constructor , en pocas palabras, un factory no crea instancias de la clase
 * 2. dentro de un factory podemos hacer todo tipo de procedimiento.
 * 3. un factory basicamente nos permite decidir que tipo de constructor usar dependiendo de la logica que estemos manejando
 * */

class Figures {
  late int base;
  late int altura;
  late int area;
  late String tipo;

  factory Figures(int base, int altura) {
    // creando la logica para el retorno de la instacia

    if (base == altura)
      return Figures.cuadrado(base);
    else
      return Figures.rectangulo(base, altura);
  }

  Figures.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Figures.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

  @override
  String toString() {
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

void main(List<String> args) {
  final figure = new Figures(10, 8);

  print(figure);
}
