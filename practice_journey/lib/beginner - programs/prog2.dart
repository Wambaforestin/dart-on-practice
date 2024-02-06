// ask the user for a number. Depending on where the number is evne or odd print appropiate messages

import 'dart:io';

void main() {
  print("Enter any number and i will tell you if it's even or odd: ");
  num? number = num.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('The number is even');
  } else{
    print('The number is odd');
  }
}
