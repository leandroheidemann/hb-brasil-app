import 'package:http/http.dart' as http;
import 'dart:convert';

class FinanceAPIService {
  final String apiKey = '486b9000';
  final String baseUrl = 'https://api.hgbrasil.com/finance';

  Future<Map<String, dynamic>> fetchData() async {
    final response =
        await http.get(Uri.parse('$baseUrl?key=$apiKey&format=json-cors'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load financial data');
    }
  }
}
