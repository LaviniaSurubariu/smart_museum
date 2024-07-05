import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_audio.freezed.dart';

@freezed
class UpdateArtworkAudio with _$UpdateArtworkAudio implements AppAction {
  const factory UpdateArtworkAudio(
      {required String newAudioPath,
      required String artworkId,
      required String artworkTitle,
      required String oldAudioUrl}) = UpdateArtworkAudioStart;

  const factory UpdateArtworkAudio.successful(String newAudioPath) = UpdateArtworkAudioSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkAudio.error(Object error, StackTrace stackTrace) = UpdateArtworkAudioError;
}
