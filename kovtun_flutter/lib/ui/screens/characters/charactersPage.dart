import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:kovtun_flutter/ui/screens/characters/characterItem.dart';

class CharactersPage extends StatefulWidget {
  CharactersPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CharactersPage createState() => _CharactersPage("Characters");
}

class _CharactersPage extends State<CharactersPage> {
  final String title;
  List data = [];

  _CharactersPage(this.title);

  @override
  void initState() {
    List characters;
    final url = 'https://rickandmortyapi.com/api/character/';
    http.get(url).then((response) {
      final decoded = json.decode(response.body);
      characters = decoded["results"] as List;
      print(characters);
      setState(() {
        data = characters;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: ListView.separated(
            itemCount: data.length,
            separatorBuilder: (context, index) => Divider(
                  color: Colors.indigo,
                ),
            itemBuilder: (context, index) {
              return CharacterItem(
                name: data[index]["name"],
                imgUrl: data[index]["image"],
                status: data[index]["status"],
                species: data[index]["species"],
                gender: data[index]["gender"],
              );
            }));
  }
}
