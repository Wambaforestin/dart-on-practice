// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.
// Keep track of how many guesses the user has taken, and when the game ends, print this out.

import 'dart:io';
import 'dart:math';

void main() {

  int randomNumber = Random().nextInt(100) + 1;
  int userGuess;
  int numberOfGuesses = 0;

  print("I'm thinking of a number between 1 and 100. Can you guess what it is?");

  do {
    print('Enter your guess: ');
    userGuess = int.parse(stdin.readLineSync()!);
    numberOfGuesses++;

    if (userGuess > randomNumber) {
      print('Too high! Try again.');
    } else if (userGuess < randomNumber) {
      print('Too low! Try again.');
    } else {
      print('Congratulations! You guessed the number in $numberOfGuesses guesses.');
      
    }
  } while (userGuess != randomNumber);
}
