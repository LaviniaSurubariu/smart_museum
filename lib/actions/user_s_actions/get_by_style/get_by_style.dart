import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/artwork_by_style/artwork_by_style.dart';
import '../../app_action.dart';

part 'get_by_style.freezed.dart';

@freezed
class GetByStyle with _$GetByStyle implements AppAction {
  const factory GetByStyle({
    required String style,
  }) = GetByStyleStart;

  const factory GetByStyle.successful(List<ArtworkByStyle> artworksByStyle) = GetByStyleSuccessful;

  @Implements<ErrorAction>()
  const factory GetByStyle.error(Object error, StackTrace stackTrace) = GetByStyleError;
}
