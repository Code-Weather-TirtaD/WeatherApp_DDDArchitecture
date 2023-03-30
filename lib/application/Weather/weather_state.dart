part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState({
    required bool isLoading,
    required List<WeatherModel> weatherData,
    required List<WeatherModel> forecastData,
  }) = _WeatherState;

  factory WeatherState.initial() => WeatherState(
        isLoading: false,
        weatherData: [],
        forecastData: [],
      );
}
