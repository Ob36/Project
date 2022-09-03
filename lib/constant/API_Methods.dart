import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkUtility {
  Future<http.Response> getData(String url) async {
    try {
      var uri = Uri.parse(url);
      http.Response response = await http.get(uri);
      return response;
    } catch (e) {
      debugPrint('Network Service Error: ${e.toString()}');
      return null;
    }
  }

  Future<http.Response> getDataWithAuth({String url, String token}) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "Content-type": "application/json",
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    try {
      http.Response response = await http.get(uri, headers: headers);
      return response;
    } catch (e) {
      debugPrint('Network Service Error: ${e.toString()}');
      return null;
    }
  }

  Future<http.Response> postData(
      String register_url, Map<String, dynamic> userMap) async {
    Future<http.Response> postData(
        String url, Map<String, dynamic> userMap) async {
      Map<String, String> headers = {'Content-type': 'application/json'};
      var uri = Uri.parse(register_url);

      try {
        http.Response response =
            await http.post(uri, headers: headers, body: userMap);
        return response;
      } catch (e) {
        debugPrint('Network Service Error: ${e.toString()}');
        return null;
      }
    }

    Future<http.Response> postDataWithAuth(
        {String url, String body, String auth}) async {
      var uri = Uri.parse(url);
      Map<String, String> headers = {
        'Content-type': 'application/json',
        HttpHeaders.authorizationHeader: auth
      };
      try {
        http.Response response =
            await http.post(uri, headers: headers, body: body);
        return response;
      } catch (e) {
        debugPrint('Network Service Error: ${e.toString()}');
        return null;
      }
    }
  }
}
