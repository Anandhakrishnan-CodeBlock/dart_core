import 'dart:collection';

int firstUniqChar(String s) {
  Map<String, int> charCount = HashMap();

  for (int i = 0; i < s.length; i++) {
    final char = s[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  print('Data: ${charCount}');

  for (int i = 0; i < s.length; i++) {
    final char = s[i];
    if (charCount[char] == 1) {
      return i;
    }
  }
  return -1;
}

void main(){
  String s1 = "leetcode";
  print('Input: s = "$s1"');
  print('Output: ${firstUniqChar(s1)}');

  print('\n-----------------------------------');

  String s2 = "loveleetcode";
  print('Input: s = "$s2"');
  print('Output: ${firstUniqChar(s2)}');

  print('\n-----------------------------------');

  String s3 = "aabb";
  print('Input: s = "$s3"');
  print('Output: ${firstUniqChar(s3)}');
}