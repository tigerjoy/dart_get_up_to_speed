void main(List<String> args) {
  // Calling instance methods
  final user = User(name: 'Ranajoy', photoUrl: 'url');
  user.hasLongName();

  // Calling static methods
  // Class wide global among
  // object members
  User.myMethod();
  User.minNameLength;

  // These static members cannot be accessed
  // from an object, we need to use the
  // class name
  // Not allowed
  // user.minNameLength;
}

class User {
  // Instance Members
  final String name;
  final String photoUrl;

  const User({required this.name, required this.photoUrl});

  // Instance Methods
  bool hasLongName() {
    return name.length > 10;
  }

  static void myMethod() {}

  static const minNameLength = 3;
}
