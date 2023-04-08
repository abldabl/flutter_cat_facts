import 'package:intl/intl.dart';

class TimeMapHelper {
  static const String _dateFormatdMMM = "d MMM";
  static const String _hourFormat24 = "HH:mm";

  static String dateForFactItem(DateTime dateTime) {
    final dayAndMonth = DateFormat(_dateFormatdMMM).format(dateTime).toString();
    final hoursAndMinutes = DateFormat(_hourFormat24).format(dateTime).toString();

    return '$dayAndMonth, ${dateTime.year} $hoursAndMinutes';
  }
}
