import 'dart:convert';

import 'package:code_x/dashboard/api_service.dart';
import 'package:code_x/dashboard/app_exceptions.dart';

void main() async {
  ApiService a = ApiService();
  try {
    final data = await a.dataFetching();
    print(data.body);
  } on InternetExceptions catch (e) {
    print(e.toString());
  } on RequestTimeout catch (e) {
    print(e.toString());
  }
}
