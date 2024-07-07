import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artist_birthdate.freezed.dart';

@freezed
class UpdateArtistBirthdate with _$UpdateArtistBirthdate implements AppAction {
  const factory UpdateArtistBirthdate({required DateTime? newBirthdate, required String artistId}) =
      UpdateArtistBirthdateStart;

  const factory UpdateArtistBirthdate.successful(DateTime? newBirthdate) = UpdateArtistBirthdateSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtistBirthdate.error(Object error, StackTrace stackTrace) = UpdateArtistBirthdateError;
}
