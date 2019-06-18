import 'package:flutter/material.dart';

class CharacterImage extends StatelessWidget{
  final String imgUrl;

  CharacterImage(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.network(
      imgUrl,
      width: 150,
      height: 150,
    ));
  }
}