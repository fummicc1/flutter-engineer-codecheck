// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      id: json['id'] as int,
      owner: RepositoryOwner.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      visibility:
          $enumDecode(_$RepositoryVisibilityEnumMap, json['visibility']),
      language: json['language'] as String?,
      watchers: json['watchers'] as int,
      forks: json['forks'] as int,
      openIssues: json['open_issues'] as int,
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'name': instance.name,
      'description': instance.description,
      'visibility': _$RepositoryVisibilityEnumMap[instance.visibility]!,
      'language': instance.language,
      'watchers': instance.watchers,
      'forks': instance.forks,
      'open_issues': instance.openIssues,
    };

const _$RepositoryVisibilityEnumMap = {
  RepositoryVisibility.public: 'public',
  RepositoryVisibility.private: 'private',
};

_$RepositoryOwnerImpl _$$RepositoryOwnerImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryOwnerImpl(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$RepositoryOwnerImplToJson(
        _$RepositoryOwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };
