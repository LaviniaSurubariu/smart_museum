import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'add_artwork.freezed.dart';

@freezed
class AddArtwork with _$AddArtwork implements AppAction {
  const factory AddArtwork({
    required String title,
    required String artistFirstName,
    required String? artistLastName,
    required String artistUid,
    required int startCreationYear,
    required int endCreationYear,
    required String picturePath,
    required String audioPath,
    required String type,
    required String style,
    required String provenance,
    required String originalTitle,
    required String description,
    required ActionResult result,
  }) = AddArtworkStart;

  const factory AddArtwork.successful() = AddArtworkSuccessful;

  @Implements<ErrorAction>()
  const factory AddArtwork.error(Object error, StackTrace stackTrace) = AddArtworkError;
}
