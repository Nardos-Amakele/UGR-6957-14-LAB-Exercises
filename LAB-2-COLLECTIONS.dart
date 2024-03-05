void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}
void main() {
  Map<String, dynamic> myMap = {
    'name': 'John',
    'age': 30,
    'city': 'New York',
  };

  printMap(myMap);
}