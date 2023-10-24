import 'dart:io';

bool isLeapYear(int year) {
  if (year % 4 == 0)
  {
    if (year % 100 != 0 || year % 400 == 0)
    {
      return true;
    }
  }
  return false;
}

void main() {
  stdout.write("Enter year: ");
  String? input = stdin.readLineSync();
  int year = int.parse(input!);

  if (isLeapYear(year))
  {
    print("$year is a leap year.");
  }
  else
  {
    print("$year is not a leap year.");
  }
}
