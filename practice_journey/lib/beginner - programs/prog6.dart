// Ask the user for a string and print out whether this string is a palindrome or not.

import 'dart:io';

void main() {
  print('Enter a string to check if it is a palindrome or not:');
  String? inputString = stdin.readLineSync();
  // using the split() method to convert the string to a list of characters
  // using the reversed property to reverse the list
  // using the join() method to convert the list back to a string
  String reversed = inputString!.split('').reversed.join();
  if (inputString == reversed) {
    print('The string is a palindrome');
  } else {
    print('The string is not a palindrome');
  }
}

// list of common palindromes:
//  radar, level, rotor, civic, reviver, deified, devoved, repaper, racecar, redder, madam, and refer