void main(){
  List<int> numList0 = [1, 1, 2];
  List<int> numList1 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  print('Input: List = $numList0');
  final output0 = removeDuplicate(numList0);
  print('Output: $output0 Size: ${output0.length}');

  print('-----------------------------------------');

  print('Input: List = $numList1');
  List<int> output1 = removeDuplicate(numList1);
  print('Output: $output1 Size: ${output1.length}');
}

List<int> removeDuplicate(List<int> num) {

  /// Case1: list is empty or have 1 element
  if(num.length <= 1){
    return num;
  }

  /// Case2: Remove duplicate elements
  Set<int> items = {};
  for(int i=0; i<num.length; i++){
    items.add(num[i]);
  }

  return items.toList();
}