class ChartData {
  late String timePeriodStart;
  late String timePeriodEnd;
  late String timeOpen;
  late String timeClose;
  late int rateOpen;
  late double rateHigh;
  late double rateLow;
  late double rateClose;

  ChartData(
      {required this.timePeriodStart,
      required this.timePeriodEnd,
      required this.timeOpen,
      required this.timeClose,
      required this.rateOpen,
      required this.rateHigh,
      required this.rateLow,
      required this.rateClose});

  ChartData.fromJson(Map<String, dynamic> json) {
    timePeriodStart = json['time_period_start'];
    timePeriodEnd = json['time_period_end'];
    timeOpen = json['time_open'];
    timeClose = json['time_close'];
    rateOpen = json['rate_open'].round();
    rateHigh = json['rate_high'];
    rateLow = json['rate_low'];
    rateClose = json['rate_close'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time_period_start'] = timePeriodStart;
    data['time_period_end'] = timePeriodEnd;
    data['time_open'] = timeOpen;
    data['time_close'] = timeClose;
    data['rate_open'] = rateOpen;
    data['rate_high'] = rateHigh;
    data['rate_low'] = rateLow;
    data['rate_close'] = rateClose;
    return data;
  }
}
