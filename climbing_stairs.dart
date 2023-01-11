class Solution {
  int climbStairs(int n) {
    int stair1 = 1;
    int stair2 = 1;

    for (int i = 2; i <= n; i++) {
      int stair = stair1 + stair2;
      stair1 = stair2;
      stair2 = stair;
    }

    return stair2;
  }
}
