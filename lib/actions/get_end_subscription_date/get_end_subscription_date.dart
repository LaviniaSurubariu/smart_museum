import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'get_end_subscription_date.freezed.dart';

@freezed
class GetEndSubscriptionDate with _$GetEndSubscriptionDate implements AppAction {
  const factory GetEndSubscriptionDate({required String userId}) = GetEndSubscriptionDateStart;

  const factory GetEndSubscriptionDate.successful(DateTime endSubscriptionDate) = GetEndSubscriptionDateSuccessful;

  @Implements<ErrorAction>()
  const factory GetEndSubscriptionDate.error(Object error, StackTrace stackTrace) = GetEndSubscriptionDateError;
}
