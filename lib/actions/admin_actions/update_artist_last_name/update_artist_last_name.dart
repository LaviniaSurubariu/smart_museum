import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'update_artist_last_name.freezed.dart';

@freezed
class UpdateArtistLastName with _$UpdateArtistLastName implements AppAction {
  const factory UpdateArtistLastName({required String newLastName, required String artistId}) = UpdateArtistLastNameStart;

  const factory UpdateArtistLastName.successful(String newLastName) = UpdateArtistLastNameSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateArtistLastName.error(Object error, StackTrace stackTrace) = UpdateArtistLastNameError;
}
