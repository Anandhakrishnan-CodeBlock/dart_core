import 'dart:collection';

bool isClose(String char) {
  String patten = "";

  /// Case 1: If it is empty or have one element
  if (char.length <= 1) {
    return false;
  }

  /// Case 2: find is properly closed
  int i = 0;
  while (i < char.length) {
    if (char[i] == "(" || char[i] == "{" || char[i] == "[") {
      patten = char[i];
    } else if (char[i] == ")") {
      if (patten.isEmpty || !patten.contains("(")) {
        return false;
      }
      patten = "";
    } else if (char[i] == "}") {
      if (patten.isEmpty || !patten.contains("{")) {
        return false;
      }
      patten = "";
    } else if (char[i] == "]") {
      if (patten.isEmpty || !patten.contains("[")) {
        return false;
      }
      patten = "";
    }
    i++;
  }
  return patten.isEmpty;
}

void main() {
  print("Input: ()[]{}");
  print("Output: ${isClose("()[]{}")}");

  print("Input: (]");
  print("Output: ${isClose("(]")}");

  print("Input: {");
  print("Output: ${isClose("{")}");

  print("Input: ]");
  print("Output: ${isClose("]")}");
}
