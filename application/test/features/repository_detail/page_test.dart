import 'package:application/features/repository_detail/controller.dart';
import 'package:application/features/repository_detail/page.dart';
import 'package:application/models/repository.model.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:application/models/repository_readme.model.dart';
import 'package:application/services/repository.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../helpers/repository.dart';
import 'page_test.mocks.dart';

@GenerateNiceMocks(
    [MockSpec<RepositoryService>(), MockSpec<RepositoryDetailController>()])
void main() {
  group("リポジトリ詳細画面", () {
    group("初期状態", () {
      testWidgets("リポジトリの情報が表示されて読み込み状態に変化すること", (tester) async {
        final mockRepositoryService = MockRepositoryService();
        const owner = "owner";
        const name = "name";
        final expectedRepository = RepositoryTestHelper().make(1)[0];
        provideDummy<Repository>(expectedRepository);
        when(mockRepositoryService.getRepository(
          owner: anyNamed("owner"),
          name: anyNamed("name"),
        )).thenAnswer(
          (_) async => expectedRepository,
        );
        when(
          mockRepositoryService.getRepositoryReadMe(
            owner: anyNamed("owner"),
            name: anyNamed("name"),
          ),
        ).thenAnswer((_) async {
          return RepositoryReadMe(
            owner: owner,
            name: name,
            content: "# ReadMe\n\nThis is ReadMe.",
          );
        });
        mockNetworkImagesFor(() async {
          final app = ProviderScope(
            overrides: [
              repositoryServiceProvider
                  .overrideWith((ref) => mockRepositoryService),
            ],
            child: MaterialApp(
              home: RepositoryDetailPage(
                repositoryId: RepositoryNatureId(
                  owner: owner,
                  repo: name,
                ),
              ),
            ),
          );
          await tester.pumpWidget(app);
          // ローティングUIが表示されている
          expect(find.byType(CircularProgressIndicator), findsOneWidget);
          await tester.pumpAndSettle();
          // リポジトリの情報が表示されていること
          expect(find.text(expectedRepository.description), findsOneWidget);
          // READMEの情報が表示されていること
          expect(find.byType(MarkdownBody), findsOneWidget);
        });
      });
    });

    group("読み込み状態", () {
      testWidgets("READMEのリンクをタップできること", (tester) async {
        final mockRepositoryService = MockRepositoryService();
        final mockRepositoryDetailController = MockRepositoryDetailController();
        const owner = "owner";
        const name = "name";
        const expectedUrl = "https://example.com";
        final expectedRepository = RepositoryTestHelper().make(1)[0];
        final readMe = RepositoryReadMe(
          owner: owner,
          name: name,
          content: "# ReadMe\n\nYou can tap [here]($expectedUrl).",
        );
        provideDummy<Repository>(expectedRepository);
        when(mockRepositoryService.getRepository(
          owner: anyNamed("owner"),
          name: anyNamed("name"),
        )).thenAnswer(
          (_) async => expectedRepository,
        );
        when(
          mockRepositoryService.getRepositoryReadMe(
            owner: anyNamed("owner"),
            name: anyNamed("name"),
          ),
        ).thenAnswer((_) async {
          return readMe;
        });
        when(mockRepositoryDetailController.onPressedReadMeLink(
          text: anyNamed("text"),
          href: anyNamed("href"),
        )).thenAnswer((_) async {});

        mockNetworkImagesFor(() async {
          final app = ProviderScope(
            overrides: [
              repositoryServiceProvider
                  .overrideWith((ref) => mockRepositoryService),
              repositoryDetailControllerProvider(readMe)
                  .overrideWith((ref) => mockRepositoryDetailController),
            ],
            child: MaterialApp(
              home: RepositoryDetailPage(
                repositoryId: RepositoryNatureId(
                  owner: owner,
                  repo: name,
                ),
              ),
            ),
          );
          await tester.pumpWidget(app);
          await tester.pumpAndSettle();
          // MarkdownBodyが表示されていること
          expect(find.byType(MarkdownBody), findsOneWidget);
          final markdownBody = tester.widget(
            find.byType(MarkdownBody),
          ) as MarkdownBody;
          // READMEのリンクをタップする
          markdownBody.onTapLink!("here", expectedUrl, "here");
          await tester.pumpAndSettle();
          // READMEのリンクをタップしたときの処理が呼ばれること
          verify(
            mockRepositoryDetailController.onPressedReadMeLink(
              text: "here",
              href: expectedUrl,
            ),
          ).called(1);
        });
      });
    });
  });
}
