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
mixin _$SearchRepositoriesState {
  String get query => throw _privateConstructorUsedError;
  List<Repository> get repositories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchRepositoriesStateCopyWith<SearchRepositoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoriesStateCopyWith<$Res> {
  factory $SearchRepositoriesStateCopyWith(SearchRepositoriesState value,
          $Res Function(SearchRepositoriesState) then) =
      _$SearchRepositoriesStateCopyWithImpl<$Res, SearchRepositoriesState>;
  @useResult
  $Res call({String query, List<Repository> repositories});
}

/// @nodoc
class _$SearchRepositoriesStateCopyWithImpl<$Res,
        $Val extends SearchRepositoriesState>
    implements $SearchRepositoriesStateCopyWith<$Res> {
  _$SearchRepositoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? repositories = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRepositoriesStateImplCopyWith<$Res>
    implements $SearchRepositoriesStateCopyWith<$Res> {
  factory _$$SearchRepositoriesStateImplCopyWith(
          _$SearchRepositoriesStateImpl value,
          $Res Function(_$SearchRepositoriesStateImpl) then) =
      __$$SearchRepositoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<Repository> repositories});
}

/// @nodoc
class __$$SearchRepositoriesStateImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesStateCopyWithImpl<$Res,
        _$SearchRepositoriesStateImpl>
    implements _$$SearchRepositoriesStateImplCopyWith<$Res> {
  __$$SearchRepositoriesStateImplCopyWithImpl(
      _$SearchRepositoriesStateImpl _value,
      $Res Function(_$SearchRepositoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? repositories = null,
  }) {
    return _then(_$SearchRepositoriesStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
    ));
  }
}

/// @nodoc

class _$SearchRepositoriesStateImpl implements _SearchRepositoriesState {
  const _$SearchRepositoriesStateImpl(
      {this.query = "Flutter", required final List<Repository> repositories})
      : _repositories = repositories;

  @override
  @JsonKey()
  final String query;
  final List<Repository> _repositories;
  @override
  List<Repository> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  String toString() {
    return 'SearchRepositoriesState(query: $query, repositories: $repositories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_repositories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesStateImplCopyWith<_$SearchRepositoriesStateImpl>
      get copyWith => __$$SearchRepositoriesStateImplCopyWithImpl<
          _$SearchRepositoriesStateImpl>(this, _$identity);
}

abstract class _SearchRepositoriesState implements SearchRepositoriesState {
  const factory _SearchRepositoriesState(
          {final String query, required final List<Repository> repositories}) =
      _$SearchRepositoriesStateImpl;

  @override
  String get query;
  @override
  List<Repository> get repositories;
  @override
  @JsonKey(ignore: true)
  _$$SearchRepositoriesStateImplCopyWith<_$SearchRepositoriesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
