import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled8/components/authintication/login_form.dart';
import 'package:untitled8/views/home_view.dart';
import 'package:untitled8/views/authintication_view.dart';
import 'package:untitled8/views/splash_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:Splash_View(),
      home:Home_View(),


    );
  }
}
