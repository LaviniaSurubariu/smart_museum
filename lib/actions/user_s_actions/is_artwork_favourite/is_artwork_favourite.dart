import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'is_artwork_favourite.freezed.dart';

@freezed
class IsArtworkFavourite with _$IsArtworkFavourite implements AppAction {
  const factory IsArtworkFavourite({required String userId, required String artworkId}) = IsArtworkFavouriteStart;

  const factory IsArtworkFavourite.successful(bool isFavourite) = IsArtworkFavouriteSuccessful;

  @Implements<ErrorAction>()
  const factory IsArtworkFavourite.error(Object error, StackTrace stackTrace) = IsArtworkFavouriteError;
}
