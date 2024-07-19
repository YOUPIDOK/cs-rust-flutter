// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilettes_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$toilettesRepositoryHash() =>
    r'8becc718ea37af6c1e9b35646c20979612ad007b';

/// See also [toilettesRepository].
@ProviderFor(toilettesRepository)
final toilettesRepositoryProvider =
    AutoDisposeProvider<ToilettesRepository>.internal(
  toilettesRepository,
  name: r'toilettesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$toilettesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ToilettesRepositoryRef = AutoDisposeProviderRef<ToilettesRepository>;
String _$toilettesFutureHash() => r'4358caf1d67dd06d54906c5bb9d4c05f89254407';

/// See also [toilettesFuture].
@ProviderFor(toilettesFuture)
final toilettesFutureProvider = AutoDisposeFutureProvider<
    OperationResponse<GToilettesData, GToilettesVars>>.internal(
  toilettesFuture,
  name: r'toilettesFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$toilettesFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ToilettesFutureRef = AutoDisposeFutureProviderRef<
    OperationResponse<GToilettesData, GToilettesVars>>;
String _$nearToilettesFutureHash() =>
    r'12a26eb5d09b5fa5866c736122dcd25ee308658f';

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

/// See also [nearToilettesFuture].
@ProviderFor(nearToilettesFuture)
const nearToilettesFutureProvider = NearToilettesFutureFamily();

/// See also [nearToilettesFuture].
class NearToilettesFutureFamily extends Family<
    AsyncValue<OperationResponse<GNearToilettesData, GNearToilettesVars>>> {
  /// See also [nearToilettesFuture].
  const NearToilettesFutureFamily();

  /// See also [nearToilettesFuture].
  NearToilettesFutureProvider call(
    GNearToilettesVarsBuilder vars,
  ) {
    return NearToilettesFutureProvider(
      vars,
    );
  }

  @override
  NearToilettesFutureProvider getProviderOverride(
    covariant NearToilettesFutureProvider provider,
  ) {
    return call(
      provider.vars,
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
  String? get name => r'nearToilettesFutureProvider';
}

/// See also [nearToilettesFuture].
class NearToilettesFutureProvider extends AutoDisposeFutureProvider<
    OperationResponse<GNearToilettesData, GNearToilettesVars>> {
  /// See also [nearToilettesFuture].
  NearToilettesFutureProvider(
    GNearToilettesVarsBuilder vars,
  ) : this._internal(
          (ref) => nearToilettesFuture(
            ref as NearToilettesFutureRef,
            vars,
          ),
          from: nearToilettesFutureProvider,
          name: r'nearToilettesFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nearToilettesFutureHash,
          dependencies: NearToilettesFutureFamily._dependencies,
          allTransitiveDependencies:
              NearToilettesFutureFamily._allTransitiveDependencies,
          vars: vars,
        );

  NearToilettesFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vars,
  }) : super.internal();

  final GNearToilettesVarsBuilder vars;

  @override
  Override overrideWith(
    FutureOr<OperationResponse<GNearToilettesData, GNearToilettesVars>>
            Function(NearToilettesFutureRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NearToilettesFutureProvider._internal(
        (ref) => create(ref as NearToilettesFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vars: vars,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<
          OperationResponse<GNearToilettesData, GNearToilettesVars>>
      createElement() {
    return _NearToilettesFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NearToilettesFutureProvider && other.vars == vars;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vars.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NearToilettesFutureRef on AutoDisposeFutureProviderRef<
    OperationResponse<GNearToilettesData, GNearToilettesVars>> {
  /// The parameter `vars` of this provider.
  GNearToilettesVarsBuilder get vars;
}

class _NearToilettesFutureProviderElement
    extends AutoDisposeFutureProviderElement<
        OperationResponse<GNearToilettesData, GNearToilettesVars>>
    with NearToilettesFutureRef {
  _NearToilettesFutureProviderElement(super.provider);

  @override
  GNearToilettesVarsBuilder get vars => (origin as NearToilettesFutureProvider).vars;
}

String _$toiletteSubscriptionStreamHash() =>
    r'f39fb0e9348e33a46d0c81da9fa1ff0ef95d1656';

/// See also [toiletteSubscriptionStream].
@ProviderFor(toiletteSubscriptionStream)
const toiletteSubscriptionStreamProvider = ToiletteSubscriptionStreamFamily();

/// See also [toiletteSubscriptionStream].
class ToiletteSubscriptionStreamFamily extends Family<
    AsyncValue<
        OperationResponse<GToiletteSubscriptionData,
            GToiletteSubscriptionVars>>> {
  /// See also [toiletteSubscriptionStream].
  const ToiletteSubscriptionStreamFamily();

  /// See also [toiletteSubscriptionStream].
  ToiletteSubscriptionStreamProvider call(
    String id,
  ) {
    return ToiletteSubscriptionStreamProvider(
      id,
    );
  }

  @override
  ToiletteSubscriptionStreamProvider getProviderOverride(
    covariant ToiletteSubscriptionStreamProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'toiletteSubscriptionStreamProvider';
}

/// See also [toiletteSubscriptionStream].
class ToiletteSubscriptionStreamProvider extends AutoDisposeStreamProvider<
    OperationResponse<GToiletteSubscriptionData, GToiletteSubscriptionVars>> {
  /// See also [toiletteSubscriptionStream].
  ToiletteSubscriptionStreamProvider(
    String id,
  ) : this._internal(
          (ref) => toiletteSubscriptionStream(
            ref as ToiletteSubscriptionStreamRef,
            id,
          ),
          from: toiletteSubscriptionStreamProvider,
          name: r'toiletteSubscriptionStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$toiletteSubscriptionStreamHash,
          dependencies: ToiletteSubscriptionStreamFamily._dependencies,
          allTransitiveDependencies:
              ToiletteSubscriptionStreamFamily._allTransitiveDependencies,
          id: id,
        );

  ToiletteSubscriptionStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<
                OperationResponse<GToiletteSubscriptionData,
                    GToiletteSubscriptionVars>>
            Function(ToiletteSubscriptionStreamRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ToiletteSubscriptionStreamProvider._internal(
        (ref) => create(ref as ToiletteSubscriptionStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<
      OperationResponse<GToiletteSubscriptionData,
          GToiletteSubscriptionVars>> createElement() {
    return _ToiletteSubscriptionStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ToiletteSubscriptionStreamProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ToiletteSubscriptionStreamRef on AutoDisposeStreamProviderRef<
    OperationResponse<GToiletteSubscriptionData, GToiletteSubscriptionVars>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ToiletteSubscriptionStreamProviderElement
    extends AutoDisposeStreamProviderElement<
        OperationResponse<GToiletteSubscriptionData, GToiletteSubscriptionVars>>
    with ToiletteSubscriptionStreamRef {
  _ToiletteSubscriptionStreamProviderElement(super.provider);

  @override
  String get id => (origin as ToiletteSubscriptionStreamProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
