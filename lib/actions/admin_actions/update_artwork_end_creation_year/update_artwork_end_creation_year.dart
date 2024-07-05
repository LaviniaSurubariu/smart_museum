import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_end_creation_year.freezed.dart';

@freezed
class UpdateArtworkEndCreationYear with _$UpdateArtworkEndCreationYear implements AppAction {
  const factory UpdateArtworkEndCreationYear({required int newYear, required String artworkId}) = UpdateArtworkEndCreationYearStart;

  const factory UpdateArtworkEndCreationYear.successful(int newEndCreationYear) = UpdateArtworkEndCreationYearSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkEndCreationYear.error(Object error, StackTrace stackTrace) =
      UpdateArtworkEndCreationYearError;
}
