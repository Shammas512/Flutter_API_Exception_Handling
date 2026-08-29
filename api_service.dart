import 'dart:async';
import 'dart:io';

import 'package:code_x/dashboard/app_exceptions.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String url = "https://dummyjson.com/users/1";

  Future<dynamic> dataFetching() async {
    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(microseconds: 1));
      return response;
    } on SocketException {
      throw InternetExceptions("");
    } on TimeoutException {
      throw RequestTimeout("");
    }
  }
}
