import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({required this.appBarWidget});

  Widget appBarWidget;

  //Logo(height:70,width: 140),
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: appBarWidget,
    );
  }
}
