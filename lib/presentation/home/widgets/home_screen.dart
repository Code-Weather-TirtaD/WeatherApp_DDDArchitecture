import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container();
        },
      ),
      // appBar: AppBar(
      //     leading: IconButton(
      //       icon: const Icon(Icons.search_rounded),
      //       onPressed: () {},
      //     ),
      //     title: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         const Text('WeatherApp'),
      //         IconButton(
      //           icon: const Icon(Icons.settings_rounded),
      //           onPressed: () {},
      //         )
      //       ],
      //     )),
      // body: BlocConsumer<WeatherBloc, WeatherState>(
      //   listener: (context, state) {},
      //   builder: (context, state) {
      //     if (state.isLoading) {
      //       context.read<WeatherBloc>();
      //       const CircularProgressIndicator();
      //     }

      //     return SingleChildScrollView(
      //       physics: const ScrollPhysics(),
      //       child: Column(
      //         children: [
      //           // Temperature Degrees
      //           Container(
      //             color: Colors.indigo[100],
      //             height: size.height * 0.25,
      //             child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Row(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       // ImageIcon(
      //                       //   NetworkImage(iconUrl),
      //                       //   size: 70,
      //                       // ),
      //                       Column(children: [
      //                         Text(state.weatherData[0].weather),
      //                         Text(state.weatherData[0].weatherDescription)
      //                       ])
      //                     ],
      //                   ),
      //                   Text(
      //                     "${state.weatherData[0].temperature.round()} \u2103",
      //                     style: const TextStyle(
      //                         fontSize: 70, fontWeight: FontWeight.w200),
      //                   ),
      //                   Text(
      //                     "Temperature Feel: ${state.weatherData[0].temperatureFeel.round()} \u2103",
      //                   ),
      //                 ]),
      //           ),
      //           // Wind Description
      //           SizedBox(
      //             height: size.height * 0.13,
      //             child: Card(
      //               elevation: 0,
      //               color: Colors.grey[100],
      //               shape: const OutlineInputBorder(),
      //               child: GridView(
      //                 padding: const EdgeInsets.all(20),
      //                 gridDelegate:
      //                     const SliverGridDelegateWithFixedCrossAxisCount(
      //                         crossAxisCount: 3,
      //                         mainAxisExtent: 30,
      //                         crossAxisSpacing: 2,
      //                         mainAxisSpacing: 2),
      //                 children: [
      //                   Text("Wind: ${state.weatherData[0].windSpeed} m/s"),
      //                   Text("Humidity: ${state.weatherData[0].humidity} %"),
      //                   Text(
      //                       "Min Temp: ${state.weatherData[0].temperatureMin.round()} \u2103"),
      //                   Text("Pressure: ${state.weatherData[0].pressure} hPa"),
      //                   Text(
      //                       "Visibility: ${(state.weatherData[0].visibility / 1000)} KM"),
      //                   Text(
      //                       "Max Temp: ${state.weatherData[0].temparatureMax.round()} \u2103"),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }
}