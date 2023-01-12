class A {
  int romanToInt(String s) {
    // мапа символов
    Map<String, int> romanMap = <String, int>{
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    // длина всей строки
    int n = s.length;

    // переменная для хранения результата
    int? nums = romanMap[s[n - 1]];
    // шаг цикла с права на лево
    for (var i = n - 2; i >= 0; i--) {
      // проверяем больше ли правый символ чем левый
      if (romanMap[s[i]]! >= romanMap[s[i + 1]]!) {
        if (nums != null) {
          nums += romanMap[s[i]]!;
        }
      } else {
        // если не больше убираем из результата
        if (nums != null) {
          nums -= romanMap[s[i]]!;
        }
      }
    }
    return nums!;
  }
}
