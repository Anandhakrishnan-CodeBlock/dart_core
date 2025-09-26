void main() {
  List<int> a = [2, 1, 5, 0, 99, 6, 47, -1, 6, 1000];
  print("Un Sorted $a");
  for (int i = 0; i < a.length; i++) {
    for (int j = i; j < a.length; j++) {
      if (a[i] > a[j]) {
        final temp = a[j];
        a[j] = a[i];
        a[i] = temp;
      }
    }
  }
  print("Sorted    $a");
}
