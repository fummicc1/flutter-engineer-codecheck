import 'dart:convert';

import 'package:application/models/repository.model.dart';
import 'package:application/network/api_client.dart';
import 'package:application/network/github_repository.request.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.service.g.dart';

@Riverpod(keepAlive: true)
RepositoryService repositoryService(ref) => RepositoryService(
      apiClient: APIClient(),
    );

class RepositoryService {
  RepositoryService({required APIClient apiClient}) : _apiClient = apiClient;

  final APIClient _apiClient;

  Future<List<Repository>>
      getRepositories<R extends GetGitHubRepositoryRequest>(
          {required String query}) async {
    try {
      final request = GetGitHubRepositoryRequest(query: query);
      final response = await _apiClient.send(request);
      if (response.statusCode == 200) {
        final Map<String, dynamic> repositoriesJson =
            json.decode(response.body);
        final repositoryItems = repositoriesJson['items'] as List;
        final repositories = repositoryItems
            .map((repositoryJson) => Repository.fromJson(repositoryJson))
            .toList();
        return repositories;
      } else {
        throw Exception('Failed to load repositories');
      }
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      rethrow;
    }
  }
}
