import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://5ff2-35-222-232-128.ngrok.io";

class API {
  static Future<http.Response> getLivros() async {
    return await http.get(Uri.parse(baseUrl + '/read'));
  }

  static enviarText(textoApp) {
    return http.get(Uri.parse('$baseUrl/texto?text=$textoApp'));
  }

// static enviarText(texto) {
//   return http.get(Uri.parse('$baseUrl/text?text=$texto'));
// }
}
