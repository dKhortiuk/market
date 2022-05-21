class WebsocketMessageModel {
  String? type;
  String? apikey;
  List<String>? subscribeDataType;
  List<String>? subscribeFilterAssetId;

  WebsocketMessageModel(
      {this.type,
      this.apikey,
      this.subscribeDataType,
      this.subscribeFilterAssetId});

  WebsocketMessageModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    apikey = json['apikey'];
    subscribeDataType = json['subscribe_data_type'].cast<String>();
    subscribeFilterAssetId = json['subscribe_filter_asset_id'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['apikey'] = this.apikey;
    data['subscribe_data_type'] = this.subscribeDataType;
    data['subscribe_filter_asset_id'] = this.subscribeFilterAssetId;
    return data;
  }
}
