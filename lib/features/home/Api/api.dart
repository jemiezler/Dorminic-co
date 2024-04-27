import 'dart:convert';

import 'package:http/http.dart' as http;

class BillsApi {
  static const String baseUrl = 'http://localhost:3000';

  static Future<List<dynamic>> fetchBills() async {
    final response = await http.get(Uri.parse('$baseUrl/bills'));

    if (response.statusCode == 200) {
      List<dynamic> bills = jsonDecode(response.body);
      return bills;
    } else {
      throw Exception('Failed to load bills');
    }
  }
}
