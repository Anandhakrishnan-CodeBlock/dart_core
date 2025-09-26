void main() {
  List<int> a = [1000, 2, 5, 3, 4, 6, 100, 8, 1, -1];
  int large = 0;
  int secLarge = 0;
  for (int i = 0; i < a.length; i++) {
    if (a[i] > large) {
      secLarge = large;
      large = a[i];
    } else {
      if (a[i] > secLarge) {
        secLarge = a[i];
      }
    }
  }
  print("Sec Large $secLarge");
  print("Large $large");
}
