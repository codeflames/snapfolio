import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import 'package:snapfolio/app/features/main/model/unsplash_photo_model/unsplash_photo_model.dart';

part 'unsplash_api.g.dart';

@RestApi(baseUrl: 'https://api.unsplash.com')
abstract class UnsplashApi {
  factory UnsplashApi(
    Dio dio, {
    String baseUrl,
  }) = _UnsplashApi;

  @GET('/photos')
  Future<List<UnsplashPhotoModel>> getPhotos(
    @Query('page') int page,
    @Query('per_page') int perPage,
    @Header('Authorization') String authorizationHeader, // Add this parameter
  );
}
