void main() {
  int n = 10; 
  int a = 0;
  int b = 1;
  
  print("Fibonacci:");
  
  for (int i = 0; i < n; i++) {
    print(a);
    int sum = a + b;
    a = b;
    b = sum;
  }
}