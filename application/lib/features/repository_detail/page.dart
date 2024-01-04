import 'package:application/features/repository_detail/state.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:application/services/repository.service.dart';
import 'package:application/ui_components/github_owner_card.dart';
import 'package:application/ui_components/page.dart';
import 'package:application/ui_components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    useEffect(() {
      Future(() async {
        final repo = await ref.watch(repositoryServiceProvider).getRepository(
              owner: state.repositoryId.owner,
              name: state.repositoryId.repo,
            );
        pageState.value = PageState.loaded(
          state.copyWith(
            repository: repo,
          ),
        );
      });
      return null;
    }, const []);
    return Scaffold(
      appBar: AppBar(
        title: Text('${state.repositoryId.owner}/${state.repositoryId.repo}'),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget loaded(
      WidgetRef ref,
      ValueNotifier<PageState<RepositoryDetailState>> pageState,
      RepositoryDetailState state) {
    final repository = state.repository;
    if (repository == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('${state.repositoryId.owner}/${state.repositoryId.repo}'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GitHubOwnerCard(
                avatarUrl: repository.owner.avatarUrl,
                name: repository.owner.login,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
