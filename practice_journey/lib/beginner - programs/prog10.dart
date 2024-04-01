// Ask the user for a number and determine whether the number is prime or not.
import 'dart:io';
import 'dart:math';

void main() {
  print("Determining if a number is prime or not from the users input");
  var number = double.parse(stdin.readLineSync()!);
  int intNumber = number.toInt();
  int roundedNumber =
      intNumber.round(); //ensure that the user input is an integer
  print('Hey,the number $number was converted to and integer : $roundedNumber');
  int counter = 0;
  for (int index = 1; index <= sqrt(roundedNumber); index++) {
    if (number % index == 0) {
      counter++;
    }
  }
  if (counter == 2) {
    print("The number ${roundedNumber} is a prime number");
  } else {
    print("The number ${roundedNumber} is not a prime number");
  }

  // alternatively:
  print("Determining if a number is prime or not from the users input");
  var number2 = double.parse(stdin.readLineSync()!);
  int intNumber2 = number2.toInt();
  int roundedNumber2 = intNumber2.round();

  checkPrime(roundedNumber2);
}

void checkPrime(int detNumber) {
  // list comprehension..
  List<int> primeList = [
    for (int index = 1; index <= detNumber; index++)
      if (detNumber % index == 0) index
  ];

  // checking for prime
  primeList.length == 2 ? 'The number is prime' : 'The number is not prime';
}
