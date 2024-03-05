void throwException() {
  throw Exception('Custom Exception');
}

void main() {
  try {
    throwException();
  } catch (e) {
    print('Exception caught: $e');
  }
}