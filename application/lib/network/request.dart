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
}
