import 'package:meta/meta.dart';

void main(List<String> args) {
  final user = User.admin(true);
}

class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  // Factory Constructor
  // Returns an Admin object
  // We cannot return any other type,
  // we can return Admin since it is an
  // User
  factory User.admin(bool admin) {
    if (admin) {
      return Admin(specialAdminField: 123, firstName: 'a', lastName: 'b');
    } else {
      return User('c', 'd');
    }
  }

  // This method needs to be called from
  // it's overriding methods
  @mustCallSuper
  void signOut() {
    print('Sign Out.');
  }
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
}
