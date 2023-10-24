import 'dart:io';

void main() {

  double result;
  stdout.write("Enter the first number: ");
  String? input = stdin.readLineSync();
  double num1 = double.parse(input!);

  stdout.write("Enter an operator (+, -, *, /): ");
  String? operator = stdin.readLineSync();

  stdout.write("Enter the second number: ");
  input = stdin.readLineSync();
  double num2 = double.parse(input!);


  switch (operator) {
    
    case "+":
      result = num1 + num2;
      break;

    case "-":
      result = num1 - num2;
      break;

    case "*":
      result = num1 * num2;
      break;

    case "/":
      if (num2 == 0)
      {
        print("Division by zero is not allowed.");
        return;
      }
      result = num1 / num2;
      break;

    default:
      print("Invalid operator. Please use +, -, *, or /.");
      return;
  }

  print("Result: $num1 $operator $num2 = $result");
}
