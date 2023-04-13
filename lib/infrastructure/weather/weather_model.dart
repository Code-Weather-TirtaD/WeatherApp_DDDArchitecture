import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  factory WeatherModel({
    required String weather,
    required String weatherDescription,
    required String weatherIcon,
    required num temperature,
    required num temperatureFeel,
    required num temperatureMin,
    required num temparatureMax,
    required int humidity,
    required num pressure,
    required int visibility,
    required num windSpeed,
    required int windDirection,
    required num dt,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
