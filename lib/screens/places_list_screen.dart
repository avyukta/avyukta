import 'package:flutter/material.dart';
import 'package:places_app/screens/add_places_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.NamedRoute);
              })
        ],
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}