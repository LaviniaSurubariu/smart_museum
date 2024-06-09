import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/user/app_user/app_user.dart';
import '../../app_action.dart';

part 'buy_subscription.freezed.dart';

@freezed
class BuySubscription with _$BuySubscription implements AppAction {
  const factory BuySubscription({
    required String duration,
    required ActionResult result,
  }) = BuySubscriptionStart;

  const factory BuySubscription.successful(AppUser user) = BuySubscriptionSuccessful;

  @Implements<ErrorAction>()
  const factory BuySubscription.error(Object error, StackTrace stackTrace) = BuySubscriptionError;
}
