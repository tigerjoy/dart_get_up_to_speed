void main(List<String> args) {
  final user = User(firstName: 'Ranajoy', lastName: 'Saha', email: 'rd.com');

  user.getFullName();
  // This is a property
  user.fullName;
  // We want to prevent this
  // user._email = 'asfdsadsad';
  // Email field will be null
  // user.setEmail('asdsadsad');
  // OR
  // user.email = 'ranajoy@gmail.com';
  print(user.email);
}

class User {
  final String firstName;
  final String lastName;
  // We want to validate an email
  // whenever this property is set
  // We first make this private
  String? _email;

  // We can use the Dart Dataclass extension
  // to generate Constructors for the
  // classes, Ctrl + . on the fields
  User({
    required this.firstName,
    required this.lastName,
    required String email,
  }) {
    // this.email --> setter method
    // email --> named parameter
    this.email = email;
  }

  // With this approach we will have to
  // call this method, this is not a field
  // Method's should perform some work, this
  // does not
  String getFullName() => '$firstName $lastName';

  // This is a property, or a getter
  // function
  String get fullName => '$firstName $lastName';

  // ?? --> This is a null coalescing operator
  String get email => _email ?? 'Email not present';

  // This is a setter method
  // Notice how this does not have
  // _ prefixing it
  set email(String value) {
    if (value.contains('@')) {
      _email = value;
    } else {
      _email = null;
    }
  }

  // void setEmail(String value) {
  //   if (value.contains('@')) {
  //     _email = value;
  //   } else {
  //     _email = null;
  //   }
  // }
}
