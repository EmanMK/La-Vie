import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
   Logo({Key? key,required this.height, required this.width}) : super(key: key);

  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/logo.png',height: height,width: width,);
  }
}
