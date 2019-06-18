import 'package:flutter/material.dart';

class LocationsPage extends StatelessWidget {
  final String title;

  LocationsPage (this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text("Locations"),
      ),
    );
  }
}