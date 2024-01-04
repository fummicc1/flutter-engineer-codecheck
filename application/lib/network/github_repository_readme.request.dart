import 'package:application/network/request.dart';

class GetGitHubRepositoryReadMeRequest with NetworkRequest {
  GetGitHubRepositoryReadMeRequest({
    required this.owner,
    required this.name,
  });

  final String owner;
  final String name;

  @override
  String get baseURL => "https://api.github.com";

  @override
  Map<String, dynamic> get body => {};

  @override
  Map<String, String> get headers => {
        ...super.defaultHeaders,
        'Accept': 'application/vnd.github.raw+json',
      };

  @override
  String get method => "GET";

  @override
  String get path => "/repos/$owner/$name/contents/README.md";

  @override
  Map<String, dynamic> get queryParameters => {};
}
