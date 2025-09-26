
void main() {
  final solution = Solution();
  final result1 = solution.reverse(123);
  print(result1);
  final result2 = solution.reverse(-123);
  print(result2);
}
class Solution {
  int reverse(int num) {
    print(num);
    int reversedNum = 0;
    int originalNum = num.abs();

    while (originalNum != 0) {
      int digit = originalNum % 10;
      reversedNum = reversedNum * 10 + digit;
      originalNum ~/= 10;
    }
    return num < 0 ? -reversedNum : reversedNum;
  }
}