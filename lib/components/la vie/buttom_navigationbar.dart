import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ButtonNavigationBar extends StatelessWidget{

  Widget build (BuildContext context){
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FaIcon(FontAwesomeIcons.leave)),

          )
        ]
      );
  }
}



