// Procedure
void main(List<String> arguments) {
  // Scoped function
  String returnsStringNested() {
    return 'hello nested';
  }

  print(returnsStringNested());
  print(returnsString());
}

// Top level function
String returnsString() {
  return 'hello';
}

void otherFunction() {
  // Top level function can be called
  returnsString();
  // Cannot be called
  // returnsStringNested();
}
