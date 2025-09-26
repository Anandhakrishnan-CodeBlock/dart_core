void quickSort({required List<int> items}){

  /// Case 1: if it empty or have one element
  if(items.length <= 1){
    return;
  }

  /// Case 2: Sort list
  for (int i = 0; i < items.length; i++) {
    for (int j = 0; j < items.length - 1; j++) {
      if (items[i] < items[j]) {
        final temp = items[i];
        items[i] = items[j];
        items[j] = temp;
      }
    }
  }
}

void main() {
  List<int> n1 = [100,1,45,-1,20,8,50,1000,200,79,1];
  print('Original list: $n1');
  quickSort(items: n1);
  print('Sorted list:   $n1');
  print('-----------------------------------\n');

/*  List<int> n2 = [2,5,4,3,1];
  print('Original list: $n2');
  quickSort(items: n2);
  print('Sorted list:   $n2');
  print('-----------------------------------\n');

  List<int> n3 = [7];
  print('Original list: $n3');
  quickSort(items: n3);
  print('Sorted list:   $n3');
  print('-----------------------------------\n');

  List<int> n4 = [];
  print('Original list: $n4');
  quickSort(items: n4);
  print('Sorted list:   $n4');
  print('-----------------------------------\n');

  List<int> n5 = [38, 27, 43, 3, 9, 82, 10];
  print('Original list: $n5');
  quickSort(items: n5);
  print('Sorted list:   $n5');
  print('-----------------------------------\n');

  List<int> n6 = [2,1];
  print('Original list: $n6');
  quickSort(items: n6);
  print('Sorted list:   $n6');
  print('-----------------------------------\n');*/
}