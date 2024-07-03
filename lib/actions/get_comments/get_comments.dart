import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/comment/comment.dart';
import '../app_action.dart';

part 'get_comments.freezed.dart';

@freezed
class GetComments with _$GetComments implements AppAction {
  const factory GetComments() = GetCommentsStart;

  const factory GetComments.successful({
    required List<Comment> comments,
  }) = GetCommentsSuccessful;

  @Implements<ErrorAction>()
  const factory GetComments.error(Object error, StackTrace stackTrace) = GetCommentsError;
}
