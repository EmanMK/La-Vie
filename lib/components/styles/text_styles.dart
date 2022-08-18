import 'package:flutter/material.dart';
import 'package:untitled8/components/styles/colors.dart';

abstract class TextStyles {
  static const TextStyle BLACK_HEADER = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w700);

  static const TextStyle LABELS = TextStyle(
      fontFamily: 'Montserrat',
      color: CustomColors.LIGHT_GRAY,
      fontSize: 14,
      fontWeight: FontWeight.w500);

  static const TextStyle PRIMARLY_HEADER = TextStyle(
      fontFamily: 'Montserrat',
      color: CustomColors.PRIMARLY,
      fontSize: 18,
      fontWeight: FontWeight.w700);

  static const TextStyle WHITE_HEADER = TextStyle(
    fontFamily: 'Montserrat',
    color:Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle LIGHT_GRAY_HEADER = TextStyle(
    fontFamily: 'Montserrat',
    color:Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );



}