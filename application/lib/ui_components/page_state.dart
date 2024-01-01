import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_state.freezed.dart';

@freezed
class PageState<S> with _$PageState {
  const factory PageState.initial(S initialS) = _Initial<S>;
  const factory PageState.loading(S cache) = _Loading<S>;
  const factory PageState.loaded(S s) = _Loaded<S>;

  const PageState._();
}

extension PageStateExt<S> on PageState<S> {
  T typedWhen<T>({
    required T Function(S initialS) initial,
    required T Function(S cache) loading,
    required T Function(S S) loaded,
  }) {
    return when(
      initial: (initialState) => initial(initialState),
      loading: (cache) => loading(cache),
      loaded: (s) => loaded(s),
    );
  }

  bool isLoading() {
    return maybeWhen(
      loading: (_) => true,
      orElse: () => false,
    );
  }
}
