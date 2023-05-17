import 'package:intl/intl.dart';

extension DateTimeHelper on DateTime {
  static DateTime fromIso8601Json(String json) => DateTime.parse(json);

  static String toIso8601Json(DateTime date) => date.toIso8601String();

  static String toText(String dateTimeString) {
    return DateFormat('MMM d, y H:m:s UTC').parse(dateTimeString).toString();
  }
}
