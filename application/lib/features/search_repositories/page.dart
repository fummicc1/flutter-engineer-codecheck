import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchRepositoriesPage extends ConsumerWidget {
  const SearchRepositoriesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search Repositories'),
        ),
        body: const Center(
          child: Text('Search Repositories'),
        ));
  }
}
