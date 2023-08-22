main() {
  final person = {
    'name': 'Julio David',
    'lastName': 'Grajales Paredes',
    'age': 22
  };

  final info = {
    'city': 'Madrid',
    'country': 'Spain',
    'address': 'calle san emilio N60'
  };

  print('*********** properties ***********');

  print('length :  ${person.length}');

  print('isEmpty :  ${person.isEmpty}');

  print('isNotEmpty :  ${person.isNotEmpty}');

  print('keys :  ${person.keys}');

  print('values :  ${person.values}');

  print('entries :  ${person.entries}');

  print('\n*********** methods ***********');

  person.addAll(info);
  print('addAll : ${person}');

  print('remove : ${person.remove('address')}');

  /*
  person.removeWhere((key, value) {
    if(key != 'name' ){
      return true;
    }else{
      return false;
    }
  });*/
  // person.removeWhere((key, value) => (key == 'name' ) ? false : true);
  // print('removeWhere : ${person}');


  person.forEach((key, value) {
    print('forEach = key : $key  value : $value');
  });


  final res = person.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('map : $res');


  // Actualizar un key en especifico
  person.update('age', (value) => 23);
  // añadir un key
  person.update('status', (value) => 'New', ifAbsent: () => 'Soltero');
  print('update : $person');


  person.updateAll((key, value) {
    return value.toString().toUpperCase();
  });
  print('updateAll : $person');

  // si encuentra la key la retornara
  final response = person.putIfAbsent('name', () => 'chanchito');
  // si no encuentra la key la añadira al map
  final response2 = person.putIfAbsent('pet', () => 'chanchito');

  print('putIfAbsent : $person');

}