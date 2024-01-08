import 'package:application/models/language.model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.model.freezed.dart';
part 'repository.model.g.dart';

enum RepositoryVisibility {
  @JsonValue('public')
  public,
  @JsonValue('private')
  private,
}

extension RepositoryVisibilityExtension on RepositoryVisibility {
  IconData get icon {
    switch (this) {
      case RepositoryVisibility.public:
        return Icons.lock_open;
      case RepositoryVisibility.private:
        return Icons.lock;
    }
  }
}

@freezed
sealed class Repository with _$Repository {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Repository({
    required int id,
    required GitHubUser owner,
    required String name,
    required String description,
    required RepositoryVisibility visibility,
    // ignore: invalid_annotation_target
    @JsonKey(
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    required Language? language,
    required int watchers,
    required int forks,
    required int openIssues,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

extension RepositoryExtension on Repository {
  String get url {
    return 'https://github.com/$owner/$name';
  }
}

@freezed
class GitHubUser with _$GitHubUser {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory GitHubUser({
    required String login,
    required String avatarUrl,
  }) = _GitHubUser;

  factory GitHubUser.fromJson(Map<String, dynamic> json) =>
      _$GitHubUserFromJson(json);
}
