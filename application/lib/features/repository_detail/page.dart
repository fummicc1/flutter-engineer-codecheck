import 'package:application/features/repository_detail/state.dart';
import 'package:application/models/repository.model.dart';
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
    final context = useContext();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GitHubOwnerCard(
                avatarUrl: repository.owner.avatarUrl,
                name: repository.owner.login,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  repository.name,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(repository.visibility.icon),
                      ),
                      Text(
                        repository.visibility.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  repository.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          repository.watchers.toString(),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Watchers",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          repository.forks.toString(),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Forks",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          repository.openIssues.toString(),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Open Issues",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
