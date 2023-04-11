import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/application/Login/login_bloc.dart';
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  get router => getIt<AppRouters>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: ((context, state) {
          state.options.match(
            () => null,
            (failOrSuccess) => {
              failOrSuccess.fold(
                (error) => null,
                (loggedIn) => router.replace(const HomeRoute()),
              )
            },
          );
        }),
        builder: (context, state) {
          return SizedBox(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'PLEASE LOGIN',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text('Username: '),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(LoginEvent.usernameChanged(input: value)),
                    validator: (value) => state.username.value.fold((failure) {
                      return failure.maybeMap(
                        invalidEmail: (_) {
                          return 'must be an email address';
                        },
                        orElse: () => null,
                      );
                    }, (r) => null),
                  ),
                  const SizedBox(height: 15),
                  const Text('Password: '),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(LoginEvent.passwordChanged(input: value)),
                    validator: (value) => state.password.value.fold((failure) {
                      return failure.maybeMap(
                        lengthToShort: (_) {
                          return 'must be 6 digits or higher';
                        },
                        exceedingLength: (_) {
                          return 'must lesser than or equal 10 digits';
                        },
                        orElse: () => null,
                      );
                    }, (r) => null),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      minWidth: size.width * 0.5,
                      color: Colors.cyanAccent,
                      onPressed: state.isShowError
                          ? null
                          : () {
                              context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.login());
                            },
                      child: const Text(
                        'LOGIN',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
