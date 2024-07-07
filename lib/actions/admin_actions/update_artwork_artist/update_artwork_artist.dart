import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artist_for_fetch/artist_for_fetch.dart';
import '../../app_action.dart';

part 'update_artwork_artist.freezed.dart';

@freezed
class UpdateArtworkArtist with _$UpdateArtworkArtist implements AppAction {
  const factory UpdateArtworkArtist({required ArtistForFetch artist, required String artworkId}) =
      UpdateArtworkArtistStart;

  const factory UpdateArtworkArtist.successful(ArtistForFetch artist) = UpdateArtworkArtistSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkArtist.error(Object error, StackTrace stackTrace) = UpdateArtworkArtistError;
}
