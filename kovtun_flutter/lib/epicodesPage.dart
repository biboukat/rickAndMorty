import 'package:flutter/material.dart';

class EpisodesPage extends StatelessWidget {
  final String title;

  EpisodesPage(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text("Episodes"),
      ),
    );
  }
}