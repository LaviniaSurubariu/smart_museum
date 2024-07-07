import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artwork_for_art_movements/artwork_for_art_movements.dart';
import '../../app_action.dart';

part 'get_all_styles.freezed.dart';

@freezed
class GetAllStyles with _$GetAllStyles implements AppAction {
  const factory GetAllStyles() = GetAllStylesStart;

  const factory GetAllStyles.successful({
    required List<ArtworkForArtMovements> artworksWithAllStyles,
  }) = GetAllStylesSuccessful;

  @Implements<ErrorAction>()
  const factory GetAllStyles.error(Object error, StackTrace stackTrace) = GetAllStylesError;
}
