import 'dart:collection';

bool isAnagram(String s, String t) {

  Map<String, int> p1 = HashMap();
  Map<String, int> p2 = HashMap();
  bool isEqual = true;

  if(s.length != t.length){
    return false;
  }

  for (int i = 0; i < s.length; i++) {
    p1[s[i]] = (p1[s[i]] ?? 0) + 1;
  }
  print("Data: $p1");
  for (int i = 0; i < t.length; i++) {
    p2[t[i]] = (p2[t[i]] ?? 0) + 1;
  }
  print("Data: $p2");
  
  p1.forEach((key,value){
    if(value != p2[key]){
      isEqual = false;
    }
  });
  return isEqual;
}

void main(){

  String s1 = "anagram";
  String s2 = "nagaram";
  print('Input: s1 = "$s1" s2 = "$s2"');
  print('Output: ${isAnagram(s1, s2)}');

  print('\n-----------------------------------');

  String s3 = "rat";
  String s4 = "cat";
  print('Input: s3 = "$s3" s4 = "$s4"');
  print('Output: ${isAnagram(s3, s4)}');

  print('\n-----------------------------------');

  String s5 = "a";
  String s6 = "ab";
  print('Input: s5 = "$s5" s6 = "$s6"');
  print('Output: ${isAnagram(s5, s6)}');

  print('\n-----------------------------------');
}