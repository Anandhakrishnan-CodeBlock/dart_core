
List<int> rotateArray(List<int> array, int index) {

  /// Case 1: Empty | One Element Array or Index == 0
  if(array.length <= 1 || index == 0) {
    print("Array or Index is 0");
    return array;
  }

  /// Case 2: Index is > Array size
  if(index > array.length) {
    while (index > array.length){
      index = index - array.length;
    }
  }

  int start = index - 1;
  List<int> stock = [];
  for (int i = start; i<array.length; i++){
    stock.add(array[i]);
  }
  for (int i = 0; i<start; i++){
    stock.add(array[i]);
  }


  return stock;
}

void main() {
  List<int> nums1 = [1, 2, 3, 4, 5, 6, 7];
  int index1 = 32;
  print('Input: Array = $nums1, Index = $index1');
  print('Output: ${rotateArray(nums1, index1)}');

  print('-----------------------------------------');

  List<int> nums2 = [-1, -100, 3, 99];
  int index2 = 2;
  print('Input: Array = $nums2, Index = $index2');
  print('Output: ${rotateArray(nums2, index2)}');

  print('-----------------------------------------');
}