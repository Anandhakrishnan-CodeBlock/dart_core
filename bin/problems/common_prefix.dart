void main() {
  List<String> str = ["flower", "flow", "flight"];
  findCommonPrefix(str);
  List<String> str1 = ["dog", "racecar", "car"];
  findCommonPrefix(str1);
}

void findCommonPrefix(List<String> str) {
  /// Case 1: List is empty or having one element
  if (str.length <= 1) {
    print("No Common Elements");
    return;
  }

  /// Case 2: Find common elements
  String comPix = str[0];
  //print(comPix);
  for (int i = 1; i < str.length; i++) {
    for (int j = 0; j < str[i].length; j++) {

      /// If Common text is empty
      if(comPix.isEmpty){
        print("Common prefix not found");
        return;
      }

      /// If Common prefix value is grater than list item
      if(comPix.length > str[i].length){
        final cutOf = comPix.length - str[i][j].length-1;
        comPix = comPix.substring(0, cutOf);
      }

      /// Check the string is equal
      if (comPix[j] != str[i][j]) {
        comPix = comPix.substring(0, j);
        break;
      }
    }
  }
  print(comPix);
}
