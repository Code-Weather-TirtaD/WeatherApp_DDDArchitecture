part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.started() = _Started;
  const factory WeatherEvent.weatherChanged() = _weatherChanged;
  const factory WeatherEvent.unitChanged(
      WeatherModel input, List<WeatherModel> option) = _unitChanged;
}
