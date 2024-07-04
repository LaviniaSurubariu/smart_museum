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
class SetRouteArtworkIndex with _$SetRouteArtworkIndex implements AppAction {
  const factory SetRouteArtworkIndex(int routeArtworkIndex) = SetRouteArtworkIndex$;
}

@freezed
class SetRouteArtistIndex with _$SetRouteArtistIndex implements AppAction {
  const factory SetRouteArtistIndex(int routeArtistIndex) = SetRouteArtistIndex$;
}
