import 'package:application/models/language.model.dart';
import 'package:application/models/repository.model.dart';
import 'package:faker/faker.dart';

class RepositoryTestHelper {
  List<Repository> make(int count) {
    return List.generate(count, (index) {
      return Repository(
        id: index + 1,
        owner: GitHubUser(
          login: faker.person.name(),
          avatarUrl: "https://picsum.photos/200",
        ),
        name: faker.lorem.word(),
        visibility: RepositoryVisibility.public,
        description: faker.lorem.sentences(3).join("\n"),
        language: Language.dart,
        watchers: faker.randomGenerator.integer(100),
        forks: faker.randomGenerator.integer(100),
        openIssues: faker.randomGenerator.integer(100),
      );
    });
  }
}
