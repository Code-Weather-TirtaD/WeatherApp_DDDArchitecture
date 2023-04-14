part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  factory SettingState({
    required SelectUnit selectedTemp,
    required SelectUnit selectedWindSpeed,
    required SelectUnit selectedPressure,
    required SelectUnit selectedDistance,
    required WeatherModel newWeather,
    required List<WeatherModel> newForecast,
  }) = _SettingState;

  factory SettingState.initial() => SettingState(
        selectedTemp: SelectUnit([true, false], 0),
        selectedWindSpeed: SelectUnit([true, false, false], 0),
        selectedPressure: SelectUnit([true, false], 0),
        selectedDistance: SelectUnit([true, false], 0),
        newWeather: WeatherModel(
          weather: '',
          weatherDescription: '',
          weatherIcon: '',
          temperature: 0,
          temperatureFeel: 0,
          temperatureMin: 0,
          temparatureMax: 0,
          humidity: 0,
          pressure: 0,
          visibility: 0,
          windSpeed: 0,
          windDirection: 0,
          dt: 0,
        ),
        newForecast: <WeatherModel>[],
      );
}
