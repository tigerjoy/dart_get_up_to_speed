import 'package:meta/meta.dart';

void main(List<String> args) {
  // Abstract class cannot be instantiated
  // Even though it may have Constructor
  // data members etc
  // final user = User('a', 'b');

  final admin = Admin(
    specialAdminField: 3,
    firstName: 'first',
    lastName: 'last',
  );
}

// All the classes we have created so far
// can be instantiated, but an abstract
// class cannot be instantiated. This
// abstract class serves as a contract.

// When a class is abstract, it does not
// need to provide a implementation
// for its methods.
abstract class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  // This method needs to be called from
  // it's overriding methods
  @mustCallSuper
  void signOut() {
    print('Sign Out.');
  }

  // Below needs to be specified
  // by all the classes that extends
  // this abstract class

  // abstract method
  void myMethod();
  // abstract property
  int get myProperty;
}

class Admin extends User {
  final double specialAdminField;

  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);

  @override
  String get fullName => 'Admin: ${super.fullName}';

  @override
  void signOut() {
    print('Performing admin-specific sign-out steps');
    super.signOut();
  }

  @override
  void myMethod() {}

  @override
  int get myProperty => 1;
}
