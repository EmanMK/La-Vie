import 'package:dio/dio.dart';






void getHttp() async {
  try {
    //https://lavie.orangedigitalcenteregypt.com/api/v1/products
    var response = await Dio().get('/api/v1/products');
    print(response);
  } catch (e) {
    print(e);
  }
}