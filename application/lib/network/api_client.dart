import 'package:application/network/request.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class APIClient {
  Future<Response> send(NetworkRequest request) async {
    final method = request.method;
    final uri = request.uri;
    final headers = request.headers;
    final body = request.body;
    if (kDebugMode) {
      String curl = 'curl -X $method';
      for (final header in headers.entries) {
        curl += ' -H "${header.key}: ${header.value}"';
      }
      if (method != "GET" && body.isNotEmpty) {
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
