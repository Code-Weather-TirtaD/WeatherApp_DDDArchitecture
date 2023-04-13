import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/setting/i_setting_repo.dart';
import 'package:weatherapp_ddd/domain/setting/setting_object.dart';
import 'package:weatherapp_ddd/domain/weather/i_weather_repo.dart';
import 'package:weatherapp_ddd/infrastructure/location/location_model.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepo weatherRepo;
  final ISettingRepo settingRepo;

  WeatherBloc(this.weatherRepo, this.settingRepo)
      : super(WeatherState.initial()) {
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
        unitChanged: (inputIndex, unitOption) {
          var weather = state.weatherData;
          var forecast = state.forecastData;

          switch (unitOption) {
            case 1:
              emit(state.copyWith(
                  selectedTemp:
                      SelectUnit(state.selectedTemp.unitActive, inputIndex)));

              if (state.selectedTemp.isChange) {
                var selectedOption = 'toCelcius';
                if (inputIndex == 1) selectedOption = 'toFahrenheit';

                weather = settingRepo.changeTemperature(
                    currentWeather: weather, option: selectedOption);
                forecast = forecast
                    .map((data) => settingRepo.changeTemperature(
                        currentWeather: data, option: selectedOption))
                    .toList();
              }
              break;
            case 2:
              var previousUnit =
                  state.selectedWindSpeed.unitActive.indexOf(true);

              emit(state.copyWith(
                  selectedWindSpeed: SelectUnit(
                      state.selectedWindSpeed.unitActive, inputIndex)));

              if (state.selectedWindSpeed.isChange) {
                weather = settingRepo.changeWindSpeed(
                    currentWeather: weather,
                    prevOption: previousUnit,
                    option: inputIndex);
                forecast = forecast
                    .map((data) => settingRepo.changeWindSpeed(
                        currentWeather: data,
                        prevOption: previousUnit,
                        option: inputIndex))
                    .toList();
              }
              break;
            case 3:
              emit(state.copyWith(
                  selectedPressure: SelectUnit(
                      state.selectedPressure.unitActive, inputIndex)));

              if (state.selectedPressure.isChange) {
                weather = settingRepo.changePressure(
                    currentWeather: weather, option: inputIndex);
                forecast = forecast
                    .map((data) => settingRepo.changePressure(
                        currentWeather: data, option: inputIndex))
                    .toList();
              }
              break;
            case 4:
              emit(state.copyWith(
                  selectedDistance: SelectUnit(
                      state.selectedDistance.unitActive, inputIndex)));

              if (state.selectedDistance.isChange) {
                weather = settingRepo.changeDistance(
                    currentWeather: weather, option: inputIndex);
                forecast = forecast
                    .map((data) => settingRepo.changeDistance(
                        currentWeather: data, option: inputIndex))
                    .toList();
              }
              break;
            default:
              debugPrint('Option not found');
              break;
          }

          emit(state.copyWith(weatherData: weather, forecastData: forecast));
        },
      );
    });
  }
}
