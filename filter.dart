void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final evenNumbers = filter(numbers, (number) => number % 2 == 0);
  final oddNumbers = filter(numbers, (number) => number % 2 != 0);

  print('Even Numbers: $evenNumbers');
  print('Odd Numbers: $oddNumbers');
}

List<T> filter<T>(List<T> list, bool Function(T) predicate) {
  final result = <T>[];
  for (final item in list) {
    if (predicate(item)) {
      result.add(item);
    }
  }
  return result;
}
