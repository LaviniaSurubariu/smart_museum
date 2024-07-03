import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/artwork/artwork.dart';
import '../app_action.dart';

part 'get_artworks.freezed.dart';

@freezed
class GetArtworks with _$GetArtworks implements AppAction {
  const factory GetArtworks() = GetArtworksStart;

  const factory GetArtworks.successful({
    required List<Artwork> artworks,
  }) = GetArtworksSuccessful;

  @Implements<ErrorAction>()
  const factory GetArtworks.error(Object error, StackTrace stackTrace) = GetArtworksError;
}
