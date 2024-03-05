List<T> removeDuplicates<T>(List<T> list) {
  List<T> result = [];
  for (T element in list) {
    if (!result.contains(element)) {
      result.add(element);
    }
  }
  return result;
}
void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 1, 5, 4];
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print(' $uniqueNumbers');
}