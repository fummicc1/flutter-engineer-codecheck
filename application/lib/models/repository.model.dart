import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.model.freezed.dart';
part 'repository.model.g.dart';

@freezed
sealed class Repository with _$Repository {
  factory Repository({
    required int id,
    required String name,
    required String description,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}
