import 'package:freezed_annotation/freezed_annotation.dart';

import '../app_action.dart';

part 'add_comment.freezed.dart';

@freezed
class AddComment with _$AddComment implements AppAction {
  const factory AddComment({
    required String text,
    required DateTime createdAt,
    required String idUser,
    required String firstNameUser,
    required String lastNameUser,
  }) = AddCommentStart;

  const factory AddComment.successful() = AddCommentSuccessful;

  @Implements<ErrorAction>()
  const factory AddComment.error(Object error, StackTrace stackTrace) = AddCommentError;
}
