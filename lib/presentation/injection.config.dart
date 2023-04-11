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
import 'package:weatherapp_ddd/application/Authentication/authentication_bloc.dart'
    as _i16;
import 'package:weatherapp_ddd/application/Location/location_bloc.dart' as _i14;
import 'package:weatherapp_ddd/application/Login/login_bloc.dart' as _i15;
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart' as _i7;
import 'package:weatherapp_ddd/domain/authentication/i_authentication_repo.dart'
    as _i8;
import 'package:weatherapp_ddd/domain/location/i_location_repo.dart' as _i10;
import 'package:weatherapp_ddd/domain/login/i_login_repo.dart' as _i12;
import 'package:weatherapp_ddd/domain/weather/i_weather_repo.dart' as _i5;
import 'package:weatherapp_ddd/infrastructure/authentication/authentication_repo.dart'
    as _i9;
import 'package:weatherapp_ddd/infrastructure/core/register_module.dart'
    as _i17;
import 'package:weatherapp_ddd/infrastructure/location/location_repo.dart'
    as _i11;
import 'package:weatherapp_ddd/infrastructure/login/login_repo.dart' as _i13;
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
    gh.lazySingleton<_i8.IAuthenticationRepo>(
        () => _i9.AuthenticationRepo(gh<_i4.INetworkService>()));
    gh.lazySingleton<_i10.ILocationRepo>(
        () => _i11.LocationRepo(gh<_i4.INetworkService>()));
    gh.lazySingleton<_i12.ILoginRepo>(
        () => _i13.LoginRepo(gh<_i4.INetworkService>()));
    gh.factory<_i14.LocationBloc>(
        () => _i14.LocationBloc(gh<_i10.ILocationRepo>()));
    gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc(gh<_i12.ILoginRepo>()));
    gh.factory<_i16.AuthenticationBloc>(
        () => _i16.AuthenticationBloc(gh<_i8.IAuthenticationRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
