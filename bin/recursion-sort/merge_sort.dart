void main() {
  List<int> num = [2, 4, 1, 3];
  print("Input $num");
  divide(num);
  print("Output $num");

  List<int> num1 = [100, 1, 45, -1, 20, 8, 50, 1000, 200, 79, 1];
  print("Input $num1");
  divide(num1);
  print("Output $num1");
}

// Algorithm
// Pass 1:
// Divide array into 2 parts....
// Pass 2:
// Until array become n[1]
void divide(List<int> num) {
  if (num.length <= 1) {
    return;
  }

  final mid = num.length ~/ 2;
  List<int> left = num.sublist(0, mid);
  List<int> right = num.sublist(mid);

  divide(left);
  divide(right);

  conquer(left, right, num);
}

// Pass 3:
// Conquer the separate array into one
// if left[i] < right[j] => num[k] = left[i] => i++;
// else left[i] > right[j] => num[k] = right[j] => j++;
// k++;
// Pass 4:
// Add remaining element to left num[k] = left[i] => i++; k++;

void conquer(List<int> left, List<int> right, List<int> num) {
  int i = 0; // left array index
  int j = 0; // right array index
  int k = 0; // original array index

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      num[k] = left[i];
      i++;
    } else {
      num[k] = right[j];
      j++;
    }
    k++;
  }

  while (i < left.length) {
    num[k] = left[i];
    i++;
    k++;
  }

  while (j < right.length) {
    num[k] = right[j];
    j++;
    k++;
  }
}
// Algorithm
// Pass 1:
// Divide array into 2 parts
// Pass 2:
// Do "Pass 1" Until array become n[1]
// Pass 3:
// Conquer the separate array into one
// if left[i] < right[j] => num[k] = left[i] => i++;
// else left[i] > right[j] => num[k] = right[j] => j++;
// k++;
// Pass 4:
// Add remaining element to left num[k] = left[i] => i++; k++;