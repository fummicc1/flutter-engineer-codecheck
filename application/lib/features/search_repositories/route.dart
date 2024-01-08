import 'package:application/features/repository_detail/route.dart';
import 'package:application/features/repository_stargazers/route.dart';
import 'package:application/features/search_repositories/page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<SearchRepositoriesRoute>(
  path: "/search",
  routes: [
    TypedGoRoute<RepositoryDetailRoute>(
        path: "repository/:owner/:repo",
        routes: [
          TypedGoRoute<RepositoryStargazersRoute>(path: "stargazers"),
        ])
  ],
)
class SearchRepositoriesRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SearchRepositoriesPage();
  }
}
