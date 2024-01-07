// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageState<S> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S initialS) initial,
    required TResult Function(S cache) loading,
    required TResult Function(S s) loaded,
    required TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)
        loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S initialS)? initial,
    TResult? Function(S cache)? loading,
    TResult? Function(S s)? loaded,
    TResult? Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S initialS)? initial,
    TResult Function(S cache)? loading,
    TResult Function(S s)? loaded,
    TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S> value) initial,
    required TResult Function(_Loading<S> value) loading,
    required TResult Function(_Loaded<S> value) loaded,
    required TResult Function(_LoadFailed<S> value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S> value)? initial,
    TResult? Function(_Loading<S> value)? loading,
    TResult? Function(_Loaded<S> value)? loaded,
    TResult? Function(_LoadFailed<S> value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S> value)? initial,
    TResult Function(_Loading<S> value)? loading,
    TResult Function(_Loaded<S> value)? loaded,
    TResult Function(_LoadFailed<S> value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<S, $Res> {
  factory $PageStateCopyWith(
          PageState<S> value, $Res Function(PageState<S>) then) =
      _$PageStateCopyWithImpl<S, $Res, PageState<S>>;
}

/// @nodoc
class _$PageStateCopyWithImpl<S, $Res, $Val extends PageState<S>>
    implements $PageStateCopyWith<S, $Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<S, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<S> value, $Res Function(_$InitialImpl<S>) then) =
      __$$InitialImplCopyWithImpl<S, $Res>;
  @useResult
  $Res call({S initialS});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<S, $Res>
    extends _$PageStateCopyWithImpl<S, $Res, _$InitialImpl<S>>
    implements _$$InitialImplCopyWith<S, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<S> _value, $Res Function(_$InitialImpl<S>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialS = freezed,
  }) {
    return _then(_$InitialImpl<S>(
      freezed == initialS
          ? _value.initialS
          : initialS // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$InitialImpl<S> extends _Initial<S> {
  const _$InitialImpl(this.initialS) : super._();

  @override
  final S initialS;

  @override
  String toString() {
    return 'PageState<$S>.initial(initialS: $initialS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<S> &&
            const DeepCollectionEquality().equals(other.initialS, initialS));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(initialS));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<S, _$InitialImpl<S>> get copyWith =>
      __$$InitialImplCopyWithImpl<S, _$InitialImpl<S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S initialS) initial,
    required TResult Function(S cache) loading,
    required TResult Function(S s) loaded,
    required TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)
        loadFailed,
  }) {
    return initial(initialS);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S initialS)? initial,
    TResult? Function(S cache)? loading,
    TResult? Function(S s)? loaded,
    TResult? Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
  }) {
    return initial?.call(initialS);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S initialS)? initial,
    TResult Function(S cache)? loading,
    TResult Function(S s)? loaded,
    TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(initialS);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S> value) initial,
    required TResult Function(_Loading<S> value) loading,
    required TResult Function(_Loaded<S> value) loaded,
    required TResult Function(_LoadFailed<S> value) loadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S> value)? initial,
    TResult? Function(_Loading<S> value)? loading,
    TResult? Function(_Loaded<S> value)? loaded,
    TResult? Function(_LoadFailed<S> value)? loadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S> value)? initial,
    TResult Function(_Loading<S> value)? loading,
    TResult Function(_Loaded<S> value)? loaded,
    TResult Function(_LoadFailed<S> value)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<S> extends PageState<S> {
  const factory _Initial(final S initialS) = _$InitialImpl<S>;
  const _Initial._() : super._();

  S get initialS;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<S, _$InitialImpl<S>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<S, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<S> value, $Res Function(_$LoadingImpl<S>) then) =
      __$$LoadingImplCopyWithImpl<S, $Res>;
  @useResult
  $Res call({S cache});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<S, $Res>
    extends _$PageStateCopyWithImpl<S, $Res, _$LoadingImpl<S>>
    implements _$$LoadingImplCopyWith<S, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<S> _value, $Res Function(_$LoadingImpl<S>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = freezed,
  }) {
    return _then(_$LoadingImpl<S>(
      freezed == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$LoadingImpl<S> extends _Loading<S> {
  const _$LoadingImpl(this.cache) : super._();

  @override
  final S cache;

  @override
  String toString() {
    return 'PageState<$S>.loading(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl<S> &&
            const DeepCollectionEquality().equals(other.cache, cache));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<S, _$LoadingImpl<S>> get copyWith =>
      __$$LoadingImplCopyWithImpl<S, _$LoadingImpl<S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S initialS) initial,
    required TResult Function(S cache) loading,
    required TResult Function(S s) loaded,
    required TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)
        loadFailed,
  }) {
    return loading(cache);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S initialS)? initial,
    TResult? Function(S cache)? loading,
    TResult? Function(S s)? loaded,
    TResult? Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
  }) {
    return loading?.call(cache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S initialS)? initial,
    TResult Function(S cache)? loading,
    TResult Function(S s)? loaded,
    TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cache);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S> value) initial,
    required TResult Function(_Loading<S> value) loading,
    required TResult Function(_Loaded<S> value) loaded,
    required TResult Function(_LoadFailed<S> value) loadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S> value)? initial,
    TResult? Function(_Loading<S> value)? loading,
    TResult? Function(_Loaded<S> value)? loaded,
    TResult? Function(_LoadFailed<S> value)? loadFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S> value)? initial,
    TResult Function(_Loading<S> value)? loading,
    TResult Function(_Loaded<S> value)? loaded,
    TResult Function(_LoadFailed<S> value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<S> extends PageState<S> {
  const factory _Loading(final S cache) = _$LoadingImpl<S>;
  const _Loading._() : super._();

  S get cache;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<S, _$LoadingImpl<S>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<S, $Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl<S> value, $Res Function(_$LoadedImpl<S>) then) =
      __$$LoadedImplCopyWithImpl<S, $Res>;
  @useResult
  $Res call({S s});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<S, $Res>
    extends _$PageStateCopyWithImpl<S, $Res, _$LoadedImpl<S>>
    implements _$$LoadedImplCopyWith<S, $Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl<S> _value, $Res Function(_$LoadedImpl<S>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = freezed,
  }) {
    return _then(_$LoadedImpl<S>(
      freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$LoadedImpl<S> extends _Loaded<S> {
  const _$LoadedImpl(this.s) : super._();

  @override
  final S s;

  @override
  String toString() {
    return 'PageState<$S>.loaded(s: $s)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl<S> &&
            const DeepCollectionEquality().equals(other.s, s));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(s));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<S, _$LoadedImpl<S>> get copyWith =>
      __$$LoadedImplCopyWithImpl<S, _$LoadedImpl<S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S initialS) initial,
    required TResult Function(S cache) loading,
    required TResult Function(S s) loaded,
    required TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)
        loadFailed,
  }) {
    return loaded(s);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S initialS)? initial,
    TResult? Function(S cache)? loading,
    TResult? Function(S s)? loaded,
    TResult? Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
  }) {
    return loaded?.call(s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S initialS)? initial,
    TResult Function(S cache)? loading,
    TResult Function(S s)? loaded,
    TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S> value) initial,
    required TResult Function(_Loading<S> value) loading,
    required TResult Function(_Loaded<S> value) loaded,
    required TResult Function(_LoadFailed<S> value) loadFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S> value)? initial,
    TResult? Function(_Loading<S> value)? loading,
    TResult? Function(_Loaded<S> value)? loaded,
    TResult? Function(_LoadFailed<S> value)? loadFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S> value)? initial,
    TResult Function(_Loading<S> value)? loading,
    TResult Function(_Loaded<S> value)? loaded,
    TResult Function(_LoadFailed<S> value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<S> extends PageState<S> {
  const factory _Loaded(final S s) = _$LoadedImpl<S>;
  const _Loaded._() : super._();

  S get s;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<S, _$LoadedImpl<S>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailedImplCopyWith<S, $Res> {
  factory _$$LoadFailedImplCopyWith(
          _$LoadFailedImpl<S> value, $Res Function(_$LoadFailedImpl<S>) then) =
      __$$LoadFailedImplCopyWithImpl<S, $Res>;
  @useResult
  $Res call({S s, Exception exception, Future<void> Function()? onDismiss});
}

/// @nodoc
class __$$LoadFailedImplCopyWithImpl<S, $Res>
    extends _$PageStateCopyWithImpl<S, $Res, _$LoadFailedImpl<S>>
    implements _$$LoadFailedImplCopyWith<S, $Res> {
  __$$LoadFailedImplCopyWithImpl(
      _$LoadFailedImpl<S> _value, $Res Function(_$LoadFailedImpl<S>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = freezed,
    Object? exception = null,
    Object? onDismiss = freezed,
  }) {
    return _then(_$LoadFailedImpl<S>(
      freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as S,
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      onDismiss: freezed == onDismiss
          ? _value.onDismiss
          : onDismiss // ignore: cast_nullable_to_non_nullable
              as Future<void> Function()?,
    ));
  }
}

/// @nodoc

class _$LoadFailedImpl<S> extends _LoadFailed<S> {
  const _$LoadFailedImpl(this.s, this.exception, {this.onDismiss}) : super._();

  @override
  final S s;
  @override
  final Exception exception;
  @override
  final Future<void> Function()? onDismiss;

  @override
  String toString() {
    return 'PageState<$S>.loadFailed(s: $s, exception: $exception, onDismiss: $onDismiss)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailedImpl<S> &&
            const DeepCollectionEquality().equals(other.s, s) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.onDismiss, onDismiss) ||
                other.onDismiss == onDismiss));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(s), exception, onDismiss);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailedImplCopyWith<S, _$LoadFailedImpl<S>> get copyWith =>
      __$$LoadFailedImplCopyWithImpl<S, _$LoadFailedImpl<S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S initialS) initial,
    required TResult Function(S cache) loading,
    required TResult Function(S s) loaded,
    required TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)
        loadFailed,
  }) {
    return loadFailed(s, exception, onDismiss);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S initialS)? initial,
    TResult? Function(S cache)? loading,
    TResult? Function(S s)? loaded,
    TResult? Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
  }) {
    return loadFailed?.call(s, exception, onDismiss);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S initialS)? initial,
    TResult Function(S cache)? loading,
    TResult Function(S s)? loaded,
    TResult Function(
            S s, Exception exception, Future<void> Function()? onDismiss)?
        loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(s, exception, onDismiss);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<S> value) initial,
    required TResult Function(_Loading<S> value) loading,
    required TResult Function(_Loaded<S> value) loaded,
    required TResult Function(_LoadFailed<S> value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<S> value)? initial,
    TResult? Function(_Loading<S> value)? loading,
    TResult? Function(_Loaded<S> value)? loaded,
    TResult? Function(_LoadFailed<S> value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<S> value)? initial,
    TResult Function(_Loading<S> value)? loading,
    TResult Function(_Loaded<S> value)? loaded,
    TResult Function(_LoadFailed<S> value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadFailed<S> extends PageState<S> {
  const factory _LoadFailed(final S s, final Exception exception,
      {final Future<void> Function()? onDismiss}) = _$LoadFailedImpl<S>;
  const _LoadFailed._() : super._();

  S get s;
  Exception get exception;
  Future<void> Function()? get onDismiss;
  @JsonKey(ignore: true)
  _$$LoadFailedImplCopyWith<S, _$LoadFailedImpl<S>> get copyWith =>
      throw _privateConstructorUsedError;
}
