// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  int get id => throw _privateConstructorUsedError;
  GitHubUser get owner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  RepositoryVisibility get visibility =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  Language? get language => throw _privateConstructorUsedError;
  int get watchers => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  int get openIssues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call(
      {int id,
      GitHubUser owner,
      String name,
      String description,
      RepositoryVisibility visibility,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      Language? language,
      int watchers,
      int forks,
      int openIssues});

  $GitHubUserCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? name = null,
    Object? description = null,
    Object? visibility = null,
    Object? language = freezed,
    Object? watchers = null,
    Object? forks = null,
    Object? openIssues = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GitHubUser,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as RepositoryVisibility,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GitHubUserCopyWith<$Res> get owner {
    return $GitHubUserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryImplCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$RepositoryImplCopyWith(
          _$RepositoryImpl value, $Res Function(_$RepositoryImpl) then) =
      __$$RepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      GitHubUser owner,
      String name,
      String description,
      RepositoryVisibility visibility,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      Language? language,
      int watchers,
      int forks,
      int openIssues});

  @override
  $GitHubUserCopyWith<$Res> get owner;
}

/// @nodoc
class __$$RepositoryImplCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$RepositoryImpl>
    implements _$$RepositoryImplCopyWith<$Res> {
  __$$RepositoryImplCopyWithImpl(
      _$RepositoryImpl _value, $Res Function(_$RepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? name = null,
    Object? description = null,
    Object? visibility = null,
    Object? language = freezed,
    Object? watchers = null,
    Object? forks = null,
    Object? openIssues = null,
  }) {
    return _then(_$RepositoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GitHubUser,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as RepositoryVisibility,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RepositoryImpl implements _Repository {
  _$RepositoryImpl(
      {required this.id,
      required this.owner,
      required this.name,
      required this.description,
      required this.visibility,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      required this.language,
      required this.watchers,
      required this.forks,
      required this.openIssues});

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

  @override
  final int id;
  @override
  final GitHubUser owner;
  @override
  final String name;
  @override
  final String description;
  @override
  final RepositoryVisibility visibility;
// ignore: invalid_annotation_target
  @override
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final Language? language;
  @override
  final int watchers;
  @override
  final int forks;
  @override
  final int openIssues;

  @override
  String toString() {
    return 'Repository(id: $id, owner: $owner, name: $name, description: $description, visibility: $visibility, language: $language, watchers: $watchers, forks: $forks, openIssues: $openIssues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.watchers, watchers) ||
                other.watchers == watchers) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.openIssues, openIssues) ||
                other.openIssues == openIssues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, owner, name, description,
      visibility, language, watchers, forks, openIssues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      __$$RepositoryImplCopyWithImpl<_$RepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryImplToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  factory _Repository(
      {required final int id,
      required final GitHubUser owner,
      required final String name,
      required final String description,
      required final RepositoryVisibility visibility,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      required final Language? language,
      required final int watchers,
      required final int forks,
      required final int openIssues}) = _$RepositoryImpl;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

  @override
  int get id;
  @override
  GitHubUser get owner;
  @override
  String get name;
  @override
  String get description;
  @override
  RepositoryVisibility get visibility;
  @override // ignore: invalid_annotation_target
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  Language? get language;
  @override
  int get watchers;
  @override
  int get forks;
  @override
  int get openIssues;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitHubUser _$GitHubUserFromJson(Map<String, dynamic> json) {
  return _GitHubUser.fromJson(json);
}

/// @nodoc
mixin _$GitHubUser {
  String get login => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubUserCopyWith<GitHubUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubUserCopyWith<$Res> {
  factory $GitHubUserCopyWith(
          GitHubUser value, $Res Function(GitHubUser) then) =
      _$GitHubUserCopyWithImpl<$Res, GitHubUser>;
  @useResult
  $Res call({String login, String avatarUrl});
}

/// @nodoc
class _$GitHubUserCopyWithImpl<$Res, $Val extends GitHubUser>
    implements $GitHubUserCopyWith<$Res> {
  _$GitHubUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubUserImplCopyWith<$Res>
    implements $GitHubUserCopyWith<$Res> {
  factory _$$GitHubUserImplCopyWith(
          _$GitHubUserImpl value, $Res Function(_$GitHubUserImpl) then) =
      __$$GitHubUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String avatarUrl});
}

/// @nodoc
class __$$GitHubUserImplCopyWithImpl<$Res>
    extends _$GitHubUserCopyWithImpl<$Res, _$GitHubUserImpl>
    implements _$$GitHubUserImplCopyWith<$Res> {
  __$$GitHubUserImplCopyWithImpl(
      _$GitHubUserImpl _value, $Res Function(_$GitHubUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$GitHubUserImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GitHubUserImpl implements _GitHubUser {
  _$GitHubUserImpl({required this.login, required this.avatarUrl});

  factory _$GitHubUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubUserImplFromJson(json);

  @override
  final String login;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'GitHubUser(login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubUserImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubUserImplCopyWith<_$GitHubUserImpl> get copyWith =>
      __$$GitHubUserImplCopyWithImpl<_$GitHubUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubUserImplToJson(
      this,
    );
  }
}

abstract class _GitHubUser implements GitHubUser {
  factory _GitHubUser(
      {required final String login,
      required final String avatarUrl}) = _$GitHubUserImpl;

  factory _GitHubUser.fromJson(Map<String, dynamic> json) =
      _$GitHubUserImpl.fromJson;

  @override
  String get login;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$GitHubUserImplCopyWith<_$GitHubUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
