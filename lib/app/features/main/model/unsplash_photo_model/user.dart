import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'links.dart';
import 'profile_image.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  final String? id;
  final String? username;
  final String? name;
  @JsonKey(name: 'portfolio_url')
  final String? portfolioUrl;
  final String? bio;
  final String? location;
  @JsonKey(name: 'total_likes')
  final int? totalLikes;
  @JsonKey(name: 'total_photos')
  final int? totalPhotos;
  @JsonKey(name: 'total_collections')
  final int? totalCollections;
  @JsonKey(name: 'instagram_username')
  final String? instagramUsername;
  @JsonKey(name: 'twitter_username')
  final String? twitterUsername;
  @JsonKey(name: 'profile_image')
  final ProfileImage? profileImage;
  final Links? links;

  const User({
    this.id,
    this.username,
    this.name,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.totalLikes,
    this.totalPhotos,
    this.totalCollections,
    this.instagramUsername,
    this.twitterUsername,
    this.profileImage,
    this.links,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? id,
    String? username,
    String? name,
    String? portfolioUrl,
    String? bio,
    String? location,
    int? totalLikes,
    int? totalPhotos,
    int? totalCollections,
    String? instagramUsername,
    String? twitterUsername,
    ProfileImage? profileImage,
    Links? links,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      name: name ?? this.name,
      portfolioUrl: portfolioUrl ?? this.portfolioUrl,
      bio: bio ?? this.bio,
      location: location ?? this.location,
      totalLikes: totalLikes ?? this.totalLikes,
      totalPhotos: totalPhotos ?? this.totalPhotos,
      totalCollections: totalCollections ?? this.totalCollections,
      instagramUsername: instagramUsername ?? this.instagramUsername,
      twitterUsername: twitterUsername ?? this.twitterUsername,
      profileImage: profileImage ?? this.profileImage,
      links: links ?? this.links,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      username,
      name,
      portfolioUrl,
      bio,
      location,
      totalLikes,
      totalPhotos,
      totalCollections,
      instagramUsername,
      twitterUsername,
      profileImage,
      links,
    ];
  }
}
