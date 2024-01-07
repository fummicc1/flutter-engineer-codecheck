import 'package:application/features/search_repositories/state.dart';
import 'package:application/services/repository.service.dart';
import 'package:application/ui_components/page_state.dart';
import 'package:application/ui_components/search_bar.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositorySearchBar extends HookConsumerWidget {
  const RepositorySearchBar({
    Key? key,
    required this.isLoading,
    required this.updatePageState,
    required this.state,
    this.debounceDuration = const Duration(milliseconds: 500),
  }) : super(key: key);

  final bool isLoading;
  final Function(PageState<SearchRepositoriesState>) updatePageState;
  final SearchRepositoriesState state;
  final Duration debounceDuration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final debounce = useState(DateTime.fromMicrosecondsSinceEpoch(0));
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SearchBar(
        hintText: 'Input search word',
        onChanged: (value) async {
          if (DateTime.now().difference(debounce.value).inMilliseconds <
              debounceDuration.inMilliseconds) {
            return;
          }
          debounce.value = DateTime.now();
          updatePageState(
            PageState.loading(
              state.copyWith(
                query: value,
              ),
            ),
          );
          try {
            final repositories = await ref
                .read(repositoryServiceProvider)
                .getRepositories(query: value);
            updatePageState(
              PageState.loaded(
                state.copyWith(
                  repositories: repositories,
                ),
              ),
            );
          } on Exception catch (err) {
            updatePageState(
              PageState.loadFailed(
                state,
                err,
              ),
            );
          }
        },
        onSubmitted: (value) async {
          if (isLoading) {
            return;
          }
          updatePageState(
            PageState.loading(
              state.copyWith(
                query: value,
              ),
            ),
          );
          try {
            final repositories = await ref
                .read(repositoryServiceProvider)
                .getRepositories(query: value);
            updatePageState(
              PageState.loaded(
                state.copyWith(
                  repositories: repositories,
                ),
              ),
            );
          } on Exception catch (err) {
            updatePageState(
              PageState.loadFailed(
                state,
                err,
              ),
            );
          }
        },
      ),
    );
  }
}
