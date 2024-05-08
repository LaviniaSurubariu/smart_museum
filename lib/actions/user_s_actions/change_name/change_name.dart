import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user/app_user/app_user.dart';
import '../../app_action.dart';

part 'change_name.freezed.dart';

@freezed
class ChangeName with _$ChangeName implements AppAction {
  const factory ChangeName({
    required String newFirstName,
    required String newLastName,
    required ActionResult result,
  }) = ChangeNameStart;

  const factory ChangeName.successful(AppUser user) = ChangeNameSuccessful;

  @Implements<ErrorAction>()
  const factory ChangeName.error(Object error, StackTrace stackTrace) = ChangeNameError;
}
