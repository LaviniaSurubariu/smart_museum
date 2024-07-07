import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artist/artist.dart';
import '../app_action.dart';

part 'get_top_artists.freezed.dart';

@freezed
class GetTopArtists with _$GetTopArtists implements AppAction {
  const factory GetTopArtists() = GetTopArtistsStart;

  const factory GetTopArtists.successful({required List<Artist> artists}) = GetTopArtistsSuccessful;

  @Implements<ErrorAction>()
  const factory GetTopArtists.error(Object error, StackTrace stackTrace) = GetTopArtistsError;
}
