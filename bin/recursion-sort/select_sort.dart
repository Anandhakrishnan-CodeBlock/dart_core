void main() {
  List<int> num = [100, 1, 45, -1, 20, 8, 50, 1000, 200, 79, 1];
  print("num = $num");
  selectionSort(num);
  print("num = $num");
}

void selectionSort(List<int> items) {
  final length = items.length;

  for (int i = 0; i < length; i++) {
    int minIndex = i;
    for (int j = i + 1; j < length; j++) {
      if (items[minIndex] > items[j]) {
        minIndex = j;
      }
    }
    final selected = items[minIndex];
    items[minIndex] = items[i];
    items[i] = selected;
  }
}
// Algorithm -> Consider an array [64, 25, 12, 22, 11].
// Iteration 1:
// Find the minimum in [64, 25, 12, 22, 11], which is 11.
// Swap 11 with 64. Array becomes [11, 25, 12, 22, 64]. Sorted part: [11], Unsorted part: [25, 12, 22, 64].
// Iteration 2:
// Find the minimum in [25, 12, 22, 64], which is 12.
// Swap 12 with 25. Array becomes [11, 12, 25, 22, 64]. Sorted part: [11, 12], Unsorted part: [25, 22, 64].
// Iteration 3:
// Find the minimum in [25, 22, 64], which is 22.
// Swap 22 with 25. Array becomes [11, 12, 22, 25, 64]. Sorted part: [11, 12, 22], Unsorted part: [25, 64].
// Iteration 4:
// Find the minimum in [25, 64], which is 25.
// Swap 25 with 25 (no change). Array remains [11, 12, 22, 25, 64]. Sorted part: [11, 12, 22, 25], Unsorted part: [64].
// Iteration 5: The remaining element 64 is already in its correct position. The array is sorted.
