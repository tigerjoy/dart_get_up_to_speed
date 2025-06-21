void main(List<String> args) {
  final x = Example(1, 2);
  // We are still able to access _private
  // fields
  x._private;
}

class Example {
  int public;
  // This _private field is package private
  // not class
  int _private;

  Example(this.public, this._private);

  Example.namedConstructor({required this.public, required int private})
    : _private = private;

  // This is fine.
  void myMethod() {
    _private;
  }

  void _privateMethod() {
    print("This is a private method");
  }
}

class NonInstantiable {
  // We have created a named constructor
  // which is private, hence this
  // class cannot be instantiated from
  // outside this file / package.
  NonInstantiable._();
}
