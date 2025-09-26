void main(){
  List<int> num1 = [4, 3, 2, 1];
  List<int> num2 = [4, 3, 2, 1, 9];
  List<int> num3 = [4, 3, 2, 1, 998];
  List<int> num4 = [4, 3, 2, 1, 999];
  display(num1);
  display(num2);
  display(num3);
  display(num4);
}

void display(List<int> num){
  print(num);
  int i = num.length - 1;
  int digit = findDigit(num[i]);
  int addedValue = num[i] + 1;
  int addedDigit = findDigit(addedValue);
  if (digit == addedDigit) {
    num[i] = num[i] + 1;
  } else {
    num[i] = 1;
    addedDigit--;
    while (addedDigit > 0) {
      num.add(0);
      addedDigit--;
    }
  }
  print(num);
}

int findDigit(int n){
  int count = 0;
  int tempNumber = n;
  while (tempNumber > 0) {
    tempNumber ~/= 10;
    count++;
  }
  return count;
}