import 'package:application/features/search_repositories/page.dart';
import 'package:application/features/search_repositories/private_components/repository_search_bar.dart';
import 'package:application/services/repository.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/repository.dart';
import 'page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<RepositoryService>()])
void main() {
  group("リポジトリ検索画面", () {
    group("初期状態", () {
      testWidgets("検索バーが表示されること", (tester) async {
        final stubRepositories = RepositoryTestHelper().make(10);
        final repositoryService = MockRepositoryService();
        when(repositoryService.getRepositories(query: anyNamed("query")))
            .thenAnswer(
          (_) async => stubRepositories,
        );
        final app = ProviderScope(
          overrides: [
            repositoryServiceProvider.overrideWith((ref) => repositoryService),
          ],
          child: MaterialApp(
            home: SearchRepositoriesPage(),
          ),
        );
        await tester.pumpWidget(app);
        await tester.pumpAndSettle();
        expect(find.byType(RepositorySearchBar), findsOneWidget);
      });

      testWidgets("リポジトリの読み込みが始まること", (tester) async {
        final stubRepositories = RepositoryTestHelper().make(10);
        final repositoryService = MockRepositoryService();
        when(repositoryService.getRepositories(query: anyNamed("query")))
            .thenAnswer(
          (_) async => stubRepositories,
        );
        final app = ProviderScope(
          overrides: [
            repositoryServiceProvider.overrideWith((ref) => repositoryService),
          ],
          child: MaterialApp(
            home: SearchRepositoriesPage(),
          ),
        );
        await tester.pumpWidget(app);
        await tester.pumpAndSettle();
        expect(find.byType(ListView), findsOneWidget);
        verify(repositoryService.getRepositories(query: anyNamed("query")))
            .called(1);
      });

      testWidgets("検索をすると検索結果が返されること", (tester) async {
        final stubRepositories = RepositoryTestHelper().make(10);
        final repositoryService = MockRepositoryService();
        when(repositoryService.getRepositories(query: anyNamed("query")))
            .thenAnswer(
          (invocation) async {
            final query = invocation.namedArguments[#query] as String;
            if (query == "swift") {
              return stubRepositories;
            }
            return [];
          },
        );
        final app = ProviderScope(
          overrides: [
            repositoryServiceProvider.overrideWith((ref) => repositoryService),
          ],
          child: MaterialApp(
            home: SearchRepositoriesPage(),
          ),
        );
        await tester.pumpWidget(app);
        await tester.pumpAndSettle();
        verifyNever(repositoryService.getRepositories(
          query: anyNamed("query"),
        )).called(1);
        final textField = tester.widget(find.descendant(
            of: find.byType(RepositorySearchBar),
            matching: find.byType(TextField))) as TextField;
        // 検索を開始する
        textField.onChanged!("swift");
        await tester.pumpAndSettle();
        // 検索結果が反映されている
        expect(find.byType(ListView), findsOneWidget);
        verify(repositoryService.getRepositories(
          query: anyNamed("query"),
        )).called(2);
      });
    });
  });
}
