import 'package:meta/meta.dart';

void main(List<String> args) {
  final admin = Admin(firstName: 'John', lastName: 'Doe', specialAdminField: 3);

  print(admin.fullName);

  // Since Admin is a type of User, since
  // it is a subclass, therefore we can
  // cast it as it's Super type
  final user = admin as User;

  // Now we can only access the fields
  // defined in the super class and not the
  // sub class
  // Gives error
  // user.specialAdminField

  // But if we call, the overridden
  // method, then we get the overridden
  // implementation not the Super classes
  // implementation
  print(user.fullName);

  // To check if a object is of Admin type
  print(user is Admin);
  print(user is! Admin); // is! --> is not

  // If we use a smart cast, then
  // we can access the additional Admin
  // fields.
  if (user is Admin) {
    print(user.specialAdminField);
  }
}

// All classes extends Object class by
// default. and overrides some methods
// For example, ==, toString() etc

// This is implicit and need not be
// specified, here Object class is
// the super class and User is the
// sub class
// class User extends Object {}

class User {
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
}

class Admin extends User {
  final double specialAdminField;

  // Initialize the fields of the
  // super class
  // Admin(super._firstName, super._lastName, {required this.specialAdminField});
  Admin({
    required this.specialAdminField,
    required String firstName,
    required String lastName,
  }) : super(firstName, lastName);

  @override
  String get fullName => 'Admin: ${super.fullName}';

  // Should always call the super class
  // implementation. but we can
  // skip it if we want, but should not
  // How to make sure we always have to
  // call super.signOut()?
  // Using @mustCallSuper annotation from
  // meta package
  @override
  void signOut() {
    print('Performing admin-specific sign-out steps');
    super.signOut();
  }
}
