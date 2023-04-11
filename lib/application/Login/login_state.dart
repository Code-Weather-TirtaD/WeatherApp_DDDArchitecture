part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required bool isSubmitting,
    required bool isShowError,
    required LoginUsername username,
    required LoginPassword password,
    required Option<Either<NetworkError, LoginModel>> options,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        isSubmitting: false,
        isShowError: true,
        username: LoginUsername(''),
        password: LoginPassword(''),
        options: none(),
      );
}
