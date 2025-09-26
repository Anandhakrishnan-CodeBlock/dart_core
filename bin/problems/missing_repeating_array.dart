
void main() {

  final input1 = [4, 3, 6, 2, 1, 1];
  var count = [];
  Map<int, int> data = {};

  for (int i = 0; i < input1.length; i++) {
    if (data.containsKey(input1[i])) {
      data.update(input1[i], (value) => value + 1);
    } else {
      data[input1[i]] = 1;
    }
    count.add(i+1);
  }

  print(count);
  print(data);
  for (int j = 0; j < count.length; j++) {
    if(data.containsKey(count[j])){
      final repeat = data[count[j]] ?? 0;
      if(repeat > 1){
        print("Repeated ${count[j]}");
      }
    }else{
      print("Missing ${count[j]}");
    }
  }
}
