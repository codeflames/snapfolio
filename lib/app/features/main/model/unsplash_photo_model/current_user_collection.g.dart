// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentUserCollection _$CurrentUserCollectionFromJson(
        Map<String, dynamic> json) =>
    CurrentUserCollection(
      id: json['id'] as int?,
      title: json['title'] as String?,
      publishedAt: json['published_at'] as String?,
      lastCollectedAt: json['last_collected_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      coverPhoto: json['cover_photo'],
      user: json['user'],
    );

Map<String, dynamic> _$CurrentUserCollectionToJson(
        CurrentUserCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'published_at': instance.publishedAt,
      'last_collected_at': instance.lastCollectedAt,
      'updated_at': instance.updatedAt,
      'cover_photo': instance.coverPhoto,
      'user': instance.user,
    };
