import 'package:application/models/repository.model.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:application/models/repository_readme.model.dart';
import 'package:application/ui_components/page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class RepositoryDetailState
    with _$RepositoryDetailState
    implements FeatureState {
  const factory RepositoryDetailState({
    required RepositoryNatureId repositoryId,
    Repository? repository,
    RepositoryReadMe? readMe,
  }) = _RepositoryDetailState;

  factory RepositoryDetailState.initial({
    required RepositoryNatureId repositoryId,
  }) =>
      RepositoryDetailState(
        repositoryId: repositoryId,
      );
}
