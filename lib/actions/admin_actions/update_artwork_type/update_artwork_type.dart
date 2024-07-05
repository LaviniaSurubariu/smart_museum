import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_type.freezed.dart';

@freezed
class UpdateArtworkType with _$UpdateArtworkType implements AppAction {
  const factory UpdateArtworkType({required String newType, required String artworkId}) = UpdateArtworkTypeStart;

  const factory UpdateArtworkType.successful(String newType) = UpdateArtworkTypeSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkType.error(Object error, StackTrace stackTrace) = UpdateArtworkTypeError;
}
