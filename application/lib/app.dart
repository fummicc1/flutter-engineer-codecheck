import 'package:application/features/search_repositories/route.dart';
import 'package:application/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: GoRouter(routes: $appRoutes, initialLocation: "/search"),
      title: 'GitHub Search Repositories',
      theme: ThemeData(
        primarySwatch: ref.watch(appColorProvider).primaryColor,
        secondaryHeaderColor: ref.watch(appColorProvider).secondaryColor,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ref.watch(appColorProvider).primaryColor,
          backgroundColor: ref.watch(appColorProvider).backgroundColor,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: ref.watch(appColorProvider).textColor,
          ),
          bodyMedium: TextStyle(
            color: ref.watch(appColorProvider).textColor,
          ),
        ),
      ),
    );
  }
}
