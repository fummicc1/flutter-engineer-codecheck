import 'package:application/features/repository_detail/page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RepositoryDetailRoute extends GoRouteData {
  const RepositoryDetailRoute({required this.repositoryId});

  final int repositoryId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RepositoryDetailPage(
      key: state.pageKey,
      repositoryId: repositoryId,
    );
  }
}
