import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artwork_for_art_movements/artwork_for_art_movements.dart';
import '../../app_action.dart';

part 'get_artworks_with_style.freezed.dart';

@freezed
class GetArtworksWithStyle with _$GetArtworksWithStyle implements AppAction {
  const factory GetArtworksWithStyle() = GetArtworksWithStyleStart;

  const factory GetArtworksWithStyle.successful({
    required List<ArtworkForArtMovements> artworksForArtMovements,
  }) = GetArtworksWithStyleSuccessful;

  @Implements<ErrorAction>()
  const factory GetArtworksWithStyle.error(Object error, StackTrace stackTrace) = GetArtworksWithStyleError;
}
