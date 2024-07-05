import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_image.freezed.dart';

@freezed
class UpdateArtworkImage with _$UpdateArtworkImage implements AppAction {
  const factory UpdateArtworkImage({
    required String newPicturePath,
    required String artworkId,
    required String artworkTitle,
    required String oldPictureUrl,
  }) = UpdateArtworkImageStart;

  const factory UpdateArtworkImage.successful(String newPicturePath) = UpdateArtworkImageSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkImage.error(Object error, StackTrace stackTrace) = UpdateArtworkImageError;
}
