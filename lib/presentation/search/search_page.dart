import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/application/Location/location_bloc.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/presentation/search/widgets/search_screen.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      create: (context) => getIt<LocationBloc>(),
      child: const SearchScreen(),
    );
  }
}
