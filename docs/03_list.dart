main(){
  List<int> list1 = [7,2,3,4,5];
  List<int> list2 = [3,2,5,4,-12];
  List<String> list3 = [];
  List<int> list4 = [5,6,7,8,9,0,5,3,6];
  List<String> names = ['Carlos',  'Jaime'];
  List<String> lastNames = ['Gimenes',  'Grajales' , 'Paredes'];

  Iterator i = list1.iterator;

  print('*********** propierties ***********');

  print('length : ${list1.length}');
  print('first : ${list1.first}');
  print('last : ${list1.last}');
  print('isEmpty : ${list1.isEmpty}');
  print('reversed : ${list1.reversed.toList()}');
  print('isNotEmpty : ${list1.isNotEmpty} \n');

  print('*********** methods ***********');

  list3.add('niño');
  print('add : ${list3}');
  
  list3.addAll(['zultan' , 'pecas' , 'bruno']);
  print('addAll : ${list3}');


  list3.clear();
  print('clear : $list3 ');

  print('contains : ${names.contains('Carlos')} ');

  print('elementAt : ${names.elementAt(1)} ');

  final listEvery = list4.every((element) => element >= 0);
  print('every : ${listEvery} ');

  lastNames.fillRange(1, 2 ,'Montoya');
  print('fillRange : ${lastNames} ');

  int res = list4.firstWhere((element) =>  element > 40 , orElse: ()=> -1);
  print('firstWhere : $res');
  
  
  lastNames.insert(0, 'Sanchez');
  print('insert : $lastNames');

  lastNames.insertAll(0 , ['Velez' , 'Osorio']);
  print('insertAll : $lastNames');


  print('join : ${lastNames.join(',')}');


  Map myMap = list1.asMap();
  print('asMap : $myMap');

  print('indexOf : ${names.indexOf('Jaime')}');


  // forma larga : indexWhere
  /*int num = list1.indexWhere((element){
    if(element == 4) return true;
    else return false;
  } );*/

  // forma corta : indexWhere
  int num = list1.indexWhere((element) => (element == 4) ? true : false );

  print('indexWhere : ${num}');


  print('remove : ${names.remove('Jaime')}');
  print('removeLast : ${list1.removeLast()}');
  print('removeAt : ${list1.removeAt(1)}');

  list4.removeRange(1, 4);
  print('removeRange : ${list4}');


  list2.shuffle();
  print('shuffle : $list2');

  list2.sort();
  print('sort : $list2');


  list2.forEach((element) => print('forEach $element'));

  final newList = list2.map((e) => e * 2 ).toList();
  print('map $newList');


  print('reduce : ${[1,4,5].reduce((value, element) => value + element )}');

  final lastNames2 = lastNames.sublist(0, 2);
  print('sublist : $lastNames2');

  final test =  list2.where((element) => element >2 ).toList();
  print('where : $test');
  
  
  final test2 = lastNames.take(2).toList();
  print('take : ${test2}');

  var numbers = list4.takeWhile((value) => value != 6 ).toList();
  print('takeWhile : ${numbers}');
}