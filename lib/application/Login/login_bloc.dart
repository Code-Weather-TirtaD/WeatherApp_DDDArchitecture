import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp_ddd/domain/login/i_login_repo.dart';
import 'package:weatherapp_ddd/domain/login/login_objects.dart';
import 'package:weatherapp_ddd/infrastructure/login/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepo loginRepo;

  LoginBloc(this.loginRepo) : super(LoginState.initial()) {
    String username = '';
    String password = '';

    on<LoginEvent>((event, emit) async {
      await event.when(
        usernameChanged: (input) async {
          emit(state.copyWith(
            username: LoginUsername(input),
            isSubmitting: false,
          ));
          state.username.value.fold((l) => username = '', (r) => username = r);
          username != '' && password != ''
              ? emit(state.copyWith(isShowError: false))
              : emit(state.copyWith(isShowError: true));
        },
        passwordChanged: (input) async {
          emit(state.copyWith(
            password: LoginPassword(input),
            isSubmitting: false,
          ));
          state.password.value.fold((l) => password = '', (r) => password = r);
          username != '' && password != ''
              ? emit(state.copyWith(isShowError: false))
              : emit(state.copyWith(isShowError: true));
        },
        login: () async {
          emit(state.copyWith(isSubmitting: true));
          final failOrSuccess = await loginRepo.login(
              state.username.username, state.password.password);
          emit(state.copyWith(
              isSubmitting: false, options: optionOf(failOrSuccess)));
        },
        loadAuth: () async {
          final isLoggedIn = await loginRepo.loadAuth();
          emit(state.copyWith(
              isSubmitting: false, options: optionOf(isLoggedIn)));
        },
      );
    });
  }
}
