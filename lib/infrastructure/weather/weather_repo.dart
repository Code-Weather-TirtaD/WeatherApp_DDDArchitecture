import 'package:fpdart/fpdart.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp_ddd/domain/weather/i_weather_repo.dart';
import 'package:weatherapp_ddd/domain/weather/weather_failure.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

@LazySingleton(as: IWeatherRepo)
class WeatherRepo extends IWeatherRepo {
  WeatherRepo(this.network);
  final INetworkService network;
  final params = {
    'appId': 'f0fae4ef95fddcef4aafa2e11e7e738f',
    'lat': -6.3687594,
    'lon': 106.8624118,
    'units': 'metric',
  };

  @override
  Future<Either<WeatherFailure, WeatherModel>> getWeather() async {
    var response =
        await network.getHttp(path: '/weather', queryParameter: params);

    return response.match(
      (l) => l.when(
          noInternet: () => left(const WeatherFailure.noInternet()),
          serverError: (response) => left(const WeatherFailure.failed()),
          timeout: () => left(const WeatherFailure.noInternet()),
          other: (val) => left(const WeatherFailure.noInternet())),
      (r) {
        // List<WeatherModel> data = [];
        // data.add(WeatherModel.fromJson(r));

        return right(WeatherModel.fromJson(r));
      },
    );
  }

  @override
  Future<Either<WeatherFailure, List<WeatherModel>>> getForecast() async {
    var response =
        await network.getHttp(path: '/forecast', queryParameter: params);

    return response.match(
      (l) => l.when(
          noInternet: () => left(const WeatherFailure.noInternet()),
          serverError: (response) => left(const WeatherFailure.failed()),
          timeout: () => left(const WeatherFailure.noInternet()),
          other: (val) => left(const WeatherFailure.noInternet())),
      (r) {
        List jsonDatas = r["list"] as List;
        List<WeatherModel> datas = List<WeatherModel>.from(
            jsonDatas.map((e) => WeatherModel.fromJson(e))).toList();

        return right(datas);
      },
    );
  }
}
