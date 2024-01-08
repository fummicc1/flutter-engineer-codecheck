// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryDetailControllerHash() =>
    r'3ceecd8a14b32a072f9e63db7280ae5e7ce3d269';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [repositoryDetailController].
@ProviderFor(repositoryDetailController)
const repositoryDetailControllerProvider = RepositoryDetailControllerFamily();

/// See also [repositoryDetailController].
class RepositoryDetailControllerFamily
    extends Family<RepositoryDetailController> {
  /// See also [repositoryDetailController].
  const RepositoryDetailControllerFamily();

  /// See also [repositoryDetailController].
  RepositoryDetailControllerProvider call(
    RepositoryReadMe readMe,
  ) {
    return RepositoryDetailControllerProvider(
      readMe,
    );
  }

  @override
  RepositoryDetailControllerProvider getProviderOverride(
    covariant RepositoryDetailControllerProvider provider,
  ) {
    return call(
      provider.readMe,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repositoryDetailControllerProvider';
}

/// See also [repositoryDetailController].
class RepositoryDetailControllerProvider
    extends AutoDisposeProvider<RepositoryDetailController> {
  /// See also [repositoryDetailController].
  RepositoryDetailControllerProvider(
    RepositoryReadMe readMe,
  ) : this._internal(
          (ref) => repositoryDetailController(
            ref as RepositoryDetailControllerRef,
            readMe,
          ),
          from: repositoryDetailControllerProvider,
          name: r'repositoryDetailControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositoryDetailControllerHash,
          dependencies: RepositoryDetailControllerFamily._dependencies,
          allTransitiveDependencies:
              RepositoryDetailControllerFamily._allTransitiveDependencies,
          readMe: readMe,
        );

  RepositoryDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.readMe,
  }) : super.internal();

  final RepositoryReadMe readMe;

  @override
  Override overrideWith(
    RepositoryDetailController Function(RepositoryDetailControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepositoryDetailControllerProvider._internal(
        (ref) => create(ref as RepositoryDetailControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        readMe: readMe,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<RepositoryDetailController> createElement() {
    return _RepositoryDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoryDetailControllerProvider &&
        other.readMe == readMe;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, readMe.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepositoryDetailControllerRef
    on AutoDisposeProviderRef<RepositoryDetailController> {
  /// The parameter `readMe` of this provider.
  RepositoryReadMe get readMe;
}

class _RepositoryDetailControllerProviderElement
    extends AutoDisposeProviderElement<RepositoryDetailController>
    with RepositoryDetailControllerRef {
  _RepositoryDetailControllerProviderElement(super.provider);

  @override
  RepositoryReadMe get readMe =>
      (origin as RepositoryDetailControllerProvider).readMe;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
