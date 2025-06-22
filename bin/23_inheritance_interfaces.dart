void main(List<String> args) {
  // Every OtherClass instance can be
  // cast as a RegularClass since OtherClass
  // implements RegularClass
  OtherClass() as RegularClass;
}

// In Dart we can implement any class
// as an interface
class RegularClass {
  final int myField;

  RegularClass(this.myField);

  int get publicProperty => 123;

  String getSomeString() {
    return 'Hello';
  }
}

// When we say that OtherClass implements
// RegularClass it means that OtherClass
// has to provide implementations for
// all the methods and properties defined
// in the RegularClass
class OtherClass implements RegularClass {
  @override
  String getSomeString() {
    // TODO: implement getSomeString
    throw UnimplementedError();
  }

  @override
  // TODO: implement myField
  int get myField => throw UnimplementedError();

  @override
  // TODO: implement publicProperty
  int get publicProperty => throw UnimplementedError();
}

// Thumb rule, in our own code
// we should always implement an interface,
// such that we remember to provide
// implementation for all the properties and
// methods
abstract class DataReader {
  dynamic readData();
}

class IntegerDataReader implements DataReader {
  @override
  dynamic readData() {
    print('Performing logic');
    return 123;
  }
}
