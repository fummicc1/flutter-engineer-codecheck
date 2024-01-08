import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_readme.model.freezed.dart';
part 'repository_readme.model.g.dart';

@freezed
class RepositoryReadMe with _$RepositoryReadMe {
  factory RepositoryReadMe({
    required String owner,
    required String name,
    required String content,
  }) = _RepositoryReadMe;

  factory RepositoryReadMe.fromJson(Map<String, dynamic> json) =>
      _$RepositoryReadMeFromJson(json);
}

extension RepositoryReadMeX on RepositoryReadMe {
  String get contentUrl => "https://github.com/$owner/$name?tab=readme-ov-file";
}
