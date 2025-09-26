void main(){
  final original ="shirsh";
  var length = original.length-1;
  String reversed = "";

  print("Original String: $original");
  while(length >= 0){
    reversed = reversed + original[length];
    length--;
  }
  print("Reversed String: $reversed");
}
