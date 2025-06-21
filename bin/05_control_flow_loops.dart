void main(List<String> arguments) {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  bool condition = true;
  while (condition) {
    break;
  }

  do {
    print('Ran at least once');
  } while (false);
}
