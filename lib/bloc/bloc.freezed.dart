// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CryptoEventTearOff {
  const _$CryptoEventTearOff();

  CryptoEventClose close() {
    return const CryptoEventClose();
  }

  CryptoEventInitial initial() {
    return const CryptoEventInitial();
  }

  CryptoEventSubscribe subscribe({required String subscribeFilterAssetId}) {
    return CryptoEventSubscribe(
      subscribeFilterAssetId: subscribeFilterAssetId,
    );
  }

  CryptoEventEnableButton enableButton() {
    return CryptoEventEnableButton();
  }
}

/// @nodoc
const $CryptoEvent = _$CryptoEventTearOff();

/// @nodoc
mixin _$CryptoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function() initial,
    required TResult Function(String subscribeFilterAssetId) subscribe,
    required TResult Function() enableButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function()? initial,
    TResult Function(String subscribeFilterAssetId)? subscribe,
    TResult Function()? enableButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoEventClose value) close,
    required TResult Function(CryptoEventInitial value) initial,
    required TResult Function(CryptoEventSubscribe value) subscribe,
    required TResult Function(CryptoEventEnableButton value) enableButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoEventClose value)? close,
    TResult Function(CryptoEventInitial value)? initial,
    TResult Function(CryptoEventSubscribe value)? subscribe,
    TResult Function(CryptoEventEnableButton value)? enableButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoEventCopyWith<$Res> {
  factory $CryptoEventCopyWith(
          CryptoEvent value, $Res Function(CryptoEvent) then) =
      _$CryptoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoEventCopyWithImpl<$Res> implements $CryptoEventCopyWith<$Res> {
  _$CryptoEventCopyWithImpl(this._value, this._then);

  final CryptoEvent _value;
  // ignore: unused_field
  final $Res Function(CryptoEvent) _then;
}

/// @nodoc
abstract class $CryptoEventCloseCopyWith<$Res> {
  factory $CryptoEventCloseCopyWith(
          CryptoEventClose value, $Res Function(CryptoEventClose) then) =
      _$CryptoEventCloseCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoEventCloseCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements $CryptoEventCloseCopyWith<$Res> {
  _$CryptoEventCloseCopyWithImpl(
      CryptoEventClose _value, $Res Function(CryptoEventClose) _then)
      : super(_value, (v) => _then(v as CryptoEventClose));

  @override
  CryptoEventClose get _value => super._value as CryptoEventClose;
}

/// @nodoc
class _$CryptoEventClose implements CryptoEventClose {
  const _$CryptoEventClose();

  @override
  String toString() {
    return 'CryptoEvent.close()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CryptoEventClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function() initial,
    required TResult Function(String subscribeFilterAssetId) subscribe,
    required TResult Function() enableButton,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function()? initial,
    TResult Function(String subscribeFilterAssetId)? subscribe,
    TResult Function()? enableButton,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoEventClose value) close,
    required TResult Function(CryptoEventInitial value) initial,
    required TResult Function(CryptoEventSubscribe value) subscribe,
    required TResult Function(CryptoEventEnableButton value) enableButton,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoEventClose value)? close,
    TResult Function(CryptoEventInitial value)? initial,
    TResult Function(CryptoEventSubscribe value)? subscribe,
    TResult Function(CryptoEventEnableButton value)? enableButton,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class CryptoEventClose implements CryptoEvent {
  const factory CryptoEventClose() = _$CryptoEventClose;
}

/// @nodoc
abstract class $CryptoEventInitialCopyWith<$Res> {
  factory $CryptoEventInitialCopyWith(
          CryptoEventInitial value, $Res Function(CryptoEventInitial) then) =
      _$CryptoEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoEventInitialCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements $CryptoEventInitialCopyWith<$Res> {
  _$CryptoEventInitialCopyWithImpl(
      CryptoEventInitial _value, $Res Function(CryptoEventInitial) _then)
      : super(_value, (v) => _then(v as CryptoEventInitial));

  @override
  CryptoEventInitial get _value => super._value as CryptoEventInitial;
}

/// @nodoc
class _$CryptoEventInitial implements CryptoEventInitial {
  const _$CryptoEventInitial();

  @override
  String toString() {
    return 'CryptoEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CryptoEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function() initial,
    required TResult Function(String subscribeFilterAssetId) subscribe,
    required TResult Function() enableButton,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function()? initial,
    TResult Function(String subscribeFilterAssetId)? subscribe,
    TResult Function()? enableButton,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoEventClose value) close,
    required TResult Function(CryptoEventInitial value) initial,
    required TResult Function(CryptoEventSubscribe value) subscribe,
    required TResult Function(CryptoEventEnableButton value) enableButton,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoEventClose value)? close,
    TResult Function(CryptoEventInitial value)? initial,
    TResult Function(CryptoEventSubscribe value)? subscribe,
    TResult Function(CryptoEventEnableButton value)? enableButton,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CryptoEventInitial implements CryptoEvent {
  const factory CryptoEventInitial() = _$CryptoEventInitial;
}

/// @nodoc
abstract class $CryptoEventSubscribeCopyWith<$Res> {
  factory $CryptoEventSubscribeCopyWith(CryptoEventSubscribe value,
          $Res Function(CryptoEventSubscribe) then) =
      _$CryptoEventSubscribeCopyWithImpl<$Res>;
  $Res call({String subscribeFilterAssetId});
}

/// @nodoc
class _$CryptoEventSubscribeCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements $CryptoEventSubscribeCopyWith<$Res> {
  _$CryptoEventSubscribeCopyWithImpl(
      CryptoEventSubscribe _value, $Res Function(CryptoEventSubscribe) _then)
      : super(_value, (v) => _then(v as CryptoEventSubscribe));

  @override
  CryptoEventSubscribe get _value => super._value as CryptoEventSubscribe;

  @override
  $Res call({
    Object? subscribeFilterAssetId = freezed,
  }) {
    return _then(CryptoEventSubscribe(
      subscribeFilterAssetId: subscribeFilterAssetId == freezed
          ? _value.subscribeFilterAssetId
          : subscribeFilterAssetId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$CryptoEventSubscribe implements CryptoEventSubscribe {
  _$CryptoEventSubscribe({required this.subscribeFilterAssetId});

  @override
  final String subscribeFilterAssetId;

  @override
  String toString() {
    return 'CryptoEvent.subscribe(subscribeFilterAssetId: $subscribeFilterAssetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CryptoEventSubscribe &&
            (identical(other.subscribeFilterAssetId, subscribeFilterAssetId) ||
                const DeepCollectionEquality().equals(
                    other.subscribeFilterAssetId, subscribeFilterAssetId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscribeFilterAssetId);

  @JsonKey(ignore: true)
  @override
  $CryptoEventSubscribeCopyWith<CryptoEventSubscribe> get copyWith =>
      _$CryptoEventSubscribeCopyWithImpl<CryptoEventSubscribe>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function() initial,
    required TResult Function(String subscribeFilterAssetId) subscribe,
    required TResult Function() enableButton,
  }) {
    return subscribe(subscribeFilterAssetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function()? initial,
    TResult Function(String subscribeFilterAssetId)? subscribe,
    TResult Function()? enableButton,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(subscribeFilterAssetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoEventClose value) close,
    required TResult Function(CryptoEventInitial value) initial,
    required TResult Function(CryptoEventSubscribe value) subscribe,
    required TResult Function(CryptoEventEnableButton value) enableButton,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoEventClose value)? close,
    TResult Function(CryptoEventInitial value)? initial,
    TResult Function(CryptoEventSubscribe value)? subscribe,
    TResult Function(CryptoEventEnableButton value)? enableButton,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class CryptoEventSubscribe implements CryptoEvent {
  factory CryptoEventSubscribe({required String subscribeFilterAssetId}) =
      _$CryptoEventSubscribe;

  String get subscribeFilterAssetId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoEventSubscribeCopyWith<CryptoEventSubscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoEventEnableButtonCopyWith<$Res> {
  factory $CryptoEventEnableButtonCopyWith(CryptoEventEnableButton value,
          $Res Function(CryptoEventEnableButton) then) =
      _$CryptoEventEnableButtonCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoEventEnableButtonCopyWithImpl<$Res>
    extends _$CryptoEventCopyWithImpl<$Res>
    implements $CryptoEventEnableButtonCopyWith<$Res> {
  _$CryptoEventEnableButtonCopyWithImpl(CryptoEventEnableButton _value,
      $Res Function(CryptoEventEnableButton) _then)
      : super(_value, (v) => _then(v as CryptoEventEnableButton));

  @override
  CryptoEventEnableButton get _value => super._value as CryptoEventEnableButton;
}

/// @nodoc
class _$CryptoEventEnableButton implements CryptoEventEnableButton {
  _$CryptoEventEnableButton();

  @override
  String toString() {
    return 'CryptoEvent.enableButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CryptoEventEnableButton);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() close,
    required TResult Function() initial,
    required TResult Function(String subscribeFilterAssetId) subscribe,
    required TResult Function() enableButton,
  }) {
    return enableButton();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? close,
    TResult Function()? initial,
    TResult Function(String subscribeFilterAssetId)? subscribe,
    TResult Function()? enableButton,
    required TResult orElse(),
  }) {
    if (enableButton != null) {
      return enableButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoEventClose value) close,
    required TResult Function(CryptoEventInitial value) initial,
    required TResult Function(CryptoEventSubscribe value) subscribe,
    required TResult Function(CryptoEventEnableButton value) enableButton,
  }) {
    return enableButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoEventClose value)? close,
    TResult Function(CryptoEventInitial value)? initial,
    TResult Function(CryptoEventSubscribe value)? subscribe,
    TResult Function(CryptoEventEnableButton value)? enableButton,
    required TResult orElse(),
  }) {
    if (enableButton != null) {
      return enableButton(this);
    }
    return orElse();
  }
}

abstract class CryptoEventEnableButton implements CryptoEvent {
  factory CryptoEventEnableButton() = _$CryptoEventEnableButton;
}

/// @nodoc
class _$CryptoStateTearOff {
  const _$CryptoStateTearOff();

  _CryptoInitialState initial(
      {required bool isLoading, required bool isButtonEnabled}) {
    return _CryptoInitialState(
      isLoading: isLoading,
      isButtonEnabled: isButtonEnabled,
    );
  }

  _CryptoLoadedState subscribing(
      {required Stream<MarketDataModel>? stream,
      required List<ChartData> candles,
      required String subscribeFilterAssetId}) {
    return _CryptoLoadedState(
      stream: stream,
      candles: candles,
      subscribeFilterAssetId: subscribeFilterAssetId,
    );
  }

  _CryptoLoadedError error() {
    return const _CryptoLoadedError();
  }
}

/// @nodoc
const $CryptoState = _$CryptoStateTearOff();

/// @nodoc
mixin _$CryptoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isButtonEnabled) initial,
    required TResult Function(Stream<MarketDataModel>? stream,
            List<ChartData> candles, String subscribeFilterAssetId)
        subscribing,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isButtonEnabled)? initial,
    TResult Function(Stream<MarketDataModel>? stream, List<ChartData> candles,
            String subscribeFilterAssetId)?
        subscribing,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CryptoInitialState value) initial,
    required TResult Function(_CryptoLoadedState value) subscribing,
    required TResult Function(_CryptoLoadedError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CryptoInitialState value)? initial,
    TResult Function(_CryptoLoadedState value)? subscribing,
    TResult Function(_CryptoLoadedError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoStateCopyWith<$Res> {
  factory $CryptoStateCopyWith(
          CryptoState value, $Res Function(CryptoState) then) =
      _$CryptoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoStateCopyWithImpl<$Res> implements $CryptoStateCopyWith<$Res> {
  _$CryptoStateCopyWithImpl(this._value, this._then);

  final CryptoState _value;
  // ignore: unused_field
  final $Res Function(CryptoState) _then;
}

/// @nodoc
abstract class _$CryptoInitialStateCopyWith<$Res> {
  factory _$CryptoInitialStateCopyWith(
          _CryptoInitialState value, $Res Function(_CryptoInitialState) then) =
      __$CryptoInitialStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isButtonEnabled});
}

/// @nodoc
class __$CryptoInitialStateCopyWithImpl<$Res>
    extends _$CryptoStateCopyWithImpl<$Res>
    implements _$CryptoInitialStateCopyWith<$Res> {
  __$CryptoInitialStateCopyWithImpl(
      _CryptoInitialState _value, $Res Function(_CryptoInitialState) _then)
      : super(_value, (v) => _then(v as _CryptoInitialState));

  @override
  _CryptoInitialState get _value => super._value as _CryptoInitialState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isButtonEnabled = freezed,
  }) {
    return _then(_CryptoInitialState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isButtonEnabled: isButtonEnabled == freezed
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CryptoInitialState implements _CryptoInitialState {
  const _$_CryptoInitialState(
      {required this.isLoading, required this.isButtonEnabled});

  @override
  final bool isLoading;
  @override
  final bool isButtonEnabled;

  @override
  String toString() {
    return 'CryptoState.initial(isLoading: $isLoading, isButtonEnabled: $isButtonEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CryptoInitialState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isButtonEnabled, isButtonEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonEnabled, isButtonEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isButtonEnabled);

  @JsonKey(ignore: true)
  @override
  _$CryptoInitialStateCopyWith<_CryptoInitialState> get copyWith =>
      __$CryptoInitialStateCopyWithImpl<_CryptoInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isButtonEnabled) initial,
    required TResult Function(Stream<MarketDataModel>? stream,
            List<ChartData> candles, String subscribeFilterAssetId)
        subscribing,
    required TResult Function() error,
  }) {
    return initial(isLoading, isButtonEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isButtonEnabled)? initial,
    TResult Function(Stream<MarketDataModel>? stream, List<ChartData> candles,
            String subscribeFilterAssetId)?
        subscribing,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, isButtonEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CryptoInitialState value) initial,
    required TResult Function(_CryptoLoadedState value) subscribing,
    required TResult Function(_CryptoLoadedError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CryptoInitialState value)? initial,
    TResult Function(_CryptoLoadedState value)? subscribing,
    TResult Function(_CryptoLoadedError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CryptoInitialState implements CryptoState {
  const factory _CryptoInitialState(
      {required bool isLoading,
      required bool isButtonEnabled}) = _$_CryptoInitialState;

  bool get isLoading => throw _privateConstructorUsedError;
  bool get isButtonEnabled => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CryptoInitialStateCopyWith<_CryptoInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CryptoLoadedStateCopyWith<$Res> {
  factory _$CryptoLoadedStateCopyWith(
          _CryptoLoadedState value, $Res Function(_CryptoLoadedState) then) =
      __$CryptoLoadedStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<MarketDataModel>? stream,
      List<ChartData> candles,
      String subscribeFilterAssetId});
}

/// @nodoc
class __$CryptoLoadedStateCopyWithImpl<$Res>
    extends _$CryptoStateCopyWithImpl<$Res>
    implements _$CryptoLoadedStateCopyWith<$Res> {
  __$CryptoLoadedStateCopyWithImpl(
      _CryptoLoadedState _value, $Res Function(_CryptoLoadedState) _then)
      : super(_value, (v) => _then(v as _CryptoLoadedState));

  @override
  _CryptoLoadedState get _value => super._value as _CryptoLoadedState;

  @override
  $Res call({
    Object? stream = freezed,
    Object? candles = freezed,
    Object? subscribeFilterAssetId = freezed,
  }) {
    return _then(_CryptoLoadedState(
      stream: stream == freezed
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<MarketDataModel>?,
      candles: candles == freezed
          ? _value.candles
          : candles // ignore: cast_nullable_to_non_nullable
              as List<ChartData>,
      subscribeFilterAssetId: subscribeFilterAssetId == freezed
          ? _value.subscribeFilterAssetId
          : subscribeFilterAssetId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_CryptoLoadedState implements _CryptoLoadedState {
  const _$_CryptoLoadedState(
      {required this.stream,
      required this.candles,
      required this.subscribeFilterAssetId});

  @override
  final Stream<MarketDataModel>? stream;
  @override
  final List<ChartData> candles;
  @override
  final String subscribeFilterAssetId;

  @override
  String toString() {
    return 'CryptoState.subscribing(stream: $stream, candles: $candles, subscribeFilterAssetId: $subscribeFilterAssetId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CryptoLoadedState &&
            (identical(other.stream, stream) ||
                const DeepCollectionEquality().equals(other.stream, stream)) &&
            (identical(other.candles, candles) ||
                const DeepCollectionEquality()
                    .equals(other.candles, candles)) &&
            (identical(other.subscribeFilterAssetId, subscribeFilterAssetId) ||
                const DeepCollectionEquality().equals(
                    other.subscribeFilterAssetId, subscribeFilterAssetId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stream) ^
      const DeepCollectionEquality().hash(candles) ^
      const DeepCollectionEquality().hash(subscribeFilterAssetId);

  @JsonKey(ignore: true)
  @override
  _$CryptoLoadedStateCopyWith<_CryptoLoadedState> get copyWith =>
      __$CryptoLoadedStateCopyWithImpl<_CryptoLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isButtonEnabled) initial,
    required TResult Function(Stream<MarketDataModel>? stream,
            List<ChartData> candles, String subscribeFilterAssetId)
        subscribing,
    required TResult Function() error,
  }) {
    return subscribing(stream, candles, subscribeFilterAssetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isButtonEnabled)? initial,
    TResult Function(Stream<MarketDataModel>? stream, List<ChartData> candles,
            String subscribeFilterAssetId)?
        subscribing,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (subscribing != null) {
      return subscribing(stream, candles, subscribeFilterAssetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CryptoInitialState value) initial,
    required TResult Function(_CryptoLoadedState value) subscribing,
    required TResult Function(_CryptoLoadedError value) error,
  }) {
    return subscribing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CryptoInitialState value)? initial,
    TResult Function(_CryptoLoadedState value)? subscribing,
    TResult Function(_CryptoLoadedError value)? error,
    required TResult orElse(),
  }) {
    if (subscribing != null) {
      return subscribing(this);
    }
    return orElse();
  }
}

abstract class _CryptoLoadedState implements CryptoState {
  const factory _CryptoLoadedState(
      {required Stream<MarketDataModel>? stream,
      required List<ChartData> candles,
      required String subscribeFilterAssetId}) = _$_CryptoLoadedState;

  Stream<MarketDataModel>? get stream => throw _privateConstructorUsedError;
  List<ChartData> get candles => throw _privateConstructorUsedError;
  String get subscribeFilterAssetId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CryptoLoadedStateCopyWith<_CryptoLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CryptoLoadedErrorCopyWith<$Res> {
  factory _$CryptoLoadedErrorCopyWith(
          _CryptoLoadedError value, $Res Function(_CryptoLoadedError) then) =
      __$CryptoLoadedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$CryptoLoadedErrorCopyWithImpl<$Res>
    extends _$CryptoStateCopyWithImpl<$Res>
    implements _$CryptoLoadedErrorCopyWith<$Res> {
  __$CryptoLoadedErrorCopyWithImpl(
      _CryptoLoadedError _value, $Res Function(_CryptoLoadedError) _then)
      : super(_value, (v) => _then(v as _CryptoLoadedError));

  @override
  _CryptoLoadedError get _value => super._value as _CryptoLoadedError;
}

/// @nodoc
class _$_CryptoLoadedError implements _CryptoLoadedError {
  const _$_CryptoLoadedError();

  @override
  String toString() {
    return 'CryptoState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CryptoLoadedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool isButtonEnabled) initial,
    required TResult Function(Stream<MarketDataModel>? stream,
            List<ChartData> candles, String subscribeFilterAssetId)
        subscribing,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool isButtonEnabled)? initial,
    TResult Function(Stream<MarketDataModel>? stream, List<ChartData> candles,
            String subscribeFilterAssetId)?
        subscribing,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CryptoInitialState value) initial,
    required TResult Function(_CryptoLoadedState value) subscribing,
    required TResult Function(_CryptoLoadedError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CryptoInitialState value)? initial,
    TResult Function(_CryptoLoadedState value)? subscribing,
    TResult Function(_CryptoLoadedError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CryptoLoadedError implements CryptoState {
  const factory _CryptoLoadedError() = _$_CryptoLoadedError;
}
