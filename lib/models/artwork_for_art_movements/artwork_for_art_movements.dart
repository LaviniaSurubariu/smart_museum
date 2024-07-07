import 'package:freezed_annotation/freezed_annotation.dart';

part 'artwork_for_art_movements.freezed.dart';

part 'artwork_for_art_movements.g.dart';

@freezed
class ArtworkForArtMovements with _$ArtworkForArtMovements {
  const factory ArtworkForArtMovements({
    required String uid,
    required String pictureUrl,
    required String style,
  }) = ArtworkForArtMovements$;

  factory ArtworkForArtMovements.fromJson(Map<dynamic, dynamic> json) =>
      _$ArtworkForArtMovementsFromJson(Map<String, dynamic>.from(json));
}
