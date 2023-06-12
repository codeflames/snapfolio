import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:snapfolio/app/core/api_service/api_service.dart';
import 'package:snapfolio/app/features/main/providers/cache_manager_provider.dart';
import 'package:snapfolio/app/features/main/repository/unsplash_repository.dart';
import 'package:snapfolio/app/features/main/services/unsplash_api.dart';

final unsplashRepositoryProvider = Provider<UnsplashRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final apiKey = dotenv.env['UNSPLASH_API_KEY']
      .toString(); // Replace with your actual API key
  final cacheManager = ref.watch(cacheManagerProvider);

  return UnsplashRepository(
    unsplashApi: UnsplashApi(dio, baseUrl: 'https://api.unsplash.com'),
    cacheManager: cacheManager,
    apiKey: apiKey,
  );
});
