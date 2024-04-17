import 'package:intl/intl.dart';

/// Extension for DateTime to help convert DateTime to simple format
extension DateTimeExtension on DateTime {
  String toSimpleFormat() {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}
