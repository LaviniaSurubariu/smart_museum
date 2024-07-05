import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artwork_provenance.freezed.dart';

@freezed
class UpdateArtworkProvenance with _$UpdateArtworkProvenance implements AppAction {
  const factory UpdateArtworkProvenance({required String newProvenance, required String artworkId}) =
      UpdateArtworkProvenanceStart;

  const factory UpdateArtworkProvenance.successful(String newProvenance) = UpdateArtworkProvenanceSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtworkProvenance.error(Object error, StackTrace stackTrace) = UpdateArtworkProvenanceError;
}
