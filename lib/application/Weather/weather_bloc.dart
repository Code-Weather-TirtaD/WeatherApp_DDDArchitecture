import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/weather/i_weather_repo.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepo weatherRepo;

  WeatherBloc(this.weatherRepo) : super(WeatherState.initial()) {
    // double latitude = 0.0;
    // double longitude = 0.0;

    on<WeatherEvent>((event, emit) async {
      await event.when(
        started: () async {},
        weatherChanged: (latitude, longitude) async {
          emit(WeatherState.initial());

          var weatherDataRespone = await weatherRepo.getWeather(
              latitude: latitude, longitude: longitude);
          var forecastDataresponse = await weatherRepo.getForecast(
              latitude: latitude, longitude: longitude);

          weatherDataRespone.match(
            (l) => left(l),
            (r) => emit(state.copyWith(weatherData: r)),
          );

          forecastDataresponse.match(
            (l) => left(l),
            (r) => emit(state.copyWith(forecastData: r)),
          );

          emit(state.copyWith(isLoading: false));
        },
      );
    });
  }
}
