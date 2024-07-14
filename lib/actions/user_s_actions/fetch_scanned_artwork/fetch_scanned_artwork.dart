import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artwork/artwork.dart';
import '../../app_action.dart';

part 'fetch_scanned_artwork.freezed.dart';

@freezed
class FetchScannedArtwork with _$FetchScannedArtwork implements AppAction {
  const factory FetchScannedArtwork({
    required String artworkId,
    required ActionResult result,
  }) = FetchScannedArtworkStart;

  const factory FetchScannedArtwork.successful(Artwork scannedArtwork) = FetchScannedArtworkSuccessful;

  @Implements<ErrorAction>()
  const factory FetchScannedArtwork.error(Object error, StackTrace stackTrace) = FetchScannedArtworkError;
}
