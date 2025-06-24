void main(List<String> args) {
  final x = 'hello';
  // How to add the below method to
  // the class?
  // final y = x + x;
  final y = x.duplicate();

  print(y);
}

// Till now we have been talking about
// classes which we have access to.
// We can extend these classes, add new
// features, but what about classes
// to whose source code we don't have access
// to? Provided to us by the package, language
// etc.

// What if we want to add a String
// manipulation methods to the String class
// so that we can directly call these methods
// on a String object?

// Extensions help us doing exactly that.

// Let's say we very regularly make use
// of the following string operation.
// 'hello' --> 'hellohello'

// We can also create properties in
// a extension as well
extension StringDuplication on String {
  String duplicate() {
    // this refers to the current String
    // on which duplicate() is being called
    return this + this;
  }

  // Property in an extension
  String get something => '123';
}
