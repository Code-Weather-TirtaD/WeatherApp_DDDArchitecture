import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:weatherapp_ddd/domain/location/i_location_repo.dart';
import 'package:weatherapp_ddd/domain/weather/weather_failure.dart';
import 'package:weatherapp_ddd/infrastructure/location/location_model.dart';

@LazySingleton(as: ILocationRepo)
class LocationRepo extends ILocationRepo {
  LocationRepo(this.network);
  final INetworkService network;
  final IStorage store = Storage;

  @override
  Future<Position> locationService() async {
    bool serviceEnable;
    LocationPermission permission;

    serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return pos;
  }

  @override
  Future<void> saveLocation({required input}) async {
    LocationModel inputLoc = input;

    await store.openBox('location');
    await store.putData(data: {
      'locationData': {
        'city': inputLoc.city.toString(),
        'stateCity': inputLoc.stateCity.toString(),
        'latitude': inputLoc.latitude,
        'longitude': inputLoc.longitude,
      }
    });

    return;
  }

  @override
  Future<Either<WeatherFailure, List<LocationModel>>> getCurrentLocation(
      {required double latitude, required double longitude}) async {
    var response = await network.getHttp(
        path: 'http://api.openweathermap.org/geo/1.0/reverse',
        queryParameter: {
          'appid': 'f0fae4ef95fddcef4aafa2e11e7e738f',
          'lat': latitude,
          'lon': longitude,
          'limit': 12,
        });

    return response.match(
      (l) => l.when(
        noInternet: () => left(const WeatherFailure.noInternet()),
        serverError: (res) => left(const WeatherFailure.failed()),
        timeout: () => left(const WeatherFailure.failed()),
        other: (res) => left(const WeatherFailure.failed()),
      ),
      (r) {
        List<LocationModel> cities = List<LocationModel>.from(
            r.map((a) => LocationModel.fromJson(a)).toList());
        return right(cities);
      },
    );
  }

  @override
  Future<Either<WeatherFailure, List<LocationModel>>> getSearchLocation(
      {required String input}) async {
    var response = await network.getHttp(
        path: 'http://api.openweathermap.org/geo/1.0/direct',
        queryParameter: {
          'appid': 'f0fae4ef95fddcef4aafa2e11e7e738f',
          'q': input,
          'limit': 12,
        });

    return response.match(
      (l) => l.when(
        noInternet: () => left(const WeatherFailure.noInternet()),
        serverError: (res) => left(const WeatherFailure.failed()),
        timeout: () => left(const WeatherFailure.failed()),
        other: (res) => left(const WeatherFailure.failed()),
      ),
      (r) {
        List<LocationModel> cities = List<LocationModel>.from(
            r.map((a) => LocationModel.fromJson(a)).toList());
        return right(cities);
      },
    );
  }
}
