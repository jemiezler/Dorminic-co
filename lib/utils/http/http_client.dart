import 'dart:convert';
import 'package:http/http.dart' as http;

class APIClient {
  static final APIClient _singleton = APIClient._internal();

  factory APIClient() {
    return _singleton;
  }

  APIClient._internal();

  final String baseUrl =
      'https://dorminic-express-server-7zemj3wqeq-de.a.run.app';
  http.Client client = http.Client();

  // Example method for making API requests

  Future<http.Response> loginUser(String username, String password) async {
    var url = Uri.parse('$baseUrl/login');
    try {
      var response = await client.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'username': username, 'password': password}),
      );
      return response;
    } catch (e) {
      print('Error: $e');
      rethrow; // Rethrow the error to propagate it further if needed
    }
  }

  // Other API methods can be added here
}
