import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'get_number_of_favourites_artworks.freezed.dart';

@freezed
class GetNumberOfFavouritesArtworks with _$GetNumberOfFavouritesArtworks implements AppAction {
  const factory GetNumberOfFavouritesArtworks() = GetNumberOfFavouritesArtworksStart;

  const factory GetNumberOfFavouritesArtworks.successful(int numberOfFavouritesArtworks) =
      GetNumberOfFavouritesArtworksSuccessful;

  @Implements<ErrorAction>()
  const factory GetNumberOfFavouritesArtworks.error(Object error, StackTrace stackTrace) =
      GetNumberOfFavouritesArtworksError;
}
