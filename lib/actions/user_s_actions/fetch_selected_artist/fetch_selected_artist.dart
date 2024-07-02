import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artist/artist.dart';
import '../../app_action.dart';

part 'fetch_selected_artist.freezed.dart';

@freezed
class FetchSelectedArtist with _$FetchSelectedArtist implements AppAction {
  const factory FetchSelectedArtist({required String artistId}) = FetchSelectedArtistStart;

  const factory FetchSelectedArtist.successful(Artist selectedArtist) = FetchSelectedArtistSuccessful;

  @Implements<ErrorAction>()
  const factory FetchSelectedArtist.error(Object error, StackTrace stackTrace) = FetchSelectedArtistError;
}
