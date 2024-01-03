import 'package:application/models/repository.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail.model.freezed.dart';
part 'repository_detail.model.g.dart';

@freezed
class RepositoryDetail with _$RepositoryDetail {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory RepositoryDetail({
    required int id,
    required RepositoryOwner owner,
    required String name,
    required String description,
    required String language,
    required int watchers,
    required int forks,
    required int openIssues,
  }) = _RepositoryDetail;

  factory RepositoryDetail.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDetailFromJson(json);
}
