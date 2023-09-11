/// string util
class StUtil {
  static const blank = "-";
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

  static num? toNumberOrNull(String? value) {
    if(value == null) {
      return null;
    }
    try {
      return num.parse(value);
    } catch (e) {
      return null;
    }
  }

  static String numToString(num? value) {
    if(value == null) {
      return blank;
    }
    return "$value";
  }

  static String plus(String? value, num count) {
    final raw = toNumberOrNull(value);
    if(raw == null) {
      return value??blank;
    }
    final res = raw + count;
    return numToString(res);
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
