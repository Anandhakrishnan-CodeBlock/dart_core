bool isPalindrome(String s) {
  if(s.isEmpty){
    return true;
  }
  var processedString = "";
  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (_isAlphanumeric(char)) {
      processedString += char.toLowerCase();
    }
  }
  int left = 0;
  int right = processedString.length - 1;

  while (left < right) {
    if (processedString[left] != processedString[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}

bool _isAlphanumeric(String char) {
  final int codeUnit = char.codeUnitAt(0);
  return (codeUnit >= 48 && codeUnit <= 57) || // 0-9
      (codeUnit >= 65 && codeUnit <= 90) || // A-Z
      (codeUnit >= 97 && codeUnit <= 122); // a-z
}

void main(){

  String s1 = "A man, a plan, a canal: Panama";
  print('Input: s1 = "$s1"');
  print('Output: ${isPalindrome(s1)}');

  print('\n-----------------------------------');

  String s2 = "race a car";
  print('Input: s2 = "$s2"');
  print('Output: ${isPalindrome(s2)}');

  print('\n-----------------------------------');

  String s3 = " ";
  print('Input: s3 = "$s3"');
  print('Output: ${isPalindrome(s3)}');

  print('\n-----------------------------------');

  String s4 = "ab@a";
  print('Input: s4 = "$s4"');
  print('Output: ${isPalindrome(s4)}');

  print('\n-----------------------------------');
}