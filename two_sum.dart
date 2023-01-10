class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final Map<int, int> map = {};
    for (var i = 0; i < nums.length; i++) {
      final value = nums[i];
      final key = target - value;
      if (map.containsKey(key)) {
        return [map[key]!, i];
      }
      map[value] = i;
    }
    return [];
  }
}
