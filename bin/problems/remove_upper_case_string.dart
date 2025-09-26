void main() {

  var str = "GFGgfg123@%";
  var i = 0;
  var temp = "";
  while (i <= str.length - 1) {
    final isUpper = str.codeUnitAt(i) >= 65 && str.codeUnitAt(i) <= 90;
    if (!isUpper) {
      temp = temp + str[i];
    }
    i++;
  }
  print(temp);
}

var ascii = '''
In Standard ASCII (0-127), the ranges are: Uppercase letters (A-Z) are 65-90, 
lowercase letters (a-z) are 97-122, and special characters fall into several ranges, 
including 32-47, 58-64, 91-96, and 123-126. Numbers (0-9) are in the range 48-57, 
and non-printable control characters are in the ranges 0-31 and 127.  
''';