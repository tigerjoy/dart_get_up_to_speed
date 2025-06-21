void main(List<String> arguments) {
  // Compilation error
  // Since the type cannot hold null, hence
  // we won't run into NullPointerExceptions
  // String impossible = null;
  // Helps us prevent Runtime Errors
  // print(impossible.length);

  // To enable us to store nulls
  String? impossible = null;
  // Access the length in a null safe manner
  print(impossible?.length); // null

  String? possible = 'abc';
  // Compiler allows . operator here
  // since a valid value is assigned to
  // possible
  print(possible.length);

  // Nullable type
  String? something = null;
  // Unsafe access operator, will lead to
  // Runtime errors
  // print(something!.length);

  // No need to initialize nullable
  // types since the default value
  // of these variables it self is null
  String? defaultValue;
  print(defaultValue);
}
