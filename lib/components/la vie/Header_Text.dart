import 'package:flutter/material.dart';
import 'package:untitled8/components/styles/colors.dart';


class Header_Text extends StatelessWidget {
  Header_Text( {required this.text, required this.textColor}) ;
  Color textColor;
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ,style: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 18,
      color: textColor,
    ),
    );
  }
}
