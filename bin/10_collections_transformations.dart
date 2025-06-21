void main(List<String> args) {
  final names = ['John', 'Jane', 'Matthew'];

  // nameLengths is an iterable not a list
  final nameLengthsIterable = names.map((e) => e.length);
  // nameLengthsIterable[0] is not allowed

  final nameLengths = nameLengthsIterable.toList();

  final filtered = names.where((name) => name.length == 4);
  print(filtered);

  print("------------for-----------");
  for (int i = 0; i < names.length; i++) {
    if (names[i].length > 4) continue;
    print(names[i]);
  }

  print("------------for-in-----------");
  // for-each loop
  for (final name in filtered) {
    print(name);
  }

  print("------------for-each-----------");
  // names.forEach((name) => print(name));
  names.forEach(print);
}
