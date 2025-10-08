void main() {
  findSubArray([1, 4, 45, 6, 10, 8], 13); // [1, 4, 8]
  findSubArray([1, 2, 4, 3, 6, 7], 10); // [1, 3, 6]
  findSubArray([40, 20, 10, 3, 6, 7], 24); // false
}

void findSubArray(List<int> items, int target) {
  List<int> temp = [];
  for (int i = 0; i < items.length; i++) {
    for (int j = i + 1; j < items.length; j++) {
      //print("${items[i]} ${items[j]}");
      if (items[i] + items[j] <= target) {
        if(temp.isEmpty){
          temp.add(items[i]);
          temp.add(items[j]);
        }else{
          int add = 0;
          for (int k = 0; k < temp.length; k++) {
            add = add + temp[k];
          }
          if(add+items[j] == target){
            temp.add(items[j]);
          }
        }
      }
    }
  }
  print("$temp");
}
