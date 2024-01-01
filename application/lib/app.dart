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
        brightness: MediaQuery.platformBrightnessOf(context),
        primarySwatch: ref.watch(appColorProvider).primaryColor,
        colorScheme: ColorScheme.fromSwatch(
          brightness: MediaQuery.platformBrightnessOf(context),
          primarySwatch: ref.watch(appColorProvider).primaryColor,
          backgroundColor: ref.watch(appColorProvider).backgroundColor(
                MediaQuery.platformBrightnessOf(context),
              ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          contentPadding: const EdgeInsets.all(12.0),
          fillColor: ref.watch(appColorProvider).backgroundColor(
                MediaQuery.platformBrightnessOf(context),
              ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          bodyMedium: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          bodySmall: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          labelLarge: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          labelMedium: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          labelSmall: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          headlineLarge: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          headlineMedium: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
          headlineSmall: TextStyle(
            color: ref.watch(appColorProvider).textColor(
                  MediaQuery.platformBrightnessOf(context),
                ),
          ),
        ),
      ),
    );
  }
}
