import 'estructuras/MyService.dart';

void main(List<String> args) {
  final service1 = new MyService();
  service1.url = 'www.myService1.com';

  final service2 = new MyService();
  service2.url = 'www.myService1.com/v2';

  print(service1 == service2); //* true

  //* Ambos van a apuntar al mismo espacio en memoria
  print(service1.url);
  print(service2.url);
}
