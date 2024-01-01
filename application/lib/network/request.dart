import 'dart:convert';

import 'package:application/models/repository.model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

mixin NetworkRequest {
  String get baseURL;
  String get path;
  Map<String, String> get headers;
  Map<String, dynamic> get queryParameters;
  Map<String, dynamic> get body;
  String get method;
  String get url => baseURL + path;
  Uri get uri {
    final uri = Uri.parse(url);
    return uri.replace(queryParameters: queryParameters);
  }

  Map<String, String> get defaultHeaders => {
        "Authorization":
            "Bearer ${const String.fromEnvironment("GITHUB_REST_API_AUTHORIZATION_TOKEN")}"
      };
  Future<Response> send() async {
    if (kDebugMode) {
      String curl = 'curl -X ${method}';
      for (final header in headers.entries) {
        curl += ' -H "${header.key}: ${header.value}"';
      }
      if (body.isNotEmpty) {
        curl += ' -d \'${body.toString()}\'';
      }
      curl += ' $uri';
      print(curl);
    }
    if (method == 'GET') {
      final response = await get(uri, headers: headers);
      return response;
    } else if (method == 'POST') {
      final response = await post(uri, headers: headers, body: body);
      return response;
    } else {
      throw Exception('Unsupported HTTP method: $method');
    }
  }
}
