Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data fetched successfully');
}

void main() {
  print('Fetching data...');
  fetchData().then((data) {
    print('Data: $data');
  });
}