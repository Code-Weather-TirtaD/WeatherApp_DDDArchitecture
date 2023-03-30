import 'package:fpdart/fpdart.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp_ddd/domain/weather/i_weather_repo.dart';
import 'package:weatherapp_ddd/domain/weather/weather_failure.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

@LazySingleton(as: IWeatherRepo)
class WeatherRepo extends IWeatherRepo {
  WeatherRepo(this.network);
  final INetworkService network;

  @override
  Future<Either<WeatherFailure, List<WeatherModel>>> getWeather() async {
    IStorage storage = Storage;
    await storage.openBox('weather');
    var appID = await storage.getData(key: 'apiKey');

    var response = await network.getHttp(path: '/weather', queryParameter: {
      'appId': appID,
      'lat': -6.3687594,
      'lon': 106.8624118,
      'units': 'metric'
    });

    return response.match(
      (l) => l.when(
          noInternet: () => left(const WeatherFailure.noInternet()),
          serverError: (response) => left(const WeatherFailure.failed()),
          timeout: () => left(const WeatherFailure.noInternet()),
          other: (val) => left(const WeatherFailure.noInternet())),
      (r) {
        List<WeatherModel> data = [];
        data.add(WeatherModel.fromJson(r));
        return right(data);
      },
    );
  }

  @override
  Future<Either<WeatherFailure, List<WeatherModel>>> getForecast() async {
    IStorage storage = Storage;
    await storage.openBox('weather');
    var appID = await storage.getData(key: 'apiKey');

    var response = await network.getHttp(path: '/forecast', queryParameter: {
      'appId': appID,
      'lat': -6.3687594,
      'lon': 106.8624118,
      'units': 'metric'
    });

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
