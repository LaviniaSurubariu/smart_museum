import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artist_image.freezed.dart';

@freezed
class UpdateArtistImage with _$UpdateArtistImage implements AppAction {
  const factory UpdateArtistImage({required String newPicturePath,
    required String artistId,
    required String artistFirstName,
    required String oldPictureUrl}) = UpdateArtistImageStart;

  const factory UpdateArtistImage.successful(String newPictureUrl) = UpdateArtistImageSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtistImage.error(Object error, StackTrace stackTrace) = UpdateArtistImageError;
}
