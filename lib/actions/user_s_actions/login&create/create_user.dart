import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user/app_user/app_user.dart';
import '../../app_action.dart';

part 'create_user.freezed.dart';

@freezed
class CreateUser with _$CreateUser implements AppAction {
  const factory CreateUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String role,
    required ActionResult result,
  }) = CreateUserStart;

  const factory CreateUser.successful(AppUser user) = CreateUserSuccessful;

  @Implements<ErrorAction>()
  const factory CreateUser.error(Object error, StackTrace stackTrace) = CreateUserError;
}
