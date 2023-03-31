import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';
import 'package:weatherapp_ddd/presentation/home/widgets/daily_forecast.dart';
import 'package:weatherapp_ddd/presentation/home/widgets/hourly_forecast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final iconUrl = 'http://openweathermap.org/img/wn/';

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('WeatherApp'),
              IconButton(
                icon: const Icon(Icons.settings_rounded),
                onPressed: () {},
              )
            ],
          )),
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {},
        builder: (context, state) {
          context.read<WeatherBloc>();

          // if (state.isLoading == true) {
          //   debugPrint(state.isLoading.toString());
          //   return const Center(child: CircularProgressIndicator());
          // } else {
          //   return Container(
          //     padding: const EdgeInsets.all(30),
          //     color: Colors.lightBlue[50],
          //     height: size.height,
          //     child: Column(
          //       children: [const Text('HOME SCREEN'), Text('dataaa')],
          //     ),
          //   );
          // }

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
                          "${state.weatherData.temperature.round()} \u2103",
                          style: const TextStyle(
                              fontSize: 70, fontWeight: FontWeight.w200),
                        ),
                        Text(
                          "Temperature Feel: ${state.weatherData.temperatureFeel.round()} \u2103",
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
                        Text("Wind: ${state.weatherData.windSpeed} m/s"),
                        Text("Humidity: ${state.weatherData.humidity} %"),
                        Text(
                            "Min Temp: ${state.weatherData.temperatureMin.round()} \u2103"),
                        Text("Pressure: ${state.weatherData.pressure} hPa"),
                        Text(
                            "Visibility: ${(state.weatherData.visibility / 1000)} KM"),
                        Text(
                            "Max Temp: ${state.weatherData.temparatureMax.round()} \u2103"),
                      ],
                    ),
                  ),
                ),
                HourlyForecast(
                    size: size, iconUrl: iconUrl, data: state.forecastData),
                DailyForecast(iconUrl: iconUrl, data: state.forecastData)
              ],
            ),
          );
        },
      ),
    );
  }
}
