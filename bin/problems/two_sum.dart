List<int> findTwoSum(List<int> nums, int target) {

  Map<int,int> item = Map();

  /// Case 1: Empty input
  if(nums.isEmpty){
    return [];
  }

  /// Case 2: Find Sum for to in array
  for(int i=0; i<nums.length; i++) {
    final key = target - nums[i];
    if(item.containsKey(key)){
      return [item[key]!, i];
    }else{
      item[nums[i]] = i;
    }
  }

  /// Case Default: Not Match with Target
  return [];
}

void main() {
  List<int> nums1 = [2, 7, 11, 15];
  int target1 = 9;
  print('Input: nums = $nums1, target = $target1');
  print('Output: ${findTwoSum(nums1, target1)}');

  print('-----------------------------------------');

  List<int> nums2 = [3, 2, 4];
  int target2 = 6;
  print('Input: nums = $nums2, target = $target2');
  print('Output: ${findTwoSum(nums2, target2)}');

  print('-----------------------------------------');

  List<int> nums3 = [3, 3];
  int target3 = 6;
  print('Input: nums = $nums3, target = $target3');
  print('Output: ${findTwoSum(nums3, target3)}');

  print('-----------------------------------------');

  List<int> nums4 = [3,2,3];
  int target4 = 6;
  print('Input: nums = $nums4, target = $target4');
  print('Output: ${findTwoSum(nums4, target4)}');
}