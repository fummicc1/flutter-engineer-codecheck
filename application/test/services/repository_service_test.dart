import 'dart:convert';

import 'package:application/network/api_client.dart';
import 'package:application/services/repository.service.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../helpers/repository.dart';
import 'repository_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<APIClient>()])
void main() {
  group("RepositoryService", () {
    late RepositoryService repositoryService;
    late MockAPIClient apiClient;
    setUp(() {
      apiClient = MockAPIClient();
      repositoryService = RepositoryService(apiClient: apiClient);
    });

    group("getRepositories", () {
      test("リポジトリの取得が行える", () async {
        final repositoriesStub = RepositoryTestHelper().make(5);
        const query = "flutter";
        when(apiClient.send(any)).thenAnswer(
          (_) async => Response(
            jsonEncode({
              "items": repositoriesStub.map((e) => e.toJson()).toList(),
            }),
            200,
          ),
        );
        final response = await repositoryService.getRepositories(query: query);
        verify(apiClient.send(any)).called(1);
        expect(response, repositoriesStub);
      });

      test("リポジトリの取得に失敗した場合、例外が発生する", () async {
        const query = "flutter";
        when(apiClient.send(any)).thenAnswer(
          (_) async => Response(
            jsonEncode({}),
            400,
          ),
        );
        expect(
          () async => await repositoryService.getRepositories(query: query),
          throwsException,
        );
      });
    });

    group("getRepository", () {
      test("リポジトリの取得が行える", () async {
        final repositoryStub = RepositoryTestHelper().make(1)[0];
        const owner = "owner";
        const name = "name";
        when(apiClient.send(any)).thenAnswer(
          (_) async => Response(
            jsonEncode(repositoryStub.toJson()),
            200,
          ),
        );
        final response = await repositoryService.getRepository(
          owner: owner,
          name: name,
        );
        verify(apiClient.send(any)).called(1);
        expect(response, repositoryStub);
      });

      test("API通信に失敗した場合、例外が発生する", () async {
        const owner = "owner";
        const name = "name";
        when(apiClient.send(any)).thenAnswer(
          (_) async => Response(
            jsonEncode({}),
            400,
          ),
        );
        expect(
          () async => await repositoryService.getRepository(
            owner: owner,
            name: name,
          ),
          throwsException,
        );
      });
    });
  });
}
