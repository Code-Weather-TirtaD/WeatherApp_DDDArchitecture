// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) usernameChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() login,
    required TResult Function() loadAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? usernameChanged,
    TResult? Function(String input)? passwordChanged,
    TResult? Function()? login,
    TResult? Function()? loadAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? usernameChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? login,
    TResult Function()? loadAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Login value) login,
    required TResult Function(_LoadAuth value) loadAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_Login value)? login,
    TResult? Function(_LoadAuth value)? loadAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Login value)? login,
    TResult Function(_LoadAuth value)? loadAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UsernameChangedCopyWith<$Res> {
  factory _$$_UsernameChangedCopyWith(
          _$_UsernameChanged value, $Res Function(_$_UsernameChanged) then) =
      __$$_UsernameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$_UsernameChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_UsernameChanged>
    implements _$$_UsernameChangedCopyWith<$Res> {
  __$$_UsernameChangedCopyWithImpl(
      _$_UsernameChanged _value, $Res Function(_$_UsernameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$_UsernameChanged(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'LoginEvent.usernameChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameChanged &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      __$$_UsernameChangedCopyWithImpl<_$_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) usernameChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() login,
    required TResult Function() loadAuth,
  }) {
    return usernameChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? usernameChanged,
    TResult? Function(String input)? passwordChanged,
    TResult? Function()? login,
    TResult? Function()? loadAuth,
  }) {
    return usernameChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? usernameChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? login,
    TResult Function()? loadAuth,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Login value) login,
    required TResult Function(_LoadAuth value) loadAuth,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_Login value)? login,
    TResult? Function(_LoadAuth value)? loadAuth,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Login value)? login,
    TResult Function(_LoadAuth value)? loadAuth,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements LoginEvent {
  const factory _UsernameChanged({required final String input}) =
      _$_UsernameChanged;

  String get input;
  @JsonKey(ignore: true)
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$_PasswordChanged(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) usernameChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() login,
    required TResult Function() loadAuth,
  }) {
    return passwordChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? usernameChanged,
    TResult? Function(String input)? passwordChanged,
    TResult? Function()? login,
    TResult? Function()? loadAuth,
  }) {
    return passwordChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? usernameChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? login,
    TResult Function()? loadAuth,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Login value) login,
    required TResult Function(_LoadAuth value) loadAuth,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_Login value)? login,
    TResult? Function(_LoadAuth value)? loadAuth,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Login value)? login,
    TResult Function(_LoadAuth value)? loadAuth,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginEvent {
  const factory _PasswordChanged({required final String input}) =
      _$_PasswordChanged;

  String get input;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) usernameChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() login,
    required TResult Function() loadAuth,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? usernameChanged,
    TResult? Function(String input)? passwordChanged,
    TResult? Function()? login,
    TResult? Function()? loadAuth,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? usernameChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? login,
    TResult Function()? loadAuth,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Login value) login,
    required TResult Function(_LoadAuth value) loadAuth,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_Login value)? login,
    TResult? Function(_LoadAuth value)? loadAuth,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Login value)? login,
    TResult Function(_LoadAuth value)? loadAuth,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login() = _$_Login;
}

/// @nodoc
abstract class _$$_LoadAuthCopyWith<$Res> {
  factory _$$_LoadAuthCopyWith(
          _$_LoadAuth value, $Res Function(_$_LoadAuth) then) =
      __$$_LoadAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadAuthCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoadAuth>
    implements _$$_LoadAuthCopyWith<$Res> {
  __$$_LoadAuthCopyWithImpl(
      _$_LoadAuth _value, $Res Function(_$_LoadAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadAuth implements _LoadAuth {
  const _$_LoadAuth();

  @override
  String toString() {
    return 'LoginEvent.loadAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) usernameChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() login,
    required TResult Function() loadAuth,
  }) {
    return loadAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String input)? usernameChanged,
    TResult? Function(String input)? passwordChanged,
    TResult? Function()? login,
    TResult? Function()? loadAuth,
  }) {
    return loadAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? usernameChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? login,
    TResult Function()? loadAuth,
    required TResult orElse(),
  }) {
    if (loadAuth != null) {
      return loadAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_Login value) login,
    required TResult Function(_LoadAuth value) loadAuth,
  }) {
    return loadAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameChanged value)? usernameChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_Login value)? login,
    TResult? Function(_LoadAuth value)? loadAuth,
  }) {
    return loadAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_Login value)? login,
    TResult Function(_LoadAuth value)? loadAuth,
    required TResult orElse(),
  }) {
    if (loadAuth != null) {
      return loadAuth(this);
    }
    return orElse();
  }
}

abstract class _LoadAuth implements LoginEvent {
  const factory _LoadAuth() = _$_LoadAuth;
}

/// @nodoc
mixin _$LoginState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isShowError => throw _privateConstructorUsedError;
  LoginUsername get username => throw _privateConstructorUsedError;
  LoginPassword get password => throw _privateConstructorUsedError;
  Option<Either<NetworkError, LoginModel>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool isShowError,
      LoginUsername username,
      LoginPassword password,
      Option<Either<NetworkError, LoginModel>> options});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isShowError = null,
    Object? username = null,
    Object? password = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowError: null == isShowError
          ? _value.isShowError
          : isShowError // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as LoginUsername,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPassword,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkError, LoginModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool isShowError,
      LoginUsername username,
      LoginPassword password,
      Option<Either<NetworkError, LoginModel>> options});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isShowError = null,
    Object? username = null,
    Object? password = null,
    Object? options = null,
  }) {
    return _then(_$_LoginState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowError: null == isShowError
          ? _value.isShowError
          : isShowError // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as LoginUsername,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPassword,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkError, LoginModel>>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {required this.isSubmitting,
      required this.isShowError,
      required this.username,
      required this.password,
      required this.options});

  @override
  final bool isSubmitting;
  @override
  final bool isShowError;
  @override
  final LoginUsername username;
  @override
  final LoginPassword password;
  @override
  final Option<Either<NetworkError, LoginModel>> options;

  @override
  String toString() {
    return 'LoginState(isSubmitting: $isSubmitting, isShowError: $isShowError, username: $username, password: $password, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isShowError, isShowError) ||
                other.isShowError == isShowError) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSubmitting, isShowError, username, password, options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
          {required final bool isSubmitting,
          required final bool isShowError,
          required final LoginUsername username,
          required final LoginPassword password,
          required final Option<Either<NetworkError, LoginModel>> options}) =
      _$_LoginState;

  @override
  bool get isSubmitting;
  @override
  bool get isShowError;
  @override
  LoginUsername get username;
  @override
  LoginPassword get password;
  @override
  Option<Either<NetworkError, LoginModel>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
