import 'package:flutter/material.dart';
import 'package:places_app/providers/great_places.dart';
import 'package:places_app/screens/add_places_screen.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<GreatPlaces>(
        child: Center(child: Text('Got no places yet, start adding some!')),
        builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
            ? ch
            : ListView.builder(
                itemBuilder: (ctx, i) => ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundImage: FileImage(greatPlaces.items[i].image),
                  ),
                  title: Text(greatPlaces.items[i].title),
                ),
                itemCount: greatPlaces.items.length,
              ),
      ),
    );
  }
}
