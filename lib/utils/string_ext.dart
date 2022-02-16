extension StringKtx on String? {
  bool get isNullOrEmpty {
    return this == null || this?.isEmpty == true;
  }

  bool get toBoolean {
    if (isNullOrEmpty) return false;
    return this!.trim().toLowerCase() == "true";
  }

  int get toInt {
    return int.tryParse(this ?? "") ?? 0;
  }

  double get toDouble {
    return double.tryParse(this ?? "") ?? 0.0;
  }
}
