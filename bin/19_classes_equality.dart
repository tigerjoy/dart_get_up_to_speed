// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

void main(List<String> args) {
  final user1 = const User(firstName: 'John', lastName: 'Doe');

  final user2 = const User(firstName: 'John', lastName: 'Doe');

  final user3 = User(firstName: 'John', lastName: 'Doe');

  print(user1 == user2); // true
  // Even though the fields have the same
  // value
  // print(user1 == user3); // false

  // This is because, == checks for
  // referential equality not the equality
  // of its contents

  // But most of the times we would want
  // value equality based on the fields
  // of the objects

  // After overriding the ==
  // operator, we get true
  print(user1 == user3); // true
}

class User {
  final String firstName;
  final String lastName;

  const User({required this.firstName, required this.lastName});

  User copyWith({String? firstName, String? lastName}) {
    return User(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'firstName': firstName, 'lastName': lastName};
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(firstName: $firstName, lastName: $lastName)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName && other.lastName == lastName;
  }

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode;
}
