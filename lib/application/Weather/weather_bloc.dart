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
    on<WeatherEvent>((event, emit) async {
      await event.when(
          started: () {},
          weatherChanged: () async {
            emit(WeatherState.initial());
            emit(state.copyWith(isLoading: true));

            var weatherDataRespone = await weatherRepo.getWeather();
            var forecastDataresponse = await weatherRepo.getWeather();

            weatherDataRespone.match(
              (l) => left(l),
              (r) => emit(state.copyWith(weatherData: r)),
            );

            forecastDataresponse.match(
              (l) => left(l),
              (r) => emit(state.copyWith(isLoading: false, forecastData: r)),
            );
          });
    });
  }
}