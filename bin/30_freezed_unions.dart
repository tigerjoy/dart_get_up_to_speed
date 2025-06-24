import 'package:freezed_annotation/freezed_annotation.dart';

part '30_freezed_unions.freezed.dart';

void main(List<String> args) {
  // The below cast works since
  // SubClass1 and SubClass2 is a type of SuperClass
  // since both of them extend SuperClass.

  // SubClass1() as SuperClass;
  // SubClass2() as SuperClass;

  final myObject = SubClass2() as SuperClass;

  // Let's say we have the following hierarchy
  //      SuperClass
  //        /      \
  //      /         \
  //  SubClass1     SubClass2

  // Then the below checks are exhaustive
  // since it handles all the types that myObject
  // can be. But if we were to add one more
  // SubClass3 to the mix, then the code does
  // not complain that we need to handle that
  // as well. This can be fixed if SuperClass
  // was a sealed class or an Union.

  // We need to worry about this because
  // this would help us during Exception handling
  // or State Management or Failure handling

  if (myObject is SubClass1) {
    //
  } else if (myObject is SubClass2) {
    //
  } else if (myObject is SubClass3) {
    //
  }

  // As soon as we add another sub-class in the
  // sealed class Result, we get an error in the
  // switch.

  // .when(), .map(), .maybeWhen(), /.maybeMap()
  // are no longer available in Freezed v3
  // We are to make use of Switch to get the
  // exhaustive check.
  // For maybe, we can use the default case of
  // switch.

  // To see this in action, uncomment the
  // loading subclass in the Result sealed class.
  Result result = Result.success(100);
  result = Result.failure('404 Not Found!');
  switch (result) {
    // case Loading():
    //   print("We are loading the data.");
    //   break;

    // Unpack the fields of the objects using
    // :final <fieldName> syntax
    case Success(:final value):
      print("Success! Got data $value");
      break;
    case Failure(:final errorMessage):
      print("Failure! Error: $errorMessage");
    default:
      print("maybeWhen() function operation");
  }
}

// Dart now has sealed classes
// which can be used for exhaustively
// checking for all types in a switch or when
// statement.

// Meaning if we have a sealed class that is
// like an abstract class but it can only be
// extended in the same file / package.

// In this way, when we use an object of such
// a sealed class, then switch will tell us
// if we handled all possible sub class types
// or not.

// We can achieve the same thing using a Union as
// well.

// An Union is multiple classes grouped together.
// A data class has just one factory constructor,
// while an Union has multiple factory
// constructors.

// Freezed Union
@freezed
sealed class Result with _$Result {
  const Result._();

  const factory Result.loading() = Loading;
  const factory Result.success(int value) = Success;
  const factory Result.failure(String errorMessage) = Failure;
}

class SuperClass {}

class SubClass1 extends SuperClass {
  final int x = 123;
}

class SubClass2 extends SuperClass {
  final String y = 'hey';
}

class SubClass3 extends SuperClass {
  final double z = 1.3;
}
