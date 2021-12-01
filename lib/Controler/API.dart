import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://androidhive.info/";

class API {
  static Future getUsers() {
    var url = baseUrl + "json/movies.json";
    return http.get(Uri.parse('http://31e0-34-122-77-7.ngrok.io/'));
  }
  enviarText(tetxo) {
    return http.post(Uri.parse('http://31e0-34-122-77-7.ngrok.io/'));
  }
}