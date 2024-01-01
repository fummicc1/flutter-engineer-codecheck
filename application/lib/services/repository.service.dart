import 'dart:convert';

import 'package:application/models/repository.model.dart';
import 'package:application/network/github_repository.request.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.service.g.dart';

@Riverpod(keepAlive: true)
RepositoryService repositoryService(ref) => RepositoryService();

class RepositoryService {
  Future<List<Repository>> getRepositories({required String query}) async {
    try {
      final response = await GetGitHubRepositoryRequest(query: query).send();
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
