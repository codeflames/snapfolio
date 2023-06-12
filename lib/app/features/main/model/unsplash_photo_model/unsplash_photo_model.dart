import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'current_user_collection.dart';
import 'links.dart';
import 'urls.dart';
import 'user.dart';

part 'unsplash_photo_model.g.dart';

@JsonSerializable()
class UnsplashPhotoModel extends Equatable {
  final String? id;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final int? width;
  final int? height;
  final String? color;
  @JsonKey(name: 'blur_hash')
  final String? blurHash;
  final int? likes;
  @JsonKey(name: 'liked_by_user')
  final bool? likedByUser;
  final String? description;
  final User? user;
  @JsonKey(name: 'current_user_collections')
  final List<CurrentUserCollection>? currentUserCollections;
  final Urls? urls;
  final Links? links;

  const UnsplashPhotoModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.likes,
    this.likedByUser,
    this.description,
    this.user,
    this.currentUserCollections,
    this.urls,
    this.links,
  });

  factory UnsplashPhotoModel.fromJson(Map<String, dynamic> json) {
    return _$UnsplashPhotoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UnsplashPhotoModelToJson(this);

  UnsplashPhotoModel copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    int? width,
    int? height,
    String? color,
    String? blurHash,
    int? likes,
    bool? likedByUser,
    String? description,
    User? user,
    List<CurrentUserCollection>? currentUserCollections,
    Urls? urls,
    Links? links,
  }) {
    return UnsplashPhotoModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
      blurHash: blurHash ?? this.blurHash,
      likes: likes ?? this.likes,
      likedByUser: likedByUser ?? this.likedByUser,
      description: description ?? this.description,
      user: user ?? this.user,
      currentUserCollections:
          currentUserCollections ?? this.currentUserCollections,
      urls: urls ?? this.urls,
      links: links ?? this.links,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      createdAt,
      updatedAt,
      width,
      height,
      color,
      blurHash,
      likes,
      likedByUser,
      description,
      user,
      currentUserCollections,
      urls,
      links,
    ];
  }
}
