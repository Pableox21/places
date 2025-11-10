import 'package:flutter/material.dart';
import 'package:places/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //reviewList
    final reviewList = Column(
      children: <Widget>[
        Review("assets/images/persona1.jpg","Laura Leon", "1 review - 3 photos", 4,"Exelente lugar"),
        Review("assets/images/persona2.jpg","Mary Eugenia", "4 review - 2 photos", 3,"Nunca visite el lugar"),
        Review("assets/images/persona3.jpg","Lorena", "3 review - 2 photos", 5,"Me encanto") ,
        Review("assets/images/persona4.jpg","Knives", "8 review - 4 photos", 2,"quierp conocerlo"),
        Review("assets/images/persona5.jpg","Vash", "3 review - 4 photos", 3,"Hermoso lugar")
      ],
    );
    return reviewList;
  }
}