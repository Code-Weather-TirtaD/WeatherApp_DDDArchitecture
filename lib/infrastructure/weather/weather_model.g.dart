// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      weather: json['weather'][0]['main'],
      weatherDescription: json['weather'][0]['description'],
      weatherIcon: json['weather'][0]['icon'],
      temperature: json['main']['temp'],
      temperatureFeel: json['main']['feels_like'],
      temperatureMin: json['main']['temp_min'],
      temparatureMax: json['main']['temp_max'],
      humidity: json['main']['humidity'],
      pressure: json['main']['pressure'],
      visibility: json['visibility'],
      windSpeed: json['wind']['speed'],
      windDirection: json['wind']['deg'],
      dt: json['dt'],
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'weatherDescription': instance.weatherDescription,
      'weatherIcon': instance.weatherIcon,
      'temperature': instance.temperature,
      'temperatureFeel': instance.temperatureFeel,
      'temperatureMin': instance.temperatureMin,
      'temparatureMax': instance.temparatureMax,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'windSpeed': instance.windSpeed,
      'windDirection': instance.windDirection,
      'dt': instance.dt,
    };
