import 'package:freezed_annotation/freezed_annotation.dart';

part 'artwork_by_style.freezed.dart';

part 'artwork_by_style.g.dart';

@freezed
class ArtworkByStyle with _$ArtworkByStyle {
  const factory ArtworkByStyle({
    required String uid,
    required String title,
    required String pictureUrl,
    required String artistFirstName,
    required String artistLastName,
  }) = ArtworkByStyle$;

  factory ArtworkByStyle.fromJson(Map<dynamic, dynamic> json) =>
      _$ArtworkByStyleFromJson(Map<String, dynamic>.from(json));
}
