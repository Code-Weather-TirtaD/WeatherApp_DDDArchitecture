// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int input, num option) unitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int input, num option)? unitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int input, num option)? unitChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_unitChanged value) unitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_unitChanged value)? unitChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_unitChanged value)? unitChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SettingEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int input, num option) unitChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int input, num option)? unitChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int input, num option)? unitChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_unitChanged value) unitChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_unitChanged value)? unitChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_unitChanged value)? unitChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_unitChangedCopyWith<$Res> {
  factory _$$_unitChangedCopyWith(
          _$_unitChanged value, $Res Function(_$_unitChanged) then) =
      __$$_unitChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int input, num option});
}

/// @nodoc
class __$$_unitChangedCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$_unitChanged>
    implements _$$_unitChangedCopyWith<$Res> {
  __$$_unitChangedCopyWithImpl(
      _$_unitChanged _value, $Res Function(_$_unitChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? option = null,
  }) {
    return _then(_$_unitChanged(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as int,
      null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_unitChanged implements _unitChanged {
  const _$_unitChanged(this.input, this.option);

  @override
  final int input;
  @override
  final num option;

  @override
  String toString() {
    return 'SettingEvent.unitChanged(input: $input, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_unitChanged &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_unitChangedCopyWith<_$_unitChanged> get copyWith =>
      __$$_unitChangedCopyWithImpl<_$_unitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int input, num option) unitChanged,
  }) {
    return unitChanged(input, option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int input, num option)? unitChanged,
  }) {
    return unitChanged?.call(input, option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int input, num option)? unitChanged,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(input, option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_unitChanged value) unitChanged,
  }) {
    return unitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_unitChanged value)? unitChanged,
  }) {
    return unitChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_unitChanged value)? unitChanged,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(this);
    }
    return orElse();
  }
}

abstract class _unitChanged implements SettingEvent {
  const factory _unitChanged(final int input, final num option) =
      _$_unitChanged;

  int get input;
  num get option;
  @JsonKey(ignore: true)
  _$$_unitChangedCopyWith<_$_unitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  SelectUnit get selectedTemp => throw _privateConstructorUsedError;
  SelectUnit get selectedWindSpeed => throw _privateConstructorUsedError;
  SelectUnit get selectedPressure => throw _privateConstructorUsedError;
  SelectUnit get selectedDistance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {SelectUnit selectedTemp,
      SelectUnit selectedWindSpeed,
      SelectUnit selectedPressure,
      SelectUnit selectedDistance});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTemp = null,
    Object? selectedWindSpeed = null,
    Object? selectedPressure = null,
    Object? selectedDistance = null,
  }) {
    return _then(_value.copyWith(
      selectedTemp: null == selectedTemp
          ? _value.selectedTemp
          : selectedTemp // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
      selectedWindSpeed: null == selectedWindSpeed
          ? _value.selectedWindSpeed
          : selectedWindSpeed // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
      selectedPressure: null == selectedPressure
          ? _value.selectedPressure
          : selectedPressure // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
      selectedDistance: null == selectedDistance
          ? _value.selectedDistance
          : selectedDistance // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$_SettingStateCopyWith(
          _$_SettingState value, $Res Function(_$_SettingState) then) =
      __$$_SettingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SelectUnit selectedTemp,
      SelectUnit selectedWindSpeed,
      SelectUnit selectedPressure,
      SelectUnit selectedDistance});
}

/// @nodoc
class __$$_SettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$_SettingState>
    implements _$$_SettingStateCopyWith<$Res> {
  __$$_SettingStateCopyWithImpl(
      _$_SettingState _value, $Res Function(_$_SettingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTemp = null,
    Object? selectedWindSpeed = null,
    Object? selectedPressure = null,
    Object? selectedDistance = null,
  }) {
    return _then(_$_SettingState(
      selectedTemp: null == selectedTemp
          ? _value.selectedTemp
          : selectedTemp // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
      selectedWindSpeed: null == selectedWindSpeed
          ? _value.selectedWindSpeed
          : selectedWindSpeed // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
      selectedPressure: null == selectedPressure
          ? _value.selectedPressure
          : selectedPressure // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
      selectedDistance: null == selectedDistance
          ? _value.selectedDistance
          : selectedDistance // ignore: cast_nullable_to_non_nullable
              as SelectUnit,
    ));
  }
}

/// @nodoc

class _$_SettingState implements _SettingState {
  _$_SettingState(
      {required this.selectedTemp,
      required this.selectedWindSpeed,
      required this.selectedPressure,
      required this.selectedDistance});

  @override
  final SelectUnit selectedTemp;
  @override
  final SelectUnit selectedWindSpeed;
  @override
  final SelectUnit selectedPressure;
  @override
  final SelectUnit selectedDistance;

  @override
  String toString() {
    return 'SettingState(selectedTemp: $selectedTemp, selectedWindSpeed: $selectedWindSpeed, selectedPressure: $selectedPressure, selectedDistance: $selectedDistance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingState &&
            (identical(other.selectedTemp, selectedTemp) ||
                other.selectedTemp == selectedTemp) &&
            (identical(other.selectedWindSpeed, selectedWindSpeed) ||
                other.selectedWindSpeed == selectedWindSpeed) &&
            (identical(other.selectedPressure, selectedPressure) ||
                other.selectedPressure == selectedPressure) &&
            (identical(other.selectedDistance, selectedDistance) ||
                other.selectedDistance == selectedDistance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTemp, selectedWindSpeed,
      selectedPressure, selectedDistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      __$$_SettingStateCopyWithImpl<_$_SettingState>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  factory _SettingState(
      {required final SelectUnit selectedTemp,
      required final SelectUnit selectedWindSpeed,
      required final SelectUnit selectedPressure,
      required final SelectUnit selectedDistance}) = _$_SettingState;

  @override
  SelectUnit get selectedTemp;
  @override
  SelectUnit get selectedWindSpeed;
  @override
  SelectUnit get selectedPressure;
  @override
  SelectUnit get selectedDistance;
  @override
  @JsonKey(ignore: true)
  _$$_SettingStateCopyWith<_$_SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
