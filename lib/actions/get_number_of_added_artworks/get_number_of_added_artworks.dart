import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'get_number_of_added_artworks.freezed.dart';

@freezed
class GetNumberOfAddedArtworks with _$GetNumberOfAddedArtworks implements AppAction {
  const factory GetNumberOfAddedArtworks() = GetNumberOfAddedArtworksStart;

  const factory GetNumberOfAddedArtworks.successful(int numberOfAddedArtworks) = GetNumberOfAddedArtworksSuccessful;

  @Implements<ErrorAction>()
  const factory GetNumberOfAddedArtworks.error(Object error, StackTrace stackTrace) = GetNumberOfAddedArtworksError;
}
