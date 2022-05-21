part of 'bloc.dart';

@freezed
abstract class CryptoEvent with _$CryptoEvent {
  const factory CryptoEvent.close() = CryptoEventClose;

  const factory CryptoEvent.initial() = CryptoEventInitial;

  factory CryptoEvent.subscribe({required String subscribeFilterAssetId}) =
      CryptoEventSubscribe;

  factory CryptoEvent.enableButton() = CryptoEventEnableButton;
}
