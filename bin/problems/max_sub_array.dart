import 'dart:math';

void main() {
  final nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  var totalSum = 0;
  for (int i = 0; i < nums.length; i++) {
    var sum = 0;
    for (int j = i; j < nums.length; j++) {
      sum = sum + nums[j];
      totalSum = max(totalSum, sum);
    }
  }
  print(totalSum);
}
