import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';

void main() async {
  await Storage.init();
  await configureEnvironment(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouters>();

    return BlocProvider(
      create: (context) => getIt<WeatherBloc>(),
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
      ),
    );
  }
}
