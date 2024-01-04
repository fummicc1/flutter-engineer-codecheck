// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_readme.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryReadMe _$RepositoryReadMeFromJson(Map<String, dynamic> json) {
  return _RepositoryReadMe.fromJson(json);
}

/// @nodoc
mixin _$RepositoryReadMe {
  String get owner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryReadMeCopyWith<RepositoryReadMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryReadMeCopyWith<$Res> {
  factory $RepositoryReadMeCopyWith(
          RepositoryReadMe value, $Res Function(RepositoryReadMe) then) =
      _$RepositoryReadMeCopyWithImpl<$Res, RepositoryReadMe>;
  @useResult
  $Res call({String owner, String name, String content});
}

/// @nodoc
class _$RepositoryReadMeCopyWithImpl<$Res, $Val extends RepositoryReadMe>
    implements $RepositoryReadMeCopyWith<$Res> {
  _$RepositoryReadMeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryReadMeImplCopyWith<$Res>
    implements $RepositoryReadMeCopyWith<$Res> {
  factory _$$RepositoryReadMeImplCopyWith(_$RepositoryReadMeImpl value,
          $Res Function(_$RepositoryReadMeImpl) then) =
      __$$RepositoryReadMeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String owner, String name, String content});
}

/// @nodoc
class __$$RepositoryReadMeImplCopyWithImpl<$Res>
    extends _$RepositoryReadMeCopyWithImpl<$Res, _$RepositoryReadMeImpl>
    implements _$$RepositoryReadMeImplCopyWith<$Res> {
  __$$RepositoryReadMeImplCopyWithImpl(_$RepositoryReadMeImpl _value,
      $Res Function(_$RepositoryReadMeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_$RepositoryReadMeImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryReadMeImpl implements _RepositoryReadMe {
  _$RepositoryReadMeImpl(
      {required this.owner, required this.name, required this.content});

  factory _$RepositoryReadMeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryReadMeImplFromJson(json);

  @override
  final String owner;
  @override
  final String name;
  @override
  final String content;

  @override
  String toString() {
    return 'RepositoryReadMe(owner: $owner, name: $name, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryReadMeImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, owner, name, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryReadMeImplCopyWith<_$RepositoryReadMeImpl> get copyWith =>
      __$$RepositoryReadMeImplCopyWithImpl<_$RepositoryReadMeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryReadMeImplToJson(
      this,
    );
  }
}

abstract class _RepositoryReadMe implements RepositoryReadMe {
  factory _RepositoryReadMe(
      {required final String owner,
      required final String name,
      required final String content}) = _$RepositoryReadMeImpl;

  factory _RepositoryReadMe.fromJson(Map<String, dynamic> json) =
      _$RepositoryReadMeImpl.fromJson;

  @override
  String get owner;
  @override
  String get name;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryReadMeImplCopyWith<_$RepositoryReadMeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
