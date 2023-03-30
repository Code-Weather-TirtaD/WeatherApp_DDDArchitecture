// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      weather: json['weather'] as String,
      weatherDescription: json['weatherDescription'] as String,
      weatherIcon: json['weatherIcon'] as String,
      city: json['city'] as String,
      temperature: json['temperature'] as num,
      temperatureFeel: json['temperatureFeel'] as num,
      temperatureMin: json['temperatureMin'] as num,
      temparatureMax: json['temparatureMax'] as num,
      humidity: json['humidity'] as int,
      pressure: json['pressure'] as int,
      visibility: json['visibility'] as int,
      windSpeed: json['windSpeed'] as num,
      windDirection: json['windDirection'] as int,
      dt: json['dt'] as int,
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'weatherDescription': instance.weatherDescription,
      'weatherIcon': instance.weatherIcon,
      'city': instance.city,
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
