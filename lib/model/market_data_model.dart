class MarketDataModel {
  late String time;
  late String assetIdBase;
  late String assetIdQuote;
  late double rate;
  late String type;

  MarketDataModel(
      {required this.time,
      required this.assetIdBase,
      required this.assetIdQuote,
      required this.rate,
      required this.type});

  MarketDataModel.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    assetIdBase = json['asset_id_base'];
    assetIdQuote = json['asset_id_quote'];
    rate = json['rate'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['asset_id_base'] = assetIdBase;
    data['asset_id_quote'] = assetIdQuote;
    data['rate'] = rate;
    data['type'] = type;
    return data;
  }
}
