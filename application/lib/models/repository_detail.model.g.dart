// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryDetailImpl _$$RepositoryDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryDetailImpl(
      id: json['id'] as int,
      owner: RepositoryOwner.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      language: json['language'] as String,
      watchers: json['watchers'] as int,
      forks: json['forks'] as int,
      openIssues: json['open_issues'] as int,
    );

Map<String, dynamic> _$$RepositoryDetailImplToJson(
        _$RepositoryDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'name': instance.name,
      'description': instance.description,
      'language': instance.language,
      'watchers': instance.watchers,
      'forks': instance.forks,
      'open_issues': instance.openIssues,
    };
