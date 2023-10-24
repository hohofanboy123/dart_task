import 'dart:io';
import 'dart:math';

void main() {

  Random random = Random();
  int randomNum = random.nextInt(100) + 1;
  int tries = 0;
  bool hasGuessedCorrectly = false;

  print("A random number between 1 and 100 has been choosen. Try to guess it.");

  while (!hasGuessedCorrectly) {
    stdout.write("Enter your guess: ");
    String? input = stdin.readLineSync();
    int userGuess = int.parse(input!);

    tries++;

    if (userGuess == randomNum)
    {
      hasGuessedCorrectly = true;
      print("You have guessed the number, which is $randomNum.");
      print("after $tries attempts.");
    }
    else if (userGuess < randomNum)
    {
      print("Try again. The number is higher.");
    }
    else
    {
      print("Try again. The number is lower.");
    }
  }
}
