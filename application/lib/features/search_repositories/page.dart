import 'package:application/features/repository_detail/route.dart';
import 'package:application/features/search_repositories/private_components/repository_search_bar.dart';
import 'package:application/features/search_repositories/route.dart';
import 'package:application/features/search_repositories/state.dart';
import 'package:application/services/repository.service.dart';
import 'package:application/ui_components/page.dart';
import 'package:application/ui_components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchRepositoriesPage extends FeaturePage<SearchRepositoriesState> {
  SearchRepositoriesPage({Key? key})
      : super(
          key: key,
          initialPageState: SearchRepositoriesState.initial(),
        );

  @override
  Widget initial(
      WidgetRef ref,
      ValueNotifier<PageState<SearchRepositoriesState>> pageState,
      SearchRepositoriesState state) {
    useEffect(
      () {
        Future(() async {
          pageState.value = PageState.loading(state);
          final repositories = await ref
              .read(repositoryServiceProvider)
              .getRepositories(query: state.query);
          pageState.value = PageState.loaded(state.copyWith(
            repositories: repositories,
          ));
        });
        return null;
      },
      const [],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Repositories'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: RepositorySearchBar(
              isLoading: pageState.value.isLoading(),
              updatePageState: (newPageState) {
                pageState.value = newPageState;
              },
              state: state,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget loading(
      WidgetRef ref,
      ValueNotifier<PageState<SearchRepositoriesState>> pageState,
      SearchRepositoriesState state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Repositories'),
      ),
      body: Column(
        children: [
          RepositorySearchBar(
            isLoading: pageState.value.isLoading(),
            updatePageState: (newPageState) {
              pageState.value = newPageState;
            },
            state: state,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget loaded(
      WidgetRef ref,
      ValueNotifier<PageState<SearchRepositoriesState>> pageState,
      SearchRepositoriesState state) {
    final repositories = state.repositories;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Repositories'),
      ),
      body: Column(
        children: [
          RepositorySearchBar(
            isLoading: pageState.value.isLoading(),
            updatePageState: (newPageState) {
              pageState.value = newPageState;
            },
            state: state,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: repositories.length,
              itemBuilder: (context, index) {
                final repository = repositories[index];
                return ListTile(
                  title: Text(repository.name),
                  subtitle: Text(repository.description),
                  onTap: () {
                    RepositoryDetailRoute(
                      owner: repository.owner.login,
                      repo: repository.name,
                    ).go(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
