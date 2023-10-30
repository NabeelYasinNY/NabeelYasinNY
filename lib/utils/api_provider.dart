import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiProvider extends ChangeNotifier {
  Future<void> registerUser(String email, String password, String name) async {
    final url = Uri.parse('https://yalla-api.onrender.com/v1/auth/register');
    final response = await http.post(
      url,
      body: {
        'email': email,
        'password': password,
        'name': name,
      },
    );

    if (response.statusCode == 201) {
      // Successful registration, you can handle the response data here
      print('Registration successful: ' + response.body + ', response code: ' + response.statusCode.toString());
    } else {
      // Handle the error, e.g., show an error message
      print('Registration failed with status code ${response.body}' + ', response code: ' + response.statusCode.toString());
    }
  }
}