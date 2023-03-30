// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:code_id_network/code_id_network.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart' as _i7;
import 'package:weatherapp_ddd/domain/weather/i_weather_repo.dart' as _i5;
import 'package:weatherapp_ddd/infrastructure/core/register_module.dart' as _i8;
import 'package:weatherapp_ddd/infrastructure/weather/weather_repo.dart' as _i6;
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouters>(() => registerModule.appRouters);
    gh.factory<String>(
      () => registerModule.weatherUrl,
      instanceName: 'base_url',
    );
    gh.factory<String>(
      () => registerModule.weatherApiKey,
      instanceName: 'api_key',
    );
    await gh.lazySingletonAsync<_i4.INetworkService>(
      () => registerModule.network(gh<String>(instanceName: 'base_url')),
      preResolve: true,
    );
    gh.lazySingleton<_i5.IWeatherRepo>(
        () => _i6.WeatherRepo(gh<_i4.INetworkService>()));
    gh.factory<_i7.WeatherBloc>(() => _i7.WeatherBloc(gh<_i5.IWeatherRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
