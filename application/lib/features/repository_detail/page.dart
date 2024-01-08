import 'package:application/features/repository_detail/controller.dart';
import 'package:application/features/repository_detail/state.dart';
import 'package:application/features/repository_stargazers/route.dart';
import 'package:application/features/search_repositories/route.dart';
import 'package:application/models/repository.model.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:application/services/repository.service.dart';
import 'package:application/ui_components/github_owner_card.dart';
import 'package:application/ui_components/language_chip.dart';
import 'package:application/ui_components/page.dart';
import 'package:application/ui_components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:markdown/markdown.dart' hide Text;

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
        try {
          final repo = await ref.watch(repositoryServiceProvider).getRepository(
                owner: state.repositoryId.owner,
                name: state.repositoryId.repo,
              );
          pageState.value = PageState.loaded(
            state.copyWith(
              repository: repo,
            ),
          );
        } on Exception catch (err) {
          pageState.value = PageState.loadFailed(state, err);
        }
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
    useEffect(
      () {
        Future(() async {
          if (state.readMe != null) {
            return;
          }
          try {
            final readme =
                await ref.watch(repositoryServiceProvider).getRepositoryReadMe(
                      owner: state.repositoryId.owner,
                      name: state.repositoryId.repo,
                    );
            pageState.value = PageState.loaded(
              state.copyWith(
                readMe: readme,
              ),
            );
          } on Exception catch (err) {
            pageState.value = PageState.loadFailed(state, err);
          }
        });
        return null;
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('${state.repositoryId.owner}/${state.repositoryId.repo}'),
        actions: [
          IconButton(
            onPressed: () {
              ref
                  .read(repositoryDetailControllerProvider(state.readMe!))
                  .launchRepositoryUrl();
            },
            icon: const Icon(
              Icons.open_in_new,
            ),
          ),
        ],
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        repository.name,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      repository.language == null
                          ? const SizedBox.shrink()
                          : Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: LanguageChip(
                                language: repository.language!,
                              ),
                            ),
                    ],
                  )),
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
                      child: InkWell(
                    child: Column(
                      children: [
                        Text(
                          repository.watchers.toString(),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "Stargazers",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    onTap: () {
                      RepositoryStargazersRoute(
                        owner: repository.owner.login,
                        repo: repository.name,
                      ).go(context);
                    },
                  )),
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
              const SizedBox(height: 16),
              Text(
                "README",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              if (state.readMe == null)
                const Center(child: CircularProgressIndicator())
              else
                Expanded(
                  child: SingleChildScrollView(
                    child: MarkdownBody(
                      data: state.readMe!.content,
                      extensionSet: ExtensionSet.gitHubFlavored,
                      onTapLink: (text, href, title) async {
                        await ref
                            .read(repositoryDetailControllerProvider(
                                state.readMe!))
                            .onPressedReadMeLink(
                              text: text,
                              href: href,
                            );
                      },
                      imageBuilder: (uri, title, alt) {
                        return Image.network(
                          uri.toString(),
                          loadingBuilder: (context, child, loadingProgress) =>
                              child,
                          errorBuilder: (context, error, stackTrace) {
                            return Text(
                              alt ?? "",
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
