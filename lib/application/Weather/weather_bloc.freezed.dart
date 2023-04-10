// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() weatherChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? weatherChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? weatherChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_weatherChanged value) weatherChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_weatherChanged value)? weatherChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_weatherChanged value)? weatherChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

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
    extends _$WeatherEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'WeatherEvent.started()';
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
    required TResult Function() weatherChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? weatherChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? weatherChanged,
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
    required TResult Function(_weatherChanged value) weatherChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_weatherChanged value)? weatherChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_weatherChanged value)? weatherChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WeatherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_weatherChangedCopyWith<$Res> {
  factory _$$_weatherChangedCopyWith(
          _$_weatherChanged value, $Res Function(_$_weatherChanged) then) =
      __$$_weatherChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_weatherChangedCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$_weatherChanged>
    implements _$$_weatherChangedCopyWith<$Res> {
  __$$_weatherChangedCopyWithImpl(
      _$_weatherChanged _value, $Res Function(_$_weatherChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_weatherChanged implements _weatherChanged {
  const _$_weatherChanged();

  @override
  String toString() {
    return 'WeatherEvent.weatherChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_weatherChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() weatherChanged,
  }) {
    return weatherChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? weatherChanged,
  }) {
    return weatherChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? weatherChanged,
    required TResult orElse(),
  }) {
    if (weatherChanged != null) {
      return weatherChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_weatherChanged value) weatherChanged,
  }) {
    return weatherChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_weatherChanged value)? weatherChanged,
  }) {
    return weatherChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_weatherChanged value)? weatherChanged,
    required TResult orElse(),
  }) {
    if (weatherChanged != null) {
      return weatherChanged(this);
    }
    return orElse();
  }
}

abstract class _weatherChanged implements WeatherEvent {
  const factory _weatherChanged() = _$_weatherChanged;
}

/// @nodoc
mixin _$WeatherState {
  bool get isLoading => throw _privateConstructorUsedError;
  LocationModel get locationData => throw _privateConstructorUsedError;
  WeatherModel get weatherData => throw _privateConstructorUsedError;
  List<WeatherModel> get forecastData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {bool isLoading,
      LocationModel locationData,
      WeatherModel weatherData,
      List<WeatherModel> forecastData});

  $LocationModelCopyWith<$Res> get locationData;
  $WeatherModelCopyWith<$Res> get weatherData;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? locationData = null,
    Object? weatherData = null,
    Object? forecastData = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationData: null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      weatherData: null == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
      forecastData: null == forecastData
          ? _value.forecastData
          : forecastData // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get locationData {
    return $LocationModelCopyWith<$Res>(_value.locationData, (value) {
      return _then(_value.copyWith(locationData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res> get weatherData {
    return $WeatherModelCopyWith<$Res>(_value.weatherData, (value) {
      return _then(_value.copyWith(weatherData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      LocationModel locationData,
      WeatherModel weatherData,
      List<WeatherModel> forecastData});

  @override
  $LocationModelCopyWith<$Res> get locationData;
  @override
  $WeatherModelCopyWith<$Res> get weatherData;
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherState>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? locationData = null,
    Object? weatherData = null,
    Object? forecastData = null,
  }) {
    return _then(_$_WeatherState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locationData: null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      weatherData: null == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
      forecastData: null == forecastData
          ? _value._forecastData
          : forecastData // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  _$_WeatherState(
      {required this.isLoading,
      required this.locationData,
      required this.weatherData,
      required final List<WeatherModel> forecastData})
      : _forecastData = forecastData;

  @override
  final bool isLoading;
  @override
  final LocationModel locationData;
  @override
  final WeatherModel weatherData;
  final List<WeatherModel> _forecastData;
  @override
  List<WeatherModel> get forecastData {
    if (_forecastData is EqualUnmodifiableListView) return _forecastData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastData);
  }

  @override
  String toString() {
    return 'WeatherState(isLoading: $isLoading, locationData: $locationData, weatherData: $weatherData, forecastData: $forecastData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData) &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData) &&
            const DeepCollectionEquality()
                .equals(other._forecastData, _forecastData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, locationData,
      weatherData, const DeepCollectionEquality().hash(_forecastData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  factory _WeatherState(
      {required final bool isLoading,
      required final LocationModel locationData,
      required final WeatherModel weatherData,
      required final List<WeatherModel> forecastData}) = _$_WeatherState;

  @override
  bool get isLoading;
  @override
  LocationModel get locationData;
  @override
  WeatherModel get weatherData;
  @override
  List<WeatherModel> get forecastData;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
