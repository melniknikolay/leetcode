class Solution {
  List<int> plusOne(List<int> digits) {
    int index = digits.length - 1;
    List<int> newItems = digits.toList();
    while (index >= 0) {
      if (digits[index] < 9) {
        newItems[index] = newItems[index] + 1;
        if (index < (digits.length - 1)) {
          newItems.replaceRange(index + 1, digits.length,
              List.generate(digits.length - index - 1, (_) => 0));
        }
        break;
      } else if (digits[index] == 9 && index == 0) {
        newItems.replaceRange(index, digits.length,
            List.generate(digits.length - index, (_) => 0));
        newItems.insert(0, 1);
        break;
      } else {
        index--;
      }
    }
    return newItems;
  }
}
