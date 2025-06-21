// In Dart functions can be passed into
// other functions. They are first class
// citizens. A function that accepts
// other functions are called
// Higher Order Functions

void main(List<String> arguments) {
  int plusFive(int x) {
    return x + 5;
  }

  final twicePlusFive = twice(plusFive);

  print(plusFive(3));
  print(twicePlusFive(3));
}

typedef IntTransformer = int Function(int);

// return type of a function
IntTransformer twice(IntTransformer f) {
  // Anonymous Functions
  // Has no name
  return (int x) {
    return f(f(x));
  };
}
