import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});
  final String creditDetail =
      "All data in this app is provided by OpenWeather API\u2122. OpenWeather aggregates and processes meteorological data from tens of thousand weather stations, on-ground radars and satelites to bring accurate and actionable weather data for any location worldwide.";

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouters>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        automaticallyImplyLeading: true,
      ),
      body: Column(children: [
        ListTile(
          title: const Text('Different weather?'),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          shape: const UnderlineInputBorder(),
          onTap: () {
            debugPrint('Feedback Screen');
          },
        ),
        ListTile(
          title: const Text('Customize units'),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          shape: const UnderlineInputBorder(),
          onTap: () {
            debugPrint('Customize Screen');
            router.push(const CustomizeRoute());
          },
        ),
        const ListTile(
            title: Text('Credit to: '),
            trailing: Text('Open Weather API\u2122')),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(creditDetail, textAlign: TextAlign.justify),
        )
      ]),
    );
  }
}
