import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kovtun_flutter/ui/screens/characters/charactersPage.dart';
import 'package:kovtun_flutter/epicodesPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lime),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "charactersPage": (BuildContext context)=> new CharactersPage(),
        "episodesPage": (BuildContext context)=> new EpisodesPage("Episodes"),
        "locationsPage": (BuildContext context)=> new EpisodesPage("Locations"),
      });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Characters"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("charactersPage");
              },
            ),
            new ListTile(
              title: new Text("Location"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("episodesPage");
              },
            ),
            new ListTile(
              title: new Text("Episode"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("locationsPage");
              },
            )

          ],
        ),
      ),
    );
  }
}