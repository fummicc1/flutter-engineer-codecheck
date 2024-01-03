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
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'name': instance.name,
      'description': instance.description,
    };

_$RepositoryOwnerImpl _$$RepositoryOwnerImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryOwnerImpl(
      login: json['login'] as String,
    );

Map<String, dynamic> _$$RepositoryOwnerImplToJson(
        _$RepositoryOwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
    };
