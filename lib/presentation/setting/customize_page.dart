import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/application/Setting/setting_bloc.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';
import 'package:weatherapp_ddd/infrastructure/weather/weather_model.dart';
import 'package:weatherapp_ddd/presentation/setting/widgets/list_option.dart';

const List<Widget> temperatureUnit = <Widget>[Text('\u2103'), Text('\u2109')];
const List<Widget> wsUnit = <Widget>[Text('m/s'), Text('km/h'), Text('mph')];
const List<Widget> pressureUnit = <Widget>[Text('hPa'), Text('inHg')];
const List<Widget> distanceUnit = <Widget>[Text('km'), Text('mi')];

@RoutePage()
class CustomizePage extends StatefulWidget {
  const CustomizePage({super.key});

  @override
  State<CustomizePage> createState() => _CustomizePageState();
}

class _CustomizePageState extends State<CustomizePage> {
  @override
  Widget build(BuildContext context) {
    late WeatherModel weatherData;
    late List<WeatherModel> forecastData;
    context.select((WeatherBloc bloc) {
      weatherData = bloc.state.weatherData;
      forecastData = bloc.state.forecastData;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Customize Units'),
      ),
      body: BlocConsumer<SettingBloc, SettingState>(
        listenWhen: (previous, current) {
          return current.newWeather != previous.newWeather;
        },
        listener: (context, state) {
          context.read<WeatherBloc>().add(
              WeatherEvent.unitChanged(state.newWeather, state.newForecast));
          debugPrint(state.newWeather.weather);
        },
        builder: (context, state) {
          return Column(
            children: [
              ListOption(
                  option: 1,
                  optionTitle: 'Temperature Units: ',
                  selection: state.selectedTemp.unitActive,
                  selectionText: temperatureUnit,
                  action: (index) => context.read<SettingBloc>().add(
                      SettingEvent.temperature(
                          index, weatherData, forecastData))),
              ListOption(
                  option: 2,
                  optionTitle: 'Wind Speed: ',
                  selection: state.selectedWindSpeed.unitActive,
                  selectionText: wsUnit,
                  action: (index) => context.read<SettingBloc>().add(
                      SettingEvent.windSpeed(
                          index, weatherData, forecastData))),
              ListOption(
                  option: 3,
                  optionTitle: 'Pressure :',
                  selection: state.selectedPressure.unitActive,
                  selectionText: pressureUnit,
                  action: (index) => context.read<SettingBloc>().add(
                      SettingEvent.pressure(index, weatherData, forecastData))),
              ListOption(
                  option: 4,
                  optionTitle: 'Distance: ',
                  selection: state.selectedDistance.unitActive,
                  selectionText: distanceUnit,
                  action: (index) => context.read<SettingBloc>().add(
                      SettingEvent.distance(index, weatherData, forecastData))),
            ],
          );
        },
      ),
    );
  }
}
