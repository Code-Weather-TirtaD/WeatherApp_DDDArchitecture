part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState({
    required bool isLoading,
    required LocationModel locationData,
    required WeatherModel weatherData,
    required List<WeatherModel> forecastData,
    // Option
    required SelectUnit selectedTemp,
    required SelectUnit selectedWindSpeed,
    required SelectUnit selectedPressure,
    required SelectUnit selectedDistance,
  }) = _WeatherState;

  factory WeatherState.initial() => WeatherState(
      isLoading: true,
      locationData: LocationModel(
        city: '',
        stateCity: '',
        latitude: 0.0,
        longitude: 0.0,
      ),
      weatherData: WeatherModel(
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
      forecastData: <WeatherModel>[],
      selectedTemp: SelectUnit([true, false], 0),
      selectedWindSpeed: SelectUnit([true, false, false], 0),
      selectedPressure: SelectUnit([true, false], 0),
      selectedDistance: SelectUnit([true, false], 0));
}
