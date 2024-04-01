import 'dart:io';

class Person {
  //defining properties
  String? name;
  int? age;
  //constructor (named constructor)
  Person({this.name, this.age});

  //method 1
  void showOutput() {
    print("The method showoutput() of the class Person was called by the object created");
    print('Name: $name');
    print('Age: $age');
  }

  //method 2
  void input() {
    print("Enter values for the input() method of the class Person");
    print('Enter name: ');
    name = stdin.readLineSync();
    print('Enter age: ');
    age = int.parse(stdin.readLineSync()!);
  }
}

