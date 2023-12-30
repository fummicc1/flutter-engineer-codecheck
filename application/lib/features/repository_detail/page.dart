import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepositoryDetailPage extends ConsumerWidget {
  const RepositoryDetailPage({
    required Key key,
    required this.repositoryId,
  }) : super(key: key);

  final int repositoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(repositoryId.toString()),
      ),
      body: const Center(
        child: Text('Repository Detail'),
      ),
    );
  }
}
