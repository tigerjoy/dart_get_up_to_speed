typedef JSON = Map<String, dynamic>;

void main(List<String> arguments) {
  // No Arrays are present in Dart
  // It only has Lists

  // This is a dynamic list
  List myList = [1, 2, 3];
  final firstElement = myList[0];

  print('length: ${myList.length}');
  print('firstElement: $firstElement');

  // This is an integer list
  List<int> integerList = [1, 2, 3];
  final firstIntElement = integerList[0];

  // Type inference
  // Type: List<int>
  final myList2 = [1, 2, 3];

  // Type: List<Object>
  final myList3 = [1, 2, 3, 'hello'];

  // We can define a type of list in list
  // literals
  <int>[1, 2, 3];

  // JSON
  Map<String, dynamic> myMap = {
    'name': 'John Doe',
    'age': 42,
    'registered': true,
  };

  final name = myMap['name'];

  // Sets
  Set<int> mySet = {1, 2, 3, 2};
  print(mySet);
  print(mySet.length);
}
