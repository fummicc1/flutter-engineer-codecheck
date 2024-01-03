import 'package:application/ui_components/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class FeatureState {}

class FeaturePage<S extends FeatureState> extends HookConsumerWidget {
  const FeaturePage({
    super.key,
    required this.initialPageState,
  });

  final S initialPageState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = useState(PageState<S>.initial(initialPageState));
    return pageState.value.typedWhen(
      initial: (s) => initial(ref, pageState, s),
      loading: (s) => loading(ref, pageState, s),
      loaded: (s) => loaded(ref, pageState, s),
    );
  }

  Widget initial(
          WidgetRef ref, ValueNotifier<PageState<S>> pageState, S state) =>
      throw UnimplementedError();

  Widget loading(
          WidgetRef ref, ValueNotifier<PageState<S>> pageState, S state) =>
      throw UnimplementedError();

  Widget loaded(
          WidgetRef ref, ValueNotifier<PageState<S>> pageState, S state) =>
      throw UnimplementedError();
}
