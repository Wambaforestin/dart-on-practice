// Dart unit testing
//steps to test the code
//1. create a test file in the test folder
//2. Add the test package in the pubspec.yaml file : dev_dependencies: test: ^1.15.3
//3. write the cmd : dart pub get
//4. write this import in the file you want to test: import 'package:test/test.dart';
//5. write this cmd to run the test: dart test
import 'package:test/test.dart';

class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  int multiply(int a, int b) {
    return a * b;
  }

  double divide(int a, int b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero');
    }
    return a / b;
  }
}

