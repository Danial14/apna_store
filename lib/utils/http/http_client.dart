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
  static Future<Map<String, dynamic>> post(String endPoint, Map<String, dynamic> body) async{
    try{
      await http.post(Uri.parse("$_baseUrl/$endPoint"), body: body);
    }
    catch(e){

    }
    return {};
  }
  static Future<Map<String, dynamic>> put(String endPoint, Map<String, dynamic> body) async{
    try{
      await http.put(Uri.parse("$_baseUrl/$endPoint"));
    }
    catch(e){

    }
    return {};
  }

}