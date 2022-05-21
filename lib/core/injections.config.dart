// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../assets/chart_time_values.dart' as _i4;
import '../bloc/bloc.dart' as _i3;
import '../repo/crypto_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CryptoBloc>(() => _i3.CryptoBloc());
  gh.singleton<_i4.ChartSettings>(_i4.ChartSettings());
  gh.singleton<_i5.CryptoRepo>(_i5.CryptoRepo());
  return get;
}
