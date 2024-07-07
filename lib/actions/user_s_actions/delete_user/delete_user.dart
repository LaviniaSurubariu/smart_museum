import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'delete_user.freezed.dart';

@freezed
class DeleteUser with _$DeleteUser implements AppAction {
  const factory DeleteUser() = DeleteUserStart;

  const factory DeleteUser.successful() = DeleteUserSuccessful;

  @Implements<ErrorAction>()
  const factory DeleteUser.error(Object error, StackTrace stackTrace) = DeleteUserError;
}
