import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'get_start_subscription_date.freezed.dart';

@freezed
class GetStartSubscriptionDate with _$GetStartSubscriptionDate implements AppAction {
  const factory GetStartSubscriptionDate({required String userId}) = GetStartSubscriptionDateStart;

  const factory GetStartSubscriptionDate.successful(DateTime startSubscriptionDate) = GetStartSubscriptionDateSuccessful;

  @Implements<ErrorAction>()
  const factory GetStartSubscriptionDate.error(Object error, StackTrace stackTrace) = GetStartSubscriptionDateError;
}

