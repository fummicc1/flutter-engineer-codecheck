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
    required RepositoryOwner owner,
    required String name,
    required String description,
    required RepositoryVisibility visibility,
    required Language? language,
    required int watchers,
    required int forks,
    required int openIssues,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class RepositoryOwner with _$RepositoryOwner {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory RepositoryOwner({
    required String login,
    required String avatarUrl,
  }) = _RepositoryOwner;

  factory RepositoryOwner.fromJson(Map<String, dynamic> json) =>
      _$RepositoryOwnerFromJson(json);
}
