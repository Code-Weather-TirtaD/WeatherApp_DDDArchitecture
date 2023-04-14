import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/presentation/injection.dart';
import 'package:weatherapp_ddd/presentation/routers/app_routers.dart';
import 'package:weatherapp_ddd/application/Location/location_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  get router => getIt<AppRouters>();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          elevation: 0,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: TextFormField(
            controller: searchController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(15),
              suffixIcon: Icon(Icons.search_rounded),
              border: InputBorder.none,
            ),
            onFieldSubmitted: (value) {
              searchController.text = value;
              context
                  .read<LocationBloc>()
                  .add(LocationEvent.searchLocation(input: value));
            },
          ),
        ),
      ),
      body: BlocConsumer<LocationBloc, LocationState>(
        listener: (context, state) {
          if (state.searchClick) {
            context.router.pop();
          }
        },
        builder: (context, state) {
          if (state.location.isEmpty) {
            return ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: const Text('Find my location'),
                shape: const UnderlineInputBorder(),
                onTap: () async {
                  context
                      .read<LocationBloc>()
                      .add(const LocationEvent.currentLocation());
                });
          } else {
            return ListView.builder(
                itemCount: state.location.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.location_searching),
                    title: Text(
                        '${state.location[index].city}, ${state.location[index].stateCity}'),
                    onTap: () async {
                      context.read<LocationBloc>().add(
                          LocationEvent.saveLocation(state.location[index]));
                    },
                  );
                });
          }
        },
      ),
    );
  }
}
