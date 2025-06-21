void main(List<String> arguments) {
  const myInteger = 5;

  // Condition has to be a boolean or
  // a truthy or falsy value
  if (myInteger == 10) {
    print("It's ten!");
  } else if (myInteger == 9) {
    print("It's nine!");
  } else if (myInteger > 20) {
    print("It's greater than twenty!");
  } else {
    print("Oh, it's something else!");
  }

  // Can only check for simple equality
  switch (myInteger) {
    case 10:
      print("It's ten!");
      break;
    case 9:
      print("It's nine!");
      break;
    default:
      print("Oh, it's something else!");
      break;
  }
}
