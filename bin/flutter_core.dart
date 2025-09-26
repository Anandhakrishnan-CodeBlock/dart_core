void main() {
 /* List<int> list = [1,2,3,4,5,6];
  var size = 0;
  while (size <= list.length-1){
    print("${list[size]}");
    size++;
  }*/
  final sample = Sample();
  final result = sample.removeDuplicates([1,1,2]);
  print(result);
}

class Sample {
  int removeDuplicates(List<int> nums) {
    List<int> result = [];
    var size = 0;
    while (size <= nums.length-1) {
      if (!result.contains(nums[size])) {
        result.add(nums[size]);
      }
      size++;
    }
    print(result);
    return result.length;
  }
}
