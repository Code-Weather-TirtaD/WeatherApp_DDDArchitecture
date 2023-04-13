import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/setting/i_setting_repo.dart';
import 'package:weatherapp_ddd/domain/setting/setting_object.dart';

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
        unitChanged: (inputIndex, unitOption) {
          switch (unitOption) {
            case 1:
              emit(state.copyWith(
                  selectedTemp:
                      SelectUnit(state.selectedTemp.unitActive, inputIndex)));
              break;
            case 2:
              var previousUnit =
                  state.selectedWindSpeed.unitActive.indexOf(true);

              emit(state.copyWith(
                  selectedWindSpeed: SelectUnit(
                      state.selectedWindSpeed.unitActive, inputIndex)));
              break;
            case 3:
              emit(state.copyWith(
                  selectedPressure: SelectUnit(
                      state.selectedPressure.unitActive, inputIndex)));
              break;
            case 4:
              emit(state.copyWith(
                  selectedDistance: SelectUnit(
                      state.selectedDistance.unitActive, inputIndex)));
              break;
            default:
              debugPrint('Option not found');
              break;
          }
        },
      );
    });
  }
}
