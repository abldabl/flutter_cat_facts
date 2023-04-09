import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeMapHelper {
  static const String _dateFormatdMMM = "d MMM";
  static const String _hourFormat24 = "HH:mm";

  static String dateForFactItem({required DateTime dateTime, required BuildContext context}) {
    final locale = Localizations.localeOf(context).languageCode;
    final dayAndMonth = DateFormat(_dateFormatdMMM, locale).format(dateTime).toString();
    final hoursAndMinutes = DateFormat(_hourFormat24, locale).format(dateTime).toString();

    return '$dayAndMonth, ${dateTime.year} $hoursAndMinutes';
  }
}
