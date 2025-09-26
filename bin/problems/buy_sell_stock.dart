int findBestTime(List<int> priceList) {

  int lowestValue = priceList[0];
  int highestValue = 0;
  int purchaseDay = 0;
  int soledDay = 0;

  /// Case 1: Worst case if list empty or having one
  if (priceList.isEmpty || priceList.length <= 1) {
    return 0;
  }

  /// Find lowest prize and day
  for (int i = 0; i < priceList.length; i++) {
    if(lowestValue > priceList[i]){
      lowestValue = priceList[i];
      purchaseDay = i;
    }
  }

  /// Finding Highest prize from lowest prize(Day)
  for(int j = purchaseDay; j < priceList.length; j++){
    if(highestValue < priceList[j]){
      highestValue = priceList[j];
      soledDay = j;
    }
  }

  int profit = priceList[soledDay] - priceList[purchaseDay];
  //print(purchaseDay);
  //print(soledDay);
  return profit;
}

void main() {
  List<int> nums1 = [7, 1, 5, 3, 6, 4];
  print('Input: Array = $nums1');
  print('Output: ${findBestTime(nums1)}');

  print('-----------------------------------------');

  List<int> nums2 = [7, 6, 4, 3, 1];
  print('Input: Array = $nums2');
  print('Output: ${findBestTime(nums2)}');

  print('-----------------------------------------');
}