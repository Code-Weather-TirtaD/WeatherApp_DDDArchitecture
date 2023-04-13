import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

abstract class ISettingRepo {
  WeatherModel changeTemperature(
      {required WeatherModel currentWeather, required String option});
  WeatherModel changeWindSpeed(
      {required WeatherModel currentWeather,
      required int prevOption,
      required int option});
  WeatherModel changePressure(
      {required WeatherModel currentWeather, required int option});
  WeatherModel changeDistance(
      {required WeatherModel currentWeather, required int option});
}
