import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'urls.g.dart';

@JsonSerializable()
class Urls extends Equatable {
  final String? raw;
  final String? full;
  final String? regular;
  final String? small;
  final String? thumb;

  const Urls({this.raw, this.full, this.regular, this.small, this.thumb});

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);

  Map<String, dynamic> toJson() => _$UrlsToJson(this);

  Urls copyWith({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
  }) {
    return Urls(
      raw: raw ?? this.raw,
      full: full ?? this.full,
      regular: regular ?? this.regular,
      small: small ?? this.small,
      thumb: thumb ?? this.thumb,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [raw, full, regular, small, thumb];
}
