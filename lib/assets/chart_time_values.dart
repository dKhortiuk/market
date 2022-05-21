import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@singleton
class ChartSettings {
  DateFormat getDateFormat() => DateFormat("yyyy-MM-dd");

  String getTimeEnd() =>
      getDateFormat().parse(getVisibleMaximum().toString()).toIso8601String();

  String getTimeStart() =>
      getDateFormat().parse(getVisibleMinimum().toString()).toIso8601String();

  DateTime getVisibleMinimum() =>
      getVisibleMaximum().subtract(const Duration(days: 100));

  DateTime getVisibleMaximum() => DateTime.now();

  String getPeriod() => '1DAY';
}
