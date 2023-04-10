import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/location/i_location_repo.dart';
import 'package:weatherapp_ddd/infrastructure/location/location_model.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ILocationRepo locationRepo;

  LocationBloc(this.locationRepo) : super(LocationState.initial()) {
    on<LocationEvent>((event, emit) async {
      await event.when(
        saveLocation: (inputCity) async {
          await locationRepo.saveLocation(input: inputCity);
          emit(state.copyWith(searchClick: true));
        },
        currentLocation: () async {
          emit(LocationState.initial());

          var currentPosition = await locationRepo.locationService();
          var currentCity = await locationRepo.getCurrentLocation(
            latitude: currentPosition.latitude,
            longitude: currentPosition.longitude,
          );

          currentCity.match((l) => left(l), (r) {
            emit(state.copyWith(location: r));
          });
        },
        searchLocation: (searchInput) async {
          var searchCity =
              await locationRepo.getSearchLocation(input: searchInput);
          searchCity.match((l) => left(l), (r) {
            emit(state.copyWith(location: r));
          });
        },
      );
    });
  }
}
