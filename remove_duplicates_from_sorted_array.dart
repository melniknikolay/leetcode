class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length == 0) return 0;
    int first = 0;
    int last = 0;

    while (last < nums.length) {
      if (nums[first] != nums[last]) {
        first += 1;
        nums[first] = nums[last];
      }
      last += 1;
    }
    return first += 1;
  }
}
