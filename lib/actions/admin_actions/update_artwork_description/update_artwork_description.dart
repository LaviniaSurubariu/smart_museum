import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_description.freezed.dart';

@freezed
class UpdateArtworkDescription with _$UpdateArtworkDescription implements AppAction {
  const factory UpdateArtworkDescription({required String newDescription, required String artworkId}) =
      UpdateArtworkDescriptionStart;

  const factory UpdateArtworkDescription.successful(String newDescription) = UpdateArtworkDescriptionSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkDescription.error(Object error, StackTrace stackTrace) = UpdateArtworkDescriptionError;
}
