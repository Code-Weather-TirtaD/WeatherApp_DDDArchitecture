import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/weather/i_weather_repo.dart';
import 'package:weatherapp_ddd/infrastructure/location/location_model.dart';
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
        started: () async {},
        weatherChanged: () async {
          emit(WeatherState.initial());
          var locationData = await weatherRepo.loadLocationData();
          debugPrint(locationData.toString());

          var weatherDataRespone = await weatherRepo.getWeather(
            latitude: locationData.latitude,
            longitude: locationData.longitude,
          );
          weatherDataRespone.match(
            (l) => left(l),
            (r) => emit(state.copyWith(weatherData: r)),
          );

          var forecastDataresponse = await weatherRepo.getForecast(
            latitude: locationData.latitude,
            longitude: locationData.longitude,
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
