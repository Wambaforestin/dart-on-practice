// create a program that asks the user to enter their name adn their age.
// Print out a message that tells how many years they have to be 100years old.

import 'dart:io';

void main() {
  const int bigAge = 100;
  print('Enter your name: ');
  String? username = stdin.readLineSync();
  print('Enter your age: ');
  int? age = int.parse(stdin.readLineSync()!);

  // the ? and ! are null safety purposes.

  int newAge = bigAge - age;

  print('$username you have $newAge years to be 100years old, keep going buddy');
}