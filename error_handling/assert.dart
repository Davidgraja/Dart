/**
 * Durante el desarrollo o ejecucion de cualquier programa podemos hacer uso de afirmaciones
 * para interrumpir la ejecución del programa si una afirmación boleana es falsa  
 * 
 * podemos los assert como la forma en como podemos anteponer reglas principalmente a nuestras clases  , auqnue podemos hacer uso de estas en cualquier parte de nuestro
 * programa auqnue se usa mucho en las clases y sobre todo en flutter

 * La sintaxis es la siguiente assert(<condición> , <mensaje opcional>)
*/

void main() {
  final User myUser = User(name: 'David', age: 22, nickName: '');

  print(myUser.name);
  print(myUser.age);
  print(myUser.nickName);
}

class Number {
  int _num;

  Number({required int num})
      : assert(num >= 0, 'El numero debe de ser 0 o mayor'),
        _num = num;

  void info() {
    print('User age: $_num');
  }
}

class User {
  final String name;
  final int age;
  final String nickName;

  User({required this.name, required this.age, required this.nickName})
      : assert(name.isEmpty == false, 'Por favor ingrese un nombre'),
      assert(age >= 0, 'Por favor ingrese un valor igual o mayor que cero'),
      assert(nickName.isEmpty == false, 'Por favor ingrese un nick name');
}
