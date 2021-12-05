import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://c897-35-247-105-245.ngrok.io";

class API {
  static Future<http.Response> getLivros() async {
    return await http.get(Uri.parse(baseUrl + '/read'));
  }

  static enviarText(textoApp) {
    return http.get(Uri.parse('$baseUrl/texto?text=$textoApp'));
  }
}
