import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'get_number_of_added_artists.freezed.dart';

@freezed
class GetNumberOfAddedArtists with _$GetNumberOfAddedArtists implements AppAction {
  const factory GetNumberOfAddedArtists() = GetNumberOfAddedArtistsStart;

  const factory GetNumberOfAddedArtists.successful(int numberOfAddedArtists) = GetNumberOfAddedArtistsSuccessful;

  @Implements<ErrorAction>()
  const factory GetNumberOfAddedArtists.error(Object error, StackTrace stackTrace) = GetNumberOfAddedArtistsError;
}
