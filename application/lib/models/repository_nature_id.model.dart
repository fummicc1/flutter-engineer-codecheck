import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_nature_id.model.freezed.dart';
part 'repository_nature_id.model.g.dart';

@freezed
class RepositoryNatureId with _$RepositoryNatureId {
  factory RepositoryNatureId({
    required String owner,
    required String repo,
  }) = _RepositoryNatureId;

  factory RepositoryNatureId.fromJson(Map<String, dynamic> json) =>
      _$RepositoryNatureIdFromJson(json);
}
