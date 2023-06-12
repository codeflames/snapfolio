import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_image.g.dart';

@JsonSerializable()
class ProfileImage extends Equatable {
  final String? small;
  final String? medium;
  final String? large;

  const ProfileImage({this.small, this.medium, this.large});

  factory ProfileImage.fromJson(Map<String, dynamic> json) {
    return _$ProfileImageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileImageToJson(this);

  ProfileImage copyWith({
    String? small,
    String? medium,
    String? large,
  }) {
    return ProfileImage(
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [small, medium, large];
}
