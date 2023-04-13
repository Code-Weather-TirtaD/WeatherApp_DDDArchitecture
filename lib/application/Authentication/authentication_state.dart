part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required String username,
    required String password,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() =>
      const AuthenticationState(username: '', password: '');
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.failed() = _Failed;
  const factory AuthenticationState.success() = _Success;
}
