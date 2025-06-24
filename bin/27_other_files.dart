part of '27_more_about_files_and_packages.dart';

// Using part of we no longer need to import
// since this file is part of the above
// mentioned file

// import '27_more_about_files_and_packages.dart';

// We cannot use the main() method since
// it has already been defined in the other
// file
// void main(List<String> args) {
void example() {
  // Cannot instantiate the
  // _PackagePrivateClass(), since it is
  // in a different file / package.

  // _PackagePrivateClass();

  // How can we link up the two files?
  // 1. 27_more_about_files_and_packages.dart
  // 2. 27_other_files.dart

  // such that classes defined in the other
  // files are only accessible within the
  // package but not outside the package?

  // This can be done using the part of
  // keyword.

  // Now we can instantiate the package
  // private class, since using the part of
  // directive we have told Dart that this
  // file belongs to the same package as
  // the 27_more_about_files_and_packages.dart

  _PackagePrivateClass._('hello');
}

// We can also invoke the this method
// from the file of which this file is a part
// of
void _oppositeWay() {}
