import 'package:application/models/repository.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SearchRepositoriesState with _$SearchRepositoriesState {
  const factory SearchRepositoriesState({
    @Default("Flutter") String query,
    required List<Repository> repositories,
  }) = _SearchRepositoriesState;

  factory SearchRepositoriesState.initial() => const SearchRepositoriesState(
        repositories: [],
      );
}
