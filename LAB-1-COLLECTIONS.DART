int findHighestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty.");
  }

  int highestNumber = numbers[0];
  for (int number in numbers) {
    if (number > highestNumber) {
      highestNumber = number;
    }
  }

  return highestNumber;
}
void main() {
  List<int> numbers = [5, 8, 2, 10, 3];
  int highest = findHighestNumber(numbers);
  print('Highest number: $highest');
}