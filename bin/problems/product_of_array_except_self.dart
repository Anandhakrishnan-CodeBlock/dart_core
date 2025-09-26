List<int> product(List<int> num) {
  /// Case 1: Worst Case
  if(num.length <= 1){
    return num;
  }
  List<int> product = [];
  int iterate = 1;

  /// Case 2: Find product of list
  for (int i = 0; i < num.length; i++) {
    for (int j = 0; j < num.length; j++) {
      /// Except Self
      if (i != j) {
        iterate = iterate*num[j];
      }
    }
    product.add(iterate);
    iterate = 1;
  }
  return product;
}

void main() {
  List<int> nums1 = [1, 2, 3, 4];
  print('Input: Array = $nums1');
  print('Output: ${product(nums1)}');

  print('-----------------------------------------');

  List<int> nums2 = [-1, 1, 0, -3, 3];
  print('Input: Array = $nums2');
  print('Output: ${product(nums2)}');

  print('-----------------------------------------');

  List<int> nums3 = [];
  print('Input: Array = $nums3');
  print('Output: ${product(nums3)}');

  print('-----------------------------------------');

  List<int> nums4 = [0,14];
  print('Input: Array = $nums4');
  print('Output: ${product(nums4)}');

  print('-----------------------------------------');
}