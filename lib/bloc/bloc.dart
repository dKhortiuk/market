import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/model/market_data_model.dart';
import '../core/injections.dart';
import '../model/chart_data.dart';
import '../repo/crypto_repo.dart';

part 'bloc.freezed.dart';
part 'bloc_event.dart';
part 'bloc_state.dart';

@injectable
class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  CryptoBloc()
      : super(const CryptoState.initial(
            isLoading: false, isButtonEnabled: false));

  final CryptoRepo? cryptoRepo = getIt<CryptoRepo>();

  @override
  Stream<CryptoState> mapEventToState(
    CryptoEvent event,
  ) async* {
    yield* event.map(subscribe: (CryptoEventSubscribe event) async* {
      try {
        yield const CryptoState.initial(isLoading: true, isButtonEnabled: true);

        cryptoRepo!.subscribe(event.subscribeFilterAssetId);

        List<ChartData> candles =
            await cryptoRepo!.getChartData(event.subscribeFilterAssetId);

        yield CryptoState.subscribing(
            stream: cryptoRepo!.stream,
            candles: candles,
            subscribeFilterAssetId: event.subscribeFilterAssetId);
      } catch (error) {
        yield const CryptoState.error();
      }
    }, initial: (event) async* {
      yield const CryptoState.initial(isLoading: false, isButtonEnabled: false);
    }, close: (event) async* {
      yield const CryptoState.initial(isLoading: false, isButtonEnabled: false);
    }, enableButton: (event) async* {
      yield const CryptoState.initial(isLoading: false, isButtonEnabled: true);
    });
  }
}
