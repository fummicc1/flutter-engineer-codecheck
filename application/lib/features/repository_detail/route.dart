import 'package:application/features/repository_detail/page.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RepositoryDetailRoute extends GoRouteData {
  const RepositoryDetailRoute({
    required this.owner,
    required this.repo,
  });

  final String owner;
  final String repo;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RepositoryDetailPage(
      key: state.pageKey,
      repositoryId: RepositoryNatureId(
        owner: owner,
        repo: repo,
      ),
    );
  }
}
