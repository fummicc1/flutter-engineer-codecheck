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
mixin _$RepositoryStargazersState {
  RepositoryNatureId get repositoryId => throw _privateConstructorUsedError;
  List<GitHubUser> get stargazers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryStargazersStateCopyWith<RepositoryStargazersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryStargazersStateCopyWith<$Res> {
  factory $RepositoryStargazersStateCopyWith(RepositoryStargazersState value,
          $Res Function(RepositoryStargazersState) then) =
      _$RepositoryStargazersStateCopyWithImpl<$Res, RepositoryStargazersState>;
  @useResult
  $Res call({RepositoryNatureId repositoryId, List<GitHubUser> stargazers});

  $RepositoryNatureIdCopyWith<$Res> get repositoryId;
}

/// @nodoc
class _$RepositoryStargazersStateCopyWithImpl<$Res,
        $Val extends RepositoryStargazersState>
    implements $RepositoryStargazersStateCopyWith<$Res> {
  _$RepositoryStargazersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryId = null,
    Object? stargazers = null,
  }) {
    return _then(_value.copyWith(
      repositoryId: null == repositoryId
          ? _value.repositoryId
          : repositoryId // ignore: cast_nullable_to_non_nullable
              as RepositoryNatureId,
      stargazers: null == stargazers
          ? _value.stargazers
          : stargazers // ignore: cast_nullable_to_non_nullable
              as List<GitHubUser>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryNatureIdCopyWith<$Res> get repositoryId {
    return $RepositoryNatureIdCopyWith<$Res>(_value.repositoryId, (value) {
      return _then(_value.copyWith(repositoryId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryStargazersStateImplCopyWith<$Res>
    implements $RepositoryStargazersStateCopyWith<$Res> {
  factory _$$RepositoryStargazersStateImplCopyWith(
          _$RepositoryStargazersStateImpl value,
          $Res Function(_$RepositoryStargazersStateImpl) then) =
      __$$RepositoryStargazersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RepositoryNatureId repositoryId, List<GitHubUser> stargazers});

  @override
  $RepositoryNatureIdCopyWith<$Res> get repositoryId;
}

/// @nodoc
class __$$RepositoryStargazersStateImplCopyWithImpl<$Res>
    extends _$RepositoryStargazersStateCopyWithImpl<$Res,
        _$RepositoryStargazersStateImpl>
    implements _$$RepositoryStargazersStateImplCopyWith<$Res> {
  __$$RepositoryStargazersStateImplCopyWithImpl(
      _$RepositoryStargazersStateImpl _value,
      $Res Function(_$RepositoryStargazersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryId = null,
    Object? stargazers = null,
  }) {
    return _then(_$RepositoryStargazersStateImpl(
      repositoryId: null == repositoryId
          ? _value.repositoryId
          : repositoryId // ignore: cast_nullable_to_non_nullable
              as RepositoryNatureId,
      stargazers: null == stargazers
          ? _value._stargazers
          : stargazers // ignore: cast_nullable_to_non_nullable
              as List<GitHubUser>,
    ));
  }
}

/// @nodoc

class _$RepositoryStargazersStateImpl implements _RepositoryStargazersState {
  _$RepositoryStargazersStateImpl(
      {required this.repositoryId,
      final List<GitHubUser> stargazers = const []})
      : _stargazers = stargazers;

  @override
  final RepositoryNatureId repositoryId;
  final List<GitHubUser> _stargazers;
  @override
  @JsonKey()
  List<GitHubUser> get stargazers {
    if (_stargazers is EqualUnmodifiableListView) return _stargazers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stargazers);
  }

  @override
  String toString() {
    return 'RepositoryStargazersState(repositoryId: $repositoryId, stargazers: $stargazers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryStargazersStateImpl &&
            (identical(other.repositoryId, repositoryId) ||
                other.repositoryId == repositoryId) &&
            const DeepCollectionEquality()
                .equals(other._stargazers, _stargazers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repositoryId,
      const DeepCollectionEquality().hash(_stargazers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryStargazersStateImplCopyWith<_$RepositoryStargazersStateImpl>
      get copyWith => __$$RepositoryStargazersStateImplCopyWithImpl<
          _$RepositoryStargazersStateImpl>(this, _$identity);
}

abstract class _RepositoryStargazersState implements RepositoryStargazersState {
  factory _RepositoryStargazersState(
      {required final RepositoryNatureId repositoryId,
      final List<GitHubUser> stargazers}) = _$RepositoryStargazersStateImpl;

  @override
  RepositoryNatureId get repositoryId;
  @override
  List<GitHubUser> get stargazers;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryStargazersStateImplCopyWith<_$RepositoryStargazersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
