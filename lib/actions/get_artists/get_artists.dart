import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/artist/artist.dart';
import '../app_action.dart';

part 'get_artists.freezed.dart';

@freezed
class GetArtists with _$GetArtists implements AppAction {
  const factory GetArtists() = GetArtistsStart;

  const factory GetArtists.successful({
    required List<Artist> artists,
  }) = GetArtistsSuccessful;

  @Implements<ErrorAction>()
  const factory GetArtists.error(Object error, StackTrace stackTrace) = GetArtistsError;
}
