// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnsplashPhotoModel _$UnsplashPhotoModelFromJson(Map<String, dynamic> json) =>
    UnsplashPhotoModel(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      color: json['color'] as String?,
      blurHash: json['blur_hash'] as String?,
      likes: json['likes'] as int?,
      likedByUser: json['liked_by_user'] as bool?,
      description: json['description'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      currentUserCollections: (json['current_user_collections']
              as List<dynamic>?)
          ?.map(
              (e) => CurrentUserCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: json['urls'] == null
          ? null
          : Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UnsplashPhotoModelToJson(UnsplashPhotoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blur_hash': instance.blurHash,
      'likes': instance.likes,
      'liked_by_user': instance.likedByUser,
      'description': instance.description,
      'user': instance.user,
      'current_user_collections': instance.currentUserCollections,
      'urls': instance.urls,
      'links': instance.links,
    };
