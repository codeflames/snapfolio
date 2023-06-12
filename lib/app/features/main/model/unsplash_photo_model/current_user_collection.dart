import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_user_collection.g.dart';

@JsonSerializable()
class CurrentUserCollection extends Equatable {
  final int? id;
  final String? title;
  @JsonKey(name: 'published_at')
  final String? publishedAt;
  @JsonKey(name: 'last_collected_at')
  final String? lastCollectedAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'cover_photo')
  final dynamic coverPhoto;
  final dynamic user;

  const CurrentUserCollection({
    this.id,
    this.title,
    this.publishedAt,
    this.lastCollectedAt,
    this.updatedAt,
    this.coverPhoto,
    this.user,
  });

  factory CurrentUserCollection.fromJson(Map<String, dynamic> json) {
    return _$CurrentUserCollectionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurrentUserCollectionToJson(this);

  CurrentUserCollection copyWith({
    int? id,
    String? title,
    String? publishedAt,
    String? lastCollectedAt,
    String? updatedAt,
    dynamic coverPhoto,
    dynamic user,
  }) {
    return CurrentUserCollection(
      id: id ?? this.id,
      title: title ?? this.title,
      publishedAt: publishedAt ?? this.publishedAt,
      lastCollectedAt: lastCollectedAt ?? this.lastCollectedAt,
      updatedAt: updatedAt ?? this.updatedAt,
      coverPhoto: coverPhoto ?? this.coverPhoto,
      user: user ?? this.user,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      title,
      publishedAt,
      lastCollectedAt,
      updatedAt,
      coverPhoto,
      user,
    ];
  }
}
