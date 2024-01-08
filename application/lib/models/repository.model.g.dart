// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      id: json['id'] as int,
      owner: GitHubUser.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      visibility:
          $enumDecode(_$RepositoryVisibilityEnumMap, json['visibility']),
      language: $enumDecodeNullable(_$LanguageEnumMap, json['language'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
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
      'language': _$LanguageEnumMap[instance.language],
      'watchers': instance.watchers,
      'forks': instance.forks,
      'open_issues': instance.openIssues,
    };

const _$RepositoryVisibilityEnumMap = {
  RepositoryVisibility.public: 'public',
  RepositoryVisibility.private: 'private',
};

const _$LanguageEnumMap = {
  Language.dart: 'Dart',
  Language.java: 'Java',
  Language.kotlin: 'Kotlin',
  Language.swift: 'Swift',
  Language.typeScript: 'TypeScript',
  Language.javaScript: 'JavaScript',
  Language.python: 'Python',
  Language.ruby: 'Ruby',
  Language.php: 'PHP',
  Language.go: 'Go',
  Language.c: 'C',
  Language.csharp: 'CSharp',
  Language.cpp: 'C++',
  Language.rust: 'Rust',
  Language.html: 'HTML',
  Language.css: 'CSS',
};

_$GitHubUserImpl _$$GitHubUserImplFromJson(Map<String, dynamic> json) =>
    _$GitHubUserImpl(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$GitHubUserImplToJson(_$GitHubUserImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };
