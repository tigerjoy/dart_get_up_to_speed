part '27_other_files.dart';

// How can we link up the two files?
// 1. 27_more_about_files_and_packages.dart
// 2. 27_other_files.dart

// such that classes defined in the other
// files are only accessible within the
// package but not outside the package?

// This can be done using the part keyword.
void main(List<String> args) {
  // This function is present in the
  // 27_other_files.dart file.
  _oppositeWay();
}

// In Dart, we can only have package
// private fields, properties, methods or
// classes.

// In Dart, every single file is a package.
class _PackagePrivateClass {
  final String _packagePrivateField;

  // Package Private Constructor
  _PackagePrivateClass._(this._packagePrivateField);
}
