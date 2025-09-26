int strStr(String haystack, String needle) {
  
  if (needle.isEmpty) {
    return 0;
  }
  if (haystack.isEmpty || haystack.length < needle.length) {
    return -1;
  }

  for (int i = 0; i <= haystack.length - needle.length; i++) {
    int j = 0;
    while (j < needle.length && haystack[i + j] == needle[j]) {
      j++;
    }
    if (j == needle.length) {
      return i;
    }
  }

  return -1;
}

void main(){

  String s1 = "sadbutsad";
  String s2 = "sad";
  print('Input: s1 = "$s1" s2 = "$s2"');
  print('Output: ${strStr(s1,s2)}');

  print('\n-----------------------------------');

  String s3 = "leetcode";
  String s4 = "leeto";
  print('Input: s3 = "$s3" s4 = "$s4"');
  print('Output: ${strStr(s3,s4)}');

  print('\n-----------------------------------');

  String s5 = "aaa";
  String s6 = "aaaa";
  print('Input: s5 = "$s5" s6 = "$s6"');
  print('Output: ${strStr(s5,s6)}');

  print('\n-----------------------------------');

  String s7 = "mississippi";
  String s8 = "issip";
  print('Input: s7 = "$s7" s8 = "$s8"');
  print('Output: ${strStr(s7,s8)}');

  print('\n-----------------------------------');
}