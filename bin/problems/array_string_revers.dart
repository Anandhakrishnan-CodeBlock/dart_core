void main(){
  final result = Solution();
  result.reverseString(["h","e","l","l","o"]);
  result.reverseString(["H","a","n","n","a","h"]);
}

class Solution {
  void reverseString(List<String> s) {
    print(s);
 /*   var i = s.length-1;
    List<String> temp = [];
    while (i >= 0){
      temp.add(s[i]);
      i--;
    }*/
    int left = 0;
    int right = s.length - 1;
    while (left < right){
      String temp = s[left];
      s[left] = s[right];
      s[right] = temp;
      right--;
      left++;
    }
    print(s);
  }
}