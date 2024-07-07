import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/artwork_for_top/artwork_for_top.dart';
import '../app_action.dart';

part 'get_top_artworks.freezed.dart';

@freezed
class GetTopArtworks with _$GetTopArtworks implements AppAction {
  const factory GetTopArtworks() = GetTopArtworksStart;

  const factory GetTopArtworks.successful({required List<ArtworkForTop> artworksForTop}) = GetTopArtworksSuccessful;

  @Implements<ErrorAction>()
  const factory GetTopArtworks.error(Object error, StackTrace stackTrace) = GetTopArtworksError;
}
