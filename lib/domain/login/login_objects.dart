import 'package:fpdart/fpdart.dart';
import 'package:code_id_flutter/code_id_flutter.dart';
import 'package:weatherapp_ddd/domain/core/failures.dart';

class LoginUsername extends ValueObject<Failures<String>, String> {
  @override
  final Either<Failures<String>, String> value;
  final String username;
  const LoginUsername._(this.value, this.username);

  factory LoginUsername(String input) {
    if (CommonUtils.validateEmail(input)) {
      return LoginUsername._(right(input), input);
    } else {
      return LoginUsername._(left(Failures.invalidEmail(input: input)), input);
    }
  }
}

class LoginPassword extends ValueObject<Failures<String>, String> {
  @override
  final Either<Failures<String>, String> value;
  final String password;
  const LoginPassword._(this.value, this.password);

  factory LoginPassword(String input) {
    if (input.length < 6) {
      return LoginPassword._(left(Failures.lengthToShort(input: input)), input);
    }
    if (input.length > 10) {
      return LoginPassword._(
          left(Failures.exceedingLength(input: input)), input);
    }

    return LoginPassword._(right(input), input);
  }
}
