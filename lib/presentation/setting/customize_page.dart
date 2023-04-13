import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customize Units'),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return Column(
            children: [
              ListOption(
                  option: 1,
                  optionTitle: 'Temperature Units: ',
                  selection: state.selectedTemp.unitActive,
                  selectionText: temperatureUnit),
              ListOption(
                  option: 2,
                  optionTitle: 'Wind Speed: ',
                  selection: state.selectedWindSpeed.unitActive,
                  selectionText: wsUnit),
              ListOption(
                  option: 3,
                  optionTitle: 'Pressure :',
                  selection: state.selectedPressure.unitActive,
                  selectionText: pressureUnit),
              ListOption(
                  option: 4,
                  optionTitle: 'Distance: ',
                  selection: state.selectedDistance.unitActive,
                  selectionText: distanceUnit),
            ],
          );
        },
      ),
    );
  }
}
