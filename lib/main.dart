import 'package:flutter/material.dart';
import 'package:places_app/screens/add_places_screen.dart';
import './screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Great Places',
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.NamedRoute: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
