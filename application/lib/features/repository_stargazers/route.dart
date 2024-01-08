import 'package:application/features/repository_stargazers/page.dart';
import 'package:application/features/repository_stargazers/state.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RepositoryStargazersRoute extends GoRouteData {
  const RepositoryStargazersRoute({
    required this.owner,
    required this.repo,
  });
  final String owner;
  final String repo;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RepositoryStargazersPage(
        initialPageState: RepositoryStargazersState(
      repositoryId: RepositoryNatureId(
        owner: owner,
        repo: repo,
      ),
    ));
  }
}
