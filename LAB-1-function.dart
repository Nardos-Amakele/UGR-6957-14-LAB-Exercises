double calculateAverage(List<double> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  double sum = 0;
  for (double number in numbers) {
    sum += number;
  }

  return sum / numbers.length;
}

void main() {
  List<double> numbers = [2.5, 3.7, 1.8, 4.2, 2.1];
  double average = calculateAverage(numbers);
  print('Average: $average');
}