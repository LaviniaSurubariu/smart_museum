import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_action.dart';

part 'change_password.freezed.dart';

@freezed
class ChangePassword with _$ChangePassword implements AppAction {
  const factory ChangePassword({
    required String newPass,
    required ActionResult result,
  }) = ChangePasswordStart;

  const factory ChangePassword.successful() = ChangePasswordSuccessful;

  @Implements<ErrorAction>()
  const factory ChangePassword.error(Object error, StackTrace stackTrace) = ChangePasswordError;
}
