// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
// if the number is not a whole number, convert it to a whole number and print out the divisors of the whole number.

import 'dart:io';

void main() {
  int counter = 0;
  print("Enter a number of you choice: ");
  num? number = num.parse(stdin.readLineSync()!);
  while (number is! int) {
    print("please Enter a whole number");
    number = num.parse(stdin.readLineSync()!);
    counter++;
    if (counter == 3) {
      number = number.toInt();
      print("You have exceeded the number of trials, the number has been converted to an integer($number)");
      break;
    }
  }
  List<int> divisorList = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisorList.add(i);
    }
  }
  print("Therefore, the divisor's of $number are : $divisorList");
}