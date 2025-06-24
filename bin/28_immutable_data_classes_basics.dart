// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

void main(List<String> args) {
  final person1 = Person(age: 15, name: 'John Doe');

  // In Flutter, if we choose not to update
  // the age directly on an object, then
  // Flutter can use that for optimization.
  // Therefore, it is advantageous to mark the
  // class as immutable.
  // person.age++;

  // This is a copy of person1 with an updated
  // age. This is how we should update objects
  // in Flutter. The data members should be
  // marked final.
  final person1Updated = Person(age: person1.age + 1, name: person1.name);

  // When we have to create a copy of the
  // class, to update a certain field we
  // have to write a lot of code. Therefore,
  // we can instead create a copyWith method
  // inside the Person class for easier copy
  // operation.

  // This creates the same object as above
  // albeit with less lines of code
  final person2 = person1.copyWith(age: person1.age + 1);
}

// To enforce, immutability, we can use
// the below annotation from meta package
@immutable
class Person {
  final String name;
  final double age;

  const Person({required this.name, required this.age});

  // Instead of creating a constructor,
  // a copyWith method by hand, we can
  // make use of the Dart Data Class Generator
  // to generate the required methods.

  // Whenever we change any property of field
  // of the class, we have to remember to
  // re-run this extension, so to mitigate
  // this, we have a package called freezed
  // that will help us do just that. This will
  // keep all of the class codes in a
  // separate file and in that way it will
  // reduce the clutter.

  // Any immutable class can have a
  // immutable constructor
  // const Person({required this.name, required this.age});

  // Person copyWith({String? name, int? age}) {
  //   return Person(name: name ?? this.name, age: age ?? this.age);
  // }

  Person copyWith({String? name, double? age}) {
    return Person(name: name ?? this.name, age: age ?? this.age);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'age': age};
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(name: map['name'] as String, age: map['age'] as double);
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
