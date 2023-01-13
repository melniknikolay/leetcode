class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.length == 0 || strs.isEmpty || strs.length == '') return "";

    for (int i = 0; i < strs[0].length; i++) {
      String storage = strs[0][i];
      for (int j = 1; j < strs.length; j++) {
        if (i == strs[j].length || strs[j][i] != storage)
          return strs[0].substring(0, i);
      }
    }
    return strs[0];
  }
}
