import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';


part 'add_artist.freezed.dart';

@freezed
class AddArtist with _$AddArtist implements AppAction {
  const factory AddArtist({
    required String firstName,
    required String lastName,
    required String picturePath,
    required DateTime birthdate,
    required DateTime? deathDate,
    required String description,
    required ActionResult result,
}) = AddArtistStart;

  const factory AddArtist.successful() = AddArtistSuccessful;

  @Implements<ErrorAction>()
  const factory AddArtist.error(Object error, StackTrace stackTrace) = AddArtistError;
}
