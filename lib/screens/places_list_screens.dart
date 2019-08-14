import 'package:flutter/material.dart';
import '../providers/places.dart';
import 'package:provider/provider.dart';
import './add_place_screen.dart';

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
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          )
        ],
      ),
      body: Consumer<Places>(
        child: Center(
          child: const Text('No places yet, start adding some !'),
        ),
        builder: (ctx, places, ch) => places.items.length <= 0
            ? ch
            : ListView.builder(
                itemCount: places.items.length,
                itemBuilder: (ctx, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(places.items[index].image),
                  ),
                  title: Text(places.items[index].title),
                  onTap: () {},
                ),
              ),
      ),
    );
  }
}
