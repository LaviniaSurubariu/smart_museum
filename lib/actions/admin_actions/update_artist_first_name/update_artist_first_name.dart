import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artist_first_name.freezed.dart';

@freezed
class UpdateArtistFirstName with _$UpdateArtistFirstName implements AppAction {
  const factory UpdateArtistFirstName({required String newFirstName, required String artistId}) = UpdateArtistFirstNameStart;

  const factory UpdateArtistFirstName.successful(String newFirstName) = UpdateArtistFirstNameSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtistFirstName.error(Object error, StackTrace stackTrace) = UpdateArtistFirstNameError;
}
