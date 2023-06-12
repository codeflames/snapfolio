import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:snapfolio/app/features/main/model/unsplash_photo_model/unsplash_photo_model.dart';
import 'package:snapfolio/app/features/main/services/unsplash_api.dart';

class UnsplashRepository {
  final UnsplashApi unsplashApi;
  final CacheManager cacheManager;
  final String apiKey; // Add this field

  UnsplashRepository({
    required this.unsplashApi,
    required this.cacheManager,
    required this.apiKey, // Add this parameter
  });

  Future<List<UnsplashPhotoModel>> getPhotos(int page, int perPage) async {
    try {
      final photos =
          await unsplashApi.getPhotos(page, perPage, 'Client-ID $apiKey');
      return photos;
    } catch (e) {
      throw Exception('Failed to fetch photos: $e');
    }
  }

  Future<String?> getCachedImageUrl(String id) async {
    final imageUrl = await cacheManager.getSingleFile(id);
    return imageUrl.path;
  }
}
