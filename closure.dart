Function sumFun(int b) {

  int a = 5;

  Function calcutaion = () {
    return b + a;
  };

  return calcutaion;
}

void main() {
  
  final Function closure = sumFun(10);
  int result = closure();

  print(result);
}
