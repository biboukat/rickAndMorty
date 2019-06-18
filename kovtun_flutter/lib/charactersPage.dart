import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
 final String title;

 CharactersPage(this.title);
 
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return new Scaffold(
     appBar: new AppBar(
       title: new Text(title),
     ),
     body: new Center(
       child: new Text("Characters"),
     ),
   );
  }
}