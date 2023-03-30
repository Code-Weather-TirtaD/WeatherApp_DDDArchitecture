import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart';

void main() async {
  await Storage.init();
  configureEnvieonment(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouters>();

    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
