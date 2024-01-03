import 'package:application/models/repository.model.dart';
import 'package:faker/faker.dart';

class RepositoryTestHelper {
  List<Repository> make(int count) {
    return List.generate(count, (index) {
      return Repository(
        id: index + 1,
        name: faker.lorem.word(),
        description: faker.lorem.sentences(3).join("\n"),
      );
    });
  }
}
