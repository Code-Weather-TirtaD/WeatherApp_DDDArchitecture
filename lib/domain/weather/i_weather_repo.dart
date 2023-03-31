import 'package:fpdart/fpdart.dart';
import 'weather_failure.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

abstract class IWeatherRepo {
  Future<Either<WeatherFailure, WeatherModel>> getWeather();
  Future<Either<WeatherFailure, List<WeatherModel>>> getForecast();
}
