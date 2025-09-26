void main() {
  List<int> num = [0, 0, 1, 1, 0, 2, 5, 0, 8, 9, 1];
  print(num);
  int insertPosition = 0;
  for (int i = 0; i < num.length; i++) {
    if (num[i] != 0) {
      num[insertPosition++] = num[i];
    }
  }
  //print(insertPosition);

  while (insertPosition < num.length) {
    num[insertPosition++] = 0;
  }
  print(num);
}
