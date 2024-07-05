import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_title.freezed.dart';

@freezed
class UpdateArtworkTitle with _$UpdateArtworkTitle implements AppAction {
  const factory UpdateArtworkTitle({required String newTitle, required String artworkId}) = UpdateArtworkTitleStart;

  const factory UpdateArtworkTitle.successful(String newTitle) = UpdateArtworkTitleSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkTitle.error(Object error, StackTrace stackTrace) = UpdateArtworkTitleError;
}
