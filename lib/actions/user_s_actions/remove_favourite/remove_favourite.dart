import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'remove_favourite.freezed.dart';

@freezed
class RemoveFavourite with _$RemoveFavourite implements AppAction {
  const factory RemoveFavourite({
    required String userId,
    required String artworkId,
  }) = RemoveFavouriteStart;

  const factory RemoveFavourite.successful() = RemoveFavouriteSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveFavourite.error(Object error, StackTrace stackTrace) = RemoveFavouriteError;
}
