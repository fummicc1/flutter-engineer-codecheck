import 'package:application/models/repository.model.dart';
import 'package:faker/faker.dart';

class RepositoryTestHelper {
  List<Repository> make(int count) {
    return List.generate(count, (index) {
      return Repository(
        id: index + 1,
        owner: RepositoryOwner(
          login: faker.person.name(),
        ),
        name: faker.lorem.word(),
        description: faker.lorem.sentences(3).join("\n"),
        language: "Dart",
        watchers: faker.randomGenerator.integer(100),
        forks: faker.randomGenerator.integer(100),
        openIssues: faker.randomGenerator.integer(100),
      );
    });
  }
}
