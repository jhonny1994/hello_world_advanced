// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articleNotifierHash() => r'c5738c8e5ff028da0427e2fcf73f13879dfaa5bb';

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

abstract class _$ArticleNotifier
    extends BuildlessAutoDisposeAsyncNotifier<Either<Article, String>> {
  late final Dio dio;

  FutureOr<Either<Article, String>> build(
    Dio dio,
  );
}

/// See also [ArticleNotifier].
@ProviderFor(ArticleNotifier)
const articleNotifierProvider = ArticleNotifierFamily();

/// See also [ArticleNotifier].
class ArticleNotifierFamily
    extends Family<AsyncValue<Either<Article, String>>> {
  /// See also [ArticleNotifier].
  const ArticleNotifierFamily();

  /// See also [ArticleNotifier].
  ArticleNotifierProvider call(
    Dio dio,
  ) {
    return ArticleNotifierProvider(
      dio,
    );
  }

  @override
  ArticleNotifierProvider getProviderOverride(
    covariant ArticleNotifierProvider provider,
  ) {
    return call(
      provider.dio,
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
  String? get name => r'articleNotifierProvider';
}

/// See also [ArticleNotifier].
class ArticleNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ArticleNotifier, Either<Article, String>> {
  /// See also [ArticleNotifier].
  ArticleNotifierProvider(
    Dio dio,
  ) : this._internal(
          () => ArticleNotifier()..dio = dio,
          from: articleNotifierProvider,
          name: r'articleNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articleNotifierHash,
          dependencies: ArticleNotifierFamily._dependencies,
          allTransitiveDependencies:
              ArticleNotifierFamily._allTransitiveDependencies,
          dio: dio,
        );

  ArticleNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dio,
  }) : super.internal();

  final Dio dio;

  @override
  FutureOr<Either<Article, String>> runNotifierBuild(
    covariant ArticleNotifier notifier,
  ) {
    return notifier.build(
      dio,
    );
  }

  @override
  Override overrideWith(ArticleNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ArticleNotifierProvider._internal(
        () => create()..dio = dio,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dio: dio,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ArticleNotifier,
      Either<Article, String>> createElement() {
    return _ArticleNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticleNotifierProvider && other.dio == dio;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dio.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ArticleNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<Either<Article, String>> {
  /// The parameter `dio` of this provider.
  Dio get dio;
}

class _ArticleNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ArticleNotifier,
        Either<Article, String>> with ArticleNotifierRef {
  _ArticleNotifierProviderElement(super.provider);

  @override
  Dio get dio => (origin as ArticleNotifierProvider).dio;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
