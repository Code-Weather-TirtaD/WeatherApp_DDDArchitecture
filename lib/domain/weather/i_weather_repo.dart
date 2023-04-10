import 'package:fpdart/fpdart.dart';
import 'weather_failure.dart';
import 'package:weatherapp_ddd/infrastructure/location/location_model.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

abstract class IWeatherRepo {
  Future<LocationModel> loadLocationData();
  Future<Either<WeatherFailure, WeatherModel>> getWeather(
      {required double latitude, required double longitude});
  Future<Either<WeatherFailure, List<WeatherModel>>> getForecast(
      {required double latitude, required double longitude});
}
