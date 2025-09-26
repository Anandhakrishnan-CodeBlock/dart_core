void main() {
  List<int> num = [2, 4, 1, 3];
  print("Input $num");
  quick(num);
  print("Output $num"); // Output: [1, 2, 3, 4]

  List<int> num1 = [100, 1, 45, -1, 20, 8, 50, 1000, 200, 79, 1];
  print("Input $num1");
  quick(num1);
  print("Output $num1");
  // Output: [-1, 1, 1, 8, 20, 45, 50, 79, 100, 200, 1000]
}

void quick(List<int> num) {
  if (num.length <= 1) {
    return;
  }
  divide(num, 0, num.length - 1);
}

// divide list until min < max
void divide(List<int> num, int min, int max) {
  if(min < max){
    // pivotIndex is the center element
    final pivotIndex = pivotSort(num, min, max);
    divide(num, min, pivotIndex - 1);
    divide(num, pivotIndex + 1, max);
  }
}

int pivotSort(List<int> num, int min, int max) {
  int pivot = num[max];
  int i = min - 1;

  // The loop must iterate ONLY from 'min' up to 'max - 1'
  for (int j = min; j <= max - 1; j++) {
    if (num[j] <= pivot) {
      i++;
      swap(num, i, j);
    }
  }

  // Shifting pivotIndex to left
  swap(num, i + 1, max);
  return i + 1;
}

// Shifting higher value to right side of pivotIndex
void swap(List<int> num, int i, int j) {
  final temp = num[i];
  num[i] = num[j];
  num[j] = temp;
}