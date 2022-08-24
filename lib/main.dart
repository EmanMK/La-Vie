import 'package:flutter/material.dart';
import'package:untitled8/src/app.dart';
import 'package:untitled8/services/dio_helper/dio_helper.dart';
import 'package:untitled8/services/shared_prefrences/user_shared_prefrences.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  UserSharedPreferences.init();
  DioHelper.init();
  runApp(const App());
}
