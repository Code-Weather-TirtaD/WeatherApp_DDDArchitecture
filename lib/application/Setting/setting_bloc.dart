import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/setting/i_setting_repo.dart';
import 'package:weatherapp_ddd/domain/setting/setting_object.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

@injectable
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final ISettingRepo settingRepo;

  SettingBloc(this.settingRepo) : super(SettingState.initial()) {
    on<SettingEvent>((event, emit) {
      event.when(
        started: () {},
        temperature: ((index, currWeather, currForecast) {
          emit(state.copyWith(
              selectedTemp: SelectUnit(state.selectedTemp.unitActive, index)));

          if (state.selectedTemp.isChange) {
            var selectedOption = 'toCelcius';
            if (index == 1) selectedOption = 'toFahrenheit';

            currWeather = settingRepo.changeTemperature(
                currentWeather: currWeather, option: selectedOption);
            currForecast = currForecast
                .map((data) => settingRepo.changeTemperature(
                    currentWeather: data, option: selectedOption))
                .toList();
            emit(state.copyWith(
                newWeather: currWeather, newForecast: currForecast));
          }
        }),
        windSpeed: (index, currWeather, currForecast) {
          var previousUnit = state.selectedWindSpeed.unitActive.indexOf(true);

          emit(state.copyWith(
              selectedWindSpeed:
                  SelectUnit(state.selectedWindSpeed.unitActive, index)));

          if (state.selectedWindSpeed.isChange) {
            currWeather = settingRepo.changeWindSpeed(
                currentWeather: currWeather,
                prevOption: previousUnit,
                option: index);
            currForecast = currForecast
                .map((data) => settingRepo.changeWindSpeed(
                    currentWeather: data,
                    prevOption: previousUnit,
                    option: index))
                .toList();
            emit(state.copyWith(
                newWeather: currWeather, newForecast: currForecast));
          }
        },
        pressure: (index, currWeather, currForecast) {
          emit(state.copyWith(
              selectedPressure:
                  SelectUnit(state.selectedPressure.unitActive, index)));

          if (state.selectedPressure.isChange) {
            currWeather = settingRepo.changePressure(
                currentWeather: currWeather, option: index);
            currForecast = currForecast
                .map((data) => settingRepo.changePressure(
                    currentWeather: data, option: index))
                .toList();
            emit(state.copyWith(
                newWeather: currWeather, newForecast: currForecast));
          }
        },
        distance: (index, currWeather, currForecast) {
          emit(state.copyWith(
              selectedDistance:
                  SelectUnit(state.selectedDistance.unitActive, index)));

          if (state.selectedDistance.isChange) {
            currWeather = settingRepo.changeDistance(
                currentWeather: currWeather, option: index);
            currForecast = currForecast
                .map((data) => settingRepo.changeDistance(
                    currentWeather: data, option: index))
                .toList();
            emit(state.copyWith(
                newWeather: currWeather, newForecast: currForecast));
          }
        },
      );
    });
  }
}
