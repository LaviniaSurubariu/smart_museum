import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    required String firstName,
    required String lastName,
    required DateTime creationTime,
    required String role,
    String? pictureUrl,

  }) = AppUser$;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => _$AppUserFromJson(Map<String, dynamic>.from(json));
}
