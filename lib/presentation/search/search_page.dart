import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchScreen();
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  late String searchCity = '';

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
            ),
            onFieldSubmitted: (value) {
              searchController.text = value.toString();
              setState(() {
                searchCity = searchController.text;
              });
            },
          ),
        ),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (searchCity == '') {
            return ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: const Text('Find my location'),
                shape: const UnderlineInputBorder(),
                onTap: () async {
                  // Position myLocation = await getCurrentPosition();
                  // Position myLocation = await getCurrentPosition();
                  // print(myLocation);

                  // if (myLocation.toJson().isNotEmpty) {
                  //   // ignore: use_build_context_synchronously
                  //   Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => HomePage(
                  //               lat: myLocation.latitude,
                  //               long: myLocation.longitude)));
                  // }
                });
          } else {
            return ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: Text(searchController.text));
          }
        },
      ),
    );
  }
}
