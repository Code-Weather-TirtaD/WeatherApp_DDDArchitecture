import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weatherapp_ddd/presentation/login/login_page.dart';
import 'package:weatherapp_ddd/presentation/home/home_page.dart';
import 'package:weatherapp_ddd/presentation/search/search_page.dart';
import 'package:weatherapp_ddd/presentation/setting/setting_page.dart';
import 'package:weatherapp_ddd/presentation/setting/customize_page.dart';

part 'app_routers.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouters extends _$AppRouters {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, path: '/'),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: SettingRoute.page),
    AutoRoute(page: CustomizeRoute.page),
  ];
}
