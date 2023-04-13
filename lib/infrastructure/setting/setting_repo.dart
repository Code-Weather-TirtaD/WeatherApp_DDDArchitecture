import 'dart:core';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherapp_ddd/domain/setting/i_setting_repo.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

@LazySingleton(as: ISettingRepo)
class SettingRepo extends ISettingRepo {
  @override
  WeatherModel changeTemperature(
      {required WeatherModel currentWeather, required String option}) {
    WeatherModel weather;

    option == 'toFahrenheit'
        ? weather = currentWeather.copyWith(
            temperature: toFahrenheit(currentWeather.temperature),
            temparatureMax: toFahrenheit(currentWeather.temparatureMax),
            temperatureMin: toFahrenheit(currentWeather.temperatureMin),
            temperatureFeel: toFahrenheit(currentWeather.temperatureFeel),
          )
        : weather = currentWeather.copyWith(
            temperature: toCelcius(currentWeather.temperature),
            temparatureMax: toCelcius(currentWeather.temparatureMax),
            temperatureMin: toCelcius(currentWeather.temperatureMin),
            temperatureFeel: toCelcius(currentWeather.temperatureFeel),
          );
    return weather;
  }

  @override
  WeatherModel changeWindSpeed(
      {required WeatherModel currentWeather,
      required int prevOption,
      required int option}) {
    WeatherModel weather;

    if (prevOption == 0 && option == 1) {
      weather =
          currentWeather.copyWith(windSpeed: msToKmh(currentWeather.windSpeed));
    } else if (prevOption == 0 && option == 2) {
      weather =
          currentWeather.copyWith(windSpeed: msToMph(currentWeather.windSpeed));
    } else if (prevOption == 1 && option == 0) {
      weather =
          currentWeather.copyWith(windSpeed: kmhToMs(currentWeather.windSpeed));
    } else if (prevOption == 1 && option == 2) {
      weather = currentWeather.copyWith(
          windSpeed: kmhToMph(currentWeather.windSpeed));
    } else if (prevOption == 2 && option == 0) {
      weather =
          currentWeather.copyWith(windSpeed: mphToMs(currentWeather.windSpeed));
    } else if (prevOption == 2 && option == 1) {
      weather = currentWeather.copyWith(
          windSpeed: mphToKmh(currentWeather.windSpeed));
    } else {
      debugPrint('No change');
      weather = currentWeather;
    }
    return weather;
  }

  @override
  WeatherModel changePressure(
      {required WeatherModel currentWeather, required int option}) {
    WeatherModel weather;
    option == 1
        ? weather =
            currentWeather.copyWith(pressure: toinHg(currentWeather.pressure))
        : weather =
            currentWeather.copyWith(pressure: (tohPa(currentWeather.pressure)));
    return weather;
  }

  @override
  WeatherModel changeDistance(
      {required WeatherModel currentWeather, required int option}) {
    WeatherModel weather;
    option == 1
        ? weather = currentWeather.copyWith(
            visibility: toMiles(currentWeather.visibility))
        : weather = currentWeather.copyWith(
            visibility: toKM(currentWeather.visibility));
    return weather;
  }

  // temperature
  double toFahrenheit(temp) => (temp * 9 / 5) + 32;
  double toCelcius(temp) => (temp - 32) * 5 / 9;

  // wind speed
  double msToKmh(temp) => temp * 3.6;
  double kmhToMs(temp) => temp / 3.6;
  double msToMph(temp) => temp * 2.237;
  double mphToMs(temp) => temp / 2.237;
  double kmhToMph(temp) => temp / 1.609;
  double mphToKmh(temp) => temp * 1.609;

  // pressure
  double toinHg(temp) => (temp * 0.0295300);
  double tohPa(temp) => (temp * 33.8638);

  // distance or visibility
  int toMiles(temp) => (temp / 1.609).round();
  int toKM(temp) => (temp * 1.609).round();
}
