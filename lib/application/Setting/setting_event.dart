part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.started() = _Started;
  const factory SettingEvent.temperature(int input, WeatherModel currWeather,
      List<WeatherModel> currForecast) = _temperature;
  const factory SettingEvent.windSpeed(int input, WeatherModel currWeather,
      List<WeatherModel> currForecast) = _windSpeed;
  const factory SettingEvent.pressure(int input, WeatherModel currWeather,
      List<WeatherModel> currForecast) = _pressure;
  const factory SettingEvent.distance(int input, WeatherModel currWeather,
      List<WeatherModel> currForecast) = _distance;
}
