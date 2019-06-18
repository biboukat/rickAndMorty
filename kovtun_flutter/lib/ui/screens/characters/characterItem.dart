import 'package:flutter/material.dart';
import 'package:kovtun_flutter/ui/screens/characters/characterImage.dart';

class CharacterItem extends StatelessWidget {
  CharacterItem(
      {@required this.name,
      this.status = "",
      this.gender = "",
      this.species = "",
      @required this.imgUrl});

  final String name, status, gender, species, imgUrl;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blueGrey[50],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new CharacterImage(imgUrl),
          Expanded(
            child: Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Name: " + name,
                      style: Theme.of(context).textTheme.subhead),
                  new Text("Status: " + status,
                      style: Theme.of(context).textTheme.subhead),
                  new Text("Gender: " + gender,
                      style: Theme.of(context).textTheme.subhead),
                  new Text("Species: " + species,
                      style: Theme.of(context).textTheme.subhead),
                ],
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
