import 'package:flutter/material.dart';
import 'package:kit/assets/chart_time_values.dart';
import 'package:kit/assets/theme.dart';
import 'package:kit/core/injections.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../model/chart_data.dart';

class Chart extends StatefulWidget {
  final List<ChartData> candles;

  const Chart({Key? key, required this.candles}) : super(key: key);
  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  late double min;
  late double max;
  ChartSettings chartSettings = getIt<ChartSettings>();
  void getMinMaxValues() {
    var candlesRate = <int>[];
    for (var element in widget.candles) {
      candlesRate.add(element.rateOpen);
      min = candlesRate
          .reduce((value, element) => value < element ? value : element)
          .toDouble();

      max = candlesRate
          .reduce((value, element) => value > element ? value : element)
          .toDouble();
    }
  }

  @override
  void initState() {
    getMinMaxValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10, // changes position of shadow
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            child: SfCartesianChart(
                title: ChartTitle(
                    text: 'Charting data', textStyle: TextStyleTheme.title_1),
                primaryXAxis: DateTimeAxis(
                    visibleMinimum: chartSettings.getVisibleMinimum(),
                    visibleMaximum: chartSettings.getVisibleMaximum(),
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    intervalType: DateTimeIntervalType.days,
                    majorGridLines: const MajorGridLines(width: 0)),
                primaryYAxis: NumericAxis(
                    maximum: max,
                    minimum: min,
                    title: AxisTitle(
                        text: 'Historical prices',
                        textStyle: TextStyleTheme.subtitle_1)),
                series: <ChartSeries<ChartData, DateTime>>[
                  SplineSeries<ChartData, DateTime>(
                    color: Colors.black,
                    dataSource: widget.candles,
                    xValueMapper: (ChartData candles, _) =>
                        DateTime.parse(candles.timeOpen),
                    yValueMapper: (ChartData candles, _) => candles.rateOpen,
                  )
                ])),
      ],
    );
  }
}
