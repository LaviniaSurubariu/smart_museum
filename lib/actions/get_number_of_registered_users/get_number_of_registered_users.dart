import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'get_number_of_registered_users.freezed.dart';

@freezed
class GetNumberOfRegisteredUsers with _$GetNumberOfRegisteredUsers implements AppAction {
  const factory GetNumberOfRegisteredUsers() = GetNumberOfRegisteredUsersStart;

  const factory GetNumberOfRegisteredUsers.successful(int numberOfRegisteredUsers) =
      GetNumberOfRegisteredUsersSuccessful;

  @Implements<ErrorAction>()
  const factory GetNumberOfRegisteredUsers.error(Object error, StackTrace stackTrace) = GetNumberOfRegisteredUsersError;
}
