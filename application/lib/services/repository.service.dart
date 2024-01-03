import 'dart:convert';

import 'package:application/models/repository.model.dart';
import 'package:application/network/api_client.dart';
import 'package:application/network/github_repository_find.request.dart';
import 'package:application/network/github_repository_search.request.dart';
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

  Future<List<Repository>> getRepositories({required String query}) async {
    try {
      final request = GetGitHubRepositorySearchRequest(query: query);
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

  Future<Repository> getRepository({
    required String owner,
    required String name,
  }) async {
    try {
      final request = GetGitHubRepositoryFindRequest(owner: owner, name: name);
      final response = await _apiClient.send(request);
      if (response.statusCode == 200) {
        final Map<String, dynamic> repositoryJson = json.decode(response.body);
        final repository = Repository.fromJson(repositoryJson);
        return repository;
      } else {
        throw Exception('Failed to load repository');
      }
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      rethrow;
    }
  }
}
