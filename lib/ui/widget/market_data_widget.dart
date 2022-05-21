import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kit/assets/theme.dart';
import '../../model/market_data_model.dart';

class MarketDataWidget extends StatelessWidget {
  const MarketDataWidget({Key? key, required this.marketDataModel})
      : super(key: key);
  final MarketDataModel? marketDataModel;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        width: MediaQuery.of(context).size.width,
        height: height * 0.25,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Market data', style: TextStyleTheme.title_2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MarketDataWidgetColumn(
                    title: 'Symbol',
                    value: marketDataModel!.assetIdBase +
                        '/' +
                        marketDataModel!.assetIdQuote,
                  ),
                  MarketDataWidgetColumn(
                    title: 'Price',
                    value: '\$' + marketDataModel!.rate.toString(),
                  ),
                  MarketDataWidgetColumn(
                      title: 'Time',
                      value: DateFormat("MMM d, h:mm a")
                          .format(DateTime.parse(marketDataModel!.time))
                          .toString()
                      // DateTime.parse(marketDataModel!.time).toString(),
                      ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MarketDataWidgetColumn extends StatelessWidget {
  final String title;
  final String value;

  const MarketDataWidgetColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title, style: TextStyleTheme.subtitle_2),
      const SizedBox(
        height: 10,
      ),
      Text(
        value,
        style: TextStyleTheme.title_2,
      ),
    ]);
  }
}
