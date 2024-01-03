// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $searchRepositoriesRoute,
    ];

RouteBase get $searchRepositoriesRoute => GoRouteData.$route(
      path: '/search',
      factory: $SearchRepositoriesRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'repository/:owner/:repo',
          factory: $RepositoryDetailRouteExtension._fromState,
        ),
      ],
    );

extension $SearchRepositoriesRouteExtension on SearchRepositoriesRoute {
  static SearchRepositoriesRoute _fromState(GoRouterState state) =>
      SearchRepositoriesRoute();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RepositoryDetailRouteExtension on RepositoryDetailRoute {
  static RepositoryDetailRoute _fromState(GoRouterState state) =>
      RepositoryDetailRoute(
        owner: state.pathParameters['owner']!,
        repo: state.pathParameters['repo']!,
      );

  String get location => GoRouteData.$location(
        '/search/repository/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
