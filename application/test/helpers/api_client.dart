import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

import '../services/repository_service_test.mocks.dart';

class APIClientTestHelper {
  MockAPIClient make({required String responseBody}) {
    final apiClient = MockAPIClient();
    when(apiClient.send(any)).thenAnswer(
      (_) async => Response(
        responseBody,
        200,
      ),
    );
    return apiClient;
  }
}
