
int myAtoi(String s) {

  String atoiString = "";
  int sign = 1;
  const int maxInt = 2147483647; // 2^31 - 1
  const int minInt = -2147483648; // -2^31

  for (int i = 0; i < s.length; i++) {

    final int codeUnit = s[i].codeUnits.first;

    if (codeUnit == 32) {
      atoiString = atoiString;
    }

    else if (codeUnit >= 48 && codeUnit <= 57) {
      atoiString += s[i];
    }

    else if ((codeUnit >= 65 && codeUnit <= 90) || (codeUnit >= 97 && codeUnit <= 122)) {
      if(atoiString.isNotEmpty){
        return int.parse(atoiString);
      } else return 0;
    }

    else if (codeUnit == 45) {
      if (atoiString.isEmpty) {
        sign = -1;
        atoiString += s[i];
      }else break;
    }

    else if(codeUnit == 43){
      if (atoiString.isEmpty) {
        atoiString += s[i];
      }else break;
    }

  }
  final result = int.parse(atoiString);

  return int.parse(atoiString);
}

void main(){

  String s1 = " 42";
  print('Input: s1 = "$s1"');
  print('Output: ${myAtoi(s1)}');

  print('\n-----------------------------------');

  String s2 = " -42";
  print('Input: s2 = "$s2"');
  print('Output: ${myAtoi(s2)}');

  print('\n-----------------------------------');

  String s3 = "1337c0d3";
  print('Input: s3 = "$s3"');
  print('Output: ${myAtoi(s3)}');

  print('\n-----------------------------------');

  String s4 = "0-1";
  print('Input: s4 = "$s4"');
  print('Output: ${myAtoi(s4)}');

  print('\n-----------------------------------');

  String s5 = "words and 987";
  print('Input: s5 = "$s5"');
  print('Output: ${myAtoi(s5)}');

  print('\n-----------------------------------');
}