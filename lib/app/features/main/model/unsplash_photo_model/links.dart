import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'links.g.dart';

@JsonSerializable()
class Links extends Equatable {
  final String? self;
  final String? html;
  final String? photos;
  final String? likes;
  final String? portfolio;

  const Links({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);

  Links copyWith({
    String? self,
    String? html,
    String? photos,
    String? likes,
    String? portfolio,
  }) {
    return Links(
      self: self ?? this.self,
      html: html ?? this.html,
      photos: photos ?? this.photos,
      likes: likes ?? this.likes,
      portfolio: portfolio ?? this.portfolio,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [self, html, photos, likes, portfolio];
}
