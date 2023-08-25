/// string util
class StUtil {
  static String formatNum(String numText) {
    final number = num.tryParse(numText);
    if(number == null) {
      return numText;
    }
    if(number > 10000) {
      double inTenTh = number / 10000;
      return "${inTenTh.toStringAsFixed(1)}万";
    }
    return number.toStringAsFixed(0);
  }
}
