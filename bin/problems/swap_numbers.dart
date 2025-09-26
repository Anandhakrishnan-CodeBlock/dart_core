void main() {
  int a = 10; // O(1)
  int b = -50; // O(1)

  print("a: $a b: $b");

  a = a + b; // O(1)
  b = a - b; // O(1)
  a = a - b; // O(1)

  print("a: $a b: $b");
}
//  Complexity
//  Time : O(1)
//  Space : O(1)
