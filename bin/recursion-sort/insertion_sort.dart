void main() {
  List<int> num = [100, 1, 45, -1, 20, 8, 50, 1000, 200, 79, 1];
  //List<int> num = [5, 2, 4, 6, 1, 3];
  print("num = $num");
  insertionSort(num);
  print("num = $num");
}
void insertionSort(List<int> items) {
  int length = items.length;
  for (int i = 1; i < length; i++) {
    int insert = items[i];
    int j = i - 1;
    while (j >= 0) {
      if (insert < items[j]) {
        items[j + 1] = items[j];
        items[j] = insert;
      }
      j--;
    }
  }
}

// Algorithm -> [5, 2, 4, 6, 1, 3]
// Start with 2th
// Consider the array [5, 2, 4, 6, 1, 3].
// [5]is sorted. Pick 2.
// Compare 2 with 5. Since 2 < 5, shift 5 to the right. Insert 2. Array becomes [2, 5, 4, 6, 1, 3].
// [2, 5]is sorted. Pick 4.
// Compare 4 with 5. Since 4 < 5, shift 5 to the right. Compare 4 with 2. Since 4 > 2, insert 4 after 2. Array becomes [2, 4, 5, 6, 1, 3].
// Continue this process until the entire array is sorted.
/*void insertionSort(List<int> items) {
  int n = items.length;
  for (int i = 1; i < n; i++) {
    final int key = items[i];
    int j = i - 1;
    while (j >= 0 && items[j] > key) {
      items[j + 1] = items[j];
      j = j - 1;
    }
    items[j + 1] = key;
  }
}*/


