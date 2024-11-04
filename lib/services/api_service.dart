import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/course.dart'; // Import your Course model

class ApiService {
  // Replace with your actual API endpoint
  static const String _baseUrl = 'https://your-api-url.com/api';

  // Fetches courses from the API
  static Future<List<Course>> fetchCourses() async {
    final response = await http.get(Uri.parse('$_baseUrl/courses'));

    if (response.statusCode == 200) {
      // If the server returns an OK response, parse the JSON
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Course.fromJson(json)).toList();
    } else {
      // If the server does not return an OK response, throw an exception
      throw Exception('Failed to load courses');
    }
  }
}
