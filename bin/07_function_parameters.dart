void main(List<String> arguments) {
  // All the values needs to be specified
  // The respective types also need to be
  // taken care of
  positionalParams(5, 3.5, 'hi');
  optionalPositionalParams(5, 3.5);
  optionalPositionalParams(5, 3.5, 'hi optionally');
  // The order of passing named params
  // does not matter
  namedOptionalParams(x: 5, greeting: 'hi', y: 3.5);
  namedRequiredParams(1, x: 5, y: 3.5, greeting: 'HI');
}

void positionalParams(int width, double height, String greeting) {}

// All the optional params needs to come
// after required ones
void optionalPositionalParams(int x, double y, [String? greeting]) {}

// Be default every named parameter is optional
void namedOptionalParams({int? x, double? y, String greeting = 'hi'}) {}

// All the positional parameters comes
// first followed by named parameters
void namedRequiredParams(
  int positional, {
  required int x,
  required double y,
  required String greeting,
}) {}
