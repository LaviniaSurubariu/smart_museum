import 'package:freezed_annotation/freezed_annotation.dart';
import '../artist/artist.dart';
import '../artwork/artwork.dart';
import '../artwork_for_art_movements/artwork_for_art_movements.dart';
import '../artwork_for_top/artwork_for_top.dart';
import '../artwork_without_qrCode/artwork_without_qr_code.dart';
import '../comment/comment.dart';
import '../favourite/favourite.dart';
import '../user/app_user/app_user.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    List<ArtworkWithoutQrCode>? artworksWithoutQrCode,
    ArtworkWithoutQrCode? selectedArtworkWithoutQrCode,
    Artwork? scannedArtwork,
    Artwork? selectedArtwork,
    Artist? selectedArtist,
    bool? isFavourite,
    List<Favourite>? favourites,
    int? routeArtworkIndex,
    int? routeArtistIndex,
    List<Artwork>? artworks,
    List<Artist>? artists,
    List<Comment>? comments,
    List<ArtworkForArtMovements>? artworksForArtMovements,
    List<Artist>? topArtists,
    List<ArtworkForTop>? topArtworks,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
