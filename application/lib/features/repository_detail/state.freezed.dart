// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepositoryDetailState {
  RepositoryNatureId get repositoryId => throw _privateConstructorUsedError;
  Repository? get repository => throw _privateConstructorUsedError;
  RepositoryReadMe? get readMe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryDetailStateCopyWith<RepositoryDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDetailStateCopyWith<$Res> {
  factory $RepositoryDetailStateCopyWith(RepositoryDetailState value,
          $Res Function(RepositoryDetailState) then) =
      _$RepositoryDetailStateCopyWithImpl<$Res, RepositoryDetailState>;
  @useResult
  $Res call(
      {RepositoryNatureId repositoryId,
      Repository? repository,
      RepositoryReadMe? readMe});

  $RepositoryNatureIdCopyWith<$Res> get repositoryId;
  $RepositoryCopyWith<$Res>? get repository;
  $RepositoryReadMeCopyWith<$Res>? get readMe;
}

/// @nodoc
class _$RepositoryDetailStateCopyWithImpl<$Res,
        $Val extends RepositoryDetailState>
    implements $RepositoryDetailStateCopyWith<$Res> {
  _$RepositoryDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryId = null,
    Object? repository = freezed,
    Object? readMe = freezed,
  }) {
    return _then(_value.copyWith(
      repositoryId: null == repositoryId
          ? _value.repositoryId
          : repositoryId // ignore: cast_nullable_to_non_nullable
              as RepositoryNatureId,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      readMe: freezed == readMe
          ? _value.readMe
          : readMe // ignore: cast_nullable_to_non_nullable
              as RepositoryReadMe?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryNatureIdCopyWith<$Res> get repositoryId {
    return $RepositoryNatureIdCopyWith<$Res>(_value.repositoryId, (value) {
      return _then(_value.copyWith(repositoryId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryCopyWith<$Res>? get repository {
    if (_value.repository == null) {
      return null;
    }

    return $RepositoryCopyWith<$Res>(_value.repository!, (value) {
      return _then(_value.copyWith(repository: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryReadMeCopyWith<$Res>? get readMe {
    if (_value.readMe == null) {
      return null;
    }

    return $RepositoryReadMeCopyWith<$Res>(_value.readMe!, (value) {
      return _then(_value.copyWith(readMe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryDetailStateImplCopyWith<$Res>
    implements $RepositoryDetailStateCopyWith<$Res> {
  factory _$$RepositoryDetailStateImplCopyWith(
          _$RepositoryDetailStateImpl value,
          $Res Function(_$RepositoryDetailStateImpl) then) =
      __$$RepositoryDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RepositoryNatureId repositoryId,
      Repository? repository,
      RepositoryReadMe? readMe});

  @override
  $RepositoryNatureIdCopyWith<$Res> get repositoryId;
  @override
  $RepositoryCopyWith<$Res>? get repository;
  @override
  $RepositoryReadMeCopyWith<$Res>? get readMe;
}

/// @nodoc
class __$$RepositoryDetailStateImplCopyWithImpl<$Res>
    extends _$RepositoryDetailStateCopyWithImpl<$Res,
        _$RepositoryDetailStateImpl>
    implements _$$RepositoryDetailStateImplCopyWith<$Res> {
  __$$RepositoryDetailStateImplCopyWithImpl(_$RepositoryDetailStateImpl _value,
      $Res Function(_$RepositoryDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryId = null,
    Object? repository = freezed,
    Object? readMe = freezed,
  }) {
    return _then(_$RepositoryDetailStateImpl(
      repositoryId: null == repositoryId
          ? _value.repositoryId
          : repositoryId // ignore: cast_nullable_to_non_nullable
              as RepositoryNatureId,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      readMe: freezed == readMe
          ? _value.readMe
          : readMe // ignore: cast_nullable_to_non_nullable
              as RepositoryReadMe?,
    ));
  }
}

/// @nodoc

class _$RepositoryDetailStateImpl implements _RepositoryDetailState {
  const _$RepositoryDetailStateImpl(
      {required this.repositoryId, this.repository, this.readMe});

  @override
  final RepositoryNatureId repositoryId;
  @override
  final Repository? repository;
  @override
  final RepositoryReadMe? readMe;

  @override
  String toString() {
    return 'RepositoryDetailState(repositoryId: $repositoryId, repository: $repository, readMe: $readMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryDetailStateImpl &&
            (identical(other.repositoryId, repositoryId) ||
                other.repositoryId == repositoryId) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            (identical(other.readMe, readMe) || other.readMe == readMe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, repositoryId, repository, readMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryDetailStateImplCopyWith<_$RepositoryDetailStateImpl>
      get copyWith => __$$RepositoryDetailStateImplCopyWithImpl<
          _$RepositoryDetailStateImpl>(this, _$identity);
}

abstract class _RepositoryDetailState implements RepositoryDetailState {
  const factory _RepositoryDetailState(
      {required final RepositoryNatureId repositoryId,
      final Repository? repository,
      final RepositoryReadMe? readMe}) = _$RepositoryDetailStateImpl;

  @override
  RepositoryNatureId get repositoryId;
  @override
  Repository? get repository;
  @override
  RepositoryReadMe? get readMe;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryDetailStateImplCopyWith<_$RepositoryDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
