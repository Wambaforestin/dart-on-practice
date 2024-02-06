// Make a two-player Rock-Paper-Scissors game against computer.
// Ask for player's input, compare them, print out a message to the winner.

import 'dart:io';
import 'dart:math';

void main() {
  // Getting Player's Choice:
  print('-------Rock-Paper-Scissors Game against Computer-------');
  print('Enter your choice: rock, paper, or scissors');
  String? playerChoice = stdin.readLineSync();
  // Checking Validity of Player's Choice
  if (playerChoice == 'rock' ||
      playerChoice == 'paper' ||
      playerChoice == 'scissors') {
    print('You chose $playerChoice');
  } else {
    print('Invalid choice');
  }
  // Getting Computer's Choice
  List<String> computerChoice = ['rock', 'paper', 'scissors'];
  String randomChoice = Random().nextInt(3) == 0
      ? 'rock'
      : Random().nextInt(3) == 1
          ? 'paper'
          : 'scissors';
  // Determining the Winner
  print('Computer chose $randomChoice');
  if (playerChoice == randomChoice) {
    print("It's a tie");
  } else if (playerChoice == 'rock' && randomChoice == 'scissors' ||
      playerChoice == 'paper' && randomChoice == 'rock' ||
      playerChoice == 'scissors' && randomChoice == 'paper') {
    // Player wins
    print('*************************************');
    print('-------------- You win --------------');
    print('*************************************');
  }
  // computer wins
  else {
    print('*************************************');
    print('----------- Computer wins -----------');
    print('*************************************');
  }
}
