main() {
  int a = 10;
  int b = 20;

  List<int> numbers = [1, 2, 3, 2, 4, 5, 6, 6, 7, 8, 9, 9, 10, 10, 1];

  var newList = numbers.where((element) => element > 5);

  print(newList.toSet());
}

int arraowFuntions(int x, int y) => x + y;
