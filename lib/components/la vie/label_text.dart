import'package:flutter/material.dart';
import 'package:untitled8/components/styles/text_styles.dart';

class Label_Text extends StatelessWidget {
  Label_Text({required this.text}) ;

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyles.LABELS,
    );
  }
}