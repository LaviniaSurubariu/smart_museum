import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_style.freezed.dart';

@freezed
class UpdateArtworkStyle with _$UpdateArtworkStyle implements AppAction {
  const factory UpdateArtworkStyle({required String newStyle, required String artworkId}) = UpdateArtworkStyleStart;

  const factory UpdateArtworkStyle.successful(String newStyle) = UpdateArtworkStyleSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkStyle.error(Object error, StackTrace stackTrace) = UpdateArtworkStyleError;
}
