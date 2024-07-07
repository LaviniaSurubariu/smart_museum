import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artist_death_date.freezed.dart';

@freezed
class UpdateArtistDeathDate with _$UpdateArtistDeathDate implements AppAction {
  const factory UpdateArtistDeathDate({required DateTime? newDeathDate, required String artistId}) =
      UpdateArtistDeathDateStart;

  const factory UpdateArtistDeathDate.successful(DateTime? newDeathDate) = UpdateArtistDeathDateSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtistDeathDate.error(Object error, StackTrace stackTrace) = UpdateArtistDeathDateError;
}
