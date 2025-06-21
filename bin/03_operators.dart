void main(List<String> arguments) {
  // Binary Operators
  // <operand1> <operator> <operand2>
  int result;
  result = 5 + 5;
  result = 5 - 5;
  result = 5 * 5;
  // By default division operator is
  // considered by the compiler to return
  // double so store it in a double
  // result = 5 / 5;
  double resultDouble = 5 / 5;

  // Truncating Division Operator
  // Floor division
  result = 5 ~/ 5;

  int x = 5;
  double y = 5;
  x++; // 6
  ++x; // 7

  x--; // 5

  x = x + 5; // 20
  x += 5;
  x -= 5;
  x *= 5;
  // /= requires double variables
  y /= 5;
  x ~/= 5;

  bool isEqual = 5 == 10; // false
  bool notEqual = 5 != 10;
  bool greaterThanOrEqual = 5 >= 10;

  // String concatenation
  String concatenated = 'Hello' + ' world';
  concatenated = 'Hello' + isEqual.toString();

  // String interpolation
  concatenated = 'Hello $isEqual';
  // For multiple expressions
  concatenated = '${5 + 5 / 2 + 123}';
}
