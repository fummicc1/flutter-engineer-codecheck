import 'package:application/features/repository_detail/state.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:application/ui_components/page.dart';
import 'package:application/ui_components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepositoryDetailPage extends FeaturePage<RepositoryDetailState> {
  RepositoryDetailPage({
    Key? key,
    required RepositoryNatureId repositoryId,
  }) : super(
          key: key,
          initialPageState: RepositoryDetailState.initial(
            repositoryId: repositoryId,
          ),
        );

  @override
  Widget initial(
      WidgetRef ref,
      ValueNotifier<PageState<RepositoryDetailState>> pageState,
      RepositoryDetailState state) {
    return Scaffold(
      body: Center(
        child: Text('${state.repositoryId.owner}/${state.repositoryId.repo}'),
      ),
    );
  }
}
