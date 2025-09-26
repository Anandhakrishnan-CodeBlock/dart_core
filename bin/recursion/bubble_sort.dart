void main() {
  List<int> num = [100, 1, 45, -1, 20, 8, 50, 1000, 200, 79, 1];
  print("num = $num");
  bubbleSort(num);
  print("num = $num");
}

void bubbleSort(List<int> items) {
  final length = items.length - 1;

  for (int i = 0; i < length; i++) {
    for (int j = 0; j < length - i; j++) {
      if (items[j] > items[j + 1]) {
        final bubbleUp = items[j];
        items[j] = items[j + 1];
        items[j + 1] = bubbleUp;
      }
    }
  }
}
// Algorithm Example (Ascending Order):
// Pass 1:
// Compare (5, 8) -> No swap -> [1, 4, 2, 5, 8] (8 is now in its correct position)
// Pass 2: (Considering [1, 4, 2, 5])
// Compare (4, 5) -> No swap -> [1, 2, 4, 5, 8] (5 is now in its correct position)
// Pass 3: (Considering [1, 2, 4])
// Compare (2, 4) -> No swap -> [1, 2, 4, 5, 8] (4 is now in its correct position)
// Pass 4: (Considering [1, 2])
// No swaps occurred in Pass 4, so the list is sorted.
