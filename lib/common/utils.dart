import 'package:intl/intl.dart';

String numberConvert(double value, String locale) {
  var f = NumberFormat.decimalPattern(locale);
  return f.format(value);
}
