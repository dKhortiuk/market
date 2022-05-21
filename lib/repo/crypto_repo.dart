import 'dart:async';
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:kit/assets/chart_time_values.dart';
import 'package:kit/core/injections.dart';
import 'package:kit/model/websocket_message_model.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart' as dot_env;

import '../model/chart_data.dart';
import '../model/market_data_model.dart';

@singleton
class CryptoRepo {
  CryptoRepo() {
    channel = IOWebSocketChannel.connect(Uri.parse(websocketEndpoint));
    streamController = StreamController.broadcast();
    streamController.addStream(channel.stream);
    chartSettings = getIt<ChartSettings>();
  }

  final apiEndpoint = dot_env.env['REST_API_ENDPOINT'];
  final apiKey = dot_env.env['API_KEY']!;
  final websocketEndpoint = dot_env.env['WEBSOCKET_ENDPOINT']!;

  late WebSocketChannel channel;
  late StreamController streamController;
  late ChartSettings chartSettings;

  Stream<MarketDataModel>? get stream =>
      streamController.stream.map<MarketDataModel>(
          (value) => MarketDataModel.fromJson(jsonDecode(value)));

  void close() {
    channel.sink.close();
  }

  dynamic subscribe(String subscribeFilterAssetId) {
    try {
      channel.sink.add(jsonEncode(WebsocketMessageModel(
          type: "hello",
          apikey: apiKey,
          subscribeDataType: ["exrate"],
          subscribeFilterAssetId: [subscribeFilterAssetId])));
    } catch (error) {
      close();
      return error;
    }
  }

  Future<dynamic> getChartData(String subscribeFilterAssetId) async {
    try {
      final url =
          "${apiEndpoint}exchangerate/$subscribeFilterAssetId/history?time_start=${chartSettings.getTimeStart()}&time_end=${chartSettings.getTimeEnd()}&apikey=$apiKey&period_id=${chartSettings.getPeriod()}";
      final response = await http.get(Uri.parse(url));

      var responseData = json.decode(response.body);

      final chartData = responseData
          .map<ChartData>((data) => ChartData.fromJson(data))
          .toList();

      return chartData;
    } catch (error) {
      return error;
    }
  }
}
