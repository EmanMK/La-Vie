import 'dart:async';
import 'package:untitled8/components/la vie/logo.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/views/authintication_view.dart';
class Splash_View extends StatefulWidget {
  const Splash_View({Key? key}) : super(key: key);

  @override
  _Splash_ViewState createState() => _Splash_ViewState();
}

class _Splash_ViewState extends State<Splash_View> {

  _Splash_ViewState(){
   Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=>Authintication_View()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Logo(height:70,width: 140),
        ]
      ),
    );
  }

  @override
  void dispose(){
    super.dispose();
  }
}
