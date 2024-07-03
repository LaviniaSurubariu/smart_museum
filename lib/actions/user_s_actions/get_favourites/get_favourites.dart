import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/favourite/favourite.dart';
import '../../app_action.dart';

part 'get_favourites.freezed.dart';

@freezed
class GetFavourites with _$GetFavourites implements AppAction {
  const factory GetFavourites({
    required String userId,
  }) = GetFavouritesStart;

  const factory GetFavourites.successful(List<Favourite> favourites) = GetFavouritesSuccessful;

  @Implements<ErrorAction>()
  const factory GetFavourites.error(Object error, StackTrace stackTrace) = GetFavouritesError;
}
