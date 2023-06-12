import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cacheManagerProvider = Provider<CacheManager>((ref) {
  return CacheManager(
    Config(
      'unsplash_cache',
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 100,
    ),
  );
});
