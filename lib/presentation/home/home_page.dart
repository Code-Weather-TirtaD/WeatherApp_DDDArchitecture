import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';
import 'package:weatherapp_ddd/presentation/home/widgets/home_screen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (context) => getIt<WeatherBloc>()
        ..add(const WeatherEvent.weatherChanged(
          latittude: 0.0,
          longitude: 0.0,
        )),
      child: const HomeScreen(),
    );
  }
}
