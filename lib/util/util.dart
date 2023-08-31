/// string util
class StUtil {
  static String formatNum(String numText) {
    final number = num.tryParse(numText);
    if (number == null) {
      return numText;
    }
    if (number > 10000) {
      double inTenTh = number / 10000;
      return "${inTenTh.toStringAsFixed(1)}万";
    }
    return number.toStringAsFixed(0);
  }
}

/// json util
class JsonUtil<T> {
  T? parse(dynamic raw, T Function(Map<String, dynamic> res) call) {
    if (raw != null && raw is Map<String, dynamic>) {
      return call(raw);
    }
    return null;
  }

  List<T> toList(
      dynamic raw, T Function(Map<String, dynamic> res) call) {
    if (raw != null && raw is List) {
      return raw.map((e) => call(e)).toList();
    }
    return List.empty(growable: false);
  }
}
