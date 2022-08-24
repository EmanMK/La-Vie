import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences{
  static SharedPreferences? prefs;


  static Future init() async  =>
      prefs = await SharedPreferences.getInstance();


  static Future setFirstName(String? firstName) async =>
      await prefs?.setString('firstName', firstName!);
  static Future setLastName(String? lastName) async =>
      await prefs?.setString('lastName', lastName!);
  static Future setId(String? id) async =>
      await prefs?.setString('id', id!);
  static Future setEmail(String? email) async =>
      await prefs?.setString('email', email!);
  static Future setImageURL(String? imageURL) async =>
      await prefs?.setString('imageURL', imageURL!);
  static Future setAccessToken(String? accessToken) async =>
      await prefs?.setString('accessToken', accessToken!);



  static String? getFirstName() =>
      prefs?.getString('firstName');
  static String? getLastName() =>
      prefs?.getString('lastName');
  static String? getEmail() =>
      prefs?.getString('email');
  static String? getId() =>
      prefs?.getString('id');
  static String? getImageURL() =>
      prefs?.getString('imageURL');
  static String? getAccessToken() =>
      prefs?.getString('accessToken');
}