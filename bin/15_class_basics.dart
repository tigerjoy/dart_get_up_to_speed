void main(List<String> args) {
  String myString = 'something';
  // new is redundant now
  // User myUser = new User();
  User myUser = User(name: 'John Doe', photoUrl: 'http://example.com/abcd');
  print(myUser);

  final myUser2 = const User(
    name: 'Jane Doe',
    photoUrl: 'http://example.com/abcd',
  );

  final myUser3 = const User(
    name: 'Jane Doe',
    photoUrl: 'http://example.com/abcd',
  );

  // When we invoke a const constructor
  // and assign the value of the const ctor
  // to a multiple variables, only one object
  // is kept in memory, whereas all the
  // variables share the same reference

  // Flutter's SizedBox() is an example class
  // that benefits from const constructor,
  // since the same dimension SizedBox can be
  // used in multiple places but in memory
  // only one instance is maintained.
  // Hence noticeable improvement in
  // performance.

  // Same reference used, so true
  print(myUser3 == myUser2); // true
  // Different reference created,
  // hence false
  print(myUser3 == myUser); // false

  print(myUser3.hasLongName());

  // Not allowed, since the data members
  // are final
  // myUser2.name = 'Matt Doe';
  // No longer required
  // myUser2.name = 'Jane Doe';
}

class User {
  // String name = 'John Doe';
  // String photoUrl = 'http://example.com/abcd';

  // String name;
  // String photoUrl;

  // This is not allowed.
  // Add the default initializing values
  // at the start of the class
  // User() {
  //   name = 'John Doe';
  //   photoUrl = 'http://example.com/abcd';
  // }

  // User(this.name, this.photoUrl);
  // User({required this.name, required this.photoUrl});

  // User({
  //   required String firstName,
  //   required String lastName,
  //   required this.photoUrl,
  // }) : name = '$firstName $lastName';

  final String name;
  final String photoUrl;

  const User({required this.name, required this.photoUrl});

  // Has access to the object fields
  bool hasLongName() {
    return name.length > 20;
  }
}
