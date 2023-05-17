extension StringExtension on String {
  String get addOverFlow {
    if (length < 15) {
      return this;
    } else {
      return '${substring(0, 15)}...';
    }
  }
}
