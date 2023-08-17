main(){
  List<int> list1 = [7,2,3,4,5];
  List<int> list2 = [3,2,5,4,-12];
  List<int> list3;
  List<String> names;

  Iterator i = list1.iterator;
  print('*********** propierties ***********');

  print('length : ${list1.length}');
  print('first : ${list1.first}');
  print('last : ${list1.last}');
  print('isEmpty : ${list1.isEmpty}');
  print('isNotEmpty : ${list1.isNotEmpty}');
}