import 'package:application/features/repository_stargazers/state.dart';
import 'package:application/services/repository.service.dart';
import 'package:application/ui_components/github_owner_card.dart';
import 'package:application/ui_components/page.dart';
import 'package:application/ui_components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepositoryStargazersPage extends FeaturePage<RepositoryStargazersState> {
  const RepositoryStargazersPage({super.key, required super.initialPageState});

  @override
  Widget initial(
      WidgetRef ref,
      ValueNotifier<PageState<RepositoryStargazersState>> pageState,
      RepositoryStargazersState state) {
    useEffect(
      () {
        Future(() async {
          try {
            final stargazers = await ref
                .read(repositoryServiceProvider)
                .getRepositoryStargazers(
                  owner: state.repositoryId.owner,
                  name: state.repositoryId.repo,
                );
            pageState.value = PageState.loaded(
              state.copyWith(
                stargazers: stargazers,
              ),
            );
          } on Exception catch (exception) {
            pageState.value = PageState.loadFailed(
              state,
              exception,
            );
          }
        });
        return null;
      },
      [],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stargazers"),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget loaded(
      WidgetRef ref,
      ValueNotifier<PageState<RepositoryStargazersState>> pageState,
      RepositoryStargazersState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stargazers"),
      ),
      body: ListView.builder(
        itemCount: state.stargazers.length,
        itemBuilder: (context, index) {
          final stargazer = state.stargazers[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GitHubOwnerCard(
              name: stargazer.login,
              avatarUrl: stargazer.avatarUrl,
            ),
          );
        },
      ),
    );
  }
}
