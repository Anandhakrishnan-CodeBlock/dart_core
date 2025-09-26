import 'dart:io';

void main() { 
  String text = "krishnan";
  reverseString(text);
}

void reverseString(String str){
  if(str.isEmpty){
    return;
  }
  stdout.write(str[str.length-1]);
  String subString = str.substring(0, str.length-1);
  return reverseString(subString);
}