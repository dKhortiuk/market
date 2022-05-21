part of 'bloc.dart';

@freezed
class CryptoState with _$CryptoState {
  const factory CryptoState.initial(
      {required bool isLoading,
      required bool isButtonEnabled}) = _CryptoInitialState;
  const factory CryptoState.subscribing(
      {required Stream<MarketDataModel>? stream,
      required List<ChartData> candles,
      required String subscribeFilterAssetId}) = _CryptoLoadedState;
  const factory CryptoState.error() = _CryptoLoadedError;
}
