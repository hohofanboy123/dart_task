import 'dart:io';

//recursive function to calc nth fib
int fib(int n){
  if(n <= 1){
    return n;
  }
  return fib(n - 1) + fib(n - 2);
}

void main() {

  int result;
  int nthFib;

  stdout.write("Enter the number: ");
  String? input = stdin.readLineSync();
  nthFib = int.parse(input!);

  result = fib(nthFib);
  
  print("The $nthFib-nth Fibonacci number is: $result");

}
