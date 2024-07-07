import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'get_number_of_messages.freezed.dart';

@freezed
class GetNumberOfMessages with _$GetNumberOfMessages implements AppAction {
  const factory GetNumberOfMessages() = GetNumberOfMessagesStart;

  const factory GetNumberOfMessages.successful(int numberOfMessages) = GetNumberOfMessagesSuccessful;

  @Implements<ErrorAction>()
  const factory GetNumberOfMessages.error(Object error, StackTrace stackTrace) = GetNumberOfMessagesError;
}
