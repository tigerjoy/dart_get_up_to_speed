import 'package:dart_get_up_to_speed/dart_get_up_to_speed.dart'
    as dart_get_up_to_speed;

void main(List<String> arguments) {
  String output = 'Hello world: ${dart_get_up_to_speed.calculate()}!';
  print(output);

  print(output.contains('Hello'));

  int myInteger = 5;
  print(myInteger.toString());
  print(myInteger.isEven);
  print(myInteger.isOdd);

  double myDouble = 5.5;
  // No long or float, the above are sufficient

  // This type can store both int and double
  num myNumber = 5;
  myNumber = 5.5;

  bool myBool = false;
  // Compilation error
  // myBool = 'Hello';

  dynamic mySomething = 5;
  mySomething = "Five";
  mySomething = true;

  // Automatic Type inferred
  // Type set to String
  var myString = 'Hello, World!';
  // Not allowed to change the type
  // myString = 5;

  // To stop variables from being re-assigned
  // Type inference happens here as well
  // Compile Time Constant
  const myConstString = 'Hello';
  // Run time constant
  final myFinalString;
  myFinalString = 'Word';

  String myStrVar;
  // Non null variable must be assigned
  // before it can be used
  // print(myStrVar);
}
