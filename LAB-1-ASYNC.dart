Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data fetched successfully');
}

void main() async {
  print('Fetching data...');
  String data = await fetchData();
  print('Data: $data');
}