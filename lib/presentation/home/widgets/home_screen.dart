import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/application/Setting/setting_bloc.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';
import 'package:weatherapp_ddd/presentation/home/widgets/daily_forecast.dart';
import 'package:weatherapp_ddd/presentation/home/widgets/hourly_forecast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get router => getIt<AppRouters>();

  final List<String> tempUnits = ['\u2103', '\u2109'];
  final List<String> wsUnits = ['m/s', 'km/h', 'mph'];
  final List<String> pressureUnits = ['hPa', 'inHg'];
  final List<String> distanceUnits = ['km', 'mi'];

  @override
  void initState() {
    super.initState();
    context.read<WeatherBloc>().add(const WeatherEvent.weatherChanged());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const iconUrl = 'http://openweathermap.org/img/wn/';

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              router.push(const SearchRoute());
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('WeatherApp'),
              IconButton(
                icon: const Icon(Icons.settings_rounded),
                onPressed: () {
                  router.push(const SettingRoute());
                },
              )
            ],
          )),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          var tempIndex, wsIndex, pressure, distance;
          context.select((SettingBloc setBloc) {
            tempIndex = setBloc.state.selectedTemp.unitActive.indexOf(true);
            wsIndex = setBloc.state.selectedWindSpeed.unitActive.indexOf(true);
            pressure = setBloc.state.selectedPressure.unitActive.indexOf(true);
            distance = setBloc.state.selectedDistance.unitActive.indexOf(true);
          });

          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Column(
                children: [
                  // Temperature Degrees
                  Container(
                    color: Colors.indigo[100],
                    height: size.height * 0.25,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                NetworkImage(
                                    '$iconUrl${state.weatherData.weatherIcon}@2x.png'),
                                size: 70,
                              ),
                              Column(children: [
                                Text(state.weatherData.weather),
                                Text(state.weatherData.weatherDescription)
                              ])
                            ],
                          ),
                          Text(
                            "${state.weatherData.temperature.round()} ${tempUnits[tempIndex]}",
                            style: const TextStyle(
                                fontSize: 70, fontWeight: FontWeight.w200),
                          ),
                          Text(
                            "Temperature Feel: ${state.weatherData.temperatureFeel.round()} ${tempUnits[tempIndex]}",
                          ),
                        ]),
                  ),
                  // Wind Description
                  SizedBox(
                    height: size.height * 0.13,
                    child: Card(
                      elevation: 0,
                      color: Colors.grey[100],
                      shape: const OutlineInputBorder(),
                      child: GridView(
                        padding: const EdgeInsets.all(20),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisExtent: 30,
                                crossAxisSpacing: 2,
                                mainAxisSpacing: 2),
                        children: [
                          Text(
                              "Wind: ${state.weatherData.windSpeed.toStringAsFixed(2)} ${wsUnits[wsIndex]}"),
                          Text("Humidity: ${state.weatherData.humidity} %"),
                          Text(
                              "Min Temp: ${state.weatherData.temperatureMin.round()} ${tempUnits[tempIndex]}"),
                          Text(
                              "Pressure: ${state.weatherData.pressure.toStringAsFixed(1)} ${pressureUnits[pressure]}"),
                          Text(
                              "Visibility: ${(state.weatherData.visibility / 1000).toStringAsFixed(1)} ${distanceUnits[distance]}"),
                          Text(
                              "Max Temp: ${state.weatherData.temparatureMax.round()} ${tempUnits[tempIndex]}"),
                        ],
                      ),
                    ),
                  ),
                  // Forecast Widgets
                  HourlyForecast(
                      size: size,
                      iconUrl: iconUrl,
                      temperatureUnit: tempUnits[tempIndex],
                      data: state.forecastData),
                  DailyForecast(
                      iconUrl: iconUrl,
                      temperatureUnit: tempUnits[tempIndex],
                      data: state.forecastData)
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
