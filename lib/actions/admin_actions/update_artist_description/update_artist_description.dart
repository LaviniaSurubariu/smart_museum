import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artist_description.freezed.dart';

@freezed
class UpdateArtistDescription with _$UpdateArtistDescription implements AppAction {
  const factory UpdateArtistDescription({required String newDescription, required String artistId}) =
      UpdateArtistDescriptionStart;

  const factory UpdateArtistDescription.successful(String newDescription) = UpdateArtistDescriptionSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtistDescription.error(Object error, StackTrace stackTrace) = UpdateArtistDescriptionError;
}
