import 'dart:convert';

import 'package:basic_api_call_flutter/src/data/home_model.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  final String authority = 'localhost:3002';

  Future<HomeModel> getHome(String doctor) async {
    try {
      final String path = 'v1/home';
      Map<String, dynamic> parameters = {doctor: doctor};
      Uri url = Uri.http(authority, path, parameters);
      http.Response response = await http.get(url);
      Map<String, dynamic> data = json.decode(response.body);
      HomeModel home = HomeModel.fromJson(data);

      return home;
    } catch (e) {
      throw Exception(e);
    }
  }
}
