void throwException() {
  throw FormatException('Invalid format');
}

void main() {
  try {
    throwException();
  } catch (n) {
    if (n is FormatException) {
      print('FormatException caught: $n');
    } else {
      print('exception caught: $n');
    }
  }
}