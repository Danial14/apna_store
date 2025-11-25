import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppHttpClient{
  AppHttpClient._();
  static String _baseUrl = "";

  static Future<Map<String, dynamic>> get(String endPoint) async{
    try{
      await http.get(Uri.parse("$_baseUrl/$endPoint"));
    }
    catch(e){

    }
    return {};
  }
}