import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/authentication/i_authentication_repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthenticationRepo authRepo;

  AuthenticationBloc(this.authRepo) : super(const _Initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        started: () async {},
        login: (username, password) async {
          emit(const AuthenticationState.loading());
          final res =
              await authRepo.login(username: username, password: password);
          emit(res.match(
            (l) => const AuthenticationState.failed(),
            (r) => const AuthenticationState.success(),
          ));
        },
      );
    });
  }
}
