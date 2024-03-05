void main() {
  try {
    print('Inside try block');
    throw Exception('Custom Exception');
  } catch (e) {

    print('Exception caught: $e');
  } finally {
    print('Inside finally block');
  }
}