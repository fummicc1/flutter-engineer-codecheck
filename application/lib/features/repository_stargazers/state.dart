import 'package:application/models/repository.model.dart';
import 'package:application/models/repository_nature_id.model.dart';
import 'package:application/ui_components/page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class RepositoryStargazersState
    with _$RepositoryStargazersState
    implements FeatureState {
  factory RepositoryStargazersState({
    required RepositoryNatureId repositoryId,
    @Default([]) List<RepositoryOwner> stargazers,
  }) = _RepositoryStargazersState;
}
