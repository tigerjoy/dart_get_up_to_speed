import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Enter a number: ');
    int number = int.parse(stdin.readLineSync()!);

    print("Entered number is $number");
    // } on FormatException catch (e) {
    // We can also remove catch(e) expression
    // if we don't need it.

    // How to cause an exception to happen?
    throw MyCustomException('exception message');

    // Don't throw exceptions like this,
    // always use Exception objects
    // Bad practice
    // throw "Error message";
  } on FormatException {
    print("Format exception happened.");
  } on MyCustomException catch (e) {
    print("Custom exception happens ${e.message}");
  } catch (e) {
    print(e);
  } finally {
    // Runs always
    print('this always runs');
  }
}

class MyCustomException implements Exception {
  final String message;

  MyCustomException(this.message);
}

// Errors are irrecoverable. As a convention
// we don't throw Errors but it can be thrown
class MyCustomError extends Error {}
