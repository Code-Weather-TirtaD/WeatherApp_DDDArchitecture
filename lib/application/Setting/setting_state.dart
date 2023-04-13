part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  factory SettingState({
    required SelectUnit selectedTemp,
    required SelectUnit selectedWindSpeed,
    required SelectUnit selectedPressure,
    required SelectUnit selectedDistance,
  }) = _SettingState;

  factory SettingState.initial() => SettingState(
      selectedTemp: SelectUnit([true, false], 0),
      selectedWindSpeed: SelectUnit([true, false, false], 0),
      selectedPressure: SelectUnit([true, false], 0),
      selectedDistance: SelectUnit([true, false], 0));
}
