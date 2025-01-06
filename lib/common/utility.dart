import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Utility {
  static final dio = Dio();

  static getHttp({required String url}) async {
    debugPrint("getHttp begin");
    var response = await dio.get(url);
    debugPrint("getHttp over");
    debugPrint(response.data.toString());
    return response.data.toString();
  }
}
