import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp_ddd/domain/weather/weather_failure.dart';
import 'package:weatherapp_ddd/infrastructure/location/location_model.dart';

abstract class ILocationRepo {
  Future<Position> locationService();
  Future<Either<WeatherFailure, List<LocationModel>>> getCurrentLocation(
      {required double latitude, required double longitude});
  Future<Either<WeatherFailure, List<LocationModel>>> getSearchLocation(
      {required String input});
}
