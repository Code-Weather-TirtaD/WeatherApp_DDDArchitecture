import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weatherapp_ddd/presentation/home/home_page.dart';

part 'app_routers.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouters extends _$AppRouters {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, path: '/'),
  ];
}
