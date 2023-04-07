part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  factory LocationState({required List<LocationModel> location}) =
      _LocationState;

  factory LocationState.initial() => LocationState(
        location: <LocationModel>[],
      );
}
