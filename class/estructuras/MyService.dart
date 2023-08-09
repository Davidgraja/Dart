/**
 * la idea de patron singleton es que sin importar cuantas veces creaemos instancias de una clase 
 * esta siempre va a retornar siempre la misma instancia previamente de la clase
 * 
 * Esto me va a servir para que en memoria solo exista una instancia de la clase   
 */
class MyService {
  String url = 'www.google.com';
  String key = '123ABF';

  //* creación del singleton , esta declaracion es la que mantendra en memoria la referencia ala misma instancia
  static final MyService _singleton = new MyService._internal();

  //*  va a trabajar como el constructor , pero por debajo simplemente retorna la instancia singleton  ya creado
  factory MyService() {
    return _singleton;
  }

  //* Constructor que crea la intancia
  MyService._internal();
}
