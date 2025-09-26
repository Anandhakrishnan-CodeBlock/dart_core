void divide({required List<int> items}){
  /// Case 1: list empty or 1 element
  if(items.length <= 1){
    return;
  }

  /// Case 2: list more than one item
  final mid = items.length ~/ 2;
  List<int> left = items.sublist(0,mid);
  List<int> right = items.sublist(mid);

  /// Case 3: divide the left until 1
  divide(items: left);
  /// Case 4: divide the right until 1
  divide(items: right);

  /// Case 5: Compare left and right and merge into one
  merge(left: left, right: right, items: items);
}

void merge({required List<int> left, required List<int> right, required List<int> items}){
  int i = 0;
  int j = 0;
  int k = 0;

  while(i < left.length && j < right.length){
    if(left[i] <= right[j]){
      items[k] = left[i];
      i++;
    }else{
      items[k] = right[j];
      j++;
    }
    k++;
  }

  while (i < left.length) {
    items[k] = left[i];
    i++;
    k++;
  }

  while (j < right.length) {
    items[k] = right[j];
    j++;
    k++;
  }
}

void main(){

  List<int> n1 = [1,2,7,8,9,10,100];
  print('Original list: $n1');
  divide(items: n1);
  print('Sorted list:   $n1');
  print('-----------------------------------\n');

  List<int> n2 = [2,5,4,3,1];
  print('Original list: $n2');
  divide(items: n2);
  print('Sorted list:   $n2');
  print('-----------------------------------\n');

  List<int> n3 = [7];
  print('Original list: $n3');
  divide(items: n3);
  print('Sorted list:   $n3');
  print('-----------------------------------\n');

  List<int> n4 = [];
  print('Original list: $n4');
  divide(items: n4);
  print('Sorted list:   $n4');
  print('-----------------------------------\n');

  List<int> n5 = [38, 27, 43, 3, 9, 82, 10];
  print('Original list: $n5');
  divide(items: n5);
  print('Sorted list:   $n5');
  print('-----------------------------------\n');

  List<int> n6 = [2,1];
  print('Original list: $n6');
  divide(items: n6);
  print('Sorted list:   $n6');
  print('-----------------------------------\n');
}