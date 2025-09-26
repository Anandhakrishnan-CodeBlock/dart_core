void main() {
  List<int> num = [100, 2, 1, 4, 5];
  print("Input : $num");
  quickSort(num);
  print("Output : $num");
}

void quickSort(List<int> num) {
  if (num.length <= 1) {
    print(num);
    return;
  }
  sort(num, 0, num.length - 1);
}

void sort(List<int> num, int low, int heigh) {
  if (low < heigh) {
    int pivotIndex = partition(num, low, heigh);
    sort(num, low, pivotIndex-1);
    sort(num, pivotIndex+1, heigh);
  }
}

int partition(List<int> num, int low, int heigh) {
  int pivot = num[heigh];
  int i = low - 1;

  for (int j = low; j < heigh; j++) {
    if (num[j] <= pivot) {
      i++;
      swap(num, i, j);
    }
  }

  swap(num, i + 1, heigh);
  return i + 1;
}

void swap(List<int> num, int i, int j) {
  int temp = num[i];
  num[i] = num[j];
  num[j] = temp;
}
