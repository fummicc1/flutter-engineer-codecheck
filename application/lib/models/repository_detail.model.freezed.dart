// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_detail.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryDetail _$RepositoryDetailFromJson(Map<String, dynamic> json) {
  return _RepositoryDetail.fromJson(json);
}

/// @nodoc
mixin _$RepositoryDetail {
  int get id => throw _privateConstructorUsedError;
  RepositoryOwner get owner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get watchers => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  int get openIssues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryDetailCopyWith<RepositoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDetailCopyWith<$Res> {
  factory $RepositoryDetailCopyWith(
          RepositoryDetail value, $Res Function(RepositoryDetail) then) =
      _$RepositoryDetailCopyWithImpl<$Res, RepositoryDetail>;
  @useResult
  $Res call(
      {int id,
      RepositoryOwner owner,
      String name,
      String description,
      String language,
      int watchers,
      int forks,
      int openIssues});

  $RepositoryOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryDetailCopyWithImpl<$Res, $Val extends RepositoryDetail>
    implements $RepositoryDetailCopyWith<$Res> {
  _$RepositoryDetailCopyWithImpl(this._value, this._then);

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
    Object? language = null,
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
              as RepositoryOwner,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
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
  $RepositoryOwnerCopyWith<$Res> get owner {
    return $RepositoryOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryDetailImplCopyWith<$Res>
    implements $RepositoryDetailCopyWith<$Res> {
  factory _$$RepositoryDetailImplCopyWith(_$RepositoryDetailImpl value,
          $Res Function(_$RepositoryDetailImpl) then) =
      __$$RepositoryDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      RepositoryOwner owner,
      String name,
      String description,
      String language,
      int watchers,
      int forks,
      int openIssues});

  @override
  $RepositoryOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$RepositoryDetailImplCopyWithImpl<$Res>
    extends _$RepositoryDetailCopyWithImpl<$Res, _$RepositoryDetailImpl>
    implements _$$RepositoryDetailImplCopyWith<$Res> {
  __$$RepositoryDetailImplCopyWithImpl(_$RepositoryDetailImpl _value,
      $Res Function(_$RepositoryDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? name = null,
    Object? description = null,
    Object? language = null,
    Object? watchers = null,
    Object? forks = null,
    Object? openIssues = null,
  }) {
    return _then(_$RepositoryDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as RepositoryOwner,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$RepositoryDetailImpl implements _RepositoryDetail {
  _$RepositoryDetailImpl(
      {required this.id,
      required this.owner,
      required this.name,
      required this.description,
      required this.language,
      required this.watchers,
      required this.forks,
      required this.openIssues});

  factory _$RepositoryDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryDetailImplFromJson(json);

  @override
  final int id;
  @override
  final RepositoryOwner owner;
  @override
  final String name;
  @override
  final String description;
  @override
  final String language;
  @override
  final int watchers;
  @override
  final int forks;
  @override
  final int openIssues;

  @override
  String toString() {
    return 'RepositoryDetail(id: $id, owner: $owner, name: $name, description: $description, language: $language, watchers: $watchers, forks: $forks, openIssues: $openIssues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
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
      language, watchers, forks, openIssues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryDetailImplCopyWith<_$RepositoryDetailImpl> get copyWith =>
      __$$RepositoryDetailImplCopyWithImpl<_$RepositoryDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryDetailImplToJson(
      this,
    );
  }
}

abstract class _RepositoryDetail implements RepositoryDetail {
  factory _RepositoryDetail(
      {required final int id,
      required final RepositoryOwner owner,
      required final String name,
      required final String description,
      required final String language,
      required final int watchers,
      required final int forks,
      required final int openIssues}) = _$RepositoryDetailImpl;

  factory _RepositoryDetail.fromJson(Map<String, dynamic> json) =
      _$RepositoryDetailImpl.fromJson;

  @override
  int get id;
  @override
  RepositoryOwner get owner;
  @override
  String get name;
  @override
  String get description;
  @override
  String get language;
  @override
  int get watchers;
  @override
  int get forks;
  @override
  int get openIssues;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryDetailImplCopyWith<_$RepositoryDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
