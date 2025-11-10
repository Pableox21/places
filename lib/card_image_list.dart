import 'package:flutter/material.dart';
import 'package:places/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardImageList = Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          card("assets/images/uyuni.jpg"),
          card("assets/images/copacabana.jpg"),
          card("assets/images/incachaca.jpg"),
          card("assets/images/samahipata.jpg"),
          card("assets/images/coroico.jpg"),
          card("assets/images/LagunaColorada.jpg"),
        ],
      ),
    );
    return cardImageList;
  }
}