import 'dart:io';

String calculateGrade(double score) {
  if (score >= 90)
  {
    return 'A';
  }
  else if (score >= 80)
  {
    return 'B';
  }
  else if (score >= 70)
  {
    return 'C';
  }
  else if (score >= 60)
  {
    return 'D';
  }
  else
  {
    return 'F';
  }
}

void main() {

  stdout.write("Enter the score: ");
  
  String? input = stdin.readLineSync();
  double score = double.parse(input!);

  String grade = calculateGrade(score);
  print("The grade is: $grade");
  
}
