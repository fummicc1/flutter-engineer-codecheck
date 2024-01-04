import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.model.freezed.dart';
part 'repository.model.g.dart';

@freezed
sealed class Repository with _$Repository {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Repository({
    required int id,
    required RepositoryOwner owner,
    required String name,
    required String description,
    required String language,
    required int watchers,
    required int forks,
    required int openIssues,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class RepositoryOwner with _$RepositoryOwner {
  factory RepositoryOwner({
    required String login,
  }) = _RepositoryOwner;

  factory RepositoryOwner.fromJson(Map<String, dynamic> json) =>
      _$RepositoryOwnerFromJson(json);
}
