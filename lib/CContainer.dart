import 'package:flutter/material.dart';

class CContainer extends StatelessWidget {
  CContainer({this.colour,this.cardChild});
  final Widget cardChild;
  final int colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(colour),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

