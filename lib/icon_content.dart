import 'package:flutter/material.dart';

class icon_content extends StatelessWidget {
  const icon_content({this.text,this.font});
  final String text;
  final IconData font;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Icon(font,size: 80,color: Colors.white,),
        SizedBox(height: 10,),
        Text(text,style: TextStyle(color: Colors.white,fontSize: 18),),
      ],
    );
  }
}
