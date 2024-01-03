// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_nature_id.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryNatureId _$RepositoryNatureIdFromJson(Map<String, dynamic> json) {
  return _RepositoryNatureId.fromJson(json);
}

/// @nodoc
mixin _$RepositoryNatureId {
  String get owner => throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryNatureIdCopyWith<RepositoryNatureId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryNatureIdCopyWith<$Res> {
  factory $RepositoryNatureIdCopyWith(
          RepositoryNatureId value, $Res Function(RepositoryNatureId) then) =
      _$RepositoryNatureIdCopyWithImpl<$Res, RepositoryNatureId>;
  @useResult
  $Res call({String owner, String repo});
}

/// @nodoc
class _$RepositoryNatureIdCopyWithImpl<$Res, $Val extends RepositoryNatureId>
    implements $RepositoryNatureIdCopyWith<$Res> {
  _$RepositoryNatureIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? repo = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryNatureIdImplCopyWith<$Res>
    implements $RepositoryNatureIdCopyWith<$Res> {
  factory _$$RepositoryNatureIdImplCopyWith(_$RepositoryNatureIdImpl value,
          $Res Function(_$RepositoryNatureIdImpl) then) =
      __$$RepositoryNatureIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String owner, String repo});
}

/// @nodoc
class __$$RepositoryNatureIdImplCopyWithImpl<$Res>
    extends _$RepositoryNatureIdCopyWithImpl<$Res, _$RepositoryNatureIdImpl>
    implements _$$RepositoryNatureIdImplCopyWith<$Res> {
  __$$RepositoryNatureIdImplCopyWithImpl(_$RepositoryNatureIdImpl _value,
      $Res Function(_$RepositoryNatureIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? repo = null,
  }) {
    return _then(_$RepositoryNatureIdImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryNatureIdImpl implements _RepositoryNatureId {
  _$RepositoryNatureIdImpl({required this.owner, required this.repo});

  factory _$RepositoryNatureIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryNatureIdImplFromJson(json);

  @override
  final String owner;
  @override
  final String repo;

  @override
  String toString() {
    return 'RepositoryNatureId(owner: $owner, repo: $repo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryNatureIdImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.repo, repo) || other.repo == repo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, owner, repo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryNatureIdImplCopyWith<_$RepositoryNatureIdImpl> get copyWith =>
      __$$RepositoryNatureIdImplCopyWithImpl<_$RepositoryNatureIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryNatureIdImplToJson(
      this,
    );
  }
}

abstract class _RepositoryNatureId implements RepositoryNatureId {
  factory _RepositoryNatureId(
      {required final String owner,
      required final String repo}) = _$RepositoryNatureIdImpl;

  factory _RepositoryNatureId.fromJson(Map<String, dynamic> json) =
      _$RepositoryNatureIdImpl.fromJson;

  @override
  String get owner;
  @override
  String get repo;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryNatureIdImplCopyWith<_$RepositoryNatureIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
