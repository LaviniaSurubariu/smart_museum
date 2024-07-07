import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_start_creation_year.freezed.dart';

@freezed
class UpdateArtworkStartCreationYear with _$UpdateArtworkStartCreationYear implements AppAction {
  const factory UpdateArtworkStartCreationYear({required int newYear, required String artworkId}) =
      UpdateArtworkStartCreationYearStart;

  const factory UpdateArtworkStartCreationYear.successful(int newStartCreationYear) =
      UpdateArtworkStartCreationYearSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkStartCreationYear.error(Object error, StackTrace stackTrace) =
      UpdateArtworkStartCreationYearError;
}
