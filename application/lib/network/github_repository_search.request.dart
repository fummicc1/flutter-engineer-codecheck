import 'package:application/network/request.dart';

class GetGitHubRepositorySearchRequest with NetworkRequest {
  GetGitHubRepositorySearchRequest({required this.query});

  final String query;

  @override
  String get baseURL => "https://api.github.com";

  @override
  Map<String, dynamic> get body => {};

  @override
  Map<String, String> get headers => {
        ...super.defaultHeaders,
        'Content-Type': 'application/json',
      };

  @override
  String get method => "GET";

  @override
  String get path => "/search/repositories";

  @override
  Map<String, dynamic> get queryParameters => {
        'q': query,
        'sort': 'stars',
        'order': 'desc',
      };
}
