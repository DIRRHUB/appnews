import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toSimpleFormat() {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}
