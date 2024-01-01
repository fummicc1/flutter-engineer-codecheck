import 'package:application/features/search_repositories/private_components/repository_search_bar.dart';
import 'package:application/features/search_repositories/state.dart';
import 'package:application/services/repository.service.dart';
import 'package:application/ui_components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchRepositoriesPage extends HookConsumerWidget {
  const SearchRepositoriesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = useState(PageState.initial(
      SearchRepositoriesState.initial(),
    ));
    return pageState.value.typedWhen(
      initial: (state) {
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
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Search'),
              ),
            ],
          ),
        );
      },
      loading: (state) {
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
      },
      loaded: (state) {
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
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
