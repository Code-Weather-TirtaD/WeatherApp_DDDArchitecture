// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic input) saveLocation,
    required TResult Function() currentLocation,
    required TResult Function(String input) searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic input)? saveLocation,
    TResult? Function()? currentLocation,
    TResult? Function(String input)? searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic input)? saveLocation,
    TResult Function()? currentLocation,
    TResult Function(String input)? searchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_saveLocation value) saveLocation,
    required TResult Function(_currentLocation value) currentLocation,
    required TResult Function(_searchLocation value) searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_saveLocation value)? saveLocation,
    TResult? Function(_currentLocation value)? currentLocation,
    TResult? Function(_searchLocation value)? searchLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_saveLocation value)? saveLocation,
    TResult Function(_currentLocation value)? currentLocation,
    TResult Function(_searchLocation value)? searchLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_saveLocationCopyWith<$Res> {
  factory _$$_saveLocationCopyWith(
          _$_saveLocation value, $Res Function(_$_saveLocation) then) =
      __$$_saveLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic input});
}

/// @nodoc
class __$$_saveLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_saveLocation>
    implements _$$_saveLocationCopyWith<$Res> {
  __$$_saveLocationCopyWithImpl(
      _$_saveLocation _value, $Res Function(_$_saveLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$_saveLocation(
      freezed == input ? _value.input! : input,
    ));
  }
}

/// @nodoc

class _$_saveLocation implements _saveLocation {
  const _$_saveLocation(this.input);

  @override
  final dynamic input;

  @override
  String toString() {
    return 'LocationEvent.saveLocation(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_saveLocation &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_saveLocationCopyWith<_$_saveLocation> get copyWith =>
      __$$_saveLocationCopyWithImpl<_$_saveLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic input) saveLocation,
    required TResult Function() currentLocation,
    required TResult Function(String input) searchLocation,
  }) {
    return saveLocation(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic input)? saveLocation,
    TResult? Function()? currentLocation,
    TResult? Function(String input)? searchLocation,
  }) {
    return saveLocation?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic input)? saveLocation,
    TResult Function()? currentLocation,
    TResult Function(String input)? searchLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_saveLocation value) saveLocation,
    required TResult Function(_currentLocation value) currentLocation,
    required TResult Function(_searchLocation value) searchLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_saveLocation value)? saveLocation,
    TResult? Function(_currentLocation value)? currentLocation,
    TResult? Function(_searchLocation value)? searchLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_saveLocation value)? saveLocation,
    TResult Function(_currentLocation value)? currentLocation,
    TResult Function(_searchLocation value)? searchLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class _saveLocation implements LocationEvent {
  const factory _saveLocation(final dynamic input) = _$_saveLocation;

  dynamic get input;
  @JsonKey(ignore: true)
  _$$_saveLocationCopyWith<_$_saveLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_currentLocationCopyWith<$Res> {
  factory _$$_currentLocationCopyWith(
          _$_currentLocation value, $Res Function(_$_currentLocation) then) =
      __$$_currentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_currentLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_currentLocation>
    implements _$$_currentLocationCopyWith<$Res> {
  __$$_currentLocationCopyWithImpl(
      _$_currentLocation _value, $Res Function(_$_currentLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_currentLocation implements _currentLocation {
  const _$_currentLocation();

  @override
  String toString() {
    return 'LocationEvent.currentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_currentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic input) saveLocation,
    required TResult Function() currentLocation,
    required TResult Function(String input) searchLocation,
  }) {
    return currentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic input)? saveLocation,
    TResult? Function()? currentLocation,
    TResult? Function(String input)? searchLocation,
  }) {
    return currentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic input)? saveLocation,
    TResult Function()? currentLocation,
    TResult Function(String input)? searchLocation,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_saveLocation value) saveLocation,
    required TResult Function(_currentLocation value) currentLocation,
    required TResult Function(_searchLocation value) searchLocation,
  }) {
    return currentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_saveLocation value)? saveLocation,
    TResult? Function(_currentLocation value)? currentLocation,
    TResult? Function(_searchLocation value)? searchLocation,
  }) {
    return currentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_saveLocation value)? saveLocation,
    TResult Function(_currentLocation value)? currentLocation,
    TResult Function(_searchLocation value)? searchLocation,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation(this);
    }
    return orElse();
  }
}

abstract class _currentLocation implements LocationEvent {
  const factory _currentLocation() = _$_currentLocation;
}

/// @nodoc
abstract class _$$_searchLocationCopyWith<$Res> {
  factory _$$_searchLocationCopyWith(
          _$_searchLocation value, $Res Function(_$_searchLocation) then) =
      __$$_searchLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$_searchLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_searchLocation>
    implements _$$_searchLocationCopyWith<$Res> {
  __$$_searchLocationCopyWithImpl(
      _$_searchLocation _value, $Res Function(_$_searchLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$_searchLocation(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_searchLocation implements _searchLocation {
  const _$_searchLocation({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'LocationEvent.searchLocation(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_searchLocation &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_searchLocationCopyWith<_$_searchLocation> get copyWith =>
      __$$_searchLocationCopyWithImpl<_$_searchLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic input) saveLocation,
    required TResult Function() currentLocation,
    required TResult Function(String input) searchLocation,
  }) {
    return searchLocation(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic input)? saveLocation,
    TResult? Function()? currentLocation,
    TResult? Function(String input)? searchLocation,
  }) {
    return searchLocation?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic input)? saveLocation,
    TResult Function()? currentLocation,
    TResult Function(String input)? searchLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_saveLocation value) saveLocation,
    required TResult Function(_currentLocation value) currentLocation,
    required TResult Function(_searchLocation value) searchLocation,
  }) {
    return searchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_saveLocation value)? saveLocation,
    TResult? Function(_currentLocation value)? currentLocation,
    TResult? Function(_searchLocation value)? searchLocation,
  }) {
    return searchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_saveLocation value)? saveLocation,
    TResult Function(_currentLocation value)? currentLocation,
    TResult Function(_searchLocation value)? searchLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(this);
    }
    return orElse();
  }
}

abstract class _searchLocation implements LocationEvent {
  const factory _searchLocation({required final String input}) =
      _$_searchLocation;

  String get input;
  @JsonKey(ignore: true)
  _$$_searchLocationCopyWith<_$_searchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  List<LocationModel> get location => throw _privateConstructorUsedError;
  bool get searchClick => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call({List<LocationModel> location, bool searchClick});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? searchClick = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      searchClick: null == searchClick
          ? _value.searchClick
          : searchClick // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$_LocationStateCopyWith(
          _$_LocationState value, $Res Function(_$_LocationState) then) =
      __$$_LocationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LocationModel> location, bool searchClick});
}

/// @nodoc
class __$$_LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_LocationState>
    implements _$$_LocationStateCopyWith<$Res> {
  __$$_LocationStateCopyWithImpl(
      _$_LocationState _value, $Res Function(_$_LocationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? searchClick = null,
  }) {
    return _then(_$_LocationState(
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      searchClick: null == searchClick
          ? _value.searchClick
          : searchClick // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocationState implements _LocationState {
  _$_LocationState(
      {required final List<LocationModel> location, required this.searchClick})
      : _location = location;

  final List<LocationModel> _location;
  @override
  List<LocationModel> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  final bool searchClick;

  @override
  String toString() {
    return 'LocationState(location: $location, searchClick: $searchClick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationState &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.searchClick, searchClick) ||
                other.searchClick == searchClick));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_location), searchClick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      __$$_LocationStateCopyWithImpl<_$_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  factory _LocationState(
      {required final List<LocationModel> location,
      required final bool searchClick}) = _$_LocationState;

  @override
  List<LocationModel> get location;
  @override
  bool get searchClick;
  @override
  @JsonKey(ignore: true)
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
