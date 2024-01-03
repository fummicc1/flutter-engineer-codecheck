import 'package:application/network/request.dart';

class GetGitHubRepositoryFindRequest with NetworkRequest {
  GetGitHubRepositoryFindRequest({required this.owner, required this.name});

  final String owner;
  final String name;

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
  String get path => "/repos/$owner/$name";

  @override
  Map<String, dynamic> get queryParameters => {};
}
