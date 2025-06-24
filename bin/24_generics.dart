void main(List<String> args) {}

// It could happen that in a class
// IntegerDataReader we are returning
// a String, which would violate
// the convention. Therefore, we must
// use Generics to ensure that if we
// need a int DataReader then readData()
// always returns an int not something else.

// This is a Generic DataReader class
abstract class DataReader<T> {
  T readData();
}

// Generic Type can be present
// in a standalone method as well
void myMethod<T>(T arg) {}

class IntegerDataReader implements DataReader<int> {
  @override
  int readData() {
    print('Process data');
    // Compilation Error
    // return '1234';
    return 123;
  }
}

class StringDataReader implements DataReader<String> {
  @override
  String readData() {
    print('Process data');
    return '1234';
  }
}
