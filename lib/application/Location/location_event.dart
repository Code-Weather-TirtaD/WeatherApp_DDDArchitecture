part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.saveLocation(input) = _saveLocation;
  const factory LocationEvent.currentLocation() = _currentLocation;
  const factory LocationEvent.searchLocation({required String input}) =
      _searchLocation;
}
