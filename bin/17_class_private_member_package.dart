import './17_class_private_members_named_ctor.dart';

void exampleMethod() {
  final x = Example(1, 2);
  // Cannot be accessed outside the package
  // or file
  // x._private;
  x.public;

  // This cannot be called since it is
  // a private method
  // x._privateMethod();

  // Cannot instantiate object of this class
  // since it does not have any unnamed
  // constructor and also we cannot call
  // the _() ctor since it is private
  // NonInstantiable();
  // NonInstantiable._();
}
