import 'package:freezed_annotation/freezed_annotation.dart';
part 'artwork.freezed.dart';

part 'artwork.g.dart';

@freezed
class Artwork with _$Artwork {
  const factory Artwork({
    required String uid,
    required String title,
    required String artistFirstName,
    required String? artistLastName,
    required String artistUid,
    required int startCreationYear,
    required int endCreationYear,
    required String pictureUrl,
    required String audioUrl,
    required String? qrCodeUrl,
    required String type,
    required String style,
    required String provenance,
    required String originalTitle,
    required String description,
  }) = Artwork$;

  factory Artwork.fromJson(Map<dynamic, dynamic> json) => _$ArtworkFromJson(Map<String, dynamic>.from(json));
}
