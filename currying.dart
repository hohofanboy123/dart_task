// Function to be curried
int sumFun(int a, int b, int c) {
  return a + b + c;
}

//currying function
Function curry(Function function) {
  return (a) {
    return (b) {
      return (c) {
        return function(a, b, c);
      };
    };
  };
}

void main() {

  //curried function
  final curriedSumFun = curry(sumFun);

  final add10 = curriedSumFun(10);
  final add11 = add10(11);
  final add12 = add11(12);

  print(add12);
}
