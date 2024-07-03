import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/artwork/artwork.dart';
import '../../models/artwork_without_qrCode/artwork_without_qr_code.dart';
import '../app_action.dart';

part 'set.freezed.dart';

@freezed
class SetSelectedArtworkWithoutQrCode with _$SetSelectedArtworkWithoutQrCode implements AppAction {
  const factory SetSelectedArtworkWithoutQrCode(ArtworkWithoutQrCode artworkWithoutQrCode) =
      SetSelectedArtworkWithoutQrCode$;
}

@freezed
class SetSelectedArtwork with _$SetSelectedArtwork implements AppAction {
  const factory SetSelectedArtwork(Artwork selectedArtwork) = SetSelectedArtwork$;
}
@freezed
class SetRouteIndex with _$SetRouteIndex implements AppAction {
  const factory SetRouteIndex(int routeIndex) = SetRouteIndex$;
}
