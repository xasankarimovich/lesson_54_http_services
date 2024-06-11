import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

class AuthHttpServices{
  final String _apiKey = 'AIzaSyAm5US03BAz2GN9taXSbNGX8801ZjAJdSI';

  Future<void> register(String email, String password) async {
    Uri url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_apiKey');

    final response = await http.post(
      url,
      body: jsonEncode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );

    print(response.body);
  }
}
