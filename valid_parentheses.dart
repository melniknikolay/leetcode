class Solution {
  bool isValid(String s) {
    // мапа для проверки
    Map<String, String> parenthesisCheck = <String, String>{
      ')': '(',
      '}': '{',
      ']': '[',
    };
    // список для хранения значений строки
    List<String> listValue = <String>[];

    for (String item in s.split('')) {
      // если у нас есть закрытая скобка проверяем есть ли у нас в списке открытая
      if (parenthesisCheck.containsKey(item)) {
        if (listValue.length == 0 ||
            listValue[listValue.length - 1] != parenthesisCheck[item])
          return false;
        else {
          listValue.removeLast();
        }
      } else {
        listValue.add(item);
      }
    }
    return listValue.length == 0;
  }
}
