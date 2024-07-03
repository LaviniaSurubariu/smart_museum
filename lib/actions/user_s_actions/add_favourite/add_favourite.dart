import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'add_favourite.freezed.dart';

@freezed
class AddFavourite with _$AddFavourite implements AppAction {
  const factory AddFavourite({
    required String userId,
    required String artworkId,
    required String artworkTitle,
    required String artworkPictureUrl,
    required String artistName,
  }) = AddFavouriteStart;

  const factory AddFavourite.successful() = AddFavouriteSuccessful;

  @Implements<ErrorAction>()
  const factory AddFavourite.error(Object error, StackTrace stackTrace) = AddFavouriteError;
}
