void main() {
  int n = 50;
  List<int> prime = [];
  for (int i = 1; i <= n; i++) {
    if(isPrime(i)){
      prime.add(i);
    }
  }
  print(prime);
}

bool isPrime(int n){
  if(n == 0 || n == 1) {
    return false;
  }
  for (int j = 2; j < n; j++) {
    if (n % j == 0) {
      return false;
    }
  }
  return true;
}